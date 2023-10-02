CREATE TABLE Cientificos(
    DNI varchar(8) PRIMARY KEY,
    NomApels nvarchar(255)
);
CREATE TABLE Proyecto(
    ID Char(4) PRIMARY KEY,
    Nombre nvarchar(255),
    Horas INT
);
CREATE TABLE Asignado_A(
    Cientifico VARCHAR(8) REFERENCES Cientificos(DNI),
    Proyecto char(4) REFERENCES Proyecto(ID),
    PRIMARY KEY (Cientifico, Proyecto)
);