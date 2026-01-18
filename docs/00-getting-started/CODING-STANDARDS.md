# Coding Standards & Best Practices
## Vehicle Service Portal - Universal Development Rulebook

**Document Version:** 1.0  
**Last Updated:** January 18, 2026  
**Applies To:** All developers, AI assistants (GitHub Copilot, ChatGPT, etc.)  
**Status:** ✅ **MANDATORY** - All code must follow these standards

---

## 🎯 Core Principle: NO HARD-CODING

### Zero Tolerance Policy

**❌ NEVER write literal values in code:**
```csharp
// BAD - Hard-coded
if (user.Role == "SuperAdmin") { }
var timeout = 30000;
var apiUrl = "https://api.example.com";
```

**✅ ALWAYS use constants:**
```csharp
// GOOD - Use constants
if (user.Role == RoleConstants.SUPER_ADMIN) { }
var timeout = TimeoutConstants.API_REQUEST_TIMEOUT_MS;
var apiUrl = ApiEndpoints.BASE_URL;
```

**Rule:** If you type a literal value that could change, STOP and create a constant.

---

## 📂 Constants Organization

### Backend (.NET) Structure

```
server/Application/Common/Constants/
├── ApiEndpoints.cs           # API route templates
├── AuthConstants.cs          # Keycloak, OAuth, JWT
├── CacheKeys.cs             # Redis cache patterns
├── ClientConstants.cs        # OAuth client IDs
├── ErrorCodes.cs            # Error code names ✅
├── FileUploadLimits.cs      # File restrictions
├── GroupConstants.cs        # Group types
├── PermissionConstants.cs   # Permission names
├── RoleConstants.cs         # Role names
├── TimeoutConstants.cs      # Timeout durations
└── ValidationConstants.cs   # Validation rules
```

### Frontend (Angular) Structure

```
client/src/app/core/constants/
├── api-endpoints.constants.ts
├── auth.constants.ts
├── error-codes.constants.ts
├── file-upload.constants.ts
├── permission.constants.ts
├── role.constants.ts
├── timeout.constants.ts
└── validation.constants.ts
```

---

## 🔤 Naming Conventions

### All Platforms

**Constants:** `SCREAMING_SNAKE_CASE`
```csharp
public const string SUPER_ADMIN = "super-admin";
public const int MAX_FILE_SIZE_BYTES = 5_242_880;
```

```typescript
export const SUPER_ADMIN = 'super-admin';
export const MAX_FILE_SIZE_BYTES = 5_242_880;
```

### .NET Specific

- **Classes:** PascalCase (`UserService`, `VehicleRepository`)
- **Methods:** PascalCase (`GetUserByIdAsync`, `IsValidEmail`)
- **Private fields:** _camelCase (`_unitOfWork`, `_logger`)
- **Parameters:** camelCase (`userId`, `emailAddress`)

### TypeScript/JavaScript Specific

- **Files:** kebab-case (`user-list.component.ts`, `auth.service.ts`)
- **Classes:** PascalCase (`UserListComponent`, `AuthService`)
- **Variables/Functions:** camelCase (`userName`, `getUserById`)

---

## 📋 Required Constants Files

### Backend: RoleConstants.cs

```csharp
namespace Application.Common.Constants;

/// <summary>
/// Keycloak realm roles - MUST match Keycloak configuration
/// </summary>
public static class RoleConstants
{
    public const string SUPER_ADMIN = "super-admin";
    public const string APP_ADMIN = "app-admin";
    public const string GARAGE_ADMIN = "garage-admin";
    public const string CUSTOMER = "customer";
    
    // Role hierarchy levels
    public const int SUPER_ADMIN_LEVEL = 1;
    public const int APP_ADMIN_LEVEL = 2;
    public const int GARAGE_ADMIN_LEVEL = 3;
    public const int CUSTOMER_LEVEL = 4;
}
```

### Backend: PermissionConstants.cs

```csharp
namespace Application.Common.Constants;

/// <summary>
/// Permission names - Format: resource.action
/// </summary>
public static class PermissionConstants
{
    // System permissions
    public const string SYSTEM_CONFIG = "system.config";
    public const string SYSTEM_IMPERSONATE = "system.impersonate";
    
    // User management
    public const string USER_CREATE = "user.create";
    public const string USER_READ = "user.read";
    public const string USER_UPDATE = "user.update";
    public const string USER_DELETE = "user.delete";
    
    // CMS permissions
    public const string CMS_PAGE_CREATE = "cms.page.create";
    public const string CMS_PAGE_EDIT = "cms.page.edit";
    public const string CMS_PAGE_PUBLISH = "cms.page.publish";
    
    // AI Platform
    public const string AI_MODEL_TRAIN = "ai.model.train";
    public const string AI_CHATBOT_CONFIG = "ai.chatbot.config";
    
    // Garage management
    public const string GARAGE_CREATE = "garage.create";
    public const string GARAGE_APPROVE = "garage.approve";
    
    // Booking
    public const string BOOKING_CREATE = "booking.create";
    public const string BOOKING_MANAGE = "booking.manage";
}
```

### Backend: AuthConstants.cs

```csharp
namespace Application.Common.Constants;

public static class AuthConstants
{
    public static class Keycloak
    {
        public const string REALM_NAME = "VehicleServicePortal";
        public const string AUTHORITY_CONFIG_KEY = "Keycloak:Authority";
        public const string AUDIENCE_CONFIG_KEY = "Keycloak:Audience";
    }
    
    public static class Clients
    {
        public const string WEB_PORTAL = "web-portal";
        public const string MOBILE_CUSTOMER = "mobile-customer-app";
        public const string MOBILE_ADMIN = "mobile-admin-app";
        public const string BACKEND_SERVICE = "backend-api-service";
    }
    
    public static class Scopes
    {
        public const string OPENID = "openid";
        public const string PROFILE = "profile";
        public const string EMAIL = "email";
        public const string GROUPS = "groups";
        public const string ROLES = "roles";
    }
    
    public static class Claims
    {
        public const string SUBJECT = "sub";
        public const string EMAIL = "email";
        public const string NAME = "name";
        public const string GROUPS = "groups";
        public const string ROLES = "roles";
    }
}
```

### Frontend: role.constants.ts

```typescript
/**
 * Role constants - MUST match backend RoleConstants.cs
 */
export const ROLE_CONSTANTS = {
  SUPER_ADMIN: 'super-admin',
  APP_ADMIN: 'app-admin',
  GARAGE_ADMIN: 'garage-admin',
  CUSTOMER: 'customer',
} as const;

export type RoleType = typeof ROLE_CONSTANTS[keyof typeof ROLE_CONSTANTS];

export const ROLE_LEVELS = {
  [ROLE_CONSTANTS.SUPER_ADMIN]: 1,
  [ROLE_CONSTANTS.APP_ADMIN]: 2,
  [ROLE_CONSTANTS.GARAGE_ADMIN]: 3,
  [ROLE_CONSTANTS.CUSTOMER]: 4,
} as const;
```

---

## ✅ Synchronization Requirements

**MUST match between Backend ↔ Frontend:**
- ✅ Error codes (exact string match)
- ✅ Role names (exact string match)
- ✅ Permission names (exact string match)
- ✅ API endpoints (exact path match)
- ✅ Validation rules (same limits)

**Verification:** Run sync check before every commit

---

## 🤖 AI Assistant Instructions

**When GitHub Copilot/ChatGPT generates code:**

1. **Check existing constants first**
   - Search `Application/Common/Constants/` (.NET)
   - Search `src/app/core/constants/` (Angular)

2. **Create new constant if not found**
   - Add to appropriate constants file
   - Use `SCREAMING_SNAKE_CASE`
   - Add XML comment (C#) or JSDoc (TS)

3. **Never write literals**
   - Exception: 0, 1, -1 in math operations
   - Exception: empty string `""` for default values

4. **Follow existing patterns**
   - Match code style in project
   - Use same folder structure
   - Import constants consistently

---

## 📝 Code Examples

### Example 1: Controller with Constants

❌ **BAD:**
```csharp
[HttpGet("users/{id}")]
[Authorize(Roles = "super-admin,app-admin")]
public async Task<IActionResult> GetUser(Guid id)
{
    if (id == Guid.Empty)
        return BadRequest(new { error = "USER_ID_INVALID" });
    
    return Ok(await _service.GetByIdAsync(id));
}
```

✅ **GOOD:**
```csharp
[HttpGet(ApiEndpoints.Users.GET_BY_ID)]
[Authorize(Policy = AuthorizationPolicies.ADMIN_OR_HIGHER)]
public async Task<IActionResult> GetUser(Guid id)
{
    if (id == Guid.Empty)
        return BadRequest(new { error = ErrorCodes.USER_ID_INVALID });
    
    return Ok(await _service.GetByIdAsync(id));
}
```

### Example 2: Frontend API Call

❌ **BAD:**
```typescript
this.http.get('http://localhost:5000/api/v1/users', {
  params: { pageSize: 10 }
}).subscribe(...);
```

✅ **GOOD:**
```typescript
import { API_ENDPOINTS } from '@app/core/constants/api-endpoints.constants';
import { PAGINATION } from '@app/core/constants/validation.constants';

this.http.get(API_ENDPOINTS.USERS.GET_ALL, {
  params: { pageSize: PAGINATION.DEFAULT_PAGE_SIZE.toString() }
}).subscribe(...);
```

---

## ⚠️ Code Review Checklist

**Reject PRs with:**
- ❌ Hard-coded strings/numbers
- ❌ Magic values without constants
- ❌ Mismatched backend-frontend constants
- ❌ Missing documentation on new constants

**Approve PRs with:**
- ✅ All literals in constants files
- ✅ Proper naming conventions
- ✅ Synchronized constants across layers
- ✅ Comments explaining complex values

---

## 📏 Additional Standards

### File Organization

**Backend:**
- One entity per file
- Organize by feature (Users/, Vehicles/, etc.)
- Keep constants separate from logic

**Frontend:**
- One component per file
- Use feature modules
- Shared components in shared/

### Logging

```csharp
// Use structured logging with constants
_logger.LogInformation(
    "User {UserId} performed {Action}",
    userId,
    LoggingConstants.ACTION_USER_LOGIN);
```

### Error Handling

```csharp
// Use Result pattern with error codes
return Result<UserDto>.Failure(ErrorCodes.USER_NOT_FOUND);
```

---

## 🎯 Enforcement

This document is **MANDATORY** for:
- All human developers
- All AI code generation tools
- All code reviews
- All automated checks

**Violations = PR Rejection**

---

**Last Updated:** January 18, 2026  
**Next Review:** Monthly or as needed  
**Maintained By:** Development Team
