using Abstractions.DTOs.User;
using Abstractions.Persistence;
using Application.Common.Models;
using AutoMapper;
using MediatR;

namespace Application.UseCases.Users.UpdateUser;

public class UpdateUserHandler : IRequestHandler<UpdateUserRequest, Result<UserDto>>
{
    private readonly IUnitOfWork _unitOfWork;
    private readonly IMapper _mapper;

    public UpdateUserHandler(IUnitOfWork unitOfWork, IMapper mapper)
    {
        _unitOfWork = unitOfWork;
        _mapper = mapper;
    }

    public async Task<Result<UserDto>> Handle(UpdateUserRequest request, CancellationToken cancellationToken)
    {
        try
        {
            // Get existing user
            var user = await _unitOfWork.Users.GetByIdAsync(request.Id);
            if (user == null)
            {
                return Result<UserDto>.Failure($"User with ID {request.Id} not found");
            }

            // Update properties
            _mapper.Map(request, user);

            // Save changes
            await _unitOfWork.Users.UpdateAsync(user);
            await _unitOfWork.SaveChangesAsync();

            // Map to DTO
            var userDto = _mapper.Map<UserDto>(user);

            return Result<UserDto>.Success(userDto);
        }
        catch (Exception ex)
        {
            return Result<UserDto>.Failure($"Failed to update user: {ex.Message}");
        }
    }
}
