USE `sistema de reservas y gestion de eventos`;

-- Insertar datos en la tabla cliente
INSERT INTO cliente (nombre, apellido, email, telefono) VALUES
('Juan', 'Perez', 'juan@hotmail.com', '0945678090'),
('Felipe', 'Lopez', 'felipe_lopez@gmail.com', '0987654321'),
('Juan', 'Martinez', 'juan.martinez@yahoo.com', '0987654321'),
('Aristides', 'Aristiguieta', 'aristides.aristiguieta@gmail.com', '0987654321'),
('Edmundo', 'Pulgar', 'edmundo.pulgar@hotmail.com', '0987654321'),
('Freddy', 'Jimenez', 'freddy.jimenez@gmail.com', '0987654321'),
('Daniel', 'Jimenez', 'daniel.jimenez@gmail.com', '0987654321'),
('Josefina', 'Mata', 'josefina.mata@hotmail.com', '0987654321'),
('Altagracia', 'Ugarte', 'altagracia.ugarte@outlook.com', '0987654321'),
('Luis', 'Altamirano', 'luis.altamirano@outlook.com', '0987654321'),
('Carlos', 'Voce', 'carlos.voce@outlook.com', '0987654321'),
('Jose', 'Solorzano', 'jose.solorzano@gmail.com', '0987654321'),
('Humberto', 'Blasquez', 'humberto.blasquez@gmail.com', '0987654321'),
('Paola', 'Vasquez', 'paola.vasquez@gmail.com', '0987654321'),
('Alejandra', 'Lipi', 'alejandra.lipi@outlook.com', '0987654321');

-- Insertar datos en la tabla evento
INSERT INTO evento (nombre, fecha, hora, lugar, tematica_id) VALUES
('Concierto de Rock', '2024-05-15', '20:00:00', 'Estadio Nacional', 1),
('Festival de Jazz', '2024-06-20', '18:00:00', 'Parque Central', 2),
('Conferencia de Tecnología', '2024-07-10', '09:00:00', 'Centro de Convenciones', 3),
('Festival de Rock', '2024-07-15', '09:00:00', 'Parque Central', 2), 
('Festival de Alternativo', '2024-07-18', '09:00:00', 'Parque Central', 2), 
('Concierto de Retro 60-80', '2024-07-22', '09:00:00', 'Estadio Nacional', 1), 
('Conferencia de Astronomia', '2024-07-23', '09:00:00', 'Centro de Convenciones', 3), 
('Festival de Reggaetón', '2024-07-24', '09:00:00', 'Parque Central', 2), 
('Festival de folklore', '2024-07-25', '09:00:00', 'Parque Central', 2), 
('Conferencia de Tecnología', '2024-07-27', '09:00:00', 'Centro de Convenciones', 3),
('Conferencia de Tecnología', '2024-07-31', '09:00:00', 'Centro de Convenciones', 3),
('concierto de Jazz', '2024-08-03', '09:00:00', 'Estadio Nacional', 1), 
('Festival de Electronica', '2024-08-5', '09:00:00', 'Parque Central', 2),
('Conferencia de Programacion', '2024-08-7', '09:00:00', 'Centro de Convenciones', 3),
('Conferencia de Evolucion de la tecnologia', '2024-08-10', '09:00:00', 'Centro de Convenciones', 3);

-- Insertar datos en la tabla reserva
INSERT INTO reserva (evento_id, cliente_id, fecha_de_reserva, num_personas, estado_reserva) VALUES
(16, 16, '2024-05-10 10:00:00', 2, 'Confirmada'),
(17, 17, '2024-06-10 15:00:00', 3, 'Pendiente'),
(18, 18, '2024-07-01 09:30:00', 1, 'Cancelada'),
(19, 19, '2024-07-01 09:30:00', 1, 'Confirmada'),
(20, 20, '2024-07-01 09:30:00', 1, 'Pendiente'),
(21, 21, '2024-07-01 09:30:00', 1, 'Confirmada'),
(22, 22, '2024-07-01 09:30:00', 1, 'Pendiente'),
(23, 23, '2024-07-01 09:30:00', 1, 'Cancelada'),
(24, 24, '2024-07-01 09:30:00', 1, 'Confirmada'),
(25, 25, '2024-07-01 09:30:00', 1, 'Confirmada'),
(26, 26, '2024-07-01 09:30:00', 1, 'Pendiente'),
(27, 27, '2024-07-01 09:30:00', 1, 'Confirmada'),
(28, 28, '2024-07-01 09:30:00', 1, 'Pendiente'),
(29, 29, '2024-07-01 09:30:00', 1, 'Confirmada'),
(30, 30, '2024-07-01 09:30:00', 1, 'Pendiente');

-- Insertar datos en la tabla asiento
INSERT INTO asiento (num_asiento, evento_id, estado) VALUES
(101, 16, 'Disponible'),
(102, 17, 'Disponible'),
(201, 18, 'Disponible'),
(202, 19, 'Ocupado'),
(301, 20, 'Disponible'),
(302, 21, 'Ocupado'),
(401, 22, 'Ocupado'),
(402, 23, 'Ocupado'),
(501, 24, 'Ocupado'),
(502, 25, 'Ocupado'),
(601, 26, 'Ocupado'),
(602, 27, 'Ocupado'),
(701, 28, 'Ocupado'),
(702, 29, 'Ocupado'),
(801, 30, 'Ocupado'),
(901, 31, 'Ocupado'),
(1001, 32, 'Ocupado'),
(1002, 33, 'Ocupado'),
(1101, 34, 'Ocupado'),
(1102, 35, 'Ocupado'),
(1201, 36, 'Ocupado'), 
(1202, 37, 'Ocupado'), 
(1301, 38, 'Ocupado'),
(1302, 39, 'Ocupado'),
(1401, 40, 'Ocupado'), 
(1402, 41, 'Ocupado'), 
(1501, 42, 'Ocupado'),
(1502, 43, 'Ocupado'); 

-- Insertar datos en la tabla zona_asiento
INSERT INTO zona_asiento (nombre, evento_id) VALUES
('VIP', 16),
('General', 17),
('Premium', 18);

-- Inserción de datos en la tabla de gestión de inventario y recursos
INSERT INTO recursos (id, cantidad_disponible) VALUES
(1, 100), 
(2, 50),  
(3, 200), 
(4, 80),
(5, 10),
(6, 60),
(7, 20),
(8, 2),
(9, 30),
(10, 20);

