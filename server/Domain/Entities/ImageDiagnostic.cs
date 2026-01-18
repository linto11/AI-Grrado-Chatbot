using Domain.Abstractions;

namespace Domain.Entities;

public class ImageDiagnostic : IEntity
{
    public int Id { get; set; }
    public string VisualFeature { get; set; } = string.Empty;
    public double Confidence { get; set; }
    public string LikelyIssue { get; set; } = string.Empty;
    public string Urgency { get; set; } = string.Empty; // low/medium/high/critical
    public string FilePath { get; set; } = string.Empty;
    public string ImageType { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    
    // Audit columns
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
    
    // Soft delete columns
    public bool IsDeleted { get; set; } = false;
    public DateTime? DeletedAt { get; set; }
    public string? DeletedBy { get; set; }
}
