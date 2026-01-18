namespace Utility.Abstractions.Logging;

/// <summary>
/// Service for logging HTTP request and response with full bodies
/// Queued for background processing to maintain sequential order
/// </summary>
public interface IRequestResponseLogService
{
    /// <summary>
    /// Log complete request and response including bodies (no truncation)
    /// </summary>
    Task LogRequestResponseAsync(string requestId, string httpMethod, string endpoint, string? queryString, string? requestBody, int statusCode, string? responseBody, long responseTimeMs, int? userId, string? ipAddress, string? userAgent);
}
