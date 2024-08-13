-- 1. Посчитать количество рейсов по каждой модели самолета. Вывести modelname и flightcount.
select * from airliners; 
select * from trips; 

select a.model_name, count(t.id) as flightcount
from airliners a
join trips t
on a.id = t.airliner_id
group by a.model_name;

-- 2. Вычислить среднюю стоимость билета по классам обслуживания. Вывести serviceclass и averageprice.
select * from tickets;

select t.service_class, avg(price) as averageprice
from tickets t
group by t.service_class;

-- 3. Определить средний возраст клиентов, сгруппированных по классу обслуживания. Вывести serviceclass и averageage.
select * from tickets;
select * from clients;

select  t.service_class, avg(c.age) as averageage
from clients c
join tickets t
on c.id = t.client_id
group by t.service_class;

-- 4. Получить общее количество билетов, купленных каждым клиентом. Вывести name и ticket_count.
select * from tickets;
select * from clients;

select c.name, count(t.id) as ticket_count
from tickets t
join clients c
on t.client_id = c.id
group by t.client_id;

-- 5. Определить количество рейсов, отправленных из каждого аэропорта. Вывести departure и departure_count.
select * from airliners;
select * from trips; 

select t.departure, count(t.id) as departure_count
from trips t
join airliners a
on t.airliner_id = a.id
group by t.departure;

-- 6. Вычислить общий доход от продажи билетов для каждой страны производителя самолетов. Вывести country и total_sum.
select * from airliners;
select * from trips; 
select * from tickets;

select a.country, sum(t.price) as total_sum
from airliners a
join trips tr
on a.id = tr.airliner_id
join tickets t
on tr.id = trip_id
group by a.country;






