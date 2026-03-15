create table WORKERS(
id INT,
name VARCHAR(20),
department VARCHAR(20),
salary INT,
city VARCHAR(20)
);

INSERT INTO WORKERS
values (1,'maya','IT',50000,'rohtak'),
(2,'rahul','HR',60000,'jaipur'),
(3,'rajesh','FINANCE',30000,'sonipat'),
(4,'komal','SALES',60000,'chennai'),
(5,'annu','HR',40000,'panipat'),
(6,'kumar','OPERATION',55000,'lucknow');
----show all columns fom WORKERS table
SELECT * FROM WORKERS;
---Show only name and salary from WORKERS.
SELECT name ,salary
FROM WORKERS ;
----Find WORKERS whose salary is greater than 50000.
SELECT salary 
FROM WORKERS
WHERE salary>50000;
----Find WORKERS who work in IT department.
SELECT department,name
FROM WORKERS
WHERE department='IT';
-----Find WORKERS whose salary is between 40000 and 70000.
SELECT salary
FROM WORKERS
WHERE salary>40000 and salary <70000;
---Find WORKERS whose name starts with 'A'.
SELECT name
FROM WORKERS
WHERE name LIKE ('A%');

----Find WORKERS whose name starts with 'n'.
SELECT name
FROM WORKERS
WHERE name LIKE ('%n');
----Count number of WORKERS in each department.
SELECT department,COUNT(department)
FROM WORKERS
GROUP BY department;
---Find average salary in each department.
SELECT salary,AVG(salary)
FROM WORKERS
GROUP BY salary;
----Show WORKERS ordered by salary from highest to lowest.
SELECT *
FROM WORKERS
ORDER BY salary ASC ;
