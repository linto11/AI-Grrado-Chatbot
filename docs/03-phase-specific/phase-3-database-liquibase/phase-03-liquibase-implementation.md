# Liquibase Implementation Guide

## Overview

This document provides detailed technical information about the Liquibase implementation in this project, including file structure, changelog breakdown, and procedures for adding new migrations.

## File Structure Details

### Core Configuration

**`liquibase.properties`** - Master configuration file
```properties
# PostgreSQL JDBC Connection
driver=org.postgresql.Driver
url=jdbc:postgresql://localhost:5432/vehicle_service_db
username=migration_user
password=migration123
defaultSchemaName=public

# Changelog Location
changeLogFile=liquibase/master-changelog.xml

# Liquibase Behavior
logLevel=INFO
searchPath=./

# Pro Features (if licensed)
# liquibase.pro.licenseKey=YOUR_KEY_HERE
```

**Environment-Specific Configuration:**
- Development: `liquibase.properties` (checked into git)
- Staging/Production: Use environment variables or secrets manager
- Override with CLI: `liquibase --username=prod_user update`

### Master Changelog

**`liquibase/master-changelog.xml`** - Orchestrates all changelogs

```xml
<?xml version="1.0" encoding="UTF-8"?>
<databaseChangeLog
    xmlns="http://www.liquibase.org/xml/ns/dbchangelog"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog
        http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-4.1.xsd">
    
    <!-- Phase 1: Initial Schema -->
    <include file="changelogs/001-initial-schema.xml" relativeToChangelogFile="true"/>
    
    <!-- Phase 2: Seed Development Data -->
    <include file="changelogs/002-seed-data.xml" relativeToChangelogFile="true"/>
    
    <!-- Future migrations will be added here -->
    
</databaseChangeLog>
```

**Key Points:**
- All changelogs are included in sequential order
- Uses relative paths for portability
- New migrations are appended to the bottom
- Each include represents a deployment version

## Changelog Breakdown

### 001-initial-schema.xml (416 lines)

**Purpose**: Create all 8 tables with constraints and indexes

**Structure**:
```xml
<databaseChangeLog>
    <!-- Changeset 1: Create DiagnosticRules table -->
    <changeSet id="create-diagnostic-rules-table" author="system">
        <createTable tableName="DiagnosticRules">
            <column name="Id" type="INTEGER" autoIncrement="true">
                <constraints primaryKey="true" nullable="false"/>
            </column>
            <column name="RuleName" type="VARCHAR(255)">
                <constraints nullable="false"/>
            </column>
            <!-- Additional columns... -->
        </createTable>
        
        <rollback>
            <dropTable tableName="DiagnosticRules"/>
        </rollback>
    </changeSet>
    
    <!-- Changeset 2: Add indexes for DiagnosticRules -->
    <changeSet id="create-diagnostic-rules-indexes" author="system">
        <createIndex indexName="idx_diagnostic_rules_rule_name" 
                     tableName="DiagnosticRules">
            <column name="RuleName"/>
        </createIndex>
        
        <rollback>
            <dropIndex indexName="idx_diagnostic_rules_rule_name" 
                       tableName="DiagnosticRules"/>
        </rollback>
    </changeSet>
    
    <!-- Repeat for all 8 tables... -->
</databaseChangeLog>
```

**Table Creation Order**:
1. DiagnosticRules (no dependencies)
2. Garages (no dependencies)
3. Users (no dependencies)
4. ImageDiagnostics (no dependencies)
5. Vehicles (FK → Users)
6. VehicleIssues (FK → Vehicles)
7. Services (FK → Garages)
8. ServiceHistories (FK → Vehicles, Garages)

**Why This Order?**
- Tables with no foreign keys are created first
- Child tables are created after parent tables
- Prevents foreign key constraint violations

**Key Features**:
- All tables use INTEGER auto-increment primary keys
- Soft-delete pattern on all tables (IsDeleted, DeletedAt, DeletedBy)
- Timestamp tracking (CreatedAt, UpdatedAt)
- VARCHAR, TEXT, INTEGER, DECIMAL, TIMESTAMP, BOOLEAN types
- 12 composite indexes for query performance
- 5 foreign key constraints with CASCADE/RESTRICT policies

### 002-seed-data.xml (45 lines)

**Purpose**: Orchestrate insertion of 3,400+ seed records

**Structure**:
```xml
<databaseChangeLog>
    <!-- Seed Users First (No Dependencies) -->
    <changeSet id="seed-users" author="system">
        <sqlFile path="sql/seed-users.sql" 
                 relativeToChangelogFile="true" 
                 splitStatements="true" 
                 stripComments="true"/>
        <rollback>
            <sql>TRUNCATE TABLE "Users" CASCADE;</sql>
        </rollback>
    </changeSet>
    
    <!-- Seed Vehicles (Depends on Users) -->
    <changeSet id="seed-vehicles" author="system">
        <sqlFile path="sql/seed-vehicles.sql" 
                 relativeToChangelogFile="true"/>
        <rollback>
            <sql>TRUNCATE TABLE "Vehicles" CASCADE;</sql>
        </rollback>
    </changeSet>
    
    <!-- Continue for all 8 seed files... -->
</databaseChangeLog>
```

**Seed File Order** (Matches FK Dependencies):
1. `seed-users.sql` (603 lines, 100 records)
2. `seed-vehicles.sql` (1303 lines, 650+ records)
3. `seed-vehicle-issues.sql` (depends on Vehicles)
4. `seed-garages.sql` (no dependencies)
5. `seed-services.sql` (depends on Garages)
6. `seed-service-histories.sql` (depends on Vehicles, Garages)
7. `seed-diagnostic-rules.sql` (no dependencies)
8. `seed-image-diagnostics.sql` (no dependencies)

**Seed File Format**:
```sql
-- Each seed file follows this pattern:

-- 1. Truncate table (clean slate)
TRUNCATE TABLE "TableName" RESTART IDENTITY CASCADE;

-- 2. Insert records (multiple INSERT statements)
INSERT INTO "TableName" ("Column1", "Column2", ...) 
        VALUES ('Value1', 'Value2', ...);
INSERT INTO "TableName" ("Column1", "Column2", ...) 
        VALUES ('Value1', 'Value2', ...);
-- ... hundreds more records ...
```

## Adding New Migrations

### Step 1: Create New Changelog File

**Naming Convention**: `00X-description.xml` (sequential numbering)

Example: `003-add-payment-table.xml`

```xml
<?xml version="1.0" encoding="UTF-8"?>
<databaseChangeLog
    xmlns="http://www.liquibase.org/xml/ns/dbchangelog"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog
        http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-4.1.xsd">
    
    <changeSet id="create-payments-table" author="your-name">
        <createTable tableName="Payments">
            <column name="Id" type="INTEGER" autoIncrement="true">
                <constraints primaryKey="true" nullable="false"/>
            </column>
            <column name="ServiceHistoryId" type="INTEGER">
                <constraints nullable="false" 
                             foreignKeyName="fk_payments_service_history"
                             references="ServiceHistories(Id)"
                             deleteCascade="false"/>
            </column>
            <column name="Amount" type="DECIMAL(10,2)">
                <constraints nullable="false"/>
            </column>
            <column name="PaymentMethod" type="VARCHAR(50)">
                <constraints nullable="false"/>
            </column>
            <column name="PaymentDate" type="TIMESTAMP">
                <constraints nullable="false"/>
            </column>
            <column name="IsDeleted" type="BOOLEAN" defaultValueBoolean="false">
                <constraints nullable="false"/>
            </column>
            <column name="CreatedAt" type="TIMESTAMP" defaultValueComputed="CURRENT_TIMESTAMP">
                <constraints nullable="false"/>
            </column>
        </createTable>
        
        <rollback>
            <dropTable tableName="Payments"/>
        </rollback>
    </changeSet>
    
    <changeSet id="create-payments-indexes" author="your-name">
        <createIndex indexName="idx_payments_service_history" 
                     tableName="Payments">
            <column name="ServiceHistoryId"/>
        </createIndex>
        
        <rollback>
            <dropIndex indexName="idx_payments_service_history" 
                       tableName="Payments"/>
        </rollback>
    </changeSet>
    
</databaseChangeLog>
```

### Step 2: Update Master Changelog

Add the new file to `master-changelog.xml`:

```xml
<databaseChangeLog>
    <include file="changelogs/001-initial-schema.xml" relativeToChangelogFile="true"/>
    <include file="changelogs/002-seed-data.xml" relativeToChangelogFile="true"/>
    
    <!-- NEW MIGRATION -->
    <include file="changelogs/003-add-payment-table.xml" relativeToChangelogFile="true"/>
    
</databaseChangeLog>
```

### Step 3: Test Migration Locally

```bash
# Navigate to Infrastructure/Database
cd server/Infrastructure/Database

# Preview SQL (dry run)
liquibase update-sql > preview-003.sql
# Review preview-003.sql to verify correctness

# Check status
liquibase status --verbose

# Run migration
liquibase update

# Verify in database
psql -d vehicle_service_db -c "\dt"
psql -d vehicle_service_db -c "SELECT * FROM Payments LIMIT 5;"
```

### Step 4: Test Rollback

```bash
# Rollback last changeset
liquibase rollback-count 1

# Verify table is dropped
psql -d vehicle_service_db -c "\dt"

# Re-apply migration
liquibase update
```

### Step 5: Commit Changes

```bash
git add server/Infrastructure/Database/liquibase/changelogs/003-add-payment-table.xml
git add server/Infrastructure/Database/liquibase/master-changelog.xml
git commit -m "feat: add Payments table for service payment tracking"
git push
```

## Common Migration Patterns

### Adding a Column

```xml
<changeSet id="add-email-verified-column" author="your-name">
    <addColumn tableName="Users">
        <column name="EmailVerified" type="BOOLEAN" defaultValueBoolean="false">
            <constraints nullable="false"/>
        </column>
    </addColumn>
    
    <rollback>
        <dropColumn tableName="Users" columnName="EmailVerified"/>
    </rollback>
</changeSet>
```

### Modifying a Column

```xml
<changeSet id="increase-phone-number-length" author="your-name">
    <modifyDataType tableName="Users" 
                    columnName="PhoneNumber" 
                    newDataType="VARCHAR(20)"/>
    
    <rollback>
        <modifyDataType tableName="Users" 
                        columnName="PhoneNumber" 
                        newDataType="VARCHAR(15)"/>
    </rollback>
</changeSet>
```

### Adding an Index

```xml
<changeSet id="add-index-users-email" author="your-name">
    <createIndex indexName="idx_users_email" 
                 tableName="Users" 
                 unique="true">
        <column name="Email"/>
    </createIndex>
    
    <rollback>
        <dropIndex indexName="idx_users_email" tableName="Users"/>
    </rollback>
</changeSet>
```

### Adding a Foreign Key

```xml
<changeSet id="add-fk-vehicles-owner" author="your-name">
    <addForeignKeyConstraint constraintName="fk_vehicles_owner"
                             baseTableName="Vehicles"
                             baseColumnNames="UserId"
                             referencedTableName="Users"
                             referencedColumnNames="Id"
                             onDelete="CASCADE"
                             onUpdate="RESTRICT"/>
    
    <rollback>
        <dropForeignKeyConstraint constraintName="fk_vehicles_owner" 
                                  baseTableName="Vehicles"/>
    </rollback>
</changeSet>
```

### Data Migration (Update Records)

```xml
<changeSet id="update-vehicle-colors" author="your-name">
    <sql>
        UPDATE "Vehicles" 
        SET "Color" = 'White' 
        WHERE "Color" IS NULL OR "Color" = '';
    </sql>
    
    <rollback>
        <sql>
            -- Rollback data changes carefully
            UPDATE "Vehicles" SET "Color" = NULL WHERE "Color" = 'White';
        </sql>
    </rollback>
</changeSet>
```

### Raw SQL Script

```xml
<changeSet id="complex-data-transformation" author="your-name">
    <sqlFile path="sql/complex-migration.sql" 
             relativeToChangelogFile="true"
             splitStatements="true"/>
    
    <rollback>
        <sqlFile path="sql/rollback-complex-migration.sql" 
                 relativeToChangelogFile="true"/>
    </rollback>
</changeSet>
```

## Best Practices

### Changeset Guidelines

1. **One Logical Change Per Changeset**
   - Each changeSet should represent one atomic change
   - Makes rollbacks more granular and safer

2. **Always Provide Rollback**
   - Define explicit rollback for every changeset
   - Test rollbacks before deploying

3. **Use Meaningful IDs and Authors**
   - ID: `verb-noun-description` (e.g., `add-payments-table`)
   - Author: Use your username or email

4. **Never Modify Existing Changesets**
   - Once run in any environment (dev, staging, prod), never change
   - Create new changesets to fix issues

5. **Include Comments**
   - Add `<comment>` tags to explain complex changes
   - Document why a change was made, not just what

### Schema Conventions

1. **Table Names**: PascalCase (`DiagnosticRules`, `VehicleIssues`)
2. **Column Names**: PascalCase (`RuleName`, `CreatedAt`)
3. **Primary Keys**: Always `Id` (INTEGER, auto-increment)
4. **Foreign Keys**: `TableNameId` (e.g., `UserId`, `VehicleId`)
5. **Indexes**: `idx_tablename_column` (e.g., `idx_users_email`)
6. **Constraints**: `fk_childtable_parenttable` (e.g., `fk_vehicles_users`)

### Soft Delete Pattern

All tables should include:
```xml
<column name="IsDeleted" type="BOOLEAN" defaultValueBoolean="false">
    <constraints nullable="false"/>
</column>
<column name="DeletedAt" type="TIMESTAMP"/>
<column name="DeletedBy" type="VARCHAR(255)"/>
```

### Timestamp Tracking

All tables should include:
```xml
<column name="CreatedAt" type="TIMESTAMP" defaultValueComputed="CURRENT_TIMESTAMP">
    <constraints nullable="false"/>
</column>
<column name="UpdatedAt" type="TIMESTAMP" defaultValueComputed="CURRENT_TIMESTAMP">
    <constraints nullable="false"/>
</column>
```

## Troubleshooting

### Common Issues

**Issue**: "ChangeSet already ran"
```
Solution: Check DATABASECHANGELOG table
psql -d vehicle_service_db -c "SELECT * FROM DATABASECHANGELOG ORDER BY DATEEXECUTED DESC;"

If needed, manually mark as not run:
DELETE FROM DATABASECHANGELOG WHERE id = 'your-changeset-id';
```

**Issue**: "Foreign key constraint violation"
```
Solution: Check table creation order
- Parent tables must be created before child tables
- Review dependency graph in 001-initial-schema.xml
```

**Issue**: "Column already exists"
```
Solution: Use preconditions
<changeSet id="add-column-if-not-exists" author="your-name">
    <preConditions onFail="MARK_RAN">
        <not>
            <columnExists tableName="Users" columnName="EmailVerified"/>
        </not>
    </preConditions>
    <addColumn>...</addColumn>
</changeSet>
```

**Issue**: "Liquibase locked"
```
Solution: Clear lock
liquibase release-locks

Or manually:
UPDATE DATABASECHANGELOGLOCK SET LOCKED = FALSE;
```

### Useful Commands

```bash
# Check what will run
liquibase status --verbose

# Generate SQL without running
liquibase update-sql > migration.sql

# Rollback to specific tag
liquibase tag my-release-1.0
liquibase rollback my-release-1.0

# Rollback by count
liquibase rollback-count 3

# Rollback by date
liquibase rollback-to-date "2024-01-15 10:00:00"

# Clear checksums (if file hash changed)
liquibase clear-checksums

# Generate documentation
liquibase db-doc ./db-docs
```

## CI/CD Integration

### GitHub Actions Example

```yaml
name: Database Migration

on:
  push:
    branches: [main, develop]
    paths:
      - 'server/Infrastructure/Database/**'

jobs:
  migrate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Setup Liquibase
        run: |
          wget https://github.com/liquibase/liquibase/releases/download/v4.20.0/liquibase-4.20.0.tar.gz
          tar -xzf liquibase-4.20.0.tar.gz
      
      - name: Run Migrations
        working-directory: server/Infrastructure/Database
        env:
          DB_URL: ${{ secrets.DB_URL }}
          DB_USER: ${{ secrets.DB_USER }}
          DB_PASSWORD: ${{ secrets.DB_PASSWORD }}
        run: |
          ./liquibase \
            --url=$DB_URL \
            --username=$DB_USER \
            --password=$DB_PASSWORD \
            update
```

### Docker Integration

```dockerfile
# Dockerfile for migration container
FROM liquibase/liquibase:4.20

COPY server/Infrastructure/Database /liquibase/changelog

CMD ["liquibase", "update"]
```

```yaml
# docker-compose.yml
services:
  db-migrate:
    build:
      context: .
      dockerfile: Dockerfile.migrations
    environment:
      - LIQUIBASE_URL=jdbc:postgresql://db:5432/vehicle_service_db
      - LIQUIBASE_USERNAME=migration_user
      - LIQUIBASE_PASSWORD=migration123
    depends_on:
      - db
```

## Resources

- **Official Documentation**: https://docs.liquibase.com/
- **XML Schema Reference**: https://docs.liquibase.com/change-types/home.html
- **Best Practices**: https://docs.liquibase.com/concepts/bestpractices.html
- **Rollback Strategies**: https://docs.liquibase.com/commands/rollback/home.html
- **PostgreSQL Types**: https://www.postgresql.org/docs/current/datatype.html

## Support

For questions or issues:
1. Review starter guide: `phase-03-liquibase-starter.md`
2. Check Liquibase logs in Infrastructure/Database folder
3. Consult the official Liquibase documentation
4. Contact the database team
5. Create an issue in the project tracker
