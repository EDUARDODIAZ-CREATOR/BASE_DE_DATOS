CREATE DATABASE Instructores 
GO

USE Instructores
go


CREATE TABLE Instructor (
SSN int not null,
LName varchar(45) not null,
FName varchar(45) not null,

CONSTRAINT pk_Instructor
PRIMARY KEY (SSN)
);

CREATE TABLE Class (
CouserNum int not null,
[Year] date not null,
Term varchar(40) not null,
section varchar(40) not null,

CONSTRAINT pk_Class 
Primary key (CouserNum,[Year],Term,section)
);

CREATE TABLE Teaches(
SSN int not null,
CouserNum int not null,
[Year] date not null,
Term varchar(40) not null,
section varchar(40) not null,

CONSTRAINT fk_Teaches_Instructor
FOREIGN KEY (SSN)
REFERENCES Instructor(SSN),

CONSTRAINT fk_Teaches_Class
FOREIGN KEY (CouserNum,[Year],Term,section)
REFERENCES Class(CouserNum,[Year],Term,section)

);