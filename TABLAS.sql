CREATE DATABASE games;

use games;

-- -----------------TABLAS-----------------------


-- -----------------TABLA CLIENTES-----------------------
CREATE TABLE Cliente(
	
    idCliente int key auto_increment,
    nombre varchar(45),
    primerApellido varchar(45),
    segundoApellido varchar(45),
    edad int,
    nombreUsuario varchar(45),
    contrasenia varchar(100),
    calle varchar(45),
    colonia varchar(45),
    pais varchar(45),
    token varchar(45) 
    
);

-- -----------------TABLA PRODUCTOS-----------------------

CREATE TABLE Producto(
	
    idProducto int key auto_increment,
    titulo varchar(45),
    precio float,
    condicion varchar(45),
    plataforma varchar(45),
    garantia varchar(45),
    descripcion varchar(45),
    publicador varchar(45),
    lanzamiento varchar(45)
);

-- -----------------TABLA CARRITO-----------------------

CREATE TABLE Carrito(
	
    idCarrito int key auto_increment,
    fecha varchar(45),
    idCliente int,
    idProducto int,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
    
);

-- -----------------TABLA COMPRA-----------------------

CREATE TABLE Compra(

	idCompra int key auto_increment,
    cantidad int,
    precioUnitario float,
    latitud float,
    longitud float,
    idCarrito int,
    FOREIGN KEY (idCarrito) REFERENCES Carrito(idCarrito),
    fecha varchar(45)
);


-- -----------------TABLA VIDEOJUEGO-----------------------

CREATE TABLE VideoJuego(
	
    idVideoJuego int key auto_increment,
    categoria varchar(45),
    clasificacion varchar(45),
    genero varchar(45),
    trailer varchar(50),
    idProducto int,
    FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
);

-- -----------------TABLA CONTROL-----------------------

CREATE TABLE control(
	
    idControl int key auto_increment,
    inalambrico boolean,
    color varchar(10),
    -- fabricante varchar(45),
    conectoresDeEntrada varchar(45),
    vibracion boolean,
    bluetooth boolean,
    idProducto int,
    FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
    
);


-- -----------------TABLA CONSOLA-----------------------


CREATE TABLE Consola(

	idConsola int key auto_increment,
    memoria varchar(45),
    control boolean,
    resolucion varchar(45),
    capacidad varchar(45),
    tipoDeMemoria varchar(45),
    idProducto int,
    FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
    
);


-- -----------------TABLA ACCESORIO-----------------------

CREATE TABLE Accesorio(
	
    idAccesorio int key auto_increment,
    material varchar(45),
    idProducto int,
    FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
    
);


-- -----------------TABLA ACCESORIO-----------------------

CREATE TABLE foto(

	idFoto int key auto_increment,
    foto longtext,
    idProducto int,
    FOREIGN KEY(idProducto) REFERENCES Producto(idProducto)
    
);

