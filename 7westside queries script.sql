SELECT cs.day, co.name, l.level_description, cs.start_time, co.duration, t.first_name
FROM class_schedule cs, class_offering co, level l, teacher t
WHERE cs.class_id = co.class_id 
AND co.level_id = l.level_id 
AND cs.teacher_id = t.teacher_id
ORDER BY cs.class_schedule_id;

SELECT co.name, cs.day, l.level_description, cs.start_time, s.first_name
FROM class_offering co, class_schedule cs, level l, student s, enrollment e
WHERE co.class_id = cs.class_id 
AND co.level_id = l.level_id 
AND e.student_id = s.student_id 
AND cs.class_schedule_id = e.class_schedule_id
ORDER BY cs.class_id, s.student_id;

SELECT s.first_name, s.last_name
FROM student s, class_offering co, enrollment e, class_schedule cs
WHERE e.student_id = s.student_id
AND co.class_id = cs.class_id
AND co.name = 'competition rehearsal (invite only)'
AND e.class_schedule_id = cs.class_schedule_id
ORDER BY s.last_name;

SELECT cd.title, ag.age_group_description, cat.category_description, g.genre_description, s.first_name
FROM competition_dance cd, dance_age_group ag, dance_category cat, dance_genre g, student s, student_dance_assoc sda
WHERE cd.genre_id = g.genre_id 
AND cd.category_id = cat.category_id
AND cd.age_group_id = ag.age_group_id
AND s.student_id = sda.student_id
AND sda.dance_id = cd.dance_id
ORDER BY cd.title;

SELECT s.first_name, s.last_name, s.birth_date, ag.age_group_description
FROM student s, dance_age_group ag
WHERE birth_date > '2013-01-01'
AND ag.age_group_description = 'petite 0-8 y/o'
AND active = true
UNION 
SELECT s.first_name, s.last_name, s.birth_date, ag.age_group_description
FROM student s, dance_age_group ag
WHERE birth_date between '2010-01-01' AND '2012-12-31'
AND ag.age_group_description = 'junior 9-11 y/o'
AND active = true
UNION 
SELECT s.first_name, s.last_name, s.birth_date, ag.age_group_description
FROM student s, dance_age_group ag
WHERE birth_date between '2009-01-01' AND '2007-12-31'
AND ag.age_group_description = 'teen 12-14 y/o'
AND active = true
UNION 
SELECT s.first_name, s.last_name, s.birth_date, ag.age_group_description
FROM student s, dance_age_group ag
WHERE birth_date between '2006-01-01' AND '2002-12-31'
AND ag.age_group_description = 'senior 15-19 y/o'
AND active = true
;

SELECT comp.name, comp.start_date, comp.end_date, cd.title, comp.paid
FROM competition comp, competition_dance cd, competition_dance_assoc cda
WHERE comp.competition_id = cda.competition_id
AND cd.dance_id = cda.dance_id
ORDER BY comp.start_date;

SELECT f.family_name, b.invoice_id, b.billing_period_start, b.billing_period_end, b.total_owed
FROM family f, billing b
WHERE b.family_id = f.family_id
AND b.total_owed > 0
ORDER BY f.family_name;

