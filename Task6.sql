-- Create table
CREATE TABLE online_sales (
    order_id INTEGER,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INTEGER
);

-- Sample data
INSERT INTO online_sales VALUES
(1,'2024-01-05',500,101),
(2,'2024-01-10',700,102),
(3,'2024-02-15',800,103),
(4,'2024-02-20',600,104),
(5,'2024-03-05',900,105),
(6,'2024-03-15',1000,106);

-- Monthly Sales Trend Analysis
SELECT
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
