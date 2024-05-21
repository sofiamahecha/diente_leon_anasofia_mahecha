use diente_leon;
create table log_audit(
id int primary key AUTO_INCREMENT,
usuario varchar(50),
accion varchar(50),
fecha_accion date,
time_accion time
);
Create trigger trg_insert_cliente
After insert on cliente
For each row 
Insert into log_audit(usuario,accion,fecha_accion, time_accion)
values(current_user(),'insert', curdate(),now());

insert into cliente (nombre_cliente,telefono_cliente,correo_cliente)values('joana', 1157894561,'joana@live.com');
-- select * from log_audit;

-- despues de actualizar la tabla cliente, inserta el cambio realizado en la tabla de auditoría. 
create trigger trg_updatecliente 
after update on cliente 
for each row 
Insert into log_audit(usuario,accion,fecha_accion, time_accion)
values(current_user(),'update', curdate(),now());
set sql_safe_updates = 0 ;
update cliente set correo_cliente = 'joana@live.com.ar' where correo_cliente like '%@live%';

-- select * from cliente ;