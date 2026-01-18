using System.Linq.Expressions;
using Domain;
using Domain.Abstractions;
using Microsoft.EntityFrameworkCore;
using Infrastructure.Persistance.DBContext;
using Abstractions.Persistence;

namespace Infrastructure.Persistance.Repository;

/// <summary>
/// Generic repository implementation with soft-delete support
/// </summary>
public class BaseRepository<T> : IRepository<T> where T : class, IEntity
{
    protected readonly VehicleServiceDbContext _context;
    protected readonly DbSet<T> _dbSet;

    public BaseRepository(VehicleServiceDbContext context)
    {
        _context = context;
        _dbSet = context.Set<T>();
    }

    public IQueryable<T> GetAll(bool includeDeleted = false)
    {
        var query = _dbSet.AsQueryable();
        
        if (!includeDeleted)
        {
            query = query.Where(e => !e.IsDeleted);
        }

        return query;
    }

    public async Task<T?> GetByIdAsync(int id, bool includeDeleted = false)
    {
        var query = _dbSet.AsQueryable();

        if (!includeDeleted)
        {
            query = query.Where(e => !e.IsDeleted);
        }

        return await query.FirstOrDefaultAsync(e => e.Id == id);
    }

    public async Task<IEnumerable<T>> FindAsync(Expression<Func<T, bool>> predicate, bool includeDeleted = false)
    {
        var query = GetAll(includeDeleted);
        return await query.Where(predicate).ToListAsync();
    }

    public async Task<T> AddAsync(T entity)
    {
        entity.IsDeleted = false;
        entity.CreatedAt = DateTime.UtcNow;
        entity.UpdatedAt = DateTime.UtcNow;

        await _dbSet.AddAsync(entity);
        await _context.SaveChangesAsync();

        return entity;
    }

    public async Task<T> UpdateAsync(T entity)
    {
        entity.UpdatedAt = DateTime.UtcNow;

        _dbSet.Update(entity);
        await _context.SaveChangesAsync();

        return entity;
    }

    public async Task<bool> DeleteAsync(int id)
    {
        var entity = await GetByIdAsync(id, includeDeleted: false);
        
        if (entity == null)
            return false;

        entity.IsDeleted = true;
        entity.UpdatedAt = DateTime.UtcNow;
        entity.DeletedAt = DateTime.UtcNow;

        _dbSet.Update(entity);
        await _context.SaveChangesAsync();

        return true;
    }

    public async Task<bool> RestoreAsync(int id)
    {
        var entity = await _dbSet.FirstOrDefaultAsync(e => e.Id == id && e.IsDeleted);

        if (entity == null)
            return false;

        entity.IsDeleted = false;
        entity.UpdatedAt = DateTime.UtcNow;
        entity.DeletedAt = null;

        _dbSet.Update(entity);
        await _context.SaveChangesAsync();

        return true;
    }

    public async Task<bool> ExistsAsync(int id, bool includeDeleted = false)
    {
        var query = _dbSet.AsQueryable();

        if (!includeDeleted)
        {
            query = query.Where(e => !e.IsDeleted);
        }

        return await query.AnyAsync(e => e.Id == id);
    }

    public async Task<int> CountAsync(bool includeDeleted = false)
    {
        var query = GetAll(includeDeleted);
        return await query.CountAsync();
    }

    public async Task<Abstractions.Persistence.PaginatedResult<T>> GetPagedAsync(int skip, int take, bool includeDeleted = false)
    {
        var query = GetAll(includeDeleted);
        var total = await query.CountAsync();
        var items = await query.Skip(skip).Take(take).ToListAsync();

        return new Abstractions.Persistence.PaginatedResult<T>
        {
            Items = items,
            TotalCount = total,
            Skip = skip,
            Take = take
        };
    }
}
