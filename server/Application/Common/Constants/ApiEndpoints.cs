namespace Application.Common.Constants;

/// <summary>
/// API endpoint route templates
/// Used in controllers with [HttpGet(ApiEndpoints.Users.GET_BY_ID)]
/// </summary>
public static class ApiEndpoints
{
    public const string API_VERSION = "v1";
    public const string BASE_PATH = $"/api/{API_VERSION}";
    
    /// <summary>
    /// User management endpoints
    /// </summary>
    public static class Users
    {
        private const string BASE = $"{BASE_PATH}/users";
        
        public const string GET_ALL = BASE;
        public const string GET_BY_ID = $"{BASE}/{{id:guid}}";
        public const string CREATE = BASE;
        public const string UPDATE = $"{BASE}/{{id:guid}}";
        public const string DELETE = $"{BASE}/{{id:guid}}";
        public const string GET_BY_EMAIL = $"{BASE}/email/{{email}}";
    }
    
    /// <summary>
    /// Authentication endpoints
    /// </summary>
    public static class Auth
    {
        private const string BASE = $"{BASE_PATH}/auth";
        
        public const string LOGIN = $"{BASE}/login";
        public const string LOGOUT = $"{BASE}/logout";
        public const string REFRESH = $"{BASE}/refresh";
        public const string CALLBACK = $"{BASE}/callback";
        public const string ME = $"{BASE}/me";
    }
    
    /// <summary>
    /// Vehicle management endpoints
    /// </summary>
    public static class Vehicles
    {
        private const string BASE = $"{BASE_PATH}/vehicles";
        
        public const string GET_ALL = BASE;
        public const string GET_BY_ID = $"{BASE}/{{id:guid}}";
        public const string CREATE = BASE;
        public const string UPDATE = $"{BASE}/{{id:guid}}";
        public const string DELETE = $"{BASE}/{{id:guid}}";
        public const string GET_BY_USER = $"{BASE}/user/{{userId:guid}}";
    }
    
    /// <summary>
    /// Garage management endpoints
    /// </summary>
    public static class Garages
    {
        private const string BASE = $"{BASE_PATH}/garages";
        
        public const string GET_ALL = BASE;
        public const string GET_BY_ID = $"{BASE}/{{id:guid}}";
        public const string CREATE = BASE;
        public const string UPDATE = $"{BASE}/{{id:guid}}";
        public const string DELETE = $"{BASE}/{{id:guid}}";
        public const string GET_BY_CITY = $"{BASE}/city/{{city}}";
        public const string APPROVE = $"{BASE}/{{id:guid}}/approve";
    }
    
    /// <summary>
    /// Service management endpoints
    /// </summary>
    public static class Services
    {
        private const string BASE = $"{BASE_PATH}/services";
        
        public const string GET_ALL = BASE;
        public const string GET_BY_ID = $"{BASE}/{{id:guid}}";
        public const string CREATE = BASE;
        public const string UPDATE = $"{BASE}/{{id:guid}}";
        public const string DELETE = $"{BASE}/{{id:guid}}";
        public const string GET_BY_GARAGE = $"{BASE}/garage/{{garageId:guid}}";
    }
    
    /// <summary>
    /// Booking management endpoints
    /// </summary>
    public static class Bookings
    {
        private const string BASE = $"{BASE_PATH}/bookings";
        
        public const string GET_ALL = BASE;
        public const string GET_BY_ID = $"{BASE}/{{id:guid}}";
        public const string CREATE = BASE;
        public const string UPDATE = $"{BASE}/{{id:guid}}";
        public const string CANCEL = $"{BASE}/{{id:guid}}/cancel";
        public const string GET_BY_USER = $"{BASE}/user/{{userId:guid}}";
        public const string GET_BY_GARAGE = $"{BASE}/garage/{{garageId:guid}}";
    }
    
    /// <summary>
    /// File upload endpoints
    /// </summary>
    public static class Upload
    {
        private const string BASE = $"{BASE_PATH}/upload";
        
        public const string IMAGE = $"{BASE}/image";
        public const string DOCUMENT = $"{BASE}/document";
        public const string PROFILE_PHOTO = $"{BASE}/profile-photo";
        public const string VEHICLE_PHOTO = $"{BASE}/vehicle-photo";
    }
    
    /// <summary>
    /// Group management endpoints
    /// </summary>
    public static class Groups
    {
        private const string BASE = $"{BASE_PATH}/groups";
        
        public const string GET_ALL = BASE;
        public const string GET_BY_ID = $"{BASE}/{{id:guid}}";
        public const string CREATE = BASE;
        public const string UPDATE = $"{BASE}/{{id:guid}}";
        public const string DELETE = $"{BASE}/{{id:guid}}";
        public const string ASSIGN_USER = $"{BASE}/{{id:guid}}/users/{{userId:guid}}";
        public const string ASSIGN_ROLE = $"{BASE}/{{id:guid}}/roles/{{roleId:guid}}";
    }
}
