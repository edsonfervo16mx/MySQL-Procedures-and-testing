CREATE PROCEDURE `ConsultarEmpleado` (
	in IdEmpleado int
)
BEGIN
	select * from empleado where empleado.id = IdEmpleado;
END

#Mysql workbench
/*
USE `mydemodb`;
DROP procedure IF EXISTS `ConsultarEmpleado`;

DELIMITER $$
USE `mydemodb`$$
CREATE PROCEDURE `ConsultarEmpleado` (
	in IdEmpleado int
)
BEGIN
	select * from empleado where empleado.id = IdEmpleado;
END$$

DELIMITER ;


/**/

#Llamando al procedimiento
/*call ConsultarEmpleado(1);
/**/