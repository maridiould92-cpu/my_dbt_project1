with source as (

    select *
    from {{ source('localbike', 'stocks') }}

),

cleaned as (

    select
        safe_cast(store_id as int64) as store_id,
        safe_cast(product_id as int64) as product_id,
        safe_cast(quantity as int64) as quantity

    from source

)

select distinct *
from cleaned
