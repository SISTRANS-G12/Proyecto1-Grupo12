-- Creacion del secuenciador

CREATE SEQUENCE proyectoHotels1_sequence;

CREATE TABLE checkins (
    id          NUMBER NOT NULL,
    reservas_id NUMBER NOT NULL
);

ALTER TABLE checkins ADD CONSTRAINT checkins_pk PRIMARY KEY ( id );

CREATE TABLE checkouts (
    id          NUMBER NOT NULL,
    reservas_id NUMBER NOT NULL
);

ALTER TABLE checkouts ADD CONSTRAINT checkouts_pk PRIMARY KEY ( id );

CREATE TABLE consumos (
    habitaciones_id NUMBER NOT NULL,
    fecha_consumo   VARCHAR2(255 BYTE) NOT NULL,
    servicios_id    NUMBER NOT NULL
);

ALTER TABLE consumos
    ADD CONSTRAINT consumos_pk PRIMARY KEY ( habitaciones_id,
                                             fecha_consumo,
                                             servicios_id );

CREATE TABLE dotaciones (
    id     NUMBER NOT NULL,
    nombre VARCHAR2(255 BYTE) NOT NULL,
    precio NUMBER NOT NULL
);

ALTER TABLE dotaciones ADD CONSTRAINT dotaciones_pk PRIMARY KEY ( id );

CREATE TABLE habitaciones (
    id                 NUMBER NOT NULL,
    disponible         NUMBER NOT NULL,
    cuenta             NUMBER NOT NULL,
    tiposhabitacion_id NUMBER NOT NULL
);

ALTER TABLE habitaciones ADD CONSTRAINT habitaciones_pk PRIMARY KEY ( id );

CREATE TABLE locales (
    id               NUMBER NOT NULL,
    capacidad        NUMBER NOT NULL,
    ocupado          NUMBER NOT NULL,
    horario_servicio VARCHAR2(255 BYTE)
);

ALTER TABLE locales ADD CONSTRAINT locales_pk PRIMARY KEY ( id );

CREATE TABLE planesconsumo (
    id          NUMBER NOT NULL,
    descripcion VARCHAR2(255 BYTE) NOT NULL,
    descuento   FLOAT NOT NULL,
    precio_fijo NUMBER
);

ALTER TABLE planesconsumo ADD CONSTRAINT planesconsumo_pk PRIMARY KEY ( id );

CREATE TABLE reservaciones (
    habitaciones_id   NUMBER NOT NULL,
    fecha_reservacion VARCHAR2(255 BYTE) NOT NULL,
    servicios_id      NUMBER NOT NULL
);

ALTER TABLE reservaciones
    ADD CONSTRAINT reservaciones_pk PRIMARY KEY ( habitaciones_id,
                                                  servicios_id,
                                                  fecha_reservacion );

CREATE TABLE reservas (
    id               NUMBER NOT NULL,
    fecha_entrada    VARCHAR2(255 BYTE) NOT NULL,
    fecha_salida     VARCHAR2(255 BYTE) NOT NULL,
    numero_personas  NUMBER NOT NULL,
    check_in         NUMBER NOT NULL,
    check_out        NUMBER NOT NULL,
    planesconsumo_id NUMBER NOT NULL,
    habitaciones_id  NUMBER NOT NULL
);

ALTER TABLE reservas ADD CONSTRAINT reservas_pk PRIMARY KEY ( id );

CREATE TABLE servicios (
    id               NUMBER NOT NULL,
    precio           NUMBER NOT NULL,
    nombre           VARCHAR2(255 BYTE) NOT NULL,
    descripcion      VARCHAR2(255 BYTE) NOT NULL,
    incluido         NUMBER NOT NULL,
    caracteristica   VARCHAR2(255 BYTE),
    tiposservicio_id NUMBER NOT NULL,
    locales_id       NUMBER
);

ALTER TABLE servicios ADD CONSTRAINT servicios_pk PRIMARY KEY ( id );

CREATE TABLE tienen (
    dotaciones_id      NUMBER NOT NULL,
    tiposhabitacion_id NUMBER NOT NULL
);

ALTER TABLE tienen ADD CONSTRAINT tienen_pk PRIMARY KEY ( dotaciones_id,
                                                          tiposhabitacion_id );

CREATE TABLE tiposhabitacion (
    id           NUMBER NOT NULL,
    nombre       VARCHAR2(255 BYTE) NOT NULL,
    capacidad    NUMBER NOT NULL,
    precio_noche NUMBER NOT NULL
);

ALTER TABLE tiposhabitacion ADD CONSTRAINT tiposhabitacion_pk PRIMARY KEY ( id );

CREATE TABLE tiposservicio (
    id     NUMBER NOT NULL,
    nombre VARCHAR2(255 BYTE) NOT NULL
);

ALTER TABLE tiposservicio ADD CONSTRAINT tiposservicio_pk PRIMARY KEY ( id );

CREATE TABLE tiposusuario (
    id     NUMBER NOT NULL,
    nombre VARCHAR2(255 BYTE) NOT NULL
);

ALTER TABLE tiposusuario ADD CONSTRAINT tiposusuario_pk PRIMARY KEY ( id );

CREATE TABLE usuarios (
    id                 NUMBER NOT NULL,
    tipo_documento     VARCHAR2(255 BYTE) NOT NULL,
    numero_documento   NUMBER NOT NULL,
    nombre             VARCHAR2(255 BYTE) NOT NULL,
    correo_electronico VARCHAR2(255 BYTE) NOT NULL,
    tiposusuario_id    NUMBER NOT NULL,
    reservas_id        NUMBER
);


 -- Constraints


ALTER TABLE usuarios ADD CONSTRAINT usuarios_pk PRIMARY KEY ( id );

ALTER TABLE checkins
    ADD CONSTRAINT checkins_reservas_fk FOREIGN KEY ( reservas_id )
        REFERENCES reservas ( id );

ALTER TABLE checkouts
    ADD CONSTRAINT checkouts_reservas_fk FOREIGN KEY ( reservas_id )
        REFERENCES reservas ( id );

ALTER TABLE consumos
    ADD CONSTRAINT consumos_habitaciones_fk FOREIGN KEY ( habitaciones_id )
        REFERENCES habitaciones ( id );

ALTER TABLE consumos
    ADD CONSTRAINT consumos_servicios_fk FOREIGN KEY ( servicios_id )
        REFERENCES servicios ( id );

ALTER TABLE habitaciones
    ADD CONSTRAINT habitaciones_tiposhabitacion_fk FOREIGN KEY ( tiposhabitacion_id )
        REFERENCES tiposhabitacion ( id );

ALTER TABLE reservaciones
    ADD CONSTRAINT reservaciones_habitacion_fk FOREIGN KEY ( habitaciones_id )
        REFERENCES habitaciones ( id );

ALTER TABLE reservaciones
    ADD CONSTRAINT reservaciones_servicio_fk FOREIGN KEY ( servicios_id )
        REFERENCES servicios ( id );

ALTER TABLE reservas
    ADD CONSTRAINT reservas_habitaciones_fk FOREIGN KEY ( habitaciones_id )
        REFERENCES habitaciones ( id );

ALTER TABLE reservas
    ADD CONSTRAINT reservas_planesconsumo_fk FOREIGN KEY ( planesconsumo_id )
        REFERENCES planesconsumo ( id );

ALTER TABLE servicios
    ADD CONSTRAINT servicios_localesl_fk FOREIGN KEY ( locales_id )
        REFERENCES locales ( id );

ALTER TABLE servicios
    ADD CONSTRAINT servicios_tiposservicio_fk FOREIGN KEY ( tiposservicio_id )
        REFERENCES tiposservicio ( id );

ALTER TABLE tienen
    ADD CONSTRAINT tienen_dotaciones_fk FOREIGN KEY ( dotaciones_id )
        REFERENCES dotaciones ( id );

ALTER TABLE tienen
    ADD CONSTRAINT tienen_tiposhabitacion_fk FOREIGN KEY ( tiposhabitacion_id )
        REFERENCES tiposhabitacion ( id );

ALTER TABLE usuarios
    ADD CONSTRAINT usuarios_reservas_fk FOREIGN KEY ( reservas_id )
        REFERENCES reservas ( id );

ALTER TABLE usuarios
    ADD CONSTRAINT usuarios_tiposusuario_fk FOREIGN KEY ( tiposusuario_id )
        REFERENCES tiposusuario ( id );


COMMIT;
