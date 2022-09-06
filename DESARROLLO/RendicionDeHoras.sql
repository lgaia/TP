use bdd2;
DELIMITER $$
create procedure RendicionDeHoras()
begin
insert into liquidacion (id_proyecto, rol, hora_proyecto, mes)
select id_proyecto, rol, cant_hora, MONTH(fecha)
from registrohora
group by rol AND id_proyecto
end
$$
DELIMITER;
