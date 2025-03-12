USE BikeStores

SELECT * FROM production.brands;
SELECT * FROM production.categories;
SELECT * FROM production.products;
SELECT * FROM production.stocks;
SELECT * FROM sales.customers;
SELECT * FROM sales.staffs;
SELECT * FROM sales.stores;
SELECT * FROM sales.order_items;

--using specific columns from table
SELECT list_price FROM sales.order_items;
SELECT first_name, last_name FROM sales.customers;
SELECT first_name, last_name, email FROM sales.customers;

--using WHERE
SELECT * FROM sales.customers WHERE state = 'CA';

--using ORDER BY
SELECT * FROM sales.customers WHERE state='CA' ORDER BY first_name;

--using GROUP BY
SELECT city,COUNT (*) FROM sales.customers WHERE state = 'CA' GROUP BY city ORDER BY city;

--using HAVING 
SELECT
    city,
    COUNT (*)
FROM
    sales.customers
WHERE
    state = 'CA'
GROUP BY
    city
HAVING
    COUNT (*) > 10
ORDER BY
    city;