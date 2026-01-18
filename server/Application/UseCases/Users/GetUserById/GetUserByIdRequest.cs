using Application.Common.Models;
using Abstractions.DTOs.User;
using MediatR;

namespace Application.UseCases.Users.GetUserById;

public class GetUserByIdRequest : IRequest<Result<UserDto>>
{
    public int Id { get; set; }

    public GetUserByIdRequest(int id)
    {
        Id = id;
    }

    public GetUserByIdRequest()
    {
    }
}
