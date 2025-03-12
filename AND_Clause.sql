SELECT * FROM production.products 
WHERE category_id = 1 AND list_price > 400 
ORDER BY list_price DESC;

--using multiple SQL Server AND operators
SELECT * FROM production.products 
WHERE category_id = 1 AND list_price > 400 AND brand_id = 1 
ORDER BY list_price DESC;

--using the and operator with other logical operators
SELECT * FROM production.products
WHERE brand_id = 1 OR brand_id = 2 AND list_price > 1000 --not compare or server always evaluates AND operator first
ORDER BY brand_id DESC;

SELECT * FROM production.products
WHERE (brand_id = 1 OR brand_id = 2) AND list_price > 1000
ORDER BY brand_id ;