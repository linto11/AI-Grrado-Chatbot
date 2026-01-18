using Microsoft.Extensions.DependencyInjection;
using Utility.Abstractions.Logging;
using Utility.Integration.Logging.Queue;

namespace Utility;

/// <summary>
/// Extension methods for Utility layer dependency injection
/// Registers logging queue for background processing
/// Note: LoggingQueueService is registered in Infrastructure layer to avoid circular dependencies
/// </summary>
public static class UtilityDependencyInjection
{
    public static IServiceCollection AddUtilityServices(this IServiceCollection services)
    {
        // Register logging queue (singleton - shared across application)
        services.AddSingleton<ILoggingQueue, LoggingQueue>();

        return services;
    }
}
