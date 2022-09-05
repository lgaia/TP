use bdd2;
DELIMITER $$
create procedure RendicionDeHoras(IN idproyecto int, )
begin
INSERT INTO liquidacion (horas_proyecto, horas_cliente)
SELECT SUM(horas_diarias)
FROM participante
WHERE id_proyecto=@idproyecto
end
$$
DELIMITER;
