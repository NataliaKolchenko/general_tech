-- Relationship types

-- One-to-one (1:1) Для каждой строки одной таблицы существует только одна 
-- запись в другой таблице

drop database relationship;
create database relationship;
use relationship;

create table person (
id integer,  -- PK
name varchar(64));

drop table passport;

create table passport (
person_id integer unique, -- FK
num varchar(16));

insert into person(id, name) values (1,'Alex'),(2,'Max');
insert into passport(person_id, num) values ( 1, '555555'),(2,'444444');

insert into passport(person_id, num) values ( 1, '33333');
-- Error Code: 1062. Duplicate entry '1' for key 'passport.person_id'

select * from person;
select * from passport;

select 
t1.id,
t1.name,
t2.num
from person as t1
left join passport as t2
on t1.id = t2.person_id;

-- One-to-many (1:M) Для каждой строки одной таблицы может существовать несколько
-- записей в другой таблице

create table student(
id integer,
name varchar(64));

create table order_course(
id integer,
title varchar(64),
student_id integer );

insert into student(id, name) values (1,'Alex'),(2,'Max'),(3,'Egor');
insert into order_course(id, title, student_id) values (1,'Java',2),
(2,'SQL',2),(3,'JS',1);

select * from student;
select * from order_course;

select 
t1.id,
t1.name,
t2.id as order_id,
t2.title
from student as t1
left join order_course as t2
on t1.id = t2.student_id;

-- Many-to-Many (M:M) Для одной строки первой таблицы существует несколько записей
-- во второй таблице и наоборот, для каждой строки второй таблицы существует
-- несколько записей в первой таблице
-- Для такой связи нужна третья таблица

create table customer(
id integer primary key,
name varchar(64)
);

create table shop(
id integer primary key,
title varchar(64),
address varchar(64)
);

create table shop2customer(
customer_id integer,  -- 1 - 1,2,3( 1 - 1, 1 - 2, 1 - 3)
shop_id integer ,      -- 2 - 1, 2 - 2, 2 - 3. (1-1, 1-1)
foreign key (customer_id) references customer (id),
foreign key (shop_id) references shop (id) 
);

insert into customer(id, name) values (1,'Alex'),(2,'Max'),(3,'Egor');
insert into shop (id, title, address) values 
(1,'Amazon','Berlin'),
(2,'Wallmart','Ontario'),
(3,'Lidl','Bonn');

insert into shop (id, title, address) values 
(4,'Rewe','Berlin');

insert into customer(id, name) values (4,'Oleg');

select * from customer;
select * from shop;

insert into shop2customer(customer_id, shop_id) values 
(1,1),
(1,3),
(2,1),
(2,2),
(2,3),
(3,1);
-- (5,5)

select * from shop2customer;

select 
t1.id,
t1.name,
t3.title,
t3.address
from customer as t1
inner join shop2customer as t2
on t1.id = t2.customer_id
inner join shop as t3
on t3.id = t2.shop_id;

select 
t1.id,
t1.name,
t3.title,
t3.address
from customer as t1 -- customer main table
left join shop2customer as t2
on t1.id = t2.customer_id
left join shop as t3
on t3.id = t2.shop_id;


select 
t1.title,
t1.address,
t3.id,
t3.name
from shop as t1 -- shop main table
left join shop2customer as t2
on t1.id = t2.customer_id
left join customer as t3
on t3.id = t2.shop_id;

 
-- PRIMARY KEY (unique + not null) - id 
drop table person;
drop table passport;

create table person (
id integer primary key,  -- PK
name varchar(64));

insert into person(id, name) values (1,'Alex'),(2,'Max');
select * from person;

drop table passport;

create table passport (
person_id integer unique, -- FK
num varchar(16),
foreign key (person_id) references person (id)
);
 
 insert into passport(person_id, num) values ( 5, '33333');
 --  a foreign key constraint fails (`relationship`.`passport`, 
 -- CONSTRAINT `passport_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`))

 select * from passport;
 
 -- Связь между таблицами задается как соответствие первичного ключа в одной таблице
 -- и внешнего ключа в другой таблице
 
-- Example to Many-to-Many

create table customer(
id integer primary key, -- PK
name varchar(64)
);

create table shop(
id integer primary key, -- PK
title varchar(64),
address varchar(64)
);

create table shop2customer(
customer_id integer, 
shop_id integer ,     
foreign key (customer_id) references customer (id),
foreign key (shop_id) references shop (id) 
);

-- Нормальные формы(база данных, которая соответствует нормальным формам - нормализованная
-- достаточно привести базу данных к 3NF ( всего их 8 (6)+2)

-- 1NF Не должно быть составных значений в колонках (массивов, строк через запятую)

/*

fio          | address
Oleg Olegov  | Berlin Str 25 

firstName | lastName | City  | Street | House
Oleg      | Olegov   | Berlin| Str    | 25

mark  | model
bmw   | m5,m3,m1

mark  | model
bmw   | m5
bmw   | m3
bmw   | m1

-- 2NF -> 1NF + PK

id | firstName | lastName | City  | Street | House
 1 |Oleg       | Olegov   | Berlin| Str    | 25
 
 
-- 3NF -> 2NF + 
-- before 
id | firstName | lastName | course_title | course_descr 	| course_length|
1  |Oleg       | Olegov   | Java.        | OOP full course  | 560 hours.   |


--after 
-- Person
id | firstName | lastName |  course_id
1  |Oleg       | Olegov   |  1

-- Course
id |  course_title | course_descr 	  | course_length| comment |
1  | Java.         | OOP full course  | 560 hours.   |         |   


HW : 
Table User : 

1) Name Surname
2) Date of birth
3) phone number
4) cell operator
5) sign zodiac
6) City
7) Country
3NF ( 1 + 2 ) , FK, one-to ?? 
*/
