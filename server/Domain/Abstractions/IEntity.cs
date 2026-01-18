namespace Domain.Abstractions;

/// <summary>
/// Base interface for all domain entities with soft-delete support
/// </summary>
public interface IEntity
{
    int Id { get; set; }
    bool IsDeleted { get; set; }
    DateTime? DeletedAt { get; set; }
    string? DeletedBy { get; set; }
    DateTime CreatedAt { get; set; }
    DateTime UpdatedAt { get; set; }
}
