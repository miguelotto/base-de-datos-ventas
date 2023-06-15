create database database2;
use database2


/*create database horario
use horario*/

create table dias_semana(
id_dia_semana int primary key identity (1,1),
descripcion varchar (12)not null
);

create table materia(
id_materia int primary key identity,
nombre_materia varchar(30) not null

);

create table aula (
id_aula int  primary key identity,
estatus_aula varchar(2) default 'AC',
nro_aula int 
);
--asi se hace una foreign key se le coloca int 
--como su referencia es de tipo entero esta tiene que ser entera tamb
--
create table seccion(
id_seccion int primary key identity(1,1),
nombre_seccion varchar(10)
);
create table periodo(
id_periodo int primary key identity,
tipo_periodo varchar (1)
);
create table hora(
id_hora int primary key identity,
hora varchar (20),
turno varchar (1)
);
create table detalle(
id_detalle int primary key identity,
id_hora int foreign key references hora(id_hora),
id_materia int foreign key references materia(id_materia) ,
id_periodo int foreign key references periodo(id_periodo),
id_seccion int foreign key references seccion(id_seccion),
id_dia_semana int foreign key references dias_semana(id_dia_semana)
);
/*create table detalle_horario(
id_detalle int primary key identity,
id_hora int
);*/
insert into dias_semana(descripcion)values('Lunes');
insert into dias_semana(descripcion)values('Martes');
insert into dias_semana(descripcion)values('Miercoles');
insert into dias_semana(descripcion)values('Jueves');
insert into dias_semana(descripcion)values('Viernes');
insert into dias_semana(descripcion)values('Domingo');
insert into hora(hora,turno)values('7:40-8:25','M')
insert into hora(hora,turno)values('8:25-9:00','M');
insert into hora(hora,turno)values('9:00-9:45','M');
insert into hora(hora,turno)values('9:45-10:25','M');
insert into hora(hora,turno)values('10:25,11:05','M');
insert into hora(hora,turno)values('11:05-11:45','M');
insert into hora(hora,turno)values('11:45-12:25','M');
insert into hora(hora,turno) values('12:25-1:05','M');



insert into materia(nombre_materia)values('Actividades complementarias');
insert into materia(nombre_materia)values('Estructura de datos');
insert into materia(nombre_materia)values('Ingles');
insert into materia(nombre_materia)values('Lenguaje de programacion');
insert into materia(nombre_materia)values('Matematicas II');
insert into materia(nombre_materia)values('Organizacion y metodos');
insert into materia(nombre_materia)values('Sistemas de informacion');
insert into seccion(nombre_seccion)values('1201');
insert into periodo(tipo_periodo)values('A')
insert into periodo(tipo_periodo)values('B')
insert into periodo(tipo_periodo)values('C')
insert into seccion(nombre_seccion)values('1201')
insert into aula(nro_aula)values(120)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(1,6,1,2,2)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(2,6,1,2,2)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(3,6,1,2,2)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(4,4,1,2,2)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(5,4,1,2,2)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(6,4,1,2,2)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(1,3,1,2,3)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(2,3,1,2,3)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(3,7,1,2,3)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(4,7,1,2,3)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(5,7,1,2,3)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(6,1,1,2,3)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(7,1,1,2,3)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(1,4,1,2,4)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(2,4,1,2,4)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(3,4,1,2,4)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(4,5,1,2,4)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(5,5,1,2,4)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(6,5,1,2,4)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(1,2,1,2,5)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(2,2,1,2,5)
insert into detalle(id_hora,id_materia,id_seccion,id_periodo,id_dia_semana)values(3,2,1,2,5)


select*from seccion
select *from periodo
select*from dias_semana;

select*from materia;
select*from detalle
select m.nombre_materia,s.nombre_seccion,p.tipo_periodo,h.hora,r.descripcion,a.nro_aula,a.estatus_aula  from aula a, hora h, detalle d,seccion s,periodo p,materia m,dias_semana r
where d.id_materia=m.id_materia and d.id_dia_semana=r.id_dia_semana and d.id_hora=h.id_hora and d.id_seccion=s.id_seccion
and d.id_periodo=p.id_periodo


/*si se quiere editar un campo ya creado no se puede hacer desde codigo asi que */


--con este script se puede borrar los datos insertados osea todos los registros

 /*select a.hora,d.descripcion from materia m,Mtro_horario A,seccion s,dias_semana d
 where a.id_dia_semana=d.id_dia_semana*/ 

 --este select hace que el dia en vez de ser uno sea lunes o otro dia de la semana 
 --llamamos a horario "a" y a dias de la semana "d" utilizamos el punto para poder seleccionar un campo y aja 