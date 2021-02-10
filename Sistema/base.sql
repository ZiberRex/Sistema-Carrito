create database carrito;
use carrito;

create table Productos(
id_producto int primary key,
Nombre varchar(30),
almacenamiento varchar(15),
color varchar(20),
ram varchar(10),
precio varchar(20),
stock varchar(20)
);

Drop Table Productos;

insert into productos values ('1','Iphone X','128 GB','Negro','3 GB','22,000','2');
insert into productos values ('2','Iphone Xs','64 GB','Rojo','4 GB','25,0000','3');
insert into productos values ('3','Samsung galaxy m51','128 GB','Blanco','6 GB','35,000','2');

create table Compras(
id_cliente int primary key,
nombre_cliente varchar(50) not null,
correo_cliente varchar(50) not null,
FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
id_producto int,
total int,
sub_total int, 
igv int,
Cantidad_elegida int not null
);
Drop table Compras;
select * from Compras;

insert into Compras values ('1','Bryan Martinez','Bryanmartinez12.yt@gmail.com','1','22000','22000','3960','2');
insert into Compras values ('6','Emilio Martinez','jetc09az@gmail.com','2','20000','20000','3600','2');
insert into Compras values ('7','Eloisa Estrella','elokindle05@gmail.com','3','24000','24000','4320','2');

select total from Compras order by id_cliente;
SELECT SUM(total*Cantidad_elegida) as resultado FROM Compras;
