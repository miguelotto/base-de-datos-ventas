create database databse1
use databse1

create table pais(
id_pais int primary key identity not null,
nombre_pais varchar (30)not null

);



create table ciudad(
id_ciudad int primary key identity,
nombre_ciudad varchar(30),
id_pais int,
constraint fk_ciudad_pais foreign key (id_pais) references pais(id_pais)
);




create table cliente(
id_cliente int primary key identity not null,
nombre1 varchar (30)not null,
nombre2 varchar (30)null,
apellido1 varchar(30)not null,
apellido2 varchar(30)null,
direccion varchar(30)not null,
id_pais int not null,
id_ciudad int,
CONSTRAINT FK_cliente_pais foreign key (id_pais) references pais(id_pais),
CONSTRAINT FK_cliente_ciudad foreign key (id_ciudad) references ciudad(id_ciudad)




);
 
/*alter table ventas
add foreign key (id_cliente) references cliente(id_cliente);*/


create table ventas(
numero_ventas int primary key identity,
fecha_venta date,
id_cliente int,
CONSTRAINT FK_ventas_cliente foreign key (id_cliente) references cliente(id_cliente)
);



create table correo(
id_correo int primary key identity,
correo varchar (30),
id_cliente int
constraint FK_cliente_correo foreign key(id_cliente) references cliente(id_cliente)

);





create table producto(
id_producto int primary key identity,
nombre_producto varchar (30),
precio float

);



create table detalle_venta(
id_detalle int primary key identity(1,1) ,
numero_ventas int ,
id_producto int,
precio float,
cantidad int,

constraint FK_venta_detalle foreign key (numero_ventas) references ventas(numero_ventas),
constraint FK_producto_detalle foreign key (id_producto) references producto(id_producto)
);
--delete from detalle_venta
--where id_detalle <= 5;

--drop table detalle_venta

--('miguelangel','','moreno','monzon','85-120',1);
insert into pais(nombre_pais)values('venezuela');
insert into pais(nombre_pais)values('colombia');
insert into pais(nombre_pais)values('mexico');

insert into ciudad(nombre_ciudad,id_pais)values('carabobo',1);insert into ciudad(nombre_ciudad,id_pais)values('caracas',1);
insert into ciudad(nombre_ciudad,id_pais)values('cartagena',2);insert into ciudad(nombre_ciudad,id_pais)values('cucuta',2);

insert into producto(nombre_producto,precio)values('motherboard',50.50);
insert into producto(nombre_producto,precio)values('intel i5-2400',25.10);




insert into ventas(fecha_venta,id_cliente)values('15/05/2023',1);
insert into detalle_venta(id_producto,precio,cantidad)values(1,50.50,2);
insert into correo(correo,id_cliente) values('miguel.monzon@gmail.com',1)
insert into cliente(nombre1,nombre2,apellido1,apellido2,direccion,id_pais,id_ciudad)values('miguelangel','','moreno ','monzon','85-120',1,1);
-- por alguna razon numero_de ventas al asignarle algo me da error nose porque
select * from cliente;
select *from detalle_venta;
select *from pais;
select *from ciudad;
select *from ventas;
select *from correo;
select * from producto;