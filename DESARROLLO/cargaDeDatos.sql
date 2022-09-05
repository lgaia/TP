DELIMITER $$
CREATE PROCEDURE cargaDeDatos(IN idlegajo int, IN nombreapellido varchar(150),IN idproyecto int, IN rol varchar(150), IN horasdiarias int, IN fecha date, OUT respuesta varchar(100))
begin
insert into participante (id_legajo, nombre_apellido, id_proyecto, rol)
values (@idlegajo,@nombreapellido,@idproyecto,@rol);
if(@horasdiarias<=120) THEN
begin
update table participante
set horas_diarias=@horasdiarias
and fecha=@fecha
where id_legajo=@idlegajo
end
else
set @respuesta='Las horas diarias cargadas exceden las posibles')
END IF
end
$$
DELIMITER;
