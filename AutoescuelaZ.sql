    -- MySQL Workbench Forward Engineering

    SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
    SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
    SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

    -- -----------------------------------------------------
    -- Schema mydb
    -- -----------------------------------------------------
    -- -----------------------------------------------------
    -- Schema Driving_School
    -- -----------------------------------------------------

    -- -----------------------------------------------------
    -- Schema Driving_School
    -- -----------------------------------------------------
    CREATE SCHEMA IF NOT EXISTS `Driving_School` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
    USE `Driving_School` ;

    -- -----------------------------------------------------
    -- Table `Driving_School`.`Car_Usage`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Car_Usage` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `type_use` VARCHAR(45) NOT NULL,
      PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Category`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Category` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `type` CHAR(1) NOT NULL,
      `capacity` VARCHAR(45) NOT NULL,
      `type_car` VARCHAR(45) NOT NULL,
      `Car_Usage_id` INT NOT NULL,
      PRIMARY KEY (`id`),
      INDEX `Category_Car_Usage` (`Car_Usage_id` ASC) VISIBLE,
      CONSTRAINT `Category_Car_Usage`
        FOREIGN KEY (`Car_Usage_id`)
        REFERENCES `Driving_School`.`Car_Usage` (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Subject`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Subject` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `name` VARCHAR(80) NOT NULL,
      `price` INT NOT NULL,
      `type` VARCHAR(50) NOT NULL,
      PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Trainer`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Trainer` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `first_name` VARCHAR(255) NOT NULL,
      `last_name` VARCHAR(255) NOT NULL,
      `age` INT NOT NULL,
      `phone` INT NOT NULL,
      `gender` VARCHAR(1) NULL DEFAULT NULL,
      `salary` INT NULL DEFAULT NULL,
      PRIMARY KEY (`id`),
      INDEX `Trainer_idx_1` USING BTREE (`id`) VISIBLE)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Building`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Building` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `Subject_id` INT NOT NULL,
      `Trainer_id` INT NOT NULL,
      `Category_id` INT NOT NULL,
      PRIMARY KEY (`id`),
      INDEX `Building_Category` (`Category_id` ASC) VISIBLE,
      INDEX `Building_Subject` (`Subject_id` ASC) VISIBLE,
      INDEX `Building_Trainer` (`Trainer_id` ASC) VISIBLE,
      CONSTRAINT `Building_Category`
        FOREIGN KEY (`Category_id`)
        REFERENCES `Driving_School`.`Category` (`id`),
      CONSTRAINT `Building_Subject`
        FOREIGN KEY (`Subject_id`)
        REFERENCES `Driving_School`.`Subject` (`id`),
      CONSTRAINT `Building_Trainer`
        FOREIGN KEY (`Trainer_id`)
        REFERENCES `Driving_School`.`Trainer` (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Schedule`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Schedule` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `time` TIME NOT NULL,
      PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Building_Schedule`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Building_Schedule` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `Building_id` INT NOT NULL,
      `Schedule_id` INT NOT NULL,
      PRIMARY KEY (`id`),
      INDEX `Building_association_2` (`Building_id` ASC) VISIBLE,
      INDEX `Schedule_association_2` (`Schedule_id` ASC) VISIBLE,
      CONSTRAINT `Building_association_2`
        FOREIGN KEY (`Building_id`)
        REFERENCES `Driving_School`.`Building` (`id`),
      CONSTRAINT `Schedule_association_2`
        FOREIGN KEY (`Schedule_id`)
        REFERENCES `Driving_School`.`Schedule` (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Company`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Company` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `name` VARCHAR(255) NOT NULL,
      `phone_number` INT NOT NULL,
      `address` VARCHAR(255) NOT NULL,
      PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Certificate`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Certificate` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `country` VARCHAR(255) NOT NULL,
      `date` DATE NOT NULL,
      `Category_id` INT NOT NULL,
      `Company_id` INT NOT NULL,
      PRIMARY KEY (`id`),
      INDEX `Certificate_idx_1` USING BTREE (`id`) VISIBLE,
      INDEX `Certificate_Category` (`Category_id` ASC) VISIBLE,
      INDEX `Certificate_Company` (`Company_id` ASC) VISIBLE,
      CONSTRAINT `Certificate_Category`
        FOREIGN KEY (`Category_id`)
        REFERENCES `Driving_School`.`Category` (`id`),
      CONSTRAINT `Certificate_Company`
        FOREIGN KEY (`Company_id`)
        REFERENCES `Driving_School`.`Company` (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Vehicle`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Vehicle` (
      `plate` INT NOT NULL AUTO_INCREMENT,
      `model` VARCHAR(255) NOT NULL,
      `type` VARCHAR(255) NOT NULL,
      `date_maintenance` DATE NOT NULL,
      `available` TINYINT(1) NOT NULL,
      PRIMARY KEY (`plate`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Data_Maintenance`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Data_Maintenance` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `plate` VARCHAR(45) NOT NULL,
      `date` DATE NOT NULL,
      `Vehicle_plate` INT NOT NULL,
      PRIMARY KEY (`id`),
      INDEX `Data_Maintenance_Vehicle` (`Vehicle_plate` ASC) VISIBLE,
      CONSTRAINT `Data_Maintenance_Vehicle`
        FOREIGN KEY (`Vehicle_plate`)
        REFERENCES `Driving_School`.`Vehicle` (`plate`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Note_History`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Note_History` (
      `score` INT NOT NULL,
      `name_subject` VARCHAR(80) NOT NULL,
      `type_subject` VARCHAR(45) NOT NULL,
      `name_trainer` VARCHAR(255) NOT NULL,
      `last_name_trainer` VARCHAR(255) NOT NULL,
      `date_time` DATETIME NOT NULL,
      `Building_id` INT NOT NULL,
      INDEX `Building_id` (`Building_id` ASC) VISIBLE,
      CONSTRAINT `Note_History_ibfk_1`
        FOREIGN KEY (`Building_id`)
        REFERENCES `Driving_School`.`Building` (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Student_Important`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Student_Important` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `first_name` VARCHAR(255) NOT NULL,
      `last_name` VARCHAR(255) NOT NULL,
      `age` INT NOT NULL,
      PRIMARY KEY (`id`),
      INDEX `Student_Important_idx_1` USING BTREE (`id`) VISIBLE)
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Student`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Student` (
      `Student_Important_id` INT NOT NULL,
      `phone` INT NOT NULL,
      `gender` ENUM('F', 'M') NOT NULL,
      INDEX `Student_Student_Important` (`Student_Important_id` ASC) VISIBLE,
      CONSTRAINT `Student_Student_Important`
        FOREIGN KEY (`Student_Important_id`)
        REFERENCES `Driving_School`.`Student_Important` (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Student_Building`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Student_Building` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `Student_id` INT NOT NULL,
      `Building_id` INT NOT NULL,
      PRIMARY KEY (`id`),
      INDEX `Building_association_1` (`Building_id` ASC) VISIBLE,
      INDEX `Student_association_1` (`Student_id` ASC) VISIBLE,
      CONSTRAINT `Building_association_1`
        FOREIGN KEY (`Building_id`)
        REFERENCES `Driving_School`.`Building` (`id`),
      CONSTRAINT `Student_association_1`
        FOREIGN KEY (`Student_id`)
        REFERENCES `Driving_School`.`Student_Important` (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Student_Note`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Student_Note` (
      `score` INT NOT NULL,
      `Building_id` INT NOT NULL,
      INDEX `Building_id` (`Building_id` ASC) VISIBLE,
      CONSTRAINT `Student_Note_ibfk_1`
        FOREIGN KEY (`Building_id`)
        REFERENCES `Driving_School`.`Student_Building` (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    -- -----------------------------------------------------
    -- Table `Driving_School`.`Vehicle_Building`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `Driving_School`.`Vehicle_Building` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `Vehicle_plate` INT NOT NULL,
      `Building_id` INT NOT NULL,
      PRIMARY KEY (`id`),
      INDEX `Vehicle_Building` (`Building_id` ASC) VISIBLE,
      INDEX `Vehicle_association_1` (`Vehicle_plate` ASC) VISIBLE,
      CONSTRAINT `Vehicle_association_1`
        FOREIGN KEY (`Vehicle_plate`)
        REFERENCES `Driving_School`.`Vehicle` (`plate`),
      CONSTRAINT `Vehicle_Building`
        FOREIGN KEY (`Building_id`)
        REFERENCES `Driving_School`.`Building` (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;


    SET SQL_MODE=@OLD_SQL_MODE;
    SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
    SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
