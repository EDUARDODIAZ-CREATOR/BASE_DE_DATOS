# Diccionario de Datos - cursos


**Tabla Estudiante**

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                     |
|----------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|---------------------------------|
| `idEstudiante` | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | Identificador del estudiante    |
| `Ap. Paterno`  | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido paterno del estudiante  |
| `Ap. Materno`  | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido materno del estudiante  |
| `Nombre`       | NVARCHAR     | 50     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Nombre del estudiante            |
| `Matricula`    | NVARCHAR     | 16     | ❌  | ❌  | ❌   | ✅     | -                    | -            | Número de matrícula              |

**Tabla Cursos**

| Campo      | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción               |
|------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|---------------------------|
| `idCurso`  | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | Identificador del curso   |
| `nombre`   | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Nombre del curso          |
| `codigo`   | INT          | -      | ❌  | ❌  | ❌   | ✅     | -                    | -            | Código del curso          |

**Tabla Inscripcion**

| Campo           | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a           | Descripción                     |
|-----------------|--------------|--------|-----|-----|------|--------|----------------------|------------------------|---------------------------------|
| `idInscripcion` | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                      | Identificador de la inscripción |
| `idEstudiante`  | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Estudiante(idEstudiante)| Estudiante inscrito            |
| `idCurso`       | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Cursos(idCurso)        | Curso al que se inscribe        |