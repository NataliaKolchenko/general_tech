-- функции для работ с числами

-- round: округляет число. В качестве первого параметра передается число. Второй параметр указывает на длину. 
-- Если длина представляет положительное число, то оно указывает, до какой цифры после запятой идет округление

-- математическое округление
-- select round(123.34); -- 123
-- select round(123.6); -- 124

-- округление до 2 цифр после запятой
-- select round(123.23425654,2);

-- CEILING: возвращает наименьшее целое число, которое больше или равно текущему значению.

-- округление в большую сторону
-- select ceiling(123.34); -- 124
-- select ceiling(123.7);  -- 124

-- FLOOR: возвращает наибольшее целое число, которое меньше или равно текущему значению.

-- округление в меньшую сторону
-- select floor (123.34); -- 123
-- select floor (123.7); -- 123

-- TRUNCATE: оставляет в дробной части определенное количество символов

-- оставляет 2 цифры после запятой, без округления
-- select truncate(123.23425654,2);

-- ABS: возвращает абсолютное значение числа. (противоположное)
-- select abs(-123); -- 123


-- POWER: возводит число в определенную степень.
-- select power(5, 2); -- 25

-- SQRT: получает квадратный корень числа.
-- select sqrt(225); -- 15

-- RAND: генерирует случайное число с плавающей точкой в диапазоне от 0 до 1.
-- select round(rand()*10); -- (0 - 10)
-- select rand()*10;

-- Вывести final_price округленное в большую сторону 
-- select product_name, ceiling(final_price) 
-- from phones;











