create table Student
(
    id         int auto_increment
        primary key,
    first_name varchar(255)    not null,
    last_name  varchar(255)    not null,
    age        int             not null,
    phone      int             not null,
    gender     enum ('F', 'M') not null
);

create index Student
    on Student (id);

