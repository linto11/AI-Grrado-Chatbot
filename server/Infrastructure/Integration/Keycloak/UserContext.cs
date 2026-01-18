using System.Security.Claims;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Abstractions.Integration.Keycloak;

namespace Infrastructure.Integration.Keycloak;

/// <summary>
/// Implementation of user context service
/// </summary>
public class UserContext : IUserContext
{
    private readonly IHttpContextAccessor _httpContextAccessor;
    private readonly ILogger<UserContext> _logger;

    public UserContext(IHttpContextAccessor httpContextAccessor, ILogger<UserContext> logger)
    {
        _httpContextAccessor = httpContextAccessor;
        _logger = logger;
    }

    public string? GetUserId()
    {
        return GetClaimValue("sub") ?? GetClaimValue(ClaimTypes.NameIdentifier);
    }

    public string? GetUsername()
    {
        return GetClaimValue("preferred_username") ?? GetClaimValue(ClaimTypes.Name);
    }

    public string? GetEmail()
    {
        return GetClaimValue(ClaimTypes.Email);
    }

    public bool HasRole(string role)
    {
        var user = _httpContextAccessor.HttpContext?.User;
        
        if (user == null)
            return false;

        // Check both role claim types
        return user.IsInRole(role) || user.HasClaim(ClaimTypes.Role, role);
    }

    public IEnumerable<string> GetRoles()
    {
        var user = _httpContextAccessor.HttpContext?.User;
        
        if (user == null)
            return Enumerable.Empty<string>();

        // Get roles from claims
        return user.FindAll(ClaimTypes.Role).Select(c => c.Value)
            .Concat(user.FindAll("role").Select(c => c.Value))
            .Distinct();
    }

    public bool IsAuthenticated()
    {
        return _httpContextAccessor.HttpContext?.User?.Identity?.IsAuthenticated ?? false;
    }

    public string? GetClaimValue(string claimType)
    {
        var claim = _httpContextAccessor.HttpContext?.User?.FindFirst(claimType);
        return claim?.Value;
    }
}
