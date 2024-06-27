-- use tasks; 
create table user_bremen(
	id int primary key auto_increment,
    first_name varchar(128),
    last_name varchar(128),
    age int
);

create table user_berlin(
	id int primary key auto_increment,
    first_name varchar(128),
    last_name varchar(128),
    age int,
    phone varchar(128)
);

insert into user_bremen(first_name, last_name, age)
values ('Linda', 'Jonson', 45),
('John', 'Smith', 34),
('Laura', 'Thomas', 43),
('Barbarra', 'Jones', 21);

insert into user_berlin(first_name, last_name, age, phone)
values ('Carol', 'Robson', 34, '+12355534'),
('Ben', 'King', 23, '+1998778993'),
('Mellissa', 'Wans', 43, '+123565454'),
('Barbarra', 'Jones', 21, '+12340505');

select * from user_bremen;

select * from user_berlin;

select first_name, last_name, age, null as phone
from user_bremen
union 
select first_name, last_name, age, phone
from user_berlin;

select *, null as phone
from user_bremen
union 
select *
from user_berlin;

-- Вывести имя, фамилию и возраст уникальных пользователей
select first_name, last_name, age
from user_bremen
union 
select first_name, last_name, age
from user_berlin;







