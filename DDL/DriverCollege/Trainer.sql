create table Trainer
(
    id         int auto_increment
        primary key,
    first_name varchar(255)    not null,
    last_name  varchar(255)    not null,
    age        int             not null,
    phone      int             not null,
    gender     enum ('F', 'M') null,
    salary     int             null
);

create index Trainer_idx_1
    on Trainer (id);

