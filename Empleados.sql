CREATE DATABASE Empleados;
USE Empleados;

CREATE TABLE puestos
(
id int,
nombre varchar(40)
);

CREATE TABLE Empleados
(
    nombrecompleto varchar(80),
  puestoid int
);

INSERT INTO puestos VALUES(100, 'Gerencia'),(101, 'Subgerencia'),(102, 'Supervision'),
(200, 'Asistente'),(201, 'Secretaria'),(202, 'Contador'),(203, 'RH'),
(300, 'Vigilancia'),(301, 'Cajero'),(302, 'Limpieza'),(500,'Gerencia General'),(501,'Asistente Gerente General'),
(502,'Office Boy'),(503,'Cocinero especial');


INSERT INTO Empleados VALUES('Juan Gamez Perez', 100);
INSERT INTO Empleados VALUES('Jose Carlos Lopez', 101);
INSERT INTO Empleados VALUES('Daniel Quintero Castro', 302);
INSERT INTO Empleados VALUES('Silvana Marcos Sanchez', 302);
INSERT INTO Empleados VALUES('Carlos Armenta Lopez', 302);
INSERT INTO Empleados VALUES('Violeta Campos De la O', NULL);
INSERT INTO Empleados VALUES('Luis Molina Perez', 102);
INSERT INTO Empleados VALUES('Anahi Gamez Celaya', 200);
INSERT INTO Empleados VALUES('Mateo Quiñonez Perez', 202);
INSERT INTO Empleados VALUES('Luis Acosta Estrada', 201);
INSERT INTO Empleados VALUES('Antonio Guevara Perez', 203);
INSERT INTO Empleados VALUES('Laura Gomez Flores', NULL);
INSERT INTO Empleados VALUES('Jennifer Castro Esparza', 300);
INSERT INTO Empleados VALUES('Natasha Lopez Lopez', 300);
INSERT INTO Empleados VALUES('Carmelo Acosta Sanchez', 301);
INSERT INTO Empleados VALUES('Silvia Marquez Marquez', 302);
INSERT INTO Empleados VALUES('Ivan Sanchez Perez', 300);
INSERT INTO Empleados VALUES('Flor Mosqueda Lopez', NULL);
INSERT INTO Empleados VALUES('Gaviota Quintero Quiñonez', 301);
INSERT INTO Empleados VALUES('Abril Celeste Lopez De la O', 301);
INSERT INTO Empleados VALUES('Gilberto Gomez Ibarra', 300);
INSERT INTO Empleados VALUES('Juan Jose Armenta Perez', 95);
INSERT INTO Empleados VALUES('Ulises Guevara Perez', 98);
INSERT INTO Empleados VALUES('Elisa  Gomez Flores', NULL);
INSERT INTO Empleados VALUES('Flor Mosqueda Lopez', NULL);
INSERT INTO Empleados VALUES('Gilberto Celaya', 1000);
INSERT INTO Empleados VALUES('Abril Sosa Perez', 1001);
INSERT INTO Empleados VALUES('Gabriel Dominguez', 1001);
INSERT INTO Empleados VALUES('Abigail Flores Garza', 1002);
INSERT INTO Empleados VALUES('Antonia Perez Zazueta', 1002);
INSERT INTO Empleados VALUES('Gabriela Aldama', 1001);


/*Inner Join con alias */
SELECT*FROM Empleados e INNER JOIN puestos p
ON e.puestoid  = p.id;

/*Left Join*/
SELECT*FROM Empleados e LEFT JOIN puestos p
ON e.puestoid  = p.id;

SELECT e.nombrecompleto AS 'Nombre Completo',
p.nombre AS 'Puesto', p.id
FROM Empleados e LEFT JOIN puestos p
ON e.puestoid  = p.id;

/*Right Join*/
SELECT e.nombrecompleto AS 'Nombre Completo',
p.nombre AS 'Puesto', p.id
FROM Empleados e RIGHT JOIN puestos p
ON e.puestoid  = p.id;

