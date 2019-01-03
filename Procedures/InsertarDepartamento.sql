#SQL
CREATE PROCEDURE `InsertarDepartamento` (
	in Nombre varchar(100)
)
BEGIN
	insert into departamento(nombre) values(Nombre);
END

#Codigo generado por MySQLWorkbench
/*
USE `mydemodb`;
DROP procedure IF EXISTS `InsertarDepartamento`;

DELIMITER $$
USE `mydemodb`$$
CREATE PROCEDURE `InsertarDepartamento` (
	in Nombre varchar(100)
)
BEGIN
	insert into departamento(nombre) values(Nombre);
END$$

DELIMITER ;
/**/

#Para llamar al procedimiento
/*
CALL InsertarDepartamento('Administración');
CALL InsertarDepartamento('RH');
*/