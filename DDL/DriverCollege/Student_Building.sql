create table Student_Building
(
    id               int auto_increment
        primary key,
    Student_id       int       not null,
    Building_id      int       not null,
    inscription_date timestamp not null,
    constraint Building_association_1
        foreign key (Building_id) references Building (id),
    constraint Student_association_1
        foreign key (Student_id) references Student (id)
);

