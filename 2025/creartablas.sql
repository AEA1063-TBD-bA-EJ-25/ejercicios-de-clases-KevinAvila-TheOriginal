CREATE DATABASE escuelita;

go

use escuelita

create TABLE persona (
    CURP CHAR(18) NOT NULL PRIMARY KEY,
    Nombre nvarchar(50) NOT NULL,
    Direccion NVARCHAR(100)NULL,
    Nacimiento DATE NOT NULL,
)

CREATE TABLE Carrera (
    Clave CHAR(13)NOT NULL PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,

)

CREATE TABLE Alumno (
    CURP CHAR(18) NOT NULL PRIMARY KEY FOREIGN Key REFERENCES persona(CURP), 
    NumeroDeControl CHAR(8) NOT NULL UNIQUE,
    ClaveCarrera CHAR(13) FOREIGN Key REFERENCES Carrera (Clave)

)

select * from persona;

CREATE TABLE Docente (
    CURP        CHAR(18) NOT NULL PRIMARY KEY,
    RFC         CHAR(13) NOT NULL UNIQUE,
    Profesion   NVARCHAR(30) NULL,
    FOREIGN KEY (CURP) REFERENCES persona(CURP)
)

CREATE TABLE Administratvo (
    CURP CHAR(18) NOT NULL 
    PRIMARY KEY FOREIGN Key REFERENCES persona(CURP), 
)

INSERT INTO Carrera (Clave, Nombre)
    VALUES ('ITIC-2010-225', 'Ingeniería en Tecnologías de la información y comunicación')

select * from Carrera

INSERT INTO Carrera (Clave, Nombre)
    VALUES  ('ISIC-2010-224', 'Ingeniería en Sistemas Computacionales'),
            ('IMCT-2010-229', 'Ingeniería Mecatrónica')

insert into persona (CURP, Nombre, Direccion, Nacimiento)
    VALUES ('JS20FR', 'Johane Sacrebleu', 'Por allá', '2003-04-05')

INSERT into Alumno(CURP, NumeroDeControl, ClaveCarrera)
    VALUES ('JS20FR', '20170005', 'ITIC-2010-225')

    select NumeroDeControl, Nombre, ClaveCarrera  from persona
        join Alumno on Persona.CURP = Alumno.CURP
    select * from Alumno
 

 create TABLE malapersona (
    idpersona int not null IDENTITY PRIMARY KEY,
    CURP CHAR(18) NOT NULL UNIQUE,
    Nombre nvarchar(50) NOT NULL,
    Direccion NVARCHAR(100)NULL,
    Nacimiento DATE NOT NULL,
)

insert into malapersona (CURP, Nombre, Direccion, Nacimiento)
    VALUES ('JS20FR', 'Johane Sacrebleu', 'Por allá', '2003-04-05')

SELECT * FROM malapersona

DROP TABLE malapersona