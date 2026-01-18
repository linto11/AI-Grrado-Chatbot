namespace Abstractions.DTOs.ServiceHistory;

public class CreateServiceHistoryRequest
{
    public int VehicleId { get; set; }
    public int GarageId { get; set; }
    public int? ServiceId { get; set; }
    public DateTime ServiceDate { get; set; }
    public double MileageAtService { get; set; }
    public decimal Cost { get; set; }
    public string Notes { get; set; } = string.Empty;
    public string Status { get; set; } = string.Empty;
}
