create database joinss;
use joinss;

-- NATURAL JOIN EXAMPLE
create table employee (
e_no int not null,
e_name varchar(20),
e_address varchar(30),
foreign key(e_no) references department(e_no));
create table department (
e_no int primary key,
dept_no varchar(10),
dept_name varchar(20));

insert into employee values 
(1, 'goblin', 'COC Town'),
(2, 'healer', 'Legacy'),
(4, 'vizard', 'COC Town');
insert into department values 
(1,'D1','IT'),
(2,'D2','HR'),
(3,'D3','Prod'),
(4,'D4','QA');
select e_name from employee natural join department where employee.e_no=department.e_no;

-- SELF JOIN EXAMPLE
create table study (
s_id varchar(20),
c_id varchar(20),
since int);
insert into study values 
('Bowler', 'c1', 2016),
('Electro', 'c2', 2016),
('Vizard', 'c1', 2016);
select t1.s_id,t1.c_id from study as t1, study t2 where t1.c_id=t2.c_id and t1.s_id<>t2.s_id;

-- EQUE JOIN EXAMPLE
create table emp (
e_no int,
e_name varchar(20),
e_address varchar(20),
foreign key(e_no) references dept(e_no));
insert into emp values
(1, 'goblin','pune'),
(2, 'Yeti', 'coc'),
(3, 'Hog rider','mumbai');
drop table emp; 	drop table dept;
create table dept (
e_no int primary key,
d_no int,
d_loc varchar(20)); 
insert into dept values
(1, 101, 'pune'),
(2, 105, 'mumbai'),
(3, 110, 'chennai');
select e_name from emp, dept where emp.e_no=dept.e_no and emp.e_address=dept.d_loc;

-- OUTER JOIN (LEFT/RIGHT/FULL OUTER JOIN) EXAMPLE
create table eemployee (
e_no int ,
e_name varchar(20),
e_dept varchar(20),
foreign key(e_no) references ddepartment(e_no));
create table ddepartment (
e_no int primary key,
d_name varchar(20),
d_location varchar(20));
insert into eemployee values 
(1, 'Goblin', 'IT'),
(2, 'Archer', 'Hr'),
(3, 'Bomber', 'prod');
insert into ddepartment values 
(1, 'd1', 'pune'),
(2, 'd2', 'mumbai'),
(3, 'd3', 'pune');
select e_name from eemployee left outer join ddepartment on (eemployee.e_no=ddepartment.e_no);
select d_location, d_name from eemployee right outer join ddepartment on (eemployee.e_no=ddepartment.e_no);
-- select d_location from eemployee full outer join ddepartment on (eemployee.e_no=ddepartment.e_no);

-- CROSS JOIN (CROSS PRODUCT) EXAMPLE
create table students (
sName varchar(20),
sRollNum int,
foreign key (sRollNum) references claass (sRollNum));
create table claass (
sRollNum int primary key,
sClassName varchar(20));
insert into students values 
('Healer', 12),
('LavaHound', 14);
insert into claass values 
(12, 'CHATE'),
(14, 'SICM');

