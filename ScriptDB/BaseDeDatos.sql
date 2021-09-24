CREATE TABLE student(
studentId integer NOT NULL PRIMARY KEY,
firstname varchar(20),
lastname varchar(10),
yearLevel varchar (20)
);

CREATE TABLE curso(
codigoCurso integer  NOT NULL PRIMARY KEY,
nombreCurso varchar(10),
creditos integer,
semestre integer,
numeroEstudiantes integer
);

CREATE TABLE curso_student(
studentId integer,
codigoCurso integer,
 FOREIGN KEY(studentId) REFERENCES  student(studentId),
 FOREIGN KEY(codigoCurso) REFERENCES curso (codigoCurso)
);

