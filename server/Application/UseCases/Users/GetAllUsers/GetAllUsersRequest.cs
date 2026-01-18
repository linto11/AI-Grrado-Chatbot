using Application.Common.Models;
using Abstractions.DTOs.User;
using Abstractions.Persistence;
using MediatR;

namespace Application.UseCases.Users.GetAllUsers;

public class GetAllUsersRequest : IRequest<Result<PaginatedResult<UserDto>>>
{
    public int PageNumber { get; set; } = 1;
    public int PageSize { get; set; } = 10;
}
