-- use hr;

-- 1
-- В таблице employees создать новое поле salarywithcomm numeric(6, 4) и заполнить формулой: salary + salary * 15 / 100.

-- alter table employees
-- add salarywithcomm numeric(6, 4);

update employees
set salarywithcomm = salary + salary * 15 / 100; 

select * from employees;



   