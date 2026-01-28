# Subscription Revenue Leakage Analysis (SQL Project)

## Overview
This project is an end-to-end SQL-based business case study focused on identifying **revenue leakage and customer churn** in a subscription-based business model. Using PostgreSQL, the analysis compares expected subscription revenue with actual payment data to uncover operational and retention-related issues.

The project demonstrates how SQL can be used not just for querying data, but for **business problem-solving and decision support**.

---

##  Business Objectives
- Calculate expected revenue from active subscriptions
- Compare expected revenue with actual payments received
- Identify revenue leakage at a monthly level
- Analyze failed payment transactions
- Measure churn rate across subscription plans
- Provide actionable business recommendations

---

## Database Schema
The analysis is based on a relational database with the following tables:

- **customers** – customer demographics and signup data  
- **plans** – subscription plans and pricing  
- **subscriptions** – subscription lifecycle and status  
- **payments** – payment transactions and outcomes  

Synthetic but realistic data was created to simulate real-world SaaS scenarios.

---

##  Tools & Technologies
- PostgreSQL 16
- SQL (CTEs, joins, aggregations, filters)
- `psql` (PostgreSQL CLI)
- GitHub for version control and documentation

---

##  Key Analyses Performed

### 1. Expected vs Actual Revenue
- Expected revenue calculated from active subscriptions and plan pricing
- Actual revenue calculated from successful payment transactions
- Highlighted mismatches between subscription activity and realized revenue

### 2. Revenue Leakage Analysis
- Used Common Table Expressions (CTEs) to calculate monthly revenue leakage
- Identified months where actual revenue was lower than expected

### 3. Failed Payments Analysis
- Identified customers, plans, and regions with failed payment transactions
- Highlighted operational issues contributing to revenue leakage

### 4. Churn Analysis
- Calculated churn rate by subscription plan
- Found higher churn in Standard and Premium plans, increasing revenue risk

---

##  Key Insights
- Revenue leakage was driven primarily by **failed payments and billing timing mismatches**
- No active customers were completely unpaid, indicating system-level issues rather than customer avoidance
- Failed payments occurred across multiple plans and regions
- Higher-value subscription plans showed higher churn rates

---

##  Business Recommendations
- Improve payment retry and failure handling mechanisms
- Introduce proactive payment reminders before cancellations
- Closely monitor failed payments for high-value plans
- Offer short grace periods to reduce involuntary churn

---

##  Repository Structure
# Subscription Revenue Leakage Analysis (SQL Project)

##  Overview
This project is an end-to-end SQL-based business case study focused on identifying **revenue leakage and customer churn** in a subscription-based business model. Using PostgreSQL, the analysis compares expected subscription revenue with actual payment data to uncover operational and retention-related issues.

The project demonstrates how SQL can be used not just for querying data, but for **business problem-solving and decision support**.

---

##  Business Objectives
- Calculate expected revenue from active subscriptions
- Compare expected revenue with actual payments received
- Identify revenue leakage at a monthly level
- Analyze failed payment transactions
- Measure churn rate across subscription plans
- Provide actionable business recommendations

---

## Database Schema
The analysis is based on a relational database with the following tables:

- **customers** – customer demographics and signup data  
- **plans** – subscription plans and pricing  
- **subscriptions** – subscription lifecycle and status  
- **payments** – payment transactions and outcomes  

Synthetic but realistic data was created to simulate real-world SaaS scenarios.

---

##  Tools & Technologies
- PostgreSQL 16
- SQL (CTEs, joins, aggregations, filters)
- `psql` (PostgreSQL CLI)
- GitHub for version control and documentation

---

##  Key Analyses Performed

### 1. Expected vs Actual Revenue
- Expected revenue calculated from active subscriptions and plan pricing
- Actual revenue calculated from successful payment transactions
- Highlighted mismatches between subscription activity and realized revenue

### 2. Revenue Leakage Analysis
- Used Common Table Expressions (CTEs) to calculate monthly revenue leakage
- Identified months where actual revenue was lower than expected

### 3. Failed Payments Analysis
- Identified customers, plans, and regions with failed payment transactions
- Highlighted operational issues contributing to revenue leakage

### 4. Churn Analysis
- Calculated churn rate by subscription plan
- Found higher churn in Standard and Premium plans, increasing revenue risk

---

##  Key Insights
- Revenue leakage was driven primarily by **failed payments and billing timing mismatches**
- No active customers were completely unpaid, indicating system-level issues rather than customer avoidance
- Failed payments occurred across multiple plans and regions
- Higher-value subscription plans showed higher churn rates

---

## Business Recommendations
- Improve payment retry and failure handling mechanisms
- Introduce proactive payment reminders before cancellations
- Closely monitor failed payments for high-value plans
- Offer short grace periods to reduce involuntary churn

---

## Repository Structure
sql/ → SQL scripts for schema, data insertion, and analysis
insights/ → Final business insights and recommendations

---

##  Outcome
This project demonstrates strong SQL fundamentals, analytical thinking, and the ability to translate data into meaningful business insights. It is suitable for showcasing skills required in **Data Analyst and Business Analyst** roles.
