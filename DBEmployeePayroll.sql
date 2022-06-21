--UC-1 creating database
create database payroll_service;
use payroll_service;


--UC-2 creating Table
create Table employee_payroll
(
id int identity(1,1) primary key,
name varchar(200) not null,
salary float,
startDate date
)
