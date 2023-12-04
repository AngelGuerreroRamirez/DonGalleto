INSERT INTO inventario (nombre, cantidadActual, precioActual) VALUES ("Chispas de chocolate",120, 3.5);
INSERT INTO inventario (nombre, cantidadActual, precioActual) VALUES ("Mantequilla",120, 2.5);
INSERT INTO inventario (nombre, cantidadActual, precioActual) VALUES ("Avena",120, 1.50);
INSERT INTO inventario (nombre, cantidadActual, precioActual) VALUES ("Macaron",150, 1.50);
INSERT INTO inventario (nombre, cantidadActual, precioActual) VALUES ("Jengibre",120, 4);
INSERT INTO inventario (nombre, cantidadActual, precioActual) VALUES ("Polvoron",120,4);
INSERT INTO inventario (nombre, cantidadActual, precioActual) VALUES ("Pastisetas",120,2);
INSERT INTO inventario (nombre, cantidadActual, precioActual) VALUES ("Nuez",120,3.5);
INSERT INTO inventario (nombre, cantidadActual, precioActual) VALUES ("Coco",120,2);
INSERT INTO inventario (nombre, cantidadActual, precioActual) VALUES ("Almendra",120, 6.5);

-- select * from inventario;

INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Harina","Harina San Blas 800 gramos", 25.00, 8.00);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Mantequilla","Aguascalientes 1Kg",205.00, 5.000);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Azúcar","Azucar estandar 1kg",29.00, 10.000);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Azúcar morena","Zulka 1kg", 55.00, 7.000);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Polvo para hornear","Rexal 100gr",14, 1.000);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Huevo","San Juan 1 kg 16 piezas",37.00, 36);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Chispa de chocolate","Alpezzi 1 kg",138.00, 3.000);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Azúcar glass","Zulka 500 gr",55.00, 2.500);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Esencia de vainilla","Esencias Duche 120ml", 28.00, 1.200);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Avena","Great Value 1kg",94.70, 5.000);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Aceite","Ave 3L",166.50, 9.000);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Almendra molida","Great Value 450gr",175.00, 2.250);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Colorantes en gel","Jelly Color 10ml 15 piezas",199.99, 0.450);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Miel","Miel natural 1 kilo", 50.00, 3.000);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Bicarbonato de sodio","Arm & Hammer 227gr",23.50, 2.270);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Nuez","Nuez sin cascara 1kg", 160.00, 4.000);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Coco rallado","Coco rallado 1kg",30.00, 3.000);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Limón","Limon 1kg",22.00, 2.000);
INSERT INTO materia (nombre, descripcion, precio, cantidad) VALUES ("Sal","La Fina 1kg",22.50, 2.000);

-- select * from materia;

-- insert de pruebas
INSERT INTO venta (fecha) value ("2023-10-09");
INSERT INTO venta (fecha) value ("2023-10-09");
INSERT INTO ventaGalleta(idVenta,idGalleta, moneda, gramaje, pieza, cajaMedio, cajaKilo, total) value (1, 1, 0, 0, 3, 0, 0, 9);
INSERT INTO ventaGalleta(idVenta,idGalleta, moneda, gramaje, pieza, cajaMedio, cajaKilo, total) value (1, 9, 0, 0, 4, 0, 0, 8);
INSERT INTO ventaGalleta(idVenta,idGalleta, moneda, gramaje, pieza, cajaMedio, cajaKilo, total) value (2, 2, 10, 0, 0, 0, 0, 28);
INSERT INTO ventaGalleta(idVenta,idGalleta, moneda, gramaje, pieza, cajaMedio, cajaKilo, total) value (2, 6, 0, 20, 0, 0, 0, 8);
INSERT INTO ventaGalleta(idVenta,idGalleta, moneda, gramaje, pieza, cajaMedio, cajaKilo, total) value (2, 7, 0, 0, 0, 0, 1, 1000);
