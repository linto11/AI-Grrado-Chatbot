namespace Abstractions.DTOs.VehicleIssue;

public class UpdateVehicleIssueRequest
{
    public string IssueType { get; set; } = string.Empty;
    public string Severity { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public bool IsResolved { get; set; }
    public DateTime? ResolvedDate { get; set; }
}
