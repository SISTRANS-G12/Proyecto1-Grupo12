
--RF1 - REGISTRAR / ACTUALIZAR / BORRAR / CONSULTAR TIPOS DE USUARIOS
-- unicidad tuplas

INSERT INTO tiposusuario (ID, nombre)
VALUES(5, 'Visitante');

INSERT INTO tiposusuario (ID, nombre)
VALUES(5, 'Viajero');

-- RF2 - REGISTRAR / ACTUALIZAR / BORRAR / CONSULTAR USUARIO
-- unicidad tuplas
INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 1, 'Cedula', 1000185102, 'Federico Pungo', 'neopungo@gmail.com', 1);

INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 1, 'Cedula',46665590 , 'Alvaro Pungo', 'apungo@gmail.com', 1);

-- integridad con fk

INSERT INTO tiposusuario (ID, nombre)
VALUES(7, 'Visitante');

INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 11, 'Cedula', 1000185102, 'Federico Pungo', 'neopungo@gmail.com', 7);

INSERT INTO usuarios (ID,tipo_documento, numero_documento, nombre, correo_electronico,tiposusuario_id)
VALUES( 20, 'Cedula',46665590 , 'Alvaro Pungo', 'apungo@gmail.com', 9);

-- RF3 - REGISTRAR / ACTUALIZAR / BORRAR / CONSULTAR TIPO DE HABITACIÓN
-- unicidad tuplas

INSERT INTO tiposhabitacion (ID, nombre,capacidad,precio_noche )
VALUES(12,'Choza',12,5000000);

INSERT INTO tiposhabitacion (ID, nombre,capacidad,precio_noche )
VALUES(12,'Cama Sola',1,50000);

-- RF4 - REGISTRAR / ACTUALIZAR / BORRAR / CONSULTAR HABITACIÓN
-- unicidad tuplas

INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(1,0,0,12);

INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(1,1,0,3);

-- integridad con fk

INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(34,0,0,12);

INSERT INTO habitaciones (ID, disponible,cuenta,tiposhabitacion_id)
VALUES(24,1,0,22);


-- RF5 - REGISTRAR / ACTUALIZAR / BORRAR / CONSULTAR UN SERVICIO DEL HOTEL
-- unicidad tuplas

INSERT INTO locales (ID, capacidad,ocupado)
VALUES(11,300,0);

INSERT INTO tiposservicio (ID, nombre)
VALUES(11, 'Salones');

INSERT INTO servicios (ID,precio,nombre,descripcion,incluido,caracteristica,tiposservicio_id,locales_id)
VALUES(30,133000,'Salon','Alquiler de salon para conferencia',0,'Salon_1', 11 ,11);

INSERT INTO servicios (ID,precio,nombre,descripcion,incluido,caracteristica,tiposservicio_id,locales_id)
VALUES(30,133000,'GYM', 'Uso de gimnasio' ,0, 'GYM' , 2,11);

-- integridad con fk

INSERT INTO servicios (ID,precio,nombre,descripcion,incluido,caracteristica,tiposservicio_id,locales_id)
VALUES(99,0 ,'GYM', 'Uso de gimnasio' ,0, 'GYM' , 2,11);

INSERT INTO servicios (ID,precio,nombre,descripcion,incluido,caracteristica,tiposservicio_id,locales_id)
VALUES(100,0 ,'GYM','Uso de gimnasio' ,0, 'GYM' , 33 ,11);

INSERT INTO servicios (ID,precio,nombre,descripcion,incluido,caracteristica,tiposservicio_id,locales_id)
VALUES(101 ,0 ,'GYM', 'Uso de gimnasio' ,0, 'GYM' , 2 ,111);


--RF6 - REGISTRAR / ACTUALIZAR / BORRAR / CONSULTAR UN PLAN DE CONSUMO
-- unicidad tuplas

INSERT INTO planesconsumo(ID,descripcion,descuento,precio_fijo)
VALUES(7,'Un descuento para usuarios clientes que  alquilan una suite presidencial que les da acceso a todo en el hotel con cargo de productos directo a su cuenta de la habitación' ,20,11000000);

VALUES(7,'Un descuento para usuarios clientes que van a estar en una estadia de 1 dias minimo en una habitación Doble',15,800000);