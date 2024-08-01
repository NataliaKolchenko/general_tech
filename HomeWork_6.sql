use oe;

-- Таблица - customers
select * from customers;

-- 1.Вывести максимальный и минимальный credit_limit.

select max(credit_limit), min(credit_limit) 
from customers;

-- 2.Вывести покупателей у которых creditlimit выше среднего creditlimit.

select * 
from customers
where credit_limit > (
select avg(credit_limit) from customers
);

-- 3.Найти кол/во покупателей имя которых начинается на букву 'D' и credit_limit больше 500

select count(CUSTOMER_ID) 
from customers
where CUST_FIRST_NAME like 'D%'
and credit_limit > 500;

-- ----------------------------------------------------------------
-- Таблица - order_items
select * from order_items;

-- Найти среднее значение unit_price

select avg(UNIT_PRICE) from order_items;

-- ----------------------------------------------------------------
-- Таблицы - orderitems, productinformation
select * from order_items;
select * from product_information;

-- Вывести имена продуктов(PRODUCT_NAME), кол/во(QUANTITY) которых меньше среднего.
select PRODUCT_NAME
from product_information pi
join order_items oi
on pi.PRODUCT_ID = oi.PRODUCT_ID 
where oi.QUANTITY < (
select avg(QUANTITY) from order_items
);
-- ----------------------------------------------------------------
-- Таблицы - orders, customers
select * from orders;
select * from customers;

-- Вывести имя и фамилию покупателя с максимальной общей суммой покупки(ORDER_TOTAL).
select CUST_FIRST_NAME as FIRST_NAME, CUST_LAST_NAME as LAST_NAME
from customers c
join orders o
on c.CUSTOMER_ID = o.CUSTOMER_ID
where o.ORDER_TOTAL = (
select max(ORDER_TOTAL) from orders
);

-- Найти сумму общей суммы покупок(ORDER_TOTAL) всех мужчин покупателей.
select sum(o.ORDER_TOTAL)
from customers c
join orders o
on c.CUSTOMER_ID = o.CUSTOMER_ID
where GENDER = "M";