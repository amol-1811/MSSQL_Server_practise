--syntax
/*SELECT TOP (expression) [PERCENT]
    [WITH TIES]
FROM 
    table_name
ORDER BY 
    column_name;*/

--with constant values
SELECT TOP 10 product_name, list_price
FROM production.products
ORDER BY list_price DESC;

--using select top to return a percentage of rows
SELECT TOP 1 PERCENT product_name, list_price
FROM production.products
ORDER BY list_price DESC;

--using select top with ties to include rows that match values in the last row
SELECT TOP 3 WITH TIES product_name, list_price
FROM production.products
ORDER BY list_price DESC;