create database Snapdragon;

use Snapdragon;

create table Student (
s_roll int primary key,
s_name varchar(20) NOT NULL,
s_email varchar(20) unique,
s_phonenum varchar(20) unique,
s_gender varchar(20),
s_courceid int,
foreign key(s_courceid) references cource(s_courceid));

insert into Student values (15, 'vijay', 'vi@gmail.com', '8050502020', 'male', 101),
(16, 'happy', 'ha@gmail.com', '562515522', 'female', 102),
(17, 'prasad', 'pr@gmail.com', '2552254415', 'male', 103),
(18, 'pranay', 'pn@gmail.com', '5254566325', 'male', 104);


create table cource (
s_courceid int primary key,
c_fees int );

drop table Student;
drop table cource;

-- ex auto : inside table student,foreign key(s_courceid) references cource(s_courceid));

-- manually creation of foreign key
alter table Student
drop constraint student_ibfk_1;

alter table Student
add constraint vijay_ibfk
foreign key (s_courceid)
references cource (s_courceid);

insert into cource values (101, 25000),
(102, 30000),
(103, 40000),
(104, 45000);

-- drop foreign key
alter table student drop constraint student_ibfk_1;

-- constraint use how to add unique after table is created
alter table cource
add constraint unfk unique (c_fees);

-- constraint use how to set not null key
alter table cource
modify column c_fees int not null;

-- how to add unique after table is created
alter table Student
add constraint unfkk unique (s_name);
