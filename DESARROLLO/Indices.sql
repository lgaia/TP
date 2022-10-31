use bdd2;
create index indice_part
on participante(id_proyecto);

create index indice_liqui
on liquidacion(id_proyecto);

create index indice_liquidos
on liquidacion(rol);
