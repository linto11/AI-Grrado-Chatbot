-- Insert default error messages for User validation (with GUID codes and UseCase)
INSERT INTO "ErrorMessages" ("Code", "Message", "Category", "UseCase", "LocaleCode", "IsDeleted", "CreatedAt", "UpdatedAt")
VALUES 
('a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d', 'Name is required', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e', 'Name must not exceed 100 characters', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', 'Email is required', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('d4e5f6a7-b8c9-4d0e-1f2a-3b4c5d6e7f8a', 'Invalid email format', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('e5f6a7b8-c9d0-4e1f-2a3b-4c5d6e7f8a9b', 'Email must not exceed 100 characters', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('f6a7b8c9-d0e1-4f2a-3b4c-5d6e7f8a9b0c', 'Phone number is required', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('a7b8c9d0-e1f2-4a3b-4c5d-6e7f8a9b0c1d', 'Phone number must not exceed 20 characters', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('b8c9d0e1-f2a3-4b4c-5d6e-7f8a9b0c1d2e', 'City is required', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('c9d0e1f2-a3b4-4c5d-6e7f-8a9b0c1d2e3f', 'City must not exceed 50 characters', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('d0e1f2a3-b4c5-4d6e-7f8a-9b0c1d2e3f4a', 'Family type is required', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('e1f2a3b4-c5d6-4e7f-8a9b-0c1d2e3f4a5b', 'Family type must not exceed 50 characters', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('f2a3b4c5-d6e7-4f8a-9b0c-1d2e3f4a5b6c', 'Experience level is required', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('a3b4c5d6-e7f8-4a9b-0c1d-2e3f4a5b6c7d', 'Experience level must not exceed 50 characters', 'Validation', 'CreateUser,UpdateUser', 'en-US', false, NOW(), NOW()),
('b4c5d6e7-f8a9-4b0c-1d2e-3f4a5b6c7d8e', 'Invalid user ID', 'Validation', 'GetUserById,UpdateUser,DeleteUser', 'en-US', false, NOW(), NOW()),
('c5d6e7f8-a9b0-4c1d-2e3f-4a5b6c7d8e9f', 'User not found', 'Business', 'GetUserById,UpdateUser,DeleteUser', 'en-US', false, NOW(), NOW()),

-- Insert pagination error messages
('d6e7f8a9-b0c1-4d2e-3f4a-5b6c7d8e9f0a', 'Page number must be greater than 0', 'Validation', 'GetAllUsers,GetAllVehicles,GetAllGarages', 'en-US', false, NOW(), NOW()),
('e7f8a9b0-c1d2-4e3f-4a5b-6c7d8e9f0a1b', 'Page size must be greater than 0', 'Validation', 'GetAllUsers,GetAllVehicles,GetAllGarages', 'en-US', false, NOW(), NOW()),
('f8a9b0c1-d2e3-4f4a-5b6c-7d8e9f0a1b2c', 'Page size must not exceed 100', 'Validation', 'GetAllUsers,GetAllVehicles,GetAllGarages', 'en-US', false, NOW(), NOW()),

-- Insert vehicle validation messages
('a9b0c1d2-e3f4-4a5b-6c7d-8e9f0a1b2c3d', 'Vehicle brand is required', 'Validation', 'CreateVehicle,UpdateVehicle', 'en-US', false, NOW(), NOW()),
('b0c1d2e3-f4a5-4b6c-7d8e-9f0a1b2c3d4e', 'Vehicle model is required', 'Validation', 'CreateVehicle,UpdateVehicle', 'en-US', false, NOW(), NOW()),
('c1d2e3f4-a5b6-4c7d-8e9f-0a1b2c3d4e5f', 'Invalid vehicle year', 'Validation', 'CreateVehicle,UpdateVehicle', 'en-US', false, NOW(), NOW()),
('d2e3f4a5-b6c7-4d8e-9f0a-1b2c3d4e5f6a', 'Vehicle not found', 'Business', 'GetVehicleById,UpdateVehicle,DeleteVehicle', 'en-US', false, NOW(), NOW()),

-- Insert garage validation messages
('e3f4a5b6-c7d8-4e9f-0a1b-2c3d4e5f6a7b', 'Garage name is required', 'Validation', 'CreateGarage,UpdateGarage', 'en-US', false, NOW(), NOW()),
('f4a5b6c7-d8e9-4f0a-1b2c-3d4e5f6a7b8c', 'Garage city is required', 'Validation', 'CreateGarage,UpdateGarage', 'en-US', false, NOW(), NOW()),
('a5b6c7d8-e9f0-4a1b-2c3d-4e5f6a7b8c9d', 'Garage not found', 'Business', 'GetGarageById,UpdateGarage,DeleteGarage', 'en-US', false, NOW(), NOW()),

-- Insert service validation messages
('b6c7d8e9-f0a1-4b2c-3d4e-5f6a7b8c9d0e', 'Service name is required', 'Validation', 'CreateService,UpdateService', 'en-US', false, NOW(), NOW()),
('c7d8e9f0-a1b2-4c3d-4e5f-6a7b8c9d0e1f', 'Invalid service price', 'Validation', 'CreateService,UpdateService', 'en-US', false, NOW(), NOW()),
('d8e9f0a1-b2c3-4d4e-5f6a-7b8c9d0e1f2a', 'Service not found', 'Business', 'GetServiceById,UpdateService,DeleteService', 'en-US', false, NOW(), NOW()),

-- Insert generic error messages
('e9f0a1b2-c3d4-4e5f-6a7b-8c9d0e1f2a3b', 'Operation failed', 'System', 'Multiple', 'en-US', false, NOW(), NOW()),
('f0a1b2c3-d4e5-4f6a-7b8c-9d0e1f2a3b4c', 'Validation failed', 'Validation', 'Multiple', 'en-US', false, NOW(), NOW()),
('a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5e', 'Unauthorized access', 'Security', 'Multiple', 'en-US', false, NOW(), NOW()),
('b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6f', 'Forbidden', 'Security', 'Multiple', 'en-US', false, NOW(), NOW());
