-- агрегатные функции 

-- MIN - вычисляет наименьшее значение
-- MAX - вычисляет наибольшее значение
-- SUM - вычисляет сумму значений
-- COUNT - вычисляет количество строк в запросе
-- AVG - вычисляет среднее значение

-- Вывести максимальную зарплату в компании
select max(salary) 
from employees;

-- Вывести min зарплату в компании
select min(salary) 
from employees;

-- вывести сумму всех зарплат
select sum(salary) 
from employees;

-- средняя зп
select avg(salary) 
from employees;

-- вывести кол-во сотрудников в компании 
select count(employee_id)
from employees;

-- вывести кол-во строк из таблицы  employees;
select count(*)
from employees;

-- вывести всех сотрудников из деп.IT
select first_name, last_name
from employees e
join departments d
on e.department_id = d.department_id
where d.department_name = 'IT';

-- вывести количество строк в деп.IT
select count(*)
from employees e
join departments d
on e.department_id = d.department_id
where d.department_name = 'IT';

-- вывести количество сотрудников в деп.IT
select count(first_name)
from employees e
join departments d
on e.department_id = d.department_id
where d.department_name = 'IT';


