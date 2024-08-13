-- select column_name1, column_name2
-- from table_name/subselect
-- where условие
-- order by сортировка
-- limit пагинация
-- join - inner join, left join, right join
-- union/union all
-- group by группировка
-- having условие

-- set sql_safe_updates = 0;

-- 1. Создать базу данных tasks. Если уже есть удалить и потом создатыь новую.
-- drop database tasks;
-- create database tasks;

-- 2. Переключится на бд tasks.
-- use tasks;

-- 3. Создать таблицу с названием Employees, которая будет содержать информацию о сотрудниках компании. 
-- Таблица должна иметь следующие поля:

-- employee_id - уникальный идентификатор сотрудника (Primary Key, автозаполнение)
-- first_name - имя сотрудника (Not Null)
-- last_name - фамилия сотрудника (Not Null)
-- email - адрес электронной почты сотрудника (Unique, Not Null)
-- age - возраст сотрудника (больше или равно 18)

create table Employees (
employee_id int primary key auto_increment,
first_name varchar(64) not null,
last_name varchar (128) not null,
email varchar (64) Unique not null,
age int check (age >= 18)
);

-- 4. Заполнить таблицу данными с помощью следующих записей:

-- Сотрудник с именем "John", фамилией "Doe", адресом электронной почты "john.doe@example.com" и возрастом 30 лет.
-- Сотрудник с именем "Jane", фамилией "Smith", адресом электронной почты "jane.smith@example.com" и возрастом 25 лет.
-- Сотрудник с именем "Michael", фамилией "Johnson", адресом электронной почты "michael.johnson@example.com" и возрастом 22 года.
-- Сотрудник с именем "Emily", фамилией "Brown", адресом электронной почты "emily.brown@example.com" и возрастом 19 лет.


insert into Employees (first_name, last_name, email, age)
values ('John', 'Doe',"john.doe@example.com", 30),
('Jane', 'Smith',"jane.smith@example.com", 25),
('Michael', 'Johnson',"michael.johnson@example.com", 22),
('Emily', 'Brown',"emily.brown@example.com", 19);

select * from Employees;

-- 5. Найти всех сотрудников в возрасте от 20 до 30 лет.
select * 
from Employees 
where age >= 20 and age <=30;

select * 
from Employees 
where age between 20 and 30;

-- 6. Найти сотрудников с именами "John", "Jane" и "Michael".
select * 
from Employees 
where first_name in ("John", "Jane", "Michael");

-- 7. Найти всех сотрудников, у которых адрес электронной почты заканчивается на ".com".
select * 
from Employees 
where email like "%.com";

-- 8. Добавить столбец salary, тип int, где значение по умолчанию будет 0.
alter table Employees
add column salary int default 0;

-- 9. Удалить столбец email, который больше не нужен.
alter table Employees
drop column email;

-- 10. Изменить тип данных столбца salary на DECIMAL(10,2), чтобы хранить зарплату с точностью до двух знаков после запятой.
alter table Employees
modify column salary DECIMAL(10,2);

-- 11. Обновить возраст сотрудника с именем "John" на 32 года.
update employees
set age = 32
where first_name = 'John';

-- 12. Изменить фамилию сотрудника с именем "Emily" на "Jameson".
update employees
set last_name = 'Jameson'
where first_name = 'Emily';

-- 13. Обновить имя и фамилию сотрудника с именем "Jane" и фамилией "Smith" на "Jessica" и "Williams" соответственно.
update employees
set first_name = 'Jessica',  last_name = 'Williams'
where first_name = 'Jane' and  last_name = 'Smith';

-- 14. Создать столбец status (int)
alter table employees
add column status int;

-- 15. Изменить тип данных столбца на varchar(128)
alter table employees
modify column status varchar(128);

-- 16. Обновить столбец status для сотрудников в зависимости от их возраста. Если возраст сотрудника меньше 25, 
-- установить статус "Junior", иначе установить статус "Senior".

update employees
set status = 
case 
	when age < 25 then  "Junior"
    else "Senior"
end;

-- case
-- 	when условие then значение
--     when условие then значение
--     else значение
-- end

select * from employees;


