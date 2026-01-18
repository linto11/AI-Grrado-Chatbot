namespace Application.Common.Configuration;

/// <summary>
/// Configuration model for error codes loaded from error-codes.json
/// </summary>
public class ErrorCodeConfiguration
{
    public List<ErrorCodeMapping> ErrorCodes { get; set; } = new();
}

public class ErrorCodeMapping
{
    public string Code { get; set; } = string.Empty;
    public string Guid { get; set; } = string.Empty;
    public List<string> UseCases { get; set; } = new();
}
