create database compra;
use compra;

create table producto (
Clave_prod int,
Nom_prod varchar(50),
Precio float,
constraint ClaveP primary key (Clave_prod)
);

create table cliente (
Clave_clie int,
Nom_clie varchar (100),
constraint ClaveCl primary key (Clave_clie)
);

create table pro_clie (
Cantidad int,
Subtotal float,
Folio int,
Clave_prod1 int,
Clave_clie1 int,
constraint ClaveP1 foreign key (Clave_prod1) references producto (Clave_prod),
constraint ClaveC1 foreign key (Clave_clie1) references cliente (Clave_clie)
);

/*Insertamos los productos y clientes a la tablas (Insert)*/
-- Productos.
insert into producto values(1,'Papas',1.25);
insert into producto values (2,'Frejol',1.00);
insert into producto values (3,'Galletas',1.25);
-- Clientes
insert into cliente values (1,'Miguel Flores');
insert into cliente values (2,'Cruz Naranjo');
-- Productos-Clientes
insert into pro_clie values(2,2.00,2,2,1);
insert into pro_clie values(3,3.75,2,1,2);


/*Modificar los datos de la tabla usando (Update)*/
select* from cliente;
update cliente -- Accedemos a la tabla
set Nom_clie = 'Maura Cevallos'-- Especificamos el campo a modificar y conque 
where Clave_clie = 1; -- Especficamos la posicion a cambiar, mediante la clave de la tabla 
select*from cliente ;

select * from producto;
update producto -- Accedemos a la tabla
set Precio = 2.75 -- Especificamos el campo a modificar y conque 
where Clave_prod  = 2; -- Especificamos la posicion a cambiar, mediante la clave
select * from producto;

select * from pro_clie;
update pro_clie
set Subtotal = null
where Clave_clie1 = 1; -- Cuando existen claves foraneas en tablas intermedias podemos acceder mediante ellas para modificar
select * from pro_clie;

update pro_clie
set Subtotal = null
where Clave_prod1 = 1; -- Clave foranea producto de la tabla intermedia
select * from pro_clie;

/*Acceder a dos tablas a la vez*/
select * from pro_clie;
select * from producto;
select * from cliente;

/*Eliminar Datos*/
-- Delete from (Delete from N.tabla): Elimina todos los registros de la tabla, la deja vacia
delete from pro_clie;

-- Delete from - where (Delete from N.tabla where ClavedeCampo = pocicion) : Elimina un solo registro de la tabla.
delete from producto
where Clave_prod = 1;

-- Delete from - where - and (Delete from N.tabla where ClavedeCampo = pocicion and Precio = num) : Elimina un solo registro de la tabla con mas condiciones.
delete from producto
-- where Clave_prod = 2 and Precio = 1.25 -- En este caso no elimina nada yaque no existe un registro con esos datos
where Clave_prod = 2 and Precio = 2.75 ; -- en este caso si elimina por que coinciden las condiciones con un registro

-- Drop table (drop table N.Tabla) : Elimina la tabla y los registros
/*Para eliminar las tablas primarias hay que primero eliminar las tablas intermediarias,
ya despues de haber eliminado los vinculos entre tablas, las tabla principal se podra eliminar*/

-- drop table cliente -- No se puede eliminar, ya que tiene vinculos con otras tablas.
drop table pro_clie ; -- Tabla intermediaria entre Producto-Cliente eliminada.

-- Drop database (use master - drop database N.BaseDatos) : Eliminar la base de datos y sus datos
use master; -- Este comando nos permite cambiara de usuario para poder eliminar la base de datos
drop database Compra; -- Estamos eliminando la base de datos

-- Truncate table : Elimina todos los registros de la tabla, aunque mas rapido que delete table
/*truncate table , tiene restricciones como el drop table, primero hya que eliminar la tabla vinculo  
que une a las tablas principales, para poder eliminar los registros de las tablas principales*/
delete from pro_clie; -- Hemos borrado los vinculos de las tablas principales
drop table pro_clie;
truncate table cliente; -- Este metodo ahorra los recursos de la PCalum_materalum_materalum_mater

use master ;
drop database alumno;




