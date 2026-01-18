namespace Abstractions.Integration.Keycloak;

/// <summary>
/// Service to access current user context from HTTP requests
/// </summary>
public interface IUserContext
{
    /// <summary>
    /// Get current user ID from claims
    /// </summary>
    string? GetUserId();

    /// <summary>
    /// Get current username
    /// </summary>
    string? GetUsername();

    /// <summary>
    /// Get current user email
    /// </summary>
    string? GetEmail();

    /// <summary>
    /// Check if user has specific role
    /// </summary>
    bool HasRole(string role);

    /// <summary>
    /// Get all user roles
    /// </summary>
    IEnumerable<string> GetRoles();

    /// <summary>
    /// Check if user is authenticated
    /// </summary>
    bool IsAuthenticated();

    /// <summary>
    /// Get specific claim value
    /// </summary>
    string? GetClaimValue(string claimType);
}
