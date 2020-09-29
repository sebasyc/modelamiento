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
