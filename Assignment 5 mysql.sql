-- Assignment 5

-- Q-1. Write an SQL query to print details of workers excluding first names, “Vipul” and
-- “Satish” from Worker table.

SELECT *
FROM worker
WHERE first_name NOT IN  ("soman", "shoeb");

-- Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with
-- ‘l’ and contains six alphabets.

SELECT *
FROM worker
WHERE first_name LIKE "______l";

select * from  worker;

ALTER TABLE worker ADD COLUMN email VARCHAR(255);

-- Q-3. Write a query to validate Email of Employee.

UPDATE worker
SET email = 'SDJF.COM@DJD'
WHERE id = 264;

UPDATE worker
SET email = CASE
	WHEN id = 254 THEN 'soman@gmail.com'
    WHEN id = 255 THEN 'sapna@gmail.com'
    WHEN id = 256 THEN 'sema@gmail.com'
    WHEN id = 257 THEN 'shoeb@gmail.com'
    WHEN id = 258 THEN 'raJa@gmial.com'
    WHEN id = 259 THEN 'muzamil:@gmailcom'
    WHEN id = 260 THEN 'rohitgmail.com'
    WHEN id = 261 THEN 'roy@gmail.com'
    WHEN id = 262 THEN ' DFGD.COM'
    WHEN id = 263 THEN ' '
    WHEN id = 264 THEN 'SDJF.COM@DJD'
END;
    
    
SELECT *
FROM worker
WHERE REGEXP_LIKE(Email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}$');
