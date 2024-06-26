-- SUBSELECT

select t1.id, t1.first_name, t1.last_name
from 
	(select id, name as first_name, surname as last_name, city, phone from students_in_berlin
	union all
	select id, name, surname, city, '' from students_in_bonn
	union all
	select id, firstname, lastname, 'Dortmund', '' from students_in_dortmund) as t1
where t1.id in (1,2);


-- подзапрос в подзапросе
select t2.first_name 
from
	(select t1.id, t1.fname as first_name, t1.last_name 
		from 
			(select id, name as fname , surname as last_name, city, phone from students_in_berlin
			union all
			select id, name , surname , city, '' from students_in_bonn
			union all
			select id, firstname, lastname , 'Dortmund', '' from students_in_dortmund) as t1
		where t1.id in (1,2) ) as t2
where t2.id = 2;

-- subselect example
create table students_two(
id int primary key auto_increment,
name varchar(64)
);

create table student_phones(
id int primary key auto_increment,
student_id int,
phone varchar(32)
);

insert into students_two (name)
values ('Alex'),('Oleg'),('Egor'),('Max');

insert into student_phones (student_id, phone)
values (2, '555555555'),
(4, '33333333333');

select * from students_two;

select * from student_phones;

-- выберите всех студентов у кого есть телефоны 
select * from students_two
where id in (select student_id
				from student_phones);
                
-- тоже самое только с join           
select t1.*
from students_two t1
inner join student_phones t2
on t1.id = t2.student_id;

