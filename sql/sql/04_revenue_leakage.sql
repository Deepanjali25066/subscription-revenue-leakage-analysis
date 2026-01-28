-- =====================================================
-- Revenue Leakage Analysis
-- =====================================================
-- Revenue Leakage = Expected Revenue - Actual Revenue
-- This analysis identifies months where the business
-- earned less (or more) than expected from subscriptions.

WITH expected_revenue AS (
    SELECT 
        DATE_TRUNC('month', s.start_date) AS month,
        SUM(pl.monthly_price) AS expected_revenue
    FROM subscriptions s
    JOIN plans pl
        ON s.plan_id = pl.plan_id
    WHERE s.status = 'active'
    GROUP BY month
),
actual_revenue AS (
    SELECT
        DATE_TRUNC('month', payment_date) AS month,
        SUM(amount) AS actual_revenue
    FROM payments
    WHERE payment_status = 'success'
    GROUP BY month
)
SELECT
    e.month,
    e.expected_revenue,
    COALESCE(a.actual_revenue, 0) AS actual_revenue,
    (e.expected_revenue - COALESCE(a.actual_revenue, 0)) AS revenue_leakage
FROM expected_revenue e
LEFT JOIN actual_revenue a
    ON e.month = a.month
ORDER BY e.month;
