-- use HR;

-- 1. Найти общее количество департаментов в компании.
select count(department_id) from departments;

-- 2. Вывести имена и фамилии сотрудников с максимальной и минимальной зарплатой.
select * from employees;

select e.first_name, e.last_name
from employees e
where salary = (select max(salary) from employees) or salary = (select min(salary) from employees);

-- 3. Найти самую низкую и самую высокую зарплату среди сотрудников с должностями IT_PROG и ST_MAN.
select * from employees;

select min(salary), max(salary)
from employees
where job_id = "IT_PROG" or job_id = "ST_MAN";

-- 4. Вывести имя, фамилию, зарплату и название департамента сотрудника с максимальной зарплатой в компании.
select * from departments;
select * from employees;

select e.first_name, e.last_name, e.salary, d.department_name
from employees e
join departments d
on e.department_id = d.department_id
where salary = (select max(salary) from employees);

-- 5. Найти самую большую зарплату среди сотрудников, работающих в департаментах с ID 70 и 80.
select max(salary)
from employees 
where department_id = 70 or department_id = 80;

-- 6.Найти среднюю зарплату в департаменте с ID 90.
select avg(salary)
from employees 
where department_id = 90;

-- 7. Найти количество сотрудников из департамента с ID 100, которые зарабатывают более 5000.

select count(employee_id)
from employees
where department_id = 100 
and salary > 5000;

-- 8. Найти количество сотрудников из департамента с ID 60, которые зарабатывают больше средней зарплаты по компании.
select count(employee_id)
from employees
where department_id = 60 and salary > (select avg(salary) from employees);

-- 9. Найти количество департаментов, в которых никто не работает.
select * from departments;

select count(d.department_id)
from departments d
LEFT JOIN employees e 
ON d.department_id = e.department_id
WHERE e.department_id IS NULL;


-- 10. Найти количество сотрудников из департамента IT, которые зарабатывают больше средней зарплаты по компании.
select * from departments;

select count(e.employee_id)
from employees e
join departments d
on e.department_id = d.department_id
where d.department_name = "IT" 
and salary > (select avg(salary) from employees);

-- 11. Вывести имена и фамилии сотрудников с должностями IT_PROG и ST_MAN, которые получают либо самую низкую, либо самую высокую зарплату.
select * from departments;
select * from employees;

select e.first_name, e.last_name
from employees e
where e.job_id  in ('IT_PROG', 'ST_MAN')
and salary = (select max(salary) from employees) or salary = (select min(salary) from employees);

-- 12. Вывести имя и фамилию сотрудника с минимальной зарплатой, который работает в городе Seattle.
select * from employees;
-- select * from locations;
select * from departments;

select e.first_name, e.last_name
from employees e
where  salary = (
select min(salary)
from employees e
join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id
where l.city = "Seattle"
);

-- 13. Найти количество сотрудников из департамента Shipping, которые зарабатывают меньше средней зарплаты среди всех сотрудников этого департамента.
select count(e.employee_id)
from employees e 
join departments d
on e.department_id = d.department_id
where d.department_name = 'Shipping'
and salary < (select avg(salary)
from employees );

-- 14.  Найти среднюю зарплату среди сотрудников, работающих в стране 'United Kingdom'.
select * from employees;
select * from departments;
select * from locations;
select * from countries;


select avg(salary)
from employees e
join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id
join countries c
on l.country_id = c.country_id
where c.country_name = "United Kingdom";

-- 15. Найти сотрудников, работающих в стране 'United States of America', 
-- чья зарплата выше средней зарплаты сотрудников, работающих в стране 'United Kingdom'. 
-- Вывести их имена, фамилии и зарплаты.

-- сотрудники из United States of America
select *
from employees e
join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id
join countries c
on l.country_id = c.country_id
where c.country_name = "United States of America"
and salary > (
select avg(salary)
from employees e
join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id
join countries c
on l.country_id = c.country_id
where c.country_name = "United Kingdom"
);








