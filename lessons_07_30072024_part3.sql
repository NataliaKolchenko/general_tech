-- подзапросы с агрегатными функциями

-- вывести всех сотрудников, кто получает максимальную зарплату
select first_name, last_name
from employees
where salary = 
(select max(salary) 
from employees);

-- Найти сотрудников, у которых зарплата меньше средней зарплаты по компании
-- Вывести имя, фамилию и зарплату.
select first_name, last_name, salary
from employees
where salary < 
(select avg(salary) from employees);

-- Найти средную зарплату сотрудников из департамента Finance
select avg(t1.salary)
from employees t1
join departments t2
on t1.department_id = t2.department_id
where t2.department_name = 'Finance';

-- Найти количество городов(city), где нет департаментов
select count(l.city)
from locations l
left join departments d
on l.location_id = d.location_id
where d.location_id is null;

select * from employees;
-- Вывести сотрудников(first_name, last_name, salary) с дольжностью(job_title) Programmer,
-- которые получают больше средней зарплаты всех сотрудников.
select first_name, last_name, salary
from employees e
join jobs j
on e.job_id = j.job_id
where j.job_title = "Programmer" 
and e.salary >
(select avg(salary) 
from employees);

-- Вывести список сотрудников с должностью "Programmer", 
-- которые получают зарплату выше средней зарплаты среди всех сотрудников с той же должностью.
select first_name, last_name
from employees e
join jobs j
on e.job_id = j.job_id
where j.job_title = "Programmer" and e.salary > (select avg(salary) 
												from employees e
                                                join jobs j
												on e.job_id = j.job_id
												where j.job_title = "Programmer" );

