with sales as (
    select *
    from {{ ref('int_localbike__sales') }}
)

select
    order_date,
    sum(line_revenue) as total_revenue,
    sum(quantity) as total_quantity,
    count(distinct order_id) as total_orders
from sales
group by order_date
