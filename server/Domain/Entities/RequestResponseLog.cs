using Domain.Abstractions;

namespace Domain.Entities;

public class RequestResponseLog : IEntity
{
    public int Id { get; set; }
    public required string RequestId { get; set; }
    public required string HttpMethod { get; set; }
    public required string Endpoint { get; set; }
    public string? QueryString { get; set; }
    public string? RequestBody { get; set; }
    public int ResponseStatusCode { get; set; }
    public string? ResponseBody { get; set; }
    public long ResponseTimeMs { get; set; }
    public int? UserId { get; set; }
    public string? IpAddress { get; set; }
    public string? UserAgent { get; set; }
    public string? Metadata { get; set; }
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public DateTime UpdatedAt { get; set; } = DateTime.UtcNow;
    public bool IsDeleted { get; set; }
    public DateTime? DeletedAt { get; set; }
    public string? DeletedBy { get; set; }
}
