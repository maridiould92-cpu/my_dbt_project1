# 🚴 LocalBike Analytics Project

## 📌 Project Overview

This repository is named my_dbt_project1.

It was initially created for coursework exercises.
The LocalBike Analytics project is implemented inside this repository as a structured dbt module, not as a separate repository.

LocalBike models are organized in dedicated subfolders within the existing dbt structure.

LocalBike is a functional analytics module inside my_dbt_project1.

This project aims to build a complete analytics pipeline for LocalBike sales data using:

- dbt (data transformation)
- BigQuery (data warehouse)
- Power BI (data visualization)

The objective is to transform raw transactional data into clean, tested, business-ready analytical models.

---

## 🏗 Architecture
models/
 ├── staging/
 │    └── stg_localbike/
 │
 ├── intermediate/
 │    └── int_localbike/
 │
 └── mart/
      └── mrt_localbike/

The project follows a modern analytics engineering architecture:

### 1️⃣ Staging Layer
- Source cleaning
- Type casting
- Null handling
- Basic data quality tests

### 2️⃣ Intermediate Layer
- Business joins
- Creation of sales fact logic
- Revenue calculation
- Composite uniqueness test

### 3️⃣ Mart Layer
Business-oriented aggregated models:
- Executive KPIs
- Daily performance
- Store performance
- Category performance
- Product performance

---

## 🛠 Technologies Used

- dbt
- Google BigQuery
- Power BI

---

## 📊 Power BI Dashboard

The Power BI report file is included: https://github.com/maridiould92-cpu/local-bike-powerbi-dashboard


