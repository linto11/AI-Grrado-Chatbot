namespace Utility.Abstractions.Logging;

/// <summary>
/// Service for logging errors and exceptions with full context
/// Queued for background processing to maintain order
/// </summary>
public interface IErrorLogService
{
    /// <summary>
    /// Log an error with complete stack trace and context
    /// </summary>
    Task LogErrorAsync(string errorCode, string errorMessage, string stackTrace, string? innerException, string source, string severity, int? userId, string? requestId, string? ipAddress, string? userAgent);
}
