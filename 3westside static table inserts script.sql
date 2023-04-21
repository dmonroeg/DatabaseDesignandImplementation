use westside_dance;

INSERT INTO class_tuition_lookup (no_class_hours, monthly_fee) VALUES
(1, 60),
(1.5, 90),
(2, 110),
(2.5, 120),
(3, 150),
(3.5, 175),
(4, 190),
(4.5, 215),
(5, 225),
(5.5, 245),
(6, 255)
;

INSERT INTO level (level_id, level_description) VALUES
(null, 'beginner age 2-4'),
(null, 'beginner age 5-8'),
(null, 'beginner teen'),
(null, 'I'),
(null, 'II'),
(null, 'III')
;

INSERT INTO payment (payment_type_id, payment_type_description) VALUES
(null, 'cash'),
(null, 'credit card'),
(null, 'check')
;

INSERT INTO dance_genre (genre_id, genre_description) VALUES
(null, 'tap'),
(null, 'jazz'),
(null, 'contemporary'),
(null, 'musical theater'),
(null, 'acro'),
(null, 'hip hop'),
(null, 'pointe'),
(null, 'ballet'),
(null, 'open'),
(null, 'production'),
(null, 'other')
;

INSERT INTO dance_category (category_id, category_description) VALUES
(null, 'solo'),
(null, 'duo/trio'),
(null, 'small group'),
(null, 'large group'),
(null, 'line')
;

INSERT INTO dance_age_group (age_group_id, age_group_description) VALUES
(null, 'petite 0-8 y/o'),
(null, 'junior 9-11 y/o'),
(null, 'teen 12-14 y/o'),
(null, 'senior 15-19 y/o'),
(null, 'adult 20+ y/o')
;

INSERT INTO competition_fee_lookup (category_id, quarterly_category_fee) VALUES
(1, 375),
(2, 250),
(3, 200),
(4, 200),
(5, 200)
;