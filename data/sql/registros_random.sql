-- registrar valores correspondientes a venta de primera quincena de mayo de 2023
INSERT INTO ventas (fecha, seccion_id) VALUES
    ('2023-05-02', 1),
    ('2023-05-03', 1),
    ('2023-05-04', 1),
    ('2023-05-05', 1),
    ('2023-05-06', 1),
    ('2023-05-08', 1),
    ('2023-05-09', 1),
    ('2023-05-10', 1),
    ('2023-05-11', 1),
    ('2023-05-12', 1),
    ('2023-05-13', 1),
    ('2023-05-15', 1);
    
-- registar valores en la tabla "ventas_productos" de todas las fechas registradas, con valores aleatorios entre 0-80 en la columna "cantidad"
INSERT INTO ventas_productos (venta_id, producto_id, cantidad)
SELECT v.venta_id, p.producto_id, 
  CASE 
	WHEN DAY(v.fecha) IN (2) THEN FLOOR(RAND() * (40 - 0 + 1)) 
    WHEN DAY(v.fecha) IN (5, 8, 12) THEN FLOOR(RAND() * (60 - 10 + 1)) + 10 
    WHEN DAY(v.fecha) IN (3, 4, 9, 10, 11) THEN FLOOR(RAND() * (50 - 0 + 1)) 
    WHEN DAY(v.fecha) IN (6, 13, 15) THEN FLOOR(RAND() * (80 - 10 + 1)) + 10 
  END AS cantidad
FROM ventas v
JOIN productos p ON p.seccion_id = v.seccion_id
WHERE v.seccion_id = (SELECT seccion_id FROM secciones WHERE seccion = 'Fruta y Verdura')
AND v.fecha BETWEEN '2023-05-01' AND '2023-05-15';



-- consultas para eliminar filas creadas
SET SQL_SAFE_UPDATES = 0;

DELETE FROM ventas_productos;
DELETE FROM ventas;

ALTER TABLE ventas_productos AUTO_INCREMENT = 1;
ALTER TABLE ventas AUTO_INCREMENT = 1;

SET SQL_SAFE_UPDATES = 1;
