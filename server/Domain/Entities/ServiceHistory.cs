using Domain.Abstractions;

namespace Domain.Entities;

public class ServiceHistory : IEntity
{
    public int Id { get; set; }
    public int VehicleId { get; set; }
    public int GarageId { get; set; }
    public int ServiceId { get; set; }
    public DateTime ServiceDate { get; set; }
    public double MileageKm { get; set; }
    public decimal CostAed { get; set; }
    public string Outcome { get; set; } = string.Empty; // resolved/partially_resolved/recurring
    public string Notes { get; set; } = string.Empty;
    public int TechnicianId { get; set; }
    
    // Audit columns
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
    
    // Soft delete columns
    public bool IsDeleted { get; set; } = false;
    public DateTime? DeletedAt { get; set; }
    public string? DeletedBy { get; set; }
    
    // Navigation properties
    public Vehicle? Vehicle { get; set; }
    public Garage? Garage { get; set; }
    public Service? Service { get; set; }
}
