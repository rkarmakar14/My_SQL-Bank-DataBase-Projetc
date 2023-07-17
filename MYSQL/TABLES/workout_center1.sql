create database Workout_Center1;
use Workout_center1;
create table GYM (id int not null auto_increment, primary key(id), Trainer_ID int,
Name varchar(20),Trainer_Name varchar(20),Joining_Month varchar(50),weight int,
Resultant_weight_KG int,Cost_Price int,Selling_price int, Age int,Customer_Gender varchar(20),
Trainer_Gender varchar(20));
insert into gym (Trainer_ID,Name,Trainer_Name,Joining_Month,weight,Resultant_weight_KG,Cost_Price,Selling_price,Age,Customer_Gender,Trainer_Gender) 
values ( 23, "Sunil Kumar","Ajay", "20th March", 82,78, 25000,20000,26,"Male","Male"),(18, "Sunita S","Kavya", "20th March", 68,58, 10000,9500,24,"Female","Female"),
( 20, "Rahul K","Manoj", "28th March", 80,75, 9000,8500,23,"Male","Male"),(19, "Subha K","Rina", "20th March", 67,60, 17000,15000,25,"Female","Female"),
( 23, "Raju S","Ajay", "24th March", 67,62, 15000,1200,24,"Male","Male"),(18, "Sampa D","Kavya", "23th March", 56,50, 20000,19000,26,"Female","Female"),
( 20, "Indra M","Manoj", "24th March", 80,68, 10000,9500,25,"Male","Male"),(19, "Rita G","Rina", "24th March", 61,55, 9000,8500,27,"Female","Female"),
( 23, "Pranab M","Ajay", "24th March", 85,74, 11000,10500,27,"Male","Male"),(18, "Paramita G","Kavya", "25th March", 62,58, 33000,30000,30,"Female","Female"),
( 23, "Anup R","Ajay", "25th March", 83,68, 12000,11000,28,"Male","Male"),(19, "Nila G","Rina", "26th March", 69,60, 21000,20000,34,"Female","Female"),
( 20, "Pritam C","Manoj", "26th March", 81,70, 16000,15000,29,"Male","Male"),(18, "Nita H","Kavya", "27th March", 62,53, 10000,9500,26,"Female","Female"),
( 20, "Debu C","Manoj", "27th March", 60,55, 9000,8500,21,"Male","Male"),(19, "Sunidhu G","Rina", "28th March", 60,62, 30000,28000,36,"Female","Female"),
( 23, "Sanjay G","Ajay", "28th March", 72,61, 20000,18000,22,"Male","Male"),(18, "Joshita L","Kavya", "29th March", 77,70, 40000,38000,22,"Female","Female"),
( 20, "Tanmoy D","Manoj", "29th March", 73,70, 22000,20000,23,"Male","Male"),(19, "Rohini J","Rina", "22th March", 58,55, 31000,30000,30,"Female","Female"),
( 23, "Abhijit S","Ajay", "30th March", 79,70, 25000,24000,24,"Male","Male"),(18, "Ruchi A","Kavya", "22th March", 55,58, 20000,19000,32,"Female","Female"),
( 20, "Biki S","Manoj", "30th March", 73,59, 11000,10500,25,"Male","Male"),(19, "Rakshita G","Rina", "22th March", 61,57, 22000,20000,37,"Female","Female"),
( 23, "Arpan G","Ajay", "27th March", 74,69, 12000,9500,35,"Male","Male"),(19, "Ranjini S","Rina", "22th March", 63,60, 16000,15000,27,"Female","Female"),
( 23, "Raunak S","Ajay", "26th March", 70,60, 14000,13000,50,"Male","Male"),(19, "Soumya J","Rina", "22th March", 68,58, 17000,16000,29,"Female","Female"),
( 20, "Pranoy K","Manoj", "28th March", 82,73, 11000,10000,20,"Male","Male"),(18, "Sreya L","Kavya", "22th March", 45,55, 18000,17000,31,"Female","Female"),
( 20, "Himu S","Manoj", "24th March", 79,72, 10000,9500,31,"Male","Male"),(19, "Riya L","Rina", "22th March", 50,55, 10000,9500,26,"Female","Female");
select * from gym;
select * from gym where Age>18 and age<30;
select * from gym where Age between 18 and 30;
select * from gym where id in (1,3,6);
select Trainer_Name from gym  group by Trainer_Name;
select Customer_gender,count(Customer_gender) from gym group by Customer_gender;
select Name,count(name) from gym  group by Name;
select Trainer_Name,count(Trainer_name) from gym  group by Trainer_Name;
select min(id) from gym;
select max(id) from gym;
select id,name from gym where id = (select min(id) from gym);
select id,name from gym where id = (select max(id) from gym);
select (weight - Resultant_weight_KG), name from gym where (weight - Resultant_weight_KG) =
 (select max(weight - Resultant_weight_KG) from gym);
select name,(weight-Resultant_weight_KG) from gym;
select (weight - Resultant_weight_KG), name from gym where (weight - Resultant_weight_KG) = 
(select min(weight - Resultant_weight_KG) from gym);
select name from gym where char_length(name) = (select min(char_length(name)) from gym);
select count(name) from gym where left(name,1)="a";
offset 2nd heightest and 3rd heighest.
select avg(Selling_price) from gym;
select sum(selling_price) from gym;
select Customer_Gender,if(Customer_Gender = "Male", "M","F") from gym;

select * from gym;
select id,Trainer_name,Age, dense_rank()
over(partition by Trainer_name order by Age) from gym;
select id,Trainer_name,Age,rank()
over(partition by Trainer_name order by Age) from gym;
select id,Trainer_name,Age,row_number()
over(partition by Trainer_name order by Age) from gym;





select id,Trainer_name,Age,rank() row_number() dense_rank()
over(partition by Trainer_name order by Age) from gym;


alter table gym rename gym_center;
select * from gym_center;

alter table gym_center add column Heartbeat int;
alter table gym_center drop column Heartbeat; 
alter table gym_center add column Heartbeat int after age;
alter table gym_center rename column Heartbeat to beat;
