--1
SELECT Nombre, Precio
FROM Articulos;
--2
SELECT Nombre
FROM Artículos
WHERE Precio >= 200;
--3
SELECT *
FROM Artículos
WHERE Precio BETWEEN 60 AND 120;
--4
SELECT Nombre, Precio * 35 AS Precio_Pesos
FROM Artículos;
--5
SELECT AVG(Precio) AS "Precio Medio"
FROM Articulos
WHERE Fabricante = 2;
--6
SELECT COUNT(*) AS "Número de Artículos"
FROM Articulos
WHERE Precio >= 180;
--7
SELECT AVG(Precio) AS Precio_Promedio
FROM Articulos;
--8
SELECT Nombre, Precio
FROM Articulos
WHERE Precio >= 180
ORDER BY Precio DESC, Nombre ASC;
--9
SELECT A.Fabricante,
    A.Nombre,
    A.Precio,
    F.Nombre AS NombreFabricante
FROM Articulos A
    JOIN Fabricantes F ON A.Fabricante = F.Codigo;
--10
SELECT A.Nombre,
    A.Precio,
    F.Nombre AS NombreFabricante
FROM Articulos A
    JOIN Fabricantes F ON A.Fabricante = F.Codigo;
--11
SELECT Codigo, AVG(Precio) AS PrecioMedio
FROM Articulos
GROUP BY Codigo;
--12
SELECT F.Nombre AS 'Nombre Fabricante',
    AVG(A.Precio) AS 'Precio Medio'
FROM Articulos AS A
    JOIN Fabricantes AS F
    ON A.Fabricante = F.Codigo
GROUP BY F.Nombre;
--13
SELECT F.Nombre AS 'Nombre Fabricante'
FROM Articulos AS A
    JOIN Fabricantes AS F
    ON A.Fabricante = F.Codigo
GROUP BY F.Nombre
HAVING AVG(A.Precio) >= 150;
--14
SELECT Nombre, Precio
FROM Articulos
WHERE Precio = (SELECT MIN(Precio)
FROM Articulos);
--15
SELECT F.Nombre AS 'Nombre Proveedor',
    A.Nombre AS 'Nombre Articulo',
    A.Precio AS 'Precio Articulo'
FROM Articulos AS A
    JOIN Fabricantes AS F ON A.Fabricante = F.Codigo
    JOIN ( 
        SELECT Fabricante, MAX(Precio) AS 'Precio Maximo'
    FROM Articulos
    GROUP BY Fabricante 
    ) AS Subconsulta
    ON A.Fabricante = Subconsulta.Fabricante AND A.Precio = Subconsulta.[Precio Maximo]
--16 
INSERT INTO Articulos
    (Codigo, Nombre, Precio, Fabricante)
VALUES
    (001, 'Altavoces', 70, 2);
--17
UPDATE Articulos 
SET Nombre = 'Impresora Laser' 
WHERE Codigo = 8;
--18
UPDATE Articulos 
SET Precio = Precio * 0.9;
--19
UPDATE Articulos 
SET Precio = Precio - 10 
WHERE Precio >= 120; 