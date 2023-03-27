CREATE DATABASE Cobranza;
USE Cobranza;

CREATE TABLE cobranza(
idcliente INTEGER,
nombre VARCHAR(45),
apellidopaterno VARCHAR(45),
apellidomaterno VARCHAR(45),
fechacobro DATE,
totaldeuda DECIMAL(7,2),
cantidadabono DECIMAL(7,2)
);   

INSERT INTO cobranza(idcliente,nombre,apellidopaterno,apellidomaterno,fechacobro,totaldeuda,cantidadabono)
 VALUES(1000,'Juan','Vazquez','Perez','2021-08-01',4585.2,0),
 (1001,'Alberto','Gamez','Galvez','2021-08-01',2000.2,0),
 (1002,'Damaris','Gomez','Zaragoza','2021-08-01',2000,0),
 (1003,'Cristina','Lizarraga','Sanchez','2021-08-01',5000,0),
 (1004,'Jesus','Gonzalez','Gamez','2021-08-01',1000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-01',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-01',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-01',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-02',2000,0),
 (1001,'Alberto','Gamez','Galvez','2021-08-03',2000.2,0),
 (1006,'Ana Laura','Barrera','Galvez','2021-08-03',5000.2,0),
 (1007,'Azucena','Sanchez','Lopez','2021-08-03',5000.2,0),
 (1008,'Jose','Serrano','Esparza','2021-08-03',4000.2,0),
 (1009,'Adalberto','Gutierrez','Galvez','2021-08-03',1000.5,0),
 (1000,'Juan','Vazquez','Perez','2021-08-04',4585.2,0),
 (1001,'Alberto','Gamez','Galvez','2021-08-04',2000.2,0),
 (1002,'Damaris','Gomez','Zaragoza','2021-08-04',2000,0),
 (1003,'Cristina','Lizarraga','Sanchez','2021-08-05',5000,0),
 (1004,'Jesus','Gonzalez','Gamez','2021-08-05',1000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-06',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-07',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-08',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-08',2000,0),
 (1001,'Alberto','Gamez','Galvez','2021-08-09',2000.2,0),
 (1006,'Ana Laura','Barrera','Galvez','2021-08-09',5000.2,0),
 (1007,'Azucena','Sanchez','Lopez','2021-08-09',5000.2,0),
 (1008,'Jose','Serrano','Esparza','2021-08-09',4000.2,0),
 (1009,'Adalberto','Gutierrez','Galvez','2021-08-09',1000.5,0),
 (1001,'Alberto','Gamez','Galvez','2021-08-09',2000.2,0),
 (1002,'Damaris','Gomez','Zaragoza','2021-08-09',2000,0),
 (1003,'Cristina','Lizarraga','Sanchez','2021-08-10',5000,0),
 (1004,'Jesus','Gonzalez','Gamez','2021-08-10',1000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-10',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-10',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-10',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-10',2000,0),
 (1001,'Alberto','Gamez','Galvez','2021-08-11',2000.2,0),
 (1006,'Ana Laura','Barrera','Galvez','2021-08-11',5000.2,0),
 (1007,'Azucena','Sanchez','Lopez','2021-08-11',5000.2,0),
 (1008,'Jose','Serrano','Esparza','2021-08-11',4000.2,0),
 (1009,'Adalberto','Gutierrez','Galvez','2021-08-12',1000.5,0),
 (1000,'Juan','Vazquez','Perez','2021-08-12',4585.2,0),
 (1001,'Alberto','Gamez','Galvez','2021-08-12',2000.2,0),
 (1002,'Damaris','Gomez','Zaragoza','2021-08-12',2000,0),
 (1003,'Cristina','Lizarraga','Sanchez','2021-08-14',5000,0),
 (1004,'Jesus','Gonzalez','Gamez','2021-08-14',1000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-14',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-15',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-15',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-08-15',2000,0),
 (1001,'Alberto','Gamez','Galvez','2021-08-16',2000.2,0),
 (1006,'Ana Laura','Barrera','Galvez','2021-08-16',5000.2,0),
 (1007,'Azucena','Sanchez','Lopez','2021-08-16',5000.2,0),
 (1008,'Jose','Serrano','Esparza','2021-08-16',4000.2,0),
 (1009,'Adalberto','Gutierrez','Galvez','2021-08-16',1000.5,0),
 (1003,'Cristina','Lizarraga','Sanchez','2021-09-01',5000,0),
 (1004,'Jesus','Gonzalez','Gamez','2021-09-01',1000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-09-02',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-09-03',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-09-03',2000,0),
 (1005,'Eustaquio','Aranza','Mercado','2021-09-04',2000,0),
 (1001,'Alberto','Gamez','Galvez','2021-09-05',2000.2,0),
 (1006,'Ana Laura','Barrera','Galvez','2021-09-06',5000.2,0),
 (1007,'Azucena','Sanchez','Lopez','2021-09-07',5000.2,0),
 (1008,'Jose','Serrano','Esparza','2021-09-07',4000.2,0),
 (1009,'Adalberto','Gutierrez','Galvez','2021-09-08',1000.5,0);
 
 /*Cliente 1000 se le marco: 3 veces
 Cliente 1001 se le marco: 9 veces
 Cliente 1002 se le marco: 4 veces
 Cliente 1003 se le marco: 5 veces
 Cliente 1004 se le marco: 5 veces
 Cliente 1005 se le marco: 20 veces
 Cliente 1006 se le marco: 5 veces
 Cliente 1007 se le marco: 5 veces
 */
 CREATE TABLE historialcobranza(
idcliente INTEGER,
nombre VARCHAR(45),
apellidopaterno VARCHAR(45),
apellidomaterno VARCHAR(45),
cantidadllamadas INTEGER DEFAULT 0
);
/*Llenamos la tabla mediane subconsulta usando datos de otra tabla*/
INSERT INTO historialcobranza (idcliente,nombre,apellidopaterno,apellidomaterno)
SELECT DISTINCT  idcliente,nombre,apellidopaterno,apellidomaterno FROM cobranza;

/*Creamos la tabla temporal*/
CREATE TEMPORARY TABLE temp -- Creamos l atabal tempral
AS SELECT DISTINCT idcliente,COUNT(fechacobro) AS contador -- se contara en cada icliente distinto 
FROM cobranza -- de la tabla cobranza
GROUP BY idcliente; -- y se lo agrupara por idcliente

/*Modificar la tabla historial de cobranza uniendola con la tabla temporal*/
UPDATE historialcobranza h -- modificamos la tabla historial alias h
JOIN temp t -- Esta la uniremos con la tabla temporala alias t
ON t.idcliente = h.idcliente -- Se uniran donde coincidan los idclientes
SET cantidadllamadas = t.contador; -- Se le agregara al contador de llamadas el contador de la tabla temp

SELECT*FROM historialcobranza

 
 