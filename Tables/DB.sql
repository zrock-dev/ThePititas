



#
# TABLE STRUCTURE FOR: Vehicle
#

DROP TABLE IF EXISTS `Vehicle`;

CREATE TABLE `Vehicle` (
  `plate` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_maintenance` date NOT NULL,
  `available` tinyint(1) NOT NULL,
  PRIMARY KEY (`plate`)
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
  CONSTRAINT `Vehicle_association_1` FOREIGN KEY (`Vehicle_plate`) REFERENCES `Vehicle` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

