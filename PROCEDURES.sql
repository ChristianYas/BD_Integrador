
use games;
-- -----------------PROCEDURE-----------------------

CALL insertClient("admin", "admin", "admin", 21, "admin", "1234", "mision de independencia", "valle de torres", "México", "vacio");

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
								token varchar(45) 
                                )

	BEGIN
	
		INSERT INTO Cliente VALUES (NULL, nombre, primerApellido, segundoApellido, edad, nombreUsuario, contrasenia, calle, colonia, pais, token);
    
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

