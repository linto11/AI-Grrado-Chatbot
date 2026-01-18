using Domain.Entities;
using Infrastructure.Persistance.DBContext;
using Microsoft.EntityFrameworkCore.Storage;
using Abstractions.Persistence;

namespace Infrastructure.Persistance.Repository;

/// <summary>
/// Unit of Work implementation - manages all repositories and transactions
/// </summary>
public class UnitOfWork : IUnitOfWork
{
    private readonly VehicleServiceDbContext _context;
    private IDbContextTransaction? _transaction;

    // Repository instances (lazy-loaded)
    private IRepository<User>? _userRepository;
    private IRepository<Vehicle>? _vehicleRepository;
    private IRepository<Garage>? _garageRepository;
    private IRepository<Service>? _serviceRepository;
    private IRepository<ServiceHistory>? _serviceHistoryRepository;
    private IRepository<VehicleIssue>? _vehicleIssueRepository;
    private IRepository<DiagnosticRule>? _diagnosticRuleRepository;
    private IRepository<ImageDiagnostic>? _imageDiagnosticRepository;
    private IRepository<ErrorMessage>? _errorMessageRepository;

    public UnitOfWork(VehicleServiceDbContext context)
    {
        _context = context;
    }

    // Repository properties with lazy initialization
    public IRepository<User> Users => _userRepository ??= new BaseRepository<User>(_context);
    public IRepository<Vehicle> Vehicles => _vehicleRepository ??= new BaseRepository<Vehicle>(_context);
    public IRepository<Garage> Garages => _garageRepository ??= new BaseRepository<Garage>(_context);
    public IRepository<Service> Services => _serviceRepository ??= new BaseRepository<Service>(_context);
    public IRepository<ServiceHistory> ServiceHistories => _serviceHistoryRepository ??= new BaseRepository<ServiceHistory>(_context);
    public IRepository<VehicleIssue> VehicleIssues => _vehicleIssueRepository ??= new BaseRepository<VehicleIssue>(_context);
    public IRepository<DiagnosticRule> DiagnosticRules => _diagnosticRuleRepository ??= new BaseRepository<DiagnosticRule>(_context);
    public IRepository<ImageDiagnostic> ImageDiagnostics => _imageDiagnosticRepository ??= new BaseRepository<ImageDiagnostic>(_context);
    public IRepository<ErrorMessage> ErrorMessages => _errorMessageRepository ??= new BaseRepository<ErrorMessage>(_context);

    /// <summary>
    /// Save all pending changes to database
    /// </summary>
    public async Task<int> SaveChangesAsync()
    {
        return await _context.SaveChangesAsync();
    }

    /// <summary>
    /// Begin a new database transaction
    /// </summary>
    public async Task BeginTransactionAsync()
    {
        _transaction = await _context.Database.BeginTransactionAsync();
    }

    /// <summary>
    /// Commit the current transaction
    /// </summary>
    public async Task CommitAsync()
    {
        try
        {
            await SaveChangesAsync();
            if (_transaction != null)
            {
                await _transaction.CommitAsync();
            }
        }
        finally
        {
            if (_transaction != null)
            {
                await _transaction.DisposeAsync();
            }
            _transaction = null;
        }
    }

    /// <summary>
    /// Rollback the current transaction
    /// </summary>
    public async Task RollbackAsync()
    {
        try
        {
            if (_transaction != null)
            {
                await _transaction.RollbackAsync();
            }
        }
        finally
        {
            if (_transaction != null)
            {
                await _transaction.DisposeAsync();
            }
            _transaction = null;
        }
    }

    /// <summary>
    /// Dispose resources
    /// </summary>
    public void Dispose()
    {
        _transaction?.Dispose();
        _context.Dispose();
    }

    /// <summary>
    /// Async dispose resources
    /// </summary>
    public async ValueTask DisposeAsync()
    {
        if (_transaction is not null)
        {
            await _transaction.DisposeAsync();
        }
        await _context.DisposeAsync();
    }
}
