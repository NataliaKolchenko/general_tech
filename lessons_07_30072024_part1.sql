use hr;

-- Self join
select emp.first_name as emp_first_name, emp.last_name as emp_last_name,  mng.first_name as mng_first_name, 
mng.last_name as mng_last_name
from employees emp
join employees mng
on emp.manager_id = mng.employee_id;

select * from employees;
select * from jobs;

-- Вывести имя, фамилию сотудника, имя департамента и должность сотрудника(job_title)
select e.first_name, e.last_name, d.department_name, j.job_title
from employees e
join departments d
on e.department_id = d.department_id
join jobs j 
on e.job_id = j.job_id;

select * from locations;
select * from departments;

-- Вывести все города, в которых нет департаментов
select l.city
from locations l
left join departments d
on l.location_id = d.location_id
where d.location_id is null;

select * from countries;
select * from locations;

-- Вывести из таблицы countries те страны, которых нет в locations
select c.country_name
from countries c
left join locations l
on c.country_id = l.country_id
-- where l.location_id is null;
where l.country_id is null;

select * from employees;

-- Вывести тех сотрудников, у которых менеджер Nancy Greenberg
select emp.first_name as employees_name, emp.last_name as employees_last_name
-- , mng.first_name as manager_name, mng.last_name as manager_last_name
from employees emp
join employees mng
on emp.manager_id = mng.employee_id
where mng.first_name = "Nancy" and mng.last_name = "Greenberg";

-- Вывести тех сотрудников, которые зарабатывают меньше своих менеджеров.
select emp.first_name, emp.last_name
from employees emp
join employees mng
on emp.manager_id = mng.employee_id
where emp.salary < mng.salary;

