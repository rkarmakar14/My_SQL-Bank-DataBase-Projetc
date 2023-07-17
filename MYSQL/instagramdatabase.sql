create database instagram_clone;
use instagram_clone;
create table instagram (id int(4) primary key(id),username varchar(55) unique not null check (char_length(7 and 10)), age varchar(20) check (age>=12));