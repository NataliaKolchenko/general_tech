-- Выведите имена всех продавцов. 
-- Предусмотрите также в выборке имена их боссов, сформировав атрибут bossname. 
-- В выборке должно присутствовать два атрибута — sname, bossname.

select * from sellers;

select s.sname as seller_name, boss.sname as boss_name
from sellers s
join sellers boss
on s.boss_id = boss.sell_id;

-- Выведите имена покупателей, которые совершили покупку на сумму больше 1000 условных единиц.
-- В выборке должно присутствовать два атрибута — cname, amt.

select * from customers;
select * from orders;

select c.cname as customer_name, o.amt as amount
from customers c
join orders o
on c.cust_id = o.cust_id
where o.amt > 1000;


-- Выведите имена покупателей, которые сделали заказ.
-- Предусмотрите в выборке также имена продавцов.
-- Примечание: покупатели и продавцы должны быть из разных городов.
-- В выборке должно присутствовать два атрибута — cname, sname.
select * from customers;
select * from orders;
select * from sellers;

select c.cname as customer_name, s.sname as seller_name
from  customers c
join orders o
on c.cust_id = o.cust_id
join sellers s
on o.sell_id = s.sell_id
where c.city != s.city;

-- Выведите пары покупателей и обслуживших их продавцов из одного города.
-- Вывести: sname, cname, city
select c.cname as customer_name, s.sname as seller_name, s.city
from  customers c
join orders o
on c.cust_id = o.cust_id
join sellers s
on o.sell_id = s.sell_id
where c.city = s.city;



