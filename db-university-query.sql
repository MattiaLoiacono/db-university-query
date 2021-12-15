use `university`;


-- 1
select *
from students 
where year (date_of_birth) = 1990;

-- 2
select *
from courses 
where cfu > 10;

-- 3
select *
from students 
where timestampdiff(year,date_of_birth,curdate()) > 30;

-- 4
select *
from degrees 
where level ="magistrale";

-- 5
select count(id)
from departments;

-- 6
select count(id)
from teachers 
where phone is null;

-- 7
select year (enrolment_date),  count(id) as numero_iscrizioni
from students 
group by year(enrolment_date)
order by year(enrolment_date);

-- 8
select 	avg(vote) , exam_id 
from exam_student 
group by exam_id ;

-- 9
select count(o.id) as numero_corsi , d.name
from degrees o
inner join departments d on o.department_id = d.id 
group by o.department_id;

-- 10
select *
from students s 
inner join degrees d on d.id = s.degree_id 
having d.name = "Corso di Laurea in Economia";

-- 11
select *
from degrees d 
inner join departments d2 on d.department_id = d2.id 
having d2.name="Dipartimento di Neuroscienze" and d.level="magistrale";

-- 12
select *
from courses c 
inner join course_teacher ct on ct.course_id = c.id 
inner join teachers t on t.id = ct.teacher_id 
having t.name = "Fulvio" and t.surname = "Amato";

-- 13
select d.name, d.level, d.address, d2.name , s.surname , s.name 
from degrees d 
inner join departments d2 on d2.id = d.department_id
inner join students s on s.degree_id = d.id 
order by s.surname,s.name;


