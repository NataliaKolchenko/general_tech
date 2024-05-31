-- use hr;

-- 2. Вывести имя, фамилию и зп сотрудников, которые зарабатывают от 9000
-- Select first_name, last_name, salary from employees
-- where salary >= 9000;

-- 3. Вывести имя, фамилию и зп сотрудников, которые зарабатывают от 9000 до 12000 (вкл)
-- Select first_name, last_name, salary from employees
-- where salary between 9000 and 12000;

-- 4. Вывести имя и фамилию сотрудников, чья фамилия начинается на букву C
-- Select first_name, last_name from employees
-- where last_name like "c%";

-- 5. Вывести имя и фамилию сотрудников, чья фамилия содержит букву O в середине фамилии
-- Select first_name, last_name from employees
-- where last_name like "_o_";

-- 6. Вывести имя, фамилию, номер департамента сотрудников, работающих в департаментах 90, 110, 80
-- Select first_name, last_name, department_id from employees
-- where department_id in (90, 110, 80);

-- 7. Вывести имя, фамилию, зарплата и номер департамента сотрудников, 
-- работающих в департаментах 90, 110, 80 и зарабатывающих больше 9000 
-- или тех, чье имя начинается на  A
-- Select first_name, last_name, department_id from employees
-- where (department_id in (90, 110, 80) and salary >=9000) or (first_name like "a%");

-- 8. Вывести имя, фамилию, зарплата и номер департамента сотрудников, 
-- работающих в департаменте 10, кроме тех у кого зп менее 9000
-- select
-- 	first_name,
--     last_name,
--     salary,
--     department_id
-- from employees
-- where department_id = 80 and salary >= 9000;




