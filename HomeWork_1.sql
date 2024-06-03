-- create database homework;

-- use homework; 

-- create table staff (
-- id int primary key not null auto_increment, 
-- firstname varchar (64) not null,
-- lastname varchar (64) not null,
-- position varchar (64),
-- age int check (age between 0 and 110),
-- has_child char (1) default 'N',
-- username varchar (64) unique
-- );

-- insert into students (first_name, last_name, class, subject, mark, school_no)
-- values ('John', 'Smith', 12, 'Math', 4, 3);

-- insert into staff (firstname, lastname, position, age, has_child, username)
-- values ('Ivan', 'Ivanov', 'dev', 35, 'Y', 'ivanIvan199'),
-- 		('Petr', 'Petrov', 'QA', 19, 'N', 'my_love76'),
--         ('John', 'Smith', 'PM', 30, 'Y', 'boss123'),
--         ('Jared', 'Leto', 'singer', 52, 'N', 'lie$322'),
--         ('Shenon', 'Leto', 'drumer', 54, 'N', 'drim234');
        
-- select * from staff;

-- drop table staff;

-- drop database homework;

-- --------------------------------
 
-- create database tasks;

-- use tasks;

-- CREATE TABLE Staff (
--     id INTEGER PRIMARY KEY AUTO_INCREMENT,
--     firstname VARCHAR(64) NOT NULL,
--     lastname VARCHAR(64) NOT NULL,
--     position VARCHAR(128),
--     age INTEGER,
--     has_child CHAR(1),
--     username VARCHAR(128) unique
--   );

-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Anna'
--         , 'Daniels'
--         , 'Senior Teacher'
--         , 22
--         , 'N'
--         , 'annakhach5'
--         );
--         
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Tom'
--         , 'Austin'
--         , 'Junior Blogger'
--         , 25
--         , 'Y'
--         , 'tom12345'
--         );
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Bill'
--         , 'Lorentz'
--         , 'Junior Web Developer'
--         , 40
--         , 'Y'
--         , 'billt1'
--         );        
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Lily'
--         , 'May'
--         , 'Junior Backend Developer'
--         , 25
--         , 'Y'
--         , 'lil12'
--         );
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Nona'
--         , 'Lucky'
--         , 'Junior Teacher'
--         , 20
--         , 'N'
--         , 'LuckyNona'
--         ); 
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ( 'Nancy'
--         , 'Greenberg'
--         , 'Middle UI Designer'
--         , 32
--         , 'Y'
--         , 'nancy1'
--         );        
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Daniel'
--         , 'Faviet'
--         , 'Senior UX Designer'
--         , 43
--         , 'Y'
--         , 'favietD'
--         );        
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Ally'
--         , 'Austin'
--         , 'Junior UI Designer'
--         , 28
--         , 'N'
--         , 'ally1'
--         );        
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Lily'
--         , 'Chen'
--         , 'Senior Teacher'
--         , 25
--         , 'Y'
--         , 'lilychen'
--         );        
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Anna'
--         , 'Austin'
--         , 'Middle Teacher'
--         , 34
--         , 'Y'
--         , 'anna28'
--         );        
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Alexander'
--         , 'Lorentz'
--         , 'Junior Backend Developer'
--         , 25
--         , 'N'
--         , 'alex12345'
--         );        
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Ashley'
--         , 'Lorentz'
--         , 'Junior UX Designer'
--         , 18
--         , 'N'
--         , 'lorentz99'
--         );        
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Tom'
--         , 'Lucky'
--         , 'Middle Blogger'
--         , 34
--         , 'Y'
--         , 'lucky78'
--         );        
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Ashley'
--         , 'Weiss'
--         , 'Junior Blogger'
--         , 18
--         , 'N'
--         , 'weiss11'
--         );
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Tom'
--         , 'Weiss'
--         , 'Junior UI Designer'
--         , 18
--         , 'N'
--         , 'tom222'
--         );   
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Anna'
--         , 'Bloom'
--         , 'Middle UX Designer'
--         , 20
--         , 'N'
--         , 'bloom5'
--         );   
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Tom'
--         , 'Berg'
--         , 'Middle Teacher'
--         , 34
--         , 'N'
--         , 'tommy1'
--         );   
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Ashley'
--         , 'Berg'
--         , 'Senior Teacher'
--         , 37
--         , 'N'
--         , 'ash89'
--         );
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Lily'
--         , 'Weiss'
--         , 'Middle Blogger'
--         , 45
--         , 'N'
--         , 'lilyW1'
--         );   
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Anna'
--         , 'Lorentz'
--         , 'Senior UX Designer'
--         , 31
--         , 'N'
--         , 'annlo1'
--         );   
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Ashley'
--         , 'Weiss'
--         , 'Middle UX Designer'
--         , 18
--         , 'N'
--         , 'weiss1'
--         );       
-- INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
--         ('Anna'
--         , 'Keren'
--         , 'Junior UX Designer'
--         , 34
--         , 'N'
--         , 'annaK1'
--         );       


-- select * from Staff;

-- Из таблицы вывести работников, которым больше 20 и меньше 40.
-- select * from Staff
-- where age between 20 and 40;

-- Вывести только уникальные имена сотрудников.
-- select distinct firstname from Staff;

-- Вывести имена, фамилии и возраст тех сотрудников, у которых id либо 3, либо 7, либо 10.
-- select  firstname, lastname, age from Staff
-- where id in (3, 7, 10);

-- Вывести сотрудников у которых имя начинается на букву 'A',  а фамилия заканчивается на букву 'S'
select * from Staff
where firstname like 'a%'
and lastname like '%s';






        
	


