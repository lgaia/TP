use bdd2;
alter table cliente
alter column id_cliente int not null primary key;

alter table proyecto
alter column id_proyecto int not null primary key;

alter table legajo
alter column id_legajo int not null primary key;

create table numerador {
tabla varchar(255) not null primary key,
siguiente int
};
