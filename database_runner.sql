#
# TABLE STRUCTURE FOR: Building
#

DROP TABLE IF EXISTS `Building`;

CREATE TABLE `Building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Subject_id` int(11) NOT NULL,
  `Trainer_id` int(11) NOT NULL,
  `Category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Building_Category` (`Category_id`),
  KEY `Building_Subject` (`Subject_id`),
  KEY `Building_Trainer` (`Trainer_id`),
  CONSTRAINT `Building_Category` FOREIGN KEY (`Category_id`) REFERENCES `Category` (`id`),
  CONSTRAINT `Building_Subject` FOREIGN KEY (`Subject_id`) REFERENCES `Subject` (`id`),
  CONSTRAINT `Building_Trainer` FOREIGN KEY (`Trainer_id`) REFERENCES `Trainer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (1, 1, 1, 1);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (2, 2, 2, 2);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (3, 3, 3, 3);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (4, 1, 4, 1);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (5, 2, 5, 2);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (6, 3, 6, 3);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (7, 1, 7, 1);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (8, 2, 8, 2);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (9, 3, 9, 3);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (10, 1, 10, 1);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (11, 2, 1, 2);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (12, 3, 2, 3);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (13, 1, 3, 1);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (14, 2, 4, 2);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (15, 3, 5, 3);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (16, 1, 6, 1);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (17, 2, 7, 2);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (18, 3, 8, 3);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (19, 1, 9, 1);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (20, 2, 10, 2);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (21, 3, 1, 3);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (22, 1, 2, 1);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (23, 2, 3, 2);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (24, 3, 4, 3);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (25, 1, 5, 1);


#
# TABLE STRUCTURE FOR: Building_Schedule
#

DROP TABLE IF EXISTS `Building_Schedule`;

CREATE TABLE `Building_Schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Building_id` int(11) NOT NULL,
  `Schedule_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Building_association_2` (`Building_id`),
  KEY `Schedule_association_2` (`Schedule_id`),
  CONSTRAINT `Building_association_2` FOREIGN KEY (`Building_id`) REFERENCES `Building` (`id`),
  CONSTRAINT `Schedule_association_2` FOREIGN KEY (`Schedule_id`) REFERENCES `Schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (1, 1, 1);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (2, 2, 2);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (3, 3, 3);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (4, 4, 4);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (5, 5, 5);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (6, 6, 6);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (7, 7, 7);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (8, 8, 8);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (9, 9, 9);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (10, 10, 10);


#
# TABLE STRUCTURE FOR: Category
#

DROP TABLE IF EXISTS `Category`;

CREATE TABLE `Category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('A','P','M') COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` enum('Low','Medium','Full') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_car` enum('Private','Public','Both') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (1, 'M', 'Medium', 'Private');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (2, 'A', 'Low', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (3, 'P', 'Full', 'Private');


#
# TABLE STRUCTURE FOR: Certificate
#

DROP TABLE IF EXISTS `Certificate`;

CREATE TABLE `Certificate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_id` int(11) NOT NULL,
  `Company_id` int(11) NOT NULL,
  `Student_Building_id` int(11) NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Certificate_idx_1` (`id`) USING BTREE,
  KEY `Certificate_Category` (`Category_id`),
  KEY `Certificate_Company` (`Company_id`),
  KEY `Certificate_association_1` (`Student_Building_id`),
  CONSTRAINT `Certificate_Category` FOREIGN KEY (`Category_id`) REFERENCES `Category` (`id`),
  CONSTRAINT `Certificate_Company` FOREIGN KEY (`Company_id`) REFERENCES `Company` (`id`),
  CONSTRAINT `Certificate_association_1` FOREIGN KEY (`Student_Building_id`) REFERENCES `Student_Building` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (1, 1, 1, 1, 'Netherlands', '1988-11-24');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (2, 2, 1, 2, 'Netherlands', '1991-05-05');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (3, 3, 1, 3, 'France', '1991-03-16');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (4, 1, 1, 4, 'Netherlands', '1975-07-11');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (5, 2, 1, 5, 'France', '2000-11-28');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (6, 3, 1, 6, 'France', '2003-06-11');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (7, 1, 1, 7, 'France', '2019-02-22');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (8, 2, 1, 8, 'France', '2017-12-23');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (9, 3, 1, 9, 'France', '1996-10-28');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (10, 1, 1, 10, 'France', '1991-03-03');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (11, 2, 1, 11, 'France', '1970-10-13');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (12, 3, 1, 12, 'France', '1991-05-08');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (13, 1, 1, 13, 'Netherlands', '1972-05-25');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (14, 2, 1, 14, 'Netherlands', '2015-10-24');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (15, 3, 1, 15, 'France', '1998-11-10');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (16, 1, 1, 16, 'France', '1995-03-31');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (17, 2, 1, 17, 'France', '1993-12-15');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (18, 3, 1, 18, 'Netherlands', '1970-09-30');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (19, 1, 1, 19, 'France', '2006-08-22');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (20, 2, 1, 20, 'Netherlands', '2000-10-24');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (21, 3, 1, 21, 'France', '2017-05-20');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (22, 1, 1, 22, 'Netherlands', '2003-02-20');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (23, 2, 1, 23, 'France', '1978-08-17');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (24, 3, 1, 24, 'Netherlands', '1986-09-27');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (25, 1, 1, 25, 'France', '2013-10-02');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (26, 2, 1, 26, 'France', '2012-06-02');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (27, 3, 1, 27, 'Netherlands', '2017-08-23');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (28, 1, 1, 28, 'France', '1989-05-19');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (29, 2, 1, 29, 'Netherlands', '1970-05-28');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (30, 3, 1, 30, 'France', '2004-12-07');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (31, 1, 1, 31, 'France', '2021-09-17');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (32, 2, 1, 32, 'France', '1996-12-06');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (33, 3, 1, 33, 'France', '2003-10-31');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (34, 1, 1, 34, 'France', '2013-10-31');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (35, 2, 1, 35, 'France', '2002-07-15');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (36, 3, 1, 36, 'Netherlands', '1977-07-23');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (37, 1, 1, 37, 'Netherlands', '1974-04-16');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (38, 2, 1, 38, 'France', '1988-03-20');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (39, 3, 1, 39, 'France', '2021-08-24');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (40, 1, 1, 40, 'France', '2017-05-07');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (41, 2, 1, 41, 'France', '2019-06-18');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (42, 3, 1, 42, 'Netherlands', '2015-01-28');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (43, 1, 1, 43, 'France', '1992-12-13');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (44, 2, 1, 44, 'France', '2000-05-30');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (45, 3, 1, 45, 'Netherlands', '2001-04-08');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (46, 1, 1, 46, 'France', '2002-01-10');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (47, 2, 1, 47, 'Netherlands', '1972-05-06');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (48, 3, 1, 48, 'Netherlands', '2010-03-27');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (49, 1, 1, 49, 'Netherlands', '1997-02-02');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (50, 2, 1, 50, 'France', '1985-12-04');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (51, 3, 1, 51, 'Netherlands', '2022-01-01');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (52, 1, 1, 52, 'France', '1999-12-25');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (53, 2, 1, 53, 'Netherlands', '1981-04-19');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (54, 3, 1, 54, 'Netherlands', '2019-07-30');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (55, 1, 1, 55, 'Netherlands', '2008-10-05');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (56, 2, 1, 56, 'Netherlands', '2004-04-26');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (57, 3, 1, 57, 'Netherlands', '1985-06-22');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (58, 1, 1, 58, 'Netherlands', '1998-06-13');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (59, 2, 1, 59, 'Netherlands', '1972-08-19');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (60, 3, 1, 60, 'Netherlands', '1971-08-27');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (61, 1, 1, 61, 'Netherlands', '1977-12-01');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (62, 2, 1, 62, 'France', '2015-03-19');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (63, 3, 1, 63, 'France', '1996-05-09');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (64, 1, 1, 64, 'France', '1991-04-14');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (65, 2, 1, 65, 'Netherlands', '1986-08-27');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (66, 3, 1, 66, 'France', '1983-01-16');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (67, 1, 1, 67, 'France', '2007-06-09');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (68, 2, 1, 68, 'Netherlands', '2006-03-27');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (69, 3, 1, 69, 'France', '2004-03-22');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (70, 1, 1, 70, 'Netherlands', '1972-04-14');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (71, 2, 1, 71, 'France', '1995-06-13');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (72, 3, 1, 72, 'France', '2003-07-24');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (73, 1, 1, 73, 'Netherlands', '1970-06-08');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (74, 2, 1, 74, 'Netherlands', '2006-11-19');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (75, 3, 1, 75, 'France', '1999-05-25');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (76, 1, 1, 76, 'France', '1977-01-21');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (77, 2, 1, 77, 'Netherlands', '2018-12-20');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (78, 3, 1, 78, 'France', '2018-03-16');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (79, 1, 1, 79, 'France', '1993-03-04');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (80, 2, 1, 80, 'Netherlands', '1985-10-03');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (81, 3, 1, 81, 'France', '1970-02-06');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (82, 1, 1, 82, 'Netherlands', '1987-11-19');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (83, 2, 1, 83, 'Netherlands', '1987-07-27');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (84, 3, 1, 84, 'France', '2012-09-24');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (85, 1, 1, 85, 'France', '1989-09-21');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (86, 2, 1, 86, 'France', '1980-11-14');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (87, 3, 1, 87, 'Netherlands', '2012-11-26');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (88, 1, 1, 88, 'France', '1970-07-15');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (89, 2, 1, 89, 'Netherlands', '1980-10-20');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (90, 3, 1, 90, 'France', '1975-04-14');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (91, 1, 1, 91, 'Netherlands', '1994-09-14');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (92, 2, 1, 92, 'France', '1995-11-13');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (93, 3, 1, 93, 'Netherlands', '2011-08-04');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (94, 1, 1, 94, 'Netherlands', '2016-06-24');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (95, 2, 1, 95, 'France', '2018-07-27');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (96, 3, 1, 96, 'Netherlands', '2008-12-27');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (97, 1, 1, 97, 'France', '2004-04-21');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (98, 2, 1, 98, 'Netherlands', '2018-08-17');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (99, 3, 1, 99, 'France', '2014-09-02');
INSERT INTO `Certificate` (`id`, `Category_id`, `Company_id`, `Student_Building_id`, `country`, `date`) VALUES (100, 1, 1, 100, 'Netherlands', '1983-12-12');


#
# TABLE STRUCTURE FOR: Client_Not_Registered
#

DROP TABLE IF EXISTS `Client_Not_Registered`;

CREATE TABLE `Client_Not_Registered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` enum('F','M') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: Company
#

DROP TABLE IF EXISTS `Company`;

CREATE TABLE `Company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Company` (`id`, `name`, `phone_number`, `address`) VALUES (1, 'Pouros-Ebert', 639865753, '669 Anderson Cape Suite 224\nEmoryfort, MD 69038');


#
# TABLE STRUCTURE FOR: Data_Maintenance
#

DROP TABLE IF EXISTS `Data_Maintenance`;

CREATE TABLE `Data_Maintenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `Vehicle_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Data_Maintenance_Vehicle` (`Vehicle_id`),
  CONSTRAINT `Data_Maintenance_Vehicle` FOREIGN KEY (`Vehicle_id`) REFERENCES `Vehicle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: Note_History
#

DROP TABLE IF EXISTS `Note_History`;

CREATE TABLE `Note_History` (
  `name_student` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name_student` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `name_subject` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_subject` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_trainer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name_trainer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: Schedule
#

DROP TABLE IF EXISTS `Schedule`;

CREATE TABLE `Schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Schedule` (`id`, `time`) VALUES (1, '05:33:37');
INSERT INTO `Schedule` (`id`, `time`) VALUES (2, '10:25:24');
INSERT INTO `Schedule` (`id`, `time`) VALUES (3, '13:21:12');
INSERT INTO `Schedule` (`id`, `time`) VALUES (4, '21:01:40');
INSERT INTO `Schedule` (`id`, `time`) VALUES (5, '06:16:11');
INSERT INTO `Schedule` (`id`, `time`) VALUES (6, '18:39:15');
INSERT INTO `Schedule` (`id`, `time`) VALUES (7, '22:39:42');
INSERT INTO `Schedule` (`id`, `time`) VALUES (8, '23:56:31');
INSERT INTO `Schedule` (`id`, `time`) VALUES (9, '19:09:35');
INSERT INTO `Schedule` (`id`, `time`) VALUES (10, '13:58:16');


#
# TABLE STRUCTURE FOR: Student
#

DROP TABLE IF EXISTS `Student`;

CREATE TABLE `Student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` enum('F','M') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Student` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (1, 'Bruce', 'Feeney', 22, 461520032, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (2, 'Helga', 'Greenholt', 48, 516619007, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (3, 'Morris', 'Beer', 47, 199185651, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (4, 'Gussie', 'Littel', 31, 824171260, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (5, 'Rylan', 'Blick', 38, 484016336, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (6, 'Gail', 'Hoeger', 41, 368049432, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (7, 'Hilbert', 'Boyer', 45, 788788309, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (8, 'Darrick', 'Jaskolski', 26, 702763217, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (9, 'Lenna', 'Torp', 23, 535715256, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (10, 'Keagan', 'Vandervort', 31, 637490699, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (11, 'Angeline', 'Kris', 22, 835517576, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (12, 'Trudie', 'Streich', 25, 362337963, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (13, 'Berry', 'Leffler', 41, 217863250, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (14, 'Nils', 'Leuschke', 18, 702879734, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (15, 'Annamarie', 'Beier', 31, 545259564, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (16, 'Shaniya', 'Murazik', 49, 969142824, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (17, 'Caden', 'Feeney', 34, 595835132, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (18, 'Ruben', 'Thompson', 18, 510194644, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (19, 'Charlene', 'Terry', 44, 905145301, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (20, 'Ericka', 'Lowe', 31, 481489740, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (21, 'Jackie', 'Ankunding', 23, 312754244, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (22, 'Willa', 'Koss', 40, 162825261, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (23, 'Eulah', 'Little', 29, 622196543, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (24, 'Amparo', 'Green', 18, 534034326, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (25, 'Mylene', 'Lueilwitz', 21, 317546782, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (26, 'Dana', 'Hagenes', 27, 239612608, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (27, 'Jacinto', 'Metz', 46, 618122384, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (28, 'Alysson', 'Langosh', 34, 348842640, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (29, 'Tamia', 'Altenwerth', 38, 346614235, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (30, 'Leann', 'Durgan', 32, 308946199, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (31, 'Freida', 'McCullough', 42, 296243671, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (32, 'Thea', 'Rempel', 43, 864964519, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (33, 'Emily', 'Fahey', 40, 589635871, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (34, 'Zoe', 'Morissette', 45, 920933264, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (35, 'Trisha', 'Kunze', 47, 305684808, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (36, 'Anna', 'Friesen', 33, 488277688, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (37, 'Octavia', 'White', 33, 500057428, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (38, 'Jerel', 'Farrell', 38, 786616156, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (39, 'Kacey', 'Balistreri', 25, 559781534, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (40, 'Reina', 'Keebler', 37, 623945343, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (41, 'Jerome', 'Stokes', 37, 581772445, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (42, 'Fiona', 'Schoen', 30, 380473194, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (43, 'Luella', 'Schulist', 19, 896339439, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (44, 'Daphnee', 'Davis', 46, 801363620, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (45, 'Abigayle', 'Prosacco', 29, 346958667, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (46, 'Genevieve', 'Nader', 26, 296097400, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (47, 'Maximilian', 'Heller', 32, 838622043, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (48, 'Rosetta', 'Konopelski', 22, 331676924, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (49, 'Coralie', 'Corkery', 37, 536709726, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (50, 'Otho', 'Kunze', 39, 887042419, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (51, 'Andrew', 'Watsica', 28, 288462339, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (52, 'Arianna', 'Goodwin', 45, 727920824, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (53, 'Aglae', 'Parisian', 35, 870055458, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (54, 'Yasmin', 'Eichmann', 31, 323246137, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (55, 'Bonita', 'Fritsch', 18, 835747950, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (56, 'Harvey', 'Ruecker', 24, 741001705, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (57, 'Israel', 'Wuckert', 45, 573692708, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (58, 'Alba', 'Goodwin', 34, 960851404, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (59, 'Verla', 'Kirlin', 19, 218398453, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (60, 'Nathen', 'Rogahn', 46, 750603422, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (61, 'Carol', 'Haley', 38, 747971911, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (62, 'Twila', 'Block', 30, 218152454, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (63, 'Nicola', 'Reichert', 27, 334982229, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (64, 'River', 'Kassulke', 30, 251298314, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (65, 'Mekhi', 'Will', 41, 868938658, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (66, 'Hallie', 'Wolff', 50, 639361981, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (67, 'Therese', 'Barrows', 41, 800079072, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (68, 'Lavinia', 'Metz', 36, 709247914, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (69, 'Webster', 'Feest', 34, 587478710, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (70, 'Breana', 'Koelpin', 45, 85171273, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (71, 'Colleen', 'Lueilwitz', 38, 878656425, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (72, 'Timmothy', 'O\'Conner', 40, 445858162, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (73, 'Dwight', 'Nienow', 38, 643982572, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (74, 'Benedict', 'Anderson', 22, 353657378, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (75, 'Melissa', 'Altenwerth', 23, 411987028, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (76, 'Jadyn', 'Cummings', 41, 420082183, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (77, 'Stephany', 'Marks', 39, 462558664, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (78, 'Eddie', 'Dickens', 21, 603765980, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (79, 'Henderson', 'Kunde', 23, 844387392, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (80, 'Janessa', 'Mills', 22, 179109039, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (81, 'Cheyanne', 'Schimmel', 29, 141307381, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (82, 'Leon', 'Hudson', 41, 464639922, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (83, 'Emmanuel', 'Lubowitz', 34, 897998845, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (84, 'Agnes', 'Spinka', 28, 726654162, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (85, 'Joesph', 'Mueller', 46, 236972457, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (86, 'Elmer', 'Dickinson', 19, 286295532, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (87, 'Rosina', 'Corwin', 24, 230992656, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (88, 'Jesus', 'Hauck', 29, 859237842, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (89, 'Niko', 'Steuber', 23, 375741322, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (90, 'Arvid', 'Rosenbaum', 35, 793841335, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (91, 'Lela', 'Lehner', 27, 534664647, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (92, 'Pascale', 'Lesch', 45, 961905089, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (93, 'Jevon', 'Cassin', 43, 275703571, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (94, 'Conrad', 'Torp', 18, 337794049, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (95, 'Josue', 'Keebler', 27, 947446645, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (96, 'Jerrod', 'Dicki', 46, 428578759, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (97, 'Nathan', 'Welch', 29, 214726373, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (98, 'Irma', 'Jones', 38, 729655371, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (99, 'Clinton', 'Haag', 31, 685196746, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (100, 'Freeda', 'Koepp', 26, 363826081, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (101, 'Misael', 'Kohler', 31, 715931724, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (102, 'Elsa', 'Jenkins', 20, 928533590, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (103, 'Gia', 'Paucek', 18, 84390959, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (104, 'Keon', 'Haag', 39, 116448815, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (105, 'Reina', 'Schoen', 26, 795117534, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (106, 'Katelynn', 'Schmeler', 45, 407216216, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (107, 'Jamar', 'Mills', 18, 762796435, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (108, 'Annamae', 'Borer', 33, 213615774, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (109, 'Rollin', 'Upton', 46, 617128094, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (110, 'Verner', 'Fadel', 36, 550814761, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (111, 'Jessika', 'Schoen', 28, 656701633, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (112, 'Wilfrid', 'Lakin', 30, 235326454, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (113, 'Sienna', 'Spinka', 34, 493650599, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (114, 'Kattie', 'Gutkowski', 29, 879793550, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (115, 'Tania', 'Lesch', 40, 157260436, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (116, 'Fermin', 'Predovic', 36, 907180083, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (117, 'Elmer', 'Mills', 32, 471066348, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (118, 'Fernando', 'West', 43, 128232985, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (119, 'Rory', 'Brakus', 34, 602029196, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (120, 'Miller', 'Hodkiewicz', 44, 868776659, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (121, 'Emmett', 'Bechtelar', 49, 185156437, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (122, 'Leonor', 'Torphy', 24, 258806797, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (123, 'Tanner', 'Rice', 31, 688770436, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (124, 'Maynard', 'Lockman', 32, 103923264, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (125, 'Dillan', 'Heller', 40, 500119004, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (126, 'Coby', 'Bashirian', 27, 851264989, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (127, 'Tracy', 'Flatley', 35, 545007258, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (128, 'Antonette', 'Fritsch', 41, 124043949, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (129, 'Eleonore', 'Bogisich', 29, 329112322, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (130, 'Johanna', 'Osinski', 24, 147920259, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (131, 'Sim', 'Harris', 40, 585539186, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (132, 'Geoffrey', 'Emard', 24, 941663677, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (133, 'Alexander', 'Ledner', 34, 461335015, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (134, 'Letitia', 'Feil', 44, 136401267, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (135, 'Cordell', 'Mann', 18, 729535874, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (136, 'Dortha', 'Wyman', 18, 835768062, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (137, 'Garrett', 'Tromp', 43, 517101118, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (138, 'Dane', 'Wiegand', 35, 166414193, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (139, 'Austen', 'Skiles', 45, 161386141, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (140, 'Elfrieda', 'Spinka', 36, 475240143, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (141, 'Maxine', 'Hirthe', 36, 950585767, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (142, 'Aubree', 'Carroll', 40, 178705855, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (143, 'Jamarcus', 'McCullough', 22, 653788122, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (144, 'Marlene', 'Little', 22, 953347367, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (145, 'Jakayla', 'McKenzie', 38, 496754410, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (146, 'Deanna', 'Veum', 28, 636122864, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (147, 'Hulda', 'Sanford', 34, 669306997, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (148, 'Kathleen', 'Pagac', 48, 765460995, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (149, 'Katheryn', 'Brown', 22, 128028819, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (150, 'Theresa', 'Ullrich', 24, 442541589, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (151, 'Jermaine', 'Cole', 29, 260012878, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (152, 'Alanna', 'Pollich', 25, 704559902, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (153, 'Myra', 'Gorczany', 30, 339349789, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (154, 'Hyman', 'Von', 34, 596161821, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (155, 'Lelah', 'Marvin', 47, 911351791, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (156, 'Myrtis', 'Hintz', 27, 580641682, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (157, 'Tomasa', 'Schulist', 41, 781977124, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (158, 'Rosario', 'Ritchie', 24, 726541644, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (159, 'Kaela', 'Klocko', 31, 803862477, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (160, 'Claire', 'Waelchi', 41, 874693558, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (161, 'Lorenza', 'Sanford', 32, 726070875, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (162, 'Gerard', 'Rolfson', 41, 800145250, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (163, 'Tania', 'Johnston', 38, 334747818, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (164, 'Gust', 'Hackett', 22, 689643274, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (165, 'Annalise', 'Beier', 23, 263897027, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (166, 'Lavon', 'Langworth', 44, 105165180, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (167, 'Elda', 'Beier', 29, 297944985, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (168, 'Trinity', 'McGlynn', 43, 553288110, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (169, 'Elouise', 'Streich', 27, 597924728, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (170, 'Oda', 'Emmerich', 22, 625312280, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (171, 'Naomi', 'Will', 45, 144221866, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (172, 'Una', 'Bailey', 42, 703143282, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (173, 'Selina', 'Aufderhar', 18, 578494429, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (174, 'Mathilde', 'Yost', 49, 709937478, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (175, 'Alisha', 'Feil', 32, 371365048, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (176, 'Kristin', 'Pagac', 28, 447585880, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (177, 'Hailey', 'Schulist', 20, 972080217, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (178, 'Zachery', 'Carroll', 48, 805199348, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (179, 'Makenna', 'Nader', 35, 103768911, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (180, 'Petra', 'Lockman', 40, 188861478, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (181, 'Dexter', 'Bashirian', 34, 853419897, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (182, 'Orville', 'Crona', 20, 129663893, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (183, 'Rozella', 'Weber', 45, 583949782, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (184, 'Beth', 'Pfannerstill', 46, 896585335, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (185, 'Raina', 'Schuster', 38, 797578972, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (186, 'Lukas', 'Rodriguez', 31, 648404028, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (187, 'Marjory', 'Kassulke', 49, 804604534, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (188, 'Daryl', 'Oberbrunner', 31, 820449616, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (189, 'Janice', 'Botsford', 39, 378486598, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (190, 'Craig', 'Cremin', 34, 738613208, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (191, 'Macie', 'Wehner', 37, 882674574, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (192, 'Alysson', 'Herzog', 22, 110790906, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (193, 'Alvah', 'Stanton', 22, 907528950, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (194, 'Lionel', 'Davis', 21, 751672321, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (195, 'Herta', 'Douglas', 22, 501027631, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (196, 'Garry', 'Gislason', 22, 910728886, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (197, 'Genevieve', 'Heaney', 34, 487193395, 'M');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (198, 'Jayce', 'Satterfield', 24, 410140721, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (199, 'Eda', 'Weimann', 50, 753164315, 'F');
INSERT INTO `Student` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`) VALUES (200, 'Savanna', 'Toy', 41, 274892596, 'M');


#
# TABLE STRUCTURE FOR: Student_Building
#

DROP TABLE IF EXISTS `Student_Building`;

CREATE TABLE `Student_Building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Student_id` int(11) NOT NULL,
  `Building_id` int(11) NOT NULL,
  `inscription_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Building_association_1` (`Building_id`),
  KEY `Student_association_1` (`Student_id`),
  CONSTRAINT `Building_association_1` FOREIGN KEY (`Building_id`) REFERENCES `Building` (`id`),
  CONSTRAINT `Student_association_1` FOREIGN KEY (`Student_id`) REFERENCES `Student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (1, 1, 1, '2008-11-09');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (2, 2, 2, '2021-08-04');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (3, 3, 3, '2008-08-10');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (4, 4, 4, '2004-06-17');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (5, 5, 5, '1984-12-26');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (6, 6, 6, '2004-05-16');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (7, 7, 7, '1985-10-29');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (8, 8, 8, '2012-07-26');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (9, 9, 9, '2004-03-24');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (10, 10, 10, '1970-09-11');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (11, 11, 11, '2016-06-19');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (12, 12, 12, '1971-06-20');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (13, 13, 13, '2018-09-28');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (14, 14, 14, '2016-06-07');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (15, 15, 15, '2018-02-16');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (16, 16, 16, '1976-08-23');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (17, 17, 17, '2020-08-25');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (18, 18, 18, '2017-12-16');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (19, 19, 19, '1986-11-27');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (20, 20, 20, '1997-12-13');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (21, 21, 21, '2008-10-11');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (22, 22, 22, '1987-08-06');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (23, 23, 23, '1987-04-21');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (24, 24, 24, '1974-07-08');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (25, 25, 25, '2017-08-20');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (26, 26, 1, '2005-09-29');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (27, 27, 2, '1974-09-01');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (28, 28, 3, '2000-03-04');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (29, 29, 4, '2016-06-19');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (30, 30, 5, '2017-07-27');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (31, 31, 6, '1985-09-03');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (32, 32, 7, '2015-12-22');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (33, 33, 8, '1993-09-02');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (34, 34, 9, '1993-04-16');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (35, 35, 10, '2021-09-15');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (36, 36, 11, '1997-11-17');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (37, 37, 12, '1995-02-23');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (38, 38, 13, '2001-09-29');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (39, 39, 14, '2009-01-10');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (40, 40, 15, '1993-10-31');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (41, 41, 16, '1974-06-10');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (42, 42, 17, '1977-03-09');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (43, 43, 18, '2005-06-02');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (44, 44, 19, '1985-01-21');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (45, 45, 20, '1970-11-08');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (46, 46, 21, '2002-06-19');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (47, 47, 22, '2001-06-02');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (48, 48, 23, '2009-11-19');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (49, 49, 24, '2000-03-20');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (50, 50, 25, '2018-04-18');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (51, 51, 1, '1997-01-20');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (52, 52, 2, '1970-09-25');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (53, 53, 3, '1985-09-13');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (54, 54, 4, '1989-12-29');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (55, 55, 5, '1979-06-01');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (56, 56, 6, '2015-05-25');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (57, 57, 7, '1981-09-11');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (58, 58, 8, '2002-11-10');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (59, 59, 9, '2008-05-26');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (60, 60, 10, '2003-12-28');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (61, 61, 11, '2012-12-15');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (62, 62, 12, '1978-08-17');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (63, 63, 13, '2022-03-17');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (64, 64, 14, '1986-10-17');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (65, 65, 15, '1990-09-21');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (66, 66, 16, '2021-01-10');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (67, 67, 17, '2011-03-20');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (68, 68, 18, '2019-05-12');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (69, 69, 19, '1993-10-27');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (70, 70, 20, '2004-09-22');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (71, 71, 21, '2002-01-15');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (72, 72, 22, '2014-05-10');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (73, 73, 23, '1975-02-14');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (74, 74, 24, '2008-08-12');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (75, 75, 25, '2008-02-15');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (76, 76, 1, '1990-01-11');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (77, 77, 2, '2018-02-16');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (78, 78, 3, '1983-08-17');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (79, 79, 4, '2005-01-16');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (80, 80, 5, '1983-09-26');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (81, 81, 6, '2010-05-31');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (82, 82, 7, '1973-05-22');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (83, 83, 8, '2014-12-14');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (84, 84, 9, '1983-03-19');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (85, 85, 10, '1975-11-23');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (86, 86, 11, '2000-06-07');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (87, 87, 12, '2001-09-11');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (88, 88, 13, '1975-03-29');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (89, 89, 14, '2022-05-27');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (90, 90, 15, '1982-11-20');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (91, 91, 16, '1987-05-02');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (92, 92, 17, '1996-01-08');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (93, 93, 18, '1972-10-15');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (94, 94, 19, '1978-11-10');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (95, 95, 20, '1995-05-16');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (96, 96, 21, '1994-10-01');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (97, 97, 22, '1988-06-02');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (98, 98, 23, '1995-06-15');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (99, 99, 24, '1977-11-02');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (100, 100, 25, '2009-09-28');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (101, 101, 1, '1974-08-11');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (102, 102, 2, '1980-09-01');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (103, 103, 3, '1990-01-18');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (104, 104, 4, '1988-07-13');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (105, 105, 5, '1995-12-19');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (106, 106, 6, '1983-02-07');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (107, 107, 7, '2019-10-21');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (108, 108, 8, '1991-02-17');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (109, 109, 9, '2016-03-27');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (110, 110, 10, '1976-04-01');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (111, 111, 11, '1984-10-21');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (112, 112, 12, '2021-06-06');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (113, 113, 13, '2018-04-13');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (114, 114, 14, '1979-10-19');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (115, 115, 15, '1981-09-24');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (116, 116, 16, '1993-10-14');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (117, 117, 17, '1984-10-20');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (118, 118, 18, '1975-01-23');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (119, 119, 19, '2019-01-25');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (120, 120, 20, '1970-02-04');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (121, 121, 21, '1972-05-14');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (122, 122, 22, '1991-02-21');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (123, 123, 23, '1993-02-26');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (124, 124, 24, '2001-12-20');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (125, 125, 25, '2015-09-26');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (126, 126, 1, '1988-05-18');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (127, 127, 2, '2019-06-10');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (128, 128, 3, '2010-06-26');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (129, 129, 4, '1987-05-16');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (130, 130, 5, '2002-12-18');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (131, 131, 6, '2020-03-07');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (132, 132, 7, '2022-07-31');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (133, 133, 8, '1981-03-08');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (134, 134, 9, '2015-09-11');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (135, 135, 10, '2004-07-19');
INSERT INTO `Student_Building` (`id`, `Student_id`, `Building_id`, `inscription_date`) VALUES (136, 136, 11, '2016-10-05');


#
# TABLE STRUCTURE FOR: Student_Note
#

DROP TABLE IF EXISTS `Student_Note`;

CREATE TABLE `Student_Note` (
  `Student_Building_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  KEY `Student_Note_Student_Building` (`Student_Building_id`),
  CONSTRAINT `Student_Note_Student_Building` FOREIGN KEY (`Student_Building_id`) REFERENCES `Student_Building` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (1, 25);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (2, 53);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (3, 76);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (4, 77);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (5, 35);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (6, 26);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (7, 65);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (8, 96);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (9, 55);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (10, 25);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (11, 36);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (12, 49);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (13, 99);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (14, 28);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (15, 51);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (16, 27);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (17, 88);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (18, 83);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (19, 56);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (20, 83);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (21, 97);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (22, 88);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (23, 38);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (24, 47);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (25, 100);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (26, 85);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (27, 83);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (28, 70);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (29, 86);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (30, 38);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (31, 39);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (32, 40);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (33, 74);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (34, 99);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (35, 81);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (36, 90);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (37, 90);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (38, 56);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (39, 81);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (40, 78);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (41, 95);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (42, 48);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (43, 78);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (44, 86);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (45, 37);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (46, 60);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (47, 56);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (48, 28);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (49, 57);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (50, 86);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (51, 31);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (52, 60);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (53, 31);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (54, 100);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (55, 40);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (56, 46);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (57, 89);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (58, 48);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (59, 27);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (60, 58);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (61, 50);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (62, 27);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (63, 90);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (64, 46);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (65, 70);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (66, 50);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (67, 76);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (68, 45);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (69, 98);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (70, 47);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (71, 60);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (72, 52);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (73, 98);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (74, 97);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (75, 76);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (76, 69);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (77, 63);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (78, 47);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (79, 77);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (80, 33);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (81, 34);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (82, 67);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (83, 62);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (84, 91);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (85, 48);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (86, 34);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (87, 32);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (88, 61);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (89, 61);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (90, 44);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (91, 82);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (92, 41);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (93, 57);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (94, 27);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (95, 35);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (96, 43);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (97, 69);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (98, 56);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (99, 57);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (100, 35);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (101, 72);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (102, 66);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (103, 60);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (104, 38);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (105, 56);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (106, 37);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (107, 84);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (108, 38);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (109, 74);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (110, 91);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (111, 99);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (112, 50);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (113, 64);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (114, 76);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (115, 100);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (116, 49);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (117, 25);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (118, 78);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (119, 76);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (120, 49);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (121, 67);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (122, 97);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (123, 54);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (124, 31);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (125, 96);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (126, 36);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (127, 42);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (128, 65);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (129, 51);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (130, 84);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (131, 41);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (132, 90);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (133, 29);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (134, 59);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (135, 89);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (136, 35);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (1, 77);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (2, 83);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (3, 89);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (4, 92);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (5, 98);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (6, 63);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (7, 37);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (8, 74);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (9, 50);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (10, 53);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (11, 86);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (12, 77);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (13, 46);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (14, 99);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (15, 85);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (16, 38);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (17, 30);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (18, 62);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (19, 70);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (20, 67);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (21, 96);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (22, 51);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (23, 25);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (24, 99);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (25, 42);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (26, 51);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (27, 91);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (28, 66);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (29, 71);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (30, 67);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (31, 62);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (32, 30);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (33, 78);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (34, 54);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (35, 83);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (36, 65);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (37, 94);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (38, 56);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (39, 29);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (40, 41);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (41, 36);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (42, 45);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (43, 53);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (44, 84);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (45, 89);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (46, 54);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (47, 40);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (48, 40);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (49, 77);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (50, 59);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (51, 50);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (52, 61);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (53, 46);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (54, 34);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (55, 54);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (56, 35);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (57, 35);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (58, 90);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (59, 59);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (60, 38);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (61, 56);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (62, 40);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (63, 79);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (64, 39);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (65, 37);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (66, 34);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (67, 32);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (68, 71);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (69, 47);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (70, 27);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (71, 89);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (72, 81);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (73, 47);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (74, 88);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (75, 62);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (76, 80);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (77, 86);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (78, 56);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (79, 40);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (80, 36);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (81, 44);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (82, 53);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (83, 79);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (84, 63);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (85, 40);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (86, 97);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (87, 47);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (88, 69);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (89, 51);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (90, 100);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (91, 85);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (92, 59);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (93, 48);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (94, 45);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (95, 87);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (96, 38);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (97, 88);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (98, 55);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (99, 51);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (100, 42);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (101, 91);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (102, 80);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (103, 34);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (104, 78);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (105, 77);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (106, 65);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (107, 95);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (108, 92);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (109, 29);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (110, 72);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (111, 48);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (112, 76);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (113, 56);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (114, 65);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (115, 72);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (116, 63);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (117, 92);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (118, 74);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (119, 54);
INSERT INTO `Student_Note` (`Student_Building_id`, `score`) VALUES (120, 35);


#
# TABLE STRUCTURE FOR: Subject
#

DROP TABLE IF EXISTS `Subject`;

CREATE TABLE `Subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` enum('Practice','Theory') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Subject` (`id`, `name`, `price`, `category`) VALUES (1, 'driving', 107, 'Practice');
INSERT INTO `Subject` (`id`, `name`, `price`, `category`) VALUES (2, 'traffic regulations', 4234, 'Practice');
INSERT INTO `Subject` (`id`, `name`, `price`, `category`) VALUES (3, 'automotive theory', 511, 'Theory');


#
# TABLE STRUCTURE FOR: Trainer
#

DROP TABLE IF EXISTS `Trainer`;

CREATE TABLE `Trainer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` enum('F','M') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Trainer_idx_1` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (1, 'Cara', 'Medhurst', 27, 710, 'M', 1792);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (2, 'Kenya', 'Kiehn', 29, 13, 'M', 1238);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (3, 'Myles', 'Ernser', 43, 38, 'M', 1776);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (4, 'Jordy', 'Ziemann', 40, 349, 'M', 1922);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (5, 'Sandrine', 'Weissnat', 44, 0, 'F', 1061);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (6, 'Estel', 'Rau', 38, 496636, 'M', 1544);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (7, 'Frederik', 'Balistreri', 47, 0, 'F', 1023);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (8, 'Roberto', 'Watsica', 25, 978, 'F', 1629);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (9, 'Lorenz', 'Beer', 29, 2147483647, 'F', 1432);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (10, 'Jordyn', 'Ankunding', 28, 1, 'F', 1184);


#
# TABLE STRUCTURE FOR: Vehicle
#

DROP TABLE IF EXISTS `Vehicle`;

CREATE TABLE `Vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: Vehicle_Building
#

DROP TABLE IF EXISTS `Vehicle_Building`;

CREATE TABLE `Vehicle_Building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_plate` int(11) NOT NULL,
  `Building_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Vehicle_Building` (`Building_id`),
  KEY `Vehicle_association_1` (`Vehicle_plate`),
  CONSTRAINT `Vehicle_Building` FOREIGN KEY (`Building_id`) REFERENCES `Building` (`id`),
  CONSTRAINT `Vehicle_association_1` FOREIGN KEY (`Vehicle_plate`) REFERENCES `Vehicle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

