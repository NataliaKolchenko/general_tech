use hr;
-- INNER JOIN (общее между двумя таблицами)
-- select t1.<column_name>, t2.<column_name>
-- from table1 t1
-- join table2 t2
-- on t1.column = t2.column;

-- Вывести имя, фамилию сотрудников, имя  департамента и адресс(street_address, city) департамента, в котором они работают
select e.first_name, e.last_name, d.department_name, l.street_address, l.city
from employees e
join departments d
on e.department_id = d.department_id 
join locations l
on d.location_id = l.location_id;

-- Вывести имя и фамилию сотрудников из департамента "Sales", которые зарабатывают больше 8000.
select e.first_name, e.last_name
from employees e
join departments d
where d.department_name = "Sales"
and e.salary > 8000;

select * from employees;
select * from departments;
select * from countries;
select * from jobs;
select * from locations;
select * from regions;
select * from dependents;

-- Вывести имя и фамилию сотрудника с максимальной зарплатой из департамента "IT".
select e.first_name, e.last_name
from employees e
join departments d
on e.department_id = d.department_id 
where d.department_name = "IT"
order by salary desc
limit 1;