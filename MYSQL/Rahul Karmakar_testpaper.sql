create database emp_details;
use emp_details;
create table employee ( emp_id int,emp_name varchar(55), emp_age int,emp_gender varchar(55),
emp_dept varchar(55),year_of_joining varchar(55),emp_salary float);
drop table employee;
insert into employee (emp_id,emp_name,emp_age,emp_gender,emp_dept,year_of_joining,emp_salary) values 
(100,"Sunil",22,"Male","HR","2023-05-01",600000),(101,"Indra",26,"Female","Sales","2022-06-01",1000000),
(102,"Riya",28,"Female","Development","2023-03-01",700000),(103,"Rahul",28,"Male","Frontend","2023-05-14",900000),
(105,"Adil",22,"Male","HR","2023-05-01",600000);
select * from employee;
select emp_dept from employee group by emp_dept;
select emp_gender,count(emp_gender) from employee group by emp_gender;
select * from employee order by emp_salary desc limit 1;
select emp_dept,count(emp_name) from employee group by emp_dept;
select emp_dept, avg(emp_salary) from employee group by emp_dept;
select emp_name from employee where emp_age = (select min(emp_age) from employee);
select emp_gender,count(emp_gender) from employee where emp_dept = "Sales" group by emp_gender;
select emp_dept, avg(emp_salary) from employee group by emp_dept;
select avg(emp_salary) from employee;
select 