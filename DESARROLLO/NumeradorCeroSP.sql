use bdd2;
DELIMITER $$
create procedure numeradorCero (in nombretabla varchar(255), out respuesta int)
begin
select count(tabla) into @respuesta
from numerador
where tabla=nombretabla;
end;
$$
DELIMITER ;
