use base;
select*from docentes;
select DOC_NOMBRE,DOC_CORREO FROM docentes;
select*from docentes;
select DOC_NOMBRE FROM docentes WHERE DOC_CORREO = "jorge.herrera@universidad.edu";
select*from materias;
select MAT_FECHA FROM materias;
select MAT_NOMBRE FROM materias WHERE MAT_FECHA = "2024-02-10";
select MAT_NOMBRE FROM materias WHERE MAT_FECHA > "2024-02-01";
select MAT_NOMBRE FROM materias order by MAT_NOMBRE DESC;
SELECT MAT_NOMBRE FROM materias LIMIT 5;
SELECT MAT_NOMBRE FROM materias where MAT_NOMBRE LIKE "M%"; -- QUE EMPIECE CON M
SELECT COUNT(*) FROM docentes;
select*from materias;
select MAT_NOMBRE, COUNT(*) FROM materias group by MAT_NOMBRE;
