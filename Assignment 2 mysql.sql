use sql_assignment;

-- Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
SELECT substring(first_name,1,3) as FristThreeNameCharacter
FROM worker;

-- select first_name,last_name, substring(first_name,1,3) as FristThreeNameCharacter FROM worker;

-- Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘soman’ from Worker table.
SELECT position("a" in first_name) as PositionOfA
FROM worker
WHERE first_name="soman";

-- Q-3. Write an SQL query to print the name of employees having the highest salary in each department.
SELECT first_name, department, salary
FROM worker
WHERE salary = (
	SELECT max(salary)
    FROM worker
    WHERE department = worker.department
    );