-- use GT200224;

-- select locate ('Laura', full_name) from employees;

-- delete from employees
-- where locate('Laura', full_name) != 0;

-- select replace (full_name, 'John', 'Jack')
-- from employees;

-- create table products2(
-- 	id int primary key auto_increment, 
--     title varchar(128),
--     price int,
--     desctiption varchar(255)
-- );

-- alter table products2
-- change desctiption description varchar(255);

-- insert into products2 (title, price, description)
-- values ('notebook', 400, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at tortor eu risus imperdiet lacinia at nec felis. Etiam imperdiet ante purus, at tristique neque malesuada eu. Nullam sed sodales lacus.'),
-- 		('pen', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at tortor eu risus imperdiet lacinia at nec felis. Etiam imperdiet ante purus, at tristique neque malesuada eu. Nullam sed sodales lacus. '),
--         ('pencil', 15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at tortor eu risus imperdiet lacinia at nec felis. Etiam imperdiet ante purus, at tristique neque malesuada eu. Nullam sed sodales lacus. ');

select * from products2;

-- update products2
-- set description = replace (description, 'Lorem', 'Lorrem');

-- set sql_safe_updates = 0;

-- В поле description заменить все запятые (,) на точку запятую (;).

-- update products2
-- set description = replace (description, ',', ';');

-- select left('Lorem ipsum dolor sit amet.', 10);
-- select left('Lorem ipsum dolor sit amet.', locate('dolor', 'Lorem ipsum dolor sit amet.')-1);
-- select replace(left('Lorem ipsum dolor sit amet.', locate('dolor', 'Lorem ipsum dolor sit amet.')-1), 'o', '0');

--  В поле description до слово 'Etiam' заменить все буквы 'o' на '0'.
-- select concat(replace(left(description, locate('Etiam', description)-1), 'o', '0'), right(description, length(description) - locate('Etiam', description) + 1))
-- from products2;
-- и дальше сделать апдейт. ниже расписано по шагам

-- step 1. ищем позицию подстроки в конкретном поле
-- select locate ('Etiam', description) -- 115
-- from products2;

-- step 2. нужно вырезать все, до позиции из п.1
-- select left (description, 115-1)
-- from products2;

-- это такой же пример, но когда все условия выполняются вместе (не по шагам)
-- select left (description, locate ('Etiam', description))
-- from products2;

-- где заменяем, что заменчем, на что заменяем
-- select replace(left (description, locate ('Etiam', description)), 'o', '0')
-- from products2;

select right(description, length(description) - locate('Etiam', description) + 1)
from products2;

