
-- Data Insertion: Subscription Revenue Leakage Analysis


-- Insert subscription plans
INSERT INTO plans (plan_name, monthly_price) VALUES
('Basic', 10.00),
('Standard', 20.00),
('Premium', 35.00);

-- Insert customers
INSERT INTO customers (signup_date, country) VALUES
('2023-01-10', 'India'),
('2023-02-15', 'India'),
('2023-03-20', 'USA'),
('2023-04-05', 'USA'),
('2023-05-18', 'UK'),
('2023-06-01', 'India'),
('2023-06-10', 'UK'),
('2023-07-01', 'USA'),
('2023-07-15', 'India'),
('2023-08-05', 'UK');

-- Insert subscriptions (active & canceled)
INSERT INTO subscriptions (customer_id, plan_id, start_date, end_date, status) VALUES
(1, 1, '2023-01-10', NULL, 'active'),
(2, 2, '2023-02-15', '2023-08-15', 'canceled'),
(3, 3, '2023-03-20', NULL, 'active'),
(4, 1, '2023-04-05', '2023-06-05', 'canceled'),
(5, 2, '2023-05-18', NULL, 'active'),
(6, 1, '2023-06-01', NULL, 'active'),
(7, 3, '2023-06-10', '2023-09-10', 'canceled'),
(8, 2, '2023-07-01', NULL, 'active'),
(9, 1, '2023-07-15', NULL, 'active'),
(10, 3, '2023-08-05', NULL, 'active');

-- Insert payment records (successful & failed)
INSERT INTO payments (customer_id, payment_date, amount, payment_status) VALUES
(1, '2023-02-10', 10.00, 'success'),
(1, '2023-03-10', 10.00, 'success'),
(2, '2023-03-15', 20.00, 'success'),
(2, '2023-04-15', 20.00, 'failed'),
(3, '2023-04-20', 35.00, 'success'),
(3, '2023-05-20', 35.00, 'success'),
(4, '2023-05-05', 10.00, 'failed'),
(5, '2023-06-18', 20.00, 'success'),
(6, '2023-07-01', 10.00, 'success'),
(7, '2023-07-10', 35.00, 'failed'),
(8, '2023-08-01', 20.00, 'success'),
(9, '2023-08-15', 10.00, 'success'),
(10, '2023-09-05', 35.00, 'success');
