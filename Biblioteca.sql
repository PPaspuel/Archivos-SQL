CREATE DATABASE Biblioteca;
USE Biblioteca;

/*Creamos las tablas*/
CREATE TABLE editorial(
Codi_editorial INT,
Nom_editorial VARCHAR(30),
CONSTRAINT CODIEDI PRIMARY KEY (Codi_editorial)
);

CREATE TABLE libros(
Codi_libro INT,
Nom_libro VARCHAR(30),
Autor_libro VARCHAR(40),
Codi_editorial1 INT,
CONSTRAINT CODILIB PRIMARY KEY (Codi_libro),
CONSTRAINT CODIEDI1 FOREIGN KEY (Codi_editorial1) REFERENCES editorial (Codi_editorial)
);

/*Insertar datos a las tablas*/
INSERT INTO editorial(Codi_editorial,Nom_editorial)
VALUES(1000,'Las Sierenas'),(1001,'Palomas'),(1002,'San Sebastian'),
(1003,'Paris'),(1004,'Esmeralda'),(1005,'Azul'),(1006,'Luna Brillante');

INSERT INTO libros(Codi_libro,Nom_libro,Autor_libro,Codi_editorial1)
VALUES(1,'Pinocho','Sergio Lopez',1000),(2,'Movidic','Artur Smitt',1004),(3,'Cumanda','Sonia Ponce',1001),
(4,'Ganimides','Cristofer Shuat',1002),(5,'El Feo','Cuatemo Sanchez',1005),(6,'Lucifer','Sandro Macarti',1006),
(7,'Sirenita','Olga Noguera',1003),(8,'Piter Pan','Alfonso Izquierdo',1000),(9,'La Llorona','Rosa Narvaez',1005),
(10,'La Traicion','Marcela Urtado',1002);

SELECT*FROM editorial;
SELECT*FROM libros;

-- Mostrar campos de dos tablas diferentes
SELECT Nom_libro,Autor_libro,Nom_editorial 
FROM libros INNER JOIN editorial ON libros.Codi_editorial1 = editorial.Codi_editorial