USE escuela;

INSERT INTO Profesores (Dni, Nombre, Apellidos, Email, Especialidad) VALUES
('11111111H','Carmen','Soler Ruiz','carmen.soler@escuela.es','Matemáticas'),
('22222222J','Pedro','Gil Mora','pedro.gil@escuela.es','Lengua'),
('33333333P','Laura','Vega Sanz','laura.vega@escuela.es','Inglés'),
('44444444A','Raúl','Ortega León','raul.ortega@escuela.es','Biología'),
('55555555K','Marta','Campos Diez','marta.campos@escuela.es','Educación Física');

INSERT INTO Cursos (Nombre, TutorId) VALUES
('1º ESO A', 1),
('2º ESO B', 2),
('3º ESO A', 3);

INSERT INTO Asignaturas (Codigo, Nombre, HorasSemanales, ProfesorId) VALUES
('MAT','Matemáticas',4,1),
('LEN','Lengua',4,2),
('ING','Inglés',3,3),
('BIO','Biología',3,4),
('EDF','Educación Física',2,5);

INSERT INTO Alumnos (Dni, Nombre, Apellidos, FechaNacimiento, Email, CursoId) VALUES
('12345678A','Lucía','Martínez Gómez','2013-03-12','lucia.martinez@escuela.es',1),
('23456789B','Carlos','Ruiz Sanz','2013-07-25','carlos.ruiz@escuela.es',1),
('34567890C','Marta','López Vidal','2012-11-02','marta.lopez@escuela.es',2),
('45678901D','Javier','Pérez Ortiz','2012-01-30','javier.perez@escuela.es',2),
('56789012E','Elena','Navarro Díaz','2011-09-18','elena.navarro@escuela.es',3),
('67890123F','Pablo','Serrano Mena','2011-05-07','pablo.serrano@escuela.es',3);

INSERT INTO Notas (AlumnoId, AsignaturaId, Evaluacion, Nota) VALUES
(1,1,'1ª Evaluación',7.5),(1,2,'1ª Evaluación',8.0),(1,3,'1ª Evaluación',6.5),
(2,1,'1ª Evaluación',4.0),(2,2,'1ª Evaluación',5.5),(2,3,'1ª Evaluación',3.5),
(3,1,'1ª Evaluación',9.5),(3,4,'1ª Evaluación',9.0),(3,5,'1ª Evaluación',10),
(4,2,'1ª Evaluación',6.0),(4,3,'1ª Evaluación',7.0),
(5,1,'1ª Evaluación',5.0),(5,4,'1ª Evaluación',6.5),
(6,5,'1ª Evaluación',8.5);