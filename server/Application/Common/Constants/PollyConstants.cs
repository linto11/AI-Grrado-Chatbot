namespace Application.Common.Constants;

/// <summary>
/// Polly resilience policy constants
/// Defines retry, circuit breaker, and timeout configurations
/// </summary>
public static class PollyConstants
{
    // Retry Policy
    public static class RetryPolicy
    {
        /// <summary>Maximum number of retry attempts</summary>
        public const int MAX_RETRY_ATTEMPTS = 3;
        
        /// <summary>Initial delay between retries (milliseconds)</summary>
        public const int INITIAL_DELAY_MS = 100;
        
        /// <summary>Backoff multiplier for exponential retry delays</summary>
        public const double BACKOFF_MULTIPLIER = 2.0;
        
        /// <summary>Maximum delay between retries (milliseconds)</summary>
        public const int MAX_DELAY_MS = 5000;
    }

    // Circuit Breaker Policy
    public static class CircuitBreakerPolicy
    {
        /// <summary>Number of failures before opening circuit</summary>
        public const int FAILURE_THRESHOLD = 5;
        
        /// <summary>Time circuit stays open before attempting retry (seconds)</summary>
        public const int CIRCUIT_OPEN_TIMEOUT_SECONDS = 30;
        
        /// <summary>Number of successful calls required to close circuit</summary>
        public const int SUCCESS_THRESHOLD = 3;
    }

    // Timeout Policy
    public static class TimeoutPolicy
    {
        /// <summary>HTTP request timeout (milliseconds)</summary>
        public const int HTTP_REQUEST_TIMEOUT_MS = 30_000; // 30 seconds
        
        /// <summary>Database query timeout (milliseconds)</summary>
        public const int DATABASE_TIMEOUT_MS = 60_000; // 60 seconds
        
        /// <summary>External API timeout (milliseconds)</summary>
        public const int EXTERNAL_API_TIMEOUT_MS = 30_000; // 30 seconds
    }

    // Bulkhead Isolation Policy
    public static class BulkheadPolicy
    {
        /// <summary>Maximum parallel requests allowed</summary>
        public const int MAX_PARALLEL_REQUESTS = 50;
        
        /// <summary>Maximum queue depth for pending requests</summary>
        public const int MAX_QUEUE_DEPTH = 100;
    }

    // HTTP Status Codes to Retry (Transient Errors)
    public static class TransientHttpStatusCodes
    {
        // 408: Request Timeout
        public const int REQUEST_TIMEOUT = 408;
        
        // 429: Too Many Requests
        public const int TOO_MANY_REQUESTS = 429;
        
        // 500: Internal Server Error
        public const int INTERNAL_SERVER_ERROR = 500;
        
        // 502: Bad Gateway
        public const int BAD_GATEWAY = 502;
        
        // 503: Service Unavailable
        public const int SERVICE_UNAVAILABLE = 503;
        
        // 504: Gateway Timeout
        public const int GATEWAY_TIMEOUT = 504;
    }

    // Policy Names for Registration
    public static class PolicyNames
    {
        /// <summary>Combined retry + circuit breaker policy for HTTP clients</summary>
        public const string HTTP_RESILIENCE = "HttpResilience";
        
        /// <summary>Retry policy only</summary>
        public const string RETRY_ONLY = "RetryOnly";
        
        /// <summary>Circuit breaker policy only</summary>
        public const string CIRCUIT_BREAKER_ONLY = "CircuitBreakerOnly";
        
        /// <summary>Bulkhead isolation policy for database</summary>
        public const string DATABASE_BULKHEAD = "DatabaseBulkhead";
        
        /// <summary>Azure AI Services policy</summary>
        public const string AZURE_AI_SERVICES = "AzureAIServices";
        
        /// <summary>Keycloak authentication policy</summary>
        public const string KEYCLOAK_POLICY = "KeycloakPolicy";
    }

    // Exception Types to Handle
    public static class ExceptionsToHandle
    {
        /// <summary>List of exception types that should trigger retry</summary>
        public static readonly Type[] TRANSIENT_EXCEPTIONS = new[]
        {
            typeof(HttpRequestException),
            typeof(TimeoutException),
            typeof(OperationCanceledException),
        };
    }
}
