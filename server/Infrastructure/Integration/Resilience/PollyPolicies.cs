using Polly;
using Polly.CircuitBreaker;
using Polly.Extensions.Http;
using Polly.Retry;
using Polly.Timeout;
using Application.Common.Constants;
using Microsoft.Extensions.Logging;

namespace Infrastructure.Integration.Resilience;

/// <summary>
/// Polly resilience policies configuration
/// Provides retry, circuit breaker, timeout, and bulkhead policies
/// </summary>
public static class PollyPolicies
{
    /// <summary>
    /// Creates a retry policy with exponential backoff
    /// Retries on transient failures with increasing delays
    /// </summary>
    public static IAsyncPolicy<HttpResponseMessage> GetRetryPolicy()
    {
        return HttpPolicyExtensions
            .HandleTransientHttpError()
            .Or<HttpRequestException>()
            .OrResult(r => r.StatusCode == System.Net.HttpStatusCode.TooManyRequests)
            .WaitAndRetryAsync(
                retryCount: PollyConstants.RetryPolicy.MAX_RETRY_ATTEMPTS,
                sleepDurationProvider: retryAttempt =>
                    TimeSpan.FromMilliseconds(
                        PollyConstants.RetryPolicy.INITIAL_DELAY_MS *
                        Math.Pow(PollyConstants.RetryPolicy.BACKOFF_MULTIPLIER, retryAttempt - 1)
                    )
            );
    }

    /// <summary>
    /// Creates a circuit breaker policy
    /// Opens circuit after failure threshold to prevent cascading failures
    /// </summary>
    public static IAsyncPolicy<HttpResponseMessage> GetCircuitBreakerPolicy()
    {
        return HttpPolicyExtensions
            .HandleTransientHttpError()
            .OrResult(r => r.StatusCode == System.Net.HttpStatusCode.TooManyRequests)
            .CircuitBreakerAsync(
                handledEventsAllowedBeforeBreaking: PollyConstants.CircuitBreakerPolicy.FAILURE_THRESHOLD,
                durationOfBreak: TimeSpan.FromSeconds(PollyConstants.CircuitBreakerPolicy.CIRCUIT_OPEN_TIMEOUT_SECONDS)
            );
    }

    /// <summary>
    /// Creates a timeout policy for HTTP requests
    /// </summary>
    public static IAsyncPolicy<HttpResponseMessage> GetTimeoutPolicy()
    {
        return Policy.TimeoutAsync<HttpResponseMessage>(
            TimeSpan.FromMilliseconds(PollyConstants.TimeoutPolicy.HTTP_REQUEST_TIMEOUT_MS),
            timeoutStrategy: TimeoutStrategy.Optimistic
        );
    }

    /// <summary>
    /// Creates a combined HTTP resilience policy (retry + circuit breaker + timeout)
    /// </summary>
    public static IAsyncPolicy<HttpResponseMessage> GetHttpResiliencePolicy()
    {
        return Policy.WrapAsync(
            GetRetryPolicy(),
            GetCircuitBreakerPolicy(),
            GetTimeoutPolicy()
        );
    }

    /// <summary>
    /// Creates a bulkhead isolation policy for database connections
    /// Limits concurrent requests to prevent resource exhaustion
    /// </summary>
    public static IAsyncPolicy GetDatabaseBulkheadPolicy()
    {
        return Policy.BulkheadAsync(
            maxParallelization: PollyConstants.BulkheadPolicy.MAX_PARALLEL_REQUESTS,
            maxQueuingActions: PollyConstants.BulkheadPolicy.MAX_QUEUE_DEPTH
        );
    }

    /// <summary>
    /// Creates a policy for Azure AI Services (GPT, Vision, Speech)
    /// Custom retry strategy for Azure-specific transient errors
    /// </summary>
    public static IAsyncPolicy<HttpResponseMessage> GetAzureAIServicesPolicy()
    {
        return HttpPolicyExtensions
            .HandleTransientHttpError()
            .Or<HttpRequestException>()
            .OrResult(r =>
                r.StatusCode == System.Net.HttpStatusCode.TooManyRequests ||
                r.StatusCode == (System.Net.HttpStatusCode)429 // Azure rate limit
            )
            .WaitAndRetryAsync(
                retryCount: PollyConstants.RetryPolicy.MAX_RETRY_ATTEMPTS,
                sleepDurationProvider: retryAttempt =>
                    TimeSpan.FromMilliseconds(
                        PollyConstants.RetryPolicy.INITIAL_DELAY_MS *
                        Math.Pow(PollyConstants.RetryPolicy.BACKOFF_MULTIPLIER, retryAttempt - 1)
                    )
            )
            .WrapAsync(GetCircuitBreakerPolicy())
            .WrapAsync(GetTimeoutPolicy());
    }

    /// <summary>
    /// Creates a policy for Keycloak authentication requests
    /// </summary>
    public static IAsyncPolicy<HttpResponseMessage> GetKeycloakPolicy()
    {
        return HttpPolicyExtensions
            .HandleTransientHttpError()
            .OrResult(r => r.StatusCode == System.Net.HttpStatusCode.TooManyRequests)
            .WaitAndRetryAsync(
                retryCount: 2, // Limited retries for auth
                sleepDurationProvider: retryAttempt =>
                    TimeSpan.FromMilliseconds(PollyConstants.RetryPolicy.INITIAL_DELAY_MS * retryAttempt)
            )
            .WrapAsync(GetCircuitBreakerPolicy());
    }

    /// <summary>
    /// Creates a retry policy for database operations with exponential backoff
    /// Handles transient database errors (deadlocks, connection timeouts)
    /// </summary>
    public static IAsyncPolicy GetDatabaseRetryPolicy()
    {
        return Policy
            .Handle<Exception>(ex =>
                ex.InnerException?.Message?.Contains("deadlock") == true ||
                ex.InnerException?.Message?.Contains("timeout") == true ||
                ex.Message?.Contains("connection refused") == true
            )
            .Or<InvalidOperationException>()
            .WaitAndRetryAsync(
                retryCount: PollyConstants.RetryPolicy.MAX_RETRY_ATTEMPTS,
                sleepDurationProvider: retryAttempt =>
                    TimeSpan.FromMilliseconds(
                        PollyConstants.RetryPolicy.INITIAL_DELAY_MS *
                        Math.Pow(PollyConstants.RetryPolicy.BACKOFF_MULTIPLIER, retryAttempt - 1)
                    )
            );
    }

    /// <summary>
    /// Creates a timeout policy for database operations
    /// Prevents queries from hanging indefinitely
    /// </summary>
    public static IAsyncPolicy GetDatabaseTimeoutPolicy()
    {
        return Policy.TimeoutAsync(
            TimeSpan.FromMilliseconds(PollyConstants.TimeoutPolicy.DATABASE_TIMEOUT_MS),
            timeoutStrategy: TimeoutStrategy.Pessimistic
        );
    }

    /// <summary>
    /// Creates a combined database resilience policy (retry + timeout + bulkhead)
    /// Protects database resources from exhaustion and handles transient failures
    /// </summary>
    public static IAsyncPolicy GetDatabaseResiliencePolicy()
    {
        return Policy.WrapAsync(
            GetDatabaseRetryPolicy(),
            GetDatabaseBulkheadPolicy(),
            GetDatabaseTimeoutPolicy()
        );
    }
}

/// <summary>
/// Extension methods for Polly context
/// </summary>
public static class PollyContextExtensions
{
    private const string LoggerKey = "Logger";

    public static void SetLogger(this Polly.Context context, ILogger logger)
    {
        context[LoggerKey] = logger;
    }

    public static ILogger? GetLogger(this Polly.Context context)
    {
        return context.TryGetValue(LoggerKey, out var logger) ? logger as ILogger : null;
    }
}
