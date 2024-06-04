--  create table students1(
--  	name varchar(128) not null,
--  	lastname varchar(128) not null,
--  	avg_mark int check (avg_mark between 0 and 5),
--     gender varchar(128) check (gender in ("M", "F"))
--  );
 
select * from students1;
 
 --  Добавить поле id integer primary key auto_increment
-- alter table students1
-- add column id int primary key auto_increment first;

-- alter table students1 
-- add column age int after lastname;

-- after column_name - после поля 
-- before column_name - до поля
-- first - в начало

-- Поменять тип у gender на char(1)
-- alter table students1
-- modify column gender char(1);

-- Переименовать поле name на firstname
-- alter table students1
-- change column name firstname varchar(128) not null;

-- alter table students1
-- drop column gender;

 