--1
SELECT Apellidos
FROM Empleados;
--2
SELECT DISTINCT Apellidos
FROM Empleados;
--3
SELECT *
FROM Empleados
WHERE Apellidos='López';

--4
SELECT *
FROM Empleados
WHERE (Apellidos='López' OR Apellidos='Pérez');

--5
SELECT *
FROM Empleados
WHERE Departamento=14;

--6
SELECT *
FROM Empleados
WHERE (Departamento=37 and Departamento=77);

--7
SELECT *
FROM Empleados
WHERE Apellidos like 'P%';

--8
SELECT SUM(Presupuesto)
FROM Departamentos;
--9
SELECT COUNT(DNI)
FROM Empleados
GROUP BY Departamento;
--10
SELECT *
FROM Empleados INNER JOIN Departamentos ON Empleados.Departamento = Departamentos.Codigo;
--11
SELECT Empleados.Nombre, Empleados.Apellidos, Departamentos.Nombre, Departamentos.Presupuesto
FROM Empleados INNER JOIN Departamentos ON Empleados.Departamento = Departamentos.Codigo;
--12
SELECT Empleados.Nombre, Empleados.Apellidos
FROM Empleados INNER JOIN Departamentos ON Empleados.Departamento = Departamentos.Codigo
WHERE Departamentos.Presupuesto>60000;

--13
SELECT *
FROM Departamentos
WHERE Presupuesto>(SELECT AVG(Presupuesto)
FROM Departamentos);

--14
SELECT Departamentos.Nombre
From Departamentos INNER JOIN Empleados ON Departamentos.Codigo = Empleados.Departamento
GROUP BY Departamentos.Nombre
HAVING (COUNT(Empleados.Departamento))>2;

--15
INSERT into Departamentos
VALUES
    (11, 'Calidad', 40000);
INSERT INTO Empleados
VALUES
    ('89267109', 'Esther', 'Vázquez', 11);
--16
UPDATE Departamentos SET Presupuesto=Presupuesto*0.9;
--17
UPDATE Empleados SET Departamento=14 WHERE Departamento=77
;
--18
DELETE  FROM Empleados WHERE Departamento=14;
--19
DELETE FROM Empleados
WHERE Departamento IN (
    SELECT Departamentos.Codigo
FROM Departamentos
WHERE Presupuesto > 60000
);
