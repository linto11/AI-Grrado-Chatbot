namespace Abstractions.DTOs.Service;

public class CreateServiceRequest
{
    public int GarageId { get; set; }
    public string ServiceName { get; set; } = string.Empty;
    public string Category { get; set; } = string.Empty;
    public decimal Price { get; set; }
    public int DurationMinutes { get; set; }
    public string Description { get; set; } = string.Empty;
}
