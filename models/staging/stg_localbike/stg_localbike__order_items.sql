with source as (

    select *
    from {{ source('localbike', 'order_items') }}

),

cleaned as (

    select
        safe_cast(order_id as int64) as order_id,
        safe_cast(item_id as int64) as item_id,
        safe_cast(product_id as int64) as product_id,
        safe_cast(quantity as int64) as quantity,
        safe_cast(list_price as float64) as list_price,
        safe_cast(discount as float64) as discount,

        safe_cast(quantity as float64)
        * safe_cast(list_price as float64)
        * (1 - safe_cast(discount as float64)) 
        as line_revenue

    from source

)

select *
from cleaned
