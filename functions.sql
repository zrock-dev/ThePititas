## Realizar una función que me devuelva el número de clientes inscrito en una materia dada.
# Status: Tested.
DROP FUNCTION amount_students_subject;
DELIMITER //
CREATE FUNCTION amount_students_subject(subject_name VARCHAR(255))
    RETURNS INT
    DETERMINISTIC
BEGIN
    RETURN (SELECT COUNT(Student_id)
            FROM Student_Building
            WHERE Student_Building.Building_id
                      IN (SELECT id
                          FROM Building
                          WHERE Subject_id = (SELECT id FROM Subject WHERE name = subject_name))
            );
END;

## Realizar una función que me devuelva el número de clientes reprobadas o aprobadas dado por un instructor en específico.
# Status: Tested.
DELIMITER //
CREATE FUNCTION amount_students_status(trainer_last_name VARCHAR(255), _filter ENUM('Approved', 'Reproved'))
    RETURNS INT
    DETERMINISTIC
BEGIN
    DECLARE trainer_identifier INT;

    SET trainer_identifier = (SELECT id from Trainer WHERE last_name = trainer_last_name);

    IF _filter = 'Approved' THEN
        RETURN (SELECT COUNT(Student_id)
                FROM Student_Building AS SB
                WHERE Building_id IN (SELECT B.id FROM Building AS B WHERE B.Trainer_id = trainer_identifier)
                  AND (SELECT AVG(score) FROM Student_Note AS S WHERE S.Student_Building_id = SB.Student_id) >= 51);
    ELSE
        RETURN (SELECT COUNT(Student_id)
                FROM Student_Building AS SB
                WHERE Building_id IN (SELECT B.id FROM Building AS B WHERE B.Trainer_id = trainer_identifier)
                  AND (SELECT AVG(score) FROM Student_Note AS S WHERE S.Student_Building_id = SB.Student_id) < 51);
    END IF;
END //


# Executed functions
-- first function
SELECT amount_students_subject("driving");

-- second function
SELECT amount_students_status("Casper", 'Approved');