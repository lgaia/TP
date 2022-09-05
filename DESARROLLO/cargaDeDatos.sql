DELIMITER $$
CREATE PROCEDURE cargaDeDatos(IN 'idlegajo' int, IN 'nombreapellido' varchar,IN 'idproyecto' int, IN 'rol' varchar, IN 'horasdiarias' int, IN 'fecha' date)
begin
insert into participante (id_legajo, nombre_apellido, id_proyecto, rol)
values (@idlegajo,@nombreapellido,@idproyecto,@rol);
if(@horasdiarias<=120) THEN
update table participante
set horas_diarias=@horasdiarias
and fecha=@fecha
where id_legajo=@idlegajo
END IF
end
$$
DELIMITER;
