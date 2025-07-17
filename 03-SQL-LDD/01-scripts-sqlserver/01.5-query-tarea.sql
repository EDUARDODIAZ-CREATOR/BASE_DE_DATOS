--tarea--

--crea la base de datos 
CREATE DATABASE practica1;
Go

--utiliza la bse de datos ya creada
USE practica1;

CREATE TABLE cliente(
idCliente int not null identity(1,1),
nombreCliente nvarchar(20) not null,
rfc varchar(20) not null,
direccion nvarchar not null

CONSTRAINT pk_cliente
PRIMARY KEY (idCliente),

CONSTRAINT unique_nombreCliente
UNIQUE (nombreCliente)
);
go

CREATE TABLE pedido(
pedidoId int not null identity (1,1),
fecha date not null ,
idcliente int not null,

CONSTRAINT pk_pedido
PRIMARY KEY (pedidoId),

CONSTRAINT fk_pedido_cliente
FOREIGN KEY (idcliente)
REFERENCES cliente(idCliente)
);
go 


CREATE TABLE Categoria(
categoriaId int not null identity(1,1),
nombreCategoria nvarchar (25) not null,

CONSTRAINT pk_categoriaId
PRIMARY KEY (categoriaId),

CONSTRAINT unique_categoria
UNIQUE (nombreCategoria)
);
go

CREATE TABLE producto(
productoid int not null identity(1,1),
NombreProducto nvarchar(20) not null,
Existencia int not null,
PrecioUnitario money not null,
CategoriaId int not null,

CONSTRAINT pk_producto
PRIMARY KEY (productoid),

CONSTRAINT chk_existencia
CHECK (Existencia > 0 and Existencia<=1000),

CONSTRAINT chk_precioUnitario
CHECK (PrecioUnitario>0.0),

CONSTRAINT unique_nombreproducto
UNIQUE (NombreProducto),

CONSTRAINT fk_productos_categoria
FOREIGN KEY (CategoriaId)
REFERENCES categoria(categoriaId)
);
go

CREATE TABLE detallePedido(
idpedido int not null,
productoid int not null,
precioVenta money not null,
cantidadVenta int not null,

CONSTRAINT fk_detallePedido_pedido
FOREIGN KEY (idpedido)
REFERENCES pedido(pedidoId),

CONSTRAINT fk_detallePedido_producto
FOREIGN KEY (productoid)
REFERENCES producto(productoid)
);
