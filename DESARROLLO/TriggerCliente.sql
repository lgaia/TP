DELIMITER $$
create trigger cliente_bi before insert on cliente for each row 
begin
insert into cliente(id_cliente)
select siguiente
from numerador
where numerador.tabla="cliente";
update table numerador
set siguiente=siguiente+1
where numerador.tabla="cliente";
end;
$$
DELIMITER ;
