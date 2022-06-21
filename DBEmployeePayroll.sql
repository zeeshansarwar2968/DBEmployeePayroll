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

------- UC 6: Add Gender Column and Update Table Values -------
Alter table employee_payroll add Gender char(1);

Update employee_payroll set Gender='M' where name='Zeeshan' or name='Sarwar' or name='John';
Update employee_payroll set Gender='F' where name='Amelia';

------- UC 7: Use Aggregate Functions and Group by Gender -------

select Sum(salary) as "TotalSalary",Gender from employee_payroll group by Gender;
select Avg(salary) as "AverageSalary",Gender from employee_payroll group by Gender;
select Min(salary) as "MinimumSalary",Gender from employee_payroll group by Gender;
select Max(salary) as "MaximumSalary",Gender from employee_payroll group by Gender;
select count(salary) as "CountSalary",Gender from employee_payroll group by Gender;
