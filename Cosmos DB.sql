create database Cosmos;

use Cosmos;

create table Employeee (
Emp_id int primary key,
Emp_name varchar(20),
Emp_deptName varchar(20),
Emp_location varchar(20),
Emp_deptId int,
foreign key(Emp_deptId) references department(Emp_deptId));

create table departmentt (
Emp_deptId int primary key,
Dep_count int,
foreign key(Dep_count) references countt(Dep_count));

create table countt (
Dep_count int primary key,
Dep_type varchar(10));

drop table Employeee;
drop table countt;
drop table departmentt;

insert into Employeee values (1,'Vijay', 'development', 'pune', 2),
						   (2,'Pranay', 'tester', 'hadapsar', 1);

insert into departmentt values (1, 16),
						   (2,12);

insert into countt values (16, 'mid'),
						   (12,'small');