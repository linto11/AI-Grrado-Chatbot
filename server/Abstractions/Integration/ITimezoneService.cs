namespace Abstractions.Integration;

/// <summary>
/// Service for handling timezone conversions
/// </summary>
public interface ITimezoneService
{
    /// <summary>
    /// Convert UTC datetime to user timezone
    /// </summary>
    DateTime ConvertUtcToUserTimezone(DateTime utcDateTime, string timezoneId);

    /// <summary>
    /// Convert user timezone datetime to UTC
    /// </summary>
    DateTime ConvertUserTimezoneToUtc(DateTime userDateTime, string timezoneId);

    /// <summary>
    /// Get current UTC time in user timezone
    /// </summary>
    DateTime GetCurrentTimeInTimezone(string timezoneId);

    /// <summary>
    /// Get all available timezone IDs
    /// </summary>
    IEnumerable<string> GetAvailableTimezones();

    /// <summary>
    /// Get timezone offset from UTC
    /// </summary>
    TimeSpan GetTimezoneOffset(string timezoneId);
}
