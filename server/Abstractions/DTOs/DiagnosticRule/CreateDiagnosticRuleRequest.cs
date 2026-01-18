namespace Abstractions.DTOs.DiagnosticRule;

public class CreateDiagnosticRuleRequest
{
    public string VehicleType { get; set; } = string.Empty;
    public string IssueType { get; set; } = string.Empty;
    public int MileageThreshold { get; set; }
    public string RecommendedAction { get; set; } = string.Empty;
    public string Severity { get; set; } = string.Empty;
}
