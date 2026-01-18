namespace Abstractions.Integration.Keycloak;

/// <summary>
/// Service for communicating with Keycloak server
/// </summary>
public interface IKeycloakService
{
    /// <summary>
    /// Introspect token with Keycloak server
    /// </summary>
    Task<bool> IntrospectTokenAsync(string token);

    /// <summary>
    /// Get user info from Keycloak
    /// </summary>
    Task<KeycloakUserInfo?> GetUserInfoAsync(string token);

    /// <summary>
    /// Validate token signature with Keycloak public key
    /// </summary>
    Task<bool> ValidateTokenSignatureAsync(string token);
}
