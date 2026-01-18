using Domain.Abstractions;

namespace Domain.Entities;

public class ActivityLog : IEntity
{
    public int Id { get; set; }
    public int? UserId { get; set; }
    public required string ActivityType { get; set; }
    public required string Description { get; set; }
    public string? ResourceType { get; set; }
    public int? ResourceId { get; set; }
    public string? IpAddress { get; set; }
    public string? UserAgent { get; set; }
    public string? Metadata { get; set; }
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public DateTime UpdatedAt { get; set; } = DateTime.UtcNow;
    public bool IsDeleted { get; set; }
    public DateTime? DeletedAt { get; set; }
    public string? DeletedBy { get; set; }
}
