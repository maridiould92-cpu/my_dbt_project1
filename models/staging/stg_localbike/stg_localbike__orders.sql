with source as (

    select *
    from {{ source('localbike', 'orders') }}

),

cleaned as (

    select
        safe_cast(order_id as int64) as order_id,
        safe_cast(customer_id as int64) as customer_id,
        safe_cast(store_id as int64) as store_id,
        safe_cast(staff_id as int64) as staff_id,

        cast(order_date as date) as order_date,
        cast(required_date as date) as required_date,
        safe_cast(shipped_date as date) as shipped_date,

        safe_cast(order_status as int64) as order_status

    from source

)

select *
from cleaned
