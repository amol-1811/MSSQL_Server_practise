use BikeStores

SELECT first_name, last_name FROM sales.customers
ORDER BY first_name;

--SORT IN ASCENDING ORDER
SELECT first_name, last_name FROM sales.customers
ORDER BY first_name ASC;

--SORT IN DESCENDING ORDER
SELECT first_name, last_name FROM sales.customers
ORDER BY first_name DESC;

--sort a result set by multiple columns
SELECT city, first_name, last_name FROM sales.customers
ORDER BY city, first_name;

--sort a result by multiple columns in different orders
SELECT city, first_name, last_name FROM sales.customers
ORDER BY city DESC, first_name ASC;

--sort a result by a column that is not in the select list
SELECT city, first_name, last_name FROM sales.customers
ORDER BY state;

--sort a result set by an expression
SELECT first_name, last_name FROM sales.customers
ORDER BY LEN(first_name) DESC;

--sort by ordinal positions of cols
SELECT first_name, last_name FROM sales.customers
ORDER BY 1,2;