using Infrastructure.Persistance.DBContext;
using Infrastructure.Persistance.Repository;
using Infrastructure.Persistance;
using Infrastructure.Integration;
using Infrastructure.Integration.Keycloak;
using Infrastructure.Integration.Resilience;
using Abstractions.Persistence;
using Abstractions.Integration;
using Abstractions.Integration.Keycloak;
using Abstractions.Services;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Configuration;
using Serilog;
using Polly;
using Polly.Extensions.Http;
using Application.Common.Constants;

namespace Infrastructure;

/// <summary>
/// Extension methods for Infrastructure layer dependency injection
/// </summary>
public static class DependencyInjection
{
    public static IServiceCollection AddInfrastructureDI(this IServiceCollection services, IConfiguration configuration)
    {
        // Configure PostgreSQL DbContext
        var connectionString = configuration.GetConnectionString("DefaultConnection");
        if (string.IsNullOrWhiteSpace(connectionString))
        {
            connectionString = "Host=localhost;Port=5432;Database=vehicle_service_db;Username=postgres;Password=postgres;";
            Log.Warning("DefaultConnection missing in configuration; using fallback connection string targeting localhost.");
        }

        services.AddDbContext<VehicleServiceDbContext>(options =>
            options.UseNpgsql(connectionString));

        // Register Unit of Work and Repositories
        services.AddScoped<IUnitOfWork, UnitOfWork>();

        // Register Keycloak HttpClient
        services.AddHttpClient<IKeycloakService, KeycloakService>();

        // Register Keycloak Authentication Services
        services.AddScoped<IJwtTokenValidator, JwtTokenValidator>();
        services.AddScoped<IUserContext, UserContext>();

        // Register Integration Services
        services.AddScoped<IImageService, ImageService>();
        services.AddScoped<ITimezoneService, TimezoneService>();

        // Register Redis Distributed Cache
        var redisConnection = configuration.GetConnectionString("RedisConnection") ?? "localhost:6379";
        services.AddStackExchangeRedisCache(options =>
        {
            options.Configuration = redisConnection;
            options.InstanceName = "VehicleServicePortal_";
        });

        // Register Error Message Service with Redis Cache
        services.AddScoped<IErrorMessageService, Integration.Redis.ErrorMessageService>();
        
        // Register background cache refresh service
        services.AddHostedService<Integration.Redis.ErrorMessageCacheRefreshService>();

        // Register data seeding service
        services.AddScoped<IDataSeedingService>(provider => 
            new DataSeedingService(Path.Combine(AppContext.BaseDirectory, "..", "..", "..", "data")));

        // Register HttpContextAccessor for UserContext
        services.AddHttpContextAccessor();

        // Register Polly resilience policies for integration and database operations
        AddPollyPolicies(services);

        return services;
    }

    /// <summary>
    /// Registers all Polly resilience policies for HTTP integration and database operations
    /// </summary>
    private static void AddPollyPolicies(IServiceCollection services)
    {
        ArgumentNullException.ThrowIfNull(services);

        // HTTP Resilience Policies (for external APIs)
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

        // Azure AI Services integration with custom retry and rate limit handling
        services.AddSingleton<IAsyncPolicy<HttpResponseMessage>>(
            _ => PollyPolicies.GetAzureAIServicesPolicy()
        );

        // Keycloak authentication with retry logic
        services.AddSingleton<IAsyncPolicy<HttpResponseMessage>>(
            _ => PollyPolicies.GetKeycloakPolicy()
        );

        // Database operations resilience
        // Bulkhead isolation prevents connection pool exhaustion
        services.AddSingleton<IAsyncPolicy>(
            _ => PollyPolicies.GetDatabaseBulkheadPolicy()
        );

        // Database transaction retry policy for transient failures
        services.AddSingleton<IAsyncPolicy>(
            _ => PollyPolicies.GetDatabaseRetryPolicy()
        );

        // Integration service timeout policy
        services.AddSingleton<IAsyncPolicy>(
            _ => PollyPolicies.GetDatabaseTimeoutPolicy()
        );

        // Combined database resilience policy
        services.AddSingleton<IAsyncPolicy>(
            _ => PollyPolicies.GetDatabaseResiliencePolicy()
        );
    }
}
