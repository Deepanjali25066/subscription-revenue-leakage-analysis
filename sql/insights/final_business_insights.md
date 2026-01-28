# Subscription Revenue Leakage Analysis – Business Insights

## Executive Summary
This project analyzed a subscription-based business model to identify revenue leakage and customer churn using SQL in PostgreSQL. By comparing expected subscription revenue with actual payments, the analysis uncovered operational gaps affecting revenue realization and customer retention.

---

## Key Business Findings

### 1. Revenue Leakage Exists Across Multiple Months
- Expected revenue, calculated from active subscriptions and plan pricing, frequently exceeded actual revenue.
- This indicates revenue leakage due to delayed or failed payments rather than lack of subscriptions.

---

### 2. No Completely Unpaid Active Customers
- All active subscribers had at least one successful payment.
- Revenue leakage is not caused by customers avoiding payment, but by system or process-level issues.

---

### 3. Failed Payments Are a Major Leakage Driver
- Failed payment transactions were observed across:
  - Multiple subscription plans (Basic, Standard, Premium)
  - Multiple regions (India, USA, UK)
- This points to payment reliability issues rather than plan-specific or region-specific problems.

---

### 4. Higher Churn in High-Value Plans
| Plan | Churn Rate |
|-----|------------|
| Basic | 25% |
| Standard | 33.33% |
| Premium | 33.33% |

- Standard and Premium plans show higher churn, increasing long-term revenue risk.
- Failed payments may contribute to eventual subscription cancellation.

---

## Business Impact
- Revenue leakage combined with churn leads to compounding financial loss.
- Losing higher-tier customers has a disproportionate impact on revenue and customer lifetime value (CLV).

---

## Recommendations
- Improve payment retry and failure handling mechanisms.
- Introduce proactive payment reminders before subscription cancellation.
- Monitor failed payments for high-value plans closely.
- Offer short grace periods to reduce involuntary churn.

---

## Tools & Techniques Used
- PostgreSQL 16
- Advanced SQL (CTEs, joins, aggregations, filters)
- Business-oriented analytical approach

---

## Conclusion
This analysis demonstrates how SQL can be used not just for querying data, but for uncovering meaningful business insights that drive strategic decisions in subscription-based models.
