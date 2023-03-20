
-- -----------------VISTAS-----------------------
		

-- -----------------VISTA VIDEOJUEGO-----------------------

ALTER VIEW vista_videoJuego AS
SELECT 
	vj.idProducto, p.titulo, p.precio, p.condicion, p.plataforma, p.garantia, p.descripcion, p.publicador, p.lanzamiento, 
     vj.idVideoJuego, vj.desarrollado, vj.clasificacion, vj.genero, vj.trailer
FROM videojuego vj 
INNER JOIN Producto p ON vj.idProducto = p.idProducto;

-- -----------------VISTA CONTROL-----------------------

CREATE VIEW vista_control AS
SELECT 
	c.idProducto, p.titulo, p.precio, p.condicion, p.plataforma, p.garantia, p.descripcion, p.publicador, p.lanzamiento, 
    c.inalambrico, c.color, c.conectoresDeEntrada, c.vibracion, c.bluetooth
FROM control c 
INNER JOIN Producto p ON c.idProducto = p.idProducto;

-- -----------------VISTA CONSOLA-----------------------

CREATE VIEW vista_consola AS
SELECT 
	c.idProducto, p.titulo, p.precio, p.condicion, p.plataforma, p.garantia, p.descripcion, p.publicador, p.lanzamiento, 
    c.memoria, c.control, c.resolucion, c.capacidad, c.tipoDeMemoria
FROM consola c 
INNER JOIN Producto p ON c.idProducto = p.idProducto;


-- -----------------VISTA ACCESORIO-----------------------

CREATE VIEW vista_accesorio AS
SELECT 
	a.idProducto, p.titulo, p.precio, p.condicion, p.plataforma, p.garantia, p.descripcion, p.publicador, p.lanzamiento, 
    a.material
FROM accesorio a 
INNER JOIN Producto p ON a.idProducto = p.idProducto;

select * from vista_accesorio;

