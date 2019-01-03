#SQL deberas crear la vista antes crear el procedimiento
CREATE PROCEDURE `ConsultarViewDepartamento` (
	in Nombre varchar(100)
)
BEGIN
	select * from view_departamento where departamento_nombre = Nombre;
END

#Codigo generado por MySQL Workbench
/*
USE `mydemodb`;
DROP procedure IF EXISTS `ConsultarViewDepartamento`;

DELIMITER $$
USE `mydemodb`$$
CREATE PROCEDURE `ConsultarViewDepartamento` (
	in Nombre varchar(100)
)
BEGIN
	select * from view_departamento where departamento_nombre = Nombre;
END$$

DELIMITER ;
/**/