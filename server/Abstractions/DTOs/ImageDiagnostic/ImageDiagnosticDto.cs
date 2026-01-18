namespace Abstractions.DTOs.ImageDiagnostic;

public class ImageDiagnosticDto
{
    public int Id { get; set; }
    public int VehicleId { get; set; }
    public string ImagePath { get; set; } = string.Empty;
    public string PredictedIssue { get; set; } = string.Empty;
    public double Confidence { get; set; }
    public DateTime AnalyzedAt { get; set; }
    public string Status { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
}
