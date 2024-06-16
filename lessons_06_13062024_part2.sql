-- use tasks;

-- create table products (
-- 	id int primary key auto_increment,
--     title varchar (128),
--     count int,
--     price int
-- );

-- insert into products (title, count)
-- values ('notebook', 5),
-- 		('pen', 10),
--         ('book',17),
--         ('pencil',8);

-- select * from products;

-- set sql_safe_updates = 0;

-- update products
-- set price = case
-- 				when title = 'notebook' then 20
-- 				when title='book' then 100
-- 			end;

-- alter table products
-- add total_sum int;
-- Создать поле total_sum: count*price(если price not null), 0(если price is null)
-- update products
-- set total_sum = case
-- 				when price is not null then count*price
--                 else 0
-- 			end;
-- или
-- update products
-- set total_sum = coalesce(count*price,0);



-- 1.  Создать таблицу customers
-- id целое число первичный ключ автоинкремент, 
-- first_name строка не null,
-- last_name строка не null,
-- age целое число больше 18,
-- phone integer не null,
-- order_name строка не null,
-- delivery_status целое число 1 или 0

-- create table customers (
-- 	id int primary key auto_increment,
--     first_name varchar (128) not null,
--     last_name varchar (128) not null,
--     age int check (age > 18),
--     phone int not null,
--     order_name varchar (128) not null,
--     delivery_status int check (delivery_status in (1,0))
-- );

-- select * from customers;

-- 2. Удалить поля first_name и last_name 
-- 3. Добавить поле full_name строка не null, вставить после id
-- 4. Переименовать поле id на customer_id
-- 5. Добавить поле sum_price целое число не null
-- 6. Удалить поле phone

-- alter table customers
-- drop column  first_name,
-- drop column  last_name,
-- add column full_name varchar(255) not null after id;

-- alter table customers
-- change  id customer_id int,
-- add column  sum_price int not null,
-- drop column phone;

-- alter table customers
-- modify customer_id int auto_increment;

-- select * from customers;

-- Создать новое поле discount тип int по умолчанию 0.
-- Заполнить поле discount: если покупателю меньше 35, но больше 25, 
-- значением поля будет 5, если больше/равно 35, значением будет 10, и в остальных случаях оставить 0.
-- alter table customers
-- add column discount int default 0;

-- update customers
-- set discount = case
-- 					when age<35 and age>25 then 5
--                     when age >= 35 then 10
--                     else 0
-- 				end;