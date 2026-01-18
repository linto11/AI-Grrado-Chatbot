namespace Abstractions.DTOs.VehicleIssue;

public class VehicleIssueDto
{
    public int Id { get; set; }
    public int VehicleId { get; set; }
    public string IssueType { get; set; } = string.Empty;
    public string Severity { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public DateTime ReportedDate { get; set; }
    public bool IsResolved { get; set; }
    public DateTime? ResolvedDate { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
}
