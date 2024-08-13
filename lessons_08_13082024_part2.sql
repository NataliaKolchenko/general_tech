-- use shop;

select * from SELLERS;
select * from CUSTOMERS;
select * from ORDERS;

-- Получить информацию о заказах, включая имена продавцов и их города. ORDER_ID, AMT, ODATE, SNAME, CITY
select o.ORDER_ID, o.AMT, o.ODATE, s.SNAME, s.city
from ORDERS o
join SELLERS s
on o.SELL_ID = s.SELL_ID;

-- Вывести имя покупателя(CNAME), даты его заказа(ODATE) и имя продавца товара(SNAME).
select c.CNAME, o.ODATE, s.SNAME
from CUSTOMERS c
join ORDERS o
on c.CUST_ID = o.CUST_ID
join SELLERS s
on o.SELL_ID = s.SELL_ID;

-- Вывести кол/во продавцов.
select count(SELL_ID) from SELLERS;

-- Найти общее количество продавцов в каждом городе. Вывести город и кол/во.
select s.city, count(SELL_ID) 
from SELLERS s
group by s.city;

-- Получить среднюю комиссию для продавцов в каждом городе.
select city, avg(COMM)
from SELLERS
group by city;