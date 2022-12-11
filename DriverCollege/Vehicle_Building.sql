create table Vehicle_Building
(
    id            int auto_increment
        primary key,
    Vehicle_plate int not null,
    Building_id   int not null,
    constraint Vehicle_Building
        foreign key (Building_id) references Building (id),
    constraint Vehicle_association_1
        foreign key (Vehicle_plate) references Vehicle (id)
);

