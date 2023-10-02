CREATE TABLE Fabricantes ( 
 Codigo INT IDENTITY(1,1) PRIMARY KEY, 
 Nombre NVARCHAR(100) UNIQUE 
 ); 

CREATE TABLE Articulos ( 
 Codigo INT IDENTITY(1,1), 
 Nombre NVARCHAR(100), 
 Precio INT, 
 Fabricante INT, 
 FOREIGN KEY (Codigo) REFERENCES Fabricantes(Codigo) 
 ); 

INSERT INTO Fabricantes (Nombre) VALUES 
('Fabricante1'), 
('Fabricante2'), 
('Fabricante3'), 
('Fabricante4'), 
('Fabricante5'), 
('Fabricante6'), 
('Fabricante7'), 
('Fabricante8'), 
('Fabricante9'), 
('Fabricante10'); 

INSERT INTO Articulos (Nombre, Precio, Fabricante) VALUES 
('Articulo1', 100, 1), 
('Articulo2', 150, 2), 
('Articulo3', 200, 3), 
('Articulo4', 120, 4), 
('Articulo5', 180, 5), 
('Articulo6', 90, 6), 
('Articulo7', 130, 7), 
('Articulo8', 160, 8), 
('Articulo9', 110, 9), 
('Articulo10', 140, 10); 