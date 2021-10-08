-- Extra Credit
-- SQL


-- Artist Table
-- Select 10 artists in reverse alphabetical order.
SELECT *
FROM artist
ORDER BY name DESC
LIMIT 10;
-- Select all artists that start with the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE 'Black%';
-- Select all artists that contain the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE '%Black%';

-- Employee Table
-- Find the birthdate for the youngest employee.
SELECT MAX(birth_date) FROM employee;
-- Find the birthdate for the oldest employee.
SELECT MIN(birth_date) FROM employee;

-- Invoice Table
-- Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) FROM invoice
WHERE billing_state IN('CA', 'TX', 'AZ');
-- Get the average total of the orders.
SELECT AVG (total) FROM invoice;