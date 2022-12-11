-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-12-11 15:38:44.679
-- tables
DROP SCHEMA DriverCollege;
CREATE SCHEMA DriverCollege;
USE DriverCollege;
-- Table: Building
CREATE TABLE Building (
    id int NOT NULL AUTO_INCREMENT,
    Subject_id int NOT NULL,
    Trainer_id int NOT NULL,
    Category_id int NOT NULL,
    CONSTRAINT Building_pk PRIMARY KEY (id)
);

-- Table: Building_Schedule
CREATE TABLE Building_Schedule (
    id int NOT NULL AUTO_INCREMENT,
    Building_id int NOT NULL,
    Schedule_id int NOT NULL,
    CONSTRAINT Building_Schedule_pk PRIMARY KEY (id)
);

-- Table: Category
CREATE TABLE Category (
    id int NOT NULL AUTO_INCREMENT,
    type ENUM('A', 'P', 'M') NOT NULL,
    capacity ENUM('Low', 'Medium', 'Full') NOT NULL,
    type_car ENUM('Private', 'Public', 'Both') NOT NULL,
    CONSTRAINT Category_pk PRIMARY KEY (id)
);

-- Table: Certificate
CREATE TABLE Certificate (
    id int NOT NULL AUTO_INCREMENT,
    Category_id int NOT NULL,
    Company_id int NOT NULL,
    Student_Building_id int NOT NULL,
    country varchar(255) NOT NULL,
    date date NOT NULL,
    CONSTRAINT Certificate_pk PRIMARY KEY (id)
);

CREATE INDEX Certificate_idx_1 USING BTREE ON Certificate (id);

-- Table: Company
CREATE TABLE Company (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    phone_number int NOT NULL,
    address varchar(255) NOT NULL,
    CONSTRAINT Company_pk PRIMARY KEY (id)
);

-- Table: Data_Maintenance
CREATE TABLE Data_Maintenance (
    id int NOT NULL AUTO_INCREMENT,
    date date NOT NULL,
    Vehicle_id int NOT NULL,
    CONSTRAINT Data_Maintenance_pk PRIMARY KEY (id)
);

-- Table: Note_History
CREATE TABLE Note_History (
    name_student VARCHAR(255) NOT NULL,
    last_name_student VARCHAR(255) NOT NULL,
    score int NOT NULL,
    name_subject varchar(80) NOT NULL,
    type_subject varchar(45) NOT NULL,
    name_trainer varchar(255) NOT NULL,
    last_name_trainer varchar(255) NOT NULL,
    date_time timestamp NOT NULL
);

-- Table: Schedule
CREATE TABLE Schedule (
    id int NOT NULL AUTO_INCREMENT,
    time time NOT NULL,
    CONSTRAINT Schedule_pk PRIMARY KEY (id)
);

-- Table: Student_Building
CREATE TABLE Student_Building (
    id int NOT NULL AUTO_INCREMENT,
    Student_id int NOT NULL,
    Building_id int NOT NULL,
    inscription_date timestamp NOT NULL,
    CONSTRAINT Student_Building_pk PRIMARY KEY (id)
);

-- Table: Student
CREATE TABLE Student (
    id int NOT NULL AUTO_INCREMENT,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    age int NOT NULL,
    phone int NOT NULL,
    gender enum('F','M') NOT NULL,
    CONSTRAINT Student_pk PRIMARY KEY (id)
);

CREATE INDEX Student USING BTREE ON Student (id);


-- Table Student
CREATE TABLE Client_Not_Registered (
    id int NOT NULL AUTO_INCREMENT,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    age int NOT NULL,
    phone int NOT NULL,
    gender enum('F','M') NOT NULL,
    CONSTRAINT Student_pk PRIMARY KEY (id)
);


-- Table: Student_Note
CREATE TABLE Student_Note (
    Student_Building_id int NOT NULL,
    score int NOT NULL
);

-- Table: Subject
CREATE TABLE Subject (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(80) NOT NULL,
    price int NOT NULL,
    category ENUM('Practice', 'Theory') NOT NULL,
    CONSTRAINT Subject_pk PRIMARY KEY (id)
);

-- Table: Trainer
CREATE TABLE Trainer (
    id int NOT NULL AUTO_INCREMENT,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    age int NOT NULL,
    phone int NOT NULL,
    gender ENUM('F', 'M') NULL,
    salary int NULL,
    CONSTRAINT Trainer_pk PRIMARY KEY (id)
);

CREATE INDEX Trainer_idx_1 USING BTREE ON Trainer (id);

-- Table: Vehicle
CREATE TABLE Vehicle (
    id int NOT NULL AUTO_INCREMENT,
    model varchar(255) NOT NULL,
    type varchar(255) NOT NULL,
    available boolean NOT NULL,
    CONSTRAINT Vehicle_pk PRIMARY KEY (id)
);

-- Table: Vehicle_Building
CREATE TABLE Vehicle_Building (
    id int NOT NULL AUTO_INCREMENT,
    Vehicle_plate int NOT NULL,
    Building_id int NOT NULL,
    CONSTRAINT Vehicle_Building_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: Building_Category (table: Building)
ALTER TABLE Building ADD CONSTRAINT Building_Category FOREIGN KEY Building_Category (Category_id)
    REFERENCES Category (id);

-- Reference: Building_Subject (table: Building)
ALTER TABLE Building ADD CONSTRAINT Building_Subject FOREIGN KEY Building_Subject (Subject_id)
    REFERENCES Subject (id);

-- Reference: Building_Trainer (table: Building)
ALTER TABLE Building ADD CONSTRAINT Building_Trainer FOREIGN KEY Building_Trainer (Trainer_id)
    REFERENCES Trainer (id);

-- Reference: Building_association_1 (table: Student_Building)
ALTER TABLE Student_Building ADD CONSTRAINT Building_association_1 FOREIGN KEY Building_association_1 (Building_id)
    REFERENCES Building (id);

-- Reference: Building_association_2 (table: Building_Schedule)
ALTER TABLE Building_Schedule ADD CONSTRAINT Building_association_2 FOREIGN KEY Building_association_2 (Building_id)
    REFERENCES Building (id);

-- Reference: Certificate_Category (table: Certificate)
ALTER TABLE Certificate ADD CONSTRAINT Certificate_Category FOREIGN KEY Certificate_Category (Category_id)
    REFERENCES Category (id);

-- Reference: Certificate_Company (table: Certificate)
ALTER TABLE Certificate ADD CONSTRAINT Certificate_Company FOREIGN KEY Certificate_Company (Company_id)
    REFERENCES Company (id);

-- Reference: Data_Maintenance_Vehicle (table: Data_Maintenance)
ALTER TABLE Data_Maintenance ADD CONSTRAINT Data_Maintenance_Vehicle FOREIGN KEY Data_Maintenance_Vehicle (Vehicle_id)
    REFERENCES Vehicle (id);

-- Reference: Schedule_association_2 (table: Building_Schedule)
ALTER TABLE Building_Schedule ADD CONSTRAINT Schedule_association_2 FOREIGN KEY Schedule_association_2 (Schedule_id)
    REFERENCES Schedule (id);

-- Reference: Student_Note_Student_Building (table: Student_Note)
ALTER TABLE Student_Note ADD CONSTRAINT Student_Note_Student_Building FOREIGN KEY Student_Note_Student_Building (Student_Building_id)
    REFERENCES Student_Building (id);

-- Reference: Student_association_1 (table: Student_Building)
ALTER TABLE Student_Building ADD CONSTRAINT Student_association_1 FOREIGN KEY Student_association_1 (Student_id)
    REFERENCES Student(id);

-- Reference: Vehicle_Building (table: Vehicle_Building)
ALTER TABLE Vehicle_Building ADD CONSTRAINT Vehicle_Building FOREIGN KEY Vehicle_Building (Building_id)
    REFERENCES Building (id);

-- Reference: Vehicle_association_1 (table: Vehicle_Building)
ALTER TABLE Vehicle_Building ADD CONSTRAINT Vehicle_association_1 FOREIGN KEY Vehicle_association_1 (Vehicle_plate)
    REFERENCES Vehicle (id);

-- Reference: Certificate_association_1 (table: Certificate)
ALTER TABLE Certificate ADD CONSTRAINT Certificate_association_1 FOREIGN KEY Certificate_association_1 (Student_Building_id)
REFERENCES Student_Building(id);

-- End of file.

