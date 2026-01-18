using Polly;
using Polly.Extensions.Http;
using Infrastructure.Integration.Resilience;
using Application.Common.Constants;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Configuration;

namespace Infrastructure;

/// <summary>
/// Polly resilience policy registration extensions
/// </summary>
public static class PollyServiceExtensions
{
    /// <summary>
    /// Registers all Polly resilience policies as singletons
    /// Policies can be injected into services for manual application
    /// </summary>
    public static IServiceCollection AddPollyPolicies(
        this IServiceCollection services,
        IConfiguration configuration)
    {
        ArgumentNullException.ThrowIfNull(services);

        // Register policies as singletons for reuse across the application
        services.AddSingleton<IAsyncPolicy<HttpResponseMessage>>(
            _ => PollyPolicies.GetRetryPolicy()
        );

        services.AddSingleton<IAsyncPolicy<HttpResponseMessage>>(
            _ => PollyPolicies.GetCircuitBreakerPolicy()
        );

        services.AddSingleton<IAsyncPolicy<HttpResponseMessage>>(
            _ => PollyPolicies.GetTimeoutPolicy()
        );

        services.AddSingleton<IAsyncPolicy<HttpResponseMessage>>(
            _ => PollyPolicies.GetHttpResiliencePolicy()
        );

        services.AddSingleton<IAsyncPolicy<HttpResponseMessage>>(
            _ => PollyPolicies.GetAzureAIServicesPolicy()
        );

        services.AddSingleton<IAsyncPolicy<HttpResponseMessage>>(
            _ => PollyPolicies.GetKeycloakPolicy()
        );

        services.AddSingleton<IAsyncPolicy>(
            _ => PollyPolicies.GetDatabaseBulkheadPolicy()
        );

        return services;
    }

    /// <summary>
    /// Registers Polly policies for dependency injection without HTTP client
    /// Useful for direct policy injection into services
    /// </summary>
    public static IServiceCollection AddPollyPoliciesOnly(
        this IServiceCollection services)
    {
        ArgumentNullException.ThrowIfNull(services);

        // Register policies as singletons for reuse
        services.AddSingleton<IAsyncPolicy<HttpResponseMessage>>(
            provider => PollyPolicies.GetHttpResiliencePolicy()
        );

        services.AddSingleton<IAsyncPolicy<HttpResponseMessage>>(
            provider => PollyPolicies.GetAzureAIServicesPolicy()
        );

        services.AddSingleton<IAsyncPolicy<HttpResponseMessage>>(
            provider => PollyPolicies.GetKeycloakPolicy()
        );

        services.AddSingleton<IAsyncPolicy>(
            provider => PollyPolicies.GetDatabaseBulkheadPolicy()
        );

        return services;
    }
}
