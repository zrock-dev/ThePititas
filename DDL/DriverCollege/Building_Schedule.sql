create table Building_Schedule
(
    id          int auto_increment
        primary key,
    Building_id int not null,
    Schedule_id int not null,
    constraint Building_association_2
        foreign key (Building_id) references Building (id),
    constraint Schedule_association_2
        foreign key (Schedule_id) references Schedule (id)
);

