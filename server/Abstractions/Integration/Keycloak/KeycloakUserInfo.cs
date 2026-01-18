namespace Abstractions.Integration.Keycloak;

/// <summary>
/// User information from Keycloak
/// </summary>
public class KeycloakUserInfo
{
    public string? Sub { get; set; }
    public string? PreferredUsername { get; set; }
    public string? Email { get; set; }
    public string? Name { get; set; }
    public string? GivenName { get; set; }
    public string? FamilyName { get; set; }
    public bool EmailVerified { get; set; }
}
