create database bdd2;
use bdd2;
create table cliente (
  id_cliente int auto_increment,
  hora_mensual int,
  centro_costo int,
  centro_facturacion int,
  primary key(id_cliente, hora_mensual)
);
create table liquidacion (
  hora_proyecto int primary key,
  hora_cliente int,
  constraint fk_cliente_liquidacion foreign key (hora_cliente) references cliente(hora_mensual)
);
create table proyecto (
  id_proyecto int auto_increment primary key,
  nombre_proyecto varchar(255),
  hora_mensual int,
  constraint fk_proyecto_liquidacion foreign key (hora_mensual) references liquidacion(hora_proyecto)
);
create table participante (
  id_legajo int autoincrement primary key,
  nombre_apellido varchar(150),
  rol varchar(255),
  hora_diaria int,
  id_proyecto int,
  constraint fk_participante_proyecto foreign key (id_proyecto) references proyecto (id_proyecto)
);
