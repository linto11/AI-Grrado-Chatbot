namespace Application.Common.Constants;

/// <summary>
/// Redis cache key patterns and helper methods
/// Pattern format: entity:action:identifier
/// </summary>
public static class CacheKeys
{
    /// <summary>
    /// Cache expiration times (in minutes)
    /// </summary>
    public static class Expiration
    {
        public const int ERROR_MESSAGES_MINUTES = 360; // 6 hours
        public const int USER_PERMISSIONS_MINUTES = 30; // 30 minutes
        public const int GARAGE_LIST_MINUTES = 60; // 1 hour
        public const int CONFIG_MINUTES = 1440; // 24 hours
        public const int SHORT_CACHE_MINUTES = 5; // 5 minutes
    }
    
    // Error Messages
    public const string ERROR_MESSAGES_ALL = "error_messages:all";
    public const string ERROR_MESSAGE_PREFIX = "error_message:code:";
    
    // Users
    public const string USER_BY_ID_PREFIX = "user:id:";
    public const string USER_BY_EMAIL_PREFIX = "user:email:";
    public const string USER_PERMISSIONS_PREFIX = "user:permissions:";
    public const string USER_GROUPS_PREFIX = "user:groups:";
    
    // Garages
    public const string GARAGE_BY_ID_PREFIX = "garage:id:";
    public const string GARAGE_LIST_BY_CITY_PREFIX = "garage:city:";
    public const string GARAGE_SERVICES_PREFIX = "garage:services:";
    
    // Vehicles
    public const string VEHICLE_BY_ID_PREFIX = "vehicle:id:";
    public const string VEHICLES_BY_USER_PREFIX = "vehicles:user:";
    
    // Bookings
    public const string BOOKING_BY_ID_PREFIX = "booking:id:";
    public const string BOOKINGS_BY_USER_PREFIX = "bookings:user:";
    public const string BOOKINGS_BY_GARAGE_PREFIX = "bookings:garage:";
    
    // Configuration
    public const string APP_CONFIG = "config:app";
    public const string FEATURE_FLAGS = "config:features";
    public const string KEYCLOAK_CONFIG = "config:keycloak";
    
    // Groups & Roles
    public const string GROUP_BY_ID_PREFIX = "group:id:";
    public const string GROUP_ROLES_PREFIX = "group:roles:";
    public const string ROLE_PERMISSIONS_PREFIX = "role:permissions:";
    
    // Helper methods to generate cache keys
    public static string GetUserCacheKey(Guid userId) => 
        $"{USER_BY_ID_PREFIX}{userId}";
    
    public static string GetUserByEmailCacheKey(string email) => 
        $"{USER_BY_EMAIL_PREFIX}{email.ToLowerInvariant()}";
    
    public static string GetUserPermissionsCacheKey(Guid userId) => 
        $"{USER_PERMISSIONS_PREFIX}{userId}";
    
    public static string GetUserGroupsCacheKey(Guid userId) => 
        $"{USER_GROUPS_PREFIX}{userId}";
    
    public static string GetErrorMessageCacheKey(string errorCode) => 
        $"{ERROR_MESSAGE_PREFIX}{errorCode}";
    
    public static string GetGarageCacheKey(Guid garageId) => 
        $"{GARAGE_BY_ID_PREFIX}{garageId}";
    
    public static string GetGaragesByCityCacheKey(string city) => 
        $"{GARAGE_LIST_BY_CITY_PREFIX}{city.ToLowerInvariant()}";
    
    public static string GetGarageServicesCacheKey(Guid garageId) => 
        $"{GARAGE_SERVICES_PREFIX}{garageId}";
    
    public static string GetVehicleCacheKey(Guid vehicleId) => 
        $"{VEHICLE_BY_ID_PREFIX}{vehicleId}";
    
    public static string GetVehiclesByUserCacheKey(Guid userId) => 
        $"{VEHICLES_BY_USER_PREFIX}{userId}";
    
    public static string GetBookingCacheKey(Guid bookingId) => 
        $"{BOOKING_BY_ID_PREFIX}{bookingId}";
    
    public static string GetBookingsByUserCacheKey(Guid userId) => 
        $"{BOOKINGS_BY_USER_PREFIX}{userId}";
    
    public static string GetBookingsByGarageCacheKey(Guid garageId) => 
        $"{BOOKINGS_BY_GARAGE_PREFIX}{garageId}";
    
    public static string GetGroupCacheKey(Guid groupId) => 
        $"{GROUP_BY_ID_PREFIX}{groupId}";
    
    public static string GetGroupRolesCacheKey(Guid groupId) => 
        $"{GROUP_ROLES_PREFIX}{groupId}";
    
    public static string GetRolePermissionsCacheKey(Guid roleId) => 
        $"{ROLE_PERMISSIONS_PREFIX}{roleId}";
}
