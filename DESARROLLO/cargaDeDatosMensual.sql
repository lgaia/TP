DELIMITER $$
CREATE PROCEDURE cargaDeDatos(IN idlegajo int, IN rol varchar(255), IN id_proyecto int, IN fecha date, IN canthora int)
begin
set @mes= MONTH(@fecha)
insert into registrohora(id_legajo,rol,id_proyecto,canthora,fecha)
values(@idlegajo,@rol,@idproyecto,@canthora,@fecha)
set @dia = DATEADD(weekday,1,@fecha);
while @mes == MONTH(@dia) do
begin
insert into registrohora(id_legajo,rol,id_proyecto,canthora,fecha)
values(@idlegajo,@rol,@idproyecto,@canthora,@dia);
set @dia = DATEADD(weekday,1,@dia);
end;
end while;
end
$$
