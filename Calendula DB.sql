create database Calendula;

use Calendula;

create table employees (
first_name varchar(20),
department_id int,
email varchar(20) unique,
salary int,
hire_year int );

insert into employees values 
('Healer Fm', 100, 'hf@gmail.com', 10000, 2021),
('Lava Hound', 102, 'lh@gmail.com', 12000, 2006),
('Goblin star', 101, 'gs@gmail.com', 8000, 2009),
('Dark Elixir', 102, 'de@gmail.com', 6000, 2012),
('Elixir Portion', 102, 'ep@gmail.com',13000, 2015);

--  OperationSSS.........
select first_name,department_id,email,salary from employees where salary>=12000;

select first_name,department_id,email,salary from employees where salary<12000;

select first_name,department_id,email,salary from employees where salary not between 12000 and 14000;

select first_name,department_id,email,salary from employees where department_id=102;

select first_name,department_id,email,salary from employees where first_name="Goblin star";

select first_name,department_id,email,salary from employees where first_name like'__________';

select first_name,hire_year,email,salary from employees where hire_year between 2005 and 2014;

-- Write a query to select first 10 records from a table
select first_name, email from employees  limit 2;

-- Write a query to get the length of the employee names (first_name) from employees table     
select first_name, length(first_name)  from employees;

-- Write a query to check if the first_name fields of the employees table contains numbers.
select * from employees where  first_name REGEXP  '[0-9]';

-- Write a query to get the number of employees working with the company      
select count(employee_id) from employees;
                        
-- Write a query to get the number of jobs available in the employees table            
select count(distinct job_id) from employees;
            
-- Write a query get all first name from employees table in upper case      
select  upper(first_name) from employees;
            
-- Write a query to get the first 3 characters of first name from employees table           
select substring(first_name,1,3) from  employees;

-- Write a query to get the names (for example Ellen Abel, SundarAnde etc.) of all the employees from employees table
select concat (first_name,' ',last_name) as names from  employees;
          
-- Write a query to get first name from employees table after removing white spaces from both side
select  trim(first_name) from employees;