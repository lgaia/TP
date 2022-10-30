use bdd2;
DELIMITER $$
CREATE PROCEDURE cargaDeTablas()
begin
insert into cliente(id_cliente, costo, facturacion, horas_mensual)
values (1,1000,1500,30), (2,2000,3500,45), (3,3000,5500,50),(4,2500,4500,25);
insert into proyecto(id_proyecto, nombre_proyecto, id_cliente, hora_proyecto)
values(1,'ProyectoA',1,100), (2, 'ProyectoB',3,120), (3, 'ProyectoC',2,130),(4,'ProyectoD',3,100),(5,'ProyectoE',4,80);
insert into participante(id_legajo,nombre_apellido,rol,id_proyecto)
values(1,'Juan Perez','Manager',1),(2,'Juan Gomez','Desarrollador',1),(3,'Pedro Perez','Jefe de Marketing',1),
(4,'Jimena Perez','Programador',1),(5,'Laura Fernandez','Desarrollador',2),(6,'Maria Gomez','Programador',2),
(7,'Carlos Fernandez','Manager',2),(8,'Josefina Diaz','Jefe de Marketing',2),(9,'Marcos Diaz','Desarrollador',3),
(10,'Liliana Guillermina Suarez','CEO',1),(11,'Guillermina Perez','Manager',3),(12,'Liliana Gomez','Desarrollador',3),(13,'Susana Suarez','Jefe de Marketing',3),
(14,'Marcos Fernandez','Programador',3),(15,'Leon Diaz','Desarrollador',4),(16,'Dario Velasco','Programador',4),
(17,'Irina Tamarini','Manager',4),(18,'Carla Diaz','Jefe de Marketing',5),(19,'Leon Velasco','Desarrollador',5),
(20,'Ana Gomez','Manager',5),(21,'Fernando Fernandez','Desarrollador',5),(22,'Susana Perez','Jefe de Marketing',5),
(23,'Cecilia Suarez','CEO',5);
end;
$$
DELIMITER ;
