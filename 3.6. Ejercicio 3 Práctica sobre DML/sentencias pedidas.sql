--1
SELECT Cientificos.DNI, Cientificos.NomApels, Proyecto.ID, Proyecto.Nombre
FROM Cientificos
    INNER JOIN Asignado_A ON Cientificos.DNI = Asignado_A.Cientifico
    INNER JOIN Proyecto ON Asignado_A.Proyecto = Proyecto.ID;
--2
SELECT Cientificos.DNI, Cientificos.NomApels, COUNT(Asignado_A.Proyecto) AS NumProyectosAsignados
FROM Cientificos
    LEFT JOIN Asignado_A ON Cientificos.DNI = Asignado_A.Cientifico
GROUP BY Cientificos.DNI;
--3
SELECT Proyecto.ID, Proyecto.Nombre, COUNT(Asignado_A.Cientifico) AS NumCientificosAsignados
FROM Proyecto
    LEFT JOIN Asignado_A ON Proyecto.ID = Asignado_A.Proyecto
GROUP BY Proyecto.ID;
--4
SELECT Cientificos.DNI, Cientificos.NomApels, SUM(Proyecto.Horas) AS TotalHoras
FROM Cientificos
    INNER JOIN Asignado_A ON Cientificos.DNI = Asignado_A.Cientifico
    INNER JOIN Proyecto ON Asignado_A.Proyecto = Proyecto.ID
GROUP BY Cientificos.DNI;
--5
SELECT Cientificos.DNI, Cientificos.NomApels
FROM Cientificos
    INNER JOIN Asignado_A ON Cientificos.DNI = Asignado_A.Cientifico
    INNER JOIN Proyecto ON Asignado_A.Proyecto = Proyecto.ID
GROUP BY Cientificos.DNI,
HAVING COUNT(Asignado_A.Proyecto) > 1
    AND AVG(Proyecto.Horas) > 80;

