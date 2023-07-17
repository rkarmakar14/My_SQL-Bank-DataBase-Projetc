create database ABCD_company;
use Abcd_company;
create table employee (emp_id int,emp_name varchar(55), emp_age int,emp_gender varchar(55));
insert into employee values(101,"Rajat",32,"Male"),(102,"Raju",30,"Male"),(103,"Rani",28,"Female"),
(104,"kavya",31,"Female"),(105,"Kiran",35,"Male"),(106,"Kushal",36,"Male"),(107,"Ajay",31,"Male");
insert into employee values(108,"Harsh",32,"Male"),(109,"Riju",30,"Male");
select * from employee;
create table project(p_id int,p_name varchar(55),emp_name varchar(55),emp_gender varchar(55));
insert into project values(1001,"Backend","Rajat","Male"),(1002,"Backend","Raju","Male"),(1003,"Frontend","Rani","Female"),
(1004,"Fullstack","kavya","Female"),(1005,"Backend","Kiran","Male"),(1006,"Frontend","Kushal","Male"),(1007,"Fullsatck","Ajay","Male"),
(1011,"Frontend","Naveen","Male"),(1012,"Fullsatck","Suhas","Male");
select * from project;
select * from employee inner join project on employee.emp_name= project.emp_name;
select * from employee right join project on employee.emp_name= project.emp_name;
select * from employee left join project on employee.emp_name= project.emp_name;
select emp_name from employee inner join 
project on employee.emp_name= project.emp_name;


select * from employee inner join project on 
employee.emp_name= project.emp_name ;
create table info(id int,name varchar(55),dob date,dot time);
insert into info value(1,"Anushree","2003-01-13","12:12:12");
insert into info value(2,"Shashi","2001-01-13","08:12:12"),
(3,"Ajay","1999-02-14","08:12:12"); 
select * from info;
 
 
select datediff("2023-06-13","2023-06-15");
select curdate();
select current_time();
select now();
select year(current_date(),"1947-08-15");
