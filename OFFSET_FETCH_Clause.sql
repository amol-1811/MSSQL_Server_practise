SELECT product_name, list_price FROM production.products
ORDER BY list_price, product_name;

--to skip first 10 prod and return the rest
SELECT product_name, list_price FROM production.products
ORDER BY list_price, product_name
OFFSET 10 ROWS;

--to skip first 10 prod & select the next 10 products
SELECT product_name, list_price FROM production.products
ORDER BY list_price, product_name
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

--using OFFSET FETCH clause to get the top N rows
SELECT product_name, list_price FROM production.products
ORDER BY list_price DESC, product_name
OFFSET 0 ROWS
FETCH FIRST 10 ROWS ONLY;