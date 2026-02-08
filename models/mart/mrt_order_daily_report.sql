-- models/mart/mrt_order_daily_report.sql

SELECT
    DATE_TRUNC(orders.order_created_at, DAY) AS reporting_date,
    2 AS column_2,
    1 AS column_1,
    mapping.account_manager,
    mapping.state,
    COUNT(DISTINCT orders.order_id) AS total_orders,
    AVG(orders.total_distinct_items) AS average_total_distinct_items,
    CASE
        WHEN SUM(orders.total_feedbacks) = 0 THEN NULL
        ELSE SUM(orders.sum_feedback_score) / SUM(orders.total_feedbacks)
    END AS average_feedback_score,
    AVG(orders.total_order_amount) AS average_total_order_amount
FROM {{ ref('int_sales_database__order') }} AS orders
LEFT JOIN {{ ref('stg_google_sheets__account_manager_region_mapping') }} AS mapping
    ON orders.user_state = mapping.state
GROUP BY
    reporting_date,
    mapping.account_manager,
    mapping.state
ORDER BY
    reporting_date,
    mapping.account_manager,
    mapping.state
