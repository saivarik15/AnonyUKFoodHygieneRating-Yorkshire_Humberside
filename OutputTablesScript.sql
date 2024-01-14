CREATE TABLE EstablishmentCollection (
    EstablishmentCollection_Id INT PRIMARY KEY,
    ExtractDate DATETIME,
    ItemCount INT,
    ReturnCode VARCHAR(20)
);


CREATE TABLE EstablishmentDetails (
    EstablishmentDetail_Id INT PRIMARY KEY,
    FHRSID INT,
    LocalAuthorityBusinessID VARCHAR(50),
    BusinessName VARCHAR(255),
    BusinessType VARCHAR(255),
    BusinessTypeID INT,
    AddressLine1 VARCHAR(255),
    AddressLine2 VARCHAR(255),
    AddressLine3 VARCHAR(255),
    AddressLine4 VARCHAR(255),
    PostCode VARCHAR(20),
    RatingValue INT,
    RatingKey VARCHAR(20),
    RatingDate DATETIME,
    LocalAuthorityCode INT,
    LocalAuthorityName VARCHAR(255),
    LocalAuthorityWebSite VARCHAR(255),
    LocalAuthorityEmailAddress VARCHAR(255),
    SchemeType VARCHAR(20),
    NewRatingPending INT,
    EstablishmentCollection_Id INT,
    FOREIGN KEY (EstablishmentCollection_Id) REFERENCES EstablishmentCollection(EstablishmentCollection_Id)
);


CREATE TABLE GeoCodeData (
    GeoCodeDataId INT PRIMARY KEY,
    Longitude FLOAT,
    Latitude FLOAT,
    EstablishmentDetail_Id INT,
    FOREIGN KEY (EstablishmentDetail_Id) REFERENCES EstablishmentDetails(EstablishmentDetail_Id)
);

CREATE TABLE HygieneScores (
    HygieneScoreId INT PRIMARY KEY,
    Hygiene INT,
    Structural INT,
    ConfidenceInManagement INT,
    EstablishmentDetail_Id INT,
    FOREIGN KEY (EstablishmentDetail_Id) REFERENCES EstablishmentDetails(EstablishmentDetail_Id)
);

