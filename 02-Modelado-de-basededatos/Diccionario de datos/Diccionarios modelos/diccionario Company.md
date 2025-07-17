**Tabla Contactsupplies**

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción               |
|----------------|--------------|--------|-----|-----|------|--------|----------------------|---------------------|---------------------------|
| `ContactId`    | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                   | ID del contacto           |
| `SupplierId`   | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Suppliers(SupplierId)| Proveedor relacionado     |
| `FullName`     | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Nombre completo           |

**Tabla Suppliers**

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción               |
|----------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|---------------------------|
| `SupplierId`   | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | ID del proveedor          |
| `CompanyName`  | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Nombre de la compañía     |
| `Address`      | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Dirección                 |
| `Fax`          | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Número de fax             |
| `City`         | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Ciudad                    |
| `Region`       | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Región                    |
| `HomePage`     | INT          | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Página web (como entero)  |

**Tabla Products**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción                  |
|-----------------|--------------|--------|-----|-----|------|--------|----------------------|---------------------|------------------------------|
| `ProductID`     | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                   | ID del producto              |
| `ProductName`   | VARCHAR      | 40     | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Nombre del producto          |
| `UnitPrice`     | DECIMAL      | 10,2   | ❌  | ❌  | ❌   | ❌     | >= 0                 | -                   | Precio unitario              |
| `UnitsInStock`  | SMALLINT     | -      | ❌  | ❌  | ❌   | ❌     | >= 0                 | -                   | Unidades en stock            |
| `QuantityPerUnit` | VARCHAR    | 20     | ❌  | ❌  | ✅   | ❌     | -                    | -                   | Cantidad por unidad          |
| `SupplierID`    | INT          | -      | ❌  | ✅  | ✅   | ❌     | -                    | Suppliers(SupplierID)| Proveedor                    |
| `CategoryID`    | INT          | -      | ❌  | ✅  | ✅   | ❌     | -                    | Categories(CategoryID)| Categoría    

**Tabla Categories**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                  |
|-----------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|------------------------------|
| `CategoryID`    | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | ID de categoría              |
| `CategoryName`  | VARCHAR      | 15     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Nombre de categoría          |
| `Description`   | TEXT         | -      | ❌  | ❌  | ✅   | ❌     | -                    | -            | Descripción

**Tabla Employee**

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción               |
|----------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|---------------------------|
| `EmployId`     | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | ID del empleado           |
| `FirstName`    | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Primer nombre             |
| `LastName`     | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido                  |
| `Birthdate`    | DATE         | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Fecha de nacimiento       |
| `City`         | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Ciudad                    |
| `Report`       | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | -            | Reporte                   |

**Tabla Orders**

| Campo            | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción               |
|------------------|--------------|--------|-----|-----|------|--------|----------------------|---------------------|---------------------------|
| `OrderId`        | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                   | ID del pedido             |
| `Code`           | INT          | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Código                    |
| `ShipRegion`     | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | shippers(shippersId)| Región de envío           |
| `OderDate`       | DATE         | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Fecha del pedido          |
| `RequierdeDate`  | DATE         | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Fecha requerida           |
| `EmployerId`     | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Employee(EmployId)  | Empleado relacionado      |
| `CustomerId`     | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Customers(CustormrId)| ID del cliente            |

**Tabla Details**

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción               |
|----------------|--------------|--------|-----|-----|------|--------|----------------------|---------------------|---------------------------|
| `ProductId`    | INT          | -      | ✅  | ✅  | ❌   | ❌     | -                    | -                   | ID del producto           |
| `OrderId`      | INT          | -      | ✅  | ✅  | ❌   | ❌     | -                    | Orders(OrderId)     | Pedido relacionado        |
| `UnitPrice`    | MONEY        | -      | ❌  | ❌  | ❌   | ❌     | >= 0                 | -                   | Precio unitario           |
| `Quantity`     | INT          | -      | ❌  | ❌  | ❌   | ❌     | > 0                  | -                   | Cantidad                  |
| `Discount`     | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Descuento                 |

**Tabla Customers**

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción          |
|----------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|----------------------|
| `CustomerId`   | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | ID del cliente       |
| `CompanyName`  | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Nombre de la compañía  |
| `City`         | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   |Ciudad                    |
| `Region`       | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Región                    |
| `Phone`        | INT          | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Teléfono                  |

**Tabla ContactCustomers**

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción               |
|----------------|--------------|--------|-----|-----|------|--------|----------------------|---------------------|---------------------------|
| `ContactId`    | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                   | ID del contacto           |
| `CustomerId`   | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Customers(CustomerId)| Relación con cliente      |
| `FullName`     | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Nombre completo           |


**Tabla Shippers**

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción          |
|----------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|----------------------|
| `ShippersId`   | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | ID del transportista |
| `CompanyName`  | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Nombre compañía      |

**Tabla PhonesShipped**

| Campo            | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción               |
|------------------|--------------|--------|-----|-----|------|--------|----------------------|---------------------|---------------------------|
| `PhaneShipperid` | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                   | ID del teléfono           |
| `ShippersId`     | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Shippers(ShippersId)| Relación transportista    |
| `Phone`          | INT          | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Número de teléfono        |