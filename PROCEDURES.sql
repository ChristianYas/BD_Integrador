
use games;
-- -----------------PROCEDURE-----------------------

DROP PROCEDURE insertClient;

-- -----------------INSERTAR CLIENTE----------------------

DELIMITER $$
CREATE PROCEDURE insertClient(
								nombre varchar(45),
								primerApellido varchar(45),
								segundoApellido varchar(45),
								edad int,
								nombreUsuario varchar(45),
								contrasenia varchar(100),
								calle varchar(45),
								colonia varchar(45),
								pais varchar(45),
								token varchar(45),
                                telefonoMovil varchar(45),
                                telefonoCasa varchar(45),
                                email varchar(45)
	)

	BEGIN
	
		INSERT INTO Cliente VALUES (
        NULL, nombre, primerApellido, segundoApellido, edad, nombreUsuario, contrasenia, calle, colonia, pais, token, telefonoMovil, telefonoCasa, email);
    
	END
$$
DELIMITER ;



-- -----------------LOGUEAR----------------------
DELIMITER $$
CREATE PROCEDURE logueo (IN username VARCHAR(255), IN password VARCHAR(255), OUT result BOOLEAN)
BEGIN
    SELECT COUNT(*) INTO result
    FROM cliente
    WHERE nombreUsuario = username AND contrasenia = password;
END $$
DELIMITER ;
-- ------------------------------------------



-- -------------------ADD SHOPPING CAR ---------------------------
DELIMITER $$
CREATE PROCEDURE InsertarCarrito(
    IN fecha varchar(45),
    IN idCliente INT,
    IN idProducto INT
)
BEGIN
    INSERT INTO carrito (fecha, idCliente, idProducto)
    VALUES (fecha, idCliente, idProducto);
END $$
DELIMITER ;

DELIMITER $$

CREATE PROCEDURE InsertarCompra (
  IN idCompra INT,
  IN cantidad INT,
  IN precioUnitario DOUBLE,
  IN latitud DOUBLE,
  IN longitud DOUBLE,
  IN idCarrito INT,
  IN fecha VARCHAR(45),
  IN idCliente INT,
  IN idProducto INT
)
BEGIN
  INSERT INTO compra (idCompra, cantidad, precioUnitario, latitud, longitud, idCarrito, fecha, idCliente, idProducto)
  VALUES (idCompra, cantidad, precioUnitario, latitud, longitud, idCarrito, fecha, idCliente, idProducto);
END

$$
DELIMITER ;
