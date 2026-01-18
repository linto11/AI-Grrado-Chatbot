namespace Application.Common.Constants;

/// <summary>
/// Permission names for fine-grained access control
/// Format: resource.action (e.g., 'cms.page.create')
/// MUST be synchronized with frontend permission.constants.ts
/// </summary>
public static class PermissionConstants
{
    // System Permissions (Super Admin only)
    public const string SYSTEM_CONFIG = "system.config";
    public const string SYSTEM_BACKUP = "system.backup";
    public const string SYSTEM_RESTORE = "system.restore";
    public const string SYSTEM_IMPERSONATE = "system.impersonate";
    public const string SYSTEM_AUDIT_VIEW = "system.audit.view";
    
    // User Management
    public const string USER_CREATE = "user.create";
    public const string USER_READ = "user.read";
    public const string USER_UPDATE = "user.update";
    public const string USER_DELETE = "user.delete";
    public const string USER_MANAGE_ROLES = "user.manage_roles";
    public const string USER_RESET_PASSWORD = "user.reset_password";
    public const string USER_SUSPEND = "user.suspend";
    public const string USER_EXPORT = "user.export";
    
    // Group Management
    public const string GROUP_CREATE = "group.create";
    public const string GROUP_READ = "group.read";
    public const string GROUP_UPDATE = "group.update";
    public const string GROUP_DELETE = "group.delete";
    public const string GROUP_ASSIGN_USERS = "group.assign_users";
    public const string GROUP_ASSIGN_ROLES = "group.assign_roles";
    
    // CMS Permissions
    public const string CMS_PAGE_CREATE = "cms.page.create";
    public const string CMS_PAGE_READ = "cms.page.read";
    public const string CMS_PAGE_EDIT = "cms.page.edit";
    public const string CMS_PAGE_DELETE = "cms.page.delete";
    public const string CMS_PAGE_PUBLISH = "cms.page.publish";
    public const string CMS_MEDIA_UPLOAD = "cms.media.upload";
    public const string CMS_MEDIA_DELETE = "cms.media.delete";
    public const string CMS_BANNER_MANAGE = "cms.banner.manage";
    public const string CMS_TEMPLATE_EDIT = "cms.template.edit";
    
    // AI Platform Permissions
    public const string AI_MODEL_TRAIN = "ai.model.train";
    public const string AI_MODEL_DEPLOY = "ai.model.deploy";
    public const string AI_MODEL_DELETE = "ai.model.delete";
    public const string AI_DATASET_UPLOAD = "ai.dataset.upload";
    public const string AI_CHATBOT_CONFIG = "ai.chatbot.config";
    public const string AI_KNOWLEDGE_BASE_EDIT = "ai.knowledge_base.edit";
    public const string AI_USAGE_VIEW = "ai.usage.view";
    
    // Garage Management
    public const string GARAGE_CREATE = "garage.create";
    public const string GARAGE_READ = "garage.read";
    public const string GARAGE_UPDATE = "garage.update";
    public const string GARAGE_DELETE = "garage.delete";
    public const string GARAGE_APPROVE = "garage.approve";
    public const string GARAGE_SUSPEND = "garage.suspend";
    public const string GARAGE_SET_COMMISSION = "garage.set_commission";
    public const string GARAGE_VIEW_ANALYTICS = "garage.view_analytics";
    
    // Service Management (Garage Admin)
    public const string SERVICE_CREATE = "service.create";
    public const string SERVICE_READ = "service.read";
    public const string SERVICE_UPDATE = "service.update";
    public const string SERVICE_DELETE = "service.delete";
    public const string SERVICE_SET_PRICING = "service.set_pricing";
    
    // Staff Management (Garage Admin)
    public const string STAFF_CREATE = "staff.create";
    public const string STAFF_UPDATE = "staff.update";
    public const string STAFF_DELETE = "staff.delete";
    public const string STAFF_ASSIGN_SHIFTS = "staff.assign_shifts";
    
    // Booking Management
    public const string BOOKING_CREATE = "booking.create";
    public const string BOOKING_READ = "booking.read";
    public const string BOOKING_UPDATE = "booking.update";
    public const string BOOKING_CANCEL = "booking.cancel";
    public const string BOOKING_MANAGE = "booking.manage";
    public const string BOOKING_ASSIGN_MECHANIC = "booking.assign_mechanic";
    public const string BOOKING_UPDATE_STATUS = "booking.update_status";
    
    // Vehicle Management (Customer)
    public const string VEHICLE_CREATE = "vehicle.create";
    public const string VEHICLE_READ = "vehicle.read";
    public const string VEHICLE_UPDATE = "vehicle.update";
    public const string VEHICLE_DELETE = "vehicle.delete";
    
    // Notification Management
    public const string NOTIFICATION_SEND = "notification.send";
    public const string NOTIFICATION_BROADCAST = "notification.broadcast";
    public const string NOTIFICATION_TEMPLATE_EDIT = "notification.template.edit";
    
    // Analytics & Reports
    public const string ANALYTICS_VIEW_SYSTEM = "analytics.view_system";
    public const string ANALYTICS_VIEW_GARAGE = "analytics.view_garage";
    public const string ANALYTICS_EXPORT = "analytics.export";
    public const string REPORT_FINANCIAL = "report.financial";
    public const string REPORT_USER_ACTIVITY = "report.user_activity";
}
