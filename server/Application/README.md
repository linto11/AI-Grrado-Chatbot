# Application Layer - UseCases Pattern

## Overview

The Application layer follows the **Use Cases** pattern with **MediatR** and **FluentValidation** for clean, testable business logic.

## Architecture

### Structure
```
Application/
├── Common/
│   └── Models/
│       └── Result.cs              # Generic result wrapper
├── UseCases/
│   └── Users/
│       ├── CreateUser/
│       │   ├── CreateUserRequest.cs     # MediatR request
│       │   ├── CreateUserHandler.cs     # Request handler
│       │   └── CreateUserValidator.cs   # FluentValidation validator
│       ├── UpdateUser/
│       │   ├── UpdateUserRequest.cs
│       │   ├── UpdateUserHandler.cs
│       │   └── UpdateUserValidator.cs
│       ├── DeleteUser/
│       │   ├── DeleteUserRequest.cs
│       │   ├── DeleteUserHandler.cs
│       │   └── DeleteUserValidator.cs
│       ├── GetUserById/
│       │   ├── GetUserByIdRequest.cs
│       │   ├── GetUserByIdHandler.cs
│       │   └── GetUserByIdValidator.cs
│       └── GetAllUsers/
│           ├── GetAllUsersRequest.cs
│           ├── GetAllUsersHandler.cs
│           └── GetAllUsersValidator.cs
```

## Key Components

### 1. Request
Represents the input for a use case. Implements `IRequest<TResponse>` from MediatR.

**Example: CreateUserRequest**
```csharp
public class CreateUserRequest : IRequest<Result<UserDto>>
{
    public string Name { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    // ... other properties
}
```

### 2. Handler
Contains the business logic for the use case. Implements `IRequestHandler<TRequest, TResponse>`.

**Example: CreateUserHandler**
```csharp
public class CreateUserHandler : IRequestHandler<CreateUserRequest, Result<UserDto>>
{
    private readonly IUnitOfWork _unitOfWork;
    private readonly IMapper _mapper;

    public async Task<Result<UserDto>> Handle(CreateUserRequest request, CancellationToken cancellationToken)
    {
        var user = _mapper.Map<User>(request);
        await _unitOfWork.Users.AddAsync(user);
        await _unitOfWork.SaveChangesAsync();
        
        var userDto = _mapper.Map<UserDto>(user);
        return Result<UserDto>.Success(userDto);
    }
}
```

### 3. Validator
Validates the request using FluentValidation. Extends `AbstractValidator<TRequest>`.

**Example: CreateUserValidator**
```csharp
public class CreateUserValidator : AbstractValidator<CreateUserRequest>
{
    public CreateUserValidator()
    {
        RuleFor(x => x.Name)
            .NotEmpty().WithMessage("Name is required")
            .MaximumLength(100).WithMessage("Name must not exceed 100 characters");

        RuleFor(x => x.Email)
            .NotEmpty().WithMessage("Email is required")
            .EmailAddress().WithMessage("Invalid email format");
    }
}
```

### 4. Result Wrapper
All operations return a `Result<T>` or `Result` wrapper for consistent error handling.

```csharp
public class Result<T>
{
    public bool IsSuccess { get; set; }
    public T? Data { get; set; }
    public string? ErrorMessage { get; set; }
    public List<string> Errors { get; set; } = new();
}
```

## Benefits

### 1. **Clear Organization**
- Each use case is self-contained in its own folder
- Easy to find: Request, Handler, Validator all together
- Follows screaming architecture principles

### 2. **Automatic Validation**
- FluentValidation runs before handler execution
- Consistent validation across all use cases
- Declarative validation rules

### 3. **Single Responsibility**
- Each handler does one thing
- Validators handle validation only
- Separation of concerns enforced

### 4. **Testability**
- Each component can be tested independently
- Mock dependencies easily
- Clear input/output contracts

### 5. **Scalability**
- Easy to add new use cases
- Minimal coupling between use cases
- Can be developed in parallel

## Usage in Controllers

Controllers use MediatR to send requests:

```csharp
[ApiController]
[Route("api/[controller]")]
public class UsersController : ControllerBase
{
    private readonly IMediator _mediator;

    public UsersController(IMediator mediator)
    {
        _mediator = mediator;
    }

    [HttpGet("{id}")]
    public async Task<IActionResult> GetById(int id)
    {
        var request = new GetUserByIdRequest(id);
        var result = await _mediator.Send(request);
        
        if (!result.IsSuccess)
            return NotFound(result.ErrorMessage);
        
        return Ok(result.Data);
    }

    [HttpPost]
    public async Task<IActionResult> Create(CreateUserRequest request)
    {
        var result = await _mediator.Send(request);
        
        if (!result.IsSuccess)
            return BadRequest(result.ErrorMessage);
        
        return CreatedAtAction(nameof(GetById), new { id = result.Data.Id }, result.Data);
    }
}
```

## Validation Flow

1. Request is sent via MediatR
2. FluentValidation automatically validates the request
3. If validation fails, returns validation errors
4. If validation passes, handler executes
5. Handler returns Result with success/failure

## Next Steps

### To implement for other entities:
1. Create `UseCases/[EntityName]/` folder
2. Create use case folders (CreateX, UpdateX, DeleteX, GetXById, GetAllX)
3. For each use case, create: Request, Handler, Validator
4. Add AutoMapper mappings
5. Create controllers

### Example entities to implement:
- Vehicle
- Garage
- Service
- ServiceHistory
- VehicleIssue
- DiagnosticRule
- ImageDiagnostic

## Dependency Injection

Services are registered in `Application/DependencyInjection.cs`:

```csharp
// MediatR - auto-discovers all handlers
services.AddMediatR(cfg => cfg.RegisterServicesFromAssembly(typeof(DependencyInjection).Assembly));

// FluentValidation - auto-discovers all validators
services.AddValidatorsFromAssembly(typeof(DependencyInjection).Assembly);

// AutoMapper - auto-discovers all profiles
services.AddAutoMapper(typeof(DependencyInjection).Assembly);
```

All handlers and validators are automatically discovered and registered.
