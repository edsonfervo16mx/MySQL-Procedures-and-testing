CREATE PROCEDURE `new_procedure` (
	in IdEmpleado int
)
BEGIN
	select * from view_empleado where empleado_id = IdEmpleado;
END

#Mysql Workbench
/*
USE `mydemodb`;
DROP procedure IF EXISTS `new_procedure`;

DELIMITER $$
USE `mydemodb`$$
CREATE PROCEDURE `new_procedure` (
	in IdEmpleado int
)
BEGIN
	select * from view_empleado where empleado_id = IdEmpleado;
END$$

DELIMITER ;
/**/