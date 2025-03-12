SELECT customer_id, YEAR (order_date) order_year
FROM sales.orders
WHERE customer_id IN (1, 2)
GROUP BY customer_id, YEAR (order_date)
ORDER BY customer_id;

--following query returns the number of orders placed by the customer by year
SELECT customer_id, YEAR (order_date) order_year, COUNT (order_id) order_placed
FROM sales.orders
WHERE customer_id IN (1, 2)
GROUP BY customer_id, YEAR (order_date)
ORDER BY customer_id; 

--Using GROUP BY clause with the COUNT() function 
SELECT city, COUNT (customer_id) customer_count
FROM sales.customers
GROUP BY city
ORDER By city;

--following query returns the number of customers by state and city
SELECT city, state, COUNT (customer_id) customer_count
FROM sales.customers
GROUP BY city, state
ORDER By city, state;


