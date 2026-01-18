using Abstractions.Persistence;
using Abstractions.Services;
using Application.Common.Configuration;
using Domain.Entities;
using Microsoft.Extensions.Caching.Distributed;
using Microsoft.Extensions.Options;
using System.Text.Json;

namespace Infrastructure.Integration.Redis;

public class ErrorMessageService : IErrorMessageService
{
    private readonly IUnitOfWork _unitOfWork;
    private readonly IDistributedCache _cache;
    private readonly ErrorCodeConfiguration _errorCodeConfig;
    private const string CacheKeyPrefix = "ErrorMessage_";
    private readonly DistributedCacheEntryOptions _cacheOptions;
    private readonly Dictionary<string, Guid> _codeNameToGuid;

    public ErrorMessageService(
        IUnitOfWork unitOfWork, 
        IDistributedCache cache,
        IOptions<ErrorCodeConfiguration> errorCodeConfig)
    {
        _unitOfWork = unitOfWork;
        _cache = cache;
        _errorCodeConfig = errorCodeConfig.Value;
        _codeNameToGuid = _errorCodeConfig.ErrorCodes.ToDictionary(
            x => x.Code, 
            x => Guid.Parse(x.Guid)
        );
        _cacheOptions = new DistributedCacheEntryOptions
        {
            AbsoluteExpirationRelativeToNow = TimeSpan.FromHours(24),
            SlidingExpiration = TimeSpan.FromHours(6)
        };
    }

    private Guid GetGuidFromCodeName(string codeName)
    {
        if (_codeNameToGuid.TryGetValue(codeName, out var guid))
        {
            return guid;
        }
        throw new ArgumentException($"Unknown error code: {codeName}", nameof(codeName));
    }

    public async Task<string> GetMessageAsync(string codeName, string? localeCode = null)
    {
        var guid = GetGuidFromCodeName(codeName);
        var locale = localeCode ?? "en-US";
        var cacheKey = $"{CacheKeyPrefix}{guid}_{locale}";

        var cachedMessage = await _cache.GetStringAsync(cacheKey);
        if (cachedMessage != null)
        {
            return cachedMessage;
        }

        var messages = await _unitOfWork.ErrorMessages.FindAsync(
            m => m.Code == guid && m.LocaleCode == locale
        );

        var message = messages.FirstOrDefault()?.Message ?? codeName;

        await _cache.SetStringAsync(cacheKey, message, _cacheOptions);

        return message;
    }

    public async Task<string> GetMessageAsync(string codeName, string defaultMessage, string? localeCode = null)
    {
        var guid = GetGuidFromCodeName(codeName);
        var locale = localeCode ?? "en-US";
        var cacheKey = $"{CacheKeyPrefix}{guid}_{locale}";

        var cachedMessage = await _cache.GetStringAsync(cacheKey);
        if (cachedMessage != null)
        {
            return cachedMessage;
        }

        var messages = await _unitOfWork.ErrorMessages.FindAsync(
            m => m.Code == guid && m.LocaleCode == locale
        );

        var message = messages.FirstOrDefault()?.Message ?? defaultMessage;

        await _cache.SetStringAsync(cacheKey, message, _cacheOptions);

        return message;
    }

    public async Task<bool> ExistsAsync(string codeName)
    {
        try
        {
            var guid = GetGuidFromCodeName(codeName);
            var messages = await _unitOfWork.ErrorMessages.FindAsync(m => m.Code == guid);
            return messages.Any();
        }
        catch (ArgumentException)
        {
            return false;
        }
    }

    public async Task RefreshCacheAsync()
    {
        // Get all error messages from database
        var allMessages = await _unitOfWork.ErrorMessages.FindAsync(m => true);

        // Cache each message
        foreach (var errorMessage in allMessages)
        {
            var cacheKey = $"{CacheKeyPrefix}{errorMessage.Code}_{errorMessage.LocaleCode}";
            await _cache.SetStringAsync(cacheKey, errorMessage.Message, _cacheOptions);
        }
    }
}
