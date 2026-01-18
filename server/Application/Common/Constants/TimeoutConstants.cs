namespace Application.Common.Constants;

/// <summary>
/// Timeout durations for various operations (in milliseconds)
/// </summary>
public static class TimeoutConstants
{
    // HTTP Request Timeouts
    public const int API_REQUEST_TIMEOUT_MS = 30_000; // 30 seconds
    public const int FILE_UPLOAD_TIMEOUT_MS = 120_000; // 2 minutes
    public const int LONG_RUNNING_OPERATION_MS = 300_000; // 5 minutes
    
    // Database Timeouts (in seconds)
    public const int DATABASE_QUERY_TIMEOUT_SEC = 60; // 60 seconds
    public const int DATABASE_MIGRATION_TIMEOUT_SEC = 300; // 5 minutes
    
    // Cache Timeouts (in seconds)
    public const int REDIS_CACHE_TIMEOUT_SEC = 300; // 5 minutes
    public const int REDIS_CONNECT_TIMEOUT_SEC = 10; // 10 seconds
    
    // External Service Timeouts
    public const int KEYCLOAK_REQUEST_TIMEOUT_MS = 15_000; // 15 seconds
    public const int AZURE_AI_REQUEST_TIMEOUT_MS = 60_000; // 60 seconds
    public const int SMS_SERVICE_TIMEOUT_MS = 10_000; // 10 seconds
    public const int EMAIL_SERVICE_TIMEOUT_MS = 30_000; // 30 seconds
    
    // Background Job Timeouts
    public const int BACKGROUND_JOB_TIMEOUT_MIN = 30; // 30 minutes
    public const int ML_TRAINING_TIMEOUT_MIN = 120; // 2 hours
}
