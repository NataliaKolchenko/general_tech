-- Функции для работы со строками 
-- varchar/char

-- CONCAT: объединяет строки. В качестве параметра принимает от 2-х и более строк, которые надо соединить:
-- select concat('Tom', ' ', 'Smith');
-- select concat('Name', ' ', 'Tom',  ' ', 'Surname', ' ', 'Smith');

-- CONCAT_WS: также объединяет строки, но в качестве первого параметра принимает разделитель, 
-- который будет соединять строки:
-- select concat_ws(' ', 'Name', 'Tom', 'Surname', 'Smith');

-- select concat(first_name, ' ' , last_name) as full_name
-- from employees;


-- LENGTH: возвращает количество символов в строке. 
-- В качестве параметра в функцию передается строка, для которой надо найти длину:
-- select length('Tom Smith'); -- 9

-- select email, length(email) as email_lenght
-- from employees;

-- select email, length(email) as email_lenght
-- from employees
-- where length(email) = 8;

-- TRIM: удаляет начальные и конечные пробелы из строки. В качестве параметра принимает строку:
-- select trim(' Tom Smith  ');

-- LTRIM: удаляет начальные пробелы из строки. В качестве параметра принимает строку:
-- select ltrim(' Tom Smith  '); -- 'Tom Smith  '

-- RTRIM: удаляет конечные пробелы из строки. В качестве параметра принимает строку:
-- select rtrim(' Tom Smith  '); -- ' Tom Smith'

-- select concat(trim(first_name), ' ', trim(last_name)) as full_name
-- from employees;

-- LOCATE(find, search [, start]): возвращает позицию первого вхождения подстроки find в строку search. 
-- Дополнительный параметр start позволяет установить позицию в строке search, с которой начинается поиск подстроки find. 
-- Если подстрока search не найдена, то возвращается 0:

-- select locate('13', 'iPhone 13 pro max'); -- 8
-- select locate('13', 'iPhone 13 pro, iPhone 13 pro max'); -- 8
-- select locate('13', 'iPhone 13 pro, iPhone 13 pro max', locate('13', 'iPhone 13 pro, iPhone 13 pro max') + 1); -- 23
-- select locate('12', 'iPhone 13 pro max'); -- 0

-- LEFT: вырезает с начала строки определенное количество символов. 
-- Первый параметр функции - строка, а второй - количество символов, которые надо вырезать с начала строки:
-- select left('iPhone 13 pro max', 7);

-- select left(department, 3)
-- from employees;

-- LEFT: вырезает с начала строки определенное количество символов. 
-- Первый параметр функции - строка, а второй - количество символов, которые надо вырезать с начала строки:
-- select left('iPhone 13 pro max', 7);

-- select left(department, 3)
-- from employees;

-- select first_name, last_name, left(department, 3) as dep
-- from employees;

-- REPLACE(search, find, replace): заменяет в строке search подстроку find на подстроку replace. 
-- Первый параметр функции - строка, второй - подстрока, которую надо заменить, 
-- а третий - подстрока, на которую надо заменить:

-- select replace('iPhone 13 pro max', '13', '14');


-- LOWER: переводит строку в нижний регистр:
-- select lower('iPhone 13 pro max'); -- iphone 13 pro max

-- UPPER: переводит строку в верхний регистр
-- select upper('iPhone 13 pro max'); -- 'IPHONE 13 PRO MAX'


