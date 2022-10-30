use bdd2;
use mibase;
DELIMITER $$
create trigger proyecto_bi before insert on proyecto for each row 
begin
set @mi_tabla='proyecto';
set @hay_dato=0;
call numeradorCero(@mi_tabla,@hay_dato);
if(select @hay_dato !=0) then
begin
insert into proyecto(id_proyecto)
select siguiente
from numerador
where numerador.tabla='proyecto';
update numerador
set siguiente=siguiente+1
where numerador.tabla='proyecto';
end;
else
insert into numerador(tabla, siguiente)
values('proyecto',1);
end if;
end;
$$
DELIMITER ;
