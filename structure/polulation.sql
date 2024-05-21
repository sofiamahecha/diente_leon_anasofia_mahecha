use diente_leon;
SET GLOBAL local_infile = true;

LOAD DATA LOCAL INFILE './structure/data-csv/cliente.csv' 
INTO TABLE cliente 
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './structure/data-csv/empleado.csv' 
INTO TABLE empleado 
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './structure/data-csv/producto.csv' 
INTO TABLE producto 
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './structure/data-csv/sede.csv' 
INTO TABLE sede 
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './structure/data-csv/ventas.csv' 
INTO TABLE ventas
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './structure/data-csv/canal.csv' 
INTO TABLE canal
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './structure/data-csv/categoria.csv' 
INTO TABLE categoria
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './structure/data-csv/proveedor.csv' 
INTO TABLE proveedor
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE './structure/data-csv/socio.csv' 
INTO TABLE socio
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' IGNORE 1 ROWS;