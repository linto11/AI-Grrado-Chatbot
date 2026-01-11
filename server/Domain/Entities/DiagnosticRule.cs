namespace Domain.Entities;

public class DiagnosticRule
{
    public int Id { get; set; }
    public string Conditions { get; set; } = string.Empty;
    public string LogicType { get; set; } = string.Empty; // deterministic/probabilistic
    public double Confidence { get; set; }
    public string Conclusion { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public int Priority { get; set; }
    
    // Soft delete columns
    public bool IsDeleted { get; set; } = false;
    public DateTime? DeletedAt { get; set; }
    public string? DeletedBy { get; set; }
}
