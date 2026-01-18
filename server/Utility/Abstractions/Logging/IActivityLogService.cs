namespace Utility.Abstractions.Logging;

/// <summary>
/// Service for logging user activities for compliance and audit purposes
/// Queued for background processing to maintain order
/// </summary>
public interface IActivityLogService
{
    /// <summary>
    /// Log a user activity (login, export, search, download, etc.)
    /// </summary>
    Task LogActivityAsync(int userId, string activityType, string description, string? resourceType, int? resourceId, string? ipAddress, string? userAgent, string? correlationId);
}
