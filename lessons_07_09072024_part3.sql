-- OUTER JOIN 

-- Вывести все страны из таблицы countries и города из locations, если в locations нет города в этой стране, вывест null
select t1.country_name, t2.city
from countries t1
left join locations t2
on t1.country_id = t2.country_id;

select country_name, city
from locations t1
right join countries t2
on t1.country_id = t2.country_id;

-- Вывести те страны, которых нет в locations
-- left join берет данные из первой таблицы
select t1.country_name
from countries t1
left join locations t2 
on t1.country_id = t2.country_id
where t2.country_id is null;

-- right join берет данные из второй таблицы
select t2.country_name
from locations t1
right join countries t2
on t1.country_id = t2.country_id
where t1.country_id is null;

select t1.country_name, t2.city
from countries t1
left join locations t2
on t1.country_id = t2.country_id
where t2.city is null;

select t1.country_name, t2.street_address
from countries t1
left join locations t2
on t1.country_id = t2.country_id
where t2.street_address is null;

-- Вывести имя и фамилию сотрудника из dependents и имя фамилию родителя из employees.
select t1.first_name, t1.last_name, t2.first_name as parent_name, t2.last_name as parent_last_name
from dependents t1
join employees t2
on t1.employee_id = t2.employee_id;


-- Вывести имя и фамилю всех сотрудников из employees, и имя и фамилию их детей из dependents если есть, если нет - null.
select e.first_name, e.last_name, d.first_name as child_name, d.last_name as child_last_name
from   employees e
left join dependents d
on e.employee_id = d.employee_id;

-- Вывести имена и фамилии сотрудников у которых в компании нет детей.
select t1.first_name, t1.last_name, t2.first_name, t2.last_name
from employees t1
left join dependents t2
on t1.employee_id = t2.employee_id
where t2.first_name is null;






