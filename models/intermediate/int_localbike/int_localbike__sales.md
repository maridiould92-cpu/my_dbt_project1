{% docs int_localbike__sales %}

# Intermediate Sales Model

This intermediate model consolidates all business entities related to sales.

It joins:

- Orders
- Order Items
- Products
- Categories
- Brands
- Customers
- Stores
- Staff

Grain of the model:
One row per order line (order_id + product_id).

This model is the base layer used for marts and KPI calculations.

Key metric:
- line_revenue: revenue generated per product per order

This layer prepares clean and business-ready data for aggregation in marts.

{% enddocs %}
