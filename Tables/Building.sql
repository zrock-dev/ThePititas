INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (1, 'P', 'Medium', 'Public');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (2, 'M', 'Low', 'Public');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (3, 'P', 'Full', 'Public');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (4, 'P', 'Full', 'Private');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (5, 'M', 'Full', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (6, 'P', 'Full', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (7, 'P', 'Medium', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (8, 'A', 'Low', 'Private');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (9, 'P', 'Low', 'Public');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (10, 'A', 'Medium', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (11, 'M', 'Full', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (12, 'P', 'Low', 'Private');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (13, 'M', 'Full', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (14, 'A', 'Full', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (15, 'M', 'Medium', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (16, 'M', 'Low', 'Private');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (17, 'A', 'Low', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (18, 'A', 'Full', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (19, 'A', 'Medium', 'Private');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (20, 'P', 'Low', 'Public');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (21, 'P', 'Medium', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (22, 'M', 'Full', 'Public');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (23, 'M', 'Medium', 'Both');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (24, 'P', 'Full', 'Public');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (25, 'M', 'Low', 'Private');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (26, 'A', 'Medium', 'Private');
INSERT INTO `Category` (`id`, `type`, `capacity`, `type_car`) VALUES (27, 'M', 'Full', 'Both');


INSERT INTO `Subject` (`id`, `name`, `price`, `category`) VALUES (1, 'traffic regulations', 564, 'Theory');
INSERT INTO `Subject` (`id`, `name`, `price`, `category`) VALUES (2, 'driving', 590, 'Practice');
INSERT INTO `Subject` (`id`, `name`, `price`, `category`) VALUES (3, 'automotive theory', 549, 'Theory');


INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (1, 'Lonie', 'Beatty', 248, 98, 'M', 1298);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (2, 'Anya', 'Corwin', 256, 1, 'M', 555);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (3, 'Dana', 'Mueller', 438, 681, 'M', 1133);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (4, 'Rickie', 'Langworth', 498, 1, 'M', 1672);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (5, 'Rebeka', 'Johns', 304, 500801, 'M', 1069);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (6, 'Osvaldo', 'Casper', 273, 0, 'F', 2199);
INSERT INTO `Trainer` (`id`, `first_name`, `last_name`, `age`, `phone`, `gender`, `salary`) VALUES (7, 'Burley', 'Friesen', 399, 2147483647, 'M', 1020);


INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (1, 1, 1, 1);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (2, 2, 2, 2);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (3, 3, 3, 3);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (4, 1, 4, 4);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (5, 2, 5, 5);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (6, 3, 6, 6);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (7, 1, 7, 7);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (8, 2, 1, 8);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (9, 3, 2, 9);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (10, 1, 3, 10);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (11, 2, 4, 11);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (12, 3, 5, 12);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (13, 1, 6, 13);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (14, 2, 7, 14);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (15, 3, 1, 15);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (16, 1, 2, 16);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (17, 2, 3, 17);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (18, 3, 4, 18);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (19, 1, 5, 19);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (20, 2, 6, 20);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (21, 3, 7, 21);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (22, 1, 1, 22);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (23, 2, 2, 23);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (24, 3, 3, 24);
INSERT INTO `Building` (`id`, `Subject_id`, `Trainer_id`, `Category_id`) VALUES (25, 1, 4, 25);


INSERT INTO `Schedule` (`id`, `time`) VALUES (1, '03:57:33');
INSERT INTO `Schedule` (`id`, `time`) VALUES (2, '12:52:59');
INSERT INTO `Schedule` (`id`, `time`) VALUES (3, '11:56:17');
INSERT INTO `Schedule` (`id`, `time`) VALUES (4, '12:17:26');
INSERT INTO `Schedule` (`id`, `time`) VALUES (5, '03:23:36');
INSERT INTO `Schedule` (`id`, `time`) VALUES (6, '11:51:03');
INSERT INTO `Schedule` (`id`, `time`) VALUES (7, '19:14:59');
INSERT INTO `Schedule` (`id`, `time`) VALUES (8, '09:39:28');
INSERT INTO `Schedule` (`id`, `time`) VALUES (9, '02:33:46');
INSERT INTO `Schedule` (`id`, `time`) VALUES (10, '02:04:12');
INSERT INTO `Schedule` (`id`, `time`) VALUES (11, '03:45:55');
INSERT INTO `Schedule` (`id`, `time`) VALUES (12, '20:16:36');
INSERT INTO `Schedule` (`id`, `time`) VALUES (13, '16:35:16');
INSERT INTO `Schedule` (`id`, `time`) VALUES (14, '11:25:06');
INSERT INTO `Schedule` (`id`, `time`) VALUES (15, '19:00:24');
INSERT INTO `Schedule` (`id`, `time`) VALUES (16, '20:12:56');
INSERT INTO `Schedule` (`id`, `time`) VALUES (17, '05:25:32');
INSERT INTO `Schedule` (`id`, `time`) VALUES (18, '02:35:34');
INSERT INTO `Schedule` (`id`, `time`) VALUES (19, '10:27:57');
INSERT INTO `Schedule` (`id`, `time`) VALUES (20, '18:11:13');
INSERT INTO `Schedule` (`id`, `time`) VALUES (21, '23:39:46');
INSERT INTO `Schedule` (`id`, `time`) VALUES (22, '21:45:15');
INSERT INTO `Schedule` (`id`, `time`) VALUES (23, '12:17:24');
INSERT INTO `Schedule` (`id`, `time`) VALUES (24, '12:18:21');
INSERT INTO `Schedule` (`id`, `time`) VALUES (25, '02:59:57');
INSERT INTO `Schedule` (`id`, `time`) VALUES (26, '15:06:10');
INSERT INTO `Schedule` (`id`, `time`) VALUES (27, '15:23:37');


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
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (11, 11, 11);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (12, 12, 12);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (13, 13, 13);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (14, 14, 14);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (15, 15, 15);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (16, 16, 16);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (17, 17, 17);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (18, 18, 18);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (19, 19, 19);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (20, 20, 20);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (21, 21, 21);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (22, 22, 22);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (23, 23, 23);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (24, 24, 24);
INSERT INTO `Building_Schedule` (`id`, `Building_id`, `Schedule_id`) VALUES (25, 25, 25);