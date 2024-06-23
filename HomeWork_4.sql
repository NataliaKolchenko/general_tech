-- use hr;

-- 1
-- В таблице employees создать новое поле salarywithcomm numeric(6, 4) и заполнить формулой: salary + salary * 15 / 100.

-- alter table employees
-- add salarywithcomm numeric(6, 4);

-- alter table employees
-- modify column salarywithcomm decimal(10, 3);

-- update employees
-- set salarywithcomm = salary + salary * 15 / 100; 

-- 2
-- Вывести из таблицы employees поля firstname и lastname как fullname, salary и salarywithcomm(округлить в большую сторону).
-- select concat(first_name, ' ' , last_name) as full_name,
-- ceiling(salary),  ceiling(salarywithcomm) 
-- from employees;

-- 3
-- В таблице employees создать новое поле chk_email типа varchar(128).
-- alter table employees
-- add chk_email varchar(128);

-- 4
-- Заполнить поле chk_email. 
-- Если длина email меньше 25, значением chkemail будет 'Введите больше символов', 
-- если длина email больше/равно 25 и меньше 30,  значением chkemail будет 'Кол/во символов совпадает', 
-- если длина email больше/равно 30,  значением chkemail будет 'Введите меньше символов'.

-- update employees
-- set chk_email = case
-- 	when length(email) < 25 then "Введите больше символов"
--     when (length(email) >= 25) and (length(email) < 30) then "Кол-во символов совпадает"
--     when length(email) >= 30 then "Введите меньше символов"
--     end;

-- 5
-- Из таблицы countries получить список стран с указанием количества символов в их названиях.
-- select country_name, length(country_name) as number_sign_name from countries;

-- 6
-- Из таблицы countries получить список стран и их первые три символа в названии
-- select country_name, left(country_name, 3) as three_sign_name from countries;

-- 7
-- Из таблицы employees получить список сотрудников с заменой в email слово "sqltutorial" на "Confidential".
 -- select first_name, last_name, replace (email, "sqltutorial", "Confidential") from employees;
 
 -- 8
 -- Из таблицы employees получить список сотрудников и последние четыре символа phone_number.
-- select first_name, last_name, right(phone_NUMERIC, 4) from employees;




