create database ddb2;
use bdd2;
create table cliente (
id_cliente int not null auto_increment primary key,
costo int,
facturacion int,
horas_mensual int
);
create table proyecto (
id_proyecto int not null auto_increment primary key,
nombre_proyecto varchar (255),
id_cliente int not null,
hora_proyecto int,
constraint fk_proyecto_cliente foreign key id_cliente references cliente(id_cliente)
);
create table participante (
id_legajo int not null auto_increment primary key,
nombre_apellido varchar(150),
horas_diarias int,
rol varchar(255),
id_proyecto int,
fecha datetime,
constraint fk_participante_proyecto foreign key id_proyecto references proyecto(id_proyecto)
);
create table liquidacion (
  horas_proyecto int,
  horas_cliente,
  constraint fk_liquidacion_proyecto foreign key horas_proyecto references proyecto(hora_proyecto),
  constraint fk_liquidacion_cliente foreign key horas_cliente references cliente(horas_mensual)
);

