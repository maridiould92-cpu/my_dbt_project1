with orders as (

    select *
    from {{ ref('stg_localbike__orders') }}

),

order_items as (

    select *
    from {{ ref('stg_localbike__order_items') }}

),

products as (

    select *
    from {{ ref('stg_localbike__products') }}

),

categories as (

    select *
    from {{ ref('stg_localbike__categories') }}

),

brands as (

    select *
    from {{ ref('stg_localbike__brands') }}

),

customers as (

    select *
    from {{ ref('stg_localbike__customers') }}

),

stores as (

    select *
    from {{ ref('stg_localbike__stores') }}

),

staffs as (

    select *
    from {{ ref('stg_localbike__staffs') }}

)

select
    -- Order info
    o.order_id,
    o.order_date,
    o.order_status,

    -- Customer
    o.customer_id,
    c.state as customer_state,

    -- Store
    o.store_id,
    s.store_name,
    s.city as store_city,
    s.state as store_state,

    -- Staff
    o.staff_id,
    concat(st.first_name, ' ', st.last_name) as staff_name,

    -- Product
    oi.product_id,
    p.product_name,
    p.list_price as product_list_price,
    p.model_year,

    -- Category / Brand
    p.category_id,
    cat.category_name,
    p.brand_id,
    b.brand_name,

    -- Metrics
    oi.quantity,
    oi.list_price as item_price,
    oi.discount,

    -- Revenue calculation
    (oi.quantity * oi.list_price) * (1 - oi.discount) as line_revenue

from orders o
left join order_items oi on o.order_id = oi.order_id
left join products p on oi.product_id = p.product_id
left join categories cat on p.category_id = cat.category_id
left join brands b on p.brand_id = b.brand_id
left join customers c on o.customer_id = c.customer_id
left join stores s on o.store_id = s.store_id
left join staffs st on o.staff_id = st.staff_id
