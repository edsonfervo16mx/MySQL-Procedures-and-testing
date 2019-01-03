#SQL
CREATE PROCEDURE `ConsultarDepartamento` (
	in Nombre varchar(20)
)
BEGIN
	select * from departamento where departamento.nombre = Nombre;
END

#Codigo generado por MysqlWorkbench
/*
USE `mydemodb`;
DROP procedure IF EXISTS `ConsultarDepartamento`;

DELIMITER $$
USE `mydemodb`$$
CREATE PROCEDURE `ConsultarDepartamento` (
	in Nombre varchar(20)
)
BEGIN
	select * from departamento where departamento.nombre = Nombre;
END$$

DELIMITER ;

/**/