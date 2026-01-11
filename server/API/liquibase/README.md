# Liquibase Database Migration Guide

## Overview

This project uses Liquibase for database schema versioning and management instead of EF Core Code-First migrations. This approach provides better control over schema upgrades/downgrades and avoids application-level database authentication issues.

## Architecture

```
liquibase/
├── master-changelog.xml           # Main entry point, includes all changelogs
├── liquibase.properties           # Liquibase configuration
├── changelogs/
│   ├── 001-initial-schema.xml    # Initial schema creation (tables, indexes, FKs)
│   ├── 002-seed-data.xml         # Data seeding changelog
│   └── sql/                       # SQL seed files for data insertion
│       ├── seed-users.sql
│       ├── seed-vehicles.sql
│       ├── seed-vehicle-issues.sql
│       ├── seed-garages.sql
│       ├── seed-services.sql
│       ├── seed-service-histories.sql
│       ├── seed-diagnostic-rules.sql
│       └── seed-image-diagnostics.sql
```

## Changelog Structure

### 001-initial-schema.xml
- Creates 8 entity tables with proper column definitions
- Establishes foreign key relationships
- Creates composite indexes for performance optimization
- Uses soft-delete columns (IsDeleted, DeletedAt, DeletedBy) on all tables
- Sets up CASCADE and RESTRICT delete policies appropriately

**Tables Created:**
1. Users (100 rows)
2. Vehicles (650+ rows, FK: Users)
3. Garages (100 rows)
4. Services (600+ rows, FK: Garages)
5. ServiceHistories (1500+ rows, FK: Vehicles, Garages, Services)
6. VehicleIssues (150 rows)
7. DiagnosticRules (120 rows)
8. ImageDiagnostics (120 rows)

### 002-seed-data.xml
- References external SQL files for data insertion
- Executes TRUNCATE operations to ensure clean state
- Maintains referential integrity order (parent tables first)
- Seeding order:
  1. Users
  2. Vehicles (depends on Users)
  3. VehicleIssues
  4. Garages
  5. Services (depends on Garages)
  6. ServiceHistories (depends on all)
  7. DiagnosticRules
  8. ImageDiagnostics

## Installation & Setup

### Prerequisites
- PostgreSQL 16 (running in Docker on port 5432)
- Java Runtime Environment (JRE 11+) for Liquibase CLI
- Vehicle service database already created: `vehicle_service_db`
- Migration user created: `migration_user` / `migration123`

### Install Liquibase CLI

**Windows (using Chocolatey):**
```powershell
choco install liquibase
```

**Or download from:** https://github.com/liquibase/liquibase/releases

### Verify Installation
```bash
liquibase --version
```

## Deployment

### Option 1: Using Liquibase CLI (Docker)

```bash
# From the liquibase directory
cd server/API/liquibase

# Run via Docker (PostgreSQL container has Liquibase pre-installed in extended image)
docker exec vehicle-service-postgres liquibase \
  --classpath=/opt/liquibase/lib/postgresql-*.jar \
  --driver=org.postgresql.Driver \
  --url=jdbc:postgresql://localhost:5432/vehicle_service_db \
  --username=migration_user \
  --password=migration123 \
  --changeLogFile=master-changelog.xml \
  update
```

### Option 2: Using Liquibase CLI (Local)

```bash
# Configure properties file
cd server/API/liquibase

# Update URL to match your environment
# docker run against postgres container
liquibase --defaults-file=liquibase.properties update
```

### Option 3: Integrated in .NET Startup (Recommended)

Create a startup service to execute Liquibase before application starts:

```csharp
// Add to Program.cs
if (app.Environment.IsDevelopment())
{
    await ExecuteLiquibaseAsync();
}
```

## Tracking Changes

Liquibase maintains change tracking in the `databasechangelog` and `databasechangeloglock` tables.

### View Applied Changes
```sql
SELECT * FROM databasechangelog ORDER BY orderexecuted;
```

### Check Pending Changes
```bash
liquibase --defaults-file=liquibase.properties status
```

## Adding New Migrations

### For Schema Changes

1. Create a new XML changelog file: `003-add-new-column.xml`
```xml
<?xml version="1.0" encoding="UTF-8"?>
<databaseChangeLog xmlns="http://www.liquibase.org/xml/ns/dbchangelog"
                   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                   xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog
                   http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-4.1.xsd">

    <changeSet id="003-add-column" author="developer">
        <addColumn tableName="Users">
            <column name="PreferredLanguage" type="VARCHAR(10)" defaultValue="en"/>
        </addColumn>
    </changeSet>

</databaseChangeLog>
```

2. Add reference to master-changelog.xml:
```xml
<include file="changelogs/003-add-new-column.xml" relativeToChangelogFile="true"/>
```

### For Data Updates

1. Create SQL file: `changelogs/sql/update-data.sql`
2. Reference in changelog:
```xml
<changeSet id="004-update-data" author="developer">
    <sqlFile path="sql/update-data.sql" relativeToChangelogFile="true"/>
</changeSet>
```

## Rollback (if needed)

### View Rollback Supported Changes
```bash
liquibase --defaults-file=liquibase.properties rollbackCount 1
```

### Rollback Last Change
```bash
liquibase --defaults-file=liquibase.properties rollback 1
```

**Note:** Some changesets may not support automatic rollback. Add `<rollback>` tags manually:

```xml
<changeSet id="003-add-column" author="developer">
    <addColumn tableName="Users">
        <column name="PreferredLanguage" type="VARCHAR(10)"/>
    </addColumn>
    <rollback>
        <dropColumn tableName="Users" columnName="PreferredLanguage"/>
    </rollback>
</changeSet>
```

## Troubleshooting

### Connection Issues
```bash
# Test connection
liquibase --defaults-file=liquibase.properties changelogSyncToTag tag0.9.0
```

### Common Errors

**"databasechangelog table does not exist"**
- First run will create this table automatically

**"Connection refused"**
- Ensure PostgreSQL container is running: `docker ps | grep postgres`
- Verify connection string in liquibase.properties

**"Duplicate value for primary key"**
- Check if changelog already applied: `SELECT * FROM databasechangelog`
- May need to mark as executed: `markNextChangeSetRan`

## Best Practices

1. **One change per changeset** - Easier to rollback and understand history
2. **Meaningful IDs** - Use: `NNN-description` format
3. **Test migrations locally** - Before deployment
4. **Document assumptions** - Add comments in XML changesets
5. **Seed data separately** - Keep schema and data changesets distinct
6. **Use attributes** - Never hardcode database names or users

## Integration with EF Core

After Liquibase manages the schema:

1. **Scaffold DbContext:**
   ```bash
   cd server/API
   dotnet ef dbcontext scaffold "Host=localhost;Database=vehicle_service_db;Username=migration_user;Password=migration123" Npgsql.EntityFrameworkCore.PostgreSQL
   ```

2. **Use scaffolded models** in your application

3. **Disable automatic migrations** - Liquibase is now the source of truth

## References

- [Liquibase Documentation](https://docs.liquibase.com/)
- [PostgreSQL Extension](https://github.com/liquibase/liquibase-postgresql)
- [XML Format Guide](https://docs.liquibase.com/change-types/home.html)
- [Troubleshooting Guide](https://docs.liquibase.com/home/release-notes/tips-for-upgrading.html)
