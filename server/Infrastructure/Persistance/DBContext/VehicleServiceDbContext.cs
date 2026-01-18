using Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Persistance.DBContext;

public class VehicleServiceDbContext : DbContext
{
    public VehicleServiceDbContext(DbContextOptions<VehicleServiceDbContext> options) : base(options)
    {
    }

    public DbSet<User> Users { get; set; } = null!;
    public DbSet<Vehicle> Vehicles { get; set; } = null!;
    public DbSet<Garage> Garages { get; set; } = null!;
    public DbSet<Service> Services { get; set; } = null!;
    public DbSet<ServiceHistory> ServiceHistories { get; set; } = null!;
    public DbSet<VehicleIssue> VehicleIssues { get; set; } = null!;
    public DbSet<DiagnosticRule> DiagnosticRules { get; set; } = null!;
    public DbSet<ImageDiagnostic> ImageDiagnostics { get; set; } = null!;
    public DbSet<ErrorMessage> ErrorMessages { get; set; } = null!;

    // Logging entities
    public DbSet<AuditLog> AuditLogs { get; set; } = null!;
    public DbSet<ErrorLog> ErrorLogs { get; set; } = null!;
    public DbSet<RequestResponseLog> RequestResponseLogs { get; set; } = null!;
    public DbSet<ActivityLog> ActivityLogs { get; set; } = null!;

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        // Configure User composite index
        modelBuilder.Entity<User>()
            .HasIndex(u => new { u.Name, u.Email })
            .IsUnique(false)
            .HasDatabaseName("IX_Users_Name_Email");

        // Configure Vehicle composite indexes
        modelBuilder.Entity<Vehicle>()
            .HasIndex(v => new { v.Brand, v.Model, v.City })
            .IsUnique(false)
            .HasDatabaseName("IX_Vehicles_Brand_Model_City");

        modelBuilder.Entity<Vehicle>()
            .HasIndex(v => v.UserId)
            .HasDatabaseName("IX_Vehicles_UserId");

        // Configure Garage composite index
        modelBuilder.Entity<Garage>()
            .HasIndex(g => new { g.Name, g.City, g.GarageType })
            .IsUnique(false)
            .HasDatabaseName("IX_Garages_Name_City_Type");

        // Configure Service indexes
        modelBuilder.Entity<Service>()
            .HasIndex(s => s.GarageId)
            .HasDatabaseName("IX_Services_GarageId");

        modelBuilder.Entity<Service>()
            .HasIndex(s => s.Category)
            .HasDatabaseName("IX_Services_Category");

        // Configure ServiceHistory indexes
        modelBuilder.Entity<ServiceHistory>()
            .HasIndex(sh => sh.VehicleId)
            .HasDatabaseName("IX_ServiceHistory_VehicleId");

        modelBuilder.Entity<ServiceHistory>()
            .HasIndex(sh => sh.GarageId)
            .HasDatabaseName("IX_ServiceHistory_GarageId");

        modelBuilder.Entity<ServiceHistory>()
            .HasIndex(sh => sh.ServiceDate)
            .HasDatabaseName("IX_ServiceHistory_ServiceDate");

        // Configure VehicleIssue index
        modelBuilder.Entity<VehicleIssue>()
            .HasIndex(vi => vi.Severity)
            .HasDatabaseName("IX_VehicleIssue_Severity");

        // Configure DiagnosticRule index
        modelBuilder.Entity<DiagnosticRule>()
            .HasIndex(dr => dr.LogicType)
            .HasDatabaseName("IX_DiagnosticRule_LogicType");

        // Configure ImageDiagnostic index
        modelBuilder.Entity<ImageDiagnostic>()
            .HasIndex(id => id.Urgency)
            .HasDatabaseName("IX_ImageDiagnostic_Urgency");

        // Configure relationships
        modelBuilder.Entity<Vehicle>()
            .HasOne(v => v.User)
            .WithMany(u => u.Vehicles)
            .HasForeignKey(v => v.UserId)
            .OnDelete(DeleteBehavior.Cascade);

        modelBuilder.Entity<Service>()
            .HasOne(s => s.Garage)
            .WithMany(g => g.Services)
            .HasForeignKey(s => s.GarageId)
            .OnDelete(DeleteBehavior.Cascade);

        modelBuilder.Entity<ServiceHistory>()
            .HasOne(sh => sh.Vehicle)
            .WithMany(v => v.ServiceHistories)
            .HasForeignKey(sh => sh.VehicleId)
            .OnDelete(DeleteBehavior.Cascade);

        modelBuilder.Entity<ServiceHistory>()
            .HasOne(sh => sh.Garage)
            .WithMany(g => g.ServiceHistories)
            .HasForeignKey(sh => sh.GarageId)
            .OnDelete(DeleteBehavior.Restrict);

        modelBuilder.Entity<ServiceHistory>()
            .HasOne(sh => sh.Service)
            .WithMany(s => s.ServiceHistories)
            .HasForeignKey(sh => sh.ServiceId)
            .OnDelete(DeleteBehavior.Restrict);
    }
}
