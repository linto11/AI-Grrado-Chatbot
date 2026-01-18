namespace API.Middleware;

using Utility.Abstractions.Logging;
using System.Net;

public class ExceptionHandlingMiddleware
{
    private readonly RequestDelegate _next;
    private readonly ILogger<ExceptionHandlingMiddleware> _logger;

    public ExceptionHandlingMiddleware(RequestDelegate next, ILogger<ExceptionHandlingMiddleware> logger)
    {
        _next = next;
        _logger = logger;
    }

    public async Task InvokeAsync(HttpContext context, IErrorLogService errorLogService)
    {
        try
        {
            await _next(context);
        }
        catch (Exception ex)
        {
            await HandleExceptionAsync(context, ex, errorLogService);
        }
    }

    private async Task HandleExceptionAsync(HttpContext context, Exception exception, IErrorLogService errorLogService)
    {
        _logger.LogError(exception, "Unhandled exception occurred");

        var requestId = context.Items["CorrelationId"]?.ToString() ?? context.TraceIdentifier;
        var ipAddress = context.Connection.RemoteIpAddress?.ToString();
        var userAgent = context.Request.Headers["User-Agent"].ToString();
        var userId = ExtractUserId(context);

        await errorLogService.LogErrorAsync(
            errorCode: exception.GetType().Name,
            errorMessage: exception.Message,
            stackTrace: exception.StackTrace ?? "No stack trace available",
            innerException: exception.InnerException?.ToString(),
            source: context.Request.Path.ToString(),
            severity: DetermineSeverity(exception),
            userId: userId,
            requestId: requestId,
            ipAddress: ipAddress,
            userAgent: userAgent
        );

        context.Response.ContentType = "application/json";
        context.Response.StatusCode = (int)HttpStatusCode.InternalServerError;

        var response = new
        {
            message = "An error occurred processing your request",
            requestId = requestId,
            status = context.Response.StatusCode
        };

        await context.Response.WriteAsJsonAsync(response);
    }

    private string DetermineSeverity(Exception exception)
    {
        return exception switch
        {
            ArgumentNullException or ArgumentException => "Low",
            InvalidOperationException => "Medium",
            TimeoutException or IOException => "High",
            _ => "Critical"
        };
    }

    private int? ExtractUserId(HttpContext context)
    {
        var userIdClaim = context.User?.FindFirst("sub")?.Value;
        return int.TryParse(userIdClaim, out var userId) ? userId : null;
    }
}
