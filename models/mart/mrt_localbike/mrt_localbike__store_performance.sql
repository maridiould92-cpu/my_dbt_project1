with sales as (
    select *
    from {{ ref('int_localbike__sales') }}
)

select
    store_id,
    store_name,
    store_city,
    store_state,
    sum(line_revenue) as total_revenue,
    sum(quantity) as total_quantity,
    count(distinct order_id) as total_orders
from sales
group by 1,2,3,4
