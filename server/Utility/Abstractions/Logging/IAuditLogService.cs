namespace Utility.Abstractions.Logging;

/// <summary>
/// Service for logging audit events (Create, Update, Delete operations)
/// Queued for background processing to maintain sequential order
/// </summary>
public interface IAuditLogService
{
    /// <summary>
    /// Log an entity creation event
    /// </summary>
    Task LogCreateAsync(string entityType, int entityId, string newValues, int? userId, string? ipAddress, string? userAgent, string? correlationId);

    /// <summary>
    /// Log an entity update event with before/after snapshots
    /// </summary>
    Task LogUpdateAsync(string entityType, int entityId, string oldValues, string newValues, string changedFields, int? userId, string? ipAddress, string? userAgent, string? correlationId);

    /// <summary>
    /// Log an entity deletion event
    /// </summary>
    Task LogDeleteAsync(string entityType, int entityId, string oldValues, int? userId, string? ipAddress, string? userAgent, string? correlationId);
}
