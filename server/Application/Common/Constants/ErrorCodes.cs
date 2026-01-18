namespace Application.Common.Constants;

/// <summary>
/// Error codes for validation and business rules
/// Code names map to GUIDs and use cases via error-codes.json configuration
/// </summary>
public static class ErrorCodes
{
    // User validation codes
    public const string USER_NAME_REQUIRED = "USER_NAME_REQUIRED";
    public const string USER_NAME_MAX_LENGTH = "USER_NAME_MAX_LENGTH";
    public const string USER_EMAIL_REQUIRED = "USER_EMAIL_REQUIRED";
    public const string USER_EMAIL_INVALID = "USER_EMAIL_INVALID";
    public const string USER_EMAIL_MAX_LENGTH = "USER_EMAIL_MAX_LENGTH";
    public const string USER_PHONE_REQUIRED = "USER_PHONE_REQUIRED";
    public const string USER_PHONE_MAX_LENGTH = "USER_PHONE_MAX_LENGTH";
    public const string USER_CITY_REQUIRED = "USER_CITY_REQUIRED";
    public const string USER_CITY_MAX_LENGTH = "USER_CITY_MAX_LENGTH";
    public const string USER_FAMILY_TYPE_REQUIRED = "USER_FAMILY_TYPE_REQUIRED";
    public const string USER_FAMILY_TYPE_MAX_LENGTH = "USER_FAMILY_TYPE_MAX_LENGTH";
    public const string USER_EXPERIENCE_LEVEL_REQUIRED = "USER_EXPERIENCE_LEVEL_REQUIRED";
    public const string USER_EXPERIENCE_LEVEL_MAX_LENGTH = "USER_EXPERIENCE_LEVEL_MAX_LENGTH";
    
    // User operation codes
    public const string USER_ID_INVALID = "USER_ID_INVALID";
    public const string USER_NOT_FOUND = "USER_NOT_FOUND";

    // Pagination validation codes
    public const string PAGE_NUMBER_INVALID = "PAGE_NUMBER_INVALID";
    public const string PAGE_SIZE_INVALID = "PAGE_SIZE_INVALID";
    public const string PAGE_SIZE_EXCEEDS_LIMIT = "PAGE_SIZE_EXCEEDS_LIMIT";

    // Vehicle validation codes
    public const string VEHICLE_BRAND_REQUIRED = "VEHICLE_BRAND_REQUIRED";
    public const string VEHICLE_MODEL_REQUIRED = "VEHICLE_MODEL_REQUIRED";
    public const string VEHICLE_YEAR_INVALID = "VEHICLE_YEAR_INVALID";
    public const string VEHICLE_NOT_FOUND = "VEHICLE_NOT_FOUND";

    // Garage validation codes
    public const string GARAGE_NAME_REQUIRED = "GARAGE_NAME_REQUIRED";
    public const string GARAGE_CITY_REQUIRED = "GARAGE_CITY_REQUIRED";
    public const string GARAGE_NOT_FOUND = "GARAGE_NOT_FOUND";

    // Service validation codes
    public const string SERVICE_NAME_REQUIRED = "SERVICE_NAME_REQUIRED";
    public const string SERVICE_PRICE_INVALID = "SERVICE_PRICE_INVALID";
    public const string SERVICE_NOT_FOUND = "SERVICE_NOT_FOUND";

    // Generic codes
    public const string OPERATION_FAILED = "OPERATION_FAILED";
    public const string VALIDATION_FAILED = "VALIDATION_FAILED";
    public const string UNAUTHORIZED = "UNAUTHORIZED";
    public const string FORBIDDEN = "FORBIDDEN";
}

