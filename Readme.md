# 🚴 LocalBike Analytics Project

## 📌 Project Overview

This project aims to build a complete analytics pipeline for LocalBike sales data using:

- dbt (data transformation)
- BigQuery (data warehouse)
- Power BI (data visualization)

The objective is to transform raw transactional data into clean, tested, business-ready analytical models.

---

## 🏗 Architecture

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

The Power BI report file is included:

