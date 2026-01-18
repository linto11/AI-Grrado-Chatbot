namespace Abstractions.DTOs.ServiceHistory;

public class UpdateServiceHistoryRequest
{
    public DateTime ServiceDate { get; set; }
    public double MileageAtService { get; set; }
    public decimal Cost { get; set; }
    public string Notes { get; set; } = string.Empty;
    public string Status { get; set; } = string.Empty;
}
