-- 1. Создать таблицу  products
	-- id первичный ключ автоинкремент
	-- title строка 128
	-- quantity integer от 0 до 10
    
-- use gt200224; 

-- create table  products(
-- id int primary key auto_increment, 
-- title varchar (128),
-- quantity int check (quantity between 0 and 10)
-- );

-- select * from products;
 
-- insert into products(title, quantity)
-- values ('Apple', 5),
-- 		('Banana', 10),
--         ('Kiwi', 5),
--         ('Pineapple', 7),
--         ('Avocado', 0),
--         ('Mango', 7),
--         ('Strawberry', 6);


-- сортировка
-- order by column_name asc - по возрастани
--  order by column_name desc - по убыванию

-- select * from products
-- where quantity > 5
-- order by quantity;

-- пагинация (получение диапазона строк)
-- limit 

-- вывести первые 3 продукта
-- select * from products
-- limit 3;

-- продукт с максимальным кол/вом
-- select * from products
-- order by quantity desc
-- limit 1;

-- Вывести продукт с минимальным количеством .
-- select * from products
-- order by quantity asc
-- limit 1;

-- вывести 3 строки, но пропуская первые 2
-- select * from products
-- limit 2, 3



-- Отсортировать сотрудников по зарплате - от самой большой зарплаты до самой маленькой
-- select * from employees
-- order by salary desc;

-- Вывести сотрудников, чьи имена начинаются на букву K и отсортировать их в алфавитном порядке по фамилии
-- select * from employees
-- where first_name like 'K%'
-- order by first_name;

-- Вывести первых трех сотрудников из департамента IT, которые зарабатывают больше остальных.
-- select * from employees
-- where department = 'IT'
-- order by salary desc
-- limit 3;

-- select * from employees;

-- ---------------------------------------------
-- Изменение таблиц и столбцов
-- alter table table_name 
-- add column column_name type const. - добавление столбца
-- drop column column_name - удаление столбца
-- modify column column_name new_type - изменение типа данных 
-- change column column_name new_column_name type - изменение названия столбца
-- add constaint - добавление ограничения
-- drop constaint - удаление ограничения



-- Добавить поле price тип  int по умолч. 0
-- alter table products
-- add column price int default 0;

-- Изменить тип поля price на decimal(4, 2)
-- 4 -  общее количество чисел, 2 - числа после запятой
-- 99.99
-- alter table products
-- modify column price decimal(4, 2);


-- alter table products
-- change column price item_price decimal;

-- Удалить поле item_price
-- alter table products
-- drop column item_price;



-- 1. Добавить поле quality типа decimal(6, 2) со значение по умолчанию 0
-- alter table products
-- add column quality decimal(6, 2) default 0;

-- 2. Изменить тип quality на integer
-- alter table products
-- modify column quality int;

-- 3. Удалить поле quality
-- alter table products
-- drop column quality;


select * from products;