using Microsoft.Extensions.DependencyInjection;
using AutoMapper;
using FluentValidation;

namespace Application;

/// <summary>
/// Extension methods for Application layer dependency injection
/// </summary>
public static class DependencyInjection
{
    public static IServiceCollection AddApplicationDI(this IServiceCollection services)
    {
        // AutoMapper for domain <-> DTO mappings
        services.AddAutoMapper(typeof(DependencyInjection).Assembly);

        // MediatR for CQRS pattern
        services.AddMediatR(cfg => cfg.RegisterServicesFromAssembly(typeof(DependencyInjection).Assembly));

        // FluentValidation - registers all validators in this assembly
        services.AddValidatorsFromAssembly(typeof(DependencyInjection).Assembly);

        return services;
    }
}
