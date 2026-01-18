namespace Abstractions.DTOs.ImageDiagnostic;

public class UpdateImageDiagnosticRequest
{
    public string PredictedIssue { get; set; } = string.Empty;
    public double Confidence { get; set; }
    public string Status { get; set; } = string.Empty;
}
