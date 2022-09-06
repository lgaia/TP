DELIMITER $$
CREATE PROCEDURE cargaDeDatos(IN idlegajo int, IN rol varchar(255), IN id_proyecto int, IN fecha date, IN canthora int)
begin
set @cont=0;
while (cont<5) do
begin
insert into registrohora(id_legajo,rol,id_proyecto,fecha,canthora);
values(@idlegajo,@rol,@idproyecto,@fecha,@canthora);
set cont=cont+1;
end while;
end
$$
DELIMITER;
