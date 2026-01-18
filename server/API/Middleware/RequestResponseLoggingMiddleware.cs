namespace API.Middleware;

using Utility.Abstractions.Logging;
using System.Diagnostics;

public class RequestResponseLoggingMiddleware
{
    private readonly RequestDelegate _next;
    private readonly ILogger<RequestResponseLoggingMiddleware> _logger;

    public RequestResponseLoggingMiddleware(RequestDelegate next, ILogger<RequestResponseLoggingMiddleware> logger)
    {
        _next = next;
        _logger = logger;
    }

    public async Task InvokeAsync(HttpContext context, IRequestResponseLogService requestResponseLogService)
    {
        var stopwatch = Stopwatch.StartNew();
        var requestId = context.Items["CorrelationId"]?.ToString() ?? context.TraceIdentifier;

        var request = context.Request;
        var requestBody = await ReadRequestBodyAsync(request);
        var ipAddress = context.Connection.RemoteIpAddress?.ToString();
        var userAgent = request.Headers["User-Agent"].ToString();
        var userId = ExtractUserId(context);

        var originalBodyStream = context.Response.Body;
        using (var responseStream = new MemoryStream())
        {
            context.Response.Body = responseStream;

            try
            {
                await _next(context);

                stopwatch.Stop();
                var responseBody = await ReadResponseBodyAsync(context.Response);

                await requestResponseLogService.LogRequestResponseAsync(
                    requestId: requestId,
                    httpMethod: request.Method,
                    endpoint: request.Path.ToString(),
                    queryString: request.QueryString.ToString(),
                    requestBody: requestBody,
                    statusCode: context.Response.StatusCode,
                    responseBody: responseBody,
                    responseTimeMs: stopwatch.ElapsedMilliseconds,
                    userId: userId,
                    ipAddress: ipAddress,
                    userAgent: userAgent
                );

                await responseStream.CopyToAsync(originalBodyStream);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error in request/response logging middleware");
                throw;
            }
            finally
            {
                context.Response.Body = originalBodyStream;
            }
        }
    }

    private async Task<string?> ReadRequestBodyAsync(HttpRequest request)
    {
        request.EnableBuffering();
        var body = await new StreamReader(request.Body).ReadToEndAsync();
        request.Body.Position = 0;
        return string.IsNullOrEmpty(body) ? null : body;
    }

    private async Task<string?> ReadResponseBodyAsync(HttpResponse response)
    {
        response.Body.Seek(0, SeekOrigin.Begin);
        var body = await new StreamReader(response.Body).ReadToEndAsync();
        response.Body.Seek(0, SeekOrigin.Begin);
        return string.IsNullOrEmpty(body) ? null : body;
    }

    private int? ExtractUserId(HttpContext context)
    {
        var userIdClaim = context.User?.FindFirst("sub")?.Value;
        return int.TryParse(userIdClaim, out var userId) ? userId : null;
    }
}
