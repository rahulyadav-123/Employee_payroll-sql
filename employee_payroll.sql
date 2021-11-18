show databases;
#UC1 - Create database
create database payroll_service_new;
use payroll_service_new;
select database();

#UC2 - create table 
create table employee_payroll (id int unsigned not null auto_increment,
 name varchar(150) not null, 
 salary double Not null, 
 start date not null, 
 primary key (id));
 describe employee_payroll;
 
#UC3 - insert contacts
insert into employee_payroll (name, salary, start) VALUES
 ('Mark', 2000000.00, '2019-11-13'),
 ('charlie', 3000000.00, '2020-05-21'),
 ('Bill', 1000000.00, '2018-01-03');
 
#UC4 - Retrieve all data
select * from employee_payroll;

#UC5 -  Retrieve salary data for a particular employee
select Salary from employee_payroll where EmployeeName ='Bill';
select * from employee_payroll where StartDate between cast('2018-01-03' as Date) AND DATE(NOW()) ;

#UC6 - add Gender to Employee Payroll Table and Update the Rows
alter table employee_payroll add gender char(3) after salary;
update employee_payroll set gender = 'M' where name in('Charlie','Bill');
select * from employee_payroll;

#UC7 - Find Sum Avg Min Max and Count from table
select sum(Salary) from employee_payroll where Gender = 'F' group by Gender;
select sum(Salary) from employee_payroll where Gender = 'M' group by Gender;

select avg(Salary) from employee_payroll where Gender = 'F' group by Gender;
select avg(Salary) from employee_payroll where Gender = 'M' group by Gender;

select min(Salary) from employee_payroll where Gender = 'F' group by Gender;
select min(Salary) from employee_payroll where Gender = 'M' group by Gender;

select max(Salary) from employee_payroll where Gender = 'F' group by Gender;
select max(Salary) from employee_payroll where Gender = 'M' group by Gender;

select count(Salary) from employee_payroll where Gender = 'F' group by Gender;
select count(Salary) from employee_payroll where Gender = 'M' group by Gender;







