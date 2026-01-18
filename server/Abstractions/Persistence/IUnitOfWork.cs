using Domain.Entities;

namespace Abstractions.Persistence;

/// <summary>
/// Unit of Work interface - centralizes access to all repositories and manages transactions
/// </summary>
public interface IUnitOfWork : IDisposable, IAsyncDisposable
{
    // Repository properties for all entities
    IRepository<User> Users { get; }
    IRepository<Vehicle> Vehicles { get; }
    IRepository<Garage> Garages { get; }
    IRepository<Service> Services { get; }
    IRepository<ServiceHistory> ServiceHistories { get; }
    IRepository<VehicleIssue> VehicleIssues { get; }
    IRepository<DiagnosticRule> DiagnosticRules { get; }
    IRepository<ImageDiagnostic> ImageDiagnostics { get; }
    IRepository<ErrorMessage> ErrorMessages { get; }

    /// <summary>
    /// Save all changes to database in a transaction
    /// </summary>
    Task<int> SaveChangesAsync();

    /// <summary>
    /// Begin a new transaction
    /// </summary>
    Task BeginTransactionAsync();

    /// <summary>
    /// Commit current transaction
    /// </summary>
    Task CommitAsync();

    /// <summary>
    /// Rollback current transaction
    /// </summary>
    Task RollbackAsync();
}
