namespace Abstractions.Integration;

/// <summary>
/// Service for handling image operations including thumbnail generation
/// </summary>
public interface IImageService
{
    /// <summary>
    /// Save image and generate thumbnail
    /// </summary>
    Task<(string originalPath, string thumbnailPath)> SaveImageAsync(Stream imageStream, string fileName);

    /// <summary>
    /// Generate thumbnail from existing image
    /// </summary>
    Task<string> GenerateThumbnailAsync(string imagePath);

    /// <summary>
    /// Delete image and its thumbnail
    /// </summary>
    Task DeleteImageAsync(string imagePath);

    /// <summary>
    /// Check if file is valid image
    /// </summary>
    bool IsValidImage(Stream stream);
}
