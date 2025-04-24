--The following statement uses the HAVING clause to find the customers who placed at least two orders per year
SELECT customer_id, YEAR (order_date), COUNT (order_id) order_count
FROM sales.orders
GROUP BY customer_id, YEAR (order_date)
HAVING COUNT (order_id) >= 2
ORDER BY customer_id;

--SQL Server HAVING clause with MAX and MIN functions
SELECT category_id,
    MAX (list_price) max_list_price,
    MIN (list_price) min_list_price
FROM production.products
GROUP BY category_id
HAVING MAX (list_price) > 4000 OR MIN (list_price) < 500;

--SQL Server HAVING clause with AVG() function 
SELECT category_id,
    AVG (list_price) avg_list_price
FROM production.products
GROUP BY category_id
HAVING AVG (list_price) BETWEEN 500 AND 1000;