use westside_dance;

/*families, addresses, guardians, students, student enrollment, billing & payments*/
INSERT INTO family (family_id, family_name) VALUES
(null, 'Beck')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '1234 Main St', null, 'Overland Park', 'KS', '66045', 'US')
;
SET @address_id = last_insert_id();
INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Susan', 'Beck', '1234567890', 'susanbeck@email.com', @address_id, true, true),
(null, @family_id, 'Greg', 'Beck', '1234567654', 'gregbeck@email.com', @address_id, true, false)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Sydney', 'Beck', '2008-05-20', true)
;
SET @student_id = last_insert_id();
INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 3),
(@student_id, 5),
(@student_id, 12),
(@student_id, 17)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 3, '2021-05-30'),
(@student_id, 5, '2021-05-30'),
(@student_id, 6, '2021-05-30'),
(@student_id, 7, '2021-05-30'),
(@student_id, 9, '2021-05-30'),
(@student_id, 10, '2021-05-30'),
(@student_id, 11, '2021-05-30'),
(@student_id, 17, '2021-05-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 800, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2021-12-03', 1055)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-01-04', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-02-03', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 800, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-03-01', 1055)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-04-01', '2022-04-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), null, 0)
;

INSERT INTO family (family_id, family_name) VALUES
(null, 'Brown')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '888 North Street', 'unit 4', 'Olathe', 'KS', '66044', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Britney', 'Brown', '1112223456', 'britneybrown@email.com', @address_id, true, true),
(null, @family_id, 'Nate', 'Brown', '1112224567', 'natebrown@email.com',  @address_id, true, false)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Eleanor', 'Brown', '2017-10-20', true)
;
SET @student_id = last_insert_id();
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 8, '2021-07-01')
;

INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Esther', 'Brown', '2017-10-20', true)
;
SET @student_id = last_insert_id();
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 8, '2021-07-01')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 110, 0, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2021-12-01', 110)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 110, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-01-03', 110)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 110, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2021-02-03', 110)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 110, 0, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2021-03-05', 110)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 110, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), null, 0)
;



INSERT INTO family (family_id, family_name) VALUES
(null, 'Lauri')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '2244 Central Ave', null, 'Kansas City', 'KS', '66066', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Allie', 'Lauri', '9876543211', 'allielauri@email.com', @address_id, true, false),
(null, @family_id, 'Christopher', 'Lauri', '9876543212', 'chrislauri@email.com', @address_id, true, true)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Taylor', 'Boydston', '2000-06-04', false)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Kelsey', 'Boydston', '2002-11-01', false)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Kaylee', 'Lauri', '2012-01-30', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 8),
(@student_id, 11),
(@student_id, 18)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 5, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 700, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2021-12-04', 455),
(1, last_insert_id(), '2021-12-04', 500)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-01-01', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-01-01', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 700, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-01-01', 955)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 700, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), null, 0)
;


INSERT INTO family (family_id, family_name) VALUES
(null, 'Cabe')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '543 High Dr', null, 'Kansas City', 'KS', '66066', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Dianne', 'Cabe', '5554443210', 'diannecabe@email.com', @address_id, true, true)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Rowan', 'Cabe', '2018-08-22', true)
;
SET @student_id = last_insert_id();

INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 8, '2021-07-12')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 60, 0, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(1, last_insert_id(), '2021-12-01', 60)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 60, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(1, last_insert_id(), '2022-01-01', 60)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 60, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-02-02', 60)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 60, 0, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-03-01', 60)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 60, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), null, 0)
;


INSERT INTO family (family_id, family_name) VALUES
(null, 'Anderson')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '1661 W 10th St', 'apt 304', 'Kansas City', 'KS', '66066', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Lauren', 'Anderson', '3216549876', 'laurenanderson@email.com', @address_id, true, true),
(null, @family_id, 'Jay', 'Anderson', '3216549888', 'jayanderson@email.com', @address_id, true, false)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Tiffany', 'Anderson', '2006-02-10', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 6),
(@student_id, 7),
(@student_id, 10),
(@student_id, 14),
(@student_id, 16)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 3, '2021-06-30'),
(@student_id, 5, '2021-06-30'),
(@student_id, 6, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 1050, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(1, last_insert_id(), '2021-12-01', 435),
(2, last_insert_id(), '2021-12-03', 435),
(2, last_insert_id(), '2021-12-05', 435)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(1, last_insert_id(), '2022-01-01', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(1, last_insert_id(), '2022-02-01', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 1050, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(1, last_insert_id(), '2022-03-01', 435),
(1, last_insert_id(), '2022-03-03', 435),
(2, last_insert_id(), '2022-03-05', 435)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;

INSERT INTO family (family_id, family_name) VALUES
(null, 'McClure')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '450 Willow Place', null, 'Overland Park', 'KS', '66045', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Tracy', 'McClure', '5678912000', 'tracymcclure@email.com', @address_id, true, true),
(null, @family_id, 'Ken', 'McClure', '5678912001', 'kenmcclure@email.com', @address_id, true, false)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Claire', 'McClure', '2015-04-17', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 1),
(@student_id, 19)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 1, '2021-06-30'),
(@student_id, 2, '2021-06-30'),
(@student_id, 4, '2021-06-30'),
(@student_id, 12, '2021-06-30'),
(@student_id, 13, '2021-06-30'),
(@student_id, 14, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Connor', 'McClure', '2017-09-16', true)
;
SET @student_id = last_insert_id();

INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 8, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 315, 400, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(1, last_insert_id(), '2021-12-03', 715)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 315, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(1, last_insert_id(), '2022-01-02', 315)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 315, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(1, last_insert_id(), '2022-02-01', 315)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 315, 400, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(1, last_insert_id(), '2022-03-02', 715)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 315, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;

INSERT INTO family (family_id, family_name) VALUES
(null, 'Goeken')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '2020 Zurich Dr', null, 'Overland Park', 'KS', '66045', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Stephanie', 'Goeken', '7853412345', 'stephgoeken@email.com', @address_id, true, false),
(null, @family_id, 'James', 'Goeken', '7853412338', 'jamesgoeken@email.com', @address_id, true, true)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Mia', 'Goeken', '2010-12-30', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 8),
(@student_id, 11),
(@student_id, 18)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 5, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 700, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2021-12-01', 955)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-01-01', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-02-02', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 700, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-03-01', 955)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 315, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;


INSERT INTO family (family_id, family_name) VALUES
(null, 'Hein')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '1931 S 80th St', null, 'Kansas City', 'MO', '66012', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Nicole', 'Hein', '9098987878', 'nicolehein@email.com', @address_id, true, false),
(null, @family_id, 'Henry', 'Hein', '9098987877', 'henryhein@email.com', @address_id, true, true)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Kylie', 'Hein', '2014-07-15', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 1),
(@student_id, 19)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 1, '2021-06-30'),
(@student_id, 2, '2021-06-30'),
(@student_id, 4, '2021-06-30'),
(@student_id, 12, '2021-06-30'),
(@student_id, 13, '2021-06-30'),
(@student_id, 14, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 400, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2021-12-05', 655)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-01-04', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-02-01', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 400, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-03-03', 655)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;


INSERT INTO family (family_id, family_name) VALUES
(null, 'Goodman')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '5115 North Star Dr', null, 'Kansas City', 'MO', '66012', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Katie', 'Goodman', '9098987878', 'katiegoodman@email.com', @address_id, true, true),
(null, @family_id, 'John', 'Goodman', '9098987877', 'johngoodman@email.com', @address_id, true, false)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Brynn', 'Goodman', '2013-05-18', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 1),
(@student_id, 9),
(@student_id, 19)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 1, '2021-06-30'),
(@student_id, 2, '2021-06-30'),
(@student_id, 4, '2021-06-30'),
(@student_id, 12, '2021-06-30'),
(@student_id, 13, '2021-06-30'),
(@student_id, 14, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Zoe', 'Goodman', '2010-09-15', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 18)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 5, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 975, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2021-12-04', 1485)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-01-01', 510)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-02-03', 510)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 975, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-03-02', 1485)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;


INSERT INTO family (family_id, family_name) VALUES
(null, 'Coffman')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '9931 Bronti Circle', null, 'Overland Park', 'KS', '66044', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Carla', 'Coffman', '7659875432', 'carlacoffman@email.com', @address_id, true, true),
(null, @family_id, 'Jonathan', 'Coffman', '7659875433', 'johncoffman@email.com', @address_id, true, false)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Ana', 'Coffman', '2003-04-12', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 2),
(@student_id, 6),
(@student_id, 7),
(@student_id, 14),
(@student_id, 16)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 3, '2021-06-30'),
(@student_id, 5, '2021-06-30'),
(@student_id, 6, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Penelope', 'Coffman', '2005-09-09', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 2),
(@student_id, 6),
(@student_id, 7),
(@student_id, 14),
(@student_id, 16)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 3, '2021-06-30'),
(@student_id, 5, '2021-06-30'),
(@student_id, 6, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Jace', 'Coffman', '2013-06-25', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 19)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 1, '2021-06-30'),
(@student_id, 16, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 660, 1250, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(1, last_insert_id(), '2021-12-04', 500),
(2, last_insert_id(), '2021-12-04', 500),
(2, last_insert_id(), '2021-11-25', 910)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 660, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-01-03', 660)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 660, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-02-01', 660)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 660, 1250, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-02-25', 660),
(2, last_insert_id(), '2022-03-05', 1250)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 660, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;

INSERT INTO family (family_id, family_name) VALUES
(null, 'Clark')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '2496 Willow Grass Ct', null, 'Kansas City', 'MO', '66012', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Jacqueline', 'Clark', '3215438765', 'jackieclark@email.com', @address_id, true, true)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Brielle', 'Clark', '2010-10-18', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 18)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 5, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Kelly', 'Clark', '2012-03-09', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 18)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 5, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 400, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2021-12-01', 910)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-01-01', 510)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-02-01', 510)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 400, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-03-01', 910)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;


INSERT INTO family (family_id, family_name) VALUES
(null, 'Manino')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '6489 Heart Street', null, 'Kansas City', 'MO', '66012', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Maria', 'Manino', '6054932817', 'mariamanino@email.com', @address_id, true, true),
(null, @family_id, 'Joe', 'Manino', '6054932811', 'joemanino@email.com', @address_id, true, false)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Lilly', 'Manino', '2007-02-15', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 3),
(@student_id, 5),
(@student_id, 12),
(@student_id, 17)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 3, '2021-06-30'),
(@student_id, 5, '2021-06-30'),
(@student_id, 6, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 800, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2021-12-02', 1055)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-01-04', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-02-01', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 800, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-03-01', 1055)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;

INSERT INTO family (family_id, family_name) VALUES
(null, 'Bellach')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '2020 Vision Dr', null, 'Kansas City', 'KS', '66064', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Courtney', 'Bellach', '2902874675', 'courtneybellach@email.com', @address_id, true, true)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Sabrina', 'Bellach', '2015-01-11', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 1),
(@student_id, 13),
(@student_id, 19)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 1, '2021-06-30'),
(@student_id, 2, '2021-06-30'),
(@student_id, 4, '2021-06-30'),
(@student_id, 12, '2021-06-30'),
(@student_id, 13, '2021-06-30'),
(@student_id, 14, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 600, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2021-12-01', 855)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-01-01', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-02-01', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 600, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-03-01', 855)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;


INSERT INTO family (family_id, family_name) VALUES
(null, 'Zimmer')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '45 Country Rd', null, 'Kansas City', 'MO', '66012', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Whitney', 'Zimmer', '3215438765', 'whitneyzimmer@email.com', @address_id, true, true)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Jasmine', 'Zimmer', '2003-08-10', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 4),
(@student_id, 6),
(@student_id, 7),
(@student_id, 10),
(@student_id, 14),
(@student_id, 16)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 3, '2021-06-30'),
(@student_id, 5, '2021-06-30'),
(@student_id, 6, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Chloe', 'Zimmer', '2007-03-09', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 3),
(@student_id, 5),
(@student_id, 12),
(@student_id, 17)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 3, '2021-06-30'),
(@student_id, 5, '2021-06-30'),
(@student_id, 6, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 2225, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2021-11-30', 2735)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-01-02', 510)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-02-01', 510)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 510, 2225, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-03-03', 2735)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 210, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;

INSERT INTO family (family_id, family_name) VALUES
(null, 'Crape')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '45 Country Rd', null, 'Kansas City', 'MO', '66012', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Josie', 'Crape', '5892781578', 'josiecrape@email.com', @address_id, true, true),
(null, @family_id, 'Lance', 'Crape', '5892781588', 'lancecrape@email.com', @address_id, true, false)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Savannah', 'Crape', '2007-10-10', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 3),
(@student_id, 5),
(@student_id, 12),
(@student_id, 17)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 3, '2021-06-30'),
(@student_id, 5, '2021-06-30'),
(@student_id, 6, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Harper', 'Crape', '2007-10-10', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 3),
(@student_id, 5),
(@student_id, 12),
(@student_id, 17)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 3, '2021-06-30'),
(@student_id, 5, '2021-06-30'),
(@student_id, 6, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 800, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2021-12-01', 1055)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-01-01', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-02-05', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 800, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(2, last_insert_id(), '2022-03-04', 1055)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;


INSERT INTO family (family_id, family_name) VALUES
(null, 'Thomas')
;
SET @family_id = last_insert_id();

INSERT INTO address (address_id, street_address_1, street_address_2, city, state, zip_code, country) VALUES
(null, '1931 S 80th St', null, 'Kansas City', 'MO', '66012', 'US')
;
SET @address_id = last_insert_id();

INSERT INTO guardian (guardian_id, family_id, first_name, last_name, phone, email, address_id, active, primary_guardian) VALUES
(null, @family_id, 'Riley', 'Thomas', '4329876543', 'rileythomas@email.com', @address_id, true, true),
(null, @family_id, 'Nick', 'Thomas', '4329876533', 'nickthomas@email.com', @address_id, true, false)
;
INSERT INTO student (student_id, family_id, first_name, last_name, birth_date, active) VALUES
(null, @family_id, 'Tori', 'Thomas', '2003-12-06', true)
;
SET @student_id = last_insert_id();

INSERT INTO student_dance_assoc (student_id, dance_id) VALUES
(@student_id, 6),
(@student_id, 7),
(@student_id, 10),
(@student_id, 14),
(@student_id, 15),
(@student_id, 16)
;
INSERT INTO enrollment (student_id, class_schedule_id, registration_date) VALUES
(@student_id, 3, '2021-06-30'),
(@student_id, 5, '2021-06-30'),
(@student_id, 6, '2021-06-30'),
(@student_id, 7, '2021-06-30'),
(@student_id, 9, '2021-06-30'),
(@student_id, 10, '2021-06-30'),
(@student_id, 11, '2021-06-30'),
(@student_id, 17, '2021-06-30')
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 1425, 0, '2021-12-01', '2021-12-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2021-12-02', 1680)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-01-01', '2022-01-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-01-01', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-02-01', '2022-02-28')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-02-02', 255)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 1425, 0, '2022-03-01', '2022-03-31')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(3, last_insert_id(), '2022-03-05', 1680)
;
INSERT INTO billing (invoice_id, family_id, monthly_class_tuition, competition_fees, total_owed, billing_period_start, billing_period_end) VALUES
(null, @family_id, 255, 0, 0, '2022-04-01', '2022-04-30')
;
INSERT INTO payment_toward_invoice (payment_type_id, invoice_id, payment_date, payment_amount) VALUES
(null, last_insert_id(), null, 0)
;
