#SQL with phpMyAdmin
CREATE
 ALGORITHM = UNDEFINED
 VIEW `view_departamento`
 AS select departamento.nombre as departamento_nombre,
departamento.estado as departamento_estado
from departamento