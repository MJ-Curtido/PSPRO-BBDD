CREATE DATABASE VEHICULOS;

USE VEHICULOS;

CREATE TABLE VEHICULO(
	MARCA VARCHAR(50) NOT NULL,
    MODELO VARCHAR(50) NOT NULL,
    MATRICULA VARCHAR(9) PRIMARY KEY
);

INSERT INTO vehiculo (
	MARCA,
	MODELO,
	MATRICULA
)
VALUES
	("Renault", "Zoe", "2345FDF"),
	("Renault", "Fluence", "0000FTL"),
	("Tesla", "3", "2422FHT"),
	("Tesla", "X", "1221FDF")
;