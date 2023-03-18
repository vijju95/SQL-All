create database Lotus;

use Lotus;

create table Employee(

emp_id int primary key,
emp_name varchar(20) unique,
emp_dept varchar(20),
emp_salary int);

insert into Employee values (101, 'happy', 'dev', 10),
(102, 'prasad', 'dev', 4),
(103, 'pranay', 'hr', 1),
(104, 'prat', 'hr', 1),
(106, 'prathmesh', 'dev', 2),
(105, 'vijay', 'dev', 2);
drop table Employee;
-- find out total salary count as per department
select * from Employee;
select emp_dept, sum(emp_salary) from Employee group by emp_dept;
select emp_dept, sum(emp_salary) from Employee group by emp_id;
select count(emp_dept) from Employee;
-- find list of employees according to therer department
select count(emp_id),  emp_dept from Employee group by emp_dept;



