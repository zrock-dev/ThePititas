create table Company
(
    id           int auto_increment
        primary key,
    name         varchar(255) not null,
    phone_number int          not null,
    address      varchar(255) not null
);

