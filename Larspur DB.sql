-- example for multiple primary keys
create database Larspur;
use Larspur;

create table studentJob (
s_roll int primary key,
s_name varchar(20),
s_email varchar(20) unique,
s_phonenum varchar(20) unique,
s_gender varchar(20),
s_courceid int,
foreign key(s_courceid) references privateJob (s_courceid),
foreign key(s_courceid) references govJob (s_courceid));

create table privateJob (
s_courceid int primary key,
job_title varchar(20),
job_hrs int );

create table govJob (
s_courceid int primary key,
job_title varchar(20),
job_hrs int );

drop table studentJob;
drop table privateJob;
drop table govJob;

insert into studentJob values (15, 'vijay', 'vi@gmail.com', '8050502020', 'male', 101),
(16, 'happy', 'ha@gmail.com', '562515522', 'female', 102),
(17, 'prasad', 'pr@gmail.com', '2552254415', 'male', 103),
(18, 'pranay', 'pn@gmail.com', '5254566325', 'male', 104);

insert into privateJob values (101,'hr', 8),
(102,'finance', 9),
(103,'hr', 8),
(104,'finance', 9);

insert into govJob values (101,'ACP', 10),
(102,'DGP', 11),
(103,'ACP', 10),
(104,'DGP', 11);

-- how to addd unique aftre table is created
alter table studentJob
add constraint nameas unique(s_name);

-- how to add update
update govJob set job_hrs=2 where s_courceid=101;

