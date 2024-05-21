create table log_audit(
id int primary key AUTO_INCREMENT
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

insert into cliente values('joana', 1157894561,'joana@live.com');
