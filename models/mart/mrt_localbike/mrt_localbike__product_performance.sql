with sales as (
    select *
    from {{ ref('int_localbike__sales') }}
)

select
    product_id,
    product_name,
    category_name,
    sum(line_revenue) as total_revenue,
    sum(quantity) as total_quantity
from sales
group by 1,2,3
