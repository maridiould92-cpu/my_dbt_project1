{% docs int_localbike__sales %}

# Sales Enriched – Intermediate Model

This model consolidates all business entities into a single enriched transactional dataset.

It joins:

- Orders
- Order Items
- Products
- Categories
- Brands
- Customers
- Stores
- Staffs

## Grain

One row per product per order.

(order_id + product_id)

## Business Purpose

This model centralizes all business logic before aggregation.

It ensures:

- Consistency of revenue calculation
- Centralized joins
- Reusable business definitions
- Clean foundation for mart-level KPI aggregation

## Main Metric

### line_revenue

Calculated as:

(quantity × item_price) × (1 - discount)

Represents net revenue generated for one order line.

## Why This Layer Exists

Instead of repeating joins and calculations inside mart models,
all business logic is centralized here.

Mart models only perform aggregations.

Architecture:

staging → intermediate → mart → BI

{% enddocs %}
