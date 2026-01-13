-- Use the insert statement to add a few more users to our users table:
INSERT INTO users (username, firstName, lastName, age)
VALUES
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);
 
 -- Turning off safe mode to allow updates
 SET sql_safe_updates=0;
 
 -- Update the first name to Jane and the last name to Doe where the username is jdoe
 UPDATE users 
 SET firstName = 'Jane', lastName = 'Doe' 
 WHERE username = 'jdoe';
 
 -- Update all users with the last name "Doe" to have the first name "Jane"
 UPDATE users
 SET firstName= 'Jane'
 WHERE lastName = 'Doe';
 
--  Delete users with the username 'jdoe'
DELETE from users
WHERE username='jdoe';
 
 --  Turning safe mode back on
 SET sql_safe_updates=1;
 
--  Retrieve the first and last name of those with the last name 'Doe'
SELECT firstName, lastName 
FROM users 
WHERE lastName = 'Doe';
 
--  Retrieve all users with the last name "Doe" and the first name "John"
 SELECT * FROM users 
 WHERE lastName = 'Doe' AND firstName = 'John';
 
 --  Retrieve all users with the last name "Doe" or the first name "John"
 SELECT * FROM users 
 WHERE lastName = 'Doe' OR firstName = 'John';
 
--  Retrieve all users with the last name "Doe" but not the first name "John"
SELECT * FROM users 
WHERE lastName = 'Doe' AND NOT firstName = 'John';

-- Retrieve all users with the last name "Doe" and either the first name "John" or "Jane"
SELECT * FROM users 
WHERE lastName = 'Doe' 
AND (firstName = 'John' OR firstName = 'Jane');

-- Retrieve the first name and last name of all users, and call the first name "First" and the last name "Last"
SELECT firstName AS First, lastName AS Last FROM users;

-- Retrieve usernames and a new column called "ageIn10Years" (age of the user plus 10)
SELECT username, age + 10 
AS ageIn10Years 
FROM users;

-- Retrieve the first name and last name of all users and combine them into a single column called "fullName"
SELECT concat(firstName, ' ', lastName) 
AS fullName FROM users;

-- Retrieve all users and sort them by age in descending order
SELECT * FROM users ORDER BY age DESC;

-- Retrieve all users and sort them by last name in ascending order and then by first name in ascending order
SELECT * FROM users 
ORDER BY lastName ASC, firstName ASC;

-- Retrieve the first 5 users in the table
SELECT * FROM users LIMIT 5;

-- Retrieve the next 5 users in the table starting from the 6th user
SELECT * FROM users LIMIT 5 OFFSET 5;


