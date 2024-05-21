use diente_leon;
/*DELIMITER $$ 
CREATE FUNCTION fn_nombre(parametro_nombre tipo_de_dato (longitud))
returns tipo_de_dato
deterministic/ no deterministic /no sql/ reads sql data 
begin 
declare nombre_variable tipo_de_dato;
	SELECT nombre_columna into nombre_variable from nombre_tabla; 
end $$
DELIMITER ; */
DROP FUNCTION IF EXISTS fn_buscar_cliente;
DELIMITER $$
CREATE FUNCTION fn_buscar_cliente(p_id int)
RETURNS varchar(50)
DETERMINISTIC
BEGIN
	DECLARE nombre_cliente_variable varchar(50);
		SELECT nombre_cliente INTO nombre_cliente_variable FROM cliente WHERE idCliente=p_id;
RETURN nombre_cliente_variable;
END $$
DELIMITER ;

SELECT fn_buscar_cliente(1) AS "primer nombre cliente";
-- ---------------------------------------------------------------------------------------------------

DROP FUNCTION IF EXISTS fn_buscar_cliente_telefono;
DELIMITER $$
CREATE FUNCTION fn_buscar_cliente_telefono(p_id int)
RETURNS int
DETERMINISTIC
BEGIN
	DECLARE telefono_cliente_variable int;
		SELECT telefono_cliente INTO telefono_cliente_variable FROM cliente WHERE idCliente=p_id;
RETURN telefono_cliente_variable;
END $$
DELIMITER ;

SELECT fn_buscar_cliente_telefono(1) AS "telefono primer cliente";

-- ----------------------------------------------------------
SELECT direccion from sede WHERE direccion LIKE "%1";

delimiter // 
create function fn_buscar_direccion(p_dato int)
returns varchar(50)
deterministic
begin
	declare dire varchar(50);
    declare param varchar(20);
    set param= concat('%', p_dato);
    
		select direccion into dire from SEDE where direccion like param;
	return dire;
end //
delimiter ;

SELECT fn_buscar_direccion(1) AS "direccion";