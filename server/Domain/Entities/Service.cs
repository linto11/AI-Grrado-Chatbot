using Domain.Abstractions;

namespace Domain.Entities;

public class Service : IEntity
{
    public int Id { get; set; }
    public int GarageId { get; set; }
    public string ServiceName { get; set; } = string.Empty;
    public string Category { get; set; } = string.Empty;
    public decimal AvgCostAed { get; set; }
    public string SkillLevel { get; set; } = string.Empty; // beginner/intermediate/advanced
    public string Description { get; set; } = string.Empty;
    public int EstimatedDurationMinutes { get; set; }
    
    // Audit columns
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
    
    // Soft delete columns
    public bool IsDeleted { get; set; } = false;
    public DateTime? DeletedAt { get; set; }
    public string? DeletedBy { get; set; }
    
    // Navigation properties
    public Garage? Garage { get; set; }
    public ICollection<ServiceHistory> ServiceHistories { get; set; } = new List<ServiceHistory>();
}
