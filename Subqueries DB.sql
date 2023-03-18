create database Subqueries;
use Subqueries;

create table employee (
E_id int primary key,
E_name varchar(20),
E_dept varchar(20),
E_salary Float );

insert into employee values 
(1, 'Goblin', 'COC', 25000),
(2, 'Archer', 'HR', 60000),
(3, 'Lava Hound', 'DEV', 80000),
(4, 'WallCracker', 'QA', 60000),
(5, 'Pekka', 'HR', 45000);

-- write a query to find name of imployee having max salary
select E_name from employee where E_salary = (select max(E_salary) from employee);

-- write a query to display second high salary from employee table
select max(E_salary) from employee where E_salary <> (select max(E_salary) from employee);

-- IMP EXAMPLE write a query to display name of employee having 2nd high salary IMP EXAMPLE
select E_name from employee where E_salary = (select max(E_salary) from employee where E_salary <> (select max(E_salary) from employee));

-- DISPLAY COUNT OF EMPLOYEE IN DEPT 
select E_dept, count(*) from employee group by (E_dept);

-- write a query to display department name having employees count less than 2 
select E_dept from employee group by E_dept having count(*)<2;

-- query to display name of employee if emp dept count is less than 2
select E_name from employee where E_dept in (select E_dept from employee group by E_dept having count(*)<2);
1=2;
1 in 1,2,5,8;