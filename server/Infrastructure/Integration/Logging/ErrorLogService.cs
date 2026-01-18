using Utility.Abstractions.Logging;
using Utility.Integration.Logging.Queue;

namespace Infrastructure.Integration.Logging;

/// <summary>
/// Service for logging errors through the queue
/// All error logs are queued and processed sequentially on background thread
/// </summary>
public class ErrorLogService : IErrorLogService
{
    private readonly ILoggingQueue _queue;

    public ErrorLogService(ILoggingQueue queue)
    {
        _queue = queue;
    }

    public async Task LogErrorAsync(string errorCode, string errorMessage, string stackTrace, string? innerException, string source, string severity, int? userId, string? requestId, string? ipAddress, string? userAgent)
    {
        var logItem = new ErrorLogItem
        {
            ErrorCode = errorCode,
            ErrorMessage = errorMessage,
            StackTrace = stackTrace,
            InnerException = innerException,
            Source = source,
            Severity = severity,
            UserId = userId,
            RequestId = requestId,
            IpAddress = ipAddress,
            UserAgent = userAgent,
            CorrelationId = requestId // Use requestId as correlation ID
        };

        await _queue.EnqueueAsync(logItem);
    }
}
