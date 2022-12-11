USE DriverCollege;
SELECT * FROM Student;

-- Recuperar todos los clientes inscritos con el instructor Ariel Blanco
SELECT
    Student.first_name,
    Student.last_name,
    Trainer.first_name,
    Trainer.last_name,
    Subject.name
FROM Student_Building
inner join Student on Student.id = Student_Building.Student_id
inner join Building on Building.id = Student_Building.Building_id
inner join Subject on Subject.id = Building.Subject_id
inner join Trainer on Trainer.id = Building.Trainer_id
where Trainer.first_name = "Ariel" and Trainer.last_name = "Blanco";

-- Recuperar todos los clientes inscritos en la categoría A y P
SELECT Student.first_name, Student.last_name, Subject.name, Category.type
FROM Student_Building
inner join Student on Student.id = Student_Building.Student_id
inner join Building on Building.id = Student_Building.Building_id
inner join Subject on Subject.id = Building.Subject_id
inner join Category on Category.id = Building.Category_id
where Category.type in ('A', 'P');

# Quiero conocer a todos los clientes aprobados con el instructor de teoría llamado ‘Juan Perez’
SET @trainer_id = (SELECT id
                   FROM Trainer
                   WHERE first_name = 'Juan');

(SELECT SI.first_name, SI.last_name, SI.age
 FROM Student_Building AS SB
 INNER JOIN Student SI on SI.id = SB.Student_id
 WHERE Building_id
     IN (SELECT B.id FROM Building AS B WHERE B.Trainer_id = @trainer_id)
   AND (SELECT AVG(score) FROM Student_Note AS S WHERE S.Student_Building_id = SB.Student_id) >= 51);


# Agrupar por cada instructor el número de clientes inscritos en cada grupo de la categoría A, inscritos en la fecha 1 al 30 de mayo del 2020
SELECT COUNT(SB.Student_id)
FROM Building AS B
INNER JOIN Student_Building SB ON B.id = SB.Building_id
WHERE SB.inscription_date IN ('1-04-2020', '30-04-2020')
AND B.Category_id = (SELECT id FROM Category AS C WHERE C.type = 'A')
GROUP BY B.Trainer_id;