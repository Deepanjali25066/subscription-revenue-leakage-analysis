-- =====================================================
-- Churn Analysis by Subscription Plan
-- =====================================================
-- This query calculates churn rate for each plan
-- to understand customer retention and revenue risk.

SELECT
    pl.plan_name,
    COUNT(*) FILTER (WHERE s.status = 'canceled') AS churned_customers,
    COUNT(*) AS total_customers,
    ROUND(
        COUNT(*) FILTER (WHERE s.status = 'canceled')::NUMERIC
        / COUNT(*) * 100,
        2
    ) AS churn_rate_percent
FROM subscriptions s
JOIN plans pl
    ON s.plan_id = pl.plan_id
GROUP BY pl.plan_name
ORDER BY churn_rate_percent DESC;
