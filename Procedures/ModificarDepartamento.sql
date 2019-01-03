#SQL
CREATE PROCEDURE `ModificarDepartamento` (
	in NuevoNombre varchar(100),
    in ViejoNombre varchar(100)
)
BEGIN
	update departamento set nombre = NuevoNombre where nombre = ViejoNombre;
END

#Codigo generado por MySQLWorkbench
/*
USE `mydemodb`;
DROP procedure IF EXISTS `ModificarDepartamento`;

DELIMITER $$
USE `mydemodb`$$
CREATE PROCEDURE `ModificarDepartamento` (
	in NuevoNombre varchar(100),
    in ViejoNombre varchar(100)
)
BEGIN
	update departamento set nombre = NuevoNombre where nombre = ViejoNombre;
END$$

DELIMITER ;
/**/
#Para llamar al procedimiento
/*
CALL ModificarDepartamento('Recursos Humanos','RH');
/**/