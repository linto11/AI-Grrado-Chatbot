using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using Microsoft.Extensions.Logging;
using Abstractions.Integration.Keycloak;

namespace Infrastructure.Integration.Keycloak;

/// <summary>
/// Implementation of JWT token validator
/// </summary>
public class JwtTokenValidator : IJwtTokenValidator
{
    private readonly ILogger<JwtTokenValidator> _logger;
    private readonly IKeycloakService _keycloakService;

    public JwtTokenValidator(ILogger<JwtTokenValidator> logger, IKeycloakService keycloakService)
    {
        _logger = logger;
        _keycloakService = keycloakService;
    }

    public async Task<UserTokenInfo?> ValidateTokenAsync(string token)
    {
        try
        {
            // First, validate with Keycloak introspection endpoint
            var isValid = await _keycloakService.IntrospectTokenAsync(token);
            if (!isValid)
            {
                _logger.LogWarning("Token validation failed at Keycloak introspection");
                return null;
            }

            var handler = new JwtSecurityTokenHandler();
            
            // Try to read the token without validation first
            if (!handler.CanReadToken(token))
            {
                _logger.LogWarning("Invalid token format");
                return null;
            }

            var jwtToken = handler.ReadJwtToken(token);
            
            // Check expiration
            var isExpired = jwtToken.ValidTo < DateTime.UtcNow;
            if (isExpired)
            {
                _logger.LogWarning("Token has expired");
                return null;
            }

            // Extract claims
            var userInfo = new UserTokenInfo
            {
                UserId = jwtToken.Claims.FirstOrDefault(c => c.Type == "sub")?.Value,
                Username = jwtToken.Claims.FirstOrDefault(c => c.Type == "preferred_username")?.Value ?? 
                          jwtToken.Claims.FirstOrDefault(c => c.Type == "name")?.Value,
                Email = jwtToken.Claims.FirstOrDefault(c => c.Type == "email")?.Value,
                FullName = jwtToken.Claims.FirstOrDefault(c => c.Type == "name")?.Value,
                IssuedAt = jwtToken.ValidFrom,
                ExpiresAt = jwtToken.ValidTo
            };

            // Extract roles from realm_access and/or resource_access
            var roles = ExtractRoles(jwtToken);
            userInfo.Roles = roles;

            _logger.LogInformation("Token validated successfully for user {UserId}", userInfo.UserId);
            return userInfo;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error validating token");
            return null;
        }
    }

    public IEnumerable<Claim>? GetClaims(string token)
    {
        try
        {
            var handler = new JwtSecurityTokenHandler();
            
            if (!handler.CanReadToken(token))
                return null;

            var jwtToken = handler.ReadJwtToken(token);
            return jwtToken.Claims;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error extracting claims from token");
            return null;
        }
    }

    private List<string> ExtractRoles(JwtSecurityToken jwtToken)
    {
        var roles = new List<string>();

        // Try to get roles from realm_access
        var realmAccessClaim = jwtToken.Claims.FirstOrDefault(c => c.Type == "realm_access");
        if (realmAccessClaim != null)
        {
            // realm_access is typically a JSON structure, we'd need to parse it
            // For now, we'll look for individual role claims
        }

        // Get roles from standard role claim
        var roleClaims = jwtToken.Claims.Where(c => c.Type == "role" || c.Type == ClaimTypes.Role);
        foreach (var claim in roleClaims)
        {
            roles.Add(claim.Value);
        }

        // Get roles from resource_access
        var resourceAccessClaim = jwtToken.Claims.FirstOrDefault(c => c.Type == "resource_access");
        if (resourceAccessClaim != null)
        {
            // Similar to realm_access, this would need JSON parsing
        }

        return roles;
    }
}
