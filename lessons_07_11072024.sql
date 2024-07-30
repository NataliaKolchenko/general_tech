use oe;

select * from customers;
select * from orders;
select * from product_information;
select * from order_items;
select * from categories_tab;

-- 1. Вывести имя, фамилию пользователей и даты их заказов(order_date).
select c.CUST_FIRST_NAME, c.CUST_LAST_NAME, o.ORDER_DATE
from customers c 
join orders o
on c.CUSTOMER_ID = o.CUSTOMER_ID;

-- 2. Вывести даты заказов продуктов и описание этих продуктов(product_description).
select o.ORDER_DATE, pi.PRODUCT_DESCRIPTION
from orders o
join order_items oi
on o.ORDER_ID = oi.ORDER_ID
join product_information pi
on oi.PRODUCT_ID = pi.PRODUCT_ID;

-- 3. Вывести имя, фамилию пользователей, даты заказов(order_date), 
-- описание продуктов, которые они заказали и категории соответствующих продуктов 
-- (category_name).
select c.CUST_FIRST_NAME, c.CUST_LAST_NAME, o.ORDER_DATE, pi.PRODUCT_DESCRIPTION
from customers c 
join orders o
on c.CUSTOMER_ID = o.CUSTOMER_ID
join order_items oi
on o.ORDER_ID = oi.ORDER_ID
join product_information pi
on oi.PRODUCT_ID = pi.PRODUCT_ID
join categories_tab ct
on ct.CATEGORY_ID=pi.CATEGORY_ID;

-- 4. Вывести названия(product_name), описания категорий(category_description) и 
-- количества(quantity) тех продуктов, у которых минимальная стоимость (min_price) больше 300.
select pi.PRODUCT_NAME, ct.CATEGORY_DESCRIPTION, oi.QUANTITY
from product_information pi
join categories_tab ct
on pi.CATEGORY_ID=ct.CATEGORY_ID
join order_items oi
on pi.PRODUCT_ID = oi.PRODUCT_ID
where pi.MIN_PRICE > 300;

-- 5. Вывести имя, фамилию покупателей, которые купили принтеры('printers') CATEGORY_DESCRIPTION.
select c.CUST_FIRST_NAME, c.CUST_LAST_NAME
from customers c 
join orders o
on c.CUSTOMER_ID = o.CUSTOMER_ID
join order_items oi
on o.ORDER_ID = oi.ORDER_ID
join product_information pi
on oi.PRODUCT_ID = pi.PRODUCT_ID
join categories_tab ct
on ct.CATEGORY_ID=pi.CATEGORY_ID
where ct.CATEGORY_DESCRIPTION like "%printers";







