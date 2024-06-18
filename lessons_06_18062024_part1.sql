-- use gt200224;

-- create table users1(
-- id int primary key auto_increment,
-- first_nama varchar(128) not null,
-- last_name varchar(128) not null,
-- phone varchar(128),
-- email varchar(128)
-- );

-- insert into users1(first_nama, last_name, phone, email)
-- value ("Tom", "Smith", "+123445552", null),
-- 		("John", "Brown", null, "johtd3r423r@gmail.com"),
--         ("Lily", "Watson", null, null),
--         ("John", "Brown", "+9218236518263", "johtd3r423r@gmail.com");

select * from users1;

-- alter table users1
-- change column first_nama first_name varchar(128) not null;

-- Создать новое поле contact, заполнить:
-- - phone(если указан),
-- - email(если не указан phone)
-- - 'не определено' (если не указаны phone и email)
-- set sql_safe_updates = 0;

-- alter table users1
-- add contact varchar(128);

-- update 		users1
-- set contact = case 
-- 	when phone is not null then phone
--     when email is not null then  email
--     else 'не определено'
--     end;

-- реализация этого же задания через coalesce
-- update users1
-- set contact = coalesce (phone, email, 'не определено');

