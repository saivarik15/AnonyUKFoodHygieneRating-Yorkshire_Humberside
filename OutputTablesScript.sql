CREATE TABLE EstablishmentCollection (
    EstablishmentCollection_Id INT PRIMARY KEY,
    ExtractDate DATETIME,
    ItemCount INT,
    ReturnCode VARCHAR(20)
);

CREATE TABLE  FoodHygDetailsRating(
    EstablishmentDetail_Id INT,
	FHRSID VARCHAR(100),
    BusinessName VARCHAR(255),
    BusinessType VARCHAR(255),
    BusinessTypeID INT,
    AddressLine1 VARCHAR(255),
    AddressLine2 VARCHAR(255),
    AddressLine3 VARCHAR(255),
    PostCode VARCHAR(10),
    RatingValue VARCHAR(100),
    RatingKey VARCHAR(20),
    RatingDate DATE,
	LocalAuthorityBusinessID VARCHAR(255),
    LocalAuthorityCode INT,
    LocalAuthorityName VARCHAR(255),
    LocalAuthorityWebSite VARCHAR(255),
    LocalAuthorityEmailAddress VARCHAR(255),
    HygieneScore INT,
    StructuralScore INT,
    ConfidenceInManagementScore INT,
    SchemeType VARCHAR(50),
    NewRatingPending BIT,
    Longitude VARCHAR(255),
    Latitude VARCHAR(255),
    AddressLine4 VARCHAR(255),
	EstablishmentCollection_Id INT
) ;
