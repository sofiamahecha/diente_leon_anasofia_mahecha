USE diente_leon ;
DELIMITER //
-- insertar un producto
CREATE PROCEDURE InsertarProducto(
    IN p_nombre_producto VARCHAR(50),
    IN p_coleccion VARCHAR(50)
)
BEGIN
    DECLARE product_count INT;

    -- mirar si el producto ya existe o no
    SELECT COUNT(*) INTO product_count
    FROM producto
    WHERE nombre_producto = p_nombre_producto AND coleccion = p_coleccion;

    IF product_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Producto ya existe.';
    ELSE
        INSERT INTO producto (nombre_producto, coleccion) VALUES (p_nombre_producto, p_coleccion);
        SELECT LAST_INSERT_ID() AS idproducto;
    END IF;
END //
DELIMITER ; 
    CALL InsertarProducto("Producto 11","Coleccion 3");

DELIMITER // 
-- actualizar un producto
CREATE PROCEDURE UpdateProducto(
    IN p_idproducto INT,
    IN p_nombre_producto VARCHAR(50),
    IN p_coleccion VARCHAR(50)
)
BEGIN
    DECLARE product_existe INT;

    
    -- mirar si existe el producto
    SELECT COUNT(*) INTO product_existe
    FROM producto
    WHERE idproducto = p_idproducto;

    IF product_existe = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Product ID no existe';
    ELSE
        UPDATE producto 
        SET nombre_producto = p_nombre_producto, 
            coleccion = p_coleccion
        WHERE idproducto = p_idproducto;
    END IF;
END //

DELIMITER ;
CALL UpdateProducto(10,"Producto 11","Coleccion 4");


