using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Abstractions.Integration.Keycloak;

namespace Infrastructure.Integration.Keycloak;

/// <summary>
/// Implementation of Keycloak service
/// </summary>
public class KeycloakService : IKeycloakService
{
    private readonly HttpClient _httpClient;
    private readonly IConfiguration _configuration;
    private readonly ILogger<KeycloakService> _logger;
    private readonly string _keycloakUrl;
    private readonly string _realm;
    private readonly string _clientId;
    private readonly string _clientSecret;

    public KeycloakService(
        HttpClient httpClient,
        IConfiguration configuration,
        ILogger<KeycloakService> logger)
    {
        _httpClient = httpClient;
        _configuration = configuration;
        _logger = logger;

        // Read Keycloak configuration from appsettings
        _keycloakUrl = configuration["Keycloak:Url"] ?? "http://localhost:8080";
        _realm = configuration["Keycloak:Realm"] ?? "vehicle-service";
        _clientId = configuration["Keycloak:ClientId"] ?? "vehicle-service-api";
        _clientSecret = configuration["Keycloak:ClientSecret"] ?? "";

        _logger.LogInformation("Keycloak configured: {Url} / {Realm}", _keycloakUrl, _realm);
    }

    public async Task<bool> IntrospectTokenAsync(string token)
    {
        try
        {
            var url = $"{_keycloakUrl}/realms/{_realm}/protocol/openid-connect/token/introspect";

            // Prepare introspection request
            var content = new FormUrlEncodedContent(new[]
            {
                new KeyValuePair<string, string>("token", token),
                new KeyValuePair<string, string>("client_id", _clientId),
                new KeyValuePair<string, string>("client_secret", _clientSecret)
            });

            // Add Basic auth header
            var credentials = Convert.ToBase64String(Encoding.ASCII.GetBytes($"{_clientId}:{_clientSecret}"));
            _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", credentials);

            var response = await _httpClient.PostAsync(url, content);

            if (!response.IsSuccessStatusCode)
            {
                _logger.LogWarning("Keycloak introspection failed: {Status}", response.StatusCode);
                return false;
            }

            var jsonContent = await response.Content.ReadAsStringAsync();
            using var doc = JsonDocument.Parse(jsonContent);
            var active = doc.RootElement.GetProperty("active").GetBoolean();

            return active;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error introspecting token with Keycloak");
            return false;
        }
    }

    public async Task<KeycloakUserInfo?> GetUserInfoAsync(string token)
    {
        try
        {
            var url = $"{_keycloakUrl}/realms/{_realm}/protocol/openid-connect/userinfo";

            var request = new HttpRequestMessage(HttpMethod.Get, url);
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

            var response = await _httpClient.SendAsync(request);

            if (!response.IsSuccessStatusCode)
            {
                _logger.LogWarning("Failed to get user info from Keycloak: {Status}", response.StatusCode);
                return null;
            }

            var jsonContent = await response.Content.ReadAsStringAsync();
            var userInfo = JsonSerializer.Deserialize<KeycloakUserInfo>(jsonContent);

            return userInfo;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting user info from Keycloak");
            return null;
        }
    }

    public async Task<bool> ValidateTokenSignatureAsync(string token)
    {
        try
        {
            // Get JWKS (JSON Web Key Set) from Keycloak
            var url = $"{_keycloakUrl}/realms/{_realm}/protocol/openid-connect/certs";
            var response = await _httpClient.GetAsync(url);

            if (!response.IsSuccessStatusCode)
            {
                _logger.LogWarning("Failed to get JWKS from Keycloak: {Status}", response.StatusCode);
                return false;
            }

            // In a real implementation, you would:
            // 1. Parse the JWKS
            // 2. Find the key matching the token's kid (key ID)
            // 3. Validate the token signature using that key
            // For now, we return true if we can fetch the JWKS
            return true;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error validating token signature with Keycloak");
            return false;
        }
    }
}
