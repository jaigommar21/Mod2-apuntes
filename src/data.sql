
-- MOSTRAR ESQUEMAS
SHOW DATABASES;

-- SELECCIONAR EL ESQUEMA
USE inverntariodb;

-- MOSTAR TABLAS DE UN ESQUEMA
SHOW TABLES;

-- MUESTRA INFO DE LA TABLA
DESC categorias; 

-- INSERTA REGISTROS
INSERT INTO  categorias  (ID,  NOMBRE,  DESCRIPCION,  ORDEN  )  VALUES  (1,'Procesadores', 'Categoria de procesadores',1) ;
INSERT INTO  categorias  (ID,  NOMBRE,  DESCRIPCION,  ORDEN  )  VALUES   (2,'Memorias', 'Categoria de memorias',2) ;
INSERT INTO  categorias  (ID,  NOMBRE,  DESCRIPCION,  ORDEN  )  VALUES  (3,'Discos  Duros', 'Categoria de discos duros',3);

INSERT INTO productos (id, categorias_id, nombre, descripcion,  precio, stock ) VALUES (1,1,'Intel  Core  I7','Procesador  Intel  Core  I7-8700  Lga  1151 8va',1480,6) ;
INSERT INTO productos (id, categorias_id, nombre, descripcion,  precio, stock ) VALUES (2,2,'Kingstone','Kingstone 64GB DDR3',80.00,12); 
INSERT INTO productos (id, categorias_id, nombre, descripcion,  precio, stock ) VALUES (12,1,'ihpone 9','Iphone ',2000.00,6);
INSERT INTO productos (id, categorias_id, nombre, descripcion,  precio, stock ) VALUES (16,1,'Amd','Procesador AMD ',223.00,12);


-- MOSTRAR INFO DE TABLAS
SELECT * FROM categorias;
SELECT * FROM productos;

-- ELIMIANR UN REGISTRO
INSERT INTO productos 
	(id, categorias_id, nombre, descripcion, precio, stock )  
    VALUES  (3,1,'NVIDIA','Procesador GTX 1080',2500,2) ;
    
DELETE FROM productos WHERE id = 3;

-- ACTUALIZAR CAMPOS DE UN REGISTRO
INSERT INTO productos 
	(id, categorias_id, nombre, descripcion, precio, stock )  
    VALUES  (3,1,'NVIDIA','Procesador GTX 1080',2500,2) ;
SELECT * FROM productos WHERE id = 3;

UPDATE productos SET descripcion = 'Procesador GTX 980', stock = 4 WHERE id = 3; 
SELECT * FROM productos WHERE id = 3;
