using Abstractions.DTOs.User;
using Abstractions.Persistence;
using Application.Common.Models;
using AutoMapper;
using MediatR;

namespace Application.UseCases.Users.GetAllUsers;

public class GetAllUsersHandler : IRequestHandler<GetAllUsersRequest, Result<PaginatedResult<UserDto>>>
{
    private readonly IUnitOfWork _unitOfWork;
    private readonly IMapper _mapper;

    public GetAllUsersHandler(IUnitOfWork unitOfWork, IMapper mapper)
    {
        _unitOfWork = unitOfWork;
        _mapper = mapper;
    }

    public async Task<Result<PaginatedResult<UserDto>>> Handle(GetAllUsersRequest request, CancellationToken cancellationToken)
    {
        try
        {
            var pagedUsers = await _unitOfWork.Users.GetPagedAsync(request.PageNumber, request.PageSize);
            
            var userDtos = _mapper.Map<List<UserDto>>(pagedUsers.Items);
            
            var paginatedResult = new PaginatedResult<UserDto>
            {
                Items = userDtos,
                TotalCount = pagedUsers.TotalCount,
                Skip = pagedUsers.Skip,
                Take = pagedUsers.Take
            };

            return Result<PaginatedResult<UserDto>>.Success(paginatedResult);
        }
        catch (Exception ex)
        {
            return Result<PaginatedResult<UserDto>>.Failure($"Failed to retrieve users: {ex.Message}");
        }
    }
}
