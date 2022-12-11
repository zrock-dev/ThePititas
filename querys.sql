-- Quiero conocer a todos los clientes aprobados con el instructor de teoría llamado ‘Juan Perez’
SELECT *
FROM Student_Building

-- First Consultation
SELECT Student_Important.first_name, Student_Important.last_name, Trainer.first_name, Trainer.last_name, Subject.name
FROM Student_Building
inner join Student_Important on Student_Important.id = Student_Building.Student_id
inner join Building on Building.id = Student_Building.Building_id
inner join Subject on Subject.id = Building.Subject_id
inner join Trainer on Trainer.id = Building.Trainer_id
where Trainer.first_name = "Ariel" and Trainer.last_name = "Blanco";

-- Second Consultation
SELECT Student_Important.first_name, Student_Important.last_name, Subject.name, Category.type
FROM Student_Building
inner join Student_Important on Student_Important.id = Student_Building.Student_id
inner join Building on Building.id = Student_Building.Building_id
inner join Subject on Subject.id = Building.Subject_id
inner join Category on Category.id = Building.Category_id
where Category.type in ("A", "P");