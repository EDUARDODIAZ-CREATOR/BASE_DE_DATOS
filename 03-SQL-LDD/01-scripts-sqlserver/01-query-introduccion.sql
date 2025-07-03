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









--crear 2 tablas con razon de cardinalidad de 1 a n con participacion total,
--esto quiere decir que la foreign es not null

CREATE TABLE categoria(
Categoriaid int not null identity(1,1),
NombreCategoria nvarchar(20) not null,
CONSTRAINT pk_categoria 
PRIMARY KEY (Categoriaid),
CONSTRAINT unique_nombrecategoria
UNIQUE (NombreCategoria)
);
GO

CREATE TABLE producto3(
productoid int not null identity(1,1),
NombreProducto nvarchar(20) not null,
Existencia int not null,
PrecioUnitario money not null,
CategoriaId int not null,
CONSTRAINT pk_producto3
PRIMARY KEY (productoid),
CONSTRAINT chk_existencia3
CHECK (Existencia > 0 and Existencia<=0),
CONSTRAINT chk_precioUnitario
CHECK (PrecioUnitario>0.0),
CONSTRAINT unique_nombreproducto3
UNIQUE (NombreProducto),
CONSTRAINT fk_productos3_categoria
FOREIGN KEY (CategoriaId)
REFERENCES categoria(Categoriaid)
);

CREATE TABLE categoria2(
id int not null identity(1,1),
NombreCategoria nvarchar(20) not null,
CONSTRAINT pk_categoria2 
PRIMARY KEY (id),
CONSTRAINT unique_nombrecategoria2
UNIQUE (NombreCategoria)
);
GO

CREATE TABLE producto4(
productoid int not null identity(1,1),
NombreProducto nvarchar(20) not null,
Existencia int not null,
PrecioUnitario money not null,
CategoriaId int not null,
CONSTRAINT pk_producto4
PRIMARY KEY (productoid),
CONSTRAINT chk_existencia4
CHECK (Existencia > 0 and Existencia<=0),
CONSTRAINT chk_precioUnitario2
CHECK (PrecioUnitario>0.0),
CONSTRAINT unique_nombreproducto4
UNIQUE (NombreProducto),
CONSTRAINT fk_productos4_categoria2
FOREIGN KEY (CategoriaId)
REFERENCES categoria2(id)
);













CREATE TABLE tabla1(
tabla1id int not null identity (1,1),
tabla1id2 int not null,
nombre nvarchar(20) not null,

CONSTRAINT pk_tabla
PRIMARY KEY (tabla1id,tabla1id2)
);

CREATE TABLE tabla2(
idtabla2 int not null identity (1,1),
nombre nvarchar(20) not null,
tabla1id int,
tabla1id2 int,

CONSTRAINT pk_tabla2
PRIMARY KEY (idtabla2),

CONSTRAINT fk_tabla2_tabla1
FOREIGN KEY (tabla1id,tabla1id2)
REFERENCES tabla1(tabla1id,tabla1id2)
);









--Crear tablas con razon de cardinalidad 1a1

CREATE TABLE employee(
id int not null identity (1,1),
nombre nvarchar(20)not null,
ap1 nvarchar(20) not null,
ap2 nvarchar(20) not null,
sexo char(1) not null,
salario money not null,

CONSTRAINT pk_employee
PRIMARY KEY (id)
);
GO

CREATE TABLE deparment (
id int not null identity(1,1),
Nombre nvarchar(20) not null,
ubicacion nvarchar(30) not null,
employeeid int not null
CONSTRAINT pk_deparment
PRIMARY KEY (id),

CONSTRAINT fk_deparment_employee
FOREIGN KEY (employeeid)
REFERENCES employee(id),

CONSTRAINT unique_employee
UNIQUE (employeeid)
);