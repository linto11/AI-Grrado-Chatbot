using Domain.Abstractions;

namespace Domain.Entities;

/// <summary>
/// Stores validation and error messages with codes for easy maintenance
/// </summary>
public class ErrorMessage : IEntity
{
    public int Id { get; set; }
    public Guid Code { get; set; }
    public string Message { get; set; } = string.Empty;
    public string Category { get; set; } = string.Empty; // Validation, Business, System
    public string? UseCase { get; set; } // Links error to specific use case (e.g., CreateUser, UpdateVehicle)
    public string? LocaleCode { get; set; } = "en-US"; // For future i18n support
    public bool IsDeleted { get; set; }
    public DateTime? DeletedAt { get; set; }
    public string? DeletedBy { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
}
