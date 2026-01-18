using Domain.Abstractions;

namespace Domain.Entities;

public class Vehicle : IEntity
{
    public int Id { get; set; }
    public int UserId { get; set; }
    public string Brand { get; set; } = string.Empty;
    public string Model { get; set; } = string.Empty;
    public int Year { get; set; }
    public string VehicleType { get; set; } = string.Empty;
    public string FuelType { get; set; } = string.Empty; // petrol/diesel/hybrid/electric
    public string Color { get; set; } = string.Empty;
    public double MileageKm { get; set; }
    public string LicensePlate { get; set; } = string.Empty;
    public string City { get; set; } = string.Empty;
    
    // Audit columns
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
    
    // Soft delete columns
    public bool IsDeleted { get; set; } = false;
    public DateTime? DeletedAt { get; set; }
    public string? DeletedBy { get; set; }
    
    // Navigation properties
    public User? User { get; set; }
    public ICollection<ServiceHistory> ServiceHistories { get; set; } = new List<ServiceHistory>();
}
