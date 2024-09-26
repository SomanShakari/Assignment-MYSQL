use sql_assignment;

-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing
-- white spaces from the right side.

SELECT RTRIM(first_name) as FIRST_NAME
FROM worker;

-- Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
SELECT DISTINCT department, LENGTH(department) as departmentLenght
FROM worker;

-- Q-3. Write an SQL query to fetch nth max salaries from a table.
-- LIMIT 1 OFFSET n - 1 (replace the n with the actual number you want)
SELECT * 
FROM worker
ORDER BY salary DESC
LIMIT 1 OFFSET 2;
