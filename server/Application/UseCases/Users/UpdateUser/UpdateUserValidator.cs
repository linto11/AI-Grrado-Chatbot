using FluentValidation;
using Abstractions.Services;
using Application.Common.Constants;

namespace Application.UseCases.Users.UpdateUser;

public class UpdateUserValidator : AbstractValidator<UpdateUserRequest>
{
    private readonly IErrorMessageService _errorMessageService;

    public UpdateUserValidator(IErrorMessageService errorMessageService)
    {
        _errorMessageService = errorMessageService;

        RuleFor(x => x.Id)
            .GreaterThan(0)
            .WithErrorCode(ErrorCodes.USER_ID_INVALID)
            .WithMessage(GetMessage(ErrorCodes.USER_ID_INVALID, "Invalid user ID"));

        RuleFor(x => x.Name)
            .NotEmpty()
            .WithErrorCode(ErrorCodes.USER_NAME_REQUIRED)
            .WithMessage(GetMessage(ErrorCodes.USER_NAME_REQUIRED, "Name is required"))
            .MaximumLength(100)
            .WithErrorCode(ErrorCodes.USER_NAME_MAX_LENGTH)
            .WithMessage(GetMessage(ErrorCodes.USER_NAME_MAX_LENGTH, "Name must not exceed 100 characters"));

        RuleFor(x => x.Email)
            .NotEmpty()
            .WithErrorCode(ErrorCodes.USER_EMAIL_REQUIRED)
            .WithMessage(GetMessage(ErrorCodes.USER_EMAIL_REQUIRED, "Email is required"))
            .EmailAddress()
            .WithErrorCode(ErrorCodes.USER_EMAIL_INVALID)
            .WithMessage(GetMessage(ErrorCodes.USER_EMAIL_INVALID, "Invalid email format"))
            .MaximumLength(100)
            .WithErrorCode(ErrorCodes.USER_EMAIL_MAX_LENGTH)
            .WithMessage(GetMessage(ErrorCodes.USER_EMAIL_MAX_LENGTH, "Email must not exceed 100 characters"));

        RuleFor(x => x.PhoneNumber)
            .NotEmpty()
            .WithErrorCode(ErrorCodes.USER_PHONE_REQUIRED)
            .WithMessage(GetMessage(ErrorCodes.USER_PHONE_REQUIRED, "Phone number is required"))
            .MaximumLength(20)
            .WithErrorCode(ErrorCodes.USER_PHONE_MAX_LENGTH)
            .WithMessage(GetMessage(ErrorCodes.USER_PHONE_MAX_LENGTH, "Phone number must not exceed 20 characters"));

        RuleFor(x => x.City)
            .NotEmpty()
            .WithErrorCode(ErrorCodes.USER_CITY_REQUIRED)
            .WithMessage(GetMessage(ErrorCodes.USER_CITY_REQUIRED, "City is required"))
            .MaximumLength(50)
            .WithErrorCode(ErrorCodes.USER_CITY_MAX_LENGTH)
            .WithMessage(GetMessage(ErrorCodes.USER_CITY_MAX_LENGTH, "City must not exceed 50 characters"));

        RuleFor(x => x.FamilyType)
            .NotEmpty()
            .WithErrorCode(ErrorCodes.USER_FAMILY_TYPE_REQUIRED)
            .WithMessage(GetMessage(ErrorCodes.USER_FAMILY_TYPE_REQUIRED, "Family type is required"))
            .MaximumLength(50)
            .WithErrorCode(ErrorCodes.USER_FAMILY_TYPE_MAX_LENGTH)
            .WithMessage(GetMessage(ErrorCodes.USER_FAMILY_TYPE_MAX_LENGTH, "Family type must not exceed 50 characters"));

        RuleFor(x => x.ExperienceLevel)
            .NotEmpty()
            .WithErrorCode(ErrorCodes.USER_EXPERIENCE_LEVEL_REQUIRED)
            .WithMessage(GetMessage(ErrorCodes.USER_EXPERIENCE_LEVEL_REQUIRED, "Experience level is required"))
            .MaximumLength(50)
            .WithErrorCode(ErrorCodes.USER_EXPERIENCE_LEVEL_MAX_LENGTH)
            .WithMessage(GetMessage(ErrorCodes.USER_EXPERIENCE_LEVEL_MAX_LENGTH, "Experience level must not exceed 50 characters"));
    }

    private string GetMessage(string code, string defaultMessage)
    {
        return _errorMessageService.GetMessageAsync(code, defaultMessage).GetAwaiter().GetResult();
    }
}
