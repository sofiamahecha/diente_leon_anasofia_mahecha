DROP DATABASE IF EXISTS diente_leon;
CREATE DATABASE diente_leon ; 

USE diente_leon ; 

CREATE TABLE ventas (
  idVenta INT PRIMARY KEY AUTO_INCREMENT 
, idCliente INT NOT NULL 
, idSede INT NOT NULL 
, idEmpleado INT NOT NULL 
, idProducto INT NOT NULL 
, idCanal INT NOT NULL 
, fecha DATETIME NOT NULL
, tipo_venta INT NOT NULL 
);

CREATE TABLE cliente (
 idCliente INT PRIMARY KEY AUTO_INCREMENT
, nombre_cliente VARCHAR (20)
, telefono_cliente INT NOT NULL 
, correo_cliente VARCHAR(20) UNIQUE
);

CREATE TABLE producto (
 idProducto INT PRIMARY KEY AUTO_INCREMENT
, nombre_producto VARCHAR(50) NOT NULL
, coleccion VARCHAR(50) NOT NULL
);

CREATE TABLE canal (
 idCanal INT PRIMARY KEY AUTO_INCREMENT
, idVenta INT NOT NULL 
, tipo_canal VARCHAR(20)
);

CREATE TABLE empleado (
 idEmpleado INT PRIMARY KEY AUTO_INCREMENT
, nombre_empleado VARCHAR(20)
, telefono_empleado VARCHAR (20)
);

CREATE TABLE sede (
 idSede INT PRIMARY KEY AUTO_INCREMENT
, nombre_sede VARCHAR(20)
, direccion VARCHAR(20)
);

CREATE TABLE socio (
 idSocio INT PRIMARY KEY AUTO_INCREMENT
, idSede INT NOT NULL
, nombre_socio VARCHAR(20)
);

CREATE TABLE  proveedor (
 idProveedor INT PRIMARY KEY AUTO_INCREMENT
, idProducto INT NOT NULL
, nombre_proveedor VARCHAR(20)
);

CREATE TABLE categoria (
idCategoria INT PRIMARY KEY AUTO_INCREMENT
, idProducto INT NOT NULL
);

ALTER TABLE ventas 
ADD CONSTRAINT fk_ventas_cliente 
	FOREIGN KEY (idCliente) REFERENCES cliente(idCliente);
    
ALTER TABLE ventas 
ADD CONSTRAINT fk_ventas_empleado
	FOREIGN KEY (idEmpleado) REFERENCES empleado(idEmpleado);
    
ALTER TABLE ventas 
ADD CONSTRAINT fk_ventas_sede
	FOREIGN KEY (idSede) REFERENCES sede(idSede);
    
ALTER TABLE ventas 
ADD CONSTRAINT fk_ventas_producto
	FOREIGN KEY (idProducto) REFERENCES producto(idProducto);
    
ALTER TABLE ventas 
ADD CONSTRAINT fk_ventas_canal
	FOREIGN KEY (idCanal) REFERENCES canal(idCanal);
    
ALTER TABLE producto
ADD CONSTRAINT fk_producto_categoria
	FOREIGN KEY (idProducto) REFERENCES categoria(idProducto);
    
ALTER TABLE producto
ADD CONSTRAINT fk_producto_proveedor
	FOREIGN KEY (idProducto) REFERENCES proveedor(idProducto);
    
ALTER TABLE sede
ADD CONSTRAINT fk_sede_socio
	FOREIGN KEY (idSede) REFERENCES socio(idSede);
    


