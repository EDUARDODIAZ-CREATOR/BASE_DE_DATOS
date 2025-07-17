#Crear base de datos empresapatito
CREATE DATABASE empresapatito;

#usar la base de datos 

use empresapatito;

#crear una tabla empleados 
CREATE TABLE empleados(
IdEmpleado int not null, 
Nombre varchar(100) not null,
Puesto varchar(50),
fechaIngreso date ,
salario decimal (10,2),
CONSTRAINT pk_empleados
PRIMARY KEY (IdEmpleado)
);

#agregar una columna en la tabla empleados

ALTER TABLE empleados
ADD column 
CorreoElectronico VARCHAR (100);


SELECT * FROM empleados;

#modificar el tipo de dato de un campo
ALTER TABLE empleados
MODIFY COLUMN Salario 
DECIMAL(12,2) not null;

#Renombrar un campo
ALTER TABLE empleados
RENAME COLUMN CorreoElectronico to Email;

#crear tabla departamentos
CREATE TABLE departamentos(
  IdDepartamento int not null auto_increment primary key,
  NombreDepto varchar(100)
);


#agregar un campo a la tabla empleados
#para que sea una foreign key

ALTER TABLE empleados 
ADD IdDepartamento int not null;


#agregar llave foranea

ALTER TABLE empleados 
ADD CONSTRAINT fk_empleados_departamento
FOREIGN KEY (IdDepartamento)
REFERENCES  departamentos(IdDepartamento);


#elimiar la clave primaria de empleados 
ALTER TABLE empleados
DROP PRIMARY KEY;


#Eliminar la foreing key de la tabla empleados 
ALTER TABLE empleados
DROP FOREIGN KEY 
fk_empleados_departamento;

#Eliminar el auto_increment
ALTER TABLE departamentos
MODIFY COLUMN IdDepartamento int not null;

#eliminar la primary key de departamento 

ALTER TABLE departamentos
DROP PRIMARY KEY;

#crear un constraint de verificacion en salario

ALTER TABLE empleados 
ADD CONSTRAINT chk_salario
CHECK (Salario > 0.0);


CREATE TABLE categoria (
Id int not null,
Nombre varchar(20),
estatus char (1) DEFAULT 'A'

);


INSERT INTO categoria
VALUES (1,'carnes','d');

INSERT INTO categoria
VALUES (1,'carnes',default);

select * from categoria;

DROP TABLE categoria;

CREATE TABLE Categoria(
Id int not null primary key default -1,
Nombre varchar(20),
estatus char (1) DEFAULT 'A'
);


INSERT INTO categoria
VALUES (1,'carnes',default);

INSERT INTO categoria
VALUES (default,'carnes',default);

SELECT * FROM Categoria;

#eliminar la columna email
ALTER TABLE Empleados 
DROP COLUMN Email;

#emininar tabla empleados

ALTER TABLE empleados
ADD CONSTRAINT pk_empleados
PRIMARY KEY (IdEmpleado);


ALTER TABLE departamentos
ADD CONSTRAINT pk_departamento
PRIMARY KEY (IdDepartamento);


#eliminar las tablas
DROP TABLE empleados;


DROP TABLE departamentos;


DROP TABLE Categoria;


#eliminar la bse de datos
DROP DATABASE empresapatito;