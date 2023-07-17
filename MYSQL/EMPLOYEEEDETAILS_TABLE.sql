create database emplyoeeDetails;
create table employee_Details (EmployeeID int not null auto_increment,primary key(EmployeeID),FirstName varchar(20),
LastName varchar(20),Salary float,JoiningDate varchar(50),Department varchar(20),Gender varchar(20));
insert into employee_Details (FirstName,LastName,Salary,JoiningDate,Department,Gender) 
values ("Vikas","Ahlawat",600000.00,"2013-02-15 11:16:28:290","IT","Male"),
("Nikita","Jain",530000.00,"2014-01-09 17:31:07:793","HR","Female"),
("Ashwin","Kumar",1000000.00,"2014-01-09 10:05:07:793","IT","Male"),
("Nikhil","Sharma",480000.00,"2014-01-09 09:00:07:793","HR","Male"),
("Anish","kadian",500000.00,"2014-01-09 09:31:07:793","Payroll","Male");
select * from  employee_Details;
select FirstName from  employee_Details;
select upper(Firstname) from  employee_Details;
select lower(Firstname) from  employee_Details; 
select concat(FirstName," ",LastName) as Name from  employee_Details;
select *from employee_Details where FirstName = "Vikas";
select * from employee_Details where left(Firstname,1) = "a";
select * from employee_Details where left(Firstname,1) = "k";
select * from employee_Details where left(Firstname,1) = "h";
select * from employee_Details where EmployeeID = 1;
select * from employee_Details where EmployeeID in (1,3,4);
select FirstName, case when Gender = "Male" then "M" when Gender = "Female" then "F" end from employee_Details; 
select * from employee_Details where salary > 600000;
select * from employee_Details where salary < 700000;
select *from employee_Details group by salary desc limit 1,1;
