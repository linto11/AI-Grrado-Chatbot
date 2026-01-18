using Microsoft.Extensions.Logging;
using Abstractions.Integration;

namespace Infrastructure.Integration;

/// <summary>
/// Implementation of timezone service
/// </summary>
public class TimezoneService : ITimezoneService
{
    private readonly ILogger<TimezoneService> _logger;

    public TimezoneService(ILogger<TimezoneService> logger)
    {
        _logger = logger;
    }

    public DateTime ConvertUtcToUserTimezone(DateTime utcDateTime, string timezoneId)
    {
        try
        {
            if (!IsValidTimezone(timezoneId))
            {
                _logger.LogWarning($"Invalid timezone: {timezoneId}");
                return utcDateTime;
            }

            var timezone = TimeZoneInfo.FindSystemTimeZoneById(timezoneId);
            return TimeZoneInfo.ConvertTime(utcDateTime, TimeZoneInfo.Utc, timezone);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error converting UTC to timezone {timezoneId}");
            return utcDateTime;
        }
    }

    public DateTime ConvertUserTimezoneToUtc(DateTime userDateTime, string timezoneId)
    {
        try
        {
            if (!IsValidTimezone(timezoneId))
            {
                _logger.LogWarning($"Invalid timezone: {timezoneId}");
                return userDateTime;
            }

            var timezone = TimeZoneInfo.FindSystemTimeZoneById(timezoneId);
            var utcDateTime = TimeZoneInfo.ConvertTime(userDateTime, timezone, TimeZoneInfo.Utc);
            return utcDateTime;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error converting timezone {timezoneId} to UTC");
            return userDateTime;
        }
    }

    public DateTime GetCurrentTimeInTimezone(string timezoneId)
    {
        var utcNow = DateTime.UtcNow;
        return ConvertUtcToUserTimezone(utcNow, timezoneId);
    }

    public IEnumerable<string> GetAvailableTimezones()
    {
        return TimeZoneInfo.GetSystemTimeZones().Select(tz => tz.Id);
    }

    public bool IsValidTimezone(string timezoneId)
    {
        try
        {
            TimeZoneInfo.FindSystemTimeZoneById(timezoneId);
            return true;
        }
        catch (TimeZoneNotFoundException)
        {
            return false;
        }
        catch (InvalidTimeZoneException)
        {
            return false;
        }
    }

    public TimeSpan GetTimezoneOffset(string timezoneId)
    {
        try
        {
            if (!IsValidTimezone(timezoneId))
                return TimeSpan.Zero;

            var timezone = TimeZoneInfo.FindSystemTimeZoneById(timezoneId);
            return timezone.GetUtcOffset(DateTime.UtcNow);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error getting timezone offset for {timezoneId}");
            return TimeSpan.Zero;
        }
    }
}
