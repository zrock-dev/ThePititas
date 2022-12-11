create table Subject
(
    id       int auto_increment
        primary key,
    name     varchar(80)                 not null,
    price    int                         not null,
    category enum ('Practice', 'Theory') not null
);

