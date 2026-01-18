namespace Application.Common.Constants;

/// <summary>
/// Validation constants for input validation rules
/// MUST be synchronized with frontend validation.constants.ts
/// Used by FluentValidation validators
/// </summary>
public static class ValidationConstants
{
    /// <summary>
    /// String length limits
    /// </summary>
    public static class StringLengths
    {
        public const int USER_NAME_MAX = 100;
        public const int EMAIL_MAX = 200;
        public const int PHONE_MAX = 20;
        public const int CITY_MAX = 100;
        public const int ADDRESS_MAX = 500;
        public const int DESCRIPTION_MAX = 2000;
        public const int TITLE_MAX = 200;
        public const int VIN_LENGTH = 17;
    }
    
    /// <summary>
    /// Numeric ranges
    /// </summary>
    public static class NumericRanges
    {
        public const int YEAR_MIN = 1900;
        public const int YEAR_MAX = 2100;
        public const decimal PRICE_MIN = 0;
        public const decimal PRICE_MAX = 999_999.99m;
        public const int RATING_MIN = 1;
        public const int RATING_MAX = 5;
        public const int PERCENTAGE_MIN = 0;
        public const int PERCENTAGE_MAX = 100;
    }
    
    /// <summary>
    /// Regular expression patterns
    /// </summary>
    public static class Patterns
    {
        public const string EMAIL = @"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
        public const string PHONE = @"^\+?[\d\s\-\(\)]+$";
        public const string VIN = @"^[A-HJ-NPR-Z0-9]{17}$";
        public const string SLUG = @"^[a-z0-9\-]+$";
        public const string URL = @"^https?://[^\s]+$";
        public const string POSTAL_CODE = @"^\d{5}(-\d{4})?$";
    }
    
    /// <summary>
    /// Pagination settings
    /// </summary>
    public static class Pagination
    {
        public const int DEFAULT_PAGE_NUMBER = 1;
        public const int DEFAULT_PAGE_SIZE = 10;
        public const int MAX_PAGE_SIZE = 100;
        public const int MIN_PAGE_SIZE = 1;
    }
}
