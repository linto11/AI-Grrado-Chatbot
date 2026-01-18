namespace Abstractions.DTOs.VehicleIssue;

public class CreateVehicleIssueRequest
{
    public int VehicleId { get; set; }
    public string IssueType { get; set; } = string.Empty;
    public string Severity { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public DateTime ReportedDate { get; set; }
}
