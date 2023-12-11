CREATE TABLE alergenos (
    alergeno           VARCHAR2(20) NOT NULL,
    comida_producto_id NUMBER NOT NULL
);

ALTER TABLE alergenos ADD CONSTRAINT alergenos_pk PRIMARY KEY ( alergeno,
                                                                comida_producto_id );

CREATE TABLE bebida (
    volumen     FLOAT,
    fabricante  VARCHAR2(50),
    producto_id NUMBER NOT NULL
);

ALTER TABLE bebida ADD CONSTRAINT bebida_pk PRIMARY KEY ( producto_id );

CREATE TABLE bebida_alcohólica (
    tipoalcohol        VARCHAR2(50),
    bebida_producto_id NUMBER NOT NULL
);

ALTER TABLE bebida_alcohólica ADD CONSTRAINT alcohólica_pk PRIMARY KEY ( bebida_producto_id );

CREATE TABLE bebida_noalcohólica (
    consingas          CHAR(1),
    bebida_producto_id NUMBER NOT NULL
);

ALTER TABLE bebida_noalcohólica ADD CONSTRAINT noalcohólica_pk PRIMARY KEY ( bebida_producto_id );

CREATE TABLE camarero (
    empleado_dni FLOAT NOT NULL
);

ALTER TABLE camarero ADD CONSTRAINT camarero_pk PRIMARY KEY ( empleado_dni );

CREATE TABLE cliente (
    id       NUMBER NOT NULL,
    nombre   VARCHAR2(50),
    telefono INTEGER
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( id );

CREATE TABLE clienteanonimo (
    usuario     VARCHAR2(50) NOT NULL,
    sucursal_id NUMBER NOT NULL,
    puntuacion  FLOAT NOT NULL,
    comentario  VARCHAR2(100)
);

CREATE UNIQUE INDEX clienteanonimo__idx ON
    clienteanonimo (
        usuario
    ASC );

ALTER TABLE clienteanonimo ADD CONSTRAINT clienteanonimo_pk PRIMARY KEY ( usuario,
                                                                          sucursal_id );

CREATE TABLE comida (
    producto_id NUMBER NOT NULL
);

ALTER TABLE comida ADD CONSTRAINT comida_pk PRIMARY KEY ( producto_id );

CREATE TABLE comida_entrante (
    frioscalientes     VARCHAR2(50),
    comida_producto_id NUMBER NOT NULL
);

ALTER TABLE comida_entrante ADD CONSTRAINT entrante_pk PRIMARY KEY ( comida_producto_id );

CREATE TABLE comida_postre (
    frutadulce         VARCHAR2(50),
    comida_producto_id NUMBER NOT NULL
);

ALTER TABLE comida_postre ADD CONSTRAINT postre_pk PRIMARY KEY ( comida_producto_id );

CREATE TABLE comida_principal (
    cubertería         VARCHAR2(50),
    categoria          VARCHAR2(50),
    comida_producto_id NUMBER NOT NULL
);

ALTER TABLE comida_principal ADD CONSTRAINT principal_pk PRIMARY KEY ( comida_producto_id );

CREATE TABLE compuestopor (
    producto_id         NUMBER NOT NULL,
    pedido_numeropedido NUMBER NOT NULL
);

ALTER TABLE compuestopor ADD CONSTRAINT compuestopor_pk PRIMARY KEY ( producto_id,
                                                                      pedido_numeropedido );

CREATE TABLE director (
    fechanombramiento DATE,
    empleado_dni      FLOAT NOT NULL,
    restaurante_id    NUMBER NOT NULL
);

CREATE UNIQUE INDEX director__idx ON
    director (
        restaurante_id
    ASC );

ALTER TABLE director ADD CONSTRAINT director_pk PRIMARY KEY ( empleado_dni );

CREATE TABLE empleado (
    dni              FLOAT NOT NULL,
    nss              FLOAT,
    nombre           VARCHAR2(50),
    fechanascimiento DATE,
    cargo            VARCHAR2(50),
    calle            VARCHAR2(50),
    ciudad           VARCHAR2(50),
    cp               FLOAT,
    empleado_dni     FLOAT
);

ALTER TABLE empleado ADD CONSTRAINT empleado_pk PRIMARY KEY ( dni );

ALTER TABLE empleado ADD CONSTRAINT empleado_nss_un UNIQUE ( nss );

CREATE TABLE gerente (
    fechanombramiento DATE,
    empleado_dni      FLOAT NOT NULL,
    sucursal_id       NUMBER NOT NULL
);

CREATE UNIQUE INDEX gerente__idx ON
    gerente (
        sucursal_id
    ASC );

ALTER TABLE gerente ADD CONSTRAINT gerente_pk PRIMARY KEY ( empleado_dni );

CREATE TABLE guarda (
    fecha              DATE NOT NULL,
    mesa_numero        NUMBER NOT NULL,
    mesa_sucursal_id   NUMBER NOT NULL,
    reserva_numero     NUMBER NOT NULL,
    reserva_cliente_id NUMBER NOT NULL
);

CREATE INDEX guarda_reserva_fk ON
    guarda (
        reserva_cliente_id
    ASC,
        reserva_numero
    ASC );

CREATE INDEX guarda_reserva_fk ON
    guarda (
        reserva_cliente_id
    ASC,
        reserva_numero
    ASC );

ALTER TABLE guarda
    ADD CONSTRAINT guarda_pk PRIMARY KEY ( mesa_numero,
                                           mesa_sucursal_id,
                                           reserva_numero,
                                           reserva_cliente_id );

CREATE TABLE ingrediente (
    id    NUMBER NOT NULL,
    costo FLOAT
);

ALTER TABLE ingrediente ADD CONSTRAINT ingrediente_pk PRIMARY KEY ( id );

CREATE TABLE mesa (
    numero      NUMBER NOT NULL,
    capacidad   FLOAT,
    sucursal_id NUMBER NOT NULL
);

ALTER TABLE mesa ADD CONSTRAINT mesa_pk PRIMARY KEY ( numero,
                                                      sucursal_id );

CREATE TABLE necesitade (
    cantidad       FLOAT,
    producto_id    NUMBER NOT NULL,
    ingrediente_id NUMBER NOT NULL
);

ALTER TABLE necesitade ADD CONSTRAINT necesitade_pk PRIMARY KEY ( producto_id,
                                                                  ingrediente_id );

CREATE TABLE ofrece (
    sucursal_id NUMBER NOT NULL,
    producto_id NUMBER NOT NULL
);

ALTER TABLE ofrece ADD CONSTRAINT ofrece_pk PRIMARY KEY ( sucursal_id,
                                                          producto_id );

CREATE TABLE pedido (
    numeropedido NUMBER NOT NULL,
    cuenta       FLOAT,
    mesa_numero  NUMBER NOT NULL,
    sucursal_id  NUMBER NOT NULL,
    camarero_dni FLOAT NOT NULL
);

COMMENT ON COLUMN pedido.sucursal_id IS
    '
In Oracle SQL Data Modeler, you can define a foreign key by followin';

CREATE INDEX pedido_mesa_fk ON
    pedido (
        mesa_numero
    ASC,
        sucursal_id
    ASC );

CREATE INDEX pedido_camarero_fk ON
    pedido (
        camarero_dni
    ASC );

ALTER TABLE pedido ADD CONSTRAINT pedido_pk PRIMARY KEY ( numeropedido );

CREATE TABLE producto (
    id     NUMBER NOT NULL,
    precio FLOAT NOT NULL,
    costo  FLOAT NOT NULL,
    nombre VARCHAR2(50) NOT NULL
);

ALTER TABLE producto ADD CONSTRAINT producto_pk PRIMARY KEY ( id );

CREATE TABLE proveedor (
    id              NUMBER NOT NULL,
    nif             NUMBER NOT NULL,
    fechaaprobación DATE,
    calle           VARCHAR2(50),
    ciudad          VARCHAR2(50),
    cp              FLOAT
);

ALTER TABLE proveedor ADD CONSTRAINT proveedor_pk PRIMARY KEY ( id );

ALTER TABLE proveedor ADD CONSTRAINT proveedor_nif_un UNIQUE ( nif );

CREATE TABLE reserva (
    número     NUMBER NOT NULL,
    cantidad   FLOAT,
    cliente_id NUMBER NOT NULL
);

ALTER TABLE reserva ADD CONSTRAINT reserva_pk PRIMARY KEY ( cliente_id,
                                                            número );

CREATE TABLE restaurante (
    id     NUMBER NOT NULL,
    nombre VARCHAR2(50) NOT NULL,
    vision VARCHAR2(50),
    estilo VARCHAR2(50)
);

CREATE UNIQUE INDEX restaurante__idx ON
    restaurante (
        id
    ASC );

ALTER TABLE restaurante ADD CONSTRAINT restaurante_pk PRIMARY KEY ( id );

ALTER TABLE restaurante ADD CONSTRAINT restaurante_nombre_un UNIQUE ( nombre );

CREATE TABLE resultadosfinanceiros (
    id          NUMBER NOT NULL,
    ingresos    FLOAT NOT NULL,
    costosop    FLOAT NOT NULL,
    ganancias   FLOAT,
    sucursal_id NUMBER NOT NULL,
    mes         NUMBER NOT NULL,
    año         NUMBER NOT NULL
);

ALTER TABLE resultadosfinanceiros ADD CONSTRAINT resultadosfinanceiros_pk PRIMARY KEY ( id );

CREATE TABLE sucursal (
    id                NUMBER NOT NULL,
    nif               INTEGER NOT NULL,
    nombre            VARCHAR2(50),
    fechainauguracion DATE,
    calle             VARCHAR2(50),
    ciudad            VARCHAR2(50),
    cp                FLOAT,
    restaurante_id    NUMBER NOT NULL
);

CREATE UNIQUE INDEX sucursal__idx ON
    sucursal (
        id
    ASC );

ALTER TABLE sucursal ADD CONSTRAINT sucursal_pk PRIMARY KEY ( id );

ALTER TABLE sucursal ADD CONSTRAINT sucursal_nif_un UNIQUE ( nif );

CREATE TABLE suministra (
    cantidad       FLOAT,
    ingrediente_id NUMBER NOT NULL,
    proveedor_id   NUMBER NOT NULL,
    sucursal_id    NUMBER NOT NULL
);

ALTER TABLE suministra
    ADD CONSTRAINT suministra_pk PRIMARY KEY ( ingrediente_id,
                                               proveedor_id,
                                               sucursal_id );

CREATE TABLE teléfonoempleado (
    teléfono     INTEGER NOT NULL,
    empleado_dni FLOAT NOT NULL
);

ALTER TABLE teléfonoempleado ADD CONSTRAINT teléfonoempleado_pk PRIMARY KEY ( teléfono,
                                                                              empleado_dni );

CREATE TABLE trabajaen (
    sucursal_id  NUMBER NOT NULL,
    empleado_dni FLOAT NOT NULL
);

ALTER TABLE trabajaen ADD CONSTRAINT trabajaen_pk PRIMARY KEY ( sucursal_id,
                                                                empleado_dni );

CREATE TABLE valores (
    valor          VARCHAR2(50) NOT NULL,
    restaurante_id NUMBER NOT NULL
);

ALTER TABLE valores ADD CONSTRAINT valores_pk PRIMARY KEY ( valor,
                                                            restaurante_id );

ALTER TABLE bebida_alcohólica
    ADD CONSTRAINT alcohólica_bebida_fk FOREIGN KEY ( bebida_producto_id )
        REFERENCES bebida ( producto_id );

ALTER TABLE alergenos
    ADD CONSTRAINT alergenos_comida_fk FOREIGN KEY ( comida_producto_id )
        REFERENCES comida ( producto_id );

ALTER TABLE bebida
    ADD CONSTRAINT bebida_producto_fk FOREIGN KEY ( producto_id )
        REFERENCES producto ( id );

ALTER TABLE camarero
    ADD CONSTRAINT camarero_empleado_fk FOREIGN KEY ( empleado_dni )
        REFERENCES empleado ( dni );

ALTER TABLE clienteanonimo
    ADD CONSTRAINT clienteanonimo_sucursal_fk FOREIGN KEY ( sucursal_id )
        REFERENCES sucursal ( id );

ALTER TABLE comida
    ADD CONSTRAINT comida_producto_fk FOREIGN KEY ( producto_id )
        REFERENCES producto ( id );

ALTER TABLE compuestopor
    ADD CONSTRAINT compuestopor_pedido_fk FOREIGN KEY ( pedido_numeropedido )
        REFERENCES pedido ( numeropedido );

ALTER TABLE compuestopor
    ADD CONSTRAINT compuestopor_producto_fk FOREIGN KEY ( producto_id )
        REFERENCES producto ( id );

ALTER TABLE director
    ADD CONSTRAINT director_empleado_fk FOREIGN KEY ( empleado_dni )
        REFERENCES empleado ( dni );

ALTER TABLE director
    ADD CONSTRAINT director_restaurante_fk FOREIGN KEY ( restaurante_id )
        REFERENCES restaurante ( id );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_empleado_fk FOREIGN KEY ( empleado_dni )
        REFERENCES empleado ( dni );

ALTER TABLE comida_entrante
    ADD CONSTRAINT entrante_comida_fk FOREIGN KEY ( comida_producto_id )
        REFERENCES comida ( producto_id );

ALTER TABLE gerente
    ADD CONSTRAINT gerente_empleado_fk FOREIGN KEY ( empleado_dni )
        REFERENCES empleado ( dni );

ALTER TABLE gerente
    ADD CONSTRAINT gerente_sucursal_fk FOREIGN KEY ( sucursal_id )
        REFERENCES sucursal ( id );

ALTER TABLE guarda
    ADD CONSTRAINT guarda_mesa_fk FOREIGN KEY ( mesa_numero,
                                                mesa_sucursal_id )
        REFERENCES mesa ( numero,
                          sucursal_id );

ALTER TABLE guarda
    ADD CONSTRAINT guarda_reserva_fk FOREIGN KEY ( reserva_numero,
                                                   reserva_cliente_id )
        REFERENCES reserva ( cliente_id,
                             número );

ALTER TABLE mesa
    ADD CONSTRAINT mesa_sucursal_fk FOREIGN KEY ( sucursal_id )
        REFERENCES sucursal ( id );

ALTER TABLE necesitade
    ADD CONSTRAINT necesitade_ingrediente_fk FOREIGN KEY ( ingrediente_id )
        REFERENCES ingrediente ( id );

ALTER TABLE necesitade
    ADD CONSTRAINT necesitade_producto_fk FOREIGN KEY ( producto_id )
        REFERENCES producto ( id );

ALTER TABLE bebida_noalcohólica
    ADD CONSTRAINT noalcohólica_bebida_fk FOREIGN KEY ( bebida_producto_id )
        REFERENCES bebida ( producto_id );

ALTER TABLE ofrece
    ADD CONSTRAINT ofrece_producto_fk FOREIGN KEY ( producto_id )
        REFERENCES producto ( id );

ALTER TABLE ofrece
    ADD CONSTRAINT ofrece_sucursal_fk FOREIGN KEY ( sucursal_id )
        REFERENCES sucursal ( id );

ALTER TABLE pedido
    ADD CONSTRAINT pedido_camarero_fk FOREIGN KEY ( camarero_dni )
        REFERENCES camarero ( empleado_dni );

ALTER TABLE pedido
    ADD CONSTRAINT pedido_mesa_fk FOREIGN KEY ( mesa_numero,
                                                sucursal_id )
        REFERENCES mesa ( numero,
                          sucursal_id );

ALTER TABLE comida_postre
    ADD CONSTRAINT postre_comida_fk FOREIGN KEY ( comida_producto_id )
        REFERENCES comida ( producto_id );

ALTER TABLE comida_principal
    ADD CONSTRAINT principal_comida_fk FOREIGN KEY ( comida_producto_id )
        REFERENCES comida ( producto_id );

ALTER TABLE reserva
    ADD CONSTRAINT reserva_cliente_fk FOREIGN KEY ( cliente_id )
        REFERENCES cliente ( id );

ALTER TABLE resultadosfinanceiros
    ADD CONSTRAINT rf_sucursal_fk FOREIGN KEY ( sucursal_id )
        REFERENCES sucursal ( id );

ALTER TABLE sucursal
    ADD CONSTRAINT sucursal_restaurante_fk FOREIGN KEY ( restaurante_id )
        REFERENCES restaurante ( id );

ALTER TABLE suministra
    ADD CONSTRAINT suministra_ingrediente_fk FOREIGN KEY ( ingrediente_id )
        REFERENCES ingrediente ( id );

ALTER TABLE suministra
    ADD CONSTRAINT suministra_proveedor_fk FOREIGN KEY ( proveedor_id )
        REFERENCES proveedor ( id );

ALTER TABLE suministra
    ADD CONSTRAINT suministra_sucursal_fk FOREIGN KEY ( sucursal_id )
        REFERENCES sucursal ( id );

ALTER TABLE teléfonoempleado
    ADD CONSTRAINT teléfonoempleado_empleado_fk FOREIGN KEY ( empleado_dni )
        REFERENCES empleado ( dni );

ALTER TABLE trabajaen
    ADD CONSTRAINT trabajaen_empleado_fk FOREIGN KEY ( empleado_dni )
        REFERENCES empleado ( dni );

ALTER TABLE trabajaen
    ADD CONSTRAINT trabajaen_sucursal_fk FOREIGN KEY ( sucursal_id )
        REFERENCES sucursal ( id );

ALTER TABLE valores
    ADD CONSTRAINT valores_restaurante_fk FOREIGN KEY ( restaurante_id )
        REFERENCES restaurante ( id );

CREATE SEQUENCE cliente_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER cliente_id_trg BEFORE
    INSERT ON cliente
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := cliente_id_seq.nextval;
END;
/

CREATE SEQUENCE ingrediente_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER ingrediente_id_trg BEFORE
    INSERT ON ingrediente
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := ingrediente_id_seq.nextval;
END;
/

CREATE SEQUENCE producto_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER producto_id_trg BEFORE
    INSERT ON producto
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := producto_id_seq.nextval;
END;
/

CREATE SEQUENCE proveedor_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER proveedor_id_trg BEFORE
    INSERT ON proveedor
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := proveedor_id_seq.nextval;
END;
/

CREATE SEQUENCE rest_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER rest_id_trg BEFORE
    INSERT ON restaurante
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := rest_id_seq.nextval;
END;
/

CREATE SEQUENCE sucursal_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER sucursal_id_trg BEFORE
    INSERT ON sucursal
    FOR EACH ROW
    WHEN ( new.id IS NULL )
BEGIN
    :new.id := sucursal_id_seq.nextval;
END;
/

CREATE SEQUENCE trabajaen_sucursal_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER trabajaen_sucursal_id_trg BEFORE
    INSERT ON trabajaen
    FOR EACH ROW
    WHEN ( new.sucursal_id IS NULL )
BEGIN
    :new.sucursal_id := trabajaen_sucursal_id_seq.nextval;
END;
/