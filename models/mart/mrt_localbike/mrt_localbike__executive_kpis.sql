with sales as (
    select *
    from {{ ref('int_localbike__sales') }}
)

select
    sum(line_revenue) as total_revenue,
    sum(quantity) as total_quantity,
    count(distinct order_id) as total_orders,
    count(distinct customer_id) as total_customers,
    safe_divide(sum(line_revenue), count(distinct order_id)) as avg_order_value
from sales
