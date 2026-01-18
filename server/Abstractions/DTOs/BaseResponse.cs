namespace Abstractions.DTOs;

/// <summary>
/// Base DTO for all response objects
/// </summary>
public abstract class BaseResponse
{
    public int Id { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
    public bool IsDeleted { get; set; }
}
