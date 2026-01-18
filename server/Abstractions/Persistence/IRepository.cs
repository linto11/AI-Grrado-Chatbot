using System.Linq.Expressions;

namespace Abstractions.Persistence;

/// <summary>
/// Generic repository interface for CRUD operations with soft-delete support
/// </summary>
public interface IRepository<T> where T : class
{
    /// <summary>
    /// Get all non-deleted entities
    /// </summary>
    IQueryable<T> GetAll(bool includeDeleted = false);

    /// <summary>
    /// Get entity by ID
    /// </summary>
    Task<T?> GetByIdAsync(int id, bool includeDeleted = false);

    /// <summary>
    /// Find entities by predicate
    /// </summary>
    Task<IEnumerable<T>> FindAsync(Expression<Func<T, bool>> predicate, bool includeDeleted = false);

    /// <summary>
    /// Add new entity
    /// </summary>
    Task<T> AddAsync(T entity);

    /// <summary>
    /// Update existing entity
    /// </summary>
    Task<T> UpdateAsync(T entity);

    /// <summary>
    /// Soft-delete entity
    /// </summary>
    Task<bool> DeleteAsync(int id);

    /// <summary>
    /// Restore soft-deleted entity
    /// </summary>
    Task<bool> RestoreAsync(int id);

    /// <summary>
    /// Check if entity exists
    /// </summary>
    Task<bool> ExistsAsync(int id, bool includeDeleted = false);

    /// <summary>
    /// Count entities
    /// </summary>
    Task<int> CountAsync(bool includeDeleted = false);

    /// <summary>
    /// Paginate query results
    /// </summary>
    Task<PaginatedResult<T>> GetPagedAsync(int skip, int take, bool includeDeleted = false);
}

/// <summary>
/// Result wrapper for paginated data
/// </summary>
public class PaginatedResult<T>
{
    public IEnumerable<T> Items { get; set; } = new List<T>();
    public int TotalCount { get; set; }
    public int Skip { get; set; }
    public int Take { get; set; }
    public int TotalPages => (TotalCount + Take - 1) / Take;
}
