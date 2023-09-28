CREATE TABLE Empleados (
    DNI VARCHAR(8) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(255) NOT NULL,
    Departamento INT NOT NULL);
CREATE TABLE Departamentos (
    Codigo INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Presupuesto INT NOT NULL);
ALTER TABLE Empleados ADD FOREIGN KEY (Departamento) REFERENCES Departamentos(Codigo)
INSERT INTO Departamentos
VALUES (14, 'Informática', 100000),
    (37, 'Otro', 55000),
    (77, 'Investigación', 70000);
    
INSERT INTO Empleados 
VALUES (11111111, 'Juan', 'Pérez', 14),
    (22222222, 'Margarita', 'López', 37),
    (33333333, 'Timón', 'Pumba', 77),
    (44444444, 'Ana', 'López', 14);