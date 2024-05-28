-- Создать таблицу students
-- id уникальное значение, не null, автозаполнение 
-- firstname varchar not null
-- lastname varchar not null
-- class integer от 1 до 10 (вкл)
-- subject varchar not null
-- mark integer от 0 до 5 (вкл)
-- school_no integer по умолч. 0

-- create table students (
-- id int primary key auto_increment,
-- first_name varchar(64) not null,
-- last_name varchar (128) not null,
-- class int check(class between 1 and 10),
-- subject varchar (64) not null,
-- mark int check (mark between 0 and 5),
-- school_no int default 0
-- );

-- incorrect query
-- insert into students (first_name, last_name, class, subject, mark, school_no)
-- values ('John', 'Smith', 5, 'Math', 4, 3);

-- incorrect query because "check" in class was ignorred
-- Error Code: 3819. Check constraint 'students_chk_1' is violated.	0.00031 sec
-- insert into students (first_name, last_name, class, subject, mark, school_no)
-- values ('John', 'Smith', 12, 'Math', 4, 3);

-- try to add row without school_no (because it has defaul meaning)
insert into students (first_name, last_name, class, subject, mark)
values ('Nate', 'Fare', 7, 'Math', 4);

select * from students;

-- удаление данных из таблицы, но автоинкремент (ИД) будут продолжать свои значения
-- delete from students;

-- удаление значений из таблицы с обнулением автоинкремента (ИД)
-- truncate table students;  

