--using the SELECT DISTINCT with one column
SELECT city FROM sales.customers
ORDER BY city;

SELECT DISTINCT city
FROM sales.customers
ORDER BY city;

--using SELECT DISTINCT with multiple columns
SELECT city, state FROM sales.customers
ORDER BY city, state;

SELECT DISTINCT city, state FROM sales.customers;

--using SELECT DISTINCT with NULL
SELECT DISTINCT phone FROM sales.customers ORDER BY phone;

