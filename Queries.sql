-- =========================================
-- E-COMMERCE SALES ANALYSIS PROJECT
-- SQL ANALYSIS QUERIES
-- =========================================

-- =========================================
-- TOTAL REVENUE
-- =========================================

SELECT
SUM(price + freight_value) AS total_revenue
FROM order_items;

-- =========================================
-- TOTAL ORDERS
-- =========================================

SELECT
COUNT(DISTINCT order_id) AS total_orders
FROM orders;

-- =========================================
-- TOTAL CUSTOMERS
-- =========================================

SELECT
COUNT(DISTINCT customer_id) AS total_customers
FROM customers;

-- =========================================
-- TOP CITIES BY ORDERS
-- =========================================

SELECT
c.city,
COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_orders DESC
LIMIT 10;

-- =========================================
-- MONTHLY REVENUE TREND
-- =========================================

SELECT
MONTH(order_date) AS month_no,
SUM(oi.price + oi.freight_value) AS revenue
FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY MONTH(order_date)
ORDER BY month_no;

-- =========================================
-- TOP PRODUCTS
-- =========================================

SELECT
product_id,
COUNT(*) AS total_sales
FROM order_items
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 10;

-- =========================================
-- AVERAGE ORDER VALUE
-- =========================================

SELECT
SUM(price + freight_value) / COUNT(DISTINCT order_id) AS avg_order_value
FROM order_items;

-- =========================================
-- REPEAT CUSTOMERS
-- =========================================

SELECT
customer_id,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1
ORDER BY total_orders DESC;

-- =========================================
-- TOP STATES BY CUSTOMERS
-- =========================================

SELECT
customer_state,
COUNT(customer_id) AS total_customers
FROM customers
GROUP BY customer_state
ORDER BY total_customers DESC;

-- =========================================
-- HIGHEST ORDER VALUE
-- =========================================

SELECT
order_id,
SUM(price + freight_value) AS order_value
FROM order_items
GROUP BY order_id
ORDER BY order_value DESC
LIMIT 10;

-- =========================================
-- ORDERS PER MONTH
-- =========================================

SELECT
MONTH(order_purchase_timestamp) AS month_no,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY MONTH(order_purchase_timestamp)
ORDER BY month_no;

-- =========================================
-- AVERAGE SHIPPING COST
-- =========================================

SELECT
AVG(freight_value) AS avg_shipping_cost
FROM order_items;


