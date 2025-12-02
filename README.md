# BI-Implementation-for-Food-Inspection-Analysis


## Technologes
![Talend](https://img.shields.io/badge/Talend-FF6D70?style=for-the-badge&logo=Talend&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=Python&logoColor=white)
![Alteryx](https://img.shields.io/badge/Alteryx-276DC3?style=for-the-badge&logo=Alteryx&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=Tableau&logoColor=white)
![Azure SQL](https://img.shields.io/badge/Azure_SQL-0078D4?style=for-the-badge&logo=MicrosoftSQLServer&logoColor=white)
![ER Studio](https://img.shields.io/badge/ER_Studio-008FC7?style=for-the-badge&logo=ERStudio&logoColor=white)


## Overview
The BI Implementation for Food Inspection Analysis project focuses on integrating and analyzing food inspection results from Dallas and Chicago. This project aims to ensure data accuracy, streamline data processing, and provide actionable insights through comprehensive visualization, ultimately aiding in improving food safety standards.

## Problem Statement
Food inspection data from different cities is often inconsistent and difficult to analyze, leading to inefficiencies in monitoring food safety. The lack of unified data formats and comprehensive reporting hinders the ability to identify trends and make informed decisions. This project addresses these challenges by integrating data, ensuring consistency, and providing detailed analysis and visualization.

## Technology stack
- **ER Studio**: Schema design and data modeling.
- **Talend**: ETL processes to load data into fact and dimension tables.
- **Alteryx/Python**: Data profiling and analysis.
- **Snowflake**: Secure and robust data storage and handling of Fact, Stage, and Dimension Tabels.
- **Tableau**: Visualization and KPI reporting.

## Project Description
Our system comprises these interconnected modules:

**Data Modelling with ER Studio:**
- Designed and implemented a star schema for efficient data integration and querying.
- Ensured consistent data modeling across different data sources.

**Data Profiling and ETL Processes:**
- Utilized Alteryx and Python for initial data profiling and cleaning.

**ETL and Data Integration:**
- Developed Talend jobs to load data into fact and dimension tables, ensuring data accuracy and consistency.


**Visualization with Tableau:**
- Leveraged Tableau for comprehensive visualization and analysis of integrated food inspection data.
- Developed KPIs to monitor trends and patterns in inspection outcomes, enabling strategic insights and decision-making for restaurant and food establishment safety.

## 🔗 Entity Relationship Diagram
```mermaid
erDiagram
    %% ============================
    %% DIMENSION TABLES
    %% ============================
    
    dim_date {
        int dim_date_key PK
        date date
        numeric day_of_week
        varchar day_name
        numeric day_of_year
        numeric week_of_year
        numeric month
        varchar month_name
        numeric quarter
        varchar quarter_name
        numeric season
        varchar season_name
        numeric year
        bit is_weekend
        varchar dw_load_job_id
        varchar dw_load_workflow_name
        datetime dw_load_date
    }
    
    dim_restaurant {
        int dim_restaurant_id_sk PK
        varchar restaurant_name_nk UK
        varchar also_known_as
        numeric license_num
        int data_source_id FK
        varchar dw_load_job_id
        varchar dw_load_workflow_name
        datetime dw_load_date
    }
    
    dim_geo {
        int dim_geo_id_sk PK
        varchar street_address
        varchar city
        varchar state
        varchar zip_code
        numeric latitude
        numeric longitude
        int data_source_id FK
        varchar dw_load_job_id
        varchar dw_load_workflow_name
        datetime dw_load_date
    }
    
    dim_inspection_type {
        int dim_inspection_type_id_sk PK
        varchar inspection_type
        int data_source_id FK
        varchar dw_load_job_id
        varchar dw_load_workflow_name
        datetime dw_load_date
    }
    
    dim_risk {
        int dim_risk_id_sk PK
        varchar dim_risk_type
        char dim_risk_category
        int data_source_id FK
        varchar dw_load_job_id
        varchar dw_load_workflow_name
        datetime dw_load_date
    }
    
    dim_result {
        int dim_result_id_sk PK
        varchar result
        int data_source_id FK
        varchar dw_load_job_id
        varchar dw_load_workflow_name
        datetime dw_load_date
    }
    
    dim_facility_type {
        int dim_facility_type_id_sk PK
        varchar facillity_type
        int data_source_id FK
        varchar dw_load_job_id
        varchar dw_load_workflow_name
        datetime dw_load_date
    }
    
    dim_violation {
        int dim_violation_id_sk PK
        int dim_violation_code
        nvarchar dim_violation_description
        int data_source_id FK
        varchar dw_load_job_id
        varchar dw_load_workflow_name
        datetime dw_load_date
    }
    
    dim_source_details {
        int data_source_id PK
        varchar data_source_name
        varchar dw_load_user
        date dw_load_date
    }
    
    %% ============================
    %% FACT TABLES
    %% ============================
    
    fact_inspection_info {
        int fact_inspection_info_sk PK
        varchar inspection_id_nk UK
        int dim_inspection_type_id_sk FK
        int dim_risk_id_sk FK
        int dim_restaurant_id_sk FK
        int dim_facility_type_id_sk FK
        int dim_result_id_sk FK
        int dim_geo_id_sk FK
        int inspection_date FK
        int data_source_id FK
        varchar dw_load_job_id
        varchar dw_load_workflow_name
        datetime dw_load_date
    }
    
    fact_inspection_violation {
        int fact_inspection_violation_id_sk PK
        int dim_violation_id_sk FK
        int fact_inspection_info_sk FK
        nvarchar Violation_comments
        int data_source_id FK
        varchar dw_load_job_id
        varchar dw_load_workflow_name
        datetime dw_load_date
    }
    
    %% ============================
    %% RELATIONSHIPS
    %% ============================
    
    %% Source Details Relationships
    dim_source_details ||--o{ dim_restaurant : "data_source_id"
    dim_source_details ||--o{ dim_geo : "data_source_id"
    dim_source_details ||--o{ dim_inspection_type : "data_source_id"
    dim_source_details ||--o{ dim_risk : "data_source_id"
    dim_source_details ||--o{ dim_result : "data_source_id"
    dim_source_details ||--o{ dim_facility_type : "data_source_id"
    dim_source_details ||--o{ dim_violation : "data_source_id"
    dim_source_details ||--o{ fact_inspection_info : "data_source_id"
    dim_source_details ||--o{ fact_inspection_violation : "data_source_id"
    
    %% Fact Inspection Info Relationships
    dim_date ||--o{ fact_inspection_info : "inspection_date"
    dim_restaurant ||--o{ fact_inspection_info : "dim_restaurant_id_sk"
    dim_geo ||--o{ fact_inspection_info : "dim_geo_id_sk"
    dim_inspection_type ||--o{ fact_inspection_info : "dim_inspection_type_id_sk"
    dim_risk ||--o{ fact_inspection_info : "dim_risk_id_sk"
    dim_result ||--o{ fact_inspection_info : "dim_result_id_sk"
    dim_facility_type ||--o{ fact_inspection_info : "dim_facility_type_id_sk"
    
    %% Fact Inspection Violation Relationships
    dim_violation ||--o{ fact_inspection_violation : "dim_violation_id_sk"
    fact_inspection_info ||--o{ fact_inspection_violation : "fact_inspection_info_sk"### **Relationship Summary**

#### **Star Schema Structure**
- **Central Fact**: `fact_inspection_info` connects to 7 dimension tables
- **Bridge Table**: `fact_inspection_violation` creates many-to-many relationship between inspections and violations
- **Data Lineage**: All tables reference `dim_source_details` for audit trail

#### **Key Relationships**
- **One-to-Many**: Each dimension can relate to multiple fact records
- **Many-to-Many**: Inspections can have multiple violations (via bridge table)
- **Referential Integrity**: All foreign keys enforced with constraints
- **Audit Trail**: Complete lineage tracking through source details dimension

```

---

# References
**Data Source:**
- [Restaurant and Food Establishment Inspections Dallas Dataset](https://www.dallasopendata.com/Services/Restaurant-and-Food-Establishment-Inspections-Octo/dri5-wcct/data_preview)
- [Restaurant and Food Establishment Inspections Chicago Dataset](https://data.cityofchicago.org/Health-Human-Services/Food-Inspections/4ijn-s7e5/data_preview)



