namespace Application.Common.Constants;

/// <summary>
/// Keycloak realm roles - MUST match Keycloak configuration
/// Used for authorization and role-based access control
/// </summary>
public static class RoleConstants
{
    // Keycloak Realm Roles
    public const string SUPER_ADMIN = "super-admin";
    public const string APP_ADMIN = "app-admin";
    public const string GARAGE_ADMIN = "garage-admin";
    public const string CUSTOMER = "customer";
    
    // Role Hierarchy Levels (1 = highest privilege)
    public const int SUPER_ADMIN_LEVEL = 1;
    public const int APP_ADMIN_LEVEL = 2;
    public const int GARAGE_ADMIN_LEVEL = 3;
    public const int CUSTOMER_LEVEL = 4;
}
