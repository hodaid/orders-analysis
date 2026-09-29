-- (a) INNER JOIN query
SELECT c.name, o.amount 
FROM customers c 
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- (b) GROUP BY query (Total Spend)
SELECT c.name, SUM(o.amount) AS total_spent 
FROM customers c 
INNER JOIN orders o ON c.customer_id = o.customer_id 
GROUP BY c.customer_id, c.name 
ORDER BY total_spent DESC;

-- (c) GROUP BY query with HAVING (City Average > 5000)
SELECT c.city, AVG(o.amount) AS avg_amount 
FROM customers c 
INNER JOIN orders o ON c.customer_id = o.customer_id 
GROUP BY c.city 
HAVING AVG(o.amount) > 5000;
