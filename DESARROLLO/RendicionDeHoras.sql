use bdd2;
DELIMITER $$
create procedure RendicionDeHoras(IN @id_legajo int, IN @horas_diarias)
begin
   update table participante
   set hora_diaria=@horas_diarias
   where id_legajo=@id_legajo;
end
$$
DELIMITER;
