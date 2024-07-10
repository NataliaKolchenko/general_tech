use school;
select * from students;
select * from courses;
select * from Students2Courses;
select * from teachers;

-- 1) Вывести имена студентов и курсы, которые они проходят
select s.name as student_name, c.title as subject
from students s
join Students2Courses s2c
on s.id = s2c.student_id
left join courses c
on c.id = s2c.course_id;

-- 2) Вывести имена всех преподавателей с их компетенциями
select t.name, c.title
from teachers t
join Teachers2Competencies t2c
on t.id = t2c.teacher_id
join competencies c
on t2c.competencies_id = c.id;

-- 3) Найти преподавателя(name), у которого нет компетенций
select t.name
from teachers t
left join Teachers2Competencies t2c
on t.id = t2c.teacher_id
where t2c.competencies_id is null;

-- 4) Найти имена студентов, которые не проходят ни один курс
select s.name 
from students s
left join Students2Courses s2c
on s.id = s2c.student_id
where s2c.course_id is null;








