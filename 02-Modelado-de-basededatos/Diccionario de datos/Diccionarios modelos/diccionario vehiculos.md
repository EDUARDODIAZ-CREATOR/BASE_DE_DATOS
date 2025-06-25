# 📘 Diccionario de Datos – vehiculos

**tabla clientes**



| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK                      | Referencia a                    | Descripción                             |
|----------------|--------------|--------|-----|-----|------|--------|--------------------------------------------|----------------------------------|-----------------------------------------|
| `NumCliente`     | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                                        | -                                | Identificador del cliente               |
| `Nombre`        | VARCHAR      | 20    | ❌  | ❌  | ❌   | ❌     | -            | -                                | Nombre completo del cliente             |
| `Apellido1`        | nVARCHAR      | 20    | ❌  | ❌  | ❌   | ❌     | -            | -                                | Apellido del cliente             |
| `Apellido2`        | nVARCHAR      | 20    | ❌  | ❌  | ❌   | ❌     | -            | -                                | Apellido del cliente             |
| `Edad`          | INT          | -      | ❌  | ❌  | ❌   | ❌     | CHECK (Edad >= 18 AND Edad <= 120)         | -                                | Edad del cliente                        |
| `Correo`        | VARCHAR      | 150    | ❌  | ❌  | ❌   | ✅     | Formato de correo válido                   | -                                | Correo electrónico                      |
| `IdCiudad`      | INT          | -      | ❌  | ✅  | ❌   | ❌     | > 0                                        | Ciudades(IdCiudad)               | Ciudad a la que pertenece el cliente    |
