{% docs mrt_localbike__executive_kpis %}

# Executive KPIs – LocalBike

This mart model provides high-level strategic KPIs for executive reporting.

It aggregates all sales data to produce global performance indicators used in dashboards.

## Key Metrics

- **total_revenue**: Total net revenue generated across all sales.
- **total_quantity**: Total number of products sold.
- **total_orders**: Total number of distinct orders.
- **average_order_value**: Average revenue per order.

## Business Purpose

This table is designed for executive dashboards in Power BI.
It answers questions such as:

- What is the overall revenue?
- How many orders were placed?
- What is the average basket value?

This is a one-row aggregated table.

{% enddocs %}



{% docs mrt_localbike__daily_report %}

# Daily Sales Report – LocalBike

This mart model aggregates sales performance at a daily level.

## Key Metrics

- **order_date**
- **total_revenue**
- **total_quantity**
- **total_orders**

## Business Purpose

Used for time-series analysis in dashboards:

- Revenue trends over time
- Sales seasonality
- Daily performance monitoring

Designed for line charts and time-based visuals.

{% enddocs %}



{% docs mrt_localbike__store_performance %}

# Store Performance – LocalBike

This mart model analyzes sales performance by store.

## Key Metrics

- **store_id**
- **store_name**
- **total_revenue**
- **total_quantity**
- **total_orders**

## Business Purpose

Enables comparison between stores:

- Which store generates the most revenue?
- Which store sells the highest volume?
- Performance benchmarking across regions.

Used for bar charts and ranking visuals.

{% enddocs %}



{% docs mrt_localbike__category_performance %}

# Category Performance – LocalBike

This mart model aggregates revenue and sales quantity per product category.

## Key Metrics

- **category_id**
- **category_name**
- **total_revenue**
- **total_quantity**

## Business Purpose

Supports product portfolio analysis:

- Which categories generate the most revenue?
- Which categories have the highest sales volume?
- Revenue distribution across product types.

Used for bar charts and contribution analysis visuals.

{% enddocs %}



{% docs mrt_localbike__product_performance %}

# Product Performance – LocalBike

This mart model evaluates individual product performance.

## Key Metrics

- **product_id**
- **product_name**
- **total_revenue**
- **total_quantity**

## Business Purpose

Supports detailed product analysis:

- Top-selling products
- Revenue contribution by product
- Product ranking analysis

Designed for detailed analytical dashboards and product ranking visuals.

{% enddocs %}
