```sql

-- Lenguaje SQL-LDD 

--crear la base de datos empresa
CREATE DATABASE empresa;
go

--Utilizar la bse de datos creada
use empresa;
go

--crear la tabla empleados
CREATE TABLE empleados (
IdEmpleado int not null,
Nombre varchar(100) not null,
Puesto varchar(50) not null, 
fechaIngreso date,
Salario money not null,
CONSTRAINT pk_empleados
PRIMARY KEY (IdEmpleado)
);
Go

CREATE TABLE Productos(
ProductoId int primary key,
nombreProducto nvarchar (50) not null,
Existencia int not null,
PrecioUnitario money not null,

);
Go

CREATE TABLE Produtos2(
ProductoId int not null identity (1,1),
NombreProducto nvarchar(50) not null,
existencia int not null,
precio money not null,
CONSTRAINT pk_productos2
primary key(ProductoId),
CONSTRAINT unique_nombreProducto
UNIQUE (NombreProducto),
CONSTRAINT chk_existencia
CHECK (existencia>0 AND existencia<=1000),
CONSTRAINT chk_percio
CHECK (precio>0.0)
);
Go

--insertar un producto en productos 
INSERT INTO Productos (ProductoId ,nombreProducto,
Existencia,PrecioUnitario)
values(1,'buritos de frijoles',65,20.99);
GO

INSERT INTO Productos (ProductoId ,nombreProducto,
Existencia,PrecioUnitario)
values(2,'buritos de frijoles',65,20.99);
GO

SELECT *FROM Productos;
Go

--insertat en la tabla producto con identity
INSERT INTO Produtos2 (NombreProducto ,existencia ,precio)
values('buritos ChorizoGurueso',450,459.12);
GO

INSERT INTO Produtos2 (NombreProducto ,existencia ,precio)
values('buritos ChorizoGurueso 2',450,459.12);
GO

INSERT INTO Produtos2 (NombreProducto ,existencia ,precio)
values('Burritos Frijol',999,459.12);
GO

SELECT * FROM Produtos2;

```