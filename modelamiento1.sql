--CASO 1
CREATE TABLE departamento (
id SERIAL PRIMARY KEY,
nombre VARCHAR(50));

CREATE TABLE trabajador (
id SERIAL PRIMARY KEY,
id_departamento INT,
nombre VARCHAR(50),
rut VARCHAR(20),
direccion VARCHAR(250),
FOREIGN KEY (id_departamento) REFERENCES departamento(id));

CREATE TABLE liquidaciones (
id_trabajador INT,
nombre VARCHAR(50),
FOREIGN KEY (id_trabajador) REFERENCES trabajador(id));

--CASO2
CREATE TABLE curso (
id SERIAL PRIMARY KEY,
nombre_curso VARCHAR(50));

CREATE TABLE profesor (
id SERIAL PRIMARY KEY,
nombre VARCHAR(50),
departamento VARCHAR(50));

CREATE TABLE alumno (
id SERIAL PRIMARY KEY,
id_profesor INT,
id_curso INT,
nombre_alumno VARCHAR(50),
rut VARCHAR(20),
FOREIGN KEY (id_profesor) REFERENCES profesor(id),
FOREIGN KEY (id_curso) REFERENCES curso(id));

CREATE TABLE prueba (
id_profesor INT,
id_alumno INT,
puntaje INT,
FOREIGN KEY (id_profesor) REFERENCES profesor(id),
FOREIGN KEY (id_alumno) REFERENCES alumno(id));