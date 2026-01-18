namespace Application.Common.Models;

/// <summary>
/// Generic result wrapper for MediatR responses
/// </summary>
public class Result<T>
{
    public bool IsSuccess { get; set; }
    public T? Data { get; set; }
    public string? ErrorMessage { get; set; }
    public string? ErrorCode { get; set; }
    public List<string> Errors { get; set; } = new();
    public List<ValidationError> ValidationErrors { get; set; } = new();

    public static Result<T> Success(T data) => new()
    {
        IsSuccess = true,
        Data = data
    };

    public static Result<T> Failure(string errorMessage, string? errorCode = null) => new()
    {
        IsSuccess = false,
        ErrorMessage = errorMessage,
        ErrorCode = errorCode
    };

    public static Result<T> Failure(List<string> errors) => new()
    {
        IsSuccess = false,
        Errors = errors
    };

    public static Result<T> Failure(List<ValidationError> validationErrors) => new()
    {
        IsSuccess = false,
        ValidationErrors = validationErrors
    };
}

/// <summary>
/// Result wrapper without data (for operations that don't return data)
/// </summary>
public class Result
{
    public bool IsSuccess { get; set; }
    public string? ErrorMessage { get; set; }
    public string? ErrorCode { get; set; }
    public List<string> Errors { get; set; } = new();
    public List<ValidationError> ValidationErrors { get; set; } = new();

    public static Result Success() => new()
    {
        IsSuccess = true
    };

    public static Result Failure(string errorMessage, string? errorCode = null) => new()
    {
        IsSuccess = false,
        ErrorMessage = errorMessage,
        ErrorCode = errorCode
    };

    public static Result Failure(List<string> errors) => new()
    {
        IsSuccess = false,
        Errors = errors
    };

    public static Result Failure(List<ValidationError> validationErrors) => new()
    {
        IsSuccess = false,
        ValidationErrors = validationErrors
    };
}
