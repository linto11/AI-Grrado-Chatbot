using CsvHelper;
using CsvHelper.Configuration;
using Domain.Entities;
using Infrastructure.Persistance.DBContext;
using System.Globalization;

namespace Infrastructure.Persistance;

public interface IDataSeedingService
{
    Task SeedDataAsync(VehicleServiceDbContext context);
}

public class DataSeedingService : IDataSeedingService
{
    private readonly string _dataPath;

    public DataSeedingService(string dataPath = "./data")
    {
        _dataPath = dataPath;
    }

    public async Task SeedDataAsync(VehicleServiceDbContext context)
    {
        // Check if data already exists
        if (context.Users.Any() || context.Vehicles.Any() || context.Garages.Any())
        {
            Console.WriteLine("Data already seeded. Skipping...");
            return;
        }

        Console.WriteLine("Starting data seeding...");

        try
        {
            // Seed in order of dependencies
            await SeedUsersAsync(context);
            await SeedVehiclesAsync(context);
            await SeedVehicleIssuesAsync(context);
            await SeedGaragesAsync(context);
            await SeedServicesAsync(context);
            await SeedServiceHistoriesAsync(context);
            await SeedDiagnosticRulesAsync(context);
            await SeedImageDiagnosticsAsync(context);

            await context.SaveChangesAsync();
            Console.WriteLine("✅ Data seeding completed successfully!");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"❌ Error during data seeding: {ex.Message}");
            throw;
        }
    }

    private async Task SeedUsersAsync(VehicleServiceDbContext context)
    {
        var filePath = Path.Combine(_dataPath, "users.csv");
        if (!File.Exists(filePath)) return;

        using (var reader = new StreamReader(filePath))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            var records = csv.GetRecords<UserCsvRecord>();
            var userMap = new Dictionary<string, User>();

            foreach (var record in records)
            {
                var user = new User
                {
                    Name = record.name,
                    Email = $"{record.user_id.ToLower()}@example.com",
                    PhoneNumber = $"+971-{Random.Shared.Next(100000000, 999999999)}",
                    FamilyType = record.family_type,
                    ExperienceLevel = record.experience_level,
                    City = "Dubai",
                    IsDeleted = false,
                    CreatedAt = DateTime.UtcNow,
                    UpdatedAt = DateTime.UtcNow
                };

                context.Users.Add(user);
                userMap[record.user_id] = user;
            }

            Console.WriteLine($"📝 Seeded {context.Users.Count()} users");
        }
    }

    private async Task SeedVehiclesAsync(VehicleServiceDbContext context)
    {
        var filePath = Path.Combine(_dataPath, "vehicles.csv");
        if (!File.Exists(filePath)) return;

        using (var reader = new StreamReader(filePath))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            var records = csv.GetRecords<VehicleCsvRecord>();

            foreach (var record in records)
            {
                // Find user by email pattern
                var user = context.Users.FirstOrDefault(u => u.Email.StartsWith(record.user_id.ToLower()));
                if (user == null) continue;

                var vehicle = new Vehicle
                {
                    Brand = record.make,
                    Model = record.model,
                    Year = record.year,
                    FuelType = record.fuel_type,
                    MileageKm = record.mileage_km,
                    UserId = user.Id,
                    Color = "Unknown",
                    LicensePlate = $"UAE-{Random.Shared.Next(10000, 99999)}",
                    City = "Dubai",
                    VehicleType = "Sedan",
                    IsDeleted = false,
                    CreatedAt = DateTime.UtcNow,
                    UpdatedAt = DateTime.UtcNow
                };

                context.Vehicles.Add(vehicle);
            }

            Console.WriteLine($"📝 Seeded {context.ChangeTracker.Entries<Vehicle>().Count()} vehicles");
        }
    }

    private async Task SeedVehicleIssuesAsync(VehicleServiceDbContext context)
    {
        var filePath = Path.Combine(_dataPath, "vehicle_issues.csv");
        if (!File.Exists(filePath)) return;

        using (var reader = new StreamReader(filePath))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            var records = csv.GetRecords<VehicleIssueCsvRecord>();

            foreach (var record in records)
            {
                var issue = new VehicleIssue
                {
                    Symptom = record.symptom,
                    AffectedSystem = record.affected_system,
                    Severity = record.severity,
                    DrivesSafe = bool.Parse(record.drive_safe),
                    Description = $"Issue: {record.symptom}",
                    PossibleCauses = "Unknown",
                    IsDeleted = false,
                    CreatedAt = DateTime.UtcNow,
                    UpdatedAt = DateTime.UtcNow
                };

                context.VehicleIssues.Add(issue);
            }

            Console.WriteLine($"📝 Seeded {context.ChangeTracker.Entries<VehicleIssue>().Count()} vehicle issues");
        }
    }

    private async Task SeedGaragesAsync(VehicleServiceDbContext context)
    {
        var filePath = Path.Combine(_dataPath, "garages.csv");
        if (!File.Exists(filePath)) return;

        using (var reader = new StreamReader(filePath))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            var records = csv.GetRecords<GarageCsvRecord>();

            foreach (var record in records)
            {
                var garage = new Garage
                {
                    Name = record.garage_name,
                    City = record.city,
                    Address = $"{record.city}, UAE",
                    PhoneNumber = $"+971-{Random.Shared.Next(100000000, 999999999)}",
                    GarageType = record.garage_type,
                    EvSupported = bool.Parse(record.ev_supported.ToString()),
                    Rating = record.rating,
                    OperatingHours = "09:00-18:00",
                    IsDeleted = false,
                    CreatedAt = DateTime.UtcNow,
                    UpdatedAt = DateTime.UtcNow
                };

                context.Garages.Add(garage);
            }

            Console.WriteLine($"📝 Seeded {context.ChangeTracker.Entries<Garage>().Count()} garages");
        }
    }

    private async Task SeedServicesAsync(VehicleServiceDbContext context)
    {
        var filePath = Path.Combine(_dataPath, "garage_services.csv");
        if (!File.Exists(filePath)) return;

        using (var reader = new StreamReader(filePath))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            var records = csv.GetRecords<ServiceCsvRecord>();

            foreach (var record in records)
            {
                // Find garage by mapping garage_id
                var garageId = ExtractNumericId(record.garage_id);
                var garage = context.Garages.Skip(garageId - 1).FirstOrDefault();
                if (garage == null) continue;

                var service = new Service
                {
                    ServiceName = record.service_name,
                    Category = record.category,
                    AvgCostAed = (decimal)record.avg_cost_aed,
                    SkillLevel = record.skill_level,
                    GarageId = garage.Id,
                    Description = record.service_name,
                    EstimatedDurationMinutes = 60,
                    IsDeleted = false,
                    CreatedAt = DateTime.UtcNow,
                    UpdatedAt = DateTime.UtcNow
                };

                context.Services.Add(service);
            }

            Console.WriteLine($"📝 Seeded {context.ChangeTracker.Entries<Service>().Count()} services");
        }
    }

    private async Task SeedServiceHistoriesAsync(VehicleServiceDbContext context)
    {
        var filePath = Path.Combine(_dataPath, "vehicle_service_history.csv");
        if (!File.Exists(filePath)) return;

        using (var reader = new StreamReader(filePath))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            var records = csv.GetRecords<ServiceHistoryCsvRecord>();

            foreach (var record in records)
            {
                // Find vehicle and service safely
                var vehicleId = ExtractNumericId(record.vehicle_id);
                var vehicle = context.Vehicles.Skip(vehicleId - 1).FirstOrDefault();
                
                var garageId = ExtractNumericId(record.garage_id);
                var garage = context.Garages.Skip(garageId - 1).FirstOrDefault();
                
                var serviceId = ExtractNumericId(record.service_id);
                var service = context.Services.Skip(serviceId - 1).FirstOrDefault();

                if (vehicle == null || garage == null || service == null) continue;

                var history = new ServiceHistory
                {
                    VehicleId = vehicle.Id,
                    GarageId = garage.Id,
                    ServiceId = service.Id,
                    ServiceDate = DateTime.Parse(record.service_date),
                    MileageKm = record.mileage_km,
                    CostAed = (decimal)record.cost_aed,
                    Outcome = record.outcome,
                    Notes = $"Service outcome: {record.outcome}",
                    TechnicianId = 1,
                    IsDeleted = false,
                    CreatedAt = DateTime.UtcNow,
                    UpdatedAt = DateTime.UtcNow
                };

                context.ServiceHistories.Add(history);
            }

            Console.WriteLine($"📝 Seeded {context.ChangeTracker.Entries<ServiceHistory>().Count()} service histories");
        }
    }

    private async Task SeedDiagnosticRulesAsync(VehicleServiceDbContext context)
    {
        var filePath = Path.Combine(_dataPath, "diagnostic_rules.csv");
        if (!File.Exists(filePath)) return;

        using (var reader = new StreamReader(filePath))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            var records = csv.GetRecords<DiagnosticRuleCsvRecord>();

            foreach (var record in records)
            {
                var rule = new DiagnosticRule
                {
                    Conditions = record.conditions,
                    LogicType = record.logic_type,
                    Confidence = record.confidence,
                    Conclusion = record.conclusion,
                    Description = record.conclusion,
                    Priority = 1,
                    IsDeleted = false,
                    CreatedAt = DateTime.UtcNow,
                    UpdatedAt = DateTime.UtcNow
                };

                context.DiagnosticRules.Add(rule);
            }

            Console.WriteLine($"📝 Seeded {context.ChangeTracker.Entries<DiagnosticRule>().Count()} diagnostic rules");
        }
    }

    private async Task SeedImageDiagnosticsAsync(VehicleServiceDbContext context)
    {
        var filePath = Path.Combine(_dataPath, "image_diagnostics.csv");
        if (!File.Exists(filePath)) return;

        using (var reader = new StreamReader(filePath))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            var records = csv.GetRecords<ImageDiagnosticCsvRecord>();

            foreach (var record in records)
            {
                var imageDiag = new ImageDiagnostic
                {
                    VisualFeature = record.visual_feature,
                    Confidence = record.confidence,
                    LikelyIssue = record.likely_issue,
                    Urgency = record.urgency,
                    FilePath = "/uploads/images/placeholder.jpg",
                    ImageType = "diagnostic",
                    Description = record.visual_feature,
                    IsDeleted = false,
                    CreatedAt = DateTime.UtcNow,
                    UpdatedAt = DateTime.UtcNow
                };

                context.ImageDiagnostics.Add(imageDiag);
            }

            Console.WriteLine($"📝 Seeded {context.ChangeTracker.Entries<ImageDiagnostic>().Count()} image diagnostics");
        }
    }

    private int ExtractNumericId(string id)
    {
        var numericPart = new string(id.Where(char.IsDigit).ToArray());
        return int.TryParse(numericPart, out var result) ? result : 1;
    }

    // CSV Record Classes
    private class UserCsvRecord
    {
        public string user_id { get; set; } = string.Empty;
        public string name { get; set; } = string.Empty;
        public string family_type { get; set; } = string.Empty;
        public string experience_level { get; set; } = string.Empty;
    }

    private class VehicleCsvRecord
    {
        public string vehicle_id { get; set; } = string.Empty;
        public string user_id { get; set; } = string.Empty;
        public string make { get; set; } = string.Empty;
        public string model { get; set; } = string.Empty;
        public int year { get; set; }
        public string fuel_type { get; set; } = string.Empty;
        public int mileage_km { get; set; }
    }

    private class VehicleIssueCsvRecord
    {
        public string issue_id { get; set; } = string.Empty;
        public string symptom { get; set; } = string.Empty;
        public string affected_system { get; set; } = string.Empty;
        public string severity { get; set; } = string.Empty;
        public string drive_safe { get; set; } = string.Empty;
    }

    private class GarageCsvRecord
    {
        public string garage_id { get; set; } = string.Empty;
        public string garage_name { get; set; } = string.Empty;
        public string city { get; set; } = string.Empty;
        public string garage_type { get; set; } = string.Empty;
        public string ev_supported { get; set; } = string.Empty;
        public double rating { get; set; }
    }

    private class ServiceCsvRecord
    {
        public string service_id { get; set; } = string.Empty;
        public string garage_id { get; set; } = string.Empty;
        public string service_name { get; set; } = string.Empty;
        public string category { get; set; } = string.Empty;
        public double avg_cost_aed { get; set; }
        public string skill_level { get; set; } = string.Empty;
    }

    private class ServiceHistoryCsvRecord
    {
        public string record_id { get; set; } = string.Empty;
        public string vehicle_id { get; set; } = string.Empty;
        public string garage_id { get; set; } = string.Empty;
        public string service_id { get; set; } = string.Empty;
        public string service_date { get; set; } = string.Empty;
        public int mileage_km { get; set; }
        public double cost_aed { get; set; }
        public string outcome { get; set; } = string.Empty;
    }

    private class DiagnosticRuleCsvRecord
    {
        public string rule_id { get; set; } = string.Empty;
        public string conditions { get; set; } = string.Empty;
        public string logic_type { get; set; } = string.Empty;
        public double confidence { get; set; }
        public string conclusion { get; set; } = string.Empty;
    }

    private class ImageDiagnosticCsvRecord
    {
        public string image_case_id { get; set; } = string.Empty;
        public string visual_feature { get; set; } = string.Empty;
        public double confidence { get; set; }
        public string likely_issue { get; set; } = string.Empty;
        public string urgency { get; set; } = string.Empty;
    }
}
