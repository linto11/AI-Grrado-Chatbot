using FluentValidation;
using Abstractions.Services;
using Application.Common.Constants;

namespace Application.UseCases.Users.GetUserById;

public class GetUserByIdValidator : AbstractValidator<GetUserByIdRequest>
{
    private readonly IErrorMessageService _errorMessageService;

    public GetUserByIdValidator(IErrorMessageService errorMessageService)
    {
        _errorMessageService = errorMessageService;

        RuleFor(x => x.Id)
            .GreaterThan(0)
            .WithErrorCode(ErrorCodes.USER_ID_INVALID)
            .WithMessage(GetMessage(ErrorCodes.USER_ID_INVALID, "Invalid user ID"));
    }

    private string GetMessage(string code, string defaultMessage)
    {
        return _errorMessageService.GetMessageAsync(code, defaultMessage).GetAwaiter().GetResult();
    }
}
