-- create database HomeWorks; 

-- use HomeWorks;

-- create table employees (
-- employeeid int primary key auto_increment,
-- fname varchar (64) not null,
-- lastname varchar (64) not null,
-- email varchar (64) not null,
-- phone varchar (64) not null
-- )

-- alter table employees
-- add column salary numeric(9, 2);

-- alter table employees
-- modify column salary int;

-- alter table employees
-- change column fname first_name varchar (64) not null;

-- alter table employees
-- drop column phone;

-- alter table employees
-- add column department varchar (64) not null;

-- insert into employees  (first_name, lastname, email, salary, department)
-- values ('Ivan', 'Ivanov', 'ivan@m.com', 500, 'Support'),
-- 		('Petr', 'Petrov', 'petr@m.com', 600, 'Cooker'),
--         ('Vasiliy', 'Vasiliev', 'va@m.com', 5100, 'Doctor'),
--         ('Marina', 'Marianovna', 'marina@m.com', 300, 'Student'),
--         ('Olga', 'Olgevich', 'olga@m.com', 700, 'IT'),
--         ('Anna', 'Annovna', 'anna@m.com', 800, 'Teacher');

-- ----------------------------------------------------------
-- use hr;

-- Отсортировать сотрудников по фамилии в алфавитном порядке.
-- select * from employees
-- order by last_name;

-- Отсортировать сотрудников по зарплате - от самой большой зарплаты до самой маленькой.
-- select * from employees
-- order by salary desc;

-- Вывести сотрудников, работающих в департаментах с id 60, 90 и 110, отсортированными в алфавитном порядке по фамилии 
-- select * from employees
-- where department_id in (60, 90, 110)
-- order by last_name;

-- Вывести трех сотрудников, чьи имена начинаются на букву D и отсортировать их в алфавитном порядке по фамилии
-- select * from employees
-- where first_name like 'D%'
-- order by last_name
-- limit 3;

-- Вывести сотрудника с самой низкой зарплатой.
-- select * from employees
-- order by salary
-- limit 1;

