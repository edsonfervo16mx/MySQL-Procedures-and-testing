#SQL directo
CREATE VIEW `view_empleado` AS
select empleado.id as empleado_id,
empleado.nombre as empleado_nombre,
empleado.apellido_paterno as empleado_paterno,
empleado.apellido_materno as empleado_materno,
empleado.fecha_nacimiento as empleado_nacimiento,
empleado.estado as empleado_estado,
empleado.departamento as empleado_departamento,
departamento.estado as departamento_estado
from empleado
inner join departamento on (empleado.departamento = departamento.nombre)

#Codigo generado por MySQL Workbench
/*
USE `mydemodb`;
CREATE  OR REPLACE VIEW `view_empleado` AS
select empleado.id as empleado_id,
empleado.nombre as empleado_nombre,
empleado.apellido_paterno as empleado_paterno,
empleado.apellido_materno as empleado_materno,
empleado.fecha_nacimiento as empleado_nacimiento,
empleado.estado as empleado_estado,
empleado.departamento as empleado_departamento,
departamento.estado as departamento_estado
from empleado
inner join departamento on (empleado.departamento = departamento.nombre);
/**/