namespace Abstractions.Services;

/// <summary>
/// Service for retrieving error messages by code name
/// Code names are mapped to GUIDs via configuration
/// </summary>
public interface IErrorMessageService
{
    /// <summary>
    /// Get error message by code name
    /// </summary>
    Task<string> GetMessageAsync(string codeName, string? localeCode = null);

    /// <summary>
    /// Get error message by code name with default fallback
    /// </summary>
    Task<string> GetMessageAsync(string codeName, string defaultMessage, string? localeCode = null);

    /// <summary>
    /// Check if error code name exists
    /// </summary>
    Task<bool> ExistsAsync(string codeName);

    /// <summary>
    /// Refresh all error messages in cache from database
    /// </summary>
    Task RefreshCacheAsync();
}
