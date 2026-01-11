-- Create a new user for migrations
CREATE USER migration_user WITH SUPERUSER CREATEDB CREATEROLE;
-- Give it no password (will use trust auth)
ALTER USER migration_user WITH PASSWORD NULL;
