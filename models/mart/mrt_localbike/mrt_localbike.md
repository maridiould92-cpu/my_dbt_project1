{% docs mrt_localbike__executive_kpis %}

# Executive KPIs – Local Bike

This model provides a high-level overview of business performance.

It is designed for the top section of the dashboard (KPI cards).

## Grain
Single row summary.

## Metrics Included

- total_revenue: Total net revenue generated
- total_quantity: Total units sold
- total_orders: Number of distinct orders
- total_customers: Number of distinct customers
- avg_order_value: Average revenue per order

## Business Value

This table allows leadership to quickly assess:

- Revenue performance
- Sales volume
- Customer activity
- Overall business growth

{% enddocs %}



{% docs mrt_localbike__daily_report %}

# Daily Sales Report – Local Bike

This model aggregates revenue and sales metrics at a daily level.

## Grain
One row per order_date.

## Metrics

- total_revenue
- total_quantity
- total_orders

## Business Purpose

Used to analyze:

- Daily revenue trends
- Sales seasonality
- Growth patterns
- Performance fluctuations

This model feeds time-series visualizations in Power BI.

{% enddocs %}



{% docs mrt_localbike__store_performance %}

# Store Performance – Local Bike

This model aggregates sales performance by store.

## Grain
One row per store.

## Metrics

- total_revenue
- total_quantity
- total_orders

## Business Value

Helps operations team:

- Compare store performance
- Identify top-performing locations
- Detect underperforming stores
- Optimize inventory and staffing

{% enddocs %}



{% docs mrt_localbike__category_performance %}

# Category Performance – Local Bike

This model aggregates revenue by product category.

## Grain
One row per category.

## Metrics

- total_revenue
- total_quantity

## Business Value

Allows identification of:

- Best-selling product segments
- Strategic product focus areas
- Category growth opportunities

{% enddocs %}



{% docs mrt_localbike__product_performance %}

# Product Performance – Local Bike

This model provides aggregated performance at product level.

## Grain
One row per product.

## Metrics

- total_revenue
- total_quantity

## Business Value

Supports:

- Product optimization
- Best-seller identification
- Pricing strategy review
- Inventory prioritization

{% enddocs %}
