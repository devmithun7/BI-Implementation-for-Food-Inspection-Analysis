/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      FoodInspection_Processing.DM1
 *
 * Date Created : Sunday, June 30, 2024 07:58:00
 * Target DBMS : Microsoft SQL Server 2019
 */

USE FoodInspection
go
/* 
 * TABLE: dim_date 
 */

CREATE TABLE dim_date(
    dim_date_key             int              NOT NULL,
    date                     date             NOT NULL,
    day_of_week              numeric(1, 0)    NOT NULL,
    day_name                 varchar(20)      NOT NULL,
    day_of_year              numeric(3, 0)    NOT NULL,
    week_of_year             numeric(2, 0)    NOT NULL,
    month                    numeric(2, 0)    NOT NULL,
    month_name               varchar(12)      NOT NULL,
    quarter                  numeric(1, 0)    NOT NULL,
    quarter_name             varchar(2)       NOT NULL,
    season                   numeric(1, 0)    NOT NULL,
    season_name              varchar(10)      NOT NULL,
    year                     numeric(4, 0)    NOT NULL,
    is_weekend               bit              NOT NULL,
    dw_load_job_id           varchar(10)      NOT NULL,
    dw_load_workflow_name    varchar(50)      NOT NULL,
    dw_load_date             datetime         NOT NULL,
    CONSTRAINT PK6_1 PRIMARY KEY NONCLUSTERED (dim_date_key)
)

go


IF OBJECT_ID('dim_date') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_date >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_date >>>'
go

/* 
 * TABLE: dim_facility_type 
 */

CREATE TABLE dim_facility_type(
    dim_facility_type_id_sk    int            NOT NULL,
    facillity_type             varchar(50)    NOT NULL,
    data_source_id             int            NOT NULL,
    dw_load_job_id             varchar(10)    NOT NULL,
    dw_load_workflow_name      varchar(50)    NOT NULL,
    dw_load_date               datetime       NOT NULL,
    CONSTRAINT PK10 PRIMARY KEY NONCLUSTERED (dim_facility_type_id_sk)
)

go


IF OBJECT_ID('dim_facility_type') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_facility_type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_facility_type >>>'
go

/* 
 * TABLE: dim_geo 
 */

CREATE TABLE dim_geo(
    dim_geo_id_sk            int              NOT NULL,
    street_address           varchar(100)     NULL,
    city                     varchar(20)      NULL,
    state                    varchar(15)      NULL,
    zip_code                 varchar(20)      NULL,
    latitude                 numeric(9, 6)    NULL,
    longitude                numeric(9, 6)    NULL,
    data_source_id           int              NOT NULL,
    dw_load_job_id           varchar(10)      NOT NULL,
    dw_load_workflow_name    varchar(50)      NOT NULL,
    dw_load_date             datetime         NOT NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (dim_geo_id_sk)
)

go


IF OBJECT_ID('dim_geo') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_geo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_geo >>>'
go

/* 
 * TABLE: dim_inspection_type 
 */

CREATE TABLE dim_inspection_type(
    dim_inspection_type_id_sk    int            NOT NULL,
    inspection_type              varchar(50)    NOT NULL,
    data_source_id               int            NOT NULL,
    dw_load_job_id               varchar(10)    NOT NULL,
    dw_load_workflow_name        varchar(50)    NOT NULL,
    dw_load_date                 datetime       NOT NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (dim_inspection_type_id_sk)
)

go


IF OBJECT_ID('dim_inspection_type') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_inspection_type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_inspection_type >>>'
go

/* 
 * TABLE: dim_restaurant 
 */

CREATE TABLE dim_restaurant(
    dim_restaurant_id_sk     int               NOT NULL,
    restaurant_name_nk       varchar(255)      NOT NULL,
    also_known_as            varchar(255)      NULL,
    license_num              numeric(15, 0)    NULL,
    data_source_id           int               NOT NULL,
    dw_load_job_id           varchar(10)       NOT NULL,
    dw_load_workflow_name    varchar(50)       NOT NULL,
    dw_load_date             datetime          NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (dim_restaurant_id_sk)
)

go


IF OBJECT_ID('dim_restaurant') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_restaurant >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_restaurant >>>'
go

/* 
 * TABLE: dim_result 
 */

CREATE TABLE dim_result(
    dim_result_id_sk         int            NOT NULL,
    result                   varchar(20)    NOT NULL,
    data_source_id           int            NOT NULL,
    dw_load_job_id           varchar(10)    NOT NULL,
    dw_load_workflow_name    varchar(50)    NOT NULL,
    dw_load_date             datetime       NOT NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (dim_result_id_sk)
)

go


IF OBJECT_ID('dim_result') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_result >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_result >>>'
go

/* 
 * TABLE: dim_risk 
 */

CREATE TABLE dim_risk(
    dim_risk_id_sk           int            NOT NULL,
    dim_risk_type            varchar(50)    NOT NULL,
    dim_risk_category        char(10)       NULL,
    data_source_id           int            NOT NULL,
    dw_load_job_id           varchar(10)    NOT NULL,
    dw_load_workflow_name    varchar(50)    NOT NULL,
    dw_load_date             datetime       NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (dim_risk_id_sk)
)

go


IF OBJECT_ID('dim_risk') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_risk >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_risk >>>'
go

/* 
 * TABLE: dim_source_details 
 */

CREATE TABLE dim_source_details(
    data_source_id      int             NOT NULL,
    data_source_name    varchar(100)    NOT NULL,
    dw_load_user        varchar(50)     NOT NULL,
    dw_load_date        date            NOT NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (data_source_id)
)

go


IF OBJECT_ID('dim_source_details') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_source_details >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_source_details >>>'
go

/* 
 * TABLE: dim_violation 
 */

CREATE TABLE dim_violation(
    dim_violation_id_sk          int              NOT NULL,
    dim_violation_code           int              NULL,
    dim_violation_description    nvarchar(max)    NOT NULL,
    data_source_id               int              NOT NULL,
    dw_load_job_id               varchar(10)      NOT NULL,
    dw_load_workflow_name        varchar(50)      NOT NULL,
    dw_load_date                 datetime         NOT NULL,
    CONSTRAINT PK12 PRIMARY KEY NONCLUSTERED (dim_violation_id_sk)
)

go


IF OBJECT_ID('dim_violation') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_violation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_violation >>>'
go

/* 
 * TABLE: fact_inspection_info 
 */

CREATE TABLE fact_inspection_info(
    fact_inspection_info_sk      int            NOT NULL,
    inspection_id_nk             varchar(25)    NOT NULL,
    dim_inspection_type_id_sk    int            NOT NULL,
    dim_risk_id_sk               int            NOT NULL,
    dim_restaurant_id_sk         int            NOT NULL,
    dim_facility_type_id_sk      int            NOT NULL,
    dim_result_id_sk             int            NOT NULL,
    dim_geo_id_sk                int            NOT NULL,
    inspection_date              int            NOT NULL,
    data_source_id               int            NOT NULL,
    dw_load_job_id               varchar(10)    NOT NULL,
    dw_load_workflow_name        varchar(50)    NOT NULL,
    dw_load_date                 datetime       NOT NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (fact_inspection_info_sk)
)

go


IF OBJECT_ID('fact_inspection_info') IS NOT NULL
    PRINT '<<< CREATED TABLE fact_inspection_info >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fact_inspection_info >>>'
go

/* 
 * TABLE: fact_inspection_violation 
 */

CREATE TABLE fact_inspection_violation(
    fact_inspection_violation_id_sk    int              NOT NULL,
    dim_violation_id_sk                int              NOT NULL,
    fact_inspection_info_sk            int              NOT NULL,
    Violation_comments                 nvarchar(max)    NULL,
    data_source_id                     int              NOT NULL,
    dw_load_job_id                     varchar(10)      NOT NULL,
    dw_load_workflow_name              varchar(50)      NOT NULL,
    dw_load_date                       datetime         NOT NULL,
    CONSTRAINT PK14 PRIMARY KEY NONCLUSTERED (fact_inspection_violation_id_sk)
)

go


IF OBJECT_ID('fact_inspection_violation') IS NOT NULL
    PRINT '<<< CREATED TABLE fact_inspection_violation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fact_inspection_violation >>>'
go

/* 
 * TABLE: dim_facility_type 
 */

ALTER TABLE dim_facility_type ADD CONSTRAINT Refdim_source_details10 
    FOREIGN KEY (data_source_id)
    REFERENCES dim_source_details(data_source_id)
go


/* 
 * TABLE: dim_geo 
 */

ALTER TABLE dim_geo ADD CONSTRAINT Refdim_source_details18 
    FOREIGN KEY (data_source_id)
    REFERENCES dim_source_details(data_source_id)
go


/* 
 * TABLE: dim_inspection_type 
 */

ALTER TABLE dim_inspection_type ADD CONSTRAINT Refdim_source_details13 
    FOREIGN KEY (data_source_id)
    REFERENCES dim_source_details(data_source_id)
go


/* 
 * TABLE: dim_restaurant 
 */

ALTER TABLE dim_restaurant ADD CONSTRAINT Refdim_source_details12 
    FOREIGN KEY (data_source_id)
    REFERENCES dim_source_details(data_source_id)
go


/* 
 * TABLE: dim_result 
 */

ALTER TABLE dim_result ADD CONSTRAINT Refdim_source_details19 
    FOREIGN KEY (data_source_id)
    REFERENCES dim_source_details(data_source_id)
go


/* 
 * TABLE: dim_risk 
 */

ALTER TABLE dim_risk ADD CONSTRAINT Refdim_source_details11 
    FOREIGN KEY (data_source_id)
    REFERENCES dim_source_details(data_source_id)
go


/* 
 * TABLE: dim_violation 
 */

ALTER TABLE dim_violation ADD CONSTRAINT Refdim_source_details16 
    FOREIGN KEY (data_source_id)
    REFERENCES dim_source_details(data_source_id)
go


/* 
 * TABLE: fact_inspection_info 
 */

ALTER TABLE fact_inspection_info ADD CONSTRAINT Refdim_risk2 
    FOREIGN KEY (dim_risk_id_sk)
    REFERENCES dim_risk(dim_risk_id_sk)
go

ALTER TABLE fact_inspection_info ADD CONSTRAINT Refdim_restaurant3 
    FOREIGN KEY (dim_restaurant_id_sk)
    REFERENCES dim_restaurant(dim_restaurant_id_sk)
go

ALTER TABLE fact_inspection_info ADD CONSTRAINT Refdim_geo4 
    FOREIGN KEY (dim_geo_id_sk)
    REFERENCES dim_geo(dim_geo_id_sk)
go

ALTER TABLE fact_inspection_info ADD CONSTRAINT Refdim_result5 
    FOREIGN KEY (dim_result_id_sk)
    REFERENCES dim_result(dim_result_id_sk)
go

ALTER TABLE fact_inspection_info ADD CONSTRAINT Refdim_date6 
    FOREIGN KEY (inspection_date)
    REFERENCES dim_date(dim_date_key)
go

ALTER TABLE fact_inspection_info ADD CONSTRAINT Refdim_facility_type7 
    FOREIGN KEY (dim_facility_type_id_sk)
    REFERENCES dim_facility_type(dim_facility_type_id_sk)
go

ALTER TABLE fact_inspection_info ADD CONSTRAINT Refdim_source_details14 
    FOREIGN KEY (data_source_id)
    REFERENCES dim_source_details(data_source_id)
go

ALTER TABLE fact_inspection_info ADD CONSTRAINT Refdim_inspection_type1 
    FOREIGN KEY (dim_inspection_type_id_sk)
    REFERENCES dim_inspection_type(dim_inspection_type_id_sk)
go


/* 
 * TABLE: fact_inspection_violation 
 */

ALTER TABLE fact_inspection_violation ADD CONSTRAINT Refdim_violation8 
    FOREIGN KEY (dim_violation_id_sk)
    REFERENCES dim_violation(dim_violation_id_sk)
go

ALTER TABLE fact_inspection_violation ADD CONSTRAINT Reffact_inspection_info9 
    FOREIGN KEY (fact_inspection_info_sk)
    REFERENCES fact_inspection_info(fact_inspection_info_sk)
go

ALTER TABLE fact_inspection_violation ADD CONSTRAINT Refdim_source_details15 
    FOREIGN KEY (data_source_id)
    REFERENCES dim_source_details(data_source_id)
go


