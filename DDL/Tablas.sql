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
rol varchar(255),
id_proyecto int,
constraint fk_participante_proyecto foreign key id_proyecto references proyecto(id_proyecto)
);
create table registrohora (
  id_legajo int,
  rol varchar(255),
  id_proyecto int,
  fecha date,
  cant_hora int,
  constraint fk_registrohora_participante foreign key id_legajo references participante(id_legajo)
);
create table liquidacion (
  horas_proyecto int,
  mes date,
  id_proyecto int,
  rol varchar(255),
);

