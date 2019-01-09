CREATE PROCEDURE `InsertarEmpleado` (
    in Nombre varchar(140),
    in ApellidoPaterno varchar(140),
    in ApellidoMaterno varchar(140),
    in FechaNacimiento date,
    in Departamento varchar(100)
)
BEGIN
	insert into empleado(nombre,apellido_paterno,apellido_materno,fecha_nacimiento,departamento) values (Nombre,ApellidoPaterno,ApellidoMaterno,FechaNacimiento,Departamento);
END

#Mysql Workbench
/*
USE `mydemodb`;
DROP procedure IF EXISTS `InsertarEmpleado`;

DELIMITER $$
USE `mydemodb`$$
CREATE PROCEDURE `InsertarEmpleado` (
    in Nombre varchar(140),
    in ApellidoPaterno varchar(140),
    in ApellidoMaterno varchar(140),
    in FechaNacimiento date,
    in Departamento varchar(100)
)
BEGIN
	insert into empleado(nombre,apellido_paterno,apellido_materno,fecha_nacimiento,departamento) values (Nombre,ApellidoPaterno,ApellidoMaterno,FechaNacimiento,Departamento);
END$$

DELIMITER ;


/**/

#Llamando al procedimiento

/*
call InsertarEmpleado('Emily','Santos','Gomez','1995-01-01','Ventas');
/**/