-- Создать новое поле full_name, вставить после employee_id, заполнить 'Имя Фамилия'.
-- Удалить поля first_name, last_name

-- alter table employees
-- add full_name varchar(256);

-- update employees
-- set full_name = concat( first_name, ' ', last_name);

-- select * from employees;

-- ALTER TABLE employees
-- DROP COLUMN first_name,
-- DROP COLUMN last_name;

-- Из таблицы  employees вывести первые четыре символа из email в нижнем регистре
-- select lower(left(email,4)) 
-- from employees;

-- Из таблицы users1 изменить значение поля email(где указан) - .com заменяем на .de 
-- и переводим сторку в верхний регистр

-- select * from users1;

-- update users1
-- set email = upper(replace(email,'.com','.de'));



