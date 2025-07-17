**Tabla Instructor**

| Campo      | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción          |
|------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|----------------------|
| `SSN`      | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | Número Seguro Social |
| `LName`    | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido             |
| `Fame`     | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Nombre               |

**Tabla Class**

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción          |
|---------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|----------------------|
| `CouserNum`   | VARCHAR      | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | Número de curso      |
| `Year`        | DATE         | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Año                  |
| `Term`        | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Término              |
| `Section`     | VARCHAR      | -      | ❌  | ❌  | ❌   | ❌     | -                    | -            | Sección              |

**Tabla Teaches**

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción          |
|---------------|--------------|--------|-----|-----|------|--------|----------------------|---------------------|----------------------|
| `SSN`         | INT          | -      | ✅  | ✅  | ❌   | ❌     | -                    | Instructor(SSN)     | Instructor           |
| `CourseNum`   | INT          | -      | ✅  | ❌  | ❌   | ❌     | -                    | -                   | Número de curso      |
| `YAER`        | DATE         | -      | ✅  | ❌  | ❌   | ❌     | -                    | -                   | Año                  |
| `Term`        | VARCHAR      | -      | ✅  | ❌  | ❌   | ❌     | -                    | -                   | Término              |
| `Section`     | VARCHAR      | -      | ✅  | ❌  | ❌   | ❌     | -                    | -                   | Sección              |