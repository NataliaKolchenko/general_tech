
-- select * from countries;
-- select * from regions;

-- JOIN

-- INNER JOIN
-- Join позволяет объединять данные из таблиц "горизонтально". То есть указав
-- правило, по которым мы хотите объединять строки, join их объединяет.
-- При inner join в результирующую выборку попадут только те записи, которые
-- нашли себе пару по условию join (указанное после ключевого слова on).
-- Все остальные записи в результирующую выборку не попадут

-- select table1.column_name1, table1.column_name2, table2.column_name3
-- from table1
-- join table2
-- on table1.column = table2.column;

select country_name, region_name
from regions r
join countries c
on r.region_id = c.region_id;

-- Вывести имя страны из таблицы countries, город и улицу из locations
select c.country_name, l.city, l.street_address
from countries c
join locations l
on c.country_id = l.country_id;

-- Вывести регион, имя страны из таблицы countries, город и улицу из locations
select t.region_name, c.country_name, l.city, l.street_address
from regions t
join countries c
on t.region_id = c.region_id
join locations l
on c.country_id = l.country_id;

select * from departments;
select * from locations;
select * from countries;
select * from regions;

-- Вывести имя департамента и город в котором он находится.
select department_name, city
from departments d
join locations l
on d.location_id = l.location_id;

-- Вывести департаменты которые находятся в Seattle.
select t1.department_name
from departments t1
join locations t2
on t1.location_id = t2.location_id
where t2.city = 'Seattle';

-- Вывести первые три департамента, которые находятся в стране 'United States of America'.
select department_name 
from departments d
join locations l
on d.location_id = l.location_id
join countries c
on l.country_id = c.country_id
where c.country_name like "United States of America"
limit 3;

-- Вывести имя и фамилию сотрудника и название его департамента
 -- first_name, last_name, department_name
 
 select * from employees;
 select * from departments;
 select * from locations;
 
 
select first_name, last_name, department_name
from employees e
join departments d
on e.department_id = d.department_id;

-- Вывести имя и фамилию сотрудника, которые работают в департаменте Shipping
select first_name, last_name
from employees e
join departments d
on e.department_id = d.department_id
where d.department_name = "Shipping";

-- Вывести имя и фамилию сотрудников и должность, 
 -- которые зарабатывают ровно минимальную или масимальную зарплату для должности
 select * from employees;
 select * from jobs;
 
 select first_name, last_name, job_title
 from employees e
 join jobs j
 on e.job_id = j.job_id
 where e.salary = j.min_salary or e.salary = j.max_salary;
 
 --  Вывести имя, фамилию и зарплату тех сотрудников, которые работают в городах Oxford или San Francisco
--  first_name, last_name, salary 
--  locations.city
select e.first_name, e.last_name, e.salary,l.city
from employees e
join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id
-- where l.city in ("Oxford", "San Francisco");
where l.city = "Oxford" or l.city  like "%San Francisco%";

select * from locations;
select employees.* , departments.*, locations.*
from employees
join departments 
on employees.department_id = departments.department_id
join locations
on departments.location_id = locations.location_id
where city Like 'Oxford' or  locations.city Like '%San Francisco%';
 