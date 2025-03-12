--using WHERE clause with simple equality operator
SELECT product_id, product_name, category_id, model_year, list_price
FROM production.products
WHERE category_id = 1
ORDER BY list_price DESC;

--using where clause with theAND operator
SELECT product_id, product_name, category_id, model_year, list_price
FROM production.products
WHERE category_id = 1 AND model_year = 2018
ORDER BY list_price DESC;

--using where to filter rows using a comparision operator
SELECT product_id, product_name, category_id, model_year, list_price
FROM production.products
WHERE list_price > 300 AND model_year = 2018
ORDER BY list_price DESC;

--using where clause to filter rows that meet any of two conditions
SELECT product_id, product_name, category_id, model_year, list_price
FROM production.products
WHERE list_price > 3000 OR model_year = 2018
ORDER BY list_price DESC;

--using where clause to filter rows with the value betwwn two values
SELECT product_id, product_name, category_id, model_year, list_price
FROM production.products
WHERE list_price BETWEEN 1899.00 AND 1999.99
ORDER BY list_price DESC;

--using where clause to filter rows that have a value in a list of values
SELECT product_id, product_name, category_id, model_year, list_price
FROM production.products
WHERE list_price IN (299.99, 369.99, 489.99)
ORDER BY list_price DESC;

--finding rows whose values contain a string
SELECT product_id, product_name, category_id, model_year, list_price
FROM production.products
WHERE product_name LIKE '%Cruiser%'
ORDER BY list_price;