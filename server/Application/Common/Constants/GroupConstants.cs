namespace Application.Common.Constants;

/// <summary>
/// Group type constants for organization hierarchy
/// Admin users belong to groups; customers use direct role assignment
/// </summary>
public static class GroupConstants
{
    /// <summary>
    /// Group types for categorization
    /// </summary>
    public static class Types
    {
        public const string SYSTEM = "system";
        public const string OPERATIONS = "operations";
        public const string GARAGE = "garage";
    }
    
    /// <summary>
    /// Default system group names
    /// </summary>
    public static class DefaultGroups
    {
        public const string SYSTEM_ADMINISTRATORS = "SystemAdministrators";
        public const string OPERATIONS_TEAM = "OperationsTeam";
        public const string GARAGES_ROOT = "Garages";
    }
    
    /// <summary>
    /// Group metadata keys (stored in JSONB)
    /// </summary>
    public static class MetadataKeys
    {
        public const string GARAGE_ID = "garage_id";
        public const string DESCRIPTION = "description";
        public const string CONTACT_EMAIL = "contact_email";
        public const string CREATED_BY = "created_by";
    }
}
