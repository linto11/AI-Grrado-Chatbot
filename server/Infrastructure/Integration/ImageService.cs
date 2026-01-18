using SkiaSharp;
using Microsoft.Extensions.Logging;
using Abstractions.Integration;

namespace Infrastructure.Integration;

/// <summary>
/// Image information
/// </summary>
public class ImageInfo
{
    public int Width { get; set; }
    public int Height { get; set; }
    public string Format { get; set; } = string.Empty;
    public long FileSizeBytes { get; set; }
}

/// <summary>
/// Implementation of image service
/// </summary>
public class ImageService : IImageService
{
    private readonly ILogger<ImageService> _logger;
    private readonly string _uploadDirectory;
    private readonly string _thumbnailDirectory;
    private const int THUMBNAIL_WIDTH = 200;
    private const int THUMBNAIL_HEIGHT = 200;
    private const long MAX_FILE_SIZE = 10 * 1024 * 1024; // 10 MB

    public ImageService(ILogger<ImageService> logger, string uploadDirectory = "uploads/images")
    {
        _logger = logger;
        _uploadDirectory = uploadDirectory;
        _thumbnailDirectory = Path.Combine(uploadDirectory, "thumbnails");
        
        // Ensure directories exist
        Directory.CreateDirectory(_uploadDirectory);
        Directory.CreateDirectory(_thumbnailDirectory);
    }

    public async Task<(string originalPath, string thumbnailPath)> SaveImageAsync(Stream imageStream, string fileName)
    {
        try
        {
            // Validate stream size
            if (imageStream.Length > MAX_FILE_SIZE)
            {
                throw new InvalidOperationException($"File size exceeds maximum allowed size of {MAX_FILE_SIZE / 1024 / 1024}MB");
            }

            // Validate image
            if (!IsValidImage(imageStream))
            {
                throw new InvalidOperationException("Invalid image file");
            }

            // Reset stream position after validation
            imageStream.Position = 0;

            // Generate unique filename
            var uniqueFileName = $"{Guid.NewGuid()}_{Path.GetFileName(fileName)}";
            var originalPath = Path.Combine(_uploadDirectory, uniqueFileName);

            // Save original image
            using (var fileStream = File.Create(originalPath))
            {
                await imageStream.CopyToAsync(fileStream);
            }

            // Generate thumbnail
            var thumbnailPath = await GenerateThumbnailAsync(originalPath);

            _logger.LogInformation($"Image saved: {uniqueFileName}");
            return (originalPath, thumbnailPath);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error saving image: {fileName}");
            throw;
        }
    }

    public async Task<string> GenerateThumbnailAsync(string imagePath)
    {
        try
        {
            using (var inputStream = File.OpenRead(imagePath))
            using (var originalBitmap = SKBitmap.Decode(inputStream))
            {
                if (originalBitmap == null)
                {
                    throw new InvalidOperationException("Failed to decode image");
                }

                // Calculate thumbnail dimensions maintaining aspect ratio
                var aspectRatio = (float)originalBitmap.Width / originalBitmap.Height;
                int targetWidth = THUMBNAIL_WIDTH;
                int targetHeight = THUMBNAIL_HEIGHT;

                if (aspectRatio > 1)
                {
                    targetHeight = (int)(THUMBNAIL_WIDTH / aspectRatio);
                }
                else
                {
                    targetWidth = (int)(THUMBNAIL_HEIGHT * aspectRatio);
                }

                // Resize image
                using (var scaledBitmap = originalBitmap.Resize(
                    new SKImageInfo(targetWidth, targetHeight), 
                    SKFilterQuality.High))
                {
                    if (scaledBitmap == null)
                    {
                        throw new InvalidOperationException("Failed to resize image");
                    }

                    var fileName = Path.GetFileNameWithoutExtension(imagePath);
                    var extension = Path.GetExtension(imagePath);
                    var thumbnailFileName = $"{fileName}_thumb{extension}";
                    var thumbnailPath = Path.Combine(_thumbnailDirectory, thumbnailFileName);

                    // Save thumbnail
                    using (var image = SKImage.FromBitmap(scaledBitmap))
                    using (var data = image.Encode(SKEncodedImageFormat.Jpeg, 85))
                    using (var outputStream = File.OpenWrite(thumbnailPath))
                    {
                        data.SaveTo(outputStream);
                    }

                    _logger.LogInformation($"Thumbnail generated: {thumbnailFileName}");
                    return thumbnailPath;
                }
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error generating thumbnail for: {imagePath}");
            throw;
        }
    }

    public async Task DeleteImageAsync(string imagePath)
    {
        try
        {
            // Delete original
            if (File.Exists(imagePath))
            {
                File.Delete(imagePath);
            }

            // Delete thumbnail
            var fileName = Path.GetFileNameWithoutExtension(imagePath);
            var extension = Path.GetExtension(imagePath);
            var thumbnailFileName = $"{fileName}_thumb{extension}";
            var thumbnailPath = Path.Combine(_thumbnailDirectory, thumbnailFileName);

            if (File.Exists(thumbnailPath))
            {
                File.Delete(thumbnailPath);
            }

            _logger.LogInformation($"Image deleted: {Path.GetFileName(imagePath)}");
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error deleting image: {imagePath}");
            throw;
        }
    }

    public bool IsValidImage(Stream stream)
    {
        try
        {
            stream.Position = 0;
            // Try to decode the image to verify it's valid
            using (var bitmap = SKBitmap.Decode(stream))
            {
                return bitmap != null;
            }
        }
        catch (Exception ex)
        {
            _logger.LogWarning($"Invalid image format: {ex.Message}");
            return false;
        }
    }

    public async Task<ImageInfo?> GetImageInfoAsync(string imagePath)
    {
        try
        {
            if (!File.Exists(imagePath))
                return null;

            using (var stream = File.OpenRead(imagePath))
            using (var codec = SKCodec.Create(stream))
            {
                if (codec == null)
                    return null;

                var fileInfo = new FileInfo(imagePath);
                return new ImageInfo
                {
                    Width = codec.Info.Width,
                    Height = codec.Info.Height,
                    Format = codec.EncodedFormat.ToString(),
                    FileSizeBytes = fileInfo.Length
                };
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error getting image info: {imagePath}");
            return null;
        }
    }
}
