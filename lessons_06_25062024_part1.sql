-- use gt200224;

-- UNION, UNION ALL - для вертикального объединения
-- UNION ALL (объединяет) все берет включая дубли
-- UNION берет только уникальные строки(!!!)

-- колонки объединяются попозиционно, все заивисимости от названия поля
-- количество полей должно совпадать 
-- типы данных должны быть совместимы 
-- порядок и название колонок определяются по первой таблице
-- если колонки не хватает в какой-то таблице, то ее можно заменить константой



create table students_in_bonn (
id int,
name varchar(64),
surname varchar(64),
city varchar(64)
);


create table students_in_berlin (
id int,
name varchar(64),
surname varchar(64),
phone varchar(20),
city varchar(64)
);

insert into students_in_bonn 
values (1,'Oleg','Olegov','Bonn'),
		(2,'Max','Maximov','Bonn'),
        (3,'Egor','Egorov','Bonn');

insert into students_in_berlin
values (1,'Alex','Alexeev','555-222','Berlin'),
		(2,'Max','Egorov','666-777','Berlin'),
        (3,'Peter','Alexeev','444-999','Berlin');
        
select * from students_in_bonn;

select * from students_in_berlin;

select id, name, surname, city, '' as phone from students_in_bonn
union all
select id, name, surname, city, phone from students_in_berlin;

create table students_in_dortmund (
id int,
firstname varchar(64),
lastname varchar(64)
);

insert into students_in_dortmund
values (1,'Petr','Alexeev'),
		(2,'Max','Egorov');
        
select id, name, surname from students_in_bonn
union all
select id, firstname, lastname from students_in_dortmund;

insert into students_in_dortmund
values (1,'Oleg','Olegov');

select name, surname as LAST_NAME from students_in_bonn
union 
select firstname, lastname as surname from students_in_dortmund;

select id, name as first_name, surname as last_name, city, phone from students_in_berlin
union all
select id, name, surname, city, '' from students_in_bonn
union all
select id, firstname, lastname, 'Dortmund', '' from students_in_dortmund;







