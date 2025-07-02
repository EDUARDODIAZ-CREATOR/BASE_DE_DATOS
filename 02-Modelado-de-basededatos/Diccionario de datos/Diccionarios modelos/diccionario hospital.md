# Diccionario de Datos - hospital


**Tabla Doctor**

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción               |
|---------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|---------------------------|
| `idDoctor`    | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | Identificador del doctor  |
| `Ap. Materno` | VARCHAR      | 20     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido materno          |
| `Ap. Paterno` | VARCHAR      | 20     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido paterno          |
| `nombre`      | VARCHAR      | 30     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Nombre del doctor         |
| `area`        | VARCHAR      | 50     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Especialidad médica       |

**Tabla Pacientes**

| Campo         | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción               |
|---------------|--------------|--------|-----|-----|------|--------|----------------------|--------------|---------------------------|
| `idPaciente`  | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -            | Identificador del paciente|
| `Ap. Paterno` | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido paterno          |
| `Ap. Materno` | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Apellido materno          |
| `nombre`      | NVARCHAR     | 20     | ❌  | ❌  | ❌   | ❌     | -                    | -            | Nombre del paciente       |

**Tabla Attention** (Atención)

| Campo          | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción               |
|----------------|--------------|--------|-----|-----|------|--------|----------------------|---------------------|---------------------------|
| `idAttribute`  | INT          | -      | ✅  | ❌  | ❌   | ✅     | -                    | -                   | ID de la atención         |
| `idDoctor`     | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Doctor(idDoctor)    | Doctor asignado           |
| `idPaciente`   | INT          | -      | ❌  | ✅  | ❌   | ❌     | -                    | Pacientes(idPaciente)| Paciente atendido         |
| `Fecha`        | DATE         | -      | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Fecha de atención         |
| `diagnostico`  | VARCHAR      | MAX    | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Diagnóstico médico        |