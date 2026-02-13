-- Test: Ensure uniqueness of (order_id, product_id) in intermediate model

select
    order_id,
    product_id,
    count(*) as nb_duplicates
from {{ ref('int_localbike__sales') }}
group by 1,2
having count(*) > 1
