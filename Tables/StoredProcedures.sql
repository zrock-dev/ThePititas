# Procedimiento almacenado para cambiar el nombre de la compañia
DELIMITER //
CREATE PROCEDURE set_name_company(IN id_company INT, IN new_name_company VARCHAR(255))
BEGIN
    UPDATE Company
        SET
            Company.name = new_name_company
    WHERE Company.id = id_company;
END //
DELIMITER ;