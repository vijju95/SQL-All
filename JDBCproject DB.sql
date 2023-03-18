create database JDBCproject;
use JDBCproject;

-- employee mini project
create table employee (
emp_id int primary key,
emp_name varchar(20),
emp_salary int,
emp_joining varchar(20) );
insert into employee values
(101, 'Pekka', 18000, '2019-05-19'),
(102, 'Goblin', 25000, '2017-06-25'),
(103, 'Archer', 30000, '2018-07-08'),
(104, 'LavaHound', 15000, '2022-02-15'),
(105, 'Electro', 20000, '2015-11-22');

-- bank mini project
create table bank (
c_id int,
c_name varchar(20),
c_address varchar(30),
acc_no int );
insert into bank values
(105, 'Vijay', 'pune', 1526325),
(108, 'Prasad', 'Khed', 1526455),
(205, 'Pranay', 'Nagpur', 8547854),
(852, 'Happy', 'Jalgao', 5469855),
(745, 'Prathmesh', 'Mumbai', 1524782);

create table Kuber_Bank (
user_id int, 
acc_no int primary key,
acc_type varchar(20),
acc_balance int,
holder_contact varchar(30),
address varchar(20),
foreign key (user_id) references Kuber_User(user_id));

create table Kuber_User (
user_id int primary key,
user_email varchar(20),
user_password varchar(20),
user_role varchar(20),
statuss varchar(20) );

insert into Kuber_Bank values
(2004, KB5264, 'saving', 50000, 9856325648, 'pune, maharashtra'),
(2002, KB8456, 'current', 12000, 8563214526, 'malkapur, maharashtra'),
(2003, KB4857, 'saving', 80000, 9536251458, 'mumbai, maharashtra'),
(2001, KB4563, 'saving', 26000, 7256365524, 'nashik, maharashtra'),
(2005, KB4785, 'joint', 54000, 8052365214, 'khed, maharashtra');

insert into Kuber_User values
(2001, 'vijay@gmail.com','vIjAy@123', 'user', 'active'),
(2004, 'happy@gmail.com','hApPy@123', 'admin', 'active'),
(2003, 'prasad@gmail.com','pRaSaD@123', 'user', 'deactive'),
(2005, 'pranay@gmail.com','pRaNaY@123', 'user', 'active'),
(2002, 'prathmesh@gmail.com','pRaThMeSh@123', 'user', 'active');
