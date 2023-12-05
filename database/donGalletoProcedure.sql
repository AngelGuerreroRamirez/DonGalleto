-- ---------------------------------------------------------------------------------------------------------------------
-- receta de produccion
DELIMITER //
CREATE PROCEDURE recetaChispas(
    IN v_cantEquivalente	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia SET cantidad = cantidad - (0.165 * v_cantEquivalente) WHERE idMaterial = 1;
    UPDATE materia SET cantidad = cantidad - (0.090 * v_cantEquivalente) WHERE idMaterial = 2;
    UPDATE materia SET cantidad = cantidad - (0.055 * v_cantEquivalente) WHERE idMaterial = 3;
    UPDATE materia SET cantidad = cantidad - (0.055 * v_cantEquivalente) WHERE idMaterial = 4;
    UPDATE materia SET cantidad = cantidad - (0.005 * v_cantEquivalente) WHERE idMaterial = 5;
	UPDATE materia SET cantidad = cantidad - (1 * v_cantEquivalente) WHERE idMaterial = 6;
    UPDATE materia SET cantidad = cantidad - (0.005 * v_cantEquivalente) WHERE idMaterial = 9;
    UPDATE materia SET cantidad = cantidad - (0.060 * v_cantEquivalente) WHERE idMaterial = 4;
    
    UPDATE inventario SET cantidadActual = cantidadActual + (12 * v_cantEquivalente) WHERE idGalleta = 1;
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE recetaMantequilla(
    IN v_cantEquivalente	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia SET cantidad = cantidad - (0.200 * v_cantEquivalente) WHERE idMaterial = 2;
    UPDATE materia SET cantidad = cantidad - (0.200 * v_cantEquivalente) WHERE idMaterial = 8;
	UPDATE materia SET cantidad = cantidad - (2 * v_cantEquivalente) WHERE idMaterial = 6;
    UPDATE materia SET cantidad = cantidad - (0.010 * v_cantEquivalente) WHERE idMaterial = 9;
    UPDATE materia SET cantidad = cantidad - (0.450 * v_cantEquivalente) WHERE idMaterial = 1;
    UPDATE inventario SET cantidadActual = cantidadActual + (36 * v_cantEquivalente) WHERE idGalleta = 2;
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE recetaAvena(
    IN v_cantEquivalente	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia SET cantidad = cantidad - (.115 * v_cantEquivalente) WHERE idMaterial = 10;
    UPDATE materia SET cantidad = cantidad - (0.050 * v_cantEquivalente) WHERE idMaterial = 1;
    UPDATE materia SET cantidad = cantidad - (0.075 * v_cantEquivalente) WHERE idMaterial = 4;
    UPDATE materia SET cantidad = cantidad - (0.050 * v_cantEquivalente) WHERE idMaterial = 11;
    UPDATE materia SET cantidad = cantidad - (1 * v_cantEquivalente) WHERE idMaterial = 6;
    UPDATE materia SET cantidad = cantidad - (.001 * v_cantEquivalente) WHERE idMaterial = 19;
    UPDATE materia SET cantidad = cantidad - (0.005 * v_cantEquivalente) WHERE idMaterial = 9;
    
    UPDATE inventario SET cantidadActual = cantidadActual + (20 * v_cantEquivalente) WHERE idGalleta = 3;
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE recetaMacaron(
    IN v_cantEquivalente	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia SET cantidad = cantidad - (0.110 * v_cantEquivalente) WHERE idMaterial = 1;
    UPDATE materia SET cantidad = cantidad - (0.220 * v_cantEquivalente) WHERE idMaterial = 8;
    UPDATE materia SET cantidad = cantidad - (3 * v_cantEquivalente) WHERE idMaterial = 6;
    UPDATE materia SET cantidad = cantidad - (0.030 * v_cantEquivalente) WHERE idMaterial = 3;
    UPDATE materia SET cantidad = cantidad - (0.0005 * v_cantEquivalente) WHERE idMaterial = 13;
    
    UPDATE inventario SET cantidadActual = cantidadActual + (36 * v_cantEquivalente) WHERE idGalleta = 4;
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE recetaJengibre(
    IN v_cantEquivalente	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia SET cantidad = cantidad - (0.300 * v_cantEquivalente) WHERE idMaterial = 1;
    UPDATE materia SET cantidad = cantidad - (1 * v_cantEquivalente) WHERE idMaterial = 6;
    UPDATE materia SET cantidad = cantidad - (0.070 * v_cantEquivalente) WHERE idMaterial = 4;
    UPDATE materia SET cantidad = cantidad - (0.004 * v_cantEquivalente) WHERE idMaterial = 15;
    UPDATE materia SET cantidad = cantidad - (0.070 * v_cantEquivalente) WHERE idMaterial = 2;
    
    UPDATE inventario SET cantidadActual = cantidadActual + (10 * v_cantEquivalente) WHERE idGalleta = 5;
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE recetaPolvoron(
    IN v_cantEquivalente	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia SET cantidad = cantidad - (0.220 * v_cantEquivalente) WHERE idMaterial = 1;
    UPDATE materia SET cantidad = cantidad - (0.0045 * v_cantEquivalente) WHERE idMaterial = 5;
    UPDATE materia SET cantidad = cantidad - (0.113 * v_cantEquivalente) WHERE idMaterial = 2;
    UPDATE materia SET cantidad = cantidad - (0.115 * v_cantEquivalente) WHERE idMaterial = 3;
    UPDATE materia SET cantidad = cantidad - (2 * v_cantEquivalente) WHERE idMaterial = 6;
    UPDATE materia SET cantidad = cantidad - (0.015 * v_cantEquivalente) WHERE idMaterial = 9;
	UPDATE materia SET cantidad = cantidad - (0.00025 * v_cantEquivalente) WHERE idMaterial = 13;
    
    UPDATE inventario SET cantidadActual = cantidadActual + (12 * v_cantEquivalente) WHERE idGalleta = 6;
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE recetaPastisetas(
    IN v_cantEquivalente	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia SET cantidad = cantidad - (0.210 * v_cantEquivalente) WHERE idMaterial = 2;
    UPDATE materia SET cantidad = cantidad - (0.230 * v_cantEquivalente) WHERE idMaterial = 1;
    UPDATE materia SET cantidad = cantidad - (0.090 * v_cantEquivalente) WHERE idMaterial = 8;
    UPDATE materia SET cantidad = cantidad - (2 * v_cantEquivalente) WHERE idMaterial = 6;
    UPDATE materia SET cantidad = cantidad - (0.115 * v_cantEquivalente) WHERE idMaterial = 3;
    UPDATE materia SET cantidad = cantidad - (0.005 * v_cantEquivalente) WHERE idMaterial = 9;
    UPDATE materia SET cantidad = cantidad - (0.001 * v_cantEquivalente) WHERE idMaterial = 19;
    
    UPDATE inventario SET cantidadActual = cantidadActual + (45 * v_cantEquivalente) WHERE idGalleta = 7;
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE recetaNuez(
    IN v_cantEquivalente	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia SET cantidad = cantidad - (0.250 * v_cantEquivalente) WHERE idMaterial = 1;
    UPDATE materia SET cantidad = cantidad - (0.190 * v_cantEquivalente) WHERE idMaterial = 2;
    UPDATE materia SET cantidad = cantidad - (0.110 * v_cantEquivalente) WHERE idMaterial = 8;
    UPDATE materia SET cantidad = cantidad - (0.005 * v_cantEquivalente) WHERE idMaterial = 9;
    UPDATE materia SET cantidad = cantidad - (0.170 * v_cantEquivalente) WHERE idMaterial = 16;
    
    UPDATE inventario SET cantidadActual = cantidadActual + (30 * v_cantEquivalente) WHERE idGalleta = 8;
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE recetaCoco(
    IN v_cantEquivalente	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia SET cantidad = cantidad - (0.170 * v_cantEquivalente) WHERE idMaterial = 2;
    UPDATE materia SET cantidad = cantidad - (0.100 * v_cantEquivalente) WHERE idMaterial = 3;
    UPDATE materia SET cantidad = cantidad - (0.100 * v_cantEquivalente) WHERE idMaterial = 4;
    UPDATE materia SET cantidad = cantidad - (1 * v_cantEquivalente) WHERE idMaterial = 6;
    UPDATE materia SET cantidad = cantidad - (0.075 * v_cantEquivalente) WHERE idMaterial = 17;
    UPDATE materia SET cantidad = cantidad - (0.160 * v_cantEquivalente) WHERE idMaterial = 1;
    UPDATE materia SET cantidad = cantidad - (0.002 * v_cantEquivalente) WHERE idMaterial = 19;
    UPDATE materia SET cantidad = cantidad - (0.005 * v_cantEquivalente) WHERE idMaterial = 9;
    UPDATE materia SET cantidad = cantidad - (0.005 * v_cantEquivalente) WHERE idMaterial = 15;
    
    UPDATE inventario SET cantidadActual = cantidadActual + (35 * v_cantEquivalente) WHERE idGalleta = 9;
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE recetaAlmendra(
    IN v_cantEquivalente	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia SET cantidad = cantidad - (2 * v_cantEquivalente) WHERE idMaterial = 6;
    UPDATE materia SET cantidad = cantidad - (0.002 * v_cantEquivalente) WHERE idMaterial = 19;
    UPDATE materia SET cantidad = cantidad - (0.005 * v_cantEquivalente) WHERE idMaterial = 18;
    UPDATE materia SET cantidad = cantidad - (0.300 * v_cantEquivalente) WHERE idMaterial = 12;
    
    UPDATE inventario SET cantidadActual = cantidadActual + (35 * v_cantEquivalente) WHERE idGalleta = 10;
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

-- ---------------------------------------------------------------------------------------------------------------------
-- vistas
CREATE VIEW vista_materia AS(
	SELECT idMateria, nombre, descripcion, precio, cantidad, estatus
    FROM materia
);

CREATE VIEW vista_inventario AS(
	SELECT idGalleta, nombre, cantidadActual, precioActual, estatus
    FROM inventario
);

CREATE VIEW vista_ventaGalleta AS(
	SELECT v.idVenta,idGalleta, moneda, gramaje, pieza, cajaMedio, cajaKilo, total, v.fecha
	FROM ventaGalleta vg
	INNER JOIN venta v ON v.idVenta = vg.idVenta
);

-- ---------------------------------------------------------------------------------------------------------------------
-- Materia prima
DELIMITER //
CREATE PROCEDURE insertMateria(
	IN v_nombre		VARCHAR(150),
    IN v_descripcion	VARCHAR(300),
    IN v_precio		DOUBLE,
    IN v_cantidad	DOUBLE
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    INSERT INTO materia(nombre, descripcion, precio, cantidad) 
    VALUES (v_nombre, v_descripcion, v_precio, v_cantidad);
	
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE updateMateria(
	IN v_nombre		VARCHAR(150),
    IN v_descripcion	VARCHAR(300),
    IN v_precio		DOUBLE,
    IN v_cantidad	DOUBLE,
    
    IN v_idMateria INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia
    SET nombre = v_nombre, descripcion = v_descripcion, precio = v_precio, cantidad = v_precio
    WHERE idMateria = v_idMateria;
	
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE eliminarMateria(
    IN v_idMateria INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia
    SET estatus = 0
    WHERE idMateria = v_idMateria;
	
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE activarMateria(
    IN v_idMateria INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE materia
    SET estatus = 1
    WHERE idMateria = v_idMateria;
	
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;
-- ---------------------------------------------------------------------------------------------------------------------
-- Galleta
DELIMITER //
CREATE PROCEDURE insertInventario(
	IN v_nombre				VARCHAR(150),
    IN v_cantidadActual		INT,
    IN v_precioActual		DOUBLE
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    INSERT INTO inventario (nombre, cantidadActual, precioActual) 
    VALUES (v_nombre, v_cantidadActual, v_precioActual);
	
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE updateInventario(
	IN v_nombre				VARCHAR(150),
    IN v_cantidadActual		INT,
    IN v_precioActual		DOUBLE,
    
    IN v_idGalleta INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE inventario
    SET nombre = v_nombre, cantidadActual = v_cantidadActual, precioActual = v_precioActual
    WHERE idGalleta = v_idGalleta;
	
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE eliminarInventario(
    IN v_idGalleta INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE inventario
    SET estatus = 0
    WHERE idGalleta = v_idGalleta;
	
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE activarInventario(
    IN v_idGalleta INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE inventario
    SET estatus = 1
    WHERE idGalleta = v_idGalleta;
	
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

-- ------------------------------------------------------------------------------------------------------------
-- Produccion de galletas
DELIMITER //
CREATE PROCEDURE producirGalletas(
    IN v_idGalleta INT,
    IN v_tanda	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_idGalleta = 1 THEN
		CALL recetaChispas(v_tanda);
    END IF;
	IF v_idGalleta = 2 THEN
		CALL recetaMantequilla(v_tanda);
    END IF;
    IF v_idGalleta = 3 THEN
		CALL recetaAvena(v_tanda);
    END IF;
	IF v_idGalleta = 4 THEN
		CALL recetaMacaron(v_tanda);
    END IF;
    IF v_idGalleta = 5 THEN
		CALL recetaJengibre(v_tanda);
    END IF;
	IF v_idGalleta = 6 THEN
		CALL recetaPolvoron(v_tanda);
    END IF;
    IF v_idGalleta = 7 THEN
		CALL recetaPastisetas(v_tanda);
    END IF;
	IF v_idGalleta = 8 THEN
		CALL recetaNuez(v_tanda);
    END IF;
    IF v_idGalleta = 9 THEN
		CALL recetaCoco(v_tanda);
    END IF;
	IF v_idGalleta = 10 THEN
		CALL recetaAlmendra(v_tanda);
    END IF;
    
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;  

DELIMITER //
CREATE PROCEDURE quitarGalletas(
    IN v_idGalleta INT,
    IN v_cantidadActual	INT
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    UPDATE inventario
    SET cantidadActual = cantidadActual-v_cantidadActual
    WHERE idGalleta = v_idGalleta;
	
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

-- ------------------------------------------------------------------------------------------------------------
-- Quitar de ventas
DELIMITER //
CREATE PROCEDURE quitarChispas(
    IN v_moneda		DOUBLE,
    IN v_gramaje	DOUBLE,
    IN v_pieza		INT,
    IN v_cajaMedio	DOUBLE,
    IN v_cajaKilo	DOUBLE
)
BEGIN
	DECLARE monedaQ INT;
    DECLARE gramajeQ INT;
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_moneda <> 0 THEN
		SET monedaQ = ROUND((v_moneda/(SELECT precioActual from inventario WHERE idGalleta = 1)));
	ELSE 
		SET monedaQ = 0;
    END IF;
    IF v_gramaje <> 0 THEN
		SET gramajeQ = ROUND((v_gramaje/6));
	ELSE 
		SET gramajeQ = 0;
    END IF;
    UPDATE inventario SET cantidadActual = cantidadActual - (monedaQ + gramajeQ + v_pieza + (v_cajaKilo*165) + (v_cajaMedio*83)) WHERE idGalleta = 1;
    
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE quitarMantequilla(
    IN v_moneda		DOUBLE,
    IN v_gramaje	DOUBLE,
    IN v_pieza		INT,
    IN v_cajaMedio	DOUBLE,
    IN v_cajaKilo	DOUBLE
)
BEGIN
	DECLARE monedaQ INT;
    DECLARE gramajeQ INT;
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_moneda <> 0 THEN
		SET monedaQ = ROUND((v_moneda/(SELECT precioActual from inventario WHERE idGalleta = 2)));
	ELSE 
		SET monedaQ = 0;
    END IF;
    IF v_gramaje <> 0 THEN
		SET gramajeQ = ROUND((v_gramaje/2));
	ELSE 
		SET gramajeQ = 0;
    END IF;
    UPDATE inventario SET cantidadActual = cantidadActual - (monedaQ + gramajeQ + v_pieza + (v_cajaKilo*500) + (v_cajaMedio*250)) WHERE idGalleta = 2;
    
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE quitarAvena(
    IN v_moneda		DOUBLE,
    IN v_gramaje	DOUBLE,
    IN v_pieza		INT,
    IN v_cajaMedio	DOUBLE,
    IN v_cajaKilo	DOUBLE
)
BEGIN
	DECLARE monedaQ INT;
    DECLARE gramajeQ INT;
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_moneda <> 0 THEN
		SET monedaQ = ROUND((v_moneda/(SELECT precioActual from inventario WHERE idGalleta = 3)));
	ELSE 
		SET monedaQ = 0;
    END IF;
    IF v_gramaje <> 0 THEN
		SET gramajeQ = ROUND((v_gramaje/5));
	ELSE 
		SET gramajeQ = 0;
    END IF;
    UPDATE inventario SET cantidadActual = cantidadActual - (monedaQ + gramajeQ + v_pieza + (v_cajaKilo*200) + (v_cajaMedio*100)) WHERE idGalleta = 3;
    
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE quitarMacaron(
    IN v_moneda		DOUBLE,
    IN v_gramaje	DOUBLE,
    IN v_pieza		INT,
    IN v_cajaMedio	DOUBLE,
    IN v_cajaKilo	DOUBLE
)
BEGIN
	DECLARE monedaQ INT;
    DECLARE gramajeQ INT;
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_moneda <> 0 THEN
		SET monedaQ = ROUND((v_moneda/(SELECT precioActual from inventario WHERE idGalleta = 4)));
	ELSE 
		SET monedaQ = 0;
    END IF;
    IF v_gramaje <> 0 THEN
		SET gramajeQ = ROUND((v_gramaje/6));
	ELSE 
		SET gramajeQ = 0;
    END IF;
    UPDATE inventario SET cantidadActual = cantidadActual - (monedaQ + gramajeQ + v_pieza + (v_cajaKilo*165) + (v_cajaMedio*83)) WHERE idGalleta = 4;
    
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE quitarJengibre(
    IN v_moneda		DOUBLE,
    IN v_gramaje	DOUBLE,
    IN v_pieza		INT,
    IN v_cajaMedio	DOUBLE,
    IN v_cajaKilo	DOUBLE
)
BEGIN
	DECLARE monedaQ INT;
    DECLARE gramajeQ INT;
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_moneda <> 0 THEN
		SET monedaQ = ROUND((v_moneda/(SELECT precioActual from inventario WHERE idGalleta = 5)));
	ELSE 
		SET monedaQ = 0;
    END IF;
    IF v_gramaje <> 0 THEN
		SET gramajeQ = ROUND((v_gramaje/4));
	ELSE 
		SET gramajeQ = 0;
    END IF;
    UPDATE inventario SET cantidadActual = cantidadActual - (monedaQ + gramajeQ + v_pieza + (v_cajaKilo*250) + (v_cajaMedio*125)) WHERE idGalleta = 5;
    
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE quitarPolvoron(
    IN v_moneda		DOUBLE,
    IN v_gramaje	DOUBLE,
    IN v_pieza		INT,
    IN v_cajaMedio	DOUBLE,
    IN v_cajaKilo	DOUBLE
)
BEGIN
	DECLARE monedaQ INT;
    DECLARE gramajeQ INT;
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_moneda <> 0 THEN
		SET monedaQ = ROUND((v_moneda/(SELECT precioActual from inventario WHERE idGalleta = 6)));
	ELSE 
		SET monedaQ = 0;
    END IF;
    IF v_gramaje <> 0 THEN
		SET gramajeQ = ROUND((v_gramaje/3));
	ELSE 
		SET gramajeQ = 0;
    END IF;
    UPDATE inventario SET cantidadActual = cantidadActual - (monedaQ + gramajeQ + v_pieza + (v_cajaKilo*333) + (v_cajaMedio*167)) WHERE idGalleta = 6;
    
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE quitarPastisetas(
    IN v_moneda		DOUBLE,
    IN v_gramaje	DOUBLE,
    IN v_pieza		INT,
    IN v_cajaMedio	DOUBLE,
    IN v_cajaKilo	DOUBLE
)
BEGIN
	DECLARE monedaQ INT;
    DECLARE gramajeQ INT;
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_moneda <> 0 THEN
		SET monedaQ = ROUND((v_moneda/(SELECT precioActual from inventario WHERE idGalleta = 7)));
	ELSE 
		SET monedaQ = 0;
    END IF;
    IF v_gramaje <> 0 THEN
		SET gramajeQ = ROUND((v_gramaje/2));
	ELSE 
		SET gramajeQ = 0;
    END IF;
    UPDATE inventario SET cantidadActual = cantidadActual - (monedaQ + gramajeQ + v_pieza + (v_cajaKilo*500) + (v_cajaMedio*250)) WHERE idGalleta = 7;
    
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE quitarNuez(
    IN v_moneda		DOUBLE,
    IN v_gramaje	DOUBLE,
    IN v_pieza		INT,
    IN v_cajaMedio	DOUBLE,
    IN v_cajaKilo	DOUBLE
)
BEGIN
	DECLARE monedaQ INT;
    DECLARE gramajeQ INT;
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_moneda <> 0 THEN
		SET monedaQ = ROUND((v_moneda/(SELECT precioActual from inventario WHERE idGalleta = 8)));
	ELSE 
		SET monedaQ = 0;
    END IF;
    IF v_gramaje <> 0 THEN
		SET gramajeQ = ROUND((v_gramaje/4));
	ELSE 
		SET gramajeQ = 0;
    END IF;
    UPDATE inventario SET cantidadActual = cantidadActual - (monedaQ + gramajeQ + v_pieza + (v_cajaKilo*250) + (v_cajaMedio*125)) WHERE idGalleta = 8;
    
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE quitarCoco(
    IN v_moneda		DOUBLE,
    IN v_gramaje	DOUBLE,
    IN v_pieza		INT,
    IN v_cajaMedio	DOUBLE,
    IN v_cajaKilo	DOUBLE
)
BEGIN
	DECLARE monedaQ INT;
    DECLARE gramajeQ INT;
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_moneda <> 0 THEN
		SET monedaQ = ROUND((v_moneda/(SELECT precioActual from inventario WHERE idGalleta = 9)));
	ELSE 
		SET monedaQ = 0;
    END IF;
    IF v_gramaje <> 0 THEN
		SET gramajeQ = ROUND((v_gramaje/4));
	ELSE 
		SET gramajeQ = 0;
    END IF;
    UPDATE inventario SET cantidadActual = cantidadActual - (monedaQ + gramajeQ + v_pieza + (v_cajaKilo*250) + (v_cajaMedio*125)) WHERE idGalleta = 9;
    
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE quitarAlmendra(
    IN v_moneda		DOUBLE,
    IN v_gramaje	DOUBLE,
    IN v_pieza		INT,
    IN v_cajaMedio	DOUBLE,
    IN v_cajaKilo	DOUBLE
)
BEGIN
	DECLARE monedaQ INT;
    DECLARE gramajeQ INT;
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_moneda <> 0 THEN
		SET monedaQ = ROUND((v_moneda/(SELECT precioActual from inventario WHERE idGalleta = 10)));
	ELSE 
		SET monedaQ = 0;
    END IF;
    IF v_gramaje <> 0 THEN
		SET gramajeQ = ROUND((v_gramaje/3));
	ELSE 
		SET gramajeQ = 0;
    END IF;
    UPDATE inventario SET cantidadActual = cantidadActual - (monedaQ + gramajeQ + v_pieza + (v_cajaKilo*333) + (v_cajaMedio*167)) WHERE idGalleta = 10;
    
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE quitarExistencias(
	IN v_idGalleta		INT,
    IN v_moneda			DOUBLE,
    IN v_gramaje		DOUBLE,
    IN v_pieza			INT,
    IN v_cajaMedio		DOUBLE,
    IN v_cajaKilo		DOUBLE
)
BEGIN
	SET autocommit = 0;
    START TRANSACTION;
    
    IF v_idGalleta = 1 THEN
		CALL quitarChispas(v_moneda, v_gramaje, v_pieza, v_cajaMedio, v_cajaKilo);
    END IF;
	IF v_idGalleta = 2 THEN
		CALL quitarMantequilla(v_moneda, v_gramaje, v_pieza, v_cajaMedio, v_cajaKilo);
    END IF;
    IF v_idGalleta = 3 THEN
		CALL quitarAvena(v_moneda, v_gramaje, v_pieza, v_cajaMedio, v_cajaKilo);
    END IF;
	IF v_idGalleta = 4 THEN
		CALL quitarMacaron(v_moneda, v_gramaje, v_pieza, v_cajaMedio, v_cajaKilo);
    END IF;
    IF v_idGalleta = 5 THEN
		CALL quitarJengibre(v_moneda, v_gramaje, v_pieza, v_cajaMedio, v_cajaKilo);
    END IF;
	IF v_idGalleta = 6 THEN
		CALL quitarPolvoron(v_moneda, v_gramaje, v_pieza, v_cajaMedio, v_cajaKilo);
    END IF;
    IF v_idGalleta = 7 THEN
		CALL quitarPastisetas(v_moneda, v_gramaje, v_pieza, v_cajaMedio, v_cajaKilo);
    END IF;
	IF v_idGalleta = 8 THEN
		CALL quitarNuez(v_moneda, v_gramaje, v_pieza, v_cajaMedio, v_cajaKilo);
    END IF;
    IF v_idGalleta = 9 THEN
		CALL quitarCoco(v_moneda, v_gramaje, v_pieza, v_cajaMedio, v_cajaKilo);
    END IF;
	IF v_idGalleta = 10 THEN
		CALL quitarAlmendra(v_moneda, v_gramaje, v_pieza, v_cajaMedio, v_cajaKilo);
    END IF;
	
    COMMIT;
    SET autocommit = 1;
END //
DELIMITER ;