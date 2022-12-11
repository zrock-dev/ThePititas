create table Category
(
    id       int auto_increment
        primary key,
    type     enum ('A', 'P', 'M')               not null,
    capacity enum ('Low', 'Medium', 'Full')     not null,
    type_car enum ('Private', 'Public', 'Both') not null
);

