create database Triggerss;

use Triggerss;

create table employee (
Employee_id int primary key,
Employee_name varchar(20),
Employee_salary int );

create table backup_emp (
Employee_id int primary key,
Employee_name varchar(20),
Employee_salary int );
 
insert into employee values (101, 'Happy', 999999);
insert into employee values (104, 'Vijay', 20000);
insert into employee values (102, 'Prasad', 50000);

delete from employee where Employee_id=104;

delimiter 
create trigger t1
before delete on employee
for each row
begin
insert into backup_emp values (old.Employee_id, old.Employee_name, old.Employee_salary);
end;
