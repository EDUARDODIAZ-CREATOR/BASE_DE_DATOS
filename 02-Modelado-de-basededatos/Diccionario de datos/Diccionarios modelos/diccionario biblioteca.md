# Diccionario de Datos - biblioteca


**Tabla Libros**

| Campo       | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción               |
|-------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|---------------------------|
| `numLibro`  | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | Identificador del libro   |
| `ISBN`      | INT          | -      | ❌  | ❌  | ❌   | ✅     | -                    | -            | Código ISBN del libro     |
| `Titulo`    | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Título del libro          |
| `autor`     | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Autor del libro           |
| `cantidad`  | INT          | -      | ❌  | ❌  | ❌   | ❌     | >= 0                 | -            | Cantidad disponible       |

**Tabla LECTOR**

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción               |
|---------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|---------------------------|
| `NumLector`   | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | Identificador del lector  |
| `Nombre`      | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Nombre del lector         |
| `Ap. Paterno` | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido paterno          |
| `Ap. Materno` | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido materno          |
| `numMembresia`| INT          | -      | ❌  | ❌  | ❌   | ✅     | -                    | -            | Número de membresía       |

**Tabla Prestamo**

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción               |
|--------------|--------------|--------|-----|-----|------|--------|----------------------|---------------------|---------------------------|
| `idPrestamo` | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                   | Identificador del préstamo|
| `idLibro`    | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Libros(numLibro)    | Libro prestado            |
| `idLector`   | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | LECTOR(NumLector)   | Lector que solicita       |