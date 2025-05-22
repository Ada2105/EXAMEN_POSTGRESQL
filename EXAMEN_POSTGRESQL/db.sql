create table categoria (
	id_categoria serial primary key,
	nombre varchar(50) not null
);

create table cliente (
	id_cliente serial primary key,
	nombre varchar(50) not null,
	contacto varchar(20) not null,
	direccion varchar(100)
);

create table sucursal (
	id_sucursal serial primary key,
	ubicacion varchar(100) not null
);

create table pelicula (
	id_pelicula serial primary key,
	titulo varchar(50) not null,
	director varchar(100),
	anio_lanzamiento date not null,
	precio decimal(10,2) not null check (precio > 0),
	id_categoria int not null,
	foreign key (id_categoria) references categoria(id_categoria)
);

create table inventario (
	id_inventario serial primary key,
	disponibilidad boolean not null default true,
	id_sucursal int not null,
	id_pelicula int not null,
	foreign key (id_sucursal) references sucursal(id_sucursal),
	foreign key (id_pelicula) references pelicula(id_pelicula)
);

create table alquileres (
	id_alquiler serial primary key,
	fecha_inicio date not null,
	fecha_devolucion date not null check (fecha_devolucion > fecha_inicio),
	costo_total decimal(10,2) not null check (costo_total > 0),
	id_cliente int not null,
	id_pelicula int not null,
	foreign key (id_cliente) references cliente(id_cliente),
	foreign key (id_pelicula) references pelicula(id_pelicula)
);

create table pagos (
	id_pago serial primary key,
	fecha date not null,
	monto decimal(10,2) not null check (monto > 0),
	id_cliente int not null,
	id_alquiler int not null, 
	foreign key (id_cliente) references cliente(id_cliente),
	foreign key (id_alquiler) references alquileres(id_alquiler)
);