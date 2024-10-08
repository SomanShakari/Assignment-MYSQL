-- Assignment 4

-- Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’
-- with ‘A’.

use sql_assignment;

SELECT replace(first_name,"a","A") 
FROM worker;

-- Q-2. Write an SQL query to print all Worker details from the Worker table order by
-- FIRST_NAME Ascending and DEPARTMENT Descending.

SELECT * FROM worker
ORDER BY first_name ASC, department DESC;

-- Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.

SELECT first_name ,salary
FROM worker 
WHERE salary = (
	SELECT MAX(salary)
    FROM worker 
    WHERE salary  = worker.salary
    ); 
    
    

    