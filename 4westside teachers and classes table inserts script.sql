use westside_dance;

/*teachers & teacher addresses*/
INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '1718 W 6th Street', 'apt 5', 'Kansas City', 'KS', '66066', 'US')
;
INSERT INTO teacher (teacher_id, first_name, last_name, address_id) VALUES
(null, 'Shelby', 'West', last_insert_id())
;

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '1010 Full Ave', 'unit 7', 'Kansas City', 'KS', '66066', 'US')
;
INSERT INTO teacher (teacher_id, first_name, last_name, address_id) VALUES
(null, 'Justin', 'Moore', last_insert_id())
;

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '1004 Lake Ave', null, 'Overland Park', 'KS', '66044', 'US')
;
INSERT INTO teacher (teacher_id, first_name, last_name, address_id) VALUES
(null, 'Emma', 'Johnson', last_insert_id())
;

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '1602 Green St', 'apt 1409', 'Kansas City', 'KS', '66066', 'US')
;
INSERT INTO teacher (teacher_id, first_name, last_name, address_id) VALUES
(null, 'Rachael', 'Lynn', last_insert_id())
;

/*class offerings, class schedule, teacher class association*/
INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'ballet', 8, 4, '2021-07-12', '2022-06-30', '1.5 hours', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Monday', 170000, 183000, 3);
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(3, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'contemporary', 3, 4, '2021-07-12', '2022-06-30', '1 hour', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Monday', 183000, 193000, 1)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(1, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'progressions', 2, 5, '2021-07-12', '2022-06-30', '2 hours', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Monday', 193000, 213000, 1)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(1, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'beginner combo', 1, 2, '2021-07-12', '2022-06-30', '1 hour', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Tuesday', 170000, 180000, 4)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(4, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'ballet', 8, 6, '2021-07-12', '2022-06-30', '1.5 hours', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Tuesday', 180000, 193000, 3)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(3, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'pointe (invite only)', 7, 6, '2021-07-12', '2022-06-30', '30 minutes', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Tuesday', 193000, 200000, 3)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(3, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'contemporary', 3, 6, '2021-07-12', '2022-06-30', '1.5 hours', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Tuesday', 200000, 213000, 1)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(1, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'beginner combo', 1, 1, '2021-07-12', '2022-06-30', '1 hour', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Wednesday', 170000, 180000, 4)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(4, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'tap', 1, 6, '2021-07-12', '2022-06-30', '1.5 hours', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Wednesday', 180000, 183000, 4)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(4, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'jazz', 2, 5, '2021-07-12', '2022-06-30', '2 hours', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Wednesday', 183000, 203000, 1)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(1, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'hip hop', 6, 5, '2021-07-12', '2022-06-30', '45 minutes', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Wednesday', 203000, 211500, 2)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(2, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'tap', 1, 4, '2021-07-12', '2022-06-30', '30 minutes', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Thursday', 170000, 173000, 4)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(4, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'jazz', 2, 4, '2021-07-12', '2022-06-30', '1.5 hours', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Thursday', 173000, 190000, 4)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(4, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'hip hop', 6, 4, '2021-07-12', '2022-06-30', '45 minutes', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Thursday', 190000, 194500, 2)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(2, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'beginner jazz', 6, 3, '2021-07-12', '2022-06-30', '1 hour', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Thursday', 194500, 204500, 4)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(4, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'beginner hip hop', 6, 3, '2021-07-12', '2022-06-30', '1 hour', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Thursday', 204500, 213000, 2)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(2, last_insert_id())
;

INSERT INTO class_offering (class_id, name, genre_id, level_id, start_date, end_date, duration, capacity) VALUES
(null, 'competition rehearsal (invite only)', 11, 6, '2021-07-12', '2022-06-30', '1 hour', 30)
;
INSERT INTO class_schedule (class_schedule_id, class_id, day, start_time, end_time, teacher_id) VALUES
(null, last_insert_id(), 'Saturday', 090000, 100000, 4)
;
INSERT INTO teacher_class_assoc (teacher_id, class_id) VALUES
(4, last_insert_id())
;




