using Utility.Abstractions.Logging;
using Utility.Integration.Logging.Queue;

namespace Infrastructure.Integration.Logging;

/// <summary>
/// Service for logging audit events through the queue
/// All audit logs are queued and processed sequentially on background thread
/// </summary>
public class AuditLogService : IAuditLogService
{
    private readonly ILoggingQueue _queue;

    public AuditLogService(ILoggingQueue queue)
    {
        _queue = queue;
    }

    public async Task LogCreateAsync(string entityType, int entityId, string newValues, int? userId, string? ipAddress, string? userAgent, string? correlationId)
    {
        var logItem = new AuditLogItem
        {
            EntityType = entityType,
            EntityId = entityId,
            Action = "Create",
            NewValues = newValues,
            UserId = userId,
            IpAddress = ipAddress,
            UserAgent = userAgent,
            CorrelationId = correlationId
        };

        await _queue.EnqueueAsync(logItem);
    }

    public async Task LogUpdateAsync(string entityType, int entityId, string oldValues, string newValues, string changedFields, int? userId, string? ipAddress, string? userAgent, string? correlationId)
    {
        var logItem = new AuditLogItem
        {
            EntityType = entityType,
            EntityId = entityId,
            Action = "Update",
            OldValues = oldValues,
            NewValues = newValues,
            ChangedFields = changedFields,
            UserId = userId,
            IpAddress = ipAddress,
            UserAgent = userAgent,
            CorrelationId = correlationId
        };

        await _queue.EnqueueAsync(logItem);
    }

    public async Task LogDeleteAsync(string entityType, int entityId, string oldValues, int? userId, string? ipAddress, string? userAgent, string? correlationId)
    {
        var logItem = new AuditLogItem
        {
            EntityType = entityType,
            EntityId = entityId,
            Action = "Delete",
            OldValues = oldValues,
            UserId = userId,
            IpAddress = ipAddress,
            UserAgent = userAgent,
            CorrelationId = correlationId
        };

        await _queue.EnqueueAsync(logItem);
    }
}
