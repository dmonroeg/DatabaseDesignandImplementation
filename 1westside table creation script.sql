use westside_dance;
CREATE TABLE `level` (
  `level_id` INT NOT NULL AUTO_INCREMENT,
  `level_description` varchar(64),
  PRIMARY KEY (`level_id`)
);

CREATE TABLE `family` (
  `family_id` INT NOT NULL AUTO_INCREMENT,
  `family_name` varchar(64),
  PRIMARY KEY (`family_id`)
);

CREATE TABLE `billing` (
  `invoice_id` INT NOT NULL AUTO_INCREMENT,
  `family_id` int,
  `monthly_class_tuition` float,
  `competition_fees` float,
  `total_owed` float,
  `billing_period_start` date,
  `billing_period_end` date,
  PRIMARY KEY (`invoice_id`),
  FOREIGN KEY (`family_id`) REFERENCES `family`(`family_id`)
);

CREATE TABLE `address` (
  `address_id` INT NOT NULL AUTO_INCREMENT,
  `street_address_1` varchar(120),
  `street_address_2` varchar(120),
  `city` varchar(100),
  `state` varchar(2),
  `zip_code` varchar(20),
  `country` varchar(120),
  PRIMARY KEY (`address_id`)
);

CREATE TABLE `guardian` (
  `guardian_id` INT NOT NULL AUTO_INCREMENT,
  `family_id` int,
  `first_name` varchar(64),
  `last_name` varchar(64),
  `phone` varchar(20),
  `email` varchar(64),
  `address_id` int,
  `active` boolean,
  `primary_guardian` boolean,
  PRIMARY KEY (`guardian_id`),
  FOREIGN KEY (`family_id`) REFERENCES `family`(`family_id`),
  FOREIGN KEY (`address_id`) REFERENCES `address`(`address_id`)
);

CREATE TABLE `payment` (
  `payment_type_id` INT NOT NULL AUTO_INCREMENT,
  `payment_type_description` varchar(64),
  PRIMARY KEY (`payment_type_id`)
);

CREATE TABLE `dance_category` (
  `category_id` INT NOT NULL AUTO_INCREMENT,
  `category_description` varchar(64),
  PRIMARY KEY (`category_id`)
);

CREATE TABLE `teacher` (
  `teacher_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` varchar(64),
  `last_name` varchar(64),
  `address_id` int,
  PRIMARY KEY (`teacher_id`)
);

CREATE TABLE `dance_genre` (
  `genre_id` INT NOT NULL AUTO_INCREMENT,
  `genre_description` varchar(64),
  PRIMARY KEY (`genre_id`)
);

CREATE TABLE `class_offering` (
  `class_id` INT NOT NULL AUTO_INCREMENT,
  `name` varchar(64),
  `genre_id` int,
  `level_id` int,
  `start_date` date,
  `end_date` date,
  `duration` varchar(20),
  `capacity` int,
  PRIMARY KEY (`class_id`),
  FOREIGN KEY (`level_id`) REFERENCES `level`(`level_id`),
  FOREIGN KEY (`genre_id`) REFERENCES `dance_genre`(`genre_id`)
);

CREATE TABLE `teacher_class_assoc` (
  `teacher_id` int,
  `class_id` int,
  FOREIGN KEY (`teacher_id`) REFERENCES `teacher`(`teacher_id`),
  FOREIGN KEY (`class_id`) REFERENCES `class_offering`(`class_id`)
);

CREATE TABLE `dance_age_group` (
  `age_group_id` INT NOT NULL AUTO_INCREMENT,
  `age_group_description` varchar(64),
  PRIMARY KEY (`age_group_id`)
);

CREATE TABLE `competition_dance` (
  `dance_id` INT NOT NULL AUTO_INCREMENT,
  `title` varchar(64),
  `teacher_id` int,
  `genre_id` int,
  `category_id` int,
  `age_group_id` int,
  PRIMARY KEY (`dance_id`),
  FOREIGN KEY (`age_group_id`) REFERENCES `dance_age_group`(`age_group_id`),
  FOREIGN KEY (`genre_id`) REFERENCES `dance_genre`(`genre_id`),
  FOREIGN KEY (`teacher_id`) REFERENCES `teacher`(`teacher_id`),
  FOREIGN KEY (`category_id`) REFERENCES `dance_category`(`category_id`)
);

CREATE TABLE `competition` (
  `competition_id` INT NOT NULL AUTO_INCREMENT,
  `name` varchar(64),
  `address_id` int,
  `start_date` date,
  `end_date` date,
  `paid` boolean,
  PRIMARY KEY (`competition_id`),
  FOREIGN KEY (`address_id`) REFERENCES `address`(`address_id`)
);

CREATE TABLE `competition_dance_assoc` (
  `competition_id` int,
  `dance_id` int,
  FOREIGN KEY (`dance_id`) REFERENCES `competition_dance`(`dance_id`),
  FOREIGN KEY (`competition_id`) REFERENCES `competition`(`competition_id`)
);

CREATE TABLE `student` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `family_id` int,
  `first_name` varchar(64),
  `last_name` varchar(64),
  `birth_date` date,
  `active` boolean,
  PRIMARY KEY (`student_id`),
  FOREIGN KEY (`family_id`) REFERENCES `family`(`family_id`)
);

CREATE TABLE `student_dance_assoc` (
  `student_id` int,
  `dance_id` int,
  FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`)
);

CREATE TABLE `class_schedule` (
  `class_schedule_id` INT NOT NULL AUTO_INCREMENT,
  `class_id` Int,
  `day` varchar(10),
  `start_time` time,
  `end_time` time,
  `teacher_id` int,
  PRIMARY KEY (`class_schedule_id`),
  FOREIGN KEY (`class_id`) REFERENCES `class_offering`(`class_id`),
  FOREIGN KEY (`teacher_id`) REFERENCES `teacher`(`teacher_id`)
);

CREATE TABLE `enrollment` (
  `student_id` int,
  `class_schedule_id` int,
  `registration_date` date,
  FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`),
  FOREIGN KEY (`class_schedule_id`) REFERENCES `class_schedule`(`class_schedule_id`)
);

CREATE TABLE `payment_toward_invoice` (
  `payment_type_id` int,
  `invoice_id` int,
  `payment_date` date,
  `payment_amount` float,
  FOREIGN KEY (`invoice_id`) REFERENCES `billing`(`invoice_id`),
  FOREIGN KEY (`payment_type_id`) REFERENCES `payment`(`payment_type_id`)
);

CREATE TABLE `class_tuition_lookup` (
  `no_class_hours` float,
  `monthly_fee` int
);

CREATE TABLE `competition_fee_lookup` (
  `category_id` int,
  `quarterly_category_fee` int,
  FOREIGN KEY (`category_id`) REFERENCES `dance_category`(`category_id`)
);

