-- Quiero conocer a todos los clientes aprobados con el instructor de teoría llamado ‘Juan Perez’
SET @trainer_id = (SELECT id
                   FROM Trainer
                   WHERE first_name = 'Juan');

EXPLAIN (SELECT SI.first_name, SI.last_name, SI.age
 FROM Student_Building AS SB
 INNER JOIN Student_Important SI on SI.id = SB.Student_id
 WHERE Building_id
     IN (SELECT B.id FROM Building AS B WHERE B.Trainer_id = @trainer_id)
   AND (SELECT AVG(score) FROM Student_Note AS S WHERE S.Student_Building_id = SB.Student_id) >= 51);


-- Agrupar por cada instructor el número de clientes inscritos en cada grupo de la categoría A, inscritos en la fecha 1 al 30 de mayo del 2020
SELECT COUNT(SB.Student_id)
FROM Building AS B
INNER JOIN Student_Building SB ON B.id = SB.Building_id
WHERE SB.inscription_date IN ('1-04-2020', '30-04-2020')
AND B.Category_id = (SELECT id FROM Category AS C WHERE C.type = 'A')
GROUP BY B.Trainer_id;