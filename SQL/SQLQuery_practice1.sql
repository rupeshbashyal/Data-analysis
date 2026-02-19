use practiceDB

SELECT name FROM sys.tables;

select * from Students

select * from Students where FirstName like 's%'


select * from Staff

--list employee name, salary, allowances (40% of salary), Fd(10% of salary) and net salary
select FirstName,LastName,Salary,Salary*0.4 as Allowances,Salary*0.1 as FD, Salary+(Salary*0.4)-(Salary*0.1) as Net_salary
from Staff

--list of employee name, salary and only male of depatrmant saales

select FirstName, LastName, Salary
from Staff where Gender='Male' and Department='sales'


--list the employee which has exprience of more than 5years

select FirstName from Staff where (year(GETDATE()) - year(HireDate)) > 5


--list of classes 
select distinct class from Students



select firstname, salary from staff order by Salary

--list the employee names and hiredate in the order who has joined latest

select FirstName,LastName,HireDate from Staff order by HireDate desc


CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO students VALUES
(1, 'Rupesh', 'Kathmandu'),
(2, 'Sita', 'Pokhara'),
(3, 'Ram', 'Butwal');


-- Convert to uppercase
SELECT UPPER(name) FROM students;

-- Convert to lowercase
SELECT LOWER(name) FROM students;

-- Length of string
SELECT LEN(name) FROM students;

-- Combine text
SELECT CONCAT(name, ' - ', city) AS details FROM students;

-- Substring
SELECT SUBSTRING(name,1,3) FROM students;


--neumeric function

SELECT ABS(-25);          -- absolute value
SELECT CEILING(4.3);      -- round up
SELECT FLOOR(4.9);        -- round down
SELECT ROUND(45.678, 2);  -- round to 2 decimals
SELECT POWER(2,3);        -- 2^3
SELECT SQRT(64);          -- square root
