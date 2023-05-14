-- crear tabla "secciones"
CREATE TABLE secciones (
  seccion_id INT AUTO_INCREMENT PRIMARY KEY,
  seccion VARCHAR(50)
);

-- rellenar tabla "secciones"
INSERT INTO secciones (seccion)
VALUES ('Fruta y Verdura');

-- crear nueva columna "seccion_id" en tabla "categorias"
ALTER TABLE categorias ADD COLUMN seccion_id INT NOT NULL;

-- rellenar columna "seccion_id" de tabla "categorias" con valores "1"
UPDATE categorias
SET seccion_id = 1;

-- añadir caracteristica de auto-incremento a "categoria_id"
ALTER TABLE categorias MODIFY categoria_id INT AUTO_INCREMENT;

-- crear relacion "one-to-many" entre tablas "secciones" y "categorias"
ALTER TABLE categorias
ADD CONSTRAINT fk_categorias_secciones
FOREIGN KEY (seccion_id) REFERENCES secciones(seccion_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- crear nueva columna "seccion_id" en tabla "subcategorias"
ALTER TABLE subcategorias ADD COLUMN seccion_id INT NOT NULL;

-- rellenar columna "seccion_id" de tabla "subcategorias" con valores "1"
UPDATE subcategorias
SET seccion_id = 1;

-- añadir caracteristica de auto-incremento a "subcategoria_id"
ALTER TABLE subcategorias MODIFY subcategoria_id INT AUTO_INCREMENT;

-- añadir caracteristica "no nulo" a columna "categoria_id"
ALTER TABLE subcategorias
MODIFY categoria_id INT NOT NULL;

-- crear relacion "one-to-many" entre tablas "secciones" y "subcategorias"
ALTER TABLE subcategorias
ADD CONSTRAINT fk_subcategorias_secciones
FOREIGN KEY (seccion_id) REFERENCES secciones(seccion_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- modificar estructura columna "precio" en tabla "productos"
UPDATE productos
SET precio = REPLACE(REPLACE(precio, '€', ''), ',', '.');

-- modificar formato columna "precio" en tabla "productos"
ALTER TABLE productos MODIFY COLUMN precio DECIMAL(10,2);

-- crear nueva columna "seccion_id" en tabla "productos"
ALTER TABLE productos ADD COLUMN seccion_id INT NOT NULL;

-- rellenar columna "seccion_id" de tabla "productos" con valores "1"
UPDATE productos
SET seccion_id = 1;

-- añadir caracteristica de auto-incremento a "producto_id"
ALTER TABLE productos MODIFY producto_id INT AUTO_INCREMENT;

-- añadir caracteristica "no nulo" a columnas "subcategoria_id" y "categoria_id"
ALTER TABLE productos
MODIFY subcategoria_id INT NOT NULL,
MODIFY categoria_id INT NOT NULL;

-- crear relacion "one-to-many" entre tablas "secciones" y "productos"
ALTER TABLE productos
ADD CONSTRAINT fk_productos_secciones
FOREIGN KEY (seccion_id) REFERENCES secciones(seccion_id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

-- crear tabla "ventas"
CREATE TABLE ventas (
  venta_id INT AUTO_INCREMENT PRIMARY KEY,
  fecha DATE,
  seccion_id INT NOT NULL,
  FOREIGN KEY (seccion_id) REFERENCES secciones(seccion_id)
);

-- crear tabla de relacion "ventas_productos"
CREATE TABLE ventas_productos (
    venta_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY (venta_id) REFERENCES ventas(venta_id),
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);
