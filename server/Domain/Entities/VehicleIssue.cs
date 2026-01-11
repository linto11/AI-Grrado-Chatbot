namespace Domain.Entities;

public class VehicleIssue
{
    public int Id { get; set; }
    public string Symptom { get; set; } = string.Empty;
    public string AffectedSystem { get; set; } = string.Empty;
    public string Severity { get; set; } = string.Empty; // low/medium/high/critical
    public bool DrivesSafe { get; set; }
    public string Description { get; set; } = string.Empty;
    public string PossibleCauses { get; set; } = string.Empty;
    
    // Soft delete columns
    public bool IsDeleted { get; set; } = false;
    public DateTime? DeletedAt { get; set; }
    public string? DeletedBy { get; set; }
}
