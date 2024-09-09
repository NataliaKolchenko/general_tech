-- 1. Найдите среднюю зарплату сотрудников в каждом департаменте. Выведите название департамента и среднюю зарплату.
select avg(salary) from employees; -- Hайдите среднюю зарплату сотрудников

-- Первый вариант 
select t1.departmentname, t2.avg_salary
from departments t1
join (select departmentid, avg(salary) as avg_salary
		from employees
		group by departmentid) t2
on t1.departmentid = t2.departmentid;

-- Второй вариант 
select avg(e.salary), d.DepartmentName
from employees e
join Departments d
on e.DepartmentID = d.DepartmentID
group by e.DepartmentID;

-- 2. Определите количество сотрудников в каждом департаменте. Выведите название департамента и количество сотрудников.
select count(e. EmployeeID) , d.DepartmentName
from employees e
join Departments d
on e.DepartmentID = d.DepartmentID
group by e.DepartmentID;

-- 3. Найдите минимальную и максимальную зарплаты в каждом департаменте. 
-- Выведите название департамента, минимальную и максимальную зарплату.
select d.DepartmentName, min(e.Salary), max(e.Salary)
from employees e
join Departments d
on e.DepartmentID = d.DepartmentID
group by e.DepartmentID;

-- 4. Определите общую сумму зарплат в каждом департаменте. Выведите название департамента и общую сумму зарплат
select d.DepartmentName, sum(e.Salary)
from employees e
join Departments d
on e.DepartmentID = d.DepartmentID
group by e.DepartmentID;

-- 5. Вывести ID департамента с самой высокой средней зарплатой сотрудников.
select departmentid, avg(salary) as avg_salary
from employees
group by DepartmentID
having avg_salary = (select max(t1.avg_salary)
					from (select departmentid, avg(salary) as avg_salary
							from employees
							group by DepartmentID) t1);
                            
-- 6. Выведите имя, фамилию и зарплату сотрудников, чья зарплата выше средней по их департаменту.
select t1.firstname, t1.lastname, t1.salary
from employees t1
join (select departmentid, avg(salary) as avg_salary
		from employees
		group by DepartmentID) t2
on t1.departmentid = t2.departmentid
where t1.salary > t2.avg_salary;
                            











