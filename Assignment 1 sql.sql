-- create database sql_assignment;
-- use  sql_assignment;

-- create table worker(
-- id int auto_increment primary key,
-- first_name varchar(50) not null,
-- last_name varchar(50) not null,
-- department varchar(50) not null,
-- mobile varchar(20) unique not null,
-- salary decimal(10,2) not null
-- ); 

insert into worker(first_name,last_name,department,mobile,salary)values
("soman","shakari","data_analytics",7303214414,90000),
("sapna","kumari","cloud",0909090911,50000),
("sema","khan","software",0909090978,60000),
("shoeb","achan","hr",0909090923,70000),
("raja","sachan","clients",0909090956,80000),
("muzamil","keshor","marketing",0909090990,90000),
("rohit","aggarwal","production",0909090112,70000),
("roy","rajpot","law",0909090977,50000),
("aditi","jaht","investment",0909090988,90000),
("nikil","kumar","database",0909090934,30000),
("salman","ayat","sport",0909090912,20000);

update worker
set department ="hr"
where id = 263;

update worker
set department ="marketing"
where id = 258;

update worker 
set department= "law"
where id = 262;

select * from worker;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as WORKER_NAME;.
SELECT first_name FROM worker AS WORKER_NAME;

-- Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
SELECT DISTINCT department 
FROM worker;

-- Q-3. Write an SQL query to show the last 5 record from a table.
SELECT * FROM worker
ORDER BY id DESC
LIMIT 5;