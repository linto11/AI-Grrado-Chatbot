namespace Application.Common.Constants;

/// <summary>
/// File upload restrictions and limits
/// MUST be synchronized with frontend file-upload.constants.ts
/// </summary>
public static class FileUploadLimits
{
    // File Size Limits (in bytes)
    public const int MAX_FILE_SIZE_BYTES = 5_242_880; // 5MB
    public const int MAX_IMAGE_SIZE_BYTES = 5_242_880; // 5MB
    public const int MAX_VIDEO_SIZE_BYTES = 52_428_800; // 50MB
    public const int MAX_DOCUMENT_SIZE_BYTES = 10_485_760; // 10MB
    
    // Image Dimensions (in pixels)
    public const int MAX_IMAGE_WIDTH_PX = 4096;
    public const int MAX_IMAGE_HEIGHT_PX = 4096;
    public const int THUMBNAIL_WIDTH_PX = 200;
    public const int THUMBNAIL_HEIGHT_PX = 200;
    
    // Allowed MIME Types
    public static class AllowedMimeTypes
    {
        // Images
        public static readonly string[] IMAGES = 
        {
            "image/jpeg",
            "image/png",
            "image/webp",
            "image/gif"
        };
        
        // Videos
        public static readonly string[] VIDEOS = 
        {
            "video/mp4",
            "video/webm"
        };
        
        // Documents
        public static readonly string[] DOCUMENTS = 
        {
            "application/pdf",
            "application/msword",
            "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
        };
    }
    
    // File Extensions
    public static class AllowedExtensions
    {
        public static readonly string[] IMAGES = { ".jpg", ".jpeg", ".png", ".webp", ".gif" };
        public static readonly string[] VIDEOS = { ".mp4", ".webm" };
        public static readonly string[] DOCUMENTS = { ".pdf", ".doc", ".docx" };
    }
    
    // Upload Paths (relative to wwwroot)
    public static class UploadPaths
    {
        public const string UPLOADS_ROOT = "uploads";
        public const string IMAGES = "uploads/images";
        public const string VIDEOS = "uploads/videos";
        public const string DOCUMENTS = "uploads/documents";
        public const string PROFILE_PHOTOS = "uploads/images/profiles";
        public const string VEHICLE_PHOTOS = "uploads/images/vehicles";
        public const string GARAGE_PHOTOS = "uploads/images/garages";
        public const string THUMBNAILS = "uploads/images/thumbnails";
    }
}
