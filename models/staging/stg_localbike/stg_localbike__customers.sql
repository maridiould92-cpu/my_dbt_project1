with source as (

    select *
    from {{ source('localbike', 'customers') }}

),

cleaned as (

    select
        safe_cast(customer_id as int64) as customer_id,
        trim(first_name) as first_name,
        trim(last_name) as last_name,
        lower(trim(email)) as email,
        trim(phone) as phone,
        trim(street) as street,
        trim(city) as city,
        trim(state) as state

    from source

)

select distinct *
from cleaned
