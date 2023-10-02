INSERT INTO tiposusuario (ID, nombre)
VALUES(1,'Cliente');
INSERT INTO tiposusuario (ID, nombre)
VALUES(2,'Empleado');
INSERT INTO tiposusuario (ID, nombre)
VALUES(3,'Administrador');
INSERT INTO tiposusuario (ID, nombre)
VALUES(4, 'Gerente');


INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 1, 'Cedula', 1000185102, 'Federico Pungo', 'neopungo@gmail.com', 1);
INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 2, 'Cedula',46665590 , 'Alvaro Pungo', 'apungo@gmail.com', 1);
INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 3, 'Cedula', 1000134592, 'Manuel Bravo', 'neopungo@gmail.com', 1);
INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 4, 'Cedula', 1000223094, 'Jair Ariza', 'neopungo@gmail.com', 1);
INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 5, 'Cedula', 1000133345, 'Nicolas Duran', 'nicolito@gmail.com', 1);
INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 6, 'Cedula', 1000099887, 'Tatiama Gomez', 'tatigomez@gmail.com', 2);
INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 7, 'Cedula', 1000456766, 'Luisa Ardila', 'luisaar22@gmail.com', 2);
INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 8, 'Cedula', 1000123098, 'Gabriela Gutierrez', 'gabi3450@gmail.com', 2);
INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 9, 'Cedula', 1001234098, 'Camila Gomez', 'camilaguti@gmail.com', 3);
INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 10, 'Cedula', 1003344987, 'Sofia Leyton', 'sofileyton99@gmail.com', 4);


INSERT INTO tiposservicio (ID, nombre)
VALUES(1,'Bar');
INSERT INTO tiposservicio (ID, nombre)
VALUES(2,'Restaurante');
INSERT INTO tiposservicio (ID, nombre)
VALUES(3,'Tienda');
INSERT INTO tiposservicio (ID, nombre)
VALUES(4, 'Supermercado');
INSERT INTO tiposservicio (ID, nombre)
VALUES(5,'Piscina');
INSERT INTO tiposservicio (ID, nombre)
VALUES(6, 'Gimnasio');
INSERT INTO tiposservicio (ID, nombre)
VALUES(7,'Internet');
INSERT INTO tiposservicio (ID, nombre)
VALUES(8, 'SPA');
INSERT INTO tiposservicio (ID, nombre)
VALUES(9,'Lavado');
INSERT INTO tiposservicio (ID, nombre)
VALUES(10, 'Prestamo');
INSERT INTO tiposservicio (ID, nombre)
VALUES(11, 'Salones');

INSERT INTO tiposhabitacion (ID, nombre,capacidad,precio_noche )
VALUES(1,'Suite Presidencial',8,500000);
INSERT INTO tiposhabitacion (ID, nombre,capacidad,precio_noche )
VALUES(2,'Suite ',6,300000);
INSERT INTO tiposhabitacion (ID, nombre,capacidad,precio_noche )
VALUES(3,'Familiar',4,250000);
INSERT INTO tiposhabitacion (ID, nombre,capacidad,precio_noche )
VALUES(4,'Doble',4,200000);
INSERT INTO tiposhabitacion (ID, nombre,capacidad,precio_noche )
VALUES(5,'Sencilla',2,150000);

INSERT INTO dotaciones (ID,nombre, precio)
VALUES (1,'Televisor',30000);
INSERT INTO dotaciones (ID,nombre, precio)
VALUES (2,'Minibar',50000);
INSERT INTO dotaciones (ID,nombre, precio)
VALUES (3,'Cafetera',15000);
INSERT INTO dotaciones (ID,nombre, precio)
VALUES (4,'Cocina',0);
INSERT INTO dotaciones (ID,nombre, precio)
VALUES (5,'Sala',0);
INSERT INTO dotaciones (ID,nombre, precio)
VALUES (6,'comedor',0);
INSERT INTO dotaciones (ID,nombre, precio)
VALUES (7,'Almacen',0);

INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(1,1,0,5);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(2,0,0,4);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(3,0,0,4);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(4,1,0,4);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(5,1,0,3);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(6,0,0,3);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(7,1,0,3);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(8,1,0,2);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(9,0,0,2);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(10,1,0,1);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(11,0,0,5);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(12,1,0,5);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(13,0,0,4);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(14,1,0,4);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(15,0,0,2);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(16,0,0,4);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(17,0,0,4);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(18,1,0,4);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(19,1,0,5);
INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(20,1,0,5);


INSERT INTO tienen (dotaciones_id,tiposhabitacion_id)
VALUES(1,1);

INSERT INTO tienen (dotaciones_id,tiposhabitacion_id)
VALUES(5,2);
INSERT INTO tienen (dotaciones_id,tiposhabitacion_id)
VALUES(6,2);
INSERT INTO tienen (dotaciones_id,tiposhabitacion_id)
VALUES(1,3);

INSERT INTO tienen (dotaciones_id,tiposhabitacion_id)
VALUES(1,4);

INSERT INTO tienen (dotaciones_id,tiposhabitacion_id)
VALUES(1,5);


INSERT INTO planesconsumo(ID,descripcion,descuento,precio_fijo)
VALUES(1,'Un descuento para usuarios clientes que van a estar en una estadia de 3 dias minimo en una habitación sencilla',7.6,700000);
INSERT INTO planesconsumo(ID,descripcion,descuento,precio_fijo)
VALUES(2,'Un descuento para usuarios clientes que van a estar en una estadia de 1 dias minimo en una habitación Doble',15,800000);


INSERT INTO locales (ID, capacidad,ocupado)
VALUES(1,150,1);
INSERT INTO locales (ID, capacidad,ocupado)
VALUES(2,200,0);
INSERT INTO locales (ID, capacidad,ocupado)
VALUES(3,50,1);
INSERT INTO locales (ID, capacidad,ocupado)
VALUES(4,250,0);
INSERT INTO locales (ID, capacidad,ocupado)
VALUES(5,100,1);
INSERT INTO locales (ID, capacidad,ocupado)
VALUES(6,80,0);
INSERT INTO locales (ID, capacidad,ocupado)
VALUES(7,90,0);


INSERT INTO servicios (ID,precio,nombre,descripcion,incluido,caracteristica,tiposservicio_id,locales_id)
VALUES(1,40000,'Hamburguesa Doble','En combo,sin hielo la bebida',0,'El corral',2,6);

INSERT INTO servicios (ID,precio,nombre,descripcion,incluido,caracteristica,tiposservicio_id,locales_id)
VALUES(2,0,'Piscina ','pequeña',1,'Hotel',5,2);

INSERT INTO servicios (ID,precio,nombre,descripcion,incluido,caracteristica,tiposservicio_id,locales_id)
VALUES(3,300000,'Alcohol','Botella de aguardiente Nectar',0,'Bar Prensa',1,2);

INSERT INTO servicios (ID,precio,nombre,descripcion,incluido,caracteristica,tiposservicio_id,locales_id)
VALUES(4,120000,'Jean','negro roto, entubado',0,'tiendidaCol',3,7);

INSERT INTO servicios (ID,precio,nombre,descripcion,incluido,caracteristica,tiposservicio_id,locales_id)
VALUES(5,0,'Gimnasio','todo el uso del espacio',1,'GYM',6,3);

INSERT INTO servicios (ID,precio,nombre,descripcion,incluido,caracteristica,tiposservicio_id,locales_id)
VALUES(6,125000,'SPA ','Masaje de cuerpo completo y zauna',0,'SPA:JUANITA',8,6);


INSERT INTO reservas(id,fecha_entrada,fecha_salida,numero_personas,check_in,check_out,planesconsumo_id,habitaciones_id)
VALUES(1,to_date('20/10/23','DD/MM/RR'),to_date('23/10/23','DD/MM/RR'),4,0,0,2,2);
INSERT INTO reservas(id,fecha_entrada,fecha_salida,numero_personas,check_in,check_out,planesconsumo_id,habitaciones_id)
VALUES(2,to_date('23/08/23','DD/MM/RR'),to_date('28/08/23','DD/MM/RR'),1,1,1,1,11);
INSERT INTO reservas(id,fecha_entrada,fecha_salida,numero_personas,check_in,check_out,planesconsumo_id,habitaciones_id)
VALUES(3,to_date('20/10/23','DD/MM/RR'),to_date('23/10/23','DD/MM/RR'),2,0,0,2,16);
INSERT INTO reservas(id,fecha_entrada,fecha_salida,numero_personas,check_in,check_out,planesconsumo_id,habitaciones_id)
VALUES(4,to_date('12/01/24','DD/MM/RR'),to_date('14/01/24','DD/MM/RR'),7,0,0,2,10);
INSERT INTO reservas(id,fecha_entrada,fecha_salida,numero_personas,check_in,check_out,planesconsumo_id,habitaciones_id)
VALUES(5,to_date('01/01/24','DD/MM/RR'),to_date('05/01/24','DD/MM/RR'),3,0,0,2,8);
INSERT INTO reservas(id,fecha_entrada,fecha_salida,numero_personas,check_in,check_out,planesconsumo_id,habitaciones_id)
VALUES(6,to_date('29/03/24','DD/MM/RR'),to_date('02/04/24','DD/MM/RR'),2,0,0,1,1);



INSERT INTO consumos (habitaciones_id,fecha_consumo,servicios_id)
VALUES(2,to_date('20/10/23','DD/MM/RR'),3);
INSERT INTO consumos (habitaciones_id,fecha_consumo,servicios_id)
VALUES(2,to_date('21/10/23','DD/MM/RR'),2);
INSERT INTO consumos (habitaciones_id,fecha_consumo,servicios_id)
VALUES(2,to_date('21/10/23','DD/MM/RR'),5);
INSERT INTO consumos (habitaciones_id,fecha_consumo,servicios_id)
VALUES(1,to_date('24/12/23','DD/MM/RR'),4);
INSERT INTO consumos (habitaciones_id,fecha_consumo,servicios_id)
VALUES(3,to_date('02/01/24','DD/MM/RR'),1);
INSERT INTO consumos (habitaciones_id,fecha_consumo,servicios_id)
VALUES(10,to_date('13/02/24','DD/MM/RR'),5);



INSERT INTO checkins (ID,reservas_id)
VALUES(1,2);

INSERT INTO checkouts (ID,reservas_id)
VALUES(1,2);


INSERT INTO reservaciones(habitaciones_id,fecha_reservacion,servicios_id)
VALUES(2,to_date('22/10/23','DD/MM/RR'),6);


