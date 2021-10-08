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
