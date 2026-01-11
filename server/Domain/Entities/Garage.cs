namespace Domain.Entities;

public class Garage
{
    public int Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string City { get; set; } = string.Empty;
    public string Address { get; set; } = string.Empty;
    public string PhoneNumber { get; set; } = string.Empty;
    public string GarageType { get; set; } = string.Empty; // authorized/independent/specialist
    public bool EvSupported { get; set; }
    public double Rating { get; set; }
    public string OperatingHours { get; set; } = string.Empty;
    
    // Soft delete columns
    public bool IsDeleted { get; set; } = false;
    public DateTime? DeletedAt { get; set; }
    public string? DeletedBy { get; set; }
    
    // Navigation properties
    public ICollection<Service> Services { get; set; } = new List<Service>();
    public ICollection<ServiceHistory> ServiceHistories { get; set; } = new List<ServiceHistory>();
}
