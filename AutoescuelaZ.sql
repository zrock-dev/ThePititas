-- tables
-- Table: Building
CREATE TABLE Building (
    id int NOT NULL,
    Subject_id int NOT NULL,
    Trainer_id int NOT NULL,
    Category_id int NOT NULL,
    CONSTRAINT Building_pk PRIMARY KEY (id)
);

-- Table: Building_Schedule
CREATE TABLE Building_Schedule (
    id int NOT NULL,
    Building_id int NOT NULL,
    Schedule_id int NOT NULL,
    CONSTRAINT Building_Schedule_pk PRIMARY KEY (id)
);

-- Table: Car_Usage
CREATE TABLE Car_Usage (
    id int NOT NULL,
    type_use Varchar(45) NOT NULL,
    CONSTRAINT Car_Usage_pk PRIMARY KEY (id)
);

-- Table: Category
CREATE TABLE Category (
    id int NOT NULL,
    type char(1) NOT NULL,
    capacity Varchar(45) NOT NULL,
    type_car Varchar(45) NOT NULL,
    Car_Usage_id int NOT NULL,
    CONSTRAINT Category_pk PRIMARY KEY (id)
);

-- Table: Certificate
CREATE TABLE Certificate (
    id int NOT NULL,
    country varchar(255) NOT NULL,
    date date NOT NULL,
    Category_id int NOT NULL,
    Company_id int NOT NULL,
    CONSTRAINT Certificate_pk PRIMARY KEY (id)
);

CREATE INDEX Certificate_idx_1 USING BTREE ON Certificate (id);

-- Table: Company
CREATE TABLE Company (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    phone_number int NOT NULL,
    address varchar(255) NOT NULL,
    CONSTRAINT Company_pk PRIMARY KEY (id)
);

-- Table: Data_Maintenance
CREATE TABLE Data_Maintenance (
    id int NOT NULL,
    plate varchar(45) NOT NULL,
    date date NOT NULL,
    Vehicle_plate int NOT NULL,
    CONSTRAINT Data_Maintenance_pk PRIMARY KEY (id)
);

-- Table: Schedule
CREATE TABLE Schedule (
    id int NOT NULL,
    time time NOT NULL,
    CONSTRAINT Schedule_pk PRIMARY KEY (id)
);

-- Table: Student
CREATE TABLE Student (
    id int NOT NULL,
    Student_Important_id int NOT NULL,
    phone int NOT NULL,
    gender ENUM('F', 'M') NOT NULL ,
    CONSTRAINT Student_pk PRIMARY KEY (id)
);

-- Table: Student_Building
CREATE TABLE Student_Building (
    id int NOT NULL,
    Student_id int NOT NULL,
    Building_id int NOT NULL,
    CONSTRAINT Student_Building_pk PRIMARY KEY (id)
);


-- Table: Student_Note
CREATE TABLE Student_Note (
	score int NOT NULL,
    Student_Building_id int NOT NULL,
    FOREIGN KEY (Student_Building_id) REFERENCES Student_Building (id)
);

-- Table: Student_Important
CREATE TABLE Student_Important (
    id int NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    age int NOT NULL,
    CONSTRAINT Student_pk PRIMARY KEY (id)
);

CREATE INDEX Student_Important_idx_1 USING BTREE ON Student_Important (id);

-- Table: Subject
CREATE TABLE Subject (
    id int NOT NULL,
    name varchar(80) NOT NULL,
    price int NOT NULL,
    type VARCHAR (50) NOT NULL,
    CONSTRAINT Subject_pk PRIMARY KEY (id)
);

-- Table: Trainer
CREATE TABLE Trainer (
    id int NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    age int NOT NULL,
    phone int NOT NULL,
    gender varchar(1) NULL,
    salary int NULL,
    CONSTRAINT Trainer_pk PRIMARY KEY (id)
);

CREATE INDEX Trainer_idx_1 USING BTREE ON Trainer (id);

-- Table: Vehicle
CREATE TABLE Vehicle (
    plate int NOT NULL,
    model varchar(255) NOT NULL,
    type varchar(255) NOT NULL,
    date_maintenance date NOT NULL,
    available boolean NOT NULL,
    CONSTRAINT Vehicle_pk PRIMARY KEY (plate)
);

-- Table: Vehicle_Building
CREATE TABLE Vehicle_Building (
    id int NOT NULL,
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

-- Reference: Category_Car_Usage (table: Category)
ALTER TABLE Category ADD CONSTRAINT Category_Car_Usage FOREIGN KEY Category_Car_Usage (Car_Usage_id)
    REFERENCES Car_Usage (id);

-- Reference: Certificate_Category (table: Certificate)
ALTER TABLE Certificate ADD CONSTRAINT Certificate_Category FOREIGN KEY Certificate_Category (Category_id)
    REFERENCES Category (id);

-- Reference: Certificate_Company (table: Certificate)
ALTER TABLE Certificate ADD CONSTRAINT Certificate_Company FOREIGN KEY Certificate_Company (Company_id)
    REFERENCES Company (id);

-- Reference: Data_Maintenance_Vehicle (table: Data_Maintenance)
ALTER TABLE Data_Maintenance ADD CONSTRAINT Data_Maintenance_Vehicle FOREIGN KEY Data_Maintenance_Vehicle (Vehicle_plate)
    REFERENCES Vehicle (plate);

-- Reference: Schedule_association_2 (table: Building_Schedule)
ALTER TABLE Building_Schedule ADD CONSTRAINT Schedule_association_2 FOREIGN KEY Schedule_association_2 (Schedule_id)
    REFERENCES Schedule (id);

-- Reference: Student_Student_Important (table: Student)
ALTER TABLE Student ADD CONSTRAINT Student_Student_Important FOREIGN KEY Student_Student_Important (Student_Important_id)
    REFERENCES Student_Important (id);

-- Reference: Student_association_1 (table: Student_Building)
ALTER TABLE Student_Building ADD CONSTRAINT Student_association_1 FOREIGN KEY Student_association_1 (Student_id)
    REFERENCES Student_Important (id);

-- Reference: Vehicle_Building (table: Vehicle_Building)
ALTER TABLE Vehicle_Building ADD CONSTRAINT Vehicle_Building FOREIGN KEY Vehicle_Building (Building_id)
    REFERENCES Building (id);

-- Reference: Vehicle_association_1 (table: Vehicle_Building)
ALTER TABLE Vehicle_Building ADD CONSTRAINT Vehicle_association_1 FOREIGN KEY Vehicle_association_1 (Vehicle_plate)
    REFERENCES Vehicle (plate);

CREATE TABLE Note_History (
	score int NOT NULL,
    name_subject varchar (80) NOT NULL,
    type_subject varchar (45) NOT NULL,
    name_trainer varchar (255) NOT NULL,
    last_name_trainer varchar (255) NOT NULL,
    date_time datetime NOT NULL,
	Building_id int NOT NULL,
    FOREIGN KEY (Building_id) REFERENCES Building (id)
);


DESCRIBE Building;
-- End of file.

