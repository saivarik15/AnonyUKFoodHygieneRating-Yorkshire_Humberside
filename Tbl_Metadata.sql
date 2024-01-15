

-- Create Metadata Table
CREATE TABLE Tbl_metadata (
Load_Id INT IDENTITY(1,1) PRIMARY KEY,
LoadName VARCHAR(255) NOT NULL,
description TEXT,
source_location VARCHAR(255),
raw_file_loacation VARCHAR(255),
destination_location VARCHAR(255),
File_type VARCHAR(50),
creation_date DATE,
last_update_date DATE,
creator_owner VARCHAR(255),
fields_name VARCHAR(1000),
version_info VARCHAR(50),
related_datasets VARCHAR(1000),
documentation_link VARCHAR(255),
license_info VARCHAR(1000)
);

-- Add Index on Dataset Name for Faster Lookups
CREATE INDEX idx_dataset_name ON Tbl_metadata (Loadname);

-- Add Index on Creator/Owner for Faster Lookups
CREATE INDEX idx_creator_owner ON Tbl_metadata (creator_owner);

