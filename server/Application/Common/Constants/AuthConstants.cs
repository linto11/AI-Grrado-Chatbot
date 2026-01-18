namespace Application.Common.Constants;

/// <summary>
/// Authentication and authorization constants for Keycloak integration
/// </summary>
public static class AuthConstants
{
    /// <summary>
    /// Keycloak realm configuration
    /// </summary>
    public static class Keycloak
    {
        public const string REALM_NAME = "VehicleServicePortal";
        public const string AUTHORITY_CONFIG_KEY = "Keycloak:Authority";
        public const string AUDIENCE_CONFIG_KEY = "Keycloak:Audience";
        public const string METADATA_ADDRESS_CONFIG_KEY = "Keycloak:MetadataAddress";
        public const string REQUIRE_HTTPS_CONFIG_KEY = "Keycloak:RequireHttpsMetadata";
    }
    
    /// <summary>
    /// OAuth2 client identifiers
    /// </summary>
    public static class Clients
    {
        public const string WEB_PORTAL = "web-portal";
        public const string MOBILE_CUSTOMER = "mobile-customer-app";
        public const string MOBILE_ADMIN = "mobile-admin-app";
        public const string BACKEND_SERVICE = "backend-api-service";
    }
    
    /// <summary>
    /// OAuth2/OIDC scopes
    /// </summary>
    public static class Scopes
    {
        public const string OPENID = "openid";
        public const string PROFILE = "profile";
        public const string EMAIL = "email";
        public const string GROUPS = "groups";
        public const string ROLES = "roles";
        public const string OFFLINE_ACCESS = "offline_access";
    }
    
    /// <summary>
    /// JWT token claims
    /// </summary>
    public static class Claims
    {
        public const string SUBJECT = "sub";
        public const string EMAIL = "email";
        public const string NAME = "name";
        public const string GIVEN_NAME = "given_name";
        public const string FAMILY_NAME = "family_name";
        public const string GROUPS = "groups";
        public const string ROLES = "roles";
        public const string KEYCLOAK_USER_ID = "keycloak_user_id";
        public const string PREFERRED_USERNAME = "preferred_username";
    }
    
    /// <summary>
    /// Social login provider identifiers
    /// </summary>
    public static class Providers
    {
        public const string LOCAL = "local";
        public const string GOOGLE = "google";
        public const string FACEBOOK = "facebook";
        public const string APPLE = "apple";
        public const string MICROSOFT = "microsoft";
    }
    
    /// <summary>
    /// Authorization policy names
    /// </summary>
    public static class Policies
    {
        public const string SUPER_ADMIN_ONLY = "SuperAdminOnly";
        public const string ADMIN_OR_HIGHER = "AdminOrHigher";
        public const string GARAGE_ADMIN_OR_HIGHER = "GarageAdminOrHigher";
        public const string AUTHENTICATED = "Authenticated";
    }
    
    /// <summary>
    /// Token expiration times (in seconds)
    /// </summary>
    public static class TokenExpiration
    {
        public const int ACCESS_TOKEN_LIFETIME_SEC = 3600; // 1 hour
        public const int REFRESH_TOKEN_LIFETIME_SEC = 2592000; // 30 days
        public const int ID_TOKEN_LIFETIME_SEC = 3600; // 1 hour
    }
}
