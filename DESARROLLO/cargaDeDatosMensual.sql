use bdd2;
DELIMITER $$
CREATE PROCEDURE cargaDeDatos(IN idlegajo int, IN rol varchar(255), IN id_proyecto int, IN fecha date, IN canthora int)
begin
set @mes= MONTH(@fecha);
insert into registrohora(id_legajo,rol,id_proyecto,canthora,fecha)
values(@idlegajo,@rol,@idproyecto,@canthora,@mes);
end;
$$
DELIMITER ;
