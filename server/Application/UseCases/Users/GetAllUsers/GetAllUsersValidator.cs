using FluentValidation;
using Abstractions.Services;
using Application.Common.Constants;

namespace Application.UseCases.Users.GetAllUsers;

public class GetAllUsersValidator : AbstractValidator<GetAllUsersRequest>
{
    private readonly IErrorMessageService _errorMessageService;

    public GetAllUsersValidator(IErrorMessageService errorMessageService)
    {
        _errorMessageService = errorMessageService;

        RuleFor(x => x.PageNumber)
            .GreaterThan(0)
            .WithErrorCode(ErrorCodes.PAGE_NUMBER_INVALID)
            .WithMessage(GetMessage(ErrorCodes.PAGE_NUMBER_INVALID, "Page number must be greater than 0"));

        RuleFor(x => x.PageSize)
            .GreaterThan(0)
            .WithErrorCode(ErrorCodes.PAGE_SIZE_INVALID)
            .WithMessage(GetMessage(ErrorCodes.PAGE_SIZE_INVALID, "Page size must be greater than 0"))
            .LessThanOrEqualTo(100)
            .WithErrorCode(ErrorCodes.PAGE_SIZE_EXCEEDS_LIMIT)
            .WithMessage(GetMessage(ErrorCodes.PAGE_SIZE_EXCEEDS_LIMIT, "Page size must not exceed 100"));
    }

    private string GetMessage(string code, string defaultMessage)
    {
        return _errorMessageService.GetMessageAsync(code, defaultMessage).GetAwaiter().GetResult();
    }
}
