using System.Security.Claims;

namespace Abstractions.Integration.Keycloak;

/// <summary>
/// Service for validating and parsing JWT tokens from Keycloak
/// </summary>
public interface IJwtTokenValidator
{
    /// <summary>
    /// Extract user information from JWT token
    /// </summary>
    Task<UserTokenInfo?> ValidateTokenAsync(string token);

    /// <summary>
    /// Get claims from token
    /// </summary>
    IEnumerable<Claim>? GetClaims(string token);
}
