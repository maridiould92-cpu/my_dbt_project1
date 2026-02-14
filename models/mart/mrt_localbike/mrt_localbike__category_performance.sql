with sales as (
    select *
    from {{ ref('int_localbike__sales') }}
)

select
    category_id,
    category_name,
    sum(line_revenue) as total_revenue,
    sum(quantity) as total_quantity
from sales
group by 1,2
