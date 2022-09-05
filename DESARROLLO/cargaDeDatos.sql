DELIMITER $$
CREATE PROCEDURE cargaDeDatos(IN idlegajo int, IN nombreapellido varchar(150),IN idproyecto int, IN rol varchar(150), IN horasdiarias int, IN fecha date, OUT respuesta varchar(100))
begin
if(@rol='administrador') THEN
begin
if(@horasdiarias<=6) THEN
begin
insert into participante(id_legajo, nombre_apellido, id_proyecto, rol, horas_diarias, fecha)
values (@idlegajo, @nombreapellido, @idproyecto, @rol, @horasdiarias,@fecha);
end if
end if
if(@rol='desarrollador') THEN
begin
if(@horasdiarias<=12) THEN
begin
insert into participante(id_legajo, nombre_apellido, id_proyecto, rol, horas_diarias, fecha)
values (@idlegajo, @nombreapellido, @idproyecto, @rol, @horasdiarias,@fecha);
end if
end if
if(@rol='manager') THEN
begin
if(@horasdiarias<=8) THEN
begin
insert into participante(id_legajo, nombre_apellido, id_proyecto, rol, horas_diarias, fecha)
values (@idlegajo, @nombreapellido, @idproyecto, @rol, @horasdiarias,@fecha);
end
end
else
set @respuesta='Las horas diarias cargadas exceden las posibles')
END IF
end
$$
DELIMITER;
