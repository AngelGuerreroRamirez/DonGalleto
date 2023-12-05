-- Chispas de chocolate
/*
1 1/2 tazas de harina
90 gramos de mantequilla
1/4 tazas de azúcar
1/4 tazas de azúcar morena
1 cucharadita de polvo para hornear
1 huevo
1 cucharadita de vainilla líquida
1/2 tazas de chispa de chocolate

12 porciones
costo de produccion 3.1 cada una
cada galleta pesa 6 gramos
1 kilo 165 galletas 577.50 caja 
1/2 kilo 83 galletas 290.50 caja
*/
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

-- Mantequilla
/*
200 gr mantequilla, blanda
200 gr azúcar Flor
2 huevos
2 cucharaditas de esencia de vainilla Gourmet
450 gr harina
 
 36 porciones
 costo de produccion 2.33 cada una
 peso 2 gramos cada una
 1 kilo 500 galletas 1250 caja
 1/2 kilo 250 galletas 625 caja
*/
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

-- Avena
/*
115g. de copos de avena
50g. de harina (puede ser harina integral)
75g. de azúcar negra (puede ser blanca)
50ml. de aceite (de maíz o girasol)
1 huevo
1 pizca de sal
1 cdita. de esencia de vainilla

20 porciones
costo de produccion 1.14 cada una
peso 5 gramos cada uno
1 kilo 200 galletas 300 caja
1/2 100 galletas 150 cajaa
*/
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

-- Macarones
/*
110 g de harina de almendras (o almendra molida)
220 g de azúcar glas
110 g de claras de huevo envejecidas (deben pasar al menos una noche a temperatura ambiente tapadas con papel film)
30 g de azúcar blanquilla
Colorantes en gel

36 porciones
costo de produccion 1.14 cada uno
peso 6 gramos cada uno
1 kilo 165 galletas 247.50 caja
1/2 kilo 83 galletas 123 caja
*/
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

-- Jengibre
/*
300 g de Harina
1 Huevo
100 g de Miel
70 g de Azúcar moscovado o azúcar moreno
4 g de Bicarbonato sódico
70 g de Mantequilla

10 porciones
costo de produccion 3.52
peso 4 gramos cada uno
1 kilo 250 galletas 1000 caja
1/2 kilo 125 galletas 500 caja
*/
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

-- Polvorones
/*
2 cups de harina de trigo
0,16 oz de polvo para hornear
4 oz de mantequilla
½ cups de azúcar
2 huevos
0, 52 oz de esencia de vainilla
colorantes comestibles

12 porciones
costo de produccion 3.53 cada uno
peso 3 gramos cada uno
1 kilo 333 galletas 1332 caja
1/2 kilo 167 galletas 668 caja
*/
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

-- Pastisetas 
/*
210 gr. Mantequilla
230 gr. Harina de Trigo
90 gr. Azúcar Glass
2 pzas Huevos
1/2 Cucharadita Extracto de Vainilla
1 Pizca Sal

45 porciones
costo de produccion 1.4 cada una
peso 2 gramos cada uno
1 kilo 500 galletas 1000 caja
1/2 kilo 250 galletas 500 caja
*/
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

-- Nuez
/*
Harina de Trigo “0000” 250 Gr. (floja o todo uso)
Manteca 190 Gr. (mantequilla)
Azúcar Impalpable 90 Gr. (glas)
Esencia de Vainilla 1 Cda.
Nueces 170 Gr.
Azúcar Impalpable extra para cubrir

30 porciones
coste de producion 2.9 cada uno
peso 4 gramos cada uno
1 kilo 250 galletas 875 caja
1/2 kilo 125 galletas 437.50
*/
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

-- coco
/*
Mantequilla sin sal atemperada 170 g
Azúcar 100 g
Azúcar moreno 100 g
Huevos L 1
Coco rallado 75 g
Harina de repostería 160 g
Sal 2 g
Esencia de vainilla 5 ml
Bicarbonato sódico 5 ml

35 piezas
costo de produccion 1.5 cada una
peso 4 gramos cada uno
1 kilo 250 galletas 500 caja
1/2 kilo 125 galletas 250 caja
*/
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

-- almendra
/*
Huevo 2 
Sal
Azúcar 150 g
Ralladura de limón 0.5
Almendra molida 250 g
Almendra granillo o entera para decorar

Para 20 unidades
costo de produccion 6.2 cada uno
peso 3 gramos cada uno
1 kilo 333 galletas 2164.50 caja
1/2 kilo 167 galletas 1085.50 caja
*/
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