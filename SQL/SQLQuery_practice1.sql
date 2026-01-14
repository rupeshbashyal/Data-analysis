SELECT name FROM sys.tables;

use practiceDB

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


--aggration


