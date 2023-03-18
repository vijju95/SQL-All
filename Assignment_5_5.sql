create database assignment_5_5;
use assignment_5_5;

create table Employees (
e_name varchar(15) not null,
e_mail varchar(20) unique,
e_mobno int unique,
e_department varchar(20),
e_empNum int,
e_id int,
foreign key(e_id) references unionC(e_id));

insert into Employees values
('Bowler', 'b@gmail.com', 123456, 'Backend', 6,102),
('Gobliun', 'g@gmail.com', 526345, 'Frontend', 3,101),
('Lava Hound', 'l@gmail.com', 158745, 'Backend', 7, 102),
('Wizard', 'w@gmail.com', 845632, 'Fullstack', 5,100),
('Pekka', 'p@gmail.com', 753691, 'Frontend', 1,101),
('ElectroDragon', 'e@gmail.com', 757891, 'Database', 4, 104),
('Healer', 'h@gmail.com', 741853, 'Backend', 2,102);

drop table Employees;

alter table Employees
drop foreign key e_id;

create table unionC (
e_id int primary key,
union_name varchar(20),
union_leader varchar(20),
union_members int );

insert into unionC values 
(100, "First union", "YBB", 500),
(101, "second union", 'GHN', 236),
(102, "third union", 'UJH', 500),
(103, "fourth union", 'LKI', 500),
(104, "fifth union", 'TTA', 215);

drop table unionC;

-- ascending descending
select * from Employees
order by e_empNum desc;
select * from Employees
order by e_empNum asc;

-- emp id from 3 in descending order
select * from Employees
where e_empNum>3
order by e_empNum desc;

-- find max num of id in employee table
select  max(e_empNum) as "maximum" from Employees;

-- find minimum, count, total, average
select  min(e_empNum) as "minimum" ,count(e_id) as "count",sum(e_empNum ) as "total" ,avg(e_mobno) as "avg" from Employees;

-- group according to employee id and count the employees in that group
select e_id, count(e_empNum)
from Employees
group by e_id;

-- find out total employees in union according to unions individually
select union_members,sum(e_id ) as "total" from unionC group by union_members;

-- making union leader as nique
alter table unionC
add constraint leader unique(union_leader);



