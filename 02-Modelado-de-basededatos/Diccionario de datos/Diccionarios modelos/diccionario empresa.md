# Diccionario de Datos - biblioteca
**Tabla Emplote** (Employee)

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a           | Descripción                  |
|-----------------|--------------|--------|-----|-----|------|--------|----------------------|------------------------|------------------------------|
| `Employerid`    | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                      | ID del empleado              |
| `FiresName`     | NVARCHAR     | 25     | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Primer nombre                |
| `name`          | NVARCHAR     | 25     | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Apellido                     |
| `salary`        | BOOLEAN      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Salario (¿activo?)           |
| `birthday`      | DATE         | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Fecha de nacimiento          |
| `address`       | NVARCHAR     | 25     | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Dirección                    |
| `DepartmentId`  | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Department(DepartmentId)| Departamento asignado        |
| `Doss`          | INT          | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Número de seguro/Doss        |

**Tabla Department**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a           | Descripción                  |
|-----------------|--------------|--------|-----|-----|------|--------|----------------------|------------------------|------------------------------|
| `DepartmentId`  | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                      | ID del departamento          |
| `NumDepto`      | INT          | -      | ❌  | ❌  | ❌   | ✅     | -                    | -                      | Número de departamento       |
| `NameDepto`     | NVARCHAR     | 25     | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Nombre del departamento      |
| `manager`       | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Emplote(Employerid)    | Gerente del departamento     |
| `start_date`    | DATE         | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Fecha de creación            |

**Tabla Locations**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a           | Descripción                  |
|-----------------|--------------|--------|-----|-----|------|--------|----------------------|------------------------|------------------------------|
| `LocationsId`   | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                      | ID de ubicación              |
| `Location`      | NVARCHAR     | 25     | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Nombre de ubicación          |
| `departmentId`  | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Department(DepartmentId)| Departamento asociado        |

**Tabla Workson**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a           | Descripción                  |
|-----------------|--------------|--------|-----|-----|------|--------|----------------------|------------------------|------------------------------|
| `Employed`      | INT          | -      | ✅  | ✅  | ❌   | ❌     | -                    | Emplote(Employerid)    | Empleado asignado            |
| `ProyectId`     | INT          | -      | ✅  | ✅  | ❌   | ❌     | -                    | Project(ProjectId)     | Proyecto asignado            |
| `hours`         | INT          | -      | ❌  | ❌  | ❌   | ❌     | >= 0                 | -                      | Horas trabajadas             |

**Tabla Project**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a           | Descripción                  |
|-----------------|--------------|--------|-----|-----|------|--------|----------------------|------------------------|------------------------------|
| `ProjectId`     | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                      | ID del proyecto              |
| `NumberProject` | INT          | -      | ❌  | ❌  | ❌   | ✅     | -                    | -                      | Número del proyecto          |
| `nameProject`   | NVARCHAR     | 25     | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Nombre del proyecto          |
| `locationsId`   | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Locations(LocationsId) | Ubicación del proyecto       |
| `DepartmentId`  | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Department(DepartmentId)| Departamento responsable     |

**Tabla Dependents** (Department appears duplicated, assuming this is for dependents)

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a           | Descripción                  |
|-----------------|--------------|--------|-----|-----|------|--------|----------------------|------------------------|------------------------------|
| `Employerid`    | INT          | -      | ✅  | ✅  | ❌   | ❌     | -                    | Emplote(Employerid)    | Empleado relacionado         |
| `name`          | NVARCHAR     | 25     | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Nombre del dependiente       |
| `sex`           | NVARCHAR     | 25     | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Género                       |
| `birthdate`     | DATE         | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Fecha de nacimiento          |
| `relationship`  | NVARCHAR     | 25     | ❌  | ❌  | ❌   | ❌     | -                    | -                      | Relación con el empleado     |