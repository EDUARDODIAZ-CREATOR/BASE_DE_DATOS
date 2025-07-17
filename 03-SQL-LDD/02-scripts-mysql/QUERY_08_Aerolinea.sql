CREATE DATABASE Aerolinea;

USE Aerolinea;

-- Tabla Airport
CREATE TABLE Airport (
    Airplane int not null,
    Name varchar(50) not null,
    City varchar(25) not null,
    State varchar(50) not null,

    CONSTRAINT pk_Airport
    PRIMARY KEY (Airplane)
);

-- Tabla Airplane_type
CREATE TABLE Airplane_type (
    Type_name varchar(50) not null,
    Company varchar(20) not null,
    Airpor_code int not null,

    CONSTRAINT pk_Airplane_type
    PRIMARY KEY (Type_name)
);

CREATE TABLE Con_land(
Type_name varchar(50) not null,
Airpor_Code int not null,

CONSTRAINT fk_Con_land_Airplane_type
FOREIGN KEY (Airpor_Code)
REFERENCES Airport(Airplane),

CONSTRAINT fk_Con_land_Airport
FOREIGN KEY (Type_name)
REFERENCES Airplane_type(Type_name)
);

-- Tabla Airplane
CREATE TABLE Airplane (
    Airplane_id int not null,
    Total_no_of_seats int not null,
    Type_name varchar(50) not null,

    CONSTRAINT pk_Airplane
    PRIMARY KEY (Airplane_id),

    CONSTRAINT fk_Airplane_Type
    FOREIGN KEY (Type_name)
    REFERENCES Airplane_type(Type_name)
);

-- Tabla Flight (primera definici�n)
CREATE TABLE Flight (
    Number_flight int not null,
    Airline varchar(20) not null,
    Weekdays varchar(25) not null,

    CONSTRAINT pk_Flight
    PRIMARY KEY (Number_flight)
);

-- Tabla Flight_leg
CREATE TABLE Flight_leg (
    Leg_no int not null,
    Departure_airport int not null,
    Schedule_dep_time varchar(20) not null,
    Arrival_airport int not null,
    Schedule_arrival_airport varchar(20) not null,
    Number_flight int not null,

    CONSTRAINT pk_Flight_leg
    PRIMARY KEY (Leg_no, Number_flight),

    CONSTRAINT fk_Flight_leg_Departure
    FOREIGN KEY (Departure_airport)
    REFERENCES Airport(Airplane),

    CONSTRAINT fk_Flight_leg_Arrival
    FOREIGN KEY (Arrival_airport)
    REFERENCES Airport(Airplane),

    CONSTRAINT fk_Flight_leg_Flight
    FOREIGN KEY (Number_flight)
    REFERENCES Flight(Number_flight)
);

-- Tabla Leg_instance
CREATE TABLE Leg_instance (
    Date date not null,
    Leg_no int not null,
    Departure_airport int not null,
    Arrival_airport int not null,
    Number_flight int not null,
    Airport_departs int not null,
    Dep_time datetime not null,
    Airport_arrives int not null,
    Max_time int not null,
    no_of_avail_seats int not null,
    Airplaneid int not null,

    CONSTRAINT pk_Leg_instance
    PRIMARY KEY (Date, Leg_no, Number_flight),

    CONSTRAINT fk_Leg_instance_Flight_leg
    FOREIGN KEY (Leg_no, Number_flight)
    REFERENCES Flight_leg(Leg_no, Number_flight),

    CONSTRAINT fk_Leg_instance_Airplane
    FOREIGN KEY (Airplaneid)
    REFERENCES Airplane(Airplane_id)
);

-- Tabla Seat
CREATE TABLE Seat (
    Date date not null,
    Leg_no int not null,
    Departure_airport varchar(20) not null,
    Number_flight int not null,
    Arrival_airport int not null,
    Airport_departs int not null,
    Airport_arrives int not null,
    Airplaneid int not null,
    Seat_no int not null,

    CONSTRAINT pk_Seat
    PRIMARY KEY (Date, Leg_no, Number_flight, Seat_no),

    CONSTRAINT fk_Seat_Leg_instance
    FOREIGN KEY (Date, Leg_no, Number_flight)
    REFERENCES Leg_instance(Date, Leg_no, Number_flight)
);

-- Tabla Fare
CREATE TABLE Fare (
    Code_fare int not null,
    Amount varchar(20) not null,
    Restrictions varchar(20) not null,
    Number_flight int not null,

    CONSTRAINT pk_Fare
    PRIMARY KEY (Code_fare, Number_flight),

    CONSTRAINT fk_Fare_Flight
    FOREIGN KEY (Number_flight)
    REFERENCES Flight(Number_flight)
);