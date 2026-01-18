using Infrastructure.Persistance.DBContext;
using Infrastructure.Persistance;
using Infrastructure;
using Application;
using Application.Common.Configuration;
using Utility;
using Serilog;
using API.Middleware;

var builder = WebApplication.CreateBuilder(args);

// Configure Serilog as the primary logger using configuration sinks
Log.Logger = new LoggerConfiguration()
    .ReadFrom.Configuration(builder.Configuration)
    .Enrich.FromLogContext()
    .CreateLogger();

builder.Host.UseSerilog();

// Load error code configuration from JSON
builder.Configuration.AddJsonFile("Configuration/error-codes.json", optional: false, reloadOnChange: true);
builder.Services.Configure<ErrorCodeConfiguration>(builder.Configuration);

// Add services to the container.
builder.Services.AddOpenApi();
builder.Services.AddControllers();

// Add layer-specific dependency injection
builder.Services.AddInfrastructureDI(builder.Configuration);
builder.Services.AddApplicationDI();
builder.Services.AddUtilityServices();

var app = builder.Build();

// Seed data on startup
using (var scope = app.Services.CreateScope())
{
    var dbContext = scope.ServiceProvider.GetRequiredService<VehicleServiceDbContext>();
    var seedingService = scope.ServiceProvider.GetRequiredService<IDataSeedingService>();
    
    try
    {
        await seedingService.SeedDataAsync(dbContext);
    }
    catch (Exception ex)
    {
        Log.Error(ex, "Error seeding data");
    }
}

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

app.UseHttpsRedirection();

// CorrelationId middleware to trace requests across layers
app.UseMiddleware<CorrelationIdMiddleware>();

// Request/Response logging middleware
app.UseMiddleware<RequestResponseLoggingMiddleware>();

// Exception handling middleware
app.UseMiddleware<ExceptionHandlingMiddleware>();

var summaries = new[]
{
    "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
};

app.MapGet("/weatherforecast", () =>
{
    var forecast =  Enumerable.Range(1, 5).Select(index =>
        new WeatherForecast
        (
            DateOnly.FromDateTime(DateTime.Now.AddDays(index)),
            Random.Shared.Next(-20, 55),
            summaries[Random.Shared.Next(summaries.Length)]
        ))
        .ToArray();
    return forecast;
})
.WithName("GetWeatherForecast");

app.Run();

record WeatherForecast(DateOnly Date, int TemperatureC, string? Summary)
{
    public int TemperatureF => 32 + (int)(TemperatureC / 0.5556);
}
