-- работа с датой и временем 

--  типы данных
-- date - 1 январа 1000 года до 31 декабря 9999(yyyy-mm-dd год:месяц:день). 1000-01-01 до 9999-12-31 (3 байт)
-- time - 838:59:59 до 838:59:59 - hh:mm:ss час:минуты:секунды (3 байт)
-- datetime - yyyy-mm-dd hh:mm:ss (8 байт)
-- timestamp - yyyy-mm-dd hh:mm:ss - 1970-01-10 00:00:01 до 2038-01-19 03:14:07 (4 байт)
-- year - yyyy 1901 до 2155 (1 байт)

-- Функции для работы с датой и временем

select now(); -- timestamp (4 байт) -- текущую дату и время
select sysdate(); -- datetime (8 байт) -- текущую дату и время
select current_timestamp(); -- datetime (8 байт) -- текущую дату и время
 
select current_date(); -- текущая дата date
select curdate(); -- текущая дата date

select current_time(); -- текущее время time
select curtime(); -- текущее время time

select dayofmonth('2024-08-20'); -- день месяца(число)
select dayofmonth(current_date()); -- день месяца(число)

select dayofweek('2024-08-20'); -- 3 (1 - sunday) - день недели(число)

select dayofyear('2024-08-20'); -- номер дня в году (число)

select firstname, dayofmonth(hiredate)
from employees;

select month('2024-08-20'); -- Месяц (число)
select year('2024-08-20'); -- Год (число)

select firstname, HireDate
from employees
where month(hiredate) = 8;

select dayname('2024-08-20'); -- Название дня недели (строка)

select firstname, HireDate
from employees
where dayname(hiredate) = 'Tuesday';
select monthname('2024-08-20'); --  название месяца

select firstname, HireDate
from employees
where monthname(hiredate) = 'August';
-- hour
select hour('12:34:20'); -- час

-- minute
select minute('12:34:20'); -- минуты 

-- second
select second('12:34:20'); -- секунды

-- extract(param from datetime/timestamp)

-- значение param:
-- second
-- minute
-- hour
-- day
-- month
-- year
-- minute_second
-- hour_minute
-- day_hour

select extract(day from '2024-08-20 11:23:34');
select extract(day from now());
select extract(minute from '2024-08-20 11:23:34');

-- str_to_date(string, format) varchar/char -> date(yyyy-mm-dd)

select str_to_date('August 20 2024', '%M %d %Y');