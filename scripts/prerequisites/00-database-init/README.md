# Database Setup Scripts

## Overview

This directory contains PostgreSQL initialization scripts that run **once** when the container starts. They set up the database environment and users before Liquibase migrations run.

**Key Point:** These are environment setup scripts, NOT schema migrations. Schema changes are handled entirely by Liquibase.

## Scripts

### `init-db.sql`
Creates the `vehicle_service_db` database and sets postgres user password.
- Runs once on first container start
- Automatically invoked by PostgreSQL Docker image

### `create_migration_user.sql`
Creates `migration_user` for running Liquibase migrations.
- Run after database initialization
- Gives Liquibase a dedicated user for schema changes
- Separates migration operations from application access

## Execution Order

1. **`init-db.sql`** - Auto-runs on Docker startup
2. **`create_migration_user.sql`** - Run manually or via Docker volume mount
3. **Liquibase migrations** - All schema changes via `liquibase update`
4. **Application startup** - Uses application database user

## Docker Integration

Scripts are automatically mounted and executed during container startup:

```yaml
services:
  postgres:
    image: postgres:16-alpine
    volumes:
      - ./scripts/database-setup:/docker-entrypoint-initdb.d
    environment:
      POSTGRES_DB: vehicle_service_db
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: postgres
```

PostgreSQL automatically executes scripts in `/docker-entrypoint-initdb.d/` on first start only.

## Liquibase Next

Once database and migration user are created, run Liquibase migrations:

```bash
cd server/Infrastructure/Database
liquibase update
```

See `docs/03-phase-specific/phase-3-database-liquibase/` for complete Liquibase documentation.
