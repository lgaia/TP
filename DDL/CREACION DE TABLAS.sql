use bdd2;
create table cliente (
id_cliente int not null auto_increment primary key,
costos int not null, 
facturacion int not null);
create table proyecto (
id_proyecto int not null auto_increment primary key,
hora_mensual int not null,
id_cliente int not null auto_increment,
constraint fk_cliente_proyecto foreign key (id_cliente) references cliente (id_cliente));
create table participante (
id_legajo int not null auto_increment primary key,
hora_max int not null,
rol varchar(100) not null,
id_proyecto int not null auto_increment,
constraint fk_participante_proyecto foreign key (id_proyecto) references proyecto(id_proyecto));

