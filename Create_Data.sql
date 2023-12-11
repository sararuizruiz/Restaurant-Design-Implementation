-- RESTAURANTES

insert into restaurante(nombre) values('Gottan Grill'); 

insert into restaurante(nombre) values('Vips');

insert into restaurante(nombre) values('Pizza Hut');



-- SUCURSALES 

insert into sucursal(id,nif,nombre, fechainauguracion,calle, ciudad, cp, restaurante_id)
values(10,1001,'Gottan Grill Teatinos', to_date('04-05-2010', 'DD-MM-YYYY'),'Av. Plutarco', 'Málaga', 29004, 1);

insert into sucursal(id,nif,nombre, fechainauguracion,calle, ciudad, cp, restaurante_id)
values(11,1002,'Gottan Grill Vialia', to_date('16-02-2011', 'DD-MM-YYYY'),'C.Explanada de la Estación', 'Málaga', 29004, 1);

insert into sucursal(id,nif,nombre, fechainauguracion,calle, ciudad, cp, restaurante_id)
values(20,2003,'Vips Puerto Banús', to_date('20-06-2015', 'DD-MM-YYYY'),'Av. de Julio Iglesias', 'Marbella', 29660, 2);

insert into sucursal(id,nif,nombre, fechainauguracion,calle, ciudad, cp, restaurante_id)
values(30,3004,'Pizza Hut Torremolinos', to_date('27-10-2019', 'DD-MM-YYYY'),'C.Salvador Allende', 'Torremolinos', 29140, 3);

insert into sucursal(nif,nombre, fechainauguracion,calle, ciudad, cp, restaurante_id)
values(31,1008,'Pizza Hut Ronda', to_date('07-08-2012', 'DD-MM-YYYY'),'Plaza España', 'Ronda', 29400, 3);



-- EMPLEADOS

insert into empleado(dni,nss,nombre, fechanacimiento, cargo,calle, ciudad, cp)
values(25606823,112358,'Fernando Guerrero', to_date('01-08-1990', 'DD-MM-YYYY'),'Cocinero','C.Pacífico', 'Málaga', 29004);

insert into empleado(dni,nss,nombre, fechanacimiento, cargo)
values(27365277,332705,'Enrique Orcaray', to_date('22-11-1998', 'DD-MM-YYYY'),'Cocinero');

insert into empleado(dni,nss,nombre, fechanacimiento, cargo,calle, ciudad, cp)
values(25613695,235788,'Tomás Rodríguez', to_date('24-09-1989', 'DD-MM-YYYY'),'Gerente','Camino del Pato', 'Málaga', 29004);

insert into empleado(dni,nss,nombre, fechanacimiento, cargo)
values(25696302,244701,'Carolina Moreno', to_date('05-12-1987', 'DD-MM-YYYY'),'Gerente');

insert into empleado(dni,nss,nombre, fechanacimiento, cargo,calle, ciudad, cp)
values(25740200,231190,'Miguel Conde', to_date('11-10-1993', 'DD-MM-YYYY'),'Gerente','C.Cruz Verde', 'Torremolinos', 29140);

insert into empleado(dni,nss,nombre, fechanacimiento, cargo,calle, ciudad, cp)
values(25612200,235744,'Lucía Pérez', to_date('24-11-1988', 'DD-MM-YYYY'),'Gerente','Av.Imperio Argentina', 'Málaga', 29004);

insert into empleado(dni,nss,nombre, fechanacimiento, cargo,calle, ciudad, cp)
values(25707011,154328,'Rafael Matas', to_date('10-03-1981', 'DD-MM-YYYY'),'Director','C.Sevilla', 'Ronda', 29400);

insert into empleado(dni,nss,nombre, fechanacimiento, cargo,calle, ciudad, cp)
values(25447759,120017,'Ana Castillo', to_date('18-10-1984', 'DD-MM-YYYY'),'Director','C.Naciones Unidas', 'Marbella', 29660);

insert into empleado(dni,nss,nombre, fechanacimiento, cargo,calle, ciudad, cp)
values(25635521,258147,'Lina Moreno', to_date('22-07-1981', 'DD-MM-YYYY'),'Director','C.Brahms', 'Málaga', 29004);

insert into empleado(dni,nss,nombre, fechanacimiento, cargo,calle, ciudad, cp)
values(25787225,336958,'Marta Hernández', to_date('02-09-1996', 'DD-MM-YYYY'),'Camarero','C.Lili Álvarez', 'Málagaa', 29004);

insert into empleado(dni,nss,nombre, fechanacimiento, cargo, empleado_dni)
values(25654321,123456,'Luis Pérez', to_date('02-09-1996', 'DD-MM-YYYY'),'Camarero', 27809066);

insert into empleado(dni,nss,nombre, fechanacimiento, cargo)
values(27809066,102030,'Ariana Grande', to_date('30-12-1995', 'DD-MM-YYYY'),'Camarero');



-- GERENTE 

insert into gerente(empleado_dni, sucursal_id) values(25613695,10);
insert into gerente(fechanombramiento, empleado_dni, sucursal_id) values(to_date('01-10-2021', 'DD-MM-YYYY'),25696302,20);
insert into gerente(empleado_dni, sucursal_id) values(25740200,30);
insert into gerente(empleado_dni, sucursal_id) values(25612200,11);



-- DIRECTOR 

insert into director(fechanombramiento, empleado_dni, restaurante_id) values(to_date('01-10-2021', 'DD-MM-YYYY'),25707011,1);
insert into director(empleado_dni, restaurante_id) values(25447759,2);
insert into director(empleado_dni, restaurante_id) values(25635521,3);



-- CAMARERO

insert into camarero(empleado_dni) values(25787225);
insert into camarero(empleado_dni) values(25654321);
insert into camarero(empleado_dni) values(27809066);



-- TRABAJA EN 
INSERT INTO trabajaen(sucursal_id, empleado_dni) VALUES (10, 25787225);
INSERT INTO trabajaen(sucursal_id, empleado_dni) VALUES (11, 25787225);
INSERT INTO trabajaen(sucursal_id, empleado_dni) VALUES (20, 25654321);
INSERT INTO trabajaen(sucursal_id, empleado_dni) VALUES (30, 27809066);


-- PRODUCTOS
INSERT INTO producto (id, precio, costo, nombre) VALUES (100, 10.99, 5.99, 'Hamburguesa de buey');
INSERT INTO producto (id, precio, costo, nombre) VALUES (200, 8.49, 3.99, 'Pizza Prosciutto');
INSERT INTO producto (id, precio, costo, nombre) VALUES (300, 12.99, 6.49, 'Ensalada César');
INSERT INTO producto (id, precio, costo, nombre) VALUES (400, 6.99, 2.99, 'Pasta Carbonara');
INSERT INTO producto (id, precio, costo, nombre) VALUES (500, 5.29, 1.89, 'Filete de pollo');
INSERT INTO producto (id, precio, costo, nombre) VALUES (600, 2.99, 0.99, 'Refresco');
INSERT INTO producto (id, precio, costo, nombre) VALUES (700, 15.99, 8.99, 'Filete de Salmón');
INSERT INTO producto (id, precio, costo, nombre) VALUES (800, 4.99, 1.99, 'Agua Mineral');
INSERT INTO producto (id, precio, costo, nombre) VALUES (900, 7.49, 3.49, 'Tarta de Chocolate');
INSERT INTO producto (id, precio, costo, nombre) VALUES (101, 1.50, 0.49, 'Café');
INSERT INTO producto (id, precio, costo, nombre) VALUES (102, 4.50, 1.49, 'Vino Tinto');
INSERT INTO producto (id, precio, costo, nombre) VALUES (103, 2.50, 0.50, 'Cerveza rubia');
INSERT INTO producto (id, precio, costo, nombre) VALUES (104, 5.50, 2.50, 'Whisky');
INSERT INTO producto (id, precio, costo, nombre) VALUES (105, 6.99, 2.49, 'Croquetas');




-- ALERGENOS
INSERT INTO alergenos (alergeno, comida_producto_id) VALUES ('Gluten', 100);
INSERT INTO alergenos (alergeno, comida_producto_id) VALUES ('Gluten', 200);
INSERT INTO alergenos (alergeno, comida_producto_id) VALUES ('Gluten', 400);
INSERT INTO alergenos (alergeno, comida_producto_id) VALUES ('Lactosa', 105);
INSERT INTO alergenos (alergeno, comida_producto_id) VALUES ('Lactosa', 100);
INSERT INTO alergenos (alergeno, comida_producto_id) VALUES ('Lactosa', 200);
INSERT INTO alergenos (alergeno, comida_producto_id) VALUES ('Lactosa', 400);
INSERT INTO alergenos (alergeno, comida_producto_id) VALUES ('Frutos secos', 900);
INSERT INTO alergenos (alergeno, comida_producto_id) VALUES ('Huevo', 400);



-- COMIDA
INSERT INTO comida (producto_id) VALUES (100);
INSERT INTO comida (producto_id) VALUES (200);
INSERT INTO comida (producto_id) VALUES (300);
INSERT INTO comida (producto_id) VALUES (400);
INSERT INTO comida (producto_id) VALUES (500);
INSERT INTO comida (producto_id) VALUES (700);
INSERT INTO comida (producto_id) VALUES (900);
INSERT INTO comida (producto_id) VALUES (105);



-- ENTRANTES
INSERT INTO comida_entrante(frioscalientes,comida_producto_id) VALUES ('Fría',300);
INSERT INTO comida_entrante(frioscalientes,comida_producto_id) VALUES ('Caliente',105);



-- PRINCIPAL
INSERT INTO comida_principal(cubertería,categoria,comida_producto_id) VALUES ('Tenedor','Carne',100);
INSERT INTO comida_principal(cubertería,categoria,comida_producto_id) VALUES ('Tenedor','Pizza',200);
INSERT INTO comida_principal(cubertería,categoria,comida_producto_id) VALUES ('Tenedor','Pasta',400);
INSERT INTO comida_principal(cubertería,categoria,comida_producto_id) VALUES ('Tenedor','Carne',500);
INSERT INTO comida_principal(cubertería,categoria,comida_producto_id) VALUES ('Tenedor','Pescado',700);



-- POSTRE
INSERT INTO comida_postre(frutadulce,comida_producto_id) VALUES ('Dulce',900);


-- BEBIDA
INSERT INTO bebida (volumen, fabricante, producto_id) VALUES (0.5, 'Coca-Cola', 600);
INSERT INTO bebida (volumen, fabricante, producto_id) VALUES (0.75, 'Lanjarón', 800);
INSERT INTO bebida (volumen, fabricante, producto_id) VALUES (0.25, 'Santa Cristina', 101);
INSERT INTO bebida (volumen, fabricante, producto_id) VALUES (0.33, 'Chinchilla', 102);
INSERT INTO bebida (volumen, fabricante, producto_id) VALUES (0.33, 'Estrella Galicia', 103);
INSERT INTO bebida (volumen, fabricante, producto_id) VALUES (0.2, 'Johnnie Walker', 104);



-- BEBIDA ALCOHÓLICA
INSERT INTO bebida_alcohólica (tipoalcohol, bebida_producto_id) VALUES ('Vino tinto', 102);
INSERT INTO bebida_alcohólica (tipoalcohol, bebida_producto_id) VALUES ('Cerveza rubia', 103);
INSERT INTO bebida_alcohólica (tipoalcohol, bebida_producto_id) VALUES ('Whisky', 104);



-- BEBIDA SIN ALCOHOL
INSERT INTO bebida_noalcohólica (consingas, bebida_producto_id) VALUES ('Y', 600);
INSERT INTO bebida_noalcohólica (consingas, bebida_producto_id) VALUES ('N', 800);
INSERT INTO bebida_noalcohólica (consingas, bebida_producto_id) VALUES ('N', 101);



-- CLIENTE
INSERT INTO cliente (id, nombre, telefono) VALUES (11100, 'Ana Jiménez', 2221114444);
INSERT INTO cliente (id, nombre, telefono) VALUES (11101, 'John Ortiz', 1234567890);
INSERT INTO cliente (id, nombre, telefono) VALUES (11102, 'Jane Smith', 9876543210);
INSERT INTO cliente (id, nombre, telefono) VALUES (11103, 'Mario Cabrera', 5551234567);
INSERT INTO cliente (id, nombre, telefono) VALUES (11104, 'Emilia Gómez', 7778889999);
INSERT INTO cliente (id, nombre, telefono) VALUES (11105, 'Daniel Ruiz', 3334445555);
INSERT INTO cliente (id, nombre, telefono) VALUES (11106, 'Sophia White', 6667778888);
INSERT INTO cliente (id, nombre, telefono) VALUES (11107, 'Mateo García', 1112223333);
INSERT INTO cliente (id, nombre, telefono) VALUES (11108, 'Olivia Martinez', 4445556666);
INSERT INTO cliente (id, nombre, telefono) VALUES (11109, 'David Anaya', 9998887777);



-- CLIENTE ANONIMO
INSERT INTO clienteanonimo (usuario, sucursal_id, puntuacion, comentario) VALUES ('user123', 10, 4.5, 'Great experience!');
INSERT INTO clienteanonimo (usuario, sucursal_id, puntuacion, comentario) VALUES ('anonymous456', 20, 3.0, 'Buen servicio.');
INSERT INTO clienteanonimo (usuario, sucursal_id, puntuacion) VALUES ('guest789', 30, 5.0);
INSERT INTO clienteanonimo (usuario, sucursal_id, puntuacion, comentario) VALUES ('visitor_101', 11, 2.5, 'Disappointing.');
INSERT INTO clienteanonimo (usuario, sucursal_id, puntuacion, comentario) VALUES ('customer_xyz', 30, 4.0, 'Buena comida y buenos precios.');



-- MESA
INSERT INTO mesa (numero, capacidad, sucursal_id) VALUES (1, 4, 10);
INSERT INTO mesa (numero, capacidad, sucursal_id) VALUES (2, 6, 10);
INSERT INTO mesa (numero, capacidad, sucursal_id) VALUES (3, 2, 10);
INSERT INTO mesa (numero, capacidad, sucursal_id) VALUES (1, 2, 20);
INSERT INTO mesa (numero, capacidad, sucursal_id) VALUES (2, 4, 20);
INSERT INTO mesa (numero, capacidad, sucursal_id) VALUES (1, 3, 30);
INSERT INTO mesa (numero, capacidad, sucursal_id) VALUES (2, 4, 30);
INSERT INTO mesa (numero, capacidad, sucursal_id) VALUES (3, 6, 30);
INSERT INTO mesa (numero, capacidad, sucursal_id) VALUES (4, 2, 30);
INSERT INTO mesa (numero, capacidad, sucursal_id) VALUES (1, 3, 11);


-- PEDIDO
INSERT INTO pedido (numeropedido, cuenta, mesa_numero, sucursal_id, camarero_dni) VALUES (91, 45.99, 3, 10, 25787225);
INSERT INTO pedido (numeropedido, cuenta, mesa_numero, sucursal_id, camarero_dni) VALUES (92, 32.50, 2, 20, 25654321);
INSERT INTO pedido (numeropedido, cuenta, mesa_numero, sucursal_id, camarero_dni) VALUES (93, 19.99, 1, 11, 27809066);
INSERT INTO pedido (numeropedido, cuenta, mesa_numero, sucursal_id, camarero_dni) VALUES (94, 55.75, 1, 20, 25654321);
INSERT INTO pedido (numeropedido, cuenta, mesa_numero, sucursal_id, camarero_dni) VALUES (95, 40.00, 4, 30, 25787225);



-- COMPUESTO POR
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (800,91);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (103,91);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (105,91);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (102,92);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (103,92);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (200,92);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (100,93);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (600,93);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (900,93);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (101,94);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (800,95);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (300,95);
INSERT INTO compuestopor (producto_id, pedido_numeropedido) VALUES (700,95);



-- RESERVA
INSERT INTO reserva (número, cantidad, cliente_id) VALUES (1, 2, 11100);
INSERT INTO reserva (número, cantidad, cliente_id) VALUES (2, 3, 11101);
INSERT INTO reserva (número, cantidad, cliente_id) VALUES (3, 2, 11102);
INSERT INTO reserva (número, cantidad, cliente_id) VALUES (4, 2, 11103);
INSERT INTO reserva (número, cantidad, cliente_id) VALUES (5, 3, 11104);
INSERT INTO reserva (número, cantidad, cliente_id) VALUES (6, 1, 11105);
INSERT INTO reserva (número, cantidad, cliente_id) VALUES (7, 4, 11106);
INSERT INTO reserva (número, cantidad, cliente_id) VALUES (8, 2, 11107);
INSERT INTO reserva (número, cantidad, cliente_id) VALUES (9, 2, 11108);
INSERT INTO reserva (número, cantidad, cliente_id) VALUES (10, 5, 11109);



-- GUARDA
INSERT INTO guarda (fecha, mesa_numero, mesa_sucursal_id, reserva_numero, reserva_cliente_id) VALUES (to_date('2023-11-26','YYYY-MM-DD'), 3, 10, 1, 11100);
INSERT INTO guarda (fecha, mesa_numero, mesa_sucursal_id, reserva_numero, reserva_cliente_id) VALUES (to_date('2023-11-27','YYYY-MM-DD'), 1, 10, 2, 11101);
INSERT INTO guarda (fecha, mesa_numero, mesa_sucursal_id, reserva_numero, reserva_cliente_id) VALUES (to_date('2023-11-27','YYYY-MM-DD'), 2, 20, 3, 11102);
INSERT INTO guarda (fecha, mesa_numero, mesa_sucursal_id, reserva_numero, reserva_cliente_id) VALUES (to_date('2023-11-29','YYYY-MM-DD'), 1, 20, 4, 11103);
INSERT INTO guarda (fecha, mesa_numero, mesa_sucursal_id, reserva_numero, reserva_cliente_id) VALUES (to_date('2023-11-30','YYYY-MM-DD'), 2, 30, 5, 11104);
INSERT INTO guarda (fecha, mesa_numero, mesa_sucursal_id, reserva_numero, reserva_cliente_id) VALUES (to_date('2023-12-02','YYYY-MM-DD'), 1, 11, 6, 11105);
INSERT INTO guarda (fecha, mesa_numero, mesa_sucursal_id, reserva_numero, reserva_cliente_id) VALUES (to_date('2023-11-29','YYYY-MM-DD'), 2, 10, 7, 11106);
INSERT INTO guarda (fecha, mesa_numero, mesa_sucursal_id, reserva_numero, reserva_cliente_id) VALUES (to_date('2023-12-01','YYYY-MM-DD'), 1, 30, 8, 11107);
INSERT INTO guarda (fecha, mesa_numero, mesa_sucursal_id, reserva_numero, reserva_cliente_id) VALUES (to_date('2023-12-03','YYYY-MM-DD'), 4, 30, 9, 11108);
INSERT INTO guarda (fecha, mesa_numero, mesa_sucursal_id, reserva_numero, reserva_cliente_id) VALUES (to_date('2023-11-27','YYYY-MM-DD'), 3, 30, 10, 11109);


-- INGREDIENTES
INSERT INTO ingrediente (id, costo) VALUES (1, 2.99);
INSERT INTO ingrediente (id, costo) VALUES (2, 1.49);
INSERT INTO ingrediente (id, costo) VALUES (3, 3.99);
INSERT INTO ingrediente (id, costo) VALUES (4, 0.99);
INSERT INTO ingrediente (id, costo) VALUES (5, 5.99);
INSERT INTO ingrediente (id, costo) VALUES (6, 2.49);
INSERT INTO ingrediente (id, costo) VALUES (7, 4.49);
INSERT INTO ingrediente (id, costo) VALUES (8, 1.99);
INSERT INTO ingrediente (id, costo) VALUES (9, 3.49);
INSERT INTO ingrediente (id, costo) VALUES (10, 0.79);
INSERT INTO ingrediente (id, costo) VALUES (11, 4.99);
INSERT INTO ingrediente (id, costo) VALUES (12, 2.29);
INSERT INTO ingrediente (id, costo) VALUES (13, 3.79);
INSERT INTO ingrediente (id, costo) VALUES (14, 1.19);
INSERT INTO ingrediente (id, costo) VALUES (15, 6.99);
INSERT INTO ingrediente (id, costo) VALUES (16, 2.79);
INSERT INTO ingrediente (id, costo) VALUES (17, 4.29);
INSERT INTO ingrediente (id, costo) VALUES (18, 1.59);
INSERT INTO ingrediente (id, costo) VALUES (19, 3.29);
INSERT INTO ingrediente (id, costo) VALUES (20, 0.89);



-- NECESITA DE
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (100, 100, 10);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (100, 100, 1);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (100, 100, 2);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (100, 100, 15);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (200, 200, 2);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (200, 200, 4);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (200, 200, 18);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (200, 200, 14);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (300, 300, 1);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (300, 300, 12);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (300, 300, 8);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (125, 400, 2);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (125, 400, 1);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (125, 400, 9);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (125, 400, 17);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (150, 500, 8);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (150, 500, 13);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (250, 700, 10);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (250, 700, 6);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (50, 900, 16);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (20, 105, 1);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (20, 105, 5);
INSERT INTO necesitade (cantidad, producto_id, ingrediente_id) VALUES (10, 101, 20);



-- OFRECE 
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 100);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 300);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 800);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 500);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 700);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 102);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 103);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 104);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (11, 100);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (11, 300);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (11, 800);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (11, 500);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (11, 102);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (11, 103);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 100);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 300);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 800);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 500);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 700);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 102);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (10, 103);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (20, 100);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (20, 300);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (20, 400);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (20, 800);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (20, 101);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (20, 600);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (20, 900);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (30, 200);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (30, 300);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (30, 800);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (30, 600);
INSERT INTO ofrece (sucursal_id, producto_id) VALUES (30, 900);



-- RESULTADOS FINANCIEROS
INSERT INTO resultadosfinanceiros (id, ingresos, gastosop, ganancias, sucursal_id, mes, año) VALUES (1, 50000.0, 35000.0, 15000.0, 10, 11, 2023);
INSERT INTO resultadosfinanceiros (id, ingresos, gastosop, ganancias, sucursal_id, mes, año) VALUES (2, 60000.0, 40000.0, 20000.0, 20, 11, 2023);
INSERT INTO resultadosfinanceiros (id, ingresos, gastosop, ganancias, sucursal_id, mes, año) VALUES (3, 75000.0, 50000.0, 25000.0, 30, 11, 2023);
INSERT INTO resultadosfinanceiros (id, ingresos, gastosop, ganancias, sucursal_id, mes, año) VALUES (4, 48000.0, 30000.0, 18000.0, 11, 11, 2023);



-- PROVEEDOR
INSERT INTO proveedor (id, nif, fechaaprobación, calle, ciudad, cp) VALUES (111, 123456789, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'C.Mozart', 'Málaga', 29004);
INSERT INTO proveedor (id, nif, fechaaprobación, calle, ciudad, cp) VALUES (222, 987654321, TO_DATE('2023-02-28', 'YYYY-MM-DD'), 'C.Federico Sierra', 'Madrid', 54321);
INSERT INTO proveedor (id, nif, fechaaprobación, calle, ciudad, cp) VALUES (333, 456789012, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'C.Álamos', 'Barcelona', 67890);
INSERT INTO proveedor (id, nif, fechaaprobación, calle, ciudad, cp) VALUES (444, 789012345, TO_DATE('2023-04-10', 'YYYY-MM-DD'), 'C.Arroyo', 'Valladolid', 34567);
INSERT INTO proveedor (id, nif, fechaaprobación, calle, ciudad, cp) VALUES (555, 567890123, TO_DATE('2023-05-05', 'YYYY-MM-DD'), 'C. Carratraca', 'Madrid', 54321);



-- SUMINISTRA
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 1, 111, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 2, 111, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (500, 3, 111, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 4, 222, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 5, 333, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 6, 333, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (400, 7, 444, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 8, 222, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 9, 555, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 10, 555, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 11, 333, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (400, 12, 111, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (600, 13, 444, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 14, 111, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 15, 222, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 16, 333, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 17, 555, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 18, 111, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (500, 19, 444, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 20, 111, 10);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 1, 111, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 2, 111, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (500, 3, 111, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 4, 222, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 5, 333, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 6, 333, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (400, 7, 444, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 8, 222, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 9, 555, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 10, 555, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 11, 333, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (400, 12, 111, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (600, 13, 444, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 14, 111, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 15, 222, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 16, 333, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 17, 555, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 18, 111, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (500, 19, 444, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 20, 111, 11);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 1, 111, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 2, 111, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (500, 3, 111, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 4, 222, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 5, 333, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 6, 333, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (400, 7, 444, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 8, 222, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 9, 555, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 10, 555, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 11, 333, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (400, 12, 111, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (600, 13, 444, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 14, 111, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 15, 222, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 16, 333, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 17, 555, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 18, 111, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (500, 19, 444, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 20, 111, 20);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 1, 111, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 2, 111, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (500, 3, 111, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 4, 222, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 5, 333, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 6, 333, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (400, 7, 444, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 8, 222, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 9, 555, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 10, 555, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 11, 333, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (400, 12, 111, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (600, 13, 444, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 14, 111, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 15, 222, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 16, 333, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (100, 17, 555, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (300, 18, 111, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (500, 19, 444, 30);
INSERT INTO suministra (cantidad, ingrediente_id, proveedor_id, sucursal_id) VALUES (200, 20, 111, 30);

