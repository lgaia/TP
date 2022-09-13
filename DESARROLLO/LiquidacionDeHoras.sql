use bdd2;
DELIMITER $$
create procedure LiquidacionDeHoras(in ingresomes int)
begin
insert into liquidacion (id_proyecto, horas_proyecto, rol, mes)
select id_proyecto, sum(cant_horas) as 'hora mensual', rol, month(fecha)
from registrohora
where month(fecha)=ingresomes
group by id_proyecto and rol and month(fecha)
end
$$

