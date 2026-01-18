namespace Application.Common.Models;

/// <summary>
/// Validation error with code and message
/// </summary>
public class ValidationError
{
    public string Code { get; set; } = string.Empty;
    public string Message { get; set; } = string.Empty;
    public string? PropertyName { get; set; }

    public ValidationError(string code, string message, string? propertyName = null)
    {
        Code = code;
        Message = message;
        PropertyName = propertyName;
    }
}
