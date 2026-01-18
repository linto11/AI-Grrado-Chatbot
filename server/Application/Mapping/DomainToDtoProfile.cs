using AutoMapper;
using Domain.Entities;
using Abstractions.DTOs.User;
using Abstractions.DTOs.Vehicle;
using Abstractions.DTOs.Garage;
using Abstractions.DTOs.Service;
using Abstractions.DTOs.ServiceHistory;
using Abstractions.DTOs.VehicleIssue;
using Abstractions.DTOs.DiagnosticRule;
using Abstractions.DTOs.ImageDiagnostic;
using Application.UseCases.Users.CreateUser;
using Application.UseCases.Users.UpdateUser;

namespace Application.Mapping;

/// <summary>
/// Maps domain entities to DTOs and vice versa
/// </summary>
public class DomainToDtoProfile : Profile
{
    public DomainToDtoProfile()
    {
        // User mappings
        CreateMap<User, UserDto>();
        CreateMap<Abstractions.DTOs.User.CreateUserRequest, User>();
        CreateMap<Abstractions.DTOs.User.UpdateUserRequest, User>();
        CreateMap<Application.UseCases.Users.CreateUser.CreateUserRequest, User>();
        CreateMap<Application.UseCases.Users.UpdateUser.UpdateUserRequest, User>();

        // Vehicle mappings
        CreateMap<Vehicle, VehicleDto>();
        CreateMap<CreateVehicleRequest, Vehicle>();
        CreateMap<UpdateVehicleRequest, Vehicle>();

        // Garage mappings
        CreateMap<Garage, GarageDto>();
        CreateMap<CreateGarageRequest, Garage>();
        CreateMap<UpdateGarageRequest, Garage>();

        // Service mappings
        CreateMap<Domain.Entities.Service, ServiceDto>();
        CreateMap<CreateServiceRequest, Domain.Entities.Service>();
        CreateMap<UpdateServiceRequest, Domain.Entities.Service>();

        // ServiceHistory mappings
        CreateMap<Domain.Entities.ServiceHistory, ServiceHistoryDto>();
        CreateMap<CreateServiceHistoryRequest, Domain.Entities.ServiceHistory>();
        CreateMap<UpdateServiceHistoryRequest, Domain.Entities.ServiceHistory>();

        // VehicleIssue mappings
        CreateMap<VehicleIssue, VehicleIssueDto>();
        CreateMap<CreateVehicleIssueRequest, VehicleIssue>();
        CreateMap<UpdateVehicleIssueRequest, VehicleIssue>();

        // DiagnosticRule mappings
        CreateMap<Domain.Entities.DiagnosticRule, DiagnosticRuleDto>();
        CreateMap<CreateDiagnosticRuleRequest, Domain.Entities.DiagnosticRule>();
        CreateMap<UpdateDiagnosticRuleRequest, Domain.Entities.DiagnosticRule>();

        // ImageDiagnostic mappings
        CreateMap<Domain.Entities.ImageDiagnostic, ImageDiagnosticDto>();
        CreateMap<CreateImageDiagnosticRequest, Domain.Entities.ImageDiagnostic>();
        CreateMap<UpdateImageDiagnosticRequest, Domain.Entities.ImageDiagnostic>();
    }
}
