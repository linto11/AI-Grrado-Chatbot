using Abstractions.Services;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace Infrastructure.Integration.Redis;

/// <summary>
/// Background service that periodically refreshes error message cache from database
/// Runs every 6 hours without blocking the main thread
/// </summary>
public class ErrorMessageCacheRefreshService : BackgroundService
{
    private readonly IServiceProvider _serviceProvider;
    private readonly ILogger<ErrorMessageCacheRefreshService> _logger;
    private readonly TimeSpan _refreshInterval = TimeSpan.FromHours(6);

    public ErrorMessageCacheRefreshService(
        IServiceProvider serviceProvider,
        ILogger<ErrorMessageCacheRefreshService> logger)
    {
        _serviceProvider = serviceProvider;
        _logger = logger;
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        _logger.LogInformation("ErrorMessageCacheRefreshService started");

        // Initial refresh on startup
        await RefreshCacheAsync(stoppingToken);

        while (!stoppingToken.IsCancellationRequested)
        {
            try
            {
                await Task.Delay(_refreshInterval, stoppingToken);
                await RefreshCacheAsync(stoppingToken);
            }
            catch (OperationCanceledException)
            {
                // Expected when stopping
                _logger.LogInformation("ErrorMessageCacheRefreshService is stopping");
                break;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error occurred while refreshing error message cache");
                // Continue running even if one refresh fails
            }
        }
    }

    private async Task RefreshCacheAsync(CancellationToken cancellationToken)
    {
        try
        {
            _logger.LogInformation("Refreshing error message cache");

            using var scope = _serviceProvider.CreateScope();
            var errorMessageService = scope.ServiceProvider.GetRequiredService<IErrorMessageService>();
            
            await errorMessageService.RefreshCacheAsync();

            _logger.LogInformation("Error message cache refreshed successfully");
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Failed to refresh error message cache");
            throw;
        }
    }
}
