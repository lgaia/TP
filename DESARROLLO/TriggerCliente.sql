use bdd2;
DELIMITER $$
create trigger cliente_bi before insert on cliente for each row 
begin
set @mi_tabla='cliente';
set @hay_dato=0;
call numeradorCero(@mi_tabla,@hay_dato);
if(select @hay_dato !=0) then
begin
insert into cliente(id_cliente)
select siguiente
from numerador
where numerador.tabla='cliente';
update table numerador
set siguiente=siguiente+1
where numerador.tabla='cliente';
end;
else
insert into numerador(tabla, siguiente)
values('cliente',1);
end if;
end;
$$
DELIMITER ;
