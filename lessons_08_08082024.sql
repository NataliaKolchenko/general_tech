-- use hr;

select * from countries;
select * from regions;

-- Вывести ид региона и кол/во стран в этом регионе. Таблциа countries.
select region_id, count(country_id)
from countries
group by region_id;

-- Вывести те регионы(ид), где кол/во стран больше 5
select region_id, count(country_id)
from countries 
group by region_id
having  count(country_id)  >  5;

-- 3. Вывести имя региона и кол/во стран в этом регионе. Таблциы regions, countries.
select t1.region_name, t2.country_count
from regions t1
join (select region_id, count(country_name) as country_count
		from countries
		group by region_id) t2
on t1.region_id = t2.region_id;

-- 4. Вывести имена тех регионов, где кол/во стран больше 5.
select t1.region_name
from regions t1
join (select region_id, count(country_name) as country_count
		from countries
		group by region_id) t2
on t1.region_id = t2.region_id
where t2.country_count > 5;

-- 5. Вывести id должности(job_id) и маскимальную зарплату каждой должности.
select job_id, max(salary) as max_salary
from employees
group by job_id;

select * from employees;
select * from Jobs;

-- 6. Вывести имя должности(job_title) и маскимальную зарплату каждой должности. Jobs, employees
select j.job_title, e.max_salary
from Jobs j
join (select job_id, max(salary) as max_salary
		from employees
		group by job_id) e
on j.job_id = e.job_id;

-- 7. Вывести название должности и максимальную зарплату, если она больше 9000.
select j.job_title, e.max_salary
from Jobs j
join (select job_id, max(salary) as max_salary
		from employees
		group by job_id) e
on j.job_id = e.job_id
where e.max_salary > 9000;

-- Найти департаменты, в которых больше 10 сотрудников. Вывести имя департамента, кол/во сотрудников.
-- Найти департаменты, в которых больше 10 сотрудников. Вывести имя департамента, кол/во сотрудников.
select department_id, count(employee_id) as count_emp
from employees
group by department_id
having count_emp > 10;

select t1.department_name, t2.count_emp
from departments t1
join (select department_id, count(employee_id) as count_emp
		from employees
		group by department_id
		having count_emp > 10) t2
on t1.department_id = t2.department_id;

-- 2 version
select t1.department_name, t2.emp
from departments as t1
join (select count(employee_id)as emp,department_id
		from employees 
		group by department_id) t2
on t1.department_id = t2.department_id
where t2.emp >10;


