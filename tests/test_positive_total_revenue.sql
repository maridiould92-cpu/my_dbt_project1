-- Test: Ensure total_revenue is never negative

select *
from {{ ref('mrt_localbike__executive_kpis') }}
where total_revenue < 0
