create table Student_Note
(
    Student_Building_id int not null,
    score               int not null,
    constraint Student_Note_Student_Building
        foreign key (Student_Building_id) references Student_Building (id)
);

