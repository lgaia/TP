use bdd2;
DELIMITER $$
create procedure RendicionDeHoras(IN idproyecto int, IN mes date)
begin
INSERT INTO liquidacion (horas_proyecto, horas_cliente)
SELECT SUM(horas_diarias)
FROM participante
WHERE id_proyecto=@idproyecto AND mes=@mes
end
$$
DELIMITER;
