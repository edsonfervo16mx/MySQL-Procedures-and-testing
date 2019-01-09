CREATE PROCEDURE `ModificarEmpleado` (
    in Id int,
    in Nombre varchar(140),
    in ApellidoPaterno varchar(140),
    in ApellidoMaterno varchar(140),
    in FechaNacimiento date,
    in Departamento varchar(100)
)
BEGIN
	update empleado set empleado.nombre = Nombre, empleado.apellido_paterno = ApellidoPaterno, empleado.apellido_materno = ApellidoMaterno, empleado.fecha_nacimiento = FechaNacimiento, empleado.departamento = Departamento where empleado.id = Id;
END
/* Es importante especificar las columnas para evitar la ambigüegad*/
#MysqlWorkbench
/*
USE `mydemodb`;
DROP procedure IF EXISTS `ModificarEmpleado`;

DELIMITER $$
USE `mydemodb`$$
CREATE PROCEDURE `ModificarEmpleado` (
    in Id int,
    in Nombre varchar(140),
    in ApellidoPaterno varchar(140),
    in ApellidoMaterno varchar(140),
    in FechaNacimiento date,
    in Departamento varchar(100)
)
BEGIN
	update empleado set empleado.nombre = Nombre, empleado.apellido_paterno = ApellidoPaterno, empleado.apellido_materno = ApellidoMaterno, empleado.fecha_nacimiento = FechaNacimiento, empleado.departamento = Departamento where empleado.id = Id;
END$$

DELIMITER ;

/**/

#Llamada al procedimiento
/*
call ModificarEmpleado(1,1,'Juan Carlos','Ortega','Ortiz','1990-12-01','Ventas')

/**/