using Utility.Abstractions.Logging;
using Utility.Integration.Logging.Queue;

namespace Infrastructure.Integration.Logging;

/// <summary>
/// Service for logging HTTP request and response through the queue
/// All request/response logs are queued and processed sequentially on background thread
/// </summary>
public class RequestResponseLogService : IRequestResponseLogService
{
    private readonly ILoggingQueue _queue;

    public RequestResponseLogService(ILoggingQueue queue)
    {
        _queue = queue;
    }

    public async Task LogRequestResponseAsync(string requestId, string httpMethod, string endpoint, string? queryString, string? requestBody, int statusCode, string? responseBody, long responseTimeMs, int? userId, string? ipAddress, string? userAgent)
    {
        var logItem = new RequestResponseLogItem
        {
            RequestId = requestId,
            HttpMethod = httpMethod,
            Endpoint = endpoint,
            QueryString = queryString,
            RequestBody = requestBody,
            StatusCode = statusCode,
            ResponseBody = responseBody,
            ResponseTimeMs = responseTimeMs,
            UserId = userId,
            IpAddress = ipAddress,
            UserAgent = userAgent,
            CorrelationId = requestId
        };

        await _queue.EnqueueAsync(logItem);
    }
}
