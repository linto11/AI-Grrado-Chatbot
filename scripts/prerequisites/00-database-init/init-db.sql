-- Initialize database for vehicle service application
-- This script runs as the postgres user inside the container

-- Create the main database if it doesn't exist
SELECT 'CREATE DATABASE vehicle_service_db' 
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'vehicle_service_db')\gexec

-- Set password authentication method for all connections
ALTER SYSTEM SET password_encryption = 'md5';

-- Alter the postgres user password
ALTER USER postgres WITH PASSWORD 'postgres';

-- Force PostgreSQL to reload configuration
SELECT pg_reload_conf();
