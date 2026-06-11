-- 1. STATIONS & INFRASTRUCTURE
CREATE TABLE logistics_hubs (
    hub_id INT PRIMARY KEY,
    location_name VARCHAR(50),
    region VARCHAR(20),
    max_capacity_units INT
);

-- 2. WORKFORCE & LABOR SHIFTS (Dayforce Style)
CREATE TABLE employee_shifts (
    shift_id INT PRIMARY KEY,
    employee_id INT,
    hub_id INT,
    shift_date DATE,
    shift_type VARCHAR(10), -- 'Day' or 'Night'
    hourly_rate DECIMAL(5,2),
    hours_worked DECIMAL(4,2)
);

-- 3. HIGH-VOLUME TRANSACTION & DELAYS (Super Style)
CREATE TABLE delivery_orders (
    order_id VARCHAR(10) PRIMARY KEY,
    shift_id INT,
    items_count INT,
    order_status VARCHAR(20), -- 'Completed', 'Delayed', 'Cancelled'
    delay_minutes INT -- Can contain NULL values if On-Time
);

-- POPULATE REFERENCE DATA
INSERT INTO logistics_hubs VALUES 
(101, 'Toronto Fulfillment Center', 'East', 5000),
(102, 'Vancouver Sorting Facility', 'West', 3000),
(103, 'Montreal Gateway Hub', 'East', 4500);

INSERT INTO employee_shifts VALUES
(1, 9001, 101, '2026-06-10', 'Night', 24.50, 8.50),
(2, 9002, 101, '2026-06-10', 'Day', 22.00, 8.00),
(3, 9003, 102, '2026-06-10', 'Night', 26.00, 12.00), -- Overtime
(4, 9004, 103, '2026-06-11', 'Night', 24.50, 6.00),
(5, 9005, 101, '2026-06-11', 'Day', 22.00, 8.00);

INSERT INTO delivery_orders VALUES
('ORD1001', 1, 45, 'Delayed', 35),
('ORD1002', 1, 12, 'Completed', NULL), -- Real-world data uses NULL for no delay
('ORD1003', 2, 85, 'Completed', NULL),
('ORD1004', 3, 110, 'Delayed', 75),
('ORD1005', 4, 30, 'Cancelled', NULL),
('ORD1006', 5, 50, 'Completed', NULL); SELECT 
    lh.location_name,
    es.shift_type,
    SUM(es.hours_worked * es.hourly_rate) AS total_labor_cost,
    SUM(COALESCE(do.items_count, 0)) AS total_units_handled,
    -- Calculate efficiency metric
    ROUND(SUM(es.hours_worked * es.hourly_rate) / NULLIF(SUM(COALESCE(do.items_count, 0)), 0), 2) AS labor_cost_per_unit,
    -- Aggregate complex status distributions
    COUNT(CASE WHEN do.order_status = 'Delayed' THEN 1 END) AS count_of_delays,
    AVG(COALESCE(do.delay_minutes, 0)) AS avg_delay_mins
FROM employee_shifts es
JOIN logistics_hubs lh ON es.hub_id = lh.hub_id
LEFT JOIN delivery_orders do ON es.shift_id = do.shift_id
GROUP BY lh.location_name, es.shift_type
ORDER BY labor_cost_per_unit DESC;
