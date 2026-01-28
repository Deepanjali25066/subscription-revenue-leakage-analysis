-- =====================================================
-- Failed Payments Analysis
-- =====================================================
-- Identifies customers and plans contributing to
-- revenue leakage due to failed payment transactions.

SELECT
    c.customer_id,
    c.country,
    pl.plan_name,
    COUNT(*) AS failed_payments
FROM payments p
JOIN customers c
    ON p.customer_id = c.customer_id
JOIN subscriptions s
    ON c.customer_id = s.customer_id
JOIN plans pl
    ON s.plan_id = pl.plan_id
WHERE p.payment_status = 'failed'
GROUP BY c.customer_id, c.country, pl.plan_name
ORDER BY failed_payments DESC;
