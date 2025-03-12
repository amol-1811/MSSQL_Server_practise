SELECT product_id, product_name, list_price
FROM production.products
WHERE list_price BETWEEN 149.99 AND 199.99
ORDER BY list_price;

--To get the products whose list prices are not in the range
SELECT product_id, product_name, list_price
FROM production.products
WHERE list_price NOT BETWEEN 149.99 AND 199.99
ORDER BY list_price;

--Using SQL Server BETWEEN with dates
SELECT order_id, customer_id, order_date, order_status
FROM sales.orders
WHERE order_date BETWEEN '20170115' AND '20170117'
ORDER BY order_date;
