-- Artist Table
-- Add 3 new artists to the artist table using INSERT. (It’s already created.)
SELECT * FROM artist;
INSERT INTO artist
(name)
VALUES
('Earth, Wind, and Fire'),
('Michael Jackson'),
('Lauryn Hill');

SELECT * FROM artist
ORDER BY artist_id DESC
LIMIT 10;
-- Select 5 artists in alphabetical order.
SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

-- Employee Table
-- List all employee first and last names only that live in Calgary.
SELECT first_name, last_name, city
FROM employee
WHERE city = 'Calgary';

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column). You will need to query the employee table to find the Id for Nancy Edwards
SELECT first_name, last_name, employee_id FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';
SELECT * FROM employee
WHERE reports_to = 2;
-- Count how many people live in Lethbridge.
SELECT COUNT(city) AS city_lethbridge 
FROM employee
WHERE city IN('Lethbridge');

-- Invoice Table
-- Count how many orders were made from the USA.
SELECT COUNT(total) AS total_usa_orders FROM invoice
WHERE billing_country IN('USA');
-- Find the largest order total amount.
SELECT MAX(total) AS total FROM invoice;

-- Find the smallest order total amount.
SELECT MIN(total) AS total FROM invoice;

-- Find all orders bigger than $5.
SELECT * FROM invoice 
WHERE total > 5
ORDER BY total ASC;
-- Count how many orders were smaller than $5.
SELECT * FROM invoice 
WHERE total < 5
ORDER BY total DESC;
-- Get the total sum of the orders.