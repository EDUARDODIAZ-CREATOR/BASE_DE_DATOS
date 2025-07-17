--Crear base de datos empresapatito
CREATE DATABASE empresapatito;
go 

--usar la base de datos 

use empresapatito;
go

--crear una tabla empleados 
CREATE TABLE empleados(
IdEmpleado int not null, 
Nombre varchar(100) not null,
Puesto varchar(50),
fechaIngreso date ,
salario decimal (10,2)

CONSTRAINT pk_empleados
PRIMARY KEY (IdEmpleado)
);
go

--agregar una columna en la tabla empleados

ALTER TABLE empleados
ADD CorreoElectronico VARCHAR (100);
GO

SELECT * FROM empleados;

--modificar el tipo de dato de un campo
ALTER TABLE empleados
ALTER COLUMN Salario money not null;

--Renombrar un campo
EXEC sp_rename 'empleados.CorreoElectronico',
               'Email', 'COLUMN';
			   GO

--crear tabla departamentos
CREATE TABLE departamentos(
  IdDepartamento int not null identity(1,1) primary key,
  NombreDepto varchar(100)

);
go

--agregar un campo a la tabla empleados
--para que sea una foreign key
ALTER TABLE empleados 
ADD IdDepartamento int not null;
GO

--agregar llave foranea

ALTER TABLE empleados 
ADD CONSTRAINT fk_empleados_departamento
FOREIGN KEY (IdDepartamento)
REFERENCES  departamentos(IdDepartamento);
GO

--elimiar la clave primaria de empleados 
ALTER TABLE empleados
DROP CONSTRAINT pk_empleados;
go

--Eliminar la foreing key de la tabla empleados 
ALTER TABLE empleados
DROP CONSTRAINT fk_empleados_departamento;
go 

--eliminar la primary key de departamento 

ALTER TABLE departamentos
DROP CONSTRAINT PK__departam__787A433DBB56055F;
go

--crear un constraint de verificacion en salario
ALTER TABLE empleados 
ADD CONSTRAINT chk_salario
CHECK (Salario > 0.0);
go 


CREATE TABLE categoria (
Id int not null,
Nombre varchar(20),
estatus char (1) DEFAULT 'A'

);
go

INSERT INTO categoria
VALUES (1,'carnes','d');

INSERT INTO categoria
VALUES (1,'carnes',default);

select * from categoria;

DROP TABLE categoria;
go

CREATE TABLE Categoria(
Id int not null primary key default -1,
Nombre varchar(20),
estatus char (1) DEFAULT 'A'
);
go

INSERT INTO categoria
VALUES (1,'carnes',default);

INSERT INTO categoria
VALUES (default,'carnes',default);

SELECT * FROM Categoria

--eliminar la columna email
ALTER TABLE Empleados 
DROP COLUMN Email;

--emininar tabla empleados

ALTER TABLE empleados
ADD CONSTRAINT pk_empleados
PRIMARY KEY (IdEmpleado);
go

ALTER TABLE departamentos
ADD CONSTRAINT pk_departamento
PRIMARY KEY (IdDepartamento);
go

--eliminar las tablas
DROP TABLE empleados;
go 

DROP TABLE departamentos;
go

DROP TABLE Categoria;
go 

use master;
go 
--eliminar la bse de datos
DROP DATABASE empresapatito;