use bdd2;
alter table proyecto
drop constraint fk_proyecto_cliente;
alter table participante
drop constraint fk_participante_proyecto;
alter table registrohora
drop constraint fk_registrohora_participante;

alter table cliente
drop primary key,
change id_cliente id_cliente int not null,
add primary key (id_cliente);

alter table proyecto
drop primary key,
change id_proyecto id_proyecto int not null,
add primary key (id_proyecto),
add constraint fk_proyecto_cliente foreign key (id_cliente) 
references cliente(id_cliente);

alter table participante
drop primary key,
change id_legajo id_legajo int not null,
add primary key (id_legajo),
add constraint fk_participante_proyecto foreign key (id_proyecto) 
references proyecto(id_proyecto);

alter table registrohora
add constraint fk_registrohora_participante foreign key (id_legajo)
references participante(id_legajo);

create table numerador (
tabla varchar(255) not null primary key,
siguiente int
);

