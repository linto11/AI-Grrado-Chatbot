namespace Abstractions.DTOs.DiagnosticRule;

public class DiagnosticRuleDto
{
    public int Id { get; set; }
    public string VehicleType { get; set; } = string.Empty;
    public string IssueType { get; set; } = string.Empty;
    public int MileageThreshold { get; set; }
    public string RecommendedAction { get; set; } = string.Empty;
    public string Severity { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
}
