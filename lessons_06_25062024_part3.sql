create table goods(
id int primary key auto_increment,
title varchar (32),
quantity int check(quantity > 0),
in_stock char(1) check(in_stock in ('Y', 'N'))
);

create table goods_2(
id int primary key auto_increment,
title varchar (32),
quantity int check(quantity > 0),
price int,
in_stock char(1) check(in_stock in ('Y', 'N'))
);

insert into goods(title, quantity, in_stock)
values 
('Bike', 2, 'Y'),
('Skate', 4, 'Y'),
('Board', 7, 'N'),
('Skies', 13, 'N'),
('Skates', 5, 'Y');

insert into goods_2(title, quantity, price, in_stock)
values 
('Sledge', 5, 1000, 'Y'),
('Board', 7, 700, 'N'),
('Skies', 13, 300, 'N'),
('Skates', 3, 350, 'N'),
('Form', 9, 450, 'Y');

select * from goods;
select * from goods_2;

-- вывести все наименования товаров из 2х таблиц (со всеми дублями)
select title from goods
union all
select title from goods_2;

-- вывести все товары с ценой, где цены нет - поставить 0
select id, title, quantity, 0 as price, in_stock  from goods
union all
select id, title, quantity, price, in_stock  from goods_2;











