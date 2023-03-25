
-- -----------------VISTAS-----------------------
		

-- -----------------VISTA VIDEOJUEGO-----------------------

CREATE VIEW vista_videoJuego AS
SELECT 
	vj.idProducto, p.titulo, p.precio, p.condicion, p.plataforma, p.garantia, p.descripcion, p.publicador, p.lanzamiento, 
     vj.idVideoJuego, vj.desarrollado, vj.clasificacion, vj.genero, vj.trailer
FROM videojuego vj 
INNER JOIN Producto p ON vj.idProducto = p.idProducto;

-- -----------------VISTA CONTROL-----------------------

CREATE VIEW vista_control AS
SELECT 
	c.idProducto, p.titulo, p.precio, p.condicion, p.plataforma, p.garantia, p.descripcion, p.publicador, p.lanzamiento, 
    c.idControl, c.inalambrico, c.color, c.conectoresDeEntrada, c.vibracion, c.bluetooth
FROM control c 
INNER JOIN Producto p ON c.idProducto = p.idProducto;

-- -----------------VISTA CONSOLA-----------------------

CREATE VIEW vista_consola AS
SELECT 
	c.idProducto, p.titulo, p.precio, p.condicion, p.plataforma, p.garantia, p.descripcion, p.publicador, p.lanzamiento, 
    c.idConsola, c.almacenamiento, c.control, c.resolucion, c.ram, c.tipoDeMemoria
FROM consola c 
INNER JOIN Producto p ON c.idProducto = p.idProducto;


-- -----------------VISTA ACCESORIO-----------------------

CREATE VIEW vista_accesorio AS
SELECT 
	a.idProducto, p.titulo, p.precio, p.condicion, p.plataforma, p.garantia, p.descripcion, p.publicador, p.lanzamiento, 
    a.idAccesorio, a.material
FROM accesorio a 
INNER JOIN Producto p ON a.idProducto = p.idProducto;

select * from vista_accesorio;

-- ------------------------VISTA CARRITO---------------------------

CREATE TABLE vista_carrito AS
SELECT 
	p.idProducto, p.titulo, p.precio, p.condicion, p.plataforma, p.garantia, p.descripcion, p.publicador, p.lanzamiento,
	c.idCarrito, c.fecha, c.idCliente
FROM carrito c
INNER JOIN Producto p ON c.idProducto = p.idProducto;
	

