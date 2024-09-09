-- use CompanyDB;

-- 7. Найдите департамент с самой высокой средней зарплатой сотрудников. Вывести имя департамента.

select t2.departmentname, avg(t1.salary) as avg_salary
from employees t1
join departments t2
on t1.departmentid = t2.DepartmentID
group by t1.DepartmentID
having avg_salary = (select max(t1.avg_salary)
						from (select DepartmentID, avg(salary) as avg_salary
								from employees 
								group by DepartmentID) t1);
                                
-- 8. Найдите проект с наибольшим количеством сотрудников, проработавших на нем больше 100 часов. Вывести ProjectName.
select * from employeeProjects;

-- 8.1.Вывести ИД проекта и кол/во сотрудников, которые поработали больше 100 часов.
select ep.ProjectID, count(ep.EmployeeID) 
from employeeProjects ep
where ep.HoursWorked > 100
group by ProjectID;

-- 8.2.Вывести максимальное кол/во сотрудников.
select max(employee_count) as max_employee
from  (select ep.ProjectID, count(ep.EmployeeID) as employee_count
		from employeeProjects ep
		where ep.HoursWorked > 100
		group by ProjectID) t2;

-- 8.3.Вывести ид проекта с наибольшим количеством сотрудников, проработавших на нем больше 100 часов.
select ep.ProjectID, count(ep.EmployeeID) as count
from employeeProjects ep
where ep.HoursWorked > 100
group by ProjectID
having count = (select max(employee_count) as max_employee
				from  (select ep.ProjectID, count(ep.EmployeeID) as employee_count
						from employeeProjects ep
						where ep.HoursWorked > 100
						group by ProjectID) t2);

-- 8.4. Вывести имя проекта...
select p.ProjectName
from Projects p
join (select ep.ProjectID, count(ep.EmployeeID) as count
		from employeeProjects ep
		where ep.HoursWorked > 100
		group by ProjectID
		having count = (select max(employee_count) as max_employee
						from  (select ep.ProjectID, count(ep.EmployeeID) as employee_count
								from employeeProjects ep
								where ep.HoursWorked > 100
								group by ProjectID) t2)) t2
on p.ProjectID = t2.ProjectID;

-- 9. Найдите департамент с наименьшим количеством сотрудников. Выведите название департамента и количество сотрудников.
select dep.DepartmentName, count_dep
from Departments dep
join (select d.DepartmentID, count(DepartmentID) as count_dep
		from Employees d
		group by d.DepartmentID
		having count_dep = (select min(count_emp)
		from (select e.DepartmentID, count(EmployeeID) as count_emp
				from Employees e
				group by e.DepartmentID) t1)) tt
on dep.DepartmentID = tt.DepartmentID;

-- 10. Определите департамент с наибольшим суммарным бюджетом проектов, на которых работают его сотрудники.
-- 10.1. Вывести ид департамента, имена и фамилии сотрудников, имена проектов и их бюджет.
select  t2.departmentid, t1.firstname, t1.lastname,t4.projectname,t4.budget
from employees as t1
join departments as t2
on t1.departmentid = t2.departmentid
join employeeprojects as t3
on t1.employeeid = t3.employeeid
join projects as t4
on t3.projectid = t4.projectid;

-- 10.2. Вывести ид депатамента и сумма бюджета проектов по департаментам.
select t1.departmentid ,sum(budget) as sum_budget
from employees as t1
join  employeeprojects as t2
on t1.employeeid = t2.employeeid
join projects as t3
on t2.projectid = t3.projectid
group by departmentid;

-- 10.3. Вывести маскимальную сумму бюджета проектов по департаментам.
select max(t1.sum_budget)
from (select t1.departmentid ,sum(budget) as sum_budget
		from employees as t1
		join  employeeprojects as t2
		on t1.employeeid = t2.employeeid
		join projects as t3
		on t2.projectid = t3.projectid
		group by departmentid) as t1;
        
-- 10.4. Вывести ид депатамента с максимальной суммой бюджета проектов по департаментам.
select t1.departmentid ,sum(budget) as sum_budget
from employees as t1
join  employeeprojects as t2
on t1.employeeid = t2.employeeid
join projects as t3
on t2.projectid = t3.projectid
group by departmentid
having sum_budget = (select max(t1.sum_budget)
					from (select t1.departmentid ,sum(budget) as sum_budget
							from employees as t1
							join  employeeprojects as t2
							on t1.employeeid = t2.employeeid
							join projects as t3
							on t2.projectid = t3.projectid
							group by departmentid) as t1);
                            
-- 10.5. Вывести имя депатамента с максимальной суммой бюджета проектов по департаментам.
select departmentname 
from departments as t1
join (select t1.departmentid ,sum(budget) as sum_budget
		from employees as t1
		join  employeeprojects as t2
		on t1.employeeid = t2.employeeid
		join projects as t3
		on t2.projectid = t3.projectid
		group by departmentid
		having sum_budget = (select max(t1.sum_budget)
							from (select t1.departmentid ,sum(budget) as sum_budget
									from employees as t1
									join  employeeprojects as t2
									on t1.employeeid = t2.employeeid
									join projects as t3
									on t2.projectid = t3.projectid
									group by departmentid) as t1)) as t2
									on t1.departmentid = t2.departmentid;

