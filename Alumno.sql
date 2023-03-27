create database alumno;
use alumno;

/*Tablas Simples*/

-- Tabla Carrera
create table carrera(
-- El char permite ingresar sea numero y letras con un maximo de 13.
Nro_carrera char(3),
Nom_carrera varchar (100),
constraint NroCarr primary key (Nro_carrera)
);

-- Tabla Materia
create table materia (
Nro_materia char(3),
Nom_materia varchar (100),
constraint NroMateri primary key (Nro_materia)
);

-- Tabla Tipo-Telefono
create table tipotel (
ID_tipotel char (3),
Nom_tipotel varchar (100),
constraint IDTipoT primary key (ID_tipotel)
);

-- Tabla Delegacion
create table delegacion (
ID_delegacion char(5),
Nom_delegacion varchar(100),
constraint IDDelege primary key (ID_delegacion)
);

/*Tablas Dependientes*/

-- Tabla Colonia
create table colonia (
ID_colonia char(5),
Nom_colonia varchar(100),
ID_delegacion2 char(5),
constraint IDColo primary key (ID_colonia),
constraint IDDelege2 foreign key (ID_delegacion2) references delegacion (ID_delegacion)
);

-- Tabla Calle
create table calle (
ID_calle char(5),
Nom_calle varchar (100),
ID_colonia2 char(5),
constraint IDCalle primary key (ID_calle),
constraint IDColo2 foreign key (ID_colonia2) references colonia (ID_colonia)
);

/*Tabla Principal*/

-- Tabla Alumno
create table alumno (
Matricula_alum char(10),
Nom_alum varchar (50),
ApellPater_alum varchar (50),
ApellMater_alum varchar (50),
Num_int varchar (50),
Num_ext varchar (50),
CP varchar (50),
ID_delegacion1 char(5),
ID_colonia1 char(5),
ID_calle1 char(5),
Nro_carrera1 char(3),
constraint MatriAlum primary key (Matricula_alum),
constraint IDDelega1 foreign key (ID_delegacion1) references delegacion (ID_delegacion),
constraint IDColo1 foreign key (ID_colonia1) references colonia (ID_colonia),
constraint IDCalle1 foreign key (ID_calle1) references calle (ID_calle),
constraint NroCarre foreign key (Nro_carrera1) references carrera (Nro_carrera)
);

/*Tablas Intermedias*/

-- Tabla Alumno-Materia
create table alum_mater (
Matricula_alum1 char(10),
Nro_materia1 char(3),
constraint MatriAlum1 foreign key (Matricula_alum1) references alumno (Matricula_alum),
constraint NroMateri1 foreign key (Nro_materia1) references materia (Nro_materia)
);

-- Tabla Alumno-TipoTel
create table alum_tipotel (
telefono bigint,
ID_tipotel1 char(3),
Matricula_alum2 char(10),
constraint IDTipotel1 foreign key (ID_tipotel1) references tipotel (ID_tipotel),
constraint MatriAlum2 foreign key (Matricula_alum2) references alumno (Matricula_alum)
);

/*Eliminamos las tablas y registros*/
drop table alum_tipotel;
drop table alum_mater;
drop table alumno;
drop table calle;
drop table colonia;
drop table delegacion;
drop table tipotel;
drop table materia;
drop table carrera;

