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

--UC-3 Insert values in Table
Insert into employee_payroll(name,salary,startDate) values
('Zeeshan',20000,'2022-03-12'),
('Sarwar',25000,'2022-04-18'),
('John',10000,'2022-05-13'),
('Amelia',30000,'2022-06-09');
select * from employee_payroll;


--UC-4 Retrieve All data--
select * from employee_payroll;

------- UC 5: Select Query using Cast() an GetDate() -------
select salary from employee_payroll where name='John';
select salary from employee_payroll where startDate BETWEEN Cast('2022-05-13' as Date) and GetDate();