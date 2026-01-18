# Database-Driven Validation Error Messages

## Overview

The application uses a database-driven error message system that allows easy modification of validation messages without code changes. This provides flexibility for business users to update messages, supports internationalization, and improves maintainability.

## Architecture

### Components

1. **ErrorMessage Entity** (`Domain/Entities/ErrorMessage.cs`)
   - Stores error codes and messages in database
   - Supports localization with LocaleCode (default: en-US)
   - Categorized (Validation, Business, System, Security)
   - Supports soft-delete pattern

2. **Error Codes Constants** (`Application/Common/Constants/ErrorCodes.cs`)
   - Centralized error code definitions
   - Format: `{CATEGORY}_{NUMBER}` (e.g., USER_001, PAGE_001)
   - Organized by domain (User, Vehicle, Garage, Service, etc.)

3. **IErrorMessageService** (`Abstractions/Services/IErrorMessageService.cs`)
   - Interface for retrieving error messages
   - Methods: GetMessageAsync, ExistsAsync

4. **ErrorMessageService** (`Infrastructure/Services/ErrorMessageService.cs`)
   - Implementation with IMemoryCache (24-hour expiration)
   - Queries database via UnitOfWork
   - Fallback to default message if not found

5. **ValidationError Model** (`Application/Common/Models/ValidationError.cs`)
   - Structured error response
   - Properties: Code, Message, PropertyName

6. **Enhanced Result<T>** (`Application/Common/Models/Result.cs`)
   - Added ErrorCode property
   - Added ValidationErrors list
   - New Failure overloads for error codes

## Usage in Validators

### Pattern

```csharp
public class CreateUserValidator : AbstractValidator<CreateUserRequest>
{
    private readonly IErrorMessageService _errorMessageService;

    public CreateUserValidator(IErrorMessageService errorMessageService)
    {
        _errorMessageService = errorMessageService;

        RuleFor(x => x.Name)
            .NotEmpty()
            .WithErrorCode(ErrorCodes.USER_NAME_REQUIRED)
            .WithMessage(GetMessage(ErrorCodes.USER_NAME_REQUIRED, "Name is required"))
            .MaximumLength(100)
            .WithErrorCode(ErrorCodes.USER_NAME_MAX_LENGTH)
            .WithMessage(GetMessage(ErrorCodes.USER_NAME_MAX_LENGTH, "Name must not exceed 100 characters"));
    }

    private string GetMessage(string code, string defaultMessage)
    {
        return _errorMessageService.GetMessageAsync(code, defaultMessage).GetAwaiter().GetResult();
    }
}
```

### Benefits

- **Maintainability**: Change messages in database without redeployment
- **Consistency**: Error codes remain constant across versions
- **Internationalization**: Support multiple locales (en-US, ar-AE, etc.)
- **Performance**: Memory caching prevents repeated database queries
- **API Integration**: Clients can use error codes for conditional logic

## Error Code Categories

### User Validation (USER_001-015)
- USER_001: Name required
- USER_002: Name max length
- USER_003: Email required
- USER_004: Email format
- USER_005: Email max length
- USER_006: Phone required
- USER_007: Phone max length
- USER_008: City required
- USER_009: City max length
- USER_010: Family type required
- USER_011: Family type max length
- USER_012: Experience required
- USER_013: Experience max length
- USER_014: Invalid user ID
- USER_015: User not found (Business)

### Pagination (PAGE_001-003)
- PAGE_001: Page number > 0
- PAGE_002: Page size > 0
- PAGE_003: Page size ≤ 100

### Vehicle (VEHICLE_001-004)
- VEHICLE_001: Brand required
- VEHICLE_002: Model required
- VEHICLE_003: Invalid year
- VEHICLE_004: Not found (Business)

### Garage (GARAGE_001-003)
- GARAGE_001: Name required
- GARAGE_002: City required
- GARAGE_003: Not found (Business)

### Service (SERVICE_001-003)
- SERVICE_001: Name required
- SERVICE_002: Invalid price
- SERVICE_003: Not found (Business)

### Generic (GEN_001-004)
- GEN_001: Operation failed (System)
- GEN_002: Validation failed
- GEN_003: Unauthorized (Security)
- GEN_004: Forbidden (Security)

## Database Schema

```sql
CREATE TABLE "ErrorMessages" (
    "Id" SERIAL PRIMARY KEY,
    "Code" VARCHAR(50) NOT NULL,
    "Message" TEXT NOT NULL,
    "Category" VARCHAR(50) NOT NULL,
    "LocaleCode" VARCHAR(10) DEFAULT 'en-US',
    "IsDeleted" BOOLEAN DEFAULT FALSE,
    "DeletedAt" TIMESTAMP,
    "DeletedBy" VARCHAR(255),
    "CreatedAt" TIMESTAMP NOT NULL DEFAULT NOW(),
    "UpdatedAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE UNIQUE INDEX idx_errormessages_code ON "ErrorMessages"("Code");
CREATE INDEX idx_errormessages_locale ON "ErrorMessages"("LocaleCode");
CREATE INDEX idx_errormessages_category ON "ErrorMessages"("Category");
CREATE INDEX idx_errormessages_code_locale ON "ErrorMessages"("Code", "LocaleCode");
```

## Seeding Initial Messages

Seed data is located in `server/API/liquibase/changelogs/error-messages-seed.sql`.

To apply:
```bash
cd server
dotnet ef migrations add AddErrorMessagesTable
dotnet ef database update
```

Or use Liquibase:
```xml
<changeSet id="seed-error-messages" author="system">
    <sqlFile path="changelogs/error-messages-seed.sql"/>
</changeSet>
```

## Dependency Injection

Registered in `Infrastructure/DependencyInjection.cs`:

```csharp
// Register Error Message Service with Memory Cache
services.AddMemoryCache();
services.AddScoped<IErrorMessageService, ErrorMessageService>();
```

## Cache Strategy

- **Key Format**: `ErrorMessage_{code}_{locale}` (e.g., `ErrorMessage_USER_001_en-US`)
- **Expiration**: 24 hours (sliding)
- **Cache Miss**: Query database and cache result
- **Fallback**: Use default message if not found in DB

## API Response Format

### Success
```json
{
  "isSuccess": true,
  "data": { ... },
  "errorMessage": null,
  "errorCode": null,
  "validationErrors": []
}
```

### Validation Failure
```json
{
  "isSuccess": false,
  "data": null,
  "errorMessage": "Validation failed",
  "errorCode": "GEN_002",
  "validationErrors": [
    {
      "code": "USER_001",
      "message": "Name is required",
      "propertyName": "Name"
    },
    {
      "code": "USER_004",
      "message": "Invalid email format",
      "propertyName": "Email"
    }
  ]
}
```

### Business Failure
```json
{
  "isSuccess": false,
  "data": null,
  "errorMessage": "User not found",
  "errorCode": "USER_015",
  "validationErrors": []
}
```

## Localization Support

To add Arabic support:

```sql
INSERT INTO "ErrorMessages" ("Code", "Message", "Category", "LocaleCode", "CreatedAt", "UpdatedAt")
VALUES 
('USER_001', 'الاسم مطلوب', 'Validation', 'ar-AE', NOW(), NOW()),
('USER_003', 'البريد الإلكتروني مطلوب', 'Validation', 'ar-AE', NOW(), NOW());
```

Usage:
```csharp
var message = await _errorMessageService.GetMessageAsync("USER_001", "ar-AE");
```

## Adding New Error Codes

1. **Add constant** in `ErrorCodes.cs`:
```csharp
public const string VEHICLE_LICENSE_INVALID = "VEHICLE_005";
```

2. **Seed message** in database:
```sql
INSERT INTO "ErrorMessages" ("Code", "Message", "Category", "LocaleCode", "CreatedAt", "UpdatedAt")
VALUES ('VEHICLE_005', 'Invalid license plate format', 'Validation', 'en-US', NOW(), NOW());
```

3. **Use in validator**:
```csharp
RuleFor(x => x.LicensePlate)
    .Matches(@"^[A-Z]{2}-\d{5}$")
    .WithErrorCode(ErrorCodes.VEHICLE_LICENSE_INVALID)
    .WithMessage(GetMessage(ErrorCodes.VEHICLE_LICENSE_INVALID, "Invalid license plate format"));
```

## Benefits

✅ **No Code Changes**: Update messages in database without redeployment  
✅ **Consistent API**: Error codes remain stable across versions  
✅ **Performance**: Memory caching prevents database overhead  
✅ **Internationalization**: Support multiple languages easily  
✅ **Testability**: Easy to mock IErrorMessageService in tests  
✅ **Maintainability**: Centralized error code management  
✅ **Client-Friendly**: Structured error responses with codes  

## Implementation Status

- ✅ ErrorMessage entity created
- ✅ ErrorCodes constants (30+ codes)
- ✅ IErrorMessageService interface
- ✅ ErrorMessageService with caching
- ✅ ValidationError model
- ✅ Result<T> enhanced with error codes
- ✅ All 5 User validators updated
- ✅ UnitOfWork.ErrorMessages repository
- ✅ DbContext.ErrorMessages DbSet
- ✅ DI registration (IMemoryCache + IErrorMessageService)
- ✅ Build verification passed
- ⏳ Database migration pending
- ⏳ Seed data application pending
- ⏳ Remaining 7 entities pending (Vehicle, Garage, Service, etc.)

## Next Steps

1. Create EF Core migration for ErrorMessages table
2. Apply migration and seed initial data
3. Implement remaining entities with same pattern
4. Add API endpoints to manage error messages (admin only)
5. Create integration tests for validation with error codes
6. Add Arabic translations
