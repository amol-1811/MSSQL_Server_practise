--Using the LIKE operator with the % wildcard 
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE 'z%'
ORDER BY first_name;

--uses the LIKE operator with the % wildcard to return the customers whose last name ends with the string er
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE '%er'
ORDER BY first_name;

--use the LIKE operator to retrieve the customers whose last name starts with the letter t and ends with the letter s
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE 't%s'
ORDER BY first_name;

--Using the LIKE operator with the _ (underscore) wildcard
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE '_u%'
ORDER BY first_name;

--Using the LIKE operator with the [list of characters] wildcard
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE '[YZ]%'
ORDER BY first_name;

--Using the LIKE operator with the [character-character] wildcard
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE '[A-C]%'
ORDER BY first_name;

--Using the LIKE operator with the [^Character List or Range]
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name LIKE '[^A-X]%'
ORDER BY first_name;

--Using the NOT LIKE operator
SELECT customer_id, first_name, last_name
FROM sales.customers
WHERE last_name NOT LIKE 'A%'
ORDER BY first_name;

--Using the LIKE operator with ESCAPE example

--create a new table:
CREATE TABLE sales.feedbacks (
  feedback_id INT IDENTITY(1, 1) PRIMARY KEY, 
  comment VARCHAR(255) NOT NULL
);

--insert some rows into the table:
INSERT INTO sales.feedbacks(comment)
VALUES('Can you give me 30% discount?'),
      ('May I get me 30USD off?'),
      ('Is this having 20% discount today?');

--query data from the table:
SELECT * FROM sales.feedbacks;

--search for 30% in the comment column
SELECT feedback_id, comment FROM sales.feedbacks
WHERE comment LIKE '%30%';

--above query creates problem gives 2 result. thats why ESCAPE clause is used

SELECT feedback_id, comment FROM sales.feedbacks
WHERE comment LIKE '%30!%%' ESCAPE '!';