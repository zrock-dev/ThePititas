create table Certificate
(
    id                  int auto_increment
        primary key,
    Category_id         int          not null,
    Company_id          int          not null,
    Student_Building_id int          not null,
    country             varchar(255) not null,
    date                date         not null,
    constraint Certificate_Category
        foreign key (Category_id) references Category (id),
    constraint Certificate_Company
        foreign key (Company_id) references Company (id),
    constraint Certificate_association_1
        foreign key (Student_Building_id) references Student_Building (id)
);

create index Certificate_idx_1
    on Certificate (id);

