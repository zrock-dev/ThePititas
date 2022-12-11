create table Data_Maintenance
(
    id         int auto_increment
        primary key,
    date       date not null,
    Vehicle_id int  not null,
    constraint Data_Maintenance_Vehicle
        foreign key (Vehicle_id) references Vehicle (id)
);

