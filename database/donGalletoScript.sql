CREATE DATABASE donGalleto;
USE donGalleto;

DROP TABLE IF EXISTS materia;
CREATE TABLE materia(
	idMateria	INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre		VARCHAR(150) NOT NULL,
    descripcion	VARCHAR(500) NOT NULL,
    precio		DOUBLE NOT NULL,
    cantidad	DOUBLE NOT NULL,
    estatus		INT NOT NULL DEFAULT 1
); 

-- galleta
DROP TABLE IF EXISTS inventario;
CREATE TABLE inventario(
	idGalleta		INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre			VARCHAR(150) NOT NULL,
    cantidadActual	INT NOT NULL,
    precioActual	DOUBLE NOT NULL,
    estatus			INT NOT NULL DEFAULT 1
);

DROP TABLE IF EXISTS venta;
CREATE TABLE venta(
    idVenta		INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    fecha		DATE DEFAULT (CURRENT_DATE)
);

DROP TABLE IF EXISTS ventaGalleta;
CREATE TABLE ventaGalleta(
	idVenta		INT NOT NULL,
    idGalleta	INT NOT NULL,
    moneda		DOUBLE NOT NULL DEFAULT 0,
    gramaje		DOUBLE NOT NULL DEFAULT 0,
    pieza		INT NOT NULL DEFAULT 0,
    cajaMedio	DOUBLE NOT NULL DEFAULT 0,
    cajaKilo	DOUBLE NOT NULL DEFAULT 0,
    total		DOUBLE NOT NULL DEFAULT 0,
    CONSTRAINT fk_ventagalleta_inventario FOREIGN KEY (idGalleta) REFERENCES inventario(idGalleta),
    CONSTRAINT fk_ventagalleta_venta FOREIGN KEY (idVenta) REFERENCES venta(idVenta)
);

/*
CREATE TABLE finanzas(
	idFinanzas	INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    idVenta		INT NOT NULL,
    cantidad	INT NOT NULL,
    ganancia	DOUBLE NOT NULL,
    fecha		DATE,
    estatus		INT NOT NULL DEFAULT 1,
    CONSTRAINT fk_finanzas_venta FOREIGN KEY (idVenta) REFERENCES venta(idVenta)
);
*/
