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
	(1, "Manuel Jesús", "Curtido", "Rosado"),
	(2, "Pablo Miguel", "del Castillo", "Barba"),
	(3, "Marta", "Mariscal", "Velázquez"),
	(4, "Jonny", "Melabo", "Srry")
;

INSERT INTO PREGUNTA (
	ID,
	TEXTO,
	ID_USUARIO
)
VALUES
	(1, "¿Cuánto es 2 + 2?", 1),
	(2, "¿Cómo se llama el delegado de la clase de 2ºDAM?", 2),
	(3, "¿ñ?", 3),
	(4, "Por un caminito va caminando un bicho, y el nombre del bicho ya te lo he dicho?", 4),
	(5, "¿De qué color es la piel de un caballo blanco?", 1),
	(6, "¿Cuál es la mejor comida del mundo?", 2),
	(7, "¿Cómo se dice huérfano en japonés?", 3),
	(8, "¿Cuál es el mejor juego?", 4)
;

INSERT INTO OPCION (
	ID,
	TEXTO,
	CORRECTA,
	ID_PREGUNTA
)
VALUES
	(1, "22", 0, 1),
	(2, "2", 0, 1),
	(3, "4", 1, 1),
	(4, "Ninguna respuesta es correcta", 0, 1),
	(5, "Frank", 0, 2),
	(6, "David", 0, 2),
	(7, "Angel", 0, 2),
	(8, "Ninguna respuesta es correcta", 1, 2),
	(9, "Español", 1, 3),
	(10, "Francés", 0, 3),
	(11, "Inglés", 0, 3),
	(12, "Ninguna respuesta es correcta", 0, 3),
	(13, "Elefante", 0, 4),
	(14, "Yegua", 0, 4),
	(15, "Bicho", 0, 4),
	(16, "Ninguna respuesta es correcta", 1, 4),
	(17, "Rosa", 1, 5),
	(18, "Blanco", 0, 5),
	(19, "Color carne", 0, 5),
	(20, "Ninguna respuesta es correcta", 0, 5),
	(21, "Los macarrones con tomate", 1, 6),
	(22, "La pizza", 0, 6),
	(23, "Las patatas fritas", 0, 6),
	(24, "Ninguna respuesta es correcta", 0, 6),
	(25, "Chinchumama", 0, 7),
	(26, "Arigato", 0, 7),
	(27, "Minashigo", 1, 7),
	(28, "Ninguna respuesta es correcta", 0, 7),
	(29, "Mana Spark", 0, 8),
	(30, "Blasphemous", 0, 8),
	(31, "Hollow Knight", 1, 8),
	(32, "Ninguna respuesta es correcta", 0, 8)
;