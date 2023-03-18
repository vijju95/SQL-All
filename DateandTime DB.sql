use DateandTime;

select curtime();
select curdate();

create table Birthday (
b_name varchar(20),
b_place varchar(20),
b_date date,
date_time datetime,
b_time time,
b_year YEAR);
drop table Birthday;

insert into Birthday values 
('Vijay','pune','1997-11-09','1997-11-09 12-35-58','12-35-58',1997),
('Happy','nagpur','1997-07-07','1997-07-07 08-16-40','08-16-40',1997),
('Prasad','satara','1996-04-19','1996-04-19 02-39-25','02-39-25',1996),
('Pranay','kolhapur','1998-09-03','1998-09-03 08-03-50','08-03-50',1998),
('sandy','pune','1997-07-20','1997-07-20 12-25-48','12-25-48',1997);

