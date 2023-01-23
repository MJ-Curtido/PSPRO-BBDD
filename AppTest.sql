CREATE DATABASE APPTESTS;

USE APPTESTS;

CREATE TABLE USUARIO (
	ID SMALLINT(3) UNSIGNED PRIMARY KEY,
	NOMBRE VARCHAR(50) NOT NULL,
	APE1 VARCHAR(50) NOT NULL,
	APE2 VARCHAR(50) NOT NULL
);

CREATE TABLE PREGUNTA (
	ID SMALLINT(3) UNSIGNED PRIMARY KEY,
	TEXTO VARCHAR(200) NOT NULL,
	ID_USUARIO SMALLINT(3) UNSIGNED NOT NULL,
	FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO (ID)
);

CREATE TABLE OPCION (
	ID SMALLINT(3) UNSIGNED PRIMARY KEY,
	TEXTO VARCHAR(200) NOT NULL,
	CORRECTA BIT DEFAULT 0,
	ID_PREGUNTA SMALLINT(3) UNSIGNED NOT NULL,
	FOREIGN KEY (ID_PREGUNTA) REFERENCES PREGUNTA (ID)
);

INSERT INTO USUARIO (
	ID,
	NOMBRE,
	APE1,
	APE2
)
VALUES
	(0, "Manuel Jesús", "Curtido", "Rosado"),
	(1, "Pablo Miguel", "del Castillo", "Barba"),
	(2, "Marta", "Mariscal", "Velázquez"),
	(3, "Jonny", "Melabo", "Srry")
;

INSERT INTO PREGUNTA (
	ID,
	TEXTO,
	ID_USUARIO
)
VALUES
	(0, "¿Cuánto es 2 + 2?", 0),
	(1, "¿Cómo se llama el delegado de la clase de 2ºDAM?", 1),
	(2, "¿ñ?", 2),
	(3, "Por un caminito va caminando un bicho, y el nombre del bicho ya te lo he dicho?", 3),
	(4, "¿De qué color es la piel de un caballo blanco?", 0),
	(5, "¿Cuál es la mejor comida del mundo?", 1),
	(6, "¿Cómo se dice huérfano en japonés?", 2),
	(7, "¿Cuál es el mejor juego?", 3)
;

INSERT INTO OPCION (
	ID,
	TEXTO,
	CORRECTA,
	ID_PREGUNTA
)
VALUES
	(0, "22", 0, 0),
	(1, "2", 0, 0),
	(2, "4", 1, 0),
	(3, "Ninguna respuesta es correcta", 0, 0),
	(4, "Frank", 0, 1),
	(5, "David", 0, 1),
	(6, "Angel", 0, 1),
	(7, "Ninguna respuesta es correcta", 1, 1),
	(8, "Español", 1, 2),
	(9, "Francés", 0, 2),
	(10, "Inglés", 0, 2),
	(11, "Ninguna respuesta es correcta", 0, 2),
	(12, "Elefante", 0, 3),
	(13, "Yegua", 0, 3),
	(14, "Bicho", 0, 3),
	(15, "Ninguna respuesta es correcta", 1, 3),
	(16, "Rosa", 1, 4),
	(17, "Blanco", 0, 4),
	(18, "Color carne", 0, 4),
	(19, "Ninguna respuesta es correcta", 0, 4),
	(20, "Los macarrones con tomate", 1, 5),
	(21, "La pizza", 0, 5),
	(22, "Las patatas fritas", 0, 5),
	(23, "Ninguna respuesta es correcta", 0, 5),
	(24, "Chinchumama", 0, 6),
	(25, "Arigato", 0, 6),
	(26, "Minashigo", 1, 6),
	(27, "Ninguna respuesta es correcta", 0, 6),
	(28, "Mana Spark", 0, 7),
	(29, "Blasphemous", 0, 7),
	(30, "Hollow Knight", 1, 7),
	(31, "Ninguna respuesta es correcta", 0, 7)
;