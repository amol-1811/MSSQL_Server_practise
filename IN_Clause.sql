SELECT product_name, list_price FROM production.products
WHERE list_price IN (89.99, 109.99, 159.99)
ORDER BY list_price;

--To find the products whose list prices are not in given prices
SELECT product_name, list_price FROM production.products
WHERE list_price NOT IN (89.99, 109.99, 159.99)
ORDER BY list_price;

-- using IN operator with a comparison operator
SELECT product_id FROM production.stocks
WHERE store_id = 1 AND quantity >= 30;