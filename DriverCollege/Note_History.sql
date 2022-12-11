create table Note_History
(
    name_student      varchar(255) not null,
    last_name_student varchar(255) not null,
    score             int          not null,
    name_subject      varchar(80)  not null,
    type_subject      varchar(45)  not null,
    name_trainer      varchar(255) not null,
    last_name_trainer varchar(255) not null,
    date_time         timestamp    not null
);

