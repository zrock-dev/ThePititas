create table Building
(
    id          int auto_increment
        primary key,
    Subject_id  int not null,
    Trainer_id  int not null,
    Category_id int not null,
    constraint Building_Category
        foreign key (Category_id) references Category (id),
    constraint Building_Subject
        foreign key (Subject_id) references Subject (id),
    constraint Building_Trainer
        foreign key (Trainer_id) references Trainer (id)
);

