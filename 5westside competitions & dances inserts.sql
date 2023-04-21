use westside_dance;

/*competitions & addresses*/
INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, 'Lowes Hotel', '1515 Wyandotte St', 'Kansas City', 'MO', '64108', 'US')
;
INSERT INTO competition (competition_id, name, address_id, start_date, end_date, paid) VALUES
(null, 'Adrenaline Dance', last_insert_id(), '2021-12-03', '2021-12-05', true)
;

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, 'Kansas City Scottish Rite', '1330 Linwood Blvd', 'Kansas City', 'MO', '64109', 'US')
;
INSERT INTO competition (competition_id, name, address_id, start_date, end_date, paid) VALUES
(null, 'Fly Dance', last_insert_id(), '2022-02-25', '2022-02-27', true),
(null, 'CRU Dance', last_insert_id(), '2022-04-01', '2022-04-03', true)
;

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, 'Holiday Inn KCI Expo Center', '11730 NW Ambassador Dr', 'Kansas City', 'MO', '64153', 'US')
;
INSERT INTO competition (competition_id, name, address_id, start_date, end_date, paid) VALUES
(null, 'Spotlight Dance Cup', last_insert_id(), '2022-04-28', '2022-05-01', false),
(null, 'Turn It Up', last_insert_id(), '2022-05-13', '2022-05-15', false),
(null, 'Showbiz', last_insert_id(), '2022-05-20', '2022-05-22', false)
;

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, 'Kansas City Music Hall', '301 W 13th Street', 'Kansas City', 'MO', '64105', 'US')
;
INSERT INTO competition (competition_id, name, address_id, start_date, end_date, paid) VALUES
(null, 'StarQuest', last_insert_id(), '2022-04-15', '2022-04-17', true),
(null, 'RADIX Convention', last_insert_id(), '2022-01-28', '2022-01-30', true)
;

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, 'Mansion Theater', '189 Expressway Ln', 'Branson', 'MO', '65616', 'US')
;
INSERT INTO competition (competition_id, name, address_id, start_date, end_date, paid) VALUES
(null, 'Spotlight Dance Cup - Nationals', last_insert_id(), '2022-06-20', '2022-06-26', true)
;

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, 'Chase Park Plaza Royal Sonesta', '212 N Kingshighway Blvd', 'St. Louis', 'MO', '63108', 'US')
;
INSERT INTO competition (competition_id, name, address_id, start_date, end_date, paid) VALUES
(null, 'LA Dance Magic', last_insert_id(), '2021-01-14', '2021-01-16', true)
;

/*Competition Dances*/
INSERT INTO competition_dance (dance_id, title, teacher_id, genre_id, category_id, age_group_id) VALUES
(null, 'Strut', 4, 2, 3, 1),
(null, 'The Overlook', 1, 3, 2, 4),
(null, 'In a Dream State', 1, 3, 3, 3),
(null, 'Hold Your Hand', 1, 3, 1, 4),
(null, 'In Love With a Monster', 1, 2, 3, 3),
(null, 'Before its Too Late', 1, 3, 3, 4),
(null, 'After Party', 1, 2, 4, 4),
(null, 'Like That', 4, 1, 2, 2),
(null, 'Just My Size', 4, 4, 1, 1),
(null, 'Bang Bang', 1, 2, 2, 4),
(null, 'Who You Are', 1, 3, 2, 2),
(null, 'Take A Hint', 4, 2, 4, 3),
(null, 'All Eyes on Me', 4, 1, 1, 1),
(null, 'Surrender', 1, 3, 3, 4),
(null, 'Hope is a Heartache', 1, 3, 1, 4),
(null, 'Blow', 1, 2, 3, 4),
(null, 'Fragile', 1, 3, 4, 3),
(null, 'Hopelessly Devoted', 4, 2, 3, 2),
(null, 'Game Day', 2, 6, 4, 1)
;

INSERT INTO competition_dance_assoc (competition_id, dance_id) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 10),
(1, 12),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(4, 1),
(4, 8),
(4, 9),
(4, 11),
(4, 13),
(4, 18),
(4, 19),
(5, 1),
(5, 8),
(5, 9),
(5, 11),
(5, 13),
(5, 18),
(5, 19),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(6, 19),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(7, 14),
(7, 15),
(7, 16),
(7, 17),
(7, 18),
(7, 19),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 11),
(8, 12),
(8, 13),
(8, 14),
(8, 15),
(8, 16),
(8, 17),
(8, 18),
(8, 19),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(9, 13),
(9, 14),
(9, 15),
(9, 16),
(9, 17),
(9, 18),
(9, 19),
(10, 1),
(10, 8),
(10, 9),
(10, 11),
(10, 13),
(10, 18),
(10, 19)
;

