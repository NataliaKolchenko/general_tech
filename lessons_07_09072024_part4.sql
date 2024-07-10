-- создание и наполнение новой БД
create database school;

use school;

-- 1) Создать таблицу Students

-- с полями:
-- - id целое число первичный ключ автоинкремент
-- - name строка 128 не null
-- - age целое число

create table students (
id int primary key auto_increment,
name varchar(128) not null,
age int
);

-- 2) Создать таблицу Teachers
-- с полями:
-- id целое число первичный ключ автоинкремент
-- name строка 128 не null
-- age целое число

create table teachers (
id int primary key auto_increment,
name varchar(128) not null,
age int
);

-- 3) Создать таблицу Competencies
-- с полями:
-- id целое число первичный ключ автоинкремент
-- title строка 128 не null

create table competencies (
id int primary key auto_increment,
title varchar(128) not null
);

-- 4) Создать таблицу Teachers2Competencies
-- с полями:
-- id целое число первичный ключ автоинкремент
-- teacher_id целое число
-- competencies_id целое число

create table Teachers2Competencies (
id int primary key auto_increment,
teacher_id int,
competencies_id int
);

-- 5) Создать таблицу Courses
-- id целое число первичный ключ автоинкремент
-- teacher_id целое число
-- title строка 128 не null
-- headman_id целое число

create table courses (
id int primary key auto_increment,
teacher_id int,
title varchar(128) not null,
headman_id int
);

-- 6)Создать таблицу Students2Courses
-- id целое число первичный ключ автоинкремент
-- student_id целое число
-- course_id целое число

create table Students2Courses (
id int primary key auto_increment,
student_id int,
course_id int
);

-- Заполнение таблиц

-- Добавить 6 записей в таблицу Students

-- Анатолий 29
-- Олег 25
-- Семен 27
-- Олеся 28
-- Ольга 31
-- Иван 22
select * from Students;
insert into Students(name, age)
values ('Анатолий', 29),
		('Олег', 25),
        ('Семен', 27),
        ('Олеся', 28),
        ('Ольга', 31),
        ('Иван', 22);
-- Добавить 6 записей в таблицу Teachers

-- Петр 39
-- Максим 35
-- Антон 37
-- Всеволод 38
-- Егор 41
-- Светлана 32

select * from Teachers;
insert into Teachers(name, age)
values ('Петр', 39),
		('Максим', 35),
        ('Антон', 37),
        ('Всеволод', 38),
        ('Егор', 41),
        ('Светлана', 32);
        
insert into Competencies (title) values ('Математика');
insert into Competencies (title) values ('Информатика');
insert into Competencies (title) values ('Программирование');
insert into Competencies (title) values ('Графика');

insert into Teachers2Competencies (teacher_id, competencies_id) values (1, 1);
insert into Teachers2Competencies (teacher_id, competencies_id) values (2, 1);
insert into Teachers2Competencies (teacher_id, competencies_id) values (2, 3);
insert into Teachers2Competencies (teacher_id, competencies_id) values (3, 2);
insert into Teachers2Competencies (teacher_id, competencies_id) values (4, 1);
insert into Teachers2Competencies (teacher_id, competencies_id) values (5, 3);
        
insert into courses (teacher_id, title, headman_id) values (1, 'Алгебра логики', 2);
insert into courses (teacher_id, title, headman_id) values (2, 'Математическая статистика', 3);
insert into courses (teacher_id, title, headman_id) values (4, 'Высшая математика', 5);
insert into courses (teacher_id, title, headman_id) values (5, 'Javascript', 1);
insert into courses (teacher_id, title, headman_id) values (5, 'Базовый Python', 1);

insert into students2courses (student_id, course_id) values (1, 1);
insert into students2courses (student_id, course_id) values (2, 1);
insert into students2courses (student_id, course_id) values (3, 2);
insert into students2courses (student_id, course_id) values (3, 3);
insert into students2courses (student_id, course_id) values (4, 5);

