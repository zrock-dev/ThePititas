create table Vehicle
(
    id        int auto_increment
        primary key,
    model     varchar(255) not null,
    type      varchar(255) not null,
    available tinyint(1)   not null
);

