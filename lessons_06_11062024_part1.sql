-- use GT200224;
-- drop table employees;

-- select * from employees;

-- Изменить департмент сотрудника с именем Adam Vargas на IT
-- select * from employees
-- where first_name = 'Adam' and last_name = 'Vargas';

 -- отключить безопасный режим
-- set sql_safe_updates = 0;  

-- update employees
-- set department = 'IT'
-- where first_name = 'Adam' and last_name = 'Vargas';

-- Повысить зарплату Laura Bissot на 5000.
-- update employees
-- set salary = salary + 5000
-- where first_name = 'Laura' and last_name = 'Bissot';

-- select * from employees
-- where first_name = 'Laura' and last_name = 'Bissot';

-- Удалить сотрудника Adam Fripp из таблицы
-- delete from employees
-- where first_name = 'Adam' and last_name = 'Fripp';

-- select * from employees
-- where first_name = 'Adam' and last_name = 'Fripp';

-- Изменить фамилию Luis Popp на Smith
-- update employees
-- set last_name = 'Smith'
-- where first_name = 'Luis' and last_name = 'Popp';

-- ПРАКТИКА

-- Найти всех ИТ работников с зарплатой выше 12000
-- select * from employees
-- where department = 'IT' 
-- and salary > 12000;

-- Повысить зарплату работников отдела Human Resources в 2 раза
-- update employees
-- set salary = salary * 2
-- where department = 'Human Resources';

-- У руководителя родились близнецы Лаура и Адам, 
-- в честь праздника он решил повысить зарплату работников 
-- с именами Лаура и Адам в 5 раз.
-- select * from employees
-- where first_name in ('Laura','Adam');

-- update employees
-- set salary = salary * 5
-- where first_name in ('Laura','Adam');

-- Diana Lorentz вышла замуж и поменяла фамилию на King. 
-- Поменяйте у Diana Lorentz фамилию на King.
-- update employees
-- set last_name = 'King'
-- where last_name = 'Lorentz' and first_name = 'Diana';


-- Всех работников отдела sales уволили. 
-- Удалите работников sales из таблицы.
-- select * from employees
-- where department = 'sales';

-- delete from employees
-- where department = 'sales';

-- John Russell перевели в отдел Marketing и повысили зарплату на 5000. 
-- Измените данные для работника John Russell.
update employees
set department = 'Marketing',  salary = salary + 5000
where last_name = 'Russell' and first_name = 'John';

