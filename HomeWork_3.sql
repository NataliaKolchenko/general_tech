select * from employees;

-- 1
-- Повысить зарплаты для отдела sales на 20%, 
-- для finance 15%, для shipping 10%, 
-- для marketing 25%, 
-- для Human Resources 20% 
-- и для IT 35%. 
-- Записать данные в новое поле new_salary. Поле создавать не нужно, используем AS. 

-- select department, salary, case
-- 	when department = 'sales' then salary + salary*20/100
-- 	when department = 'finance' then salary + salary*15/100
--     when department = 'marketing' then salary + salary*25/100
--     when department = 'Human Resources' then salary + salary*20/100
--     when department = 'IT' then salary + salary*35/100
--     end as new_salary
-- from employees;

-- 2
-- Создать поле new_salary типа numeric(7, 2).
-- alter table employees
-- add new_salary numeric(7, 2);

-- 3
-- Заполнить поле: 
-- повысить зарплаты для отдела sales на 20%, 
-- для finance 15%, 
-- для shipping 10%, 
-- для marketing 25%, 
-- для Human Resources 20% 
-- для IT 35%.

-- set sql_safe_updates = 0;

-- update employees
-- set new_salary = case 
-- 	when department = 'sales' then salary + salary*20/100 
--     when department = 'finance' then salary + salary*15/100 
--     when department = 'shipping' then salary + salary*10/100 
--     when department = 'marketing' then salary + salary*25/100 
--     when department = 'Human Resources' then salary + salary*20/100 
--     when department = 'IT' then salary + salary*35/100 
--     end;

-- 4
-- Вывести из таблицы employees firstname как name, lastname как surname и salary как total_salary.

-- select first_name as name, last_name as surname, salary as total_salary 
-- from employees;

-- 5
-- Вывести новое поле commission (через AS), 
-- которое будет null, если зарплата сотрудника меньше 3000, 
-- будет 10, если зарплата меньше 6000, 
-- будет 15, если зарплата меньше 9000, 
-- будет 20, если зарплата больше/равно 9000.

-- select  case
-- 	when salary < 3000  then null
-- 	when salary < 6000 then 10
--     when salary < 9000 then 25
--     when salary >= 9000 then 20
--     end as commission
-- from employees; 

-- 6
-- Создать новое поле commission и соответственно заполнить.
-- alter table employees
-- add commission int;

-- update employees
-- set commission = case 
-- 	when salary < 3000  then null
-- 	when salary < 6000 then 10
--     when salary < 9000 then 25
--     when salary >= 9000 then 20
--     end;

-- 7
-- Создать поле finalsalary и заполнить формулой salary + salary * commission / 100. 
-- Проверить commission на null, так чтобы в случае неопределенности finalprice принимал значение salary. 

-- alter table employees
-- add finalsalary int;

-- update employees
-- set finalsalary = case 
-- 	when commission is null  then salary
-- 	else salary + salary * commission / 100
--     end;

-- 8
-- Удалить из таблицы сотрудников, у которых commission меньше 15.

-- delete from employees
-- where commission < 15;
 