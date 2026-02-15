with source as (

    select *
    from {{ source('localbike', 'categories') }}

),

cleaned as (

    select
        safe_cast(category_id as int64) as category_id,
        trim(category_name) as category_name

    from source

)

select distinct *
from cleaned
