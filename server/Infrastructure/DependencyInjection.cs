using Infrastructure.Persistance.DBContext;
using Infrastructure.Persistance.Repository;
using Infrastructure.Persistance;
using Infrastructure.Integration;
using Infrastructure.Integration.Keycloak;
using Abstractions.Persistence;
using Abstractions.Integration;
using Abstractions.Integration.Keycloak;
using Abstractions.Services;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Configuration;
using Serilog;

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

        return services;
    }
}
