-- create database project;
-- use project;
/*
1NF
name | surname | dob | phone | cell_oper| sign_zodiac | start_date | end_date | city | country

2NF
id |name | surname | dob | phone | cell_oper| sign_zodiac | start_date | end_date | city | country

3NF
Person : 
id(PK) |name | surname | dob | phone | address_id

Contacts :
phone(PK) | cell_oper|

Zodiac :
sign_zodiac(PK) | start_date | end_date |

Address : 
id(PK) | city | country |   -- PK(city + country)
*/

create table address (
id integer primary key auto_increment,
city varchar(64) not null,
country varchar (64) not null
);

create table sign_zodiac (
title varchar(16) primary key,
start_date date not null,
end_date date not null
);

create table contacts (
phone integer primary key,
cell_operator varchar (32) not null
-- 
);

create table persons (
id integer primary key auto_increment,
name varchar(16) not null,
surname varchar(16) not null,
dob date not null,
phone integer,
address_id integer,
foreign key (phone) references contacts (phone), -- 1:1
foreign key (address_id) references address (id) -- 1:1
);

insert into address (city, country)
value ('Berlin', 'Germany');

insert into sign_zodiac (title, start_date, end_date)
value ('aries', '1900-03-21', '1900-04-20');

insert into contacts (phone, cell_operator)
value (89007334, 'vodaphone');

insert into persons (name, surname, dob, phone, address_id)
value('Alex', 'Alekseev', '1980-03-29', 89007334, 1);

select p.name, p.surname, p.dob,
		a.city, a.country,
        c.phone, c.cell_operator,
        (select title from sign_zodiac sz
			where month(sz.start_date) <= month(p.dob)
			and month(sz.end_date) >= month(p.dob)
			and day(sz.start_date) <= day(p.dob)
			and day(sz.end_date) <= day(p.dob)
        ) as zodiac
from persons p
left join address a
on p.address_id = a.id
left join  contacts c
on p.phone = c.phone;













