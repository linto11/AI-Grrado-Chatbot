# Liquibase Database Migration - Starter Guide

## Overview

This project uses **Liquibase** for database version control and migrations instead of Entity Framework Core Migrations. This document explains the rationale, architecture, and getting started guide for Liquibase in this project.

## Why Liquibase Instead of EF Core Migrations?

### Database-First Approach
- **Design Philosophy**: This project follows a database-first design approach where the database schema is the source of truth
- **SQL Control**: Full control over SQL DDL statements, indexes, and constraints
- **Database Features**: Direct access to PostgreSQL-specific features (JSONB, arrays, full-text search, etc.)
- **Performance**: Hand-optimized indexes and query patterns

### Technology Independence
- **Polyglot Support**: Liquibase works with multiple languages (.NET, Java, Python, Node.js)
- **Framework Agnostic**: Not tied to Entity Framework or specific ORM
- **Team Flexibility**: Different services can use different languages/frameworks
- **Migration Tools**: Liquibase CLI can run independently of application code

### Production Requirements
- **Version Control**: XML-based changelogs track every database change
- **Rollback Support**: Built-in rollback capabilities for safe deployments
- **Audit Trail**: Complete history of who changed what and when
- **Multi-Environment**: Easy management of dev, staging, and production environments

## Architecture

### Location
All Liquibase files are located in the **Infrastructure layer**:
```
server/Infrastructure/Database/
├── liquibase.properties          # Connection configuration
└── liquibase/
    ├── master-changelog.xml       # Main orchestrator
    └── changelogs/
        ├── 001-initial-schema.xml # DDL for 8 tables
        ├── 002-seed-data.xml      # Seed data orchestrator
        └── sql/
            ├── seed-users.sql
            ├── seed-vehicles.sql
            ├── seed-vehicle-issues.sql
            ├── seed-garages.sql
            ├── seed-services.sql
            ├── seed-service-histories.sql
            ├── seed-diagnostic-rules.sql
            └── seed-image-diagnostics.sql
```

**Why Infrastructure Layer?**
- Clean Architecture principle: Infrastructure layer owns data persistence concerns
- Database migrations are infrastructure, not API or application logic
- Separation of concerns: API layer shouldn't contain database infrastructure

### Database Schema

The project uses **8 core tables**:

1. **DiagnosticRules** - AI diagnostic rules and confidence thresholds
2. **Garages** - Service provider information with location data
3. **ImageDiagnostics** - AI image analysis results and recommendations
4. **Users** - User profiles with experience level and family type
5. **VehicleIssues** - Reported issues with severity and status
6. **Vehicles** - Vehicle details with ownership relationship
7. **Services** - Garage service offerings with pricing
8. **ServiceHistories** - Service appointment records

**Common Patterns:**
- All tables use **soft-delete pattern** (IsDeleted, DeletedAt, DeletedBy)
- Sequential INTEGER primary keys (Id)
- Created/Updated timestamp tracking
- Foreign key relationships with CASCADE/RESTRICT policies
- 12 composite indexes for query performance

### Data Seeding

The project includes **3,400+ seed records** for development and testing:
- 100 users with realistic profiles
- 650+ vehicles across different brands and types
- Vehicle issues, garages, services, and service histories
- Diagnostic rules for AI model training
- Image diagnostic samples

## Getting Started

### Prerequisites

1. **PostgreSQL Database** (running in Docker or local)
   ```bash
   docker-compose up -d db
   ```

2. **Liquibase CLI** (version 4.1+)
   - Download from: https://www.liquibase.org/download
   - Or install via package manager:
     ```bash
     # Windows (Chocolatey)
     choco install liquibase
     
     # macOS (Homebrew)
     brew install liquibase
     
     # Linux (apt)
     sudo apt-get install liquibase
     ```

3. **PostgreSQL JDBC Driver**
   - Included in Liquibase 4.1+
   - Or download from: https://jdbc.postgresql.org/download.html

### Configuration

The `liquibase.properties` file contains connection settings:

```properties
# Database Connection
driver=org.postgresql.Driver
url=jdbc:postgresql://localhost:5432/vehicle_service_db
username=migration_user
password=migration123
defaultSchemaName=public

# Changelog
changeLogFile=liquibase/master-changelog.xml

# Logging
logLevel=INFO
```

**Note**: These are development settings. Production should use environment variables or secure vaults.

### Running Migrations

Navigate to the Infrastructure/Database folder:

```bash
cd server/Infrastructure/Database
```

**Check Migration Status:**
```bash
liquibase status --verbose
```

**Run All Pending Migrations:**
```bash
liquibase update
```

**Rollback Last Changeset:**
```bash
liquibase rollback-count 1
```

**Generate SQL Preview (Dry Run):**
```bash
liquibase update-sql
```

## Verification

After running migrations, verify the database:

```sql
-- Check all tables exist
SELECT tablename FROM pg_tables 
WHERE schemaname = 'public' 
ORDER BY tablename;

-- Count seed data
SELECT 'Users' as table_name, COUNT(*) FROM "Users"
UNION ALL SELECT 'Vehicles', COUNT(*) FROM "Vehicles"
UNION ALL SELECT 'VehicleIssues', COUNT(*) FROM "VehicleIssues"
UNION ALL SELECT 'Garages', COUNT(*) FROM "Garages"
UNION ALL SELECT 'Services', COUNT(*) FROM "Services"
UNION ALL SELECT 'ServiceHistories', COUNT(*) FROM "ServiceHistories"
UNION ALL SELECT 'DiagnosticRules', COUNT(*) FROM "DiagnosticRules"
UNION ALL SELECT 'ImageDiagnostics', COUNT(*) FROM "ImageDiagnostics";

-- Verify indexes
SELECT schemaname, tablename, indexname 
FROM pg_indexes 
WHERE schemaname = 'public' 
ORDER BY tablename, indexname;
```

Expected Results:
- 8 tables created
- 3,400+ total records
- 12+ indexes
- All foreign key constraints in place

## Next Steps

1. **Review Implementation**: See [phase-03-liquibase-implementation.md](./phase-03-liquibase-implementation.md) for detailed changelog structure
2. **Add New Migrations**: Follow the numbered convention (003-*, 004-*, etc.)
3. **Team Training**: Share this document with all developers
4. **CI/CD Integration**: Add Liquibase to deployment pipeline

## Common Questions

**Q: Why XML instead of SQL?**  
A: XML provides metadata (author, id, rollback) and database-agnostic abstractions while still allowing raw SQL via `<sqlFile>` tags.

**Q: Can we use EF Core alongside Liquibase?**  
A: Yes! EF Core can be used for queries and ORM mapping. Just disable EF migrations (`options.MigrationsAssembly(null)`).

**Q: How do we handle schema changes?**  
A: Create new numbered changelog files (003-*, 004-*) and add them to master-changelog.xml.

**Q: What about rollbacks?**  
A: Liquibase tracks all changes and can rollback using tags or changeset counts.

## Resources

- **Liquibase Documentation**: https://docs.liquibase.com/
- **Best Practices**: https://docs.liquibase.com/concepts/bestpractices.html
- **PostgreSQL JDBC**: https://jdbc.postgresql.org/documentation/
- **Project Wiki**: [Internal documentation link]

## Support

For issues or questions:
- Check the implementation guide: `phase-03-liquibase-implementation.md`
- Review Liquibase logs: `liquibase-<timestamp>.log`
- Contact the database team
- Create an issue in the project tracker
