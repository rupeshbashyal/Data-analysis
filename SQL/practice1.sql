create database Patients
use Patients
create table patients (
id int not null,
FirstName varchar(50) not null,
LastName varchar(50) not null,
DateOfBirth varchar(50) not null,
Gender varchar(50) not null,
Email varchar(50) not null,
Addres varchar(50) not null,
)

select * from Patients

insert into Patients values (104,'harry','strom',
'1992/08/14','Male','harry@gmail.com','kathmandu')

create table PatientsVisit(
VisitId int not null,
PatientId int not null,
DateOfvisit varchar(50) not null,
DoctorId int not null,
ReasonOfVisit varchar(50) not null,
NextVisitDate varchar(50) not null,
)
select * from PatientsVisit

insert into PatientsVisit values(1233,104,'2025/11/28',22,
'eye check up','2026/04/05')
