-- GROUP BY

-- режим безопасной группировки

-- select column_name,..
-- from table
-- [where condition...]
-- [joins...]
-- group by column_name
-- [having condition]
-- [order by ..]
-- [limit ..]

-- Посчитать кол/во людей в каждом департаменте
-- Вывести ид департамента и кол/во сотрудников
select department_id, count(*)
from employees
group by department_id;

-- Вывести кол/во сотрудников из департаментов 10, 20, 40, 100 по отдельности.
select department_id, count(*)
from employees
where department_id in (10, 20, 40, 100)
group by department_id;

-- Вывести кол/во сотрудников в каждом департаменте, если кол/во больше 10.
select department_id, count(*)
from employees
group by department_id
having count(*) > 10;

-- Вывести максимальные зарплаты каждого департамента. сортировать по зарплатам по возр.
select department_id, max(salary) as max_salary
from employees
where department_id is not null
group by department_id
order by max_salary;

-- Найти среднее зарплат по департаментам.
-- Вывести department_id, avg_salary
select department_id, avg(salary) as avg_salary
from employees
where department_id is not null
group by department_id;

-- Найти имена и фамилии сотрудников с максмальной зарплатой в каждом департаменте
select t1.first_name, t1.last_name, t1.salary, t1.department_id
from employees t1
join (select department_id, max(salary) as max_salary
	from employees
	where department_id is not null
	group by department_id) t2
on t1.department_id = t2.department_id
where t1.salary = t2.max_salary;

-- Найти минимальную зарплату для каждой должности. Вывести min_salary, job_id
select min(salary) as min_salary, job_id
from employees
group by job_id;


-- Найти сотрудников с минимальной зарплатой каждой должности. Вывести first_name, last_name, salary, job_id
select * from employees;

select e.first_name, e.last_name, e.job_id,  e.salary
from employees e
join (select job_id, min(salary) as min_salary
	from employees
	where job_id is not null
	group by job_id) t2
on e.job_id = t2.job_id
where e.salary = t2.min_salary;

-- Посчитать кол/во городов в каждой стране из таблицы locations. Вывести city_count, country_id
select count(city) as city_count, country_id
from locations
group by country_id;

-- Вывести те депатраменты, в которых максимальная зарплата выше 10000
select department_id, max(salary) as max_salary
from employees
group by department_id
having max_salary > 10000;

-- Посчитать кол/во городов в каждой стране из таблицы locations. Вывести только те страны, где кол/во городов больше 3.
select * from locations;

select count(city) as count_city, country_id
from locations
group by country_id
having count_city > 3;


-- 1. Найти кол/во сотрудников в каждом депатраменте.
select department_id, count(employee_id) as emp_count
from employees
group by department_id;

-- 2. Найти максимальное кол/во сотр. среди департаментов.
select max(t1.emp_count)
from (select department_id, count(employee_id) as emp_count
		from employees
		group by department_id) t1;
        
-- 3. Вывести ид департамента с макс. кол/вом сотрудников.
select department_id, count(employee_id) as emp_count
from employees
group by department_id
having emp_count = (select max(t1.emp_count)
					from (select department_id, count(employee_id) as emp_count
							from employees
							group by department_id) t1);










