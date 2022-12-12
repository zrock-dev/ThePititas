-- Recuperar todos los clientes inscritos con el instructor Lorenz Beer
# Status: Untested
SELECT
    Student.first_name AS Name_Student,
    Student.last_name AS Last_Name_Student,
    Trainer.first_name AS Name_Trainer,
    Trainer.last_name AS Last_Name_Trainer,
    Subject.name AS Name_Subject
FROM Student_Building
inner join Student on Student.id = Student_Building.Student_id
inner join Building on Building.id = Student_Building.Building_id
inner join Subject on Subject.id = Building.Subject_id
inner join Trainer on Trainer.id = Building.Trainer_id
where Trainer.first_name = 'Lorenz' and Trainer.last_name = 'Beer';

-- Recuperar todos los clientes inscritos en la categoría A y P
# Status: Untested
SELECT
    Student.first_name AS Name_Student,
    Student.last_name AS Last_Name_Student,
    Subject.name AS Name_Subject,
    Category.type AS Type_Category
FROM Student_Building
inner join Student on Student.id = Student_Building.Student_id
inner join Building on Building.id = Student_Building.Building_id
inner join Subject on Subject.id = Building.Subject_id
inner join Category on Category.id = Building.Category_id
where Category.type in ('A', 'P');

-- Recuperar materias dictadas por instructores de sexo 'M' y edades entre '20' y '30' años. (Daniel)
SELECT s.name
FROM Subject as s
WHERE s.id in (SELECT b.Subject_id
              FROM Building as b
              WHERE b.Trainer_id in (SELECT t.id
                                    FROM Trainer as t
                                    WHERE t.gender = 'M' AND t.age BETWEEN 20 AND 30));

-- Realizar una consulta calculando el promedio de edad inscritos en la categoría M
SELECT AVG(s.age) FROM  Student as s
                  WHERE s.id in (SELECT sb.Student_id
                                 FROM Student_Building as sb
                                 WHERE sb.Building_id in (SELECT b.id FROM Building as b WHERE b.Category_id in (SELECT c.id FROM Category as c WHERE c.type = 'M')));

# Agrupar por cada instructor el número de clientes inscritos en cada grupo de la categoría A, inscritos en la fecha 1 al 30 de mayo del 2020
SELECT COUNT(SB.Student_id)
FROM Building AS B
INNER JOIN Student_Building SB ON B.id = SB.Building_id
WHERE SB.inscription_date
          BETWEEN '2020-03-07' AND '2022-07-31'
AND B.Category_id
        IN (SELECT id FROM Category AS C WHERE C.type = 'A')
GROUP BY B.Trainer_id;

SELECT * FROM Student_Building WHERE inscription_date BETWEEN '2020-03-07' AND '2022-07-31';

# Quiero conocer a todos los clientes aprobados con el instructor de teoría llamado ‘Burley Friesen’
SET @trainer_id = (SELECT id
                   FROM Trainer
                   WHERE first_name = 'Juan'
                     AND last_name = 'Perez');

(SELECT SI.first_name, SI.last_name, SI.gender, SI.phone
 FROM Student_Building AS SB
 INNER JOIN Student SI on SI.id = SB.Student_id
 WHERE Building_id
     IN (SELECT B.id FROM Building AS B WHERE B.Trainer_id = @trainer_id)
   AND (SELECT AVG(score) FROM Student_Note AS S WHERE S.Student_Building_id = SB.Student_id) >= 70);



