## Realizar una función que me devuelva el número de clientes inscrito en una materia dada.
# Status: Untested
DELIMITER //
CREATE FUNCTION amount_students_subject(subject_name VARCHAR(255))
    RETURNS INT
    DETERMINISTIC
BEGIN
    # validate subject name
    DECLARE building_id INT;
    SET building_id = (SELECT id FROM Building WHERE Subject_id = (SELECT id FROM Subject WHERE name = subject_name));
    RETURN (SELECT COUNT(Student_id) FROM Student_Building WHERE Student_Building.Building_id = building_id);
END;

## Realizar una función que me devuelva el número de clientes reprobadas o aprobadas dado por un instructor en específico.
DELIMITER //
CREATE FUNCTION amount_students_status(trainer_last_name VARCHAR(255), _filter ENUM('Approved', 'Reproved'))
    RETURNS INT
    DETERMINISTIC
BEGIN
    DECLARE trainer_identifier INT;

    SET trainer_identifier = (SELECT id from Trainer WHERE last_name = trainer_last_name);

    IF _filter = 'Approved' THEN
        RETURN (SELECT COUNT(Student_id)
                FROM Student_Building
                WHERE Building_id IN (SELECT B.id FROM Building AS B WHERE B.Trainer_id = trainer_identifier)
                  AND Student_Building.score >= 51);
    ELSE
        RETURN (SELECT COUNT(Student_id)
                FROM Student_Building
                WHERE Building_id IN (SELECT B.id FROM Building AS B WHERE B.Trainer_id = trainer_identifier)
                  AND Student_Building.score < 51);
    END IF;
END //