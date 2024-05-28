-- CRUD: create, read, update, delete

-- create database GT200224;

-- use GT200224;

-- create table users (
-- id int,
-- first_name varchar(64),
-- last_name varchar (64),
-- age int
-- );

-- простые типы данных
-- integer/int - целое число
-- numeric/decimal - числовые данные
-- varchar (макс.) - максимальное количество символов в строке
-- char (фиксированное количество символов)

-- select * from users;

-- insert into users (id, first_name, last_name, age)
-- values (3, 'Bob', 'Brown', 35),
-- (3, 'Den', 'Jameson', 29),
-- (4, 'Alex', 'Wetson',3);


-- insert into users (id, first_name, last_name)
-- values (5, 'Jack', 'Hardy');

-- select *
-- from users
-- where age is null;

-- выборка уникальных значений
-- select distinct * from users;

-- delete from users
-- where id = 5;

-- включение безопасного режима для удаление записей
-- set sql_safe_updates = 1 - без.режим включен, удалять нельзя
-- set sql_safe_updates = 0 - без.режим выключин, удалять можно 
-- set sql_safe_updates = 1;

-- drop table users;

-- --////////////////////////
--  создание таблиц с ограничениями (атрибутами)
--  unique
--  not null 
--  primary key = unique + not null
--  default
--  check
--  auto_increment






