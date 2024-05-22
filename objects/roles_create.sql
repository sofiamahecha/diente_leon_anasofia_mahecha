USE diente_leon;
CREATE ROLE 'admin', 'lector', 'escritor';
GRANT ALL ON diente_leon.* TO 'admin';
GRANT SELECT ON diente_leon.* TO 'lector';
GRANT INSERT, UPDATE, DELETE ON diente_leon.* TO 'escritor';
CREATE USER 'admin'@'localhost' IDENTIFIED BY '123';
CREATE USER 'lector1'@'localhost' IDENTIFIED BY '123';
CREATE USER 'lector2'@'localhost' IDENTIFIED BY '123';
CREATE USER 'escritor'@'localhost' IDENTIFIED BY '123';
GRANT 'admin' TO 'admin'@'localhost';
GRANT 'lector' TO 'lector1'@'localhost', 'lector2'@'localhost';
GRANT 'escritor' TO 'escritor'@'localhost';