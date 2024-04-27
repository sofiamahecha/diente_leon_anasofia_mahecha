CREATE OR REPLACE VIEW buscar_canal_13 AS
    SELECT 
        canal.idCanal AS idCanal, canal.tipo_canal AS tipo_canal
    FROM
        canal
    WHERE
        (canal.tipo_canal LIKE '%13');
CREATE OR REPLACE VIEW buscar_cliente_3 AS
    SELECT 
        cliente.idCliente AS idCliente,
        cliente.nombre_cliente AS nombre_cliente
    FROM
        cliente
    WHERE
        (cliente.idCliente = 3);
CREATE OR REPLACE VIEW buscar_empleado_3 AS
    SELECT 
        empleado.idEmpleado AS idEmpleado,
        empleado.nombre_empleado AS nombre_empleado
    FROM
        empleado
    WHERE
        (empleado.idEmpleado = 3);
CREATE OR REPLACE VIEW buscar_producto_coleccion1 AS
    SELECT 
        producto.nombre_producto AS nombre_producto,
        producto.coleccion AS coleccion
    FROM
        producto
    WHERE
        (producto.coleccion LIKE '%1');
CREATE OR REPLACE VIEW buscar_socio_10 AS
    SELECT 
        socio.idSocio AS idSocio, socio.nombre_socio AS nombre_socio
    FROM
        socio
    WHERE
        (socio.nombre_socio LIKE '%10');