using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.DependencyInjection;
using Utility.Integration.Logging.Queue;
using Infrastructure.Persistance.DBContext;
using Domain.Entities;
using Newtonsoft.Json;

namespace Infrastructure.Integration.Logging;

/// <summary>
/// Hosted service that processes logs from the queue sequentially on a background thread
/// Ensures all logs are written to database in the order they were queued
/// </summary>
public class LoggingQueueService : BackgroundService
{
    private readonly ILoggingQueue _queue;
    private readonly IServiceProvider _serviceProvider;
    private readonly ILogger<LoggingQueueService> _logger;

    public LoggingQueueService(
        ILoggingQueue queue,
        IServiceProvider serviceProvider,
        ILogger<LoggingQueueService> logger)
    {
        _queue = queue;
        _serviceProvider = serviceProvider;
        _logger = logger;
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        _logger.LogInformation("Logging Queue Service started");

        try
        {
            await ProcessLogQueueAsync(stoppingToken);
        }
        catch (OperationCanceledException)
        {
            _logger.LogInformation("Logging Queue Service stopping");
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Fatal error in Logging Queue Service");
            throw;
        }
    }

    private async Task ProcessLogQueueAsync(CancellationToken cancellationToken)
    {
        while (!cancellationToken.IsCancellationRequested)
        {
            try
            {
                // Dequeue next log item - waits if queue is empty
                var logItem = await _queue.DequeueAsync(cancellationToken);

                if (logItem == null)
                    continue;

                // Process log item sequentially on background thread
                await ProcessLogItemAsync(logItem, cancellationToken);
            }
            catch (OperationCanceledException)
            {
                break;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error processing log item from queue");
                // Continue processing next items
            }
        }
    }

    private async Task ProcessLogItemAsync(LogItem item, CancellationToken cancellationToken)
    {
        using var scope = _serviceProvider.CreateScope();
        var dbContext = scope.ServiceProvider.GetRequiredService<VehicleServiceDbContext>();

        try
        {
            switch (item)
            {
                case AuditLogItem auditItem:
                    await ProcessAuditLogAsync(dbContext, auditItem, cancellationToken);
                    break;

                case ErrorLogItem errorItem:
                    await ProcessErrorLogAsync(dbContext, errorItem, cancellationToken);
                    break;

                case RequestResponseLogItem reqRespItem:
                    await ProcessRequestResponseLogAsync(dbContext, reqRespItem, cancellationToken);
                    break;

                case ActivityLogItem activityItem:
                    await ProcessActivityLogAsync(dbContext, activityItem, cancellationToken);
                    break;

                default:
                    _logger.LogWarning("Unknown log item type: {ItemType}", item.GetType().Name);
                    break;
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error processing {LogItemType} with CorrelationId: {CorrelationId}",
                item.GetType().Name, item.CorrelationId);
        }
    }

    private async Task ProcessAuditLogAsync(VehicleServiceDbContext dbContext, AuditLogItem item, CancellationToken cancellationToken)
    {
        var auditLog = new AuditLog
        {
            EntityType = item.EntityType,
            EntityId = item.EntityId,
            Action = item.Action,
            OldValues = item.OldValues,
            NewValues = item.NewValues,
            ChangedFields = item.ChangedFields,
            UserId = item.UserId,
            PerformedBy = item.UserId?.ToString(),
            IpAddress = item.IpAddress,
            UserAgent = item.UserAgent,
            Metadata = item.CorrelationId != null ? JsonConvert.SerializeObject(new { CorrelationId = item.CorrelationId }) : null,
            CreatedAt = item.QueuedAt,
            UpdatedAt = item.QueuedAt
        };

        dbContext.AuditLogs.Add(auditLog);
        await dbContext.SaveChangesAsync(cancellationToken);
        _logger.LogDebug("Audit log saved for {EntityType} {EntityId} with CorrelationId: {CorrelationId}",
            item.EntityType, item.EntityId, item.CorrelationId);
    }

    private async Task ProcessErrorLogAsync(VehicleServiceDbContext dbContext, ErrorLogItem item, CancellationToken cancellationToken)
    {
        var errorLog = new ErrorLog
        {
            ErrorCode = item.ErrorCode,
            ErrorMessage = item.ErrorMessage,
            StackTrace = item.StackTrace,
            InnerException = item.InnerException,
            Source = item.Source,
            Severity = item.Severity,
            UserId = item.UserId,
            RequestId = item.RequestId,
            IpAddress = item.IpAddress,
            UserAgent = item.UserAgent,
            Metadata = item.CorrelationId != null ? JsonConvert.SerializeObject(new { CorrelationId = item.CorrelationId }) : null,
            CreatedAt = item.QueuedAt,
            UpdatedAt = item.QueuedAt
        };

        dbContext.ErrorLogs.Add(errorLog);
        await dbContext.SaveChangesAsync(cancellationToken);
        _logger.LogDebug("Error log saved for {ErrorCode} with CorrelationId: {CorrelationId}",
            item.ErrorCode, item.CorrelationId);
    }

    private async Task ProcessRequestResponseLogAsync(VehicleServiceDbContext dbContext, RequestResponseLogItem item, CancellationToken cancellationToken)
    {
        var reqRespLog = new RequestResponseLog
        {
            RequestId = item.RequestId,
            HttpMethod = item.HttpMethod,
            Endpoint = item.Endpoint,
            QueryString = item.QueryString,
            RequestBody = item.RequestBody,
            ResponseStatusCode = item.StatusCode,
            ResponseBody = item.ResponseBody,
            ResponseTimeMs = item.ResponseTimeMs,
            UserId = item.UserId,
            IpAddress = item.IpAddress,
            UserAgent = item.UserAgent,
            Metadata = item.CorrelationId != null ? JsonConvert.SerializeObject(new { CorrelationId = item.CorrelationId }) : null,
            CreatedAt = item.QueuedAt,
            UpdatedAt = item.QueuedAt
        };

        dbContext.RequestResponseLogs.Add(reqRespLog);
        await dbContext.SaveChangesAsync(cancellationToken);
        _logger.LogDebug("Request/Response log saved for {HttpMethod} {Endpoint} with CorrelationId: {CorrelationId}",
            item.HttpMethod, item.Endpoint, item.CorrelationId);
    }

    private async Task ProcessActivityLogAsync(VehicleServiceDbContext dbContext, ActivityLogItem item, CancellationToken cancellationToken)
    {
        var activityLog = new ActivityLog
        {
            UserId = item.UserId,
            ActivityType = item.ActivityType,
            Description = item.Description,
            ResourceType = item.ResourceType,
            ResourceId = item.ResourceId,
            IpAddress = item.IpAddress,
            UserAgent = item.UserAgent,
            Metadata = item.CorrelationId != null ? JsonConvert.SerializeObject(new { CorrelationId = item.CorrelationId }) : null,
            CreatedAt = item.QueuedAt,
            UpdatedAt = item.QueuedAt
        };

        dbContext.ActivityLogs.Add(activityLog);
        await dbContext.SaveChangesAsync(cancellationToken);
        _logger.LogDebug("Activity log saved for UserId: {UserId} ActivityType: {ActivityType} with CorrelationId: {CorrelationId}",
            item.UserId, item.ActivityType, item.CorrelationId);
    }
}
