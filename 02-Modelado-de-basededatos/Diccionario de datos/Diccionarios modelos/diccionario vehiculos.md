# Diccionario de Datos – vehiculos


**Tabla Clientes**

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK       | Referencia a | Descripción                     |
|---------------|--------------|--------|-----|-----|------|--------|----------------------------|--------------|---------------------------------|
| `idCliente`   | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | Identificador del cliente       |
| `Ap. Paterno` | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido paterno del cliente    |
| `Ap. Materno` | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido materno del cliente    |
| `nombre`      | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Nombre del cliente              |
| `telefono`    | NCHAR       | 12      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Teléfono del cliente            |
| `curp`        | NVARCHAR     | 16     | ❌  | ❌  | ❌   | ✅     | -                          | -            | CURP del cliente                |
| `calle`       | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌     | -                          | -            | Calle de dirección              |
| `num`         | INT          | 10     | ❌  | ❌  | ❌   | ❌     | -                          | -            | Número de dirección             |
| `ciudad`      | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌     | -                          | -            | Ciudad de residencia            |

**Tabla Vehículos**

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción               |
|---------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|---------------------------|
| `NumVehículo`  | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | Identificador del vehículo|
| `placa`       | NVARCHAR     | 8      | ❌  | ❌  | ❌   | ✅     | -                    | -            | Placa del vehículo        |
| `marca`      | NVARCHAR     | 15     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Marca del vehículo    
| `modelo`      | NVARCHAR     | 25     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Modelo del vehículo       |
| `año`         | int         | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Año del vehículo          |
| `NumCliente`   | int         | -      | ❌  | ✅  | ❌   | ❌     | -                    | Clientes(idCliente) | El cliente que renta vehiculo         |
| `NumSucursal`   | int         | -      | ❌  | ✅  | ❌   | ❌     | -                    | Sucursal(NumSucursal) | El cliente que renta vehiculo         |

**Tabla Renta**

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción               |
|---------------|--------------|--------|-----|-----|------|--------|----------------------|---------------------|---------------------------|
| `idRenta`     | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                   | Identificador de renta    |
| `idCliente`   | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Clientes(idCliente) | Cliente que renta         |
| `idVehículo`  | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Vehículos(idVehículo)| Vehículo rentado          |
| `fechaInicio` | DATE         | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Fecha inicio de renta     |
| `fechaFin`    | DATE         | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Fecha fin de renta        |

**Tabla Sucursal**

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción               |
|---------------|--------------|--------|-----|-----|------|--------|----------------------|---------------------|---------------------------|
| `NumeroSucursal`  | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                   | Identificador de sucursal |
| `NombreSucursal`      | NVARCHAR     | 25     | ❌  | ❌  | ❌   | ✅     | -                    | -                   | Nombre de la sucursal     |
| `Ubicacion`   | NVARCHAR     | 25     | ❌  | ❌  | ✅   | ❌     | -                    | -                   | Dirección de la sucursal  |
| `idVehículo`  | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Vehículos(idVehículo)| Vehículo asignado         |