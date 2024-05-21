DROP DATABASE IF EXISTS diente_leon;
CREATE DATABASE diente_leon ; 

USE diente_leon ; 

CREATE TABLE ventas (
  idventa INT PRIMARY KEY AUTO_INCREMENT 
, idcliente INT NOT NULL 
, idsede INT NOT NULL 
, idempleado INT NOT NULL 
, idproducto INT NOT NULL 
, idcanal INT NOT NULL 
, fecha DATETIME NOT NULL
, tipo_venta INT NOT NULL 
);

CREATE TABLE cliente (
 idcliente INT PRIMARY KEY AUTO_INCREMENT
, nombre_cliente VARCHAR (20)
, telefono_cliente INT NOT NULL 
, correo_cliente VARCHAR(20) UNIQUE
);

CREATE TABLE producto (
 idproducto INT PRIMARY KEY AUTO_INCREMENT
, nombre_producto VARCHAR(50) NOT NULL
, coleccion VARCHAR(50) NOT NULL
);

CREATE TABLE canal (
 idcanal INT PRIMARY KEY AUTO_INCREMENT
, idventa INT NOT NULL 
, tipo_canal VARCHAR(20)
);

CREATE TABLE empleado (
 idempleado INT PRIMARY KEY AUTO_INCREMENT
, nombre_empleado VARCHAR(20)
, telefono_empleado VARCHAR (20)
);

CREATE TABLE sede (
 idsede INT PRIMARY KEY AUTO_INCREMENT
, nombre_sede VARCHAR(20)
, direccion VARCHAR(20)
);

CREATE TABLE socio (
 idsocio INT PRIMARY KEY AUTO_INCREMENT
, idsede INT NOT NULL
, nombre_socio VARCHAR(20)
);

CREATE TABLE  proveedor (
 idproveedor INT PRIMARY KEY AUTO_INCREMENT
, idproducto INT NOT NULL
, nombre_proveedor VARCHAR(20)
);

CREATE TABLE categoria (
idcategoria INT PRIMARY KEY AUTO_INCREMENT
, idproducto INT NOT NULL
);

ALTER TABLE ventas 
ADD CONSTRAINT fk_ventas_cliente 
	FOREIGN KEY (idcliente) REFERENCES cliente(idcliente);
    
ALTER TABLE ventas 
ADD CONSTRAINT fk_ventas_empleado
	FOREIGN KEY (idempleado) REFERENCES empleado(idempleado);
    
ALTER TABLE ventas 
ADD CONSTRAINT fk_ventas_sede
	FOREIGN KEY (idsede) REFERENCES sede(idsede);
    
ALTER TABLE ventas 
ADD CONSTRAINT fk_ventas_producto
	FOREIGN KEY (idproducto) REFERENCES producto(idproducto);
    
ALTER TABLE ventas 
ADD CONSTRAINT fk_ventas_canal
	FOREIGN KEY (idcanal) REFERENCES canal(idcanal);
    
/*ALTER TABLE producto
ADD CONSTRAINT fk_producto_categoria
	FOREIGN KEY (idcategoria) REFERENCES producto(idcategoria);
  */  
ALTER TABLE proveedor
ADD CONSTRAINT fk_producto_proveedor
	FOREIGN KEY (idproducto) REFERENCES producto(idproducto);
    
ALTER TABLE socio
ADD CONSTRAINT fk_sede_socio
	FOREIGN KEY (idsede) REFERENCES sede(idsede);