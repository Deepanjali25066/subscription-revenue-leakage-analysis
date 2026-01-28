-- =====================================================
-- Expected vs Actual Revenue Analysis
-- =====================================================

-- Expected Monthly Revenue
-- Definition:
-- Sum of monthly plan prices for all active subscriptions
SELECT 
    DATE_TRUNC('month', s.start_date) AS month,
    SUM(pl.monthly_price) AS expected_revenue
FROM subscriptions s
JOIN plans pl
    ON s.plan_id = pl.plan_id
WHERE s.status = 'active'
GROUP BY month
ORDER BY month;


-- Actual Monthly Revenue
-- Definition:
-- Sum of all successful payment amounts per month
SELECT
    DATE_TRUNC('month', payment_date) AS month,
    SUM(amount) AS actual_revenue
FROM payments
WHERE payment_status = 'success'
GROUP BY month
ORDER BY month;
