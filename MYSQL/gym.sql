select substring("Divya", char_length("Divya")/2,1);
create database Workout_Center;
use Workout_center;
create table GYM (id int not null auto_increment, primary key(id), Trainer_ID int,
Name varchar(20),Trainer_Name varchar(20),Joining_Month varchar(50),
Resultant_weight_KG int,Cost_Price int,Selling_price int, Age int,Customer_Gender varchar(20),
Trainer_Gender varchar(20));
insert into gym (Trainer_ID,Name,Trainer_Name,Joining_Month,Resultant_weight_KG,Cost_Price,Selling_price,Age,Customer_Gender,Trainer_Gender) 
values ( 23, "Sunil Kumar","Ajay", "20th March", 82, 10000,9500,26,"Male","Male"),(18, "Sunita S","Kavya", "20th March", 68, 10000,9500,24,"Female","Female"),
( 20, "Rahul K","Manoj", "28th March", 80, 10000,9500,23,"Male","Male"),(19, "Subha K","Rina", "20th March", 67, 10000,9500,25,"Female","Female"),
( 23, "Raju S","Ajay", "24th March", 67, 10000,9500,24,"Male","Male"),(18, "Sampa D","Kavya", "23th March", 56, 10000,9500,26,"Female","Female"),
( 20, "Indra M","Manoj", "24th March", 80, 10000,9500,25,"Male","Male"),(19, "Rita G","Rina", "24th March", 61, 10000,9500,27,"Female","Female"),
( 23, "Pranab M","Ajay", "24th March", 85, 10000,9500,27,"Male","Male"),(18, "Paramita G","Kavya", "25th March", 62, 10000,9500,30,"Female","Female"),
( 23, "Anup R","Ajay", "25th March", 83, 10000,9500,28,"Male","Male"),(19, "Nila G","Rina", "26th March", 69, 10000,9500,34,"Female","Female"),
( 20, "Pritam C","Manoj", "26th March", 81, 10000,9500,29,"Male","Male"),(18, "Nita H","Kavya", "27th March", 62, 10000,9500,26,"Female","Female"),
( 20, "Debu C","Manoj", "27th March", 60, 10000,9500,21,"Male","Male"),(19, "Sunidhu G","Rina", "28th March", 60, 10000,9500,36,"Female","Female"),
( 23, "Sanjay G","Ajay", "28th March", 72, 10000,9500,22,"Male","Male"),(18, "Joshita L","Kavya", "29th March", 77, 10000,9500,22,"Female","Female"),
( 20, "Tanmoy D","Manoj", "29th March", 73, 10000,9500,23,"Male","Male"),(19, "Rohini J","Rina", "22th March", 58, 10000,9500,30,"Female","Female"),
( 23, "Abhijit S","Ajay", "30th March", 79, 10000,9500,24,"Male","Male"),(18, "Ruchi A","Kavya", "22th March", 55, 10000,9500,32,"Female","Female"),
( 20, "Biki S","Manoj", "30th March", 73, 10000,9500,25,"Male","Male"),(19, "Rakshita G","Rina", "22th March", 61, 10000,9500,37,"Female","Female"),
( 23, "Arpan G","Ajay", "27th March", 74, 10000,9500,35,"Male","Male"),(19, "Ranjini S","Rina", "22th March", 63, 10000,9500,27,"Female","Female"),
( 23, "Raunak S","Ajay", "26th March", 70, 10000,9500,50,"Male","Male"),(19, "Soumya J","Rina", "22th March", 68, 10000,9500,29,"Female","Female"),
( 20, "Pranoy K","Manoj", "28th March", 82, 10000,9500,20,"Male","Male"),(18, "Sreya L","Kavya", "22th March", 45, 10000,9500,31,"Female","Female"),
( 20, "Himu S","Manoj", "24th March", 79, 10000,9500,31,"Male","Male"),(19, "Riya L","Rina", "22th March", 50, 10000,9500,26,"Female","Female");
select * from gym;
select * from gym where id % 2 =1;
select * from gym where MOD(id,2) <> 0;
select count(Name) as total from gym;
select count(Name) as total from gym where 
Joining_Month = "20th March";
select * from gym where Joining_Month 
= "27th March" and Selling_price > 9000;
