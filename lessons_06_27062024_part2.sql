-- 1. Создать таблицу products1 с полями:
-- id (целое число, первичный ключ)
-- name (cтрока максимум 50 символов)
-- quantity (число больше 0 и меньше 10)
-- in_stock (один символ (Y/N))

create table products1(
	id int primary key,
    name varchar(50),
    quantity int check (quantity >0 AND quantity<10),
    in_stock char(1) check(in_stock in ('Y', 'N'))
);


insert into products1
values (1, 'Велосипед', 2, 'Y'), 
		(2, 'Скейт', 4, 'Y'), 
		(3, 'Самокат', 2, 'Y'), 
		(4, 'Сноуборд', 7, 'N'), 
		(5, 'Санки', 1, 'Y'), 
		(6, 'Коньки', 3, 'N'), 
		(7, 'Ролики', 5, 'Y');
        
-- Создать таблицу products2 с полями:
-- id (целое число, первичный ключ)
-- name (cтрока максимум 50 символов)
-- quantity (число больше 0 и меньше 10)
-- price (целое число, больше 0)
-- in_stock (один символ (Y/N))

create table products2(
	id int primary key,
    name varchar(50),
    quantity int check (quantity > 0 AND quantity < 10),
    price int check (price > 0),
    in_stock char(1) check(in_stock in ('Y', 'N'))
);

insert into products2 
values (1, 'Тюбинг', 5, 1000, 'Y'), 
		(2, 'Санки', 2, 1500, 'Y'), 
		(3, 'Снегокат', 2, 900, 'Y'), 
		(4, 'Сноуборд', 7, 700, 'N'), 
		(5, 'Клюшка', 8, 300, 'Y'), 
		(6, 'Коньки', 3, 350, 'N'), 
		(7, 'Форма', 9, 450, 'Y');
        
select * from products1;

select * from products2;


-- 1) Вывести все названия товаров (включая дубли) из двух таблиц.
select name from products1
union all
select name from products2;

-- 2) Вывести уникальные названия товаров (без дублей) из двух таблиц.
select name from products1
union 
select name from products2;

-- 3) Объединить данные из двух таблиц, указав price, где это возможно, где нет - указать null.
select name, quantity, null as price, in_stock from products1
union all
select name, quantity,price,in_stock from products2;












