-- Seed Services table
TRUNCATE TABLE "Services" RESTART IDENTITY CASCADE;
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (001, 'Battery Replacement', 'repair', 313.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (001, 'Battery Replacement', 'repair', 931.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (001, 'Battery Replacement', 'repair', 356.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (001, 'Transmission Repair', 'repair', 1979.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (001, 'Wheel Alignment', 'maintenance', 1484.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (001, 'Transmission Repair', 'repair', 2294.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (001, 'Engine Diagnostics', 'diagnostics', 2561.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (002, 'Oil Change', 'maintenance', 1986.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (002, 'Transmission Repair', 'repair', 2405.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (002, 'Wheel Alignment', 'maintenance', 2946.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (002, 'Battery Replacement', 'repair', 1966.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (002, 'Wheel Alignment', 'maintenance', 1552.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (002, 'Battery Replacement', 'repair', 2917.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (003, 'Battery Replacement', 'repair', 2277.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (003, 'Wheel Alignment', 'maintenance', 1872.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (003, 'Engine Diagnostics', 'diagnostics', 1411.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (003, 'Brake Pad Replacement', 'repair', 985.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (003, 'Wheel Alignment', 'maintenance', 1752.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (003, 'Wheel Alignment', 'maintenance', 912.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (003, 'Transmission Repair', 'repair', 1432.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (004, 'EV Battery Check', 'ev', 201.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (004, 'Battery Replacement', 'repair', 1060.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (004, 'EV Battery Check', 'ev', 2575.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (004, 'Wheel Alignment', 'maintenance', 1519.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (004, 'Engine Diagnostics', 'diagnostics', 2011.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (004, 'Brake Pad Replacement', 'repair', 2293.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (004, 'EV Battery Check', 'ev', 895.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (005, 'Battery Replacement', 'repair', 2311.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (005, 'Wheel Alignment', 'maintenance', 2736.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (005, 'Oil Change', 'maintenance', 1162.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (005, 'Battery Replacement', 'repair', 1120.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (005, 'Brake Pad Replacement', 'repair', 300.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (006, 'Engine Diagnostics', 'diagnostics', 2703.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (006, 'Engine Diagnostics', 'diagnostics', 1897.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (006, 'Transmission Repair', 'repair', 996.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (006, 'Wheel Alignment', 'maintenance', 1772.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (006, 'Engine Diagnostics', 'diagnostics', 1199.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (007, 'Wheel Alignment', 'maintenance', 222.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (007, 'EV Battery Check', 'ev', 1941.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (007, 'Brake Pad Replacement', 'repair', 2321.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (007, 'Oil Change', 'maintenance', 2483.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (007, 'EV Battery Check', 'ev', 697.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (007, 'Brake Pad Replacement', 'repair', 2103.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (007, 'Transmission Repair', 'repair', 2489.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (008, 'EV Battery Check', 'ev', 2012.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (008, 'EV Battery Check', 'ev', 2267.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (008, 'EV Battery Check', 'ev', 2444.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (008, 'Brake Pad Replacement', 'repair', 2144.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (008, 'Battery Replacement', 'repair', 1212.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (008, 'Battery Replacement', 'repair', 2335.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (009, 'Brake Pad Replacement', 'repair', 1324.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (009, 'Oil Change', 'maintenance', 1370.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (009, 'Battery Replacement', 'repair', 1575.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (009, 'Transmission Repair', 'repair', 530.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (009, 'Brake Pad Replacement', 'repair', 1147.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (009, 'Wheel Alignment', 'maintenance', 825.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (009, 'Brake Pad Replacement', 'repair', 463.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (010, 'Battery Replacement', 'repair', 2422.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (010, 'Engine Diagnostics', 'diagnostics', 455.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (010, 'EV Battery Check', 'ev', 1920.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (010, 'EV Battery Check', 'ev', 2592.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (010, 'Oil Change', 'maintenance', 2558.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (010, 'Engine Diagnostics', 'diagnostics', 224.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (011, 'EV Battery Check', 'ev', 1797.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (011, 'Transmission Repair', 'repair', 2436.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (011, 'Brake Pad Replacement', 'repair', 2199.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (011, 'Battery Replacement', 'repair', 1985.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (011, 'Oil Change', 'maintenance', 1792.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (011, 'Wheel Alignment', 'maintenance', 2981.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (012, 'Brake Pad Replacement', 'repair', 2114.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (012, 'Transmission Repair', 'repair', 2387.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (012, 'Engine Diagnostics', 'diagnostics', 2624.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (012, 'Wheel Alignment', 'maintenance', 311.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (012, 'Wheel Alignment', 'maintenance', 1955.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (012, 'EV Battery Check', 'ev', 2091.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (012, 'Oil Change', 'maintenance', 1265.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (013, 'Brake Pad Replacement', 'repair', 2062.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (013, 'Battery Replacement', 'repair', 1752.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (013, 'EV Battery Check', 'ev', 1926.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (013, 'EV Battery Check', 'ev', 535.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (013, 'Oil Change', 'maintenance', 2409.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (013, 'Battery Replacement', 'repair', 1118.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (014, 'EV Battery Check', 'ev', 2869.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (014, 'EV Battery Check', 'ev', 327.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (014, 'Brake Pad Replacement', 'repair', 283.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (014, 'Brake Pad Replacement', 'repair', 1177.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (014, 'Engine Diagnostics', 'diagnostics', 2942.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (015, 'Brake Pad Replacement', 'repair', 2104.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (015, 'Battery Replacement', 'repair', 1710.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (015, 'Transmission Repair', 'repair', 2687.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (015, 'Wheel Alignment', 'maintenance', 669.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (015, 'Battery Replacement', 'repair', 642.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (015, 'Oil Change', 'maintenance', 1477.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (015, 'Wheel Alignment', 'maintenance', 1737.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (016, 'Brake Pad Replacement', 'repair', 511.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (016, 'Wheel Alignment', 'maintenance', 2769.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (016, 'Oil Change', 'maintenance', 1435.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (016, 'Transmission Repair', 'repair', 695.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (016, 'EV Battery Check', 'ev', 368.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (016, 'Transmission Repair', 'repair', 1954.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (016, 'Battery Replacement', 'repair', 482.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (017, 'Battery Replacement', 'repair', 251.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (017, 'EV Battery Check', 'ev', 2207.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (017, 'Engine Diagnostics', 'diagnostics', 1683.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (017, 'EV Battery Check', 'ev', 2083.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (017, 'Brake Pad Replacement', 'repair', 1983.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (017, 'Wheel Alignment', 'maintenance', 2337.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (017, 'Battery Replacement', 'repair', 2722.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (018, 'Engine Diagnostics', 'diagnostics', 1984.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (018, 'Transmission Repair', 'repair', 1299.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (018, 'EV Battery Check', 'ev', 1205.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (018, 'Battery Replacement', 'repair', 2046.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (018, 'EV Battery Check', 'ev', 2103.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (018, 'Transmission Repair', 'repair', 2936.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (019, 'Oil Change', 'maintenance', 2224.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (019, 'Brake Pad Replacement', 'repair', 2197.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (019, 'Battery Replacement', 'repair', 1258.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (019, 'Battery Replacement', 'repair', 2641.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (019, 'Battery Replacement', 'repair', 2476.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (019, 'Transmission Repair', 'repair', 982.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (020, 'Wheel Alignment', 'maintenance', 1864.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (020, 'Transmission Repair', 'repair', 1184.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (020, 'Engine Diagnostics', 'diagnostics', 2845.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (020, 'Engine Diagnostics', 'diagnostics', 2035.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (020, 'Oil Change', 'maintenance', 1405.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (021, 'Wheel Alignment', 'maintenance', 1196.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (021, 'Wheel Alignment', 'maintenance', 2582.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (021, 'Engine Diagnostics', 'diagnostics', 2467.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (021, 'Battery Replacement', 'repair', 1942.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (021, 'Transmission Repair', 'repair', 1554.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (021, 'Wheel Alignment', 'maintenance', 2058.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (022, 'Battery Replacement', 'repair', 1144.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (022, 'Wheel Alignment', 'maintenance', 988.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (022, 'Oil Change', 'maintenance', 2394.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (022, 'Brake Pad Replacement', 'repair', 984.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (022, 'Wheel Alignment', 'maintenance', 2183.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (022, 'Wheel Alignment', 'maintenance', 2614.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (023, 'Battery Replacement', 'repair', 611.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (023, 'Battery Replacement', 'repair', 1131.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (023, 'Brake Pad Replacement', 'repair', 1438.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (023, 'Wheel Alignment', 'maintenance', 2387.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (023, 'Battery Replacement', 'repair', 386.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (023, 'Transmission Repair', 'repair', 1396.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (023, 'Brake Pad Replacement', 'repair', 2812.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (024, 'EV Battery Check', 'ev', 250.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (024, 'Battery Replacement', 'repair', 2122.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (024, 'Engine Diagnostics', 'diagnostics', 1595.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (024, 'Oil Change', 'maintenance', 1234.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (024, 'Oil Change', 'maintenance', 467.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (025, 'Oil Change', 'maintenance', 2563.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (025, 'Wheel Alignment', 'maintenance', 419.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (025, 'Brake Pad Replacement', 'repair', 2505.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (025, 'Oil Change', 'maintenance', 1216.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (025, 'Transmission Repair', 'repair', 1904.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (025, 'Transmission Repair', 'repair', 2733.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (026, 'Engine Diagnostics', 'diagnostics', 2045.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (026, 'Battery Replacement', 'repair', 2610.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (026, 'Battery Replacement', 'repair', 2529.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (026, 'Oil Change', 'maintenance', 2697.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (026, 'Oil Change', 'maintenance', 1051.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (026, 'Brake Pad Replacement', 'repair', 1283.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (026, 'Oil Change', 'maintenance', 843.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (027, 'Transmission Repair', 'repair', 507.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (027, 'Oil Change', 'maintenance', 1873.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (027, 'Wheel Alignment', 'maintenance', 2632.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (027, 'Battery Replacement', 'repair', 333.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (027, 'Battery Replacement', 'repair', 1358.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (028, 'Oil Change', 'maintenance', 1156.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (028, 'EV Battery Check', 'ev', 2760.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (028, 'Wheel Alignment', 'maintenance', 1010.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (028, 'Oil Change', 'maintenance', 2430.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (028, 'Wheel Alignment', 'maintenance', 810.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (028, 'EV Battery Check', 'ev', 782.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (029, 'Brake Pad Replacement', 'repair', 1459.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (029, 'Wheel Alignment', 'maintenance', 2531.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (029, 'Engine Diagnostics', 'diagnostics', 709.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (029, 'Wheel Alignment', 'maintenance', 1445.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (029, 'Engine Diagnostics', 'diagnostics', 1315.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (030, 'Engine Diagnostics', 'diagnostics', 1993.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (030, 'Transmission Repair', 'repair', 363.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (030, 'Wheel Alignment', 'maintenance', 1520.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (030, 'Battery Replacement', 'repair', 305.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (030, 'Brake Pad Replacement', 'repair', 2961.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (030, 'Transmission Repair', 'repair', 284.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (030, 'EV Battery Check', 'ev', 1303.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (031, 'EV Battery Check', 'ev', 917.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (031, 'Transmission Repair', 'repair', 2868.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (031, 'Battery Replacement', 'repair', 943.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (031, 'Engine Diagnostics', 'diagnostics', 2800.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (031, 'Oil Change', 'maintenance', 2125.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (032, 'Battery Replacement', 'repair', 1515.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (032, 'Oil Change', 'maintenance', 858.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (032, 'Engine Diagnostics', 'diagnostics', 2229.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (032, 'Wheel Alignment', 'maintenance', 1840.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (032, 'Oil Change', 'maintenance', 2062.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (032, 'Battery Replacement', 'repair', 1233.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (033, 'EV Battery Check', 'ev', 1855.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (033, 'EV Battery Check', 'ev', 204.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (033, 'EV Battery Check', 'ev', 2422.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (033, 'Engine Diagnostics', 'diagnostics', 422.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (033, 'Transmission Repair', 'repair', 1681.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (034, 'Wheel Alignment', 'maintenance', 2010.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (034, 'Brake Pad Replacement', 'repair', 1293.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (034, 'Brake Pad Replacement', 'repair', 1379.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (034, 'Wheel Alignment', 'maintenance', 2185.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (034, 'Oil Change', 'maintenance', 2780.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (034, 'EV Battery Check', 'ev', 1180.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (035, 'Battery Replacement', 'repair', 2456.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (035, 'Transmission Repair', 'repair', 1871.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (035, 'Brake Pad Replacement', 'repair', 664.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (035, 'Oil Change', 'maintenance', 2853.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (035, 'Engine Diagnostics', 'diagnostics', 1395.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (036, 'Battery Replacement', 'repair', 1901.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (036, 'Engine Diagnostics', 'diagnostics', 1198.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (036, 'Transmission Repair', 'repair', 792.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (036, 'Brake Pad Replacement', 'repair', 2655.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (036, 'Wheel Alignment', 'maintenance', 759.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (036, 'Battery Replacement', 'repair', 1899.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (036, 'EV Battery Check', 'ev', 2279.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (037, 'Battery Replacement', 'repair', 1422.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (037, 'Transmission Repair', 'repair', 2903.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (037, 'EV Battery Check', 'ev', 808.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (037, 'Transmission Repair', 'repair', 2183.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (037, 'Battery Replacement', 'repair', 2460.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (038, 'Engine Diagnostics', 'diagnostics', 1518.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (038, 'Wheel Alignment', 'maintenance', 1178.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (038, 'Engine Diagnostics', 'diagnostics', 1156.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (038, 'Oil Change', 'maintenance', 1503.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (038, 'Engine Diagnostics', 'diagnostics', 1761.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (038, 'Wheel Alignment', 'maintenance', 2870.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (039, 'Oil Change', 'maintenance', 717.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (039, 'Transmission Repair', 'repair', 1559.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (039, 'EV Battery Check', 'ev', 2003.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (039, 'Transmission Repair', 'repair', 2071.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (039, 'Wheel Alignment', 'maintenance', 790.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (039, 'EV Battery Check', 'ev', 2881.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (040, 'Engine Diagnostics', 'diagnostics', 1285.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (040, 'Transmission Repair', 'repair', 1828.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (040, 'Oil Change', 'maintenance', 1545.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (040, 'EV Battery Check', 'ev', 2385.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (040, 'Battery Replacement', 'repair', 2767.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (041, 'EV Battery Check', 'ev', 2416.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (041, 'Transmission Repair', 'repair', 480.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (041, 'Wheel Alignment', 'maintenance', 1377.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (041, 'Wheel Alignment', 'maintenance', 570.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (041, 'Oil Change', 'maintenance', 2795.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (041, 'EV Battery Check', 'ev', 611.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (042, 'Wheel Alignment', 'maintenance', 1426.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (042, 'Oil Change', 'maintenance', 1528.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (042, 'Battery Replacement', 'repair', 1668.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (042, 'Engine Diagnostics', 'diagnostics', 796.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (042, 'Transmission Repair', 'repair', 1887.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (043, 'EV Battery Check', 'ev', 937.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (043, 'Brake Pad Replacement', 'repair', 523.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (043, 'EV Battery Check', 'ev', 1766.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (043, 'Wheel Alignment', 'maintenance', 1186.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (043, 'Transmission Repair', 'repair', 786.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (043, 'Engine Diagnostics', 'diagnostics', 2812.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (043, 'Engine Diagnostics', 'diagnostics', 1245.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (044, 'EV Battery Check', 'ev', 2105.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (044, 'Wheel Alignment', 'maintenance', 2438.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (044, 'Oil Change', 'maintenance', 2009.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (044, 'Transmission Repair', 'repair', 1425.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (044, 'Engine Diagnostics', 'diagnostics', 1224.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (045, 'Brake Pad Replacement', 'repair', 1775.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (045, 'Oil Change', 'maintenance', 1171.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (045, 'Transmission Repair', 'repair', 1670.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (045, 'Battery Replacement', 'repair', 1409.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (045, 'EV Battery Check', 'ev', 2896.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (045, 'Battery Replacement', 'repair', 233.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (046, 'EV Battery Check', 'ev', 400.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (046, 'Wheel Alignment', 'maintenance', 2234.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (046, 'EV Battery Check', 'ev', 1142.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (046, 'EV Battery Check', 'ev', 1643.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (046, 'Wheel Alignment', 'maintenance', 978.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (046, 'Battery Replacement', 'repair', 2976.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (046, 'EV Battery Check', 'ev', 2900.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (047, 'Wheel Alignment', 'maintenance', 597.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (047, 'Wheel Alignment', 'maintenance', 361.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (047, 'EV Battery Check', 'ev', 2005.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (047, 'Transmission Repair', 'repair', 1694.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (047, 'Brake Pad Replacement', 'repair', 569.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (048, 'Wheel Alignment', 'maintenance', 1901.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (048, 'Brake Pad Replacement', 'repair', 741.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (048, 'Battery Replacement', 'repair', 2374.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (048, 'Battery Replacement', 'repair', 873.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (048, 'EV Battery Check', 'ev', 2173.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (048, 'Wheel Alignment', 'maintenance', 1587.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (049, 'Oil Change', 'maintenance', 776.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (049, 'EV Battery Check', 'ev', 2970.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (049, 'Wheel Alignment', 'maintenance', 1827.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (049, 'Battery Replacement', 'repair', 569.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (049, 'Oil Change', 'maintenance', 1283.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (049, 'Oil Change', 'maintenance', 2062.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (050, 'Wheel Alignment', 'maintenance', 2953.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (050, 'Transmission Repair', 'repair', 1760.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (050, 'Battery Replacement', 'repair', 643.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (050, 'Brake Pad Replacement', 'repair', 2131.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (050, 'Transmission Repair', 'repair', 2499.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (050, 'Transmission Repair', 'repair', 1106.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (050, 'Oil Change', 'maintenance', 2802.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (051, 'Battery Replacement', 'repair', 2859.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (051, 'Oil Change', 'maintenance', 772.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (051, 'Oil Change', 'maintenance', 1446.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (051, 'Oil Change', 'maintenance', 598.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (051, 'Transmission Repair', 'repair', 755.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (051, 'Engine Diagnostics', 'diagnostics', 1719.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (051, 'Wheel Alignment', 'maintenance', 2412.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (052, 'Wheel Alignment', 'maintenance', 832.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (052, 'Wheel Alignment', 'maintenance', 605.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (052, 'Transmission Repair', 'repair', 1871.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (052, 'Oil Change', 'maintenance', 1717.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (052, 'Engine Diagnostics', 'diagnostics', 2021.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (052, 'EV Battery Check', 'ev', 1685.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (052, 'Wheel Alignment', 'maintenance', 1704.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (053, 'Battery Replacement', 'repair', 448.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (053, 'Battery Replacement', 'repair', 977.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (053, 'EV Battery Check', 'ev', 2062.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (053, 'Wheel Alignment', 'maintenance', 1068.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (053, 'Wheel Alignment', 'maintenance', 2645.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (053, 'Oil Change', 'maintenance', 1566.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (053, 'Brake Pad Replacement', 'repair', 2512.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (054, 'EV Battery Check', 'ev', 2470.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (054, 'Transmission Repair', 'repair', 1084.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (054, 'Battery Replacement', 'repair', 804.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (054, 'Oil Change', 'maintenance', 1335.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (054, 'Brake Pad Replacement', 'repair', 2412.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (055, 'Oil Change', 'maintenance', 2907.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (055, 'Brake Pad Replacement', 'repair', 260.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (055, 'EV Battery Check', 'ev', 1174.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (055, 'Battery Replacement', 'repair', 264.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (055, 'Battery Replacement', 'repair', 414.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (056, 'Engine Diagnostics', 'diagnostics', 2354.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (056, 'Wheel Alignment', 'maintenance', 460.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (056, 'Engine Diagnostics', 'diagnostics', 1682.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (056, 'Transmission Repair', 'repair', 646.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (056, 'Transmission Repair', 'repair', 1107.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (056, 'Oil Change', 'maintenance', 2898.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (056, 'Battery Replacement', 'repair', 2076.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (057, 'Oil Change', 'maintenance', 2161.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (057, 'Engine Diagnostics', 'diagnostics', 642.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (057, 'Wheel Alignment', 'maintenance', 2016.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (057, 'Oil Change', 'maintenance', 1519.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (057, 'Brake Pad Replacement', 'repair', 469.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (058, 'Transmission Repair', 'repair', 2793.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (058, 'Transmission Repair', 'repair', 1531.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (058, 'Transmission Repair', 'repair', 2373.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (058, 'Engine Diagnostics', 'diagnostics', 2270.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (058, 'Engine Diagnostics', 'diagnostics', 606.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (058, 'Oil Change', 'maintenance', 2881.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (059, 'Wheel Alignment', 'maintenance', 1080.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (059, 'Engine Diagnostics', 'diagnostics', 1135.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (059, 'Battery Replacement', 'repair', 2057.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (059, 'Engine Diagnostics', 'diagnostics', 589.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (059, 'Engine Diagnostics', 'diagnostics', 1480.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (059, 'Battery Replacement', 'repair', 1733.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (059, 'Wheel Alignment', 'maintenance', 2142.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (060, 'EV Battery Check', 'ev', 549.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (060, 'Engine Diagnostics', 'diagnostics', 595.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (060, 'Wheel Alignment', 'maintenance', 1726.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (060, 'Transmission Repair', 'repair', 445.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (060, 'Transmission Repair', 'repair', 2500.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (061, 'Oil Change', 'maintenance', 1882.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (061, 'EV Battery Check', 'ev', 2925.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (061, 'EV Battery Check', 'ev', 410.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (061, 'Transmission Repair', 'repair', 1479.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (061, 'Oil Change', 'maintenance', 2567.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (061, 'Brake Pad Replacement', 'repair', 833.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (061, 'Engine Diagnostics', 'diagnostics', 1118.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (062, 'EV Battery Check', 'ev', 2478.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (062, 'Oil Change', 'maintenance', 1341.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (062, 'Brake Pad Replacement', 'repair', 1957.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (062, 'EV Battery Check', 'ev', 2746.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (062, 'Wheel Alignment', 'maintenance', 2832.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (062, 'Oil Change', 'maintenance', 2694.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (063, 'Battery Replacement', 'repair', 318.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (063, 'Battery Replacement', 'repair', 1465.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (063, 'Battery Replacement', 'repair', 225.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (063, 'EV Battery Check', 'ev', 786.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (063, 'Wheel Alignment', 'maintenance', 1841.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (063, 'Brake Pad Replacement', 'repair', 2793.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (063, 'Oil Change', 'maintenance', 2372.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (064, 'Engine Diagnostics', 'diagnostics', 2058.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (064, 'Brake Pad Replacement', 'repair', 1715.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (064, 'Wheel Alignment', 'maintenance', 1528.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (064, 'Transmission Repair', 'repair', 547.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (064, 'Brake Pad Replacement', 'repair', 844.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (064, 'Oil Change', 'maintenance', 2960.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (065, 'Engine Diagnostics', 'diagnostics', 2911.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (065, 'Engine Diagnostics', 'diagnostics', 2686.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (065, 'Engine Diagnostics', 'diagnostics', 1318.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (065, 'EV Battery Check', 'ev', 2298.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (065, 'Battery Replacement', 'repair', 1960.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (065, 'Battery Replacement', 'repair', 2977.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (066, 'Engine Diagnostics', 'diagnostics', 2358.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (066, 'Battery Replacement', 'repair', 386.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (066, 'Engine Diagnostics', 'diagnostics', 2654.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (066, 'Oil Change', 'maintenance', 1037.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (066, 'Brake Pad Replacement', 'repair', 762.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (066, 'Battery Replacement', 'repair', 1543.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (066, 'Oil Change', 'maintenance', 2237.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (067, 'Brake Pad Replacement', 'repair', 729.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (067, 'Transmission Repair', 'repair', 1142.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (067, 'Transmission Repair', 'repair', 2936.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (067, 'Oil Change', 'maintenance', 1826.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (067, 'Oil Change', 'maintenance', 1986.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (067, 'Engine Diagnostics', 'diagnostics', 518.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (068, 'Engine Diagnostics', 'diagnostics', 2548.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (068, 'Wheel Alignment', 'maintenance', 2822.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (068, 'Battery Replacement', 'repair', 671.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (068, 'Oil Change', 'maintenance', 1530.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (068, 'EV Battery Check', 'ev', 2731.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (068, 'EV Battery Check', 'ev', 1682.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (068, 'Engine Diagnostics', 'diagnostics', 633.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (069, 'Transmission Repair', 'repair', 1840.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (069, 'Oil Change', 'maintenance', 1821.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (069, 'Wheel Alignment', 'maintenance', 1590.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (069, 'Battery Replacement', 'repair', 888.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (069, 'Transmission Repair', 'repair', 2793.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (069, 'Transmission Repair', 'repair', 2288.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (070, 'Battery Replacement', 'repair', 2843.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (070, 'Brake Pad Replacement', 'repair', 621.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (070, 'Battery Replacement', 'repair', 1008.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (070, 'Transmission Repair', 'repair', 826.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (070, 'Oil Change', 'maintenance', 925.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (070, 'Engine Diagnostics', 'diagnostics', 2100.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (071, 'Engine Diagnostics', 'diagnostics', 2989.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (071, 'Wheel Alignment', 'maintenance', 2802.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (071, 'Battery Replacement', 'repair', 2769.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (071, 'Brake Pad Replacement', 'repair', 2001.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (071, 'Engine Diagnostics', 'diagnostics', 2011.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (071, 'Battery Replacement', 'repair', 1325.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (071, 'Oil Change', 'maintenance', 1641.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (072, 'Battery Replacement', 'repair', 2091.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (072, 'Oil Change', 'maintenance', 433.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (072, 'EV Battery Check', 'ev', 1375.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (072, 'Wheel Alignment', 'maintenance', 569.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (072, 'Transmission Repair', 'repair', 2276.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (073, 'Transmission Repair', 'repair', 2470.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (073, 'Oil Change', 'maintenance', 2042.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (073, 'Wheel Alignment', 'maintenance', 971.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (073, 'Transmission Repair', 'repair', 2148.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (073, 'Brake Pad Replacement', 'repair', 453.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (073, 'Oil Change', 'maintenance', 1606.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (074, 'Transmission Repair', 'repair', 2846.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (074, 'Oil Change', 'maintenance', 1214.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (074, 'Engine Diagnostics', 'diagnostics', 1999.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (074, 'Transmission Repair', 'repair', 2697.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (074, 'Battery Replacement', 'repair', 1727.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (075, 'Engine Diagnostics', 'diagnostics', 1585.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (075, 'Transmission Repair', 'repair', 414.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (075, 'Wheel Alignment', 'maintenance', 1570.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (075, 'Battery Replacement', 'repair', 587.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (075, 'Wheel Alignment', 'maintenance', 1783.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (075, 'Battery Replacement', 'repair', 2889.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (076, 'Battery Replacement', 'repair', 533.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (076, 'Wheel Alignment', 'maintenance', 779.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (076, 'Battery Replacement', 'repair', 2887.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (076, 'Wheel Alignment', 'maintenance', 1805.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (076, 'Transmission Repair', 'repair', 547.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (077, 'Engine Diagnostics', 'diagnostics', 2835.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (077, 'EV Battery Check', 'ev', 723.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (077, 'Wheel Alignment', 'maintenance', 2356.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (077, 'Wheel Alignment', 'maintenance', 2946.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (077, 'Transmission Repair', 'repair', 1682.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (077, 'Battery Replacement', 'repair', 1465.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (077, 'Brake Pad Replacement', 'repair', 1599.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (078, 'Brake Pad Replacement', 'repair', 763.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (078, 'Oil Change', 'maintenance', 1411.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (078, 'Transmission Repair', 'repair', 2410.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (078, 'Transmission Repair', 'repair', 354.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (078, 'Battery Replacement', 'repair', 2731.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (079, 'Engine Diagnostics', 'diagnostics', 831.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (079, 'Brake Pad Replacement', 'repair', 2758.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (079, 'Wheel Alignment', 'maintenance', 1992.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (079, 'Engine Diagnostics', 'diagnostics', 1692.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (079, 'Wheel Alignment', 'maintenance', 1172.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (079, 'Transmission Repair', 'repair', 1367.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (079, 'EV Battery Check', 'ev', 2038.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (080, 'Brake Pad Replacement', 'repair', 1467.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (080, 'EV Battery Check', 'ev', 994.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (080, 'Wheel Alignment', 'maintenance', 2536.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (080, 'Engine Diagnostics', 'diagnostics', 1354.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (080, 'Transmission Repair', 'repair', 2360.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (080, 'Brake Pad Replacement', 'repair', 1017.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (080, 'Brake Pad Replacement', 'repair', 1224.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (081, 'Engine Diagnostics', 'diagnostics', 1720.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (081, 'Oil Change', 'maintenance', 2313.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (081, 'Battery Replacement', 'repair', 543.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (081, 'Battery Replacement', 'repair', 2040.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (081, 'Brake Pad Replacement', 'repair', 1991.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (081, 'Brake Pad Replacement', 'repair', 2047.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (081, 'Oil Change', 'maintenance', 1899.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (082, 'Transmission Repair', 'repair', 1731.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (082, 'Engine Diagnostics', 'diagnostics', 534.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (082, 'Brake Pad Replacement', 'repair', 315.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (082, 'Oil Change', 'maintenance', 2862.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (082, 'EV Battery Check', 'ev', 798.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (082, 'Oil Change', 'maintenance', 1375.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (083, 'EV Battery Check', 'ev', 768.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (083, 'Engine Diagnostics', 'diagnostics', 2037.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (083, 'Oil Change', 'maintenance', 524.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (083, 'Battery Replacement', 'repair', 1083.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (083, 'Transmission Repair', 'repair', 2693.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (083, 'Engine Diagnostics', 'diagnostics', 655.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (083, 'Brake Pad Replacement', 'repair', 1433.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (084, 'Brake Pad Replacement', 'repair', 1919.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (084, 'EV Battery Check', 'ev', 2751.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (084, 'Oil Change', 'maintenance', 654.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (084, 'Transmission Repair', 'repair', 2395.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (084, 'Wheel Alignment', 'maintenance', 2310.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (085, 'Wheel Alignment', 'maintenance', 788.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (085, 'Engine Diagnostics', 'diagnostics', 206.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (085, 'Battery Replacement', 'repair', 1185.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (085, 'Engine Diagnostics', 'diagnostics', 967.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (085, 'Wheel Alignment', 'maintenance', 550.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (086, 'Oil Change', 'maintenance', 2354.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (086, 'Transmission Repair', 'repair', 2279.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (086, 'Oil Change', 'maintenance', 1799.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (086, 'Oil Change', 'maintenance', 2803.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (086, 'Battery Replacement', 'repair', 1238.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (086, 'Oil Change', 'maintenance', 1662.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (087, 'Brake Pad Replacement', 'repair', 2891.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (087, 'Oil Change', 'maintenance', 2583.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (087, 'EV Battery Check', 'ev', 1561.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (087, 'Oil Change', 'maintenance', 1643.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (087, 'Battery Replacement', 'repair', 2832.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (087, 'EV Battery Check', 'ev', 2103.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (088, 'Wheel Alignment', 'maintenance', 946.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (088, 'Oil Change', 'maintenance', 2074.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (088, 'Battery Replacement', 'repair', 1025.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (088, 'EV Battery Check', 'ev', 1017.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (088, 'Battery Replacement', 'repair', 1470.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (088, 'Engine Diagnostics', 'diagnostics', 2424.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (089, 'Oil Change', 'maintenance', 2849.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (089, 'Battery Replacement', 'repair', 1662.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (089, 'EV Battery Check', 'ev', 2885.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (089, 'Battery Replacement', 'repair', 709.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (089, 'Engine Diagnostics', 'diagnostics', 1838.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (089, 'Engine Diagnostics', 'diagnostics', 1783.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (090, 'Engine Diagnostics', 'diagnostics', 2237.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (090, 'EV Battery Check', 'ev', 2326.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (090, 'EV Battery Check', 'ev', 538.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (090, 'Engine Diagnostics', 'diagnostics', 523.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (090, 'Transmission Repair', 'repair', 939.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (091, 'Battery Replacement', 'repair', 620.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (091, 'Battery Replacement', 'repair', 2907.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (091, 'Battery Replacement', 'repair', 2026.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (091, 'Wheel Alignment', 'maintenance', 1945.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (091, 'Wheel Alignment', 'maintenance', 2018.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (091, 'Engine Diagnostics', 'diagnostics', 373.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (092, 'Transmission Repair', 'repair', 1981.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (092, 'Wheel Alignment', 'maintenance', 434.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (092, 'Wheel Alignment', 'maintenance', 2811.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (092, 'Battery Replacement', 'repair', 2301.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (092, 'Wheel Alignment', 'maintenance', 855.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (092, 'Brake Pad Replacement', 'repair', 2688.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (093, 'Oil Change', 'maintenance', 717.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (093, 'Brake Pad Replacement', 'repair', 2842.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (093, 'Battery Replacement', 'repair', 1768.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (093, 'Oil Change', 'maintenance', 2678.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (093, 'Wheel Alignment', 'maintenance', 2042.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (093, 'Battery Replacement', 'repair', 2018.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (094, 'Brake Pad Replacement', 'repair', 2368.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (094, 'Engine Diagnostics', 'diagnostics', 1487.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (094, 'Battery Replacement', 'repair', 1222.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (094, 'Oil Change', 'maintenance', 962.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (094, 'Transmission Repair', 'repair', 1785.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (094, 'Oil Change', 'maintenance', 1272.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (094, 'Wheel Alignment', 'maintenance', 2027.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (095, 'Battery Replacement', 'repair', 2211.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (095, 'Oil Change', 'maintenance', 755.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (095, 'Engine Diagnostics', 'diagnostics', 907.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (095, 'Engine Diagnostics', 'diagnostics', 559.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (095, 'EV Battery Check', 'ev', 1509.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (095, 'Battery Replacement', 'repair', 465.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (095, 'Transmission Repair', 'repair', 1389.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (096, 'Wheel Alignment', 'maintenance', 2812.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (096, 'EV Battery Check', 'ev', 1680.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (096, 'Brake Pad Replacement', 'repair', 697.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (096, 'EV Battery Check', 'ev', 768.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (096, 'EV Battery Check', 'ev', 2223.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (097, 'Transmission Repair', 'repair', 2544.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (097, 'Engine Diagnostics', 'diagnostics', 2459.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (097, 'Transmission Repair', 'repair', 553.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (097, 'Battery Replacement', 'repair', 1830.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (097, 'Wheel Alignment', 'maintenance', 2160.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (097, 'Engine Diagnostics', 'diagnostics', 1877.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (098, 'Brake Pad Replacement', 'repair', 1498.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (098, 'Oil Change', 'maintenance', 2043.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (098, 'Wheel Alignment', 'maintenance', 2319.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (098, 'Brake Pad Replacement', 'repair', 2458.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (098, 'Transmission Repair', 'repair', 945.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (099, 'Transmission Repair', 'repair', 426.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (099, 'Transmission Repair', 'repair', 826.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (099, 'Brake Pad Replacement', 'repair', 863.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (099, 'Wheel Alignment', 'maintenance', 1123.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (099, 'Transmission Repair', 'repair', 1363.0, 'basic', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (099, 'Battery Replacement', 'repair', 1004.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (100, 'Battery Replacement', 'repair', 712.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (100, 'Battery Replacement', 'repair', 2716.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (100, 'Oil Change', 'maintenance', 2258.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (100, 'Brake Pad Replacement', 'repair', 2624.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (100, 'Brake Pad Replacement', 'repair', 901.0, 'advanced', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (100, 'Transmission Repair', 'repair', 2678.0, 'intermediate', 'Professional service', 120, false);
INSERT INTO "Services" ("GarageId", "ServiceName", "Category", "AvgCostAed", "SkillLevel", "Description", "EstimatedDurationMinutes", "IsDeleted") 
        VALUES (100, 'EV Battery Check', 'ev', 2508.0, 'basic', 'Professional service', 120, false);
