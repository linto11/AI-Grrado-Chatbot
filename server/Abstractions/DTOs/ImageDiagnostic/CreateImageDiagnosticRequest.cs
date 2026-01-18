namespace Abstractions.DTOs.ImageDiagnostic;

public class CreateImageDiagnosticRequest
{
    public int VehicleId { get; set; }
    public string ImagePath { get; set; } = string.Empty;
    public string PredictedIssue { get; set; } = string.Empty;
    public double Confidence { get; set; }
    public string Status { get; set; } = string.Empty;
}
