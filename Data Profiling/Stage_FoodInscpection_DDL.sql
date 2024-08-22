--DDL Creation:


--Chicago
CREATE TABLE stage.stg_chicago_inspection_load (
    InspectionID INT,
    DBAName VARCHAR(79),
    AKAName VARCHAR(79),
    LicenseNumber INT,
    FacilityType VARCHAR(47),
    Risk VARCHAR(15),
    Address VARCHAR(51),
    City VARCHAR(20),
    State VARCHAR(2),
    Zip NUMERIC(5,0),
    InspectionDate_Str VARCHAR(12),
	InspectionDate VARCHAR(50),
    InspectionType VARCHAR(41),
    Results VARCHAR(20),
    Violations NVARCHAR(MAX),
    Latitude NUMERIC(18,6),
    Longitude NUMERIC(18,6),
    Location VARCHAR(40),
	dw_load_job_id VARCHAR(10),
	dw_load_workflow_name VARCHAR(50),
	dw_load_date DATETIME
);



--Dallas

CREATE TABLE stage.stg_dallas_inspection_load (
    RestaurantName VARCHAR(65),
    InspectionType VARCHAR(9),
	InspectionDate_Str VARCHAR(12),
    InspectionDate DATE,
    InspectionScore INT,
    StreetNumber INT,
    StreetName VARCHAR(25),
    StreetDirection VARCHAR(1),
    StreetType VARCHAR(4),
    StreetUnit VARCHAR(5),
    StreetAddress VARCHAR(37),
    ZipCode VARCHAR(10),

    ViolationDescription_1 VARCHAR(100),
    ViolationPoints_1 INT,
    ViolationDetail_1 VARCHAR(910),
    ViolationMemo_1 VARCHAR(2326),

    ViolationDescription_2 VARCHAR(100),
    ViolationPoints_2 INT,
    ViolationDetail_2 VARCHAR(910),
    ViolationMemo_2 VARCHAR(2569),

    ViolationDescription_3 VARCHAR(100),
    ViolationPoints_3 INT,
    ViolationDetail_3 VARCHAR(1043),
    ViolationMemo_3 VARCHAR(2397),

    ViolationDescription_4 VARCHAR(100),
    ViolationPoints_4 INT,
    ViolationDetail_4 VARCHAR(1018),
    ViolationMemo_4 VARCHAR(3214),

    ViolationDescription_5 VARCHAR(100),
    ViolationPoints_5 INT,
    ViolationDetail_5 VARCHAR(910),
    ViolationMemo_5 VARCHAR(1823),

    ViolationDescription_6 VARCHAR(100),
    ViolationPoints_6 INT,
    ViolationDetail_6 VARCHAR(1018),
    ViolationMemo_6 VARCHAR(1665),

    ViolationDescription_7 VARCHAR(100),
    ViolationPoints_7 INT,
    ViolationDetail_7 VARCHAR(1018),
    ViolationMemo_7 VARCHAR(1837),

    ViolationDescription_8 VARCHAR(100),
    ViolationPoints_8 INT,
    ViolationDetail_8 VARCHAR(1039),
    ViolationMemo_8 VARCHAR(1516),

    ViolationDescription_9 VARCHAR(100),
    ViolationPoints_9 INT,
    ViolationDetail_9 VARCHAR(910),
    ViolationMemo_9 VARCHAR(1584),

    ViolationDescription_10 VARCHAR(100),
    ViolationPoints_10 INT,
    ViolationDetail_10 VARCHAR(910),
    ViolationMemo_10 VARCHAR(2087),

    ViolationDescription_11 VARCHAR(100),
    ViolationPoints_11 INT,
    ViolationDetail_11 VARCHAR(910),
    ViolationMemo_11 VARCHAR(1325),

    ViolationDescription_12 VARCHAR(100),
    ViolationPoints_12 INT,
    ViolationDetail_12 VARCHAR(994),
    ViolationMemo_12 VARCHAR(502),

    ViolationDescription_13 VARCHAR(100),
    ViolationPoints_13 INT,
    ViolationDetail_13 VARCHAR(888),
    ViolationMemo_13 VARCHAR(881),

    ViolationDescription_14 VARCHAR(100),
    ViolationPoints_14 INT,
    ViolationDetail_14 VARCHAR(888),
    ViolationMemo_14 VARCHAR(818),

    ViolationDescription_15 VARCHAR(100),
    ViolationPoints_15 INT,
    ViolationDetail_15 VARCHAR(888),
    ViolationMemo_15 VARCHAR(818),

    ViolationDescription_16 VARCHAR(100),
    ViolationPoints_16 INT,
    ViolationDetail_16 VARCHAR(888),
    ViolationMemo_16 VARCHAR(397),

    ViolationDescription_17 VARCHAR(100),
    ViolationPoints_17 INT,
    ViolationDetail_17 VARCHAR(829),
    ViolationMemo_17 VARCHAR(225),

    ViolationDescription_18 VARCHAR(100),
    ViolationPoints_18 INT,
    ViolationDetail_18 VARCHAR(829),
    ViolationMemo_18 VARCHAR(230),

    ViolationDescription_19 VARCHAR(100),
    ViolationPoints_19 INT,
    ViolationDetail_19 VARCHAR(815),
    ViolationMemo_19 VARCHAR(245),

    ViolationDescription_20 VARCHAR(100),
    ViolationPoints_20 INT,
    ViolationDetail_20 VARCHAR(815),
    ViolationMemo_20 VARCHAR(247),

    ViolationDescription_21 VARCHAR(100),
    ViolationPoints_21 INT,
    ViolationDetail_21 VARCHAR(815),
    ViolationMemo_21 VARCHAR(211),

    ViolationDescription_22 VARCHAR(100),
    ViolationPoints_22 INT,
    ViolationDetail_22 VARCHAR(815),
    ViolationMemo_22 VARCHAR(374),

    ViolationDescription_23 VARCHAR(100),
    ViolationPoints_23 INT,
	ViolationDetail_23 VARCHAR(815),
    ViolationMemo_23 VARCHAR(103),

    ViolationDescription_24 VARCHAR(59),
    ViolationPoints_24 INT,
    ViolationDetail_24 VARCHAR(434),
    ViolationMemo_24 VARCHAR(186),

    ViolationDescription_25 VARCHAR(50),
    ViolationPoints_25 INT,
    ViolationDetail_25 VARCHAR(482),
    ViolationMemo_25 VARCHAR(171),
	
	InspectionMonth VARCHAR(8),
    InspectionYear VARCHAR(6),
    LatLongLocation VARCHAR(73),
	
	dw_load_job_id VARCHAR(10),
	dw_load_workflow_name VARCHAR(50),
	dw_load_date DATETIME
);