create database anime


create table Users(
id int identity,
firstname varchar(50),
secname varchar(50),
role varchar(50),
email varchar(255),
password varchar(255),
gender varchar(6),



)

insert into Users (firstname,secname, role, email, password, gender) values
('admin', 'gigiii', 'Admin' , 'gigiii@gmail.com','123456', 'female' )


select * from Users