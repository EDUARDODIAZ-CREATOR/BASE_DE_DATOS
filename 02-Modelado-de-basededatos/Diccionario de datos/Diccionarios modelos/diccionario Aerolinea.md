**Tabla Airport**

| Campo                  | Tipo de Dato   | Tamaño    | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                     |
|------------------------|----------------|-----------|-----|-----|------|--------|----------------------|--------------|---------------------------------|
| `Airplane`             | INT            | -         | ✅  | ❌  | ❌   | ✅     | -                    | -            | ID del aeropuerto               |
| `Name`                 | VARCHAR        | 50        | ❌  | ❌  | ❌   | ❌     | -                    | -            | Nombre del aeropuerto           |
| `City`                 | VARCHAR        | 25        | ❌  | ❌  | ❌   | ❌     | -                    | -            | Ciudad                          |
| `State`                | VARCHAR        | 50        | ❌  | ❌  | ❌   | ❌     | -                    | -            | Estado/Provincia                |

**Tabla Flight_leg**

| Campo                      | Tipo de Dato   | Tamaño    | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción                     |
|----------------------------|----------------|-----------|-----|-----|------|--------|----------------------|---------------------|---------------------------------|
| `Leg_no`                   | INT            | -         | ✅  | ❌  | ❌   | ❌     | -                    | -                   | Número de tramo                |
| `Departure_airport`        | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Airport(Airplane)   | Aeropuerto de salida           |
| `Schedule_dep_time`        | VARCHAR        | 20        | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Hora programada de salida      |
| `Arrival_airport`          | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Airport(Airplane)   | Aeropuerto de llegada          |
| `Schedule_arrival_airport` | VARCHAR        | 20        | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Hora programada de llegada     |
| `Number_flight`            | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Flight(Number_flight)| Vuelo relacionado              |

**Tabla Can_land**

| Campo               | Tipo de Dato | Tamaño | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a               | Descripción                     |
|---------------------|--------------|--------|-----|-----|------|--------|----------------------|----------------------------|---------------------------------|
| `Airplane_type`     | VARCHAR      | 50     | ✅  | ✅  | ❌   | ❌     | -                    | Airplane_type(Type_name)   | Tipo de avión autorizado        |
| `Airport_code`      | INT          | -      | ✅  | ✅  | ❌   | ❌     | -                    | Airport(Airplane)          | Aeropuerto donde puede aterrizar|

**Tabla Airplane_type**

| Campo              | Tipo de Dato   | Tamaño    | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                     |
|--------------------|----------------|-----------|-----|-----|------|--------|----------------------|--------------|---------------------------------|
| `Type_name`        | VARCHAR        | 50        | ✅  | ❌  | ❌   | ✅     | -                    | -            | Tipo de avión                   |
| `Company`          | VARCHAR        | 20        | ❌  | ❌  | ❌   | ❌     | -                    | -            | Fabricante                      |
| `Max_seat`         | INT            | -         | ❌  | ❌  | ❌   | ❌     | -                    | -            | Capacidad máxima de pasajeros   |

**Tabla Airplane**

| Campo                  | Tipo de Dato   | Tamaño    | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a        | Descripción                     |
|------------------------|----------------|-----------|-----|-----|------|--------|----------------------|---------------------|---------------------------------|
| `Airplane_id`          | INT            | -         | ✅  | ❌  | ❌   | ✅     | -                    | -                   | ID del avión                    |
| `Total_no_of_seats`    | INT            | -         | ❌  | ❌  | ❌   | ❌     | -                    | -                   | Total de asientos               |
| `Type_name`            | VARCHAR        | 50        | ❌  | ✅  | ❌   | ❌     | -                    | Airplane_type(Type_name)| Tipo de avión                |

**Tabla Seat**

| Campo                  | Tipo de Dato   | Tamaño    | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a               | Descripción                     |
|------------------------|----------------|-----------|-----|-----|------|--------|----------------------|----------------------------|---------------------------------|
| `Date`                 | DATE           | -         | ✅  | ❌  | ❌   | ❌     | -                    | -                          | Fecha del vuelo                |
| `Leg_no`               | INT            | -         | ✅  | ✅  | ❌   | ❌     | -                    | Flight_leg(Leg_no)         | Número de tramo                |
| `Departure_airport`    | VARCHAR        | 20        | ❌  | ❌  | ❌   | ❌     | -                    | -                          | Aeropuerto de salida           |
| `Number_flight`        | INT            | -         | ✅  | ✅  | ❌   | ❌     | -                    | Flight(Number_flight)      | Número de vuelo                |
| `Arrival_airport`      | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Airport(Airplane)          | Aeropuerto de llegada          |
| `Airport_departs`      | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Airport(Airplane)          | Aeropuerto de despegue         |
| `Airport_arrives`      | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Airport(Airplane)          | Aeropuerto de aterrizaje       |
| `Airplaneid`           | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Airplane(Airplane_id)      | ID del avión                    |
| `Seat_no`              | INT            | -         | ✅  | ❌  | ❌   | ❌     | -                    | -                          | Número de asiento              |

**Tabla Leg_instance**

| Campo                  | Tipo de Dato   | Tamaño    | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a               | Descripción                     |
|------------------------|----------------|-----------|-----|-----|------|--------|----------------------|----------------------------|---------------------------------|
| `Date`                 | DATE           | -         | ✅  | ❌  | ❌   | ❌     | -                    | -                          | Fecha de instancia             |
| `Leg_no`               | INT            | -         | ✅  | ✅  | ❌   | ❌     | -                    | Flight_leg(Leg_no)         | Número de tramo                |
| `Departure_airport`    | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Airport(Airplane)          | Aeropuerto de salida           |
| `Arrival_airport`      | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Airport(Airplane)          | Aeropuerto de llegada          |
| `Number_flight`        | INT            | -         | ✅  | ✅  | ❌   | ❌     | -                    | Flight(Number_flight)      | Número de vuelo                |
| `Airport_departs`      | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Airport(Airplane)          | Aeropuerto de despegue         |
| `Dep_time`             | DATE           | -         | ❌  | ❌  | ❌   | ❌     | -                    | -                          | Hora de salida real            |
| `Airport_arrives`      | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Airport(Airplane)          | Aeropuerto de aterrizaje       |
| `Max_time`             | INT            | -         | ❌  | ❌  | ❌   | ❌     | -                    | -                          | Tiempo máximo de vuelo         |
| `no_of_avails_seats`   | INT            | -         | ❌  | ❌  | ❌   | ❌     | >= 0                 | -                          | Asientos disponibles           |
| `Airplaneid`           | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Airplane(Airplane_id)      | ID del avión                    |

**Tabla Flight**

| Campo                  | Tipo de Dato   | Tamaño    | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a | Descripción                     |
|------------------------|----------------|-----------|-----|-----|------|--------|----------------------|--------------|---------------------------------|
| `Number_flight`        | INT            | -         | ✅  | ❌  | ❌   | ✅     | -                    | -            | Número de vuelo                 |
| `Airline`              | VARCHAR        | 20        | ❌  | ❌  | ❌   | ❌     | -                    | -            | Aerolínea                       |
| `Weekdays`             | VARCHAR        | 25        | ❌  | ❌  | ❌   | ❌     | -                    | -            | Días de operación               |

**Tabla Fare**

| Campo                  | Tipo de Dato   | Tamaño    | PK  | FK  | Nulo | Único | Restricciones / CHECK | Referencia a          | Descripción                     |
|------------------------|----------------|-----------|-----|-----|------|--------|----------------------|-----------------------|---------------------------------|
| `Code_fare`            | INT            | -         | ✅  | ❌  | ❌   | ✅     | -                    | -                     | Código de tarifa                |
| `Amount`               | VARCHAR        | 20        | ❌  | ❌  | ❌   | ❌     | -                    | -                     | Monto de tarifa                 |
| `Restrictions`         | VARCHAR        | 20        | ❌  | ❌  | ❌   | ❌     | -                    | -                     | Restricciones                   |
| `Number_flight`        | INT            | -         | ❌  | ✅  | ❌   | ❌     | -                    | Flight(Number_flight) | Vuelo asociado                  |