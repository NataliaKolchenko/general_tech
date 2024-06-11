-- Условные операторы(ветвление)

-- case
-- 	when условие1 then действие/результат
--     when условие2 then действие/результат
--     when условие3 then действие/результат
--     ...
--     else альтернативный результат
-- end

-- оператор AS (alias) - как

-- use GT200224;

-- select * from Phones;


-- Вывести поле product_name как title, посчитать и вывести общую сумму заказов (product_count * starting_price) как total_sum
-- select product_name as title, product_count * starting_price as total_sum
-- from Phones;

-- alter table Phones
-- add column total_sum int default 0;

-- update Phones
-- set total_sum = product_count * starting_price;

-- Вывести product_name, product_count, новое поле count_info, заполнить ее: 
-- Если Product_Count меньше/равно 2, count_info = 'Товар заканчивается',
-- Если Product_Count меньше/равно 5, count_info = 'Мало товара',
-- Если Product_Count меньше/равно 10, count_info = 'Есть в наличии',
-- В остальных случаях count_info ='Много товара';

-- select product_name, product_name, 
-- case
-- 	when product_count <= 2 then 'Товар заканчивается'
--     when product_count <=5 then 'Мало товара'
--     when product_count <=10 then 'Есть в наличии'
--     else 'Много товара'
-- end as count_info
-- from Phones;


-- Создать новое поле count_info, заполнить ее: 
-- Если Product_Count меньше/равно 2, category = 'Товар заканчивается',
-- Если Product_Count меньше/равно 5, category = 'Мало товара',
-- Если Product_Count меньше/равно 10, category = 'Есть в наличии',
-- В остальных случаях category ='Много товара';

-- alter table phones
-- add count_info varchar(128);

select * from phones;

-- update phones
-- set count_info = case
-- 						when product_count<=2 then 'Товар заканчивается'
-- 						when product_count<=5 then 'Мало товара'
-- 						when product_count<=10 then 'Есть в наличии'
-- 						else 'Много товара'
-- 				  end;

-- Вывести product_name как name, starting_price как price и новое поле tax 
-- Заполнить поле tax
-- Если начальная цена меньше/равно 700, tax = null,
-- если больше 700 и меньше 850, tax = 15,
-- если больше или равно 850, tax = 25

-- select product_name as name, starting_price as price,
-- case 
-- when starting_price <=700 then  null
-- when starting_price > 70 and starting_price < 850 then  15
-- when starting_price >= 800 then 25
-- end as tax
-- from phones;

-- Создать новое поле tax целое число
-- Заполнить поле tax
-- Если начальная цена меньше 700, tax = null,
-- если больше либо равно 700 и меньше 850, tax = 15,
-- если больше или равно 850, tax = 25

-- alter table phones
-- add tax int;

-- update phones
-- set tax = case
-- 						when starting_price<700 then null
-- 						when starting_price=700 and starting_price<850 then 15
-- 						when starting_price>=850 then  25
-- 				  end;


-- alter table phones
-- add final_price numeric(6,2);

-- update phones
-- set final_price = starting_price + starting_price * tax / 100;

-- update phones
-- set final_price = case
-- 	when tax is null then starting_price 
-- 	when starting_price is null then 0
-- 	else starting_price + starting_price * tax / 100
-- end;

-- coalesce работает альтернативой предыдущего coalesce
-- coalesce(value1, value2, value3...)

update phones
set final_price = coalesce(starting_price + starting_price * tax / 100,starting_price,0);


