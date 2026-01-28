
-- Database Setup: Subscription Revenue Leakage Analysis
-- PostgreSQL 16


-- Create customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    signup_date DATE,
    country VARCHAR(50)
);

-- Create plans table
CREATE TABLE plans (
    plan_id SERIAL PRIMARY KEY,
    plan_name VARCHAR(20),
    monthly_price NUMERIC(10,2)
);

-- Create subscriptions table
CREATE TABLE subscriptions (
    subscription_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    plan_id INT REFERENCES plans(plan_id),
    start_date DATE,
    end_date DATE,
    status VARCHAR(20)
);

-- Create payments table
CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    payment_date DATE,
    amount NUMERIC(10,2),
    payment_status VARCHAR(20)
);

