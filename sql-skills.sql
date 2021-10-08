-- Artist Table
-- Add 3 new artists to the artist table using INSERT. (It’s already created)
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
SELECT COUNT(total) FROM invoice 
WHERE total < 5
ORDER BY total DESC;
-- Get the total sum of the orders.
SELECT SUM (total) AS total_orders FROM invoice;

-- JOIN Queries (Various tables)
-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT * FROM Invoice
JOIN invoice_line on invoice.invoice_id = invoice_line.invoice_id
WHERE invoice_line.unit_price > 0.99;
-- Get the invoice_date, customer first_name and last_name, and total from all invoices.
SELECT first_name, last_name, invoice_date, total FROM customer
JOIN invoice ON invoice.customer_id = customer.customer_id;
-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table.
SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name FROM employee
JOIN customer ON customer.support_rep_id = employee.employee_id;
-- Get the album title and the artist name from all albums.
SELECT album.title, artist.name FROM artist
JOIN album ON album.artist_id = artist.artist_id