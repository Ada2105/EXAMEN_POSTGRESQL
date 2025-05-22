insert into cliente (nombre, contacto, direccion) values 
('Pablo', '1234567890', 'calle 2'),
('Pedro', '3452637849', 'Calle 4'),
('Daniel', '2738493023', 'calle 6'),
('Ivan', '8473629038', 'calle 5'),
('Brayan', '8930293845', 'calle 7'),
('Ruben', '09873749583', 'calle 9'),
('Andrea', '27384934625', 'calle 3'),
('Valentina', '0987653425', 'calle 8'),
('Laura', '2839467263', 'calle 9'),
('Camila', '87394827365', 'calle 12'),
('Maria', '2453674892', 'calle 10');

insert into pelicula (titulo, director, anio_lanzamiento, precio, id_categoria) values
('pelicula 1', 'director 1', '2-01-2001', 10.00, DEFAULT),
('pelicula 2', 'director 2', '1-02-2001', 10.00, DEFAULT),
('pelicula 3', 'director 3', '3-03-2002', 12.00, DEFAULT),
('pelicula 4', 'director 4', '4-04-2003', 13.00, DEFAULT),
('pelicula 5', 'director 5', '5-05-2004', 11.00, DEFAULT),
('pelicula 6', 'director 6', '2-06-2005', 14.00, DEFAULT),
('pelicula 7', 'director 7', '2-07-2006', 15.00, DEFAULT),
('pelicula 8', 'director 8', '3-12-2007', 14.00, default),
('pelicula 9', 'director 9', '11-06-2008', 12.00, DEFAULT),
('pelicula 10', 'director 10', '5-03-2009', 11.00, DEFAULT),
('pelicula 11', 'director 11', '9-09-010', 17.00, DEFAULT),
('pelicula 12', 'director 12', '4-10-2011', 14.00, DEFAULT),
('pelicula 13', 'director 13', '2-04-2012', 16.00, DEFAULT),
('pelicula 14', 'director 14', '6-07-2015', 10.00, DEFAULT),
('pelicula 15', 'director 15', '8-05-2016', 12.00, DEFAULT);
	
insert into alquileres (fecha_inicio, fecha_devolucion, costo_total, id_cliente, id_pelicula) values
('11-01-2001', '12-01-2001', '20.00', '1', '1'),
('11-02-2002', '12-02-2002', '50.00', '2', '2'),
('11-01-2001', '12-02-2001', '30.00', '3', '3'),
('7-03-2010', '8-03-2010', '20.00', '4', '4'),
('1-04-2018', '3-04-2018', '30.00', '5', '5'),
('8-01-2020', '12-03-2020', '52.00', '6', '6'),
('11-01-2001', '12-01-2001', '20.00', '1', '1');

insert into sucursales (ubicacion) values
(calle 15),
(calle 20),
(calle 23),
(calle 40),
(calle 13);
