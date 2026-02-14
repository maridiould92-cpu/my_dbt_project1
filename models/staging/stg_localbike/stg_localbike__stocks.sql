with source as (

    select *
    from {{ source('localbike', 'stocks') }}

),

cleaned as (

    select
        cast(store_id as int64) as store_id,
        cast(product_id as int64) as product_id,
        cast(quantity as int64) as quantity

    from source

)

select distinct *
from cleaned
