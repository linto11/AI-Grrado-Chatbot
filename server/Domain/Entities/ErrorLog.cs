using Domain.Abstractions;

namespace Domain.Entities;

public class ErrorLog : IEntity
{
    public int Id { get; set; }
    public required string ErrorCode { get; set; }
    public required string ErrorMessage { get; set; }
    public required string StackTrace { get; set; }
    public string? InnerException { get; set; }
    public required string Source { get; set; }
    public required string Severity { get; set; }
    public int? UserId { get; set; }
    public string? RequestId { get; set; }
    public string? IpAddress { get; set; }
    public string? UserAgent { get; set; }
    public string? Metadata { get; set; }
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public DateTime UpdatedAt { get; set; } = DateTime.UtcNow;
    public bool IsDeleted { get; set; }
    public DateTime? DeletedAt { get; set; }
    public string? DeletedBy { get; set; }
}
