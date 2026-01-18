namespace Abstractions.Integration.Keycloak;

/// <summary>
/// User information extracted from JWT token
/// </summary>
public class UserTokenInfo
{
    public string? UserId { get; set; }
    public string? Username { get; set; }
    public string? Email { get; set; }
    public string? FullName { get; set; }
    public List<string> Roles { get; set; } = new();
    public DateTime IssuedAt { get; set; }
    public DateTime ExpiresAt { get; set; }
}
