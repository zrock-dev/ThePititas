## Untested - Approved
DELIMITER //
CREATE FUNCTION amount_students_subject(subject_name VARCHAR(255))
    RETURNS INT
    DETERMINISTIC
BEGIN
    # validate subject name
    DECLARE building_id INT;
    SET building_id = (SELECT id FROM Building WHERE Subject_id= (SELECT id FROM Subject WHERE name=subject_name));
    RETURN (SELECT COUNT(Student_id) FROM Student_Building WHERE Student_Building.Building_id = building_id);
END;