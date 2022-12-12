DELIMITER //
CREATE TRIGGER Save_Notes_History
AFTER INSERT ON Student_Note FOR EACH ROW
BEGIN
	DECLARE nameStudent varchar (45);
    DECLARE lastNameStudent varchar (45);
	DECLARE nameSubject varchar (45);
    DECLARE typeSubject varchar (45);
    DECLARE nameTrainer varchar (45);
    DECLARE lastNameTrainer varchar (45);

	SELECT Student.first_name, Student.last_name, Subject.name, Subject.category, Trainer.first_name, Trainer.last_name
    into nameStudent, lastNameStudent, nameSubject, typeSubject, nameTrainer, lastNameTrainer from Student_Building
    inner join Student on Student.id = Student_Building.Student_id
    inner join Building on Building.id = Student_Building.Building_id
    inner join Subject on Subject.id = Building.Subject_id
    inner join Trainer on Trainer.id = Building.Trainer_id
    where Student_Building.id = NEW.Student_Building_id;

	INSERT INTO Note_History (name_student, last_name_student, score, name_subject, type_subject, name_trainer, last_name_trainer, date_time)
	VALUES (nameStudent, lastNameStudent, NEW.score, nameSubject, typeSubject, nameTrainer, lastNameTrainer, now());
END //
DELIMITER ;