-- Crear base de datos 
CREATE DATABASE RESTRICCIONESBDG1;

--Utilizar la base de datos
USE RESTRICCIONESBDG1;

--Crear la tabla categoria 
CREATE TABLE categoria(
categoriaid int,
nombre nvarchar(30)
);

insert into categoria
values (1,'Carnes frias');

insert into categoria
values (1,'Vinos y Licores');

insert into categoria
values (null,'Ropa');

SELECT * FROM categoria;

drop table categoria;

CREATE TABLE categoria(
categoriaid int not null,
nombre varchar (30),
constraint pk_categoria
primary key(categoriaid)
);

insert into categoria
values (1,'Carnes frias');

insert into categoria
values (2,'Vinos y Licores');

insert into categoria
values (3,'Ropa');

insert into categoria
values (4,'Ropa');

SELECT * FROM categoria;

CREATE TABLE categoria(
categoriaid int not null,
nombre varchar (30) not null,
constraint pk_categoria
primary key(categoriaid),
constraint unique_nombre
unique(nombre)
);


CREATE TABLE categoria(
categoriaid int not null,
nombre varchar (30) not null,
constraint pk_categoria
primary key(categoriaid),
constraint unique_nombre
unique(nombre)
);

drop table Producto;

CREATE TABLE Producto(
productoid int not null,
nombreprod nvarchar(20) not null,
precio money not null,
existencia numeric (10,2) not null,
categoria int,

constraint pk_producto
primary key (productoid),

constraint unique_nombreprod
unique (nombreprod),

constraint chk_precio
check(precio>0 and precio <= 4000),

constraint chk_exixtencio
check(existencia>=0),

constraint fk_producto_categoria
foreign key (categoria)
references categoria (categoriaid)
);

insert into categoria
values (2,'Vinos y Licores');

insert into categoria
values (3,'carnes frias');

insert into categoria
values (8,'Ropa china');

insert into Producto
values (1,'tonayan',4000,4,2);

insert into Producto
values (2,'tonaya2',1250.6,40,2);

insert into Producto
values (3,'bucañas',200,8,2);

insert into Producto
values (4,'calzon chino',6.3,890,8);

SELECT * FROM Producto;

select * 
from Producto as p
INNER JOIN categoria as c
on c.categoriaid = p.categoria;