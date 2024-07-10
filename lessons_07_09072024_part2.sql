select * from employees;
select * from departments;
select * from countries;
select * from jobs;
select * from locations;
select * from regions;
select * from dependents;

-- SELF JOIN (к одной и той же таблице)
-- -- Вывести имя, фамилию и зарпату сотрудников которые получают больше 'Luis', 'Popp'
select e.first_name, e.last_name, e.salary
from employees e
join employees next
on e.employee_id != next.employee_id
where next.first_name = "Luis" 
	and next.last_name = "Popp"
    and e.salary > next.salary;
    
    -- Вывести имя, фамилию и зарплату первых трех сотрудников, которые зарабатывают меньше "Adam" "Fripp"    
select e.first_name, e.last_name, e.salary
from employees e
join employees next
on e.employee_id != next.employee_id
where next.first_name = "Adam" 
	and next.last_name = "Fripp"
    and e.salary < next.salary
limit 3;

-- Вывести имя и фамилию сотрудника и имя и фамилию его менеджера
select e.first_name, e.last_name, manag.first_name as manager_name, manag.last_name as manager_last_name
from employees e
join employees manag
on e.manager_id = manag.employee_id;

-- Вывести имя и фамилию сотрудника, имя и фамилию его менеджера и имя департамента, в котором работает менеджер
select e.first_name, e.last_name, manag.first_name as manager_name, manag.last_name as manager_last_name, manag.department_id as manager_department
from employees e
join employees manag
on e.manager_id = manag.employee_id
join departments d
on manag.department_id = d.department_id;

-- Вывести имя и фамилию сотрудника, имя и фамилию его менеджера и имя департамента, в котором работает сотрудник
select e.first_name, e.last_name, manag.first_name as manager_name, manag.last_name as manager_last_name, e.department_id as employees_department
from employees e
join employees manag
on e.manager_id = manag.employee_id
join departments d
on e.department_id = d.department_id;




