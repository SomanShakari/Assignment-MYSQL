-- Assignment 6

-- Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.

SELECT *
FROM Worker
WHERE joining_date >= '2014-02-01' AND joining_date < '2014-03-01';



-- Q-2. Write an SQL query to fetch duplicate records having matching data in some fields of a table.

SELECT * FROM worker;

SELECT first_name,last_name,department,salary, COUNT(*) AS count
FROM worker
GROUP BY first_name,last_name,department,salary
HAVING COUNT(*) >1;

-- Q-3. How to remove duplicate rows from Employees table.

CREATE TABLE temworker AS
SELECT DISTINCT * 
FROM worker;

SELECT * FROM temworker;
DELETE FROM worker;

INSERT INTO worker
SELECT *
FROM temworker;

DROP TABLE TempEmployees;