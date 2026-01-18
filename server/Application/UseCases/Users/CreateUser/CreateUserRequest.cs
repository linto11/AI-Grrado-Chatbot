using Application.Common.Models;
using Abstractions.DTOs.User;
using MediatR;

namespace Application.UseCases.Users.CreateUser;

public class CreateUserRequest : IRequest<Result<UserDto>>
{
    public string Name { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    public string PhoneNumber { get; set; } = string.Empty;
    public string City { get; set; } = string.Empty;
    public string FamilyType { get; set; } = string.Empty;
    public string ExperienceLevel { get; set; } = string.Empty;
}
