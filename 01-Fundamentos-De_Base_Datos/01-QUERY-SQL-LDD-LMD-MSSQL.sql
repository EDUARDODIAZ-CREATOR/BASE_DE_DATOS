--	SQL-LDD 
-- Crea una base de datos 
CREATE DATABASE bdprueba1;
--Cambiar de base de datos
USE bdprueba1;
--Crear una tabla
CREATE TABLE categoria(
idcategoria int not null identity(1,1),
categorianombre nvarchar(20) not null , 
constraint pk_categoria
primary key (idcategoria)
);

CREATE TABLE producto(
idproducto int not null ,
nombreproducto nvarchar (20) not null, 
description varchar(100) null,
existencia int not null,
precion int not null,
idcategoria int not null, 
constraint pk_producto
primary key(idproducto),
constraint fk_producto_categoria
foreign key (idcategoria)
references categoria(idcategoria)
);

insert into categoria (categorianombre)
values ('Vinos y licores');

insert into categoria (categorianombre)
values ('Carnes frias'),
       ('linea blanca'),
	   ('lacteos');

update categoria
set categorianombre = 'Carnes Re-frias'
where idcategoria = 2;

  
select categorianombre from categoria;



