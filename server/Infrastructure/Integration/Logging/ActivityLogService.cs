using Utility.Abstractions.Logging;
using Utility.Integration.Logging.Queue;

namespace Infrastructure.Integration.Logging;

/// <summary>
/// Service for logging user activities through the queue
/// All activity logs are queued and processed sequentially on background thread
/// </summary>
public class ActivityLogService : IActivityLogService
{
    private readonly ILoggingQueue _queue;

    public ActivityLogService(ILoggingQueue queue)
    {
        _queue = queue;
    }

    public async Task LogActivityAsync(int userId, string activityType, string description, string? resourceType, int? resourceId, string? ipAddress, string? userAgent, string? correlationId)
    {
        var logItem = new ActivityLogItem
        {
            UserId = userId,
            ActivityType = activityType,
            Description = description,
            ResourceType = resourceType,
            ResourceId = resourceId,
            IpAddress = ipAddress,
            UserAgent = userAgent,
            CorrelationId = correlationId
        };

        await _queue.EnqueueAsync(logItem);
    }
}
