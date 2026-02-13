with source as (

    select * 
    from {{ source('localbike', 'brands') }}

),

cleaned as (

    select
        cast(brand_id as int64) as brand_id,
        trim(brand_name) as brand_name 

    from source

)

select distinct *
from cleaned
