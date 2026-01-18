using System.Diagnostics;
using Serilog.Context;

namespace API.Middleware;

/// <summary>
/// Ensures every request has a CorrelationId and flows it into Serilog's log context.
/// </summary>
public class CorrelationIdMiddleware
{
    private const string HeaderName = "X-Correlation-ID";
    private readonly RequestDelegate _next;

    public CorrelationIdMiddleware(RequestDelegate next)
    {
        _next = next;
    }

    public async Task InvokeAsync(HttpContext context)
    {
        // Read incoming header or generate a new correlation id
        var correlationId = context.Request.Headers.TryGetValue(HeaderName, out var headerId)
            && !string.IsNullOrWhiteSpace(headerId)
            ? headerId.ToString()
            : Activity.Current?.Id ?? Guid.NewGuid().ToString("N");

        // Stamp on the response for downstream clients
        context.Response.Headers[HeaderName] = correlationId;

        // Flow into Serilog
        using (LogContext.PushProperty("CorrelationId", correlationId))
        {
            await _next(context);
        }
    }
}
