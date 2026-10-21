CREATE DATABASE escuela;
USE escuela;

CREATE TABLE Cursos (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Tutor VARCHAR(100)
);

CREATE TABLE Alumnos (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Dni VARCHAR(9) NOT NULL UNIQUE,
    Nombre VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(100) NOT NULL,
    FechaNacimiento DATE NOT NULL,
    Email VARCHAR(100),
    CursoId INT,
    FOREIGN KEY (CursoId) REFERENCES Cursos(Id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE Asignaturas (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Codigo VARCHAR(10) NOT NULL UNIQUE,
    Nombre VARCHAR(50) NOT NULL,
    HorasSemanales INT NOT NULL CHECK (HorasSemanales > 0)
);

CREATE TABLE Notas (
    AlumnoId INT NOT NULL,
    AsignaturaId INT NOT NULL,
    Evaluacion VARCHAR(20) NOT NULL,
    Nota DECIMAL(4,2) NOT NULL CHECK (Nota >= 0 AND Nota <= 10),
    PRIMARY KEY (AlumnoId, AsignaturaId, Evaluacion),
    FOREIGN KEY (AlumnoId) REFERENCES Alumnos(Id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (AsignaturaId) REFERENCES Asignaturas(Id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Boletines (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    AlumnoId INT NOT NULL,
    Evaluacion VARCHAR(20) NOT NULL,
    NotaMedia DECIMAL(4,2) NOT NULL,
    Fecha DATE NOT NULL,
    FOREIGN KEY (AlumnoId) REFERENCES Alumnos(Id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);