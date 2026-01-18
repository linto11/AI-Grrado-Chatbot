# Vehicle Service Portal

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-green.svg)](LICENSE)
[![Tech Stack](https://img.shields.io/badge/stack-.NET%209%20%7C%20Angular%2019%20%7C%20PostgreSQL%2016%20%7C%20Redis%20%7C%20Liquibase-blue)](#tech-stack)
[![Progress](https://img.shields.io/badge/Progress-21%25%20(155%2F735%20hrs)-brightgreen)](#project-status)

A full-stack web application for managing vehicle service records, diagnostics, and garage operations.

**Status:** Phases 1-3 Complete ✅ | Phase 4 In Progress 🔄 (57% Foundation)

## Project Overview

The Vehicle Service Portal provides:
- **User Management:** Customer profiles with experience levels
- **Vehicle Management:** Vehicle records, history, and issue tracking
- **Garage Management:** Service provider locations and offerings
- **Service Management:** Service history, appointments, and diagnostics
- **Analytics:** Dashboard with service trends, vehicle health, garage performance
- **Image Diagnostics:** AI-powered image analysis for vehicle diagnostics

## Quick Links

- **📋 Implementation Plan:** [IMPLEMENTATION_PLAN.md](IMPLEMENTATION_PLAN.md) ← Master development guide for Copilot
- **📊 Progress Tracker:** [docs/02-progress-tracking/progress-tracker.md](docs/02-progress-tracking/progress-tracker.md) ← Single source of truth
- **🏗️ Phase Documentation:** [docs/03-phase-specific/](docs/03-phase-specific/) ← Detailed phase completions
- **💾 Database Design:** [docs/03-phase-specific/phase-3-database-liquibase/](docs/03-phase-specific/phase-3-database-liquibase/) ← Database schema & Liquibase

## Tech Stack

**Backend:**
- .NET Core 9 (C#)
- Clean Architecture (Domain, Application, Infrastructure, API layers)
- Entity Framework Core 9 + PostgreSQL 16
- Redis (distributed caching with error message support)
- Liquibase (database version control)
- MediatR (CQRS pattern)
- FluentValidation (validation with error codes)
- AutoMapper (DTO mapping)

**Frontend:**
- Angular 19 (TypeScript, standalone components)
- Tailwind CSS (styling)
- Shadcn-inspired components (UI library)
- ngx-echarts (charting and analytics)

**Infrastructure:**
- PostgreSQL 16 (database)
- Redis 7 (distributed caching)
- Liquibase (schema management)
- Keycloak (authentication/authorization)
- Docker & Docker Compose (containerization)
- Serilog (structured logging with correlation tracking)

**Development Tools:**
- VS Code (recommended IDE)
- .NET CLI 9
- Node.js 20 LTS
- npm / Angular CLI 19

## Project Status

**Phases Completed:** 1, 2, 3 (Environment, Architecture, Database)  
**Total Progress:** 21% (155 of 735 hours)  
**Current Phase:** 4 - Backend API Development (57% Foundation Complete)

| Phase | Status | Tasks | Time |
|-------|--------|-------|------|
| 1: Environment Setup | ✅ Complete | 7/7 | 5 hrs |
| 2: Project Structure | ✅ Complete | 13/13 | 8 hrs |
| 3: Database & Liquibase | ✅ Complete | 13/13 | 15 hrs |
| 4: Backend API | 🔄 In Progress | 8/14 | 55 hrs |
| 5: Frontend UI | ⏳ Pending | 0/10 | 30 hrs |
## Documentation

- **[IMPLEMENTATION_PLAN.md](IMPLEMENTATION_PLAN.md)** - Detailed implementation plan for all phases (start here for development)
- **[docs/02-progress-tracking/progress-tracker.md](docs/02-progress-tracking/progress-tracker.md)** - Task-by-task progress tracking
- **[docs/03-phase-specific/](docs/03-phase-specific/)** - Complete documentation for each phase
- **[docs/00-getting-started/](docs/00-getting-started/)** - Setup and getting started guides
- **[CHANGELOG.md](CHANGELOG.md)** - Version history and release notes
- **[CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md)** - Community guidelines
- **[CONTRIBUTING.md](CONTRIBUTING.md)** - Contribution guidelines

## Community

- **Issues:** Report bugs or request features via GitHub issues
- **Discussions:** Ask questions and share ideas
- **Contributing:** See [CONTRIBUTING.md](CONTRIBUTING.md)

## License

This project is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for details.

---

**Last Updated:** January 18, 2026  
**Current Phase:** 4 - Backend API Development (57% Foundation)  
**Overall Progress:** 21% (155 of 735 hours)

## Latest Achievements (January 18, 2026)

✅ **Error Code Management System**
- JSON-based configuration with 32 error codes
- String code names (e.g., `USER_NAME_REQUIRED`) instead of GUIDs
- Redis distributed caching with 6-hour automatic refresh
- Code name to GUID resolution with O(1) dictionary lookup
- Hot reload support for runtime configuration updates

✅ **Architecture Foundation**
- Abstractions layer with 24 DTOs (Read/Create/Update)
- Repository + Unit of Work patterns
- AutoMapper with CQRS profile
- Serilog structured logging with correlation IDs
- Keycloak authentication services
- Layer-specific dependency injection

✅ **Validation System**
- FluentValidation with error codes
- 32 error codes mapped to use cases
- Result and ValidationError models
- 5 User validators with comprehensive rules

✅ **Database**
- 8 tables with soft-delete pattern
- 3,400+ seed records via Liquibase
- Composite indexes for performance
- Error message table with UseCase support

## Getting Started

### Prerequisites
- .NET Core 9 SDK
- Node.js 20 LTS
- PostgreSQL 16 (Docker)
- VS Code (recommended)
- Docker Desktop

### Setup (Phases 1-3 already complete)

```bash
# Clone repository
git clone <repo-url>
cd AI-ML-Project

# Start database
docker-compose up -d

# Verify database
psql -h localhost -U postgres -d vehicle_service_db -c "SELECT COUNT(*) FROM \"Users\";"
# Should show: 100 users

# Build backend
cd server
dotnet restore
dotnet build

# Build frontend
cd ../client
npm install
ng build
```

## Project Structure

```
AI-ML-Project/
├── server/                          # .NET Backend
│   ├── Domain/                      # Entity models
│   ├── Application/                 # Business logic
│   ├── Infrastructure/              # Data access & Liquibase
│   │   ├── Database/
│   │   │   └── liquibase/          # Schema migrations
│   │   ├── Data/                    # EF Core DbContext
│   │   └── Services/                # Infrastructure services
│   └── API/                         # REST API
│
├── client/                          # Angular Frontend
│   ├── src/app/
│   │   ├── core/                    # Services, interceptors
│   │   ├── shared/                  # UI components
│   │   └── features/                # Feature modules (8 entities)
│   └── styles.css                   # Tailwind CSS
│
├── scripts/
│   └── database-setup/              # Database initialization
│       ├── init-db.sql
│       └── create_migration_user.sql
│
├── docs/                            # Documentation
│   ├── 00-getting-started/
│   ├── 01-requirements/
│   ├── 02-progress-tracking/        # Task tracking
│   ├── 03-phase-specific/           # Phase documentation
│   └── 04-deployment-guides/
│
├── data/                            # CSV seed data
├── docker-compose.yml               # Docker services
└── IMPLEMENTATION_PLAN.md           # THIS PLAN
```

## Database Schema

**8 Tables:**
- **Users** (100 records) - Customer profiles
- **Vehicles** (650+ records) - Vehicle inventory
- **Garages** - Service provider locations
- **Services** - Service offerings by garage
- **VehicleIssues** - Reported issues
- **ServiceHistories** - Service appointments
- **DiagnosticRules** - AI diagnostic rules
- **ImageDiagnostics** - Image analysis results

**Features:**
- 12 composite indexes for performance
- 5 foreign key relationships
- Soft-delete pattern on all tables
- 3,400+ seed records via Liquibase

## Database Management

**Version Control:** Liquibase (not EF Core migrations)

```bash
# Check status
cd server/Infrastructure/Database
liquibase status

# Deploy schema and seed data
liquibase update

# View changelog
liquibase history
```

**Setup Scripts** (environment configuration only):
- `scripts/prerequisites/00-database-init/init-db.sql` - Creates database
- `scripts/prerequisites/00-database-init/create_migration_user.sql` - Creates migration user

## Development Workflow

### Backend (Phase 4)
```bash
cd server/API

# Build
dotnet build

# Run API
dotnet run

# Test
dotnet test
```

**API will be available at:** http://localhost:5000  
**Swagger UI:** http://localhost:5000/swagger

### Frontend (Phases 5+)
```bash
cd client

# Install dependencies
npm install

# Development server
ng serve

# Build
ng build
```

**Application will be available at:** http://localhost:4200

## Key Features

### Authentication
- OAuth 2.0 / OIDC via Keycloak
- Role-based access control (RBAC)
- Token refresh and session management

### API
- 32 REST endpoints (4 per entity)
- Full CRUD operations
- Soft-delete with restore
- File upload for images
- Search and filtering
- Pagination support

### UI
- Responsive design (mobile-first)
- Tailwind CSS styling
- Interactive charts (ngx-echarts)
- Data grids with sorting/filtering
- Modal dialogs for forms
- Image upload and preview

### Analytics
- Service volume trends
- Vehicle health metrics
- Garage performance
- Upcoming maintenance
- Dashboard with real-time updates

## Next Steps (Phase 4)

See [IMPLEMENTATION_PLAN.md](IMPLEMENTATION_PLAN.md) for detailed Phase 4 tasks:

1. Configure Keycloak authentication
2. Scaffold DbContext from database
3. Build repository pattern
4. Create DTOs and mappings
5. Implement service layer
6. Build REST API controllers
7. Add file upload endpoint
8. Create Swagger documentation

## Documentation
- Activation blocked? Allow for the session:
  ```pwsh
  Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
  ```
- Install errors? Upgrade pip then retry:
  ```pwsh
  python -m pip install --upgrade pip
  pip install -r _requirements.txt
  ```

## Contributing
See CONTRIBUTING.md and CODE_OF_CONDUCT.md. Open issues/PRs using the templates in .github/.

## License
Apache-2.0. See LICENSE.
