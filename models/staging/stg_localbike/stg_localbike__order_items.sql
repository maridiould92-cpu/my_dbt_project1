with source as (

    select *
    from {{ source('localbike', 'order_items') }}

),

cleaned as (

    select
        cast(order_id as int64) as order_id,
        cast(item_id as int64) as item_id,
        cast(product_id as int64) as product_id,
        cast(quantity as int64) as quantity,
        cast(list_price as float64) as list_price,
        cast(discount as float64) as discount,

        -- Calcul utile dès le staging
        (quantity * list_price * (1 - discount)) as line_revenue

    from source

)

select distinct *
from cleaned
