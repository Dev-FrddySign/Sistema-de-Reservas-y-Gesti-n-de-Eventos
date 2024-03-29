use `sitema de reserva y gestion de eventos`;

-- Script de inserción de datos
INSERT INTO `evento` (`Id`, `Nombre`, `Fecha`, `Hora`, `Lugar`, `Tematica`) VALUES
(1, 'Concierto de Rock', '2024-04-15', '20:00:00', 'Estadio Nacional', 'Rock'),
(2, 'Festival de Jazz', '2024-05-20', '18:00:00', 'Parque Central', 'Jazz'),
(3, 'Festival de Rock', '2024-05-21', '18:00:00', 'Parque Central', 'Rock'),
(4, 'Festival de Reggaetón', '2024-05-22', '19:00:00', 'Parque Central', 'Reggaetón'),
(5, 'Festival de folklore', '2024-05-30', '18:00:00', 'Parque Central', 'Folklore'),
(6, 'Festival de Electronica', '2024-06-10', '18:00:00', 'Parque Central', 'Electronica'),
(7, 'Festival de Alternativo', '2024-06-15', '18:00:00', 'Parque Central', 'Alternativo'),
(8, 'Festival de Retro 60-80', '2024-06-20', '18:00:00', 'Parque Central', 'Retro 60-80'),
(9, 'Festival de Rock', '2024-06-25', '18:00:00', 'Parque Central', 'Rock'),
(10, 'Festival de Reggaetón', '2024-06-27', '18:00:00', 'Parque Central', 'Reggaetón'),
(11, 'Festival de Jazz', '2024-06-28', '18:00:00', 'Parque Central', 'Jazz'),
(12, 'Festival de folklore', '2024-07-01', '18:00:00', 'Parque Central', 'Folklore'),
(13, 'Festival de Jazz', '2024-07-09', '18:00:00', 'Parque Central', 'Jazz'),
(14, 'Festival de Alternativo', '2024-07-15', '18:00:00', 'Parque Central', 'Alternativo'),
(15, 'Festival de Retro 60-80', '2024-07-20', '18:00:00', 'Parque Central', 'Retro 60-80');

INSERT INTO `cliente` (`Id`, `Nombre`, `Apellido`, `Email`, `Telefono`) VALUES
(1, 'Juan', 'Perez', 'juan@hotmail.com', '1234567890'),
(2, 'Felipe', 'Lopez', 'Felipe@gmail.com', '0987654321'),
(3, 'Juan', 'Martinez', 'maria@yahoo.com', '0987654321'),
(4, 'Aristides', 'Aristiguieta', 'maria@gmail.com', '0987654321'),
(5, 'Edmundo', 'Pulgar', 'maria@hotmail.com', '0987654321'),
(6, 'Freddy', 'Saldivia', 'maria@gmail.com', '0987654321'),
(7, 'Daniel', 'Jimenez', 'maria@gmail.com', '0987654321'),
(8, 'Josefina', 'Mata', 'maria@hotmail.com', '0987654321'),
(9, 'Altagracia', 'Ugarte', 'maria@outlook.com', '0987654321'),
(10, 'Luis', 'Altamirano', 'maria@outlook.com', '0987654321'),
(11, 'Carlos', 'Voce', 'maria@outlook.com', '0987654321'),
(12, 'Jose', 'Solorzano', 'maria@gmail.com', '0987654321'),
(13, 'Humberto', 'Blasquez', 'maria@gmail.com', '0987654321'),
(14, 'Paola', 'Vasquez', 'maria@gmail.com', '0987654321'),
(15, 'Alejandra', 'Lipi', 'maria@outlook.com', '0987654321');

INSERT INTO `reserva` (`Id`, `Id_Evento`, `Id_Cliente`, `Fecha_de_reserva`, `Num_Personas`, `Estado_reserva`) VALUES
(1, 1, 1, '2024-04-15', 2, 'Confirmada'),
(2, 2, 2, '2024-05-15', 3, 'Pendiente'),
(3, 3, 3, '2024-05-21', 4, 'Anulada'),
(4, 4, 4, '2024-05-22', 5, 'Pendiente'),
(5, 5, 5, '2024-05-30', 6, 'Confirmada'),
(6, 6, 6, '2024-06-10', 7, 'Confirmada'),
(7, 7, 7, '2024-06-15', 8, 'Confirmada'),
(8, 8, 8, '2024-06-20', 9, 'Pendiente'),
(9, 9, 9, '2024-06-25', 10, 'Confirmada'),
(10, 10, 10, '2024-06-27', 11, 'Anulada'),
(11, 11, 11, '2024-06-28', 12, 'Confirmada'),
(12, 12, 12, '2024-07-01', 13, 'Pendiente'),
(13, 13, 13, '2024-07-09', 14, 'Anulada'),
(14, 14, 14, '2024-07-20', 15, 'Pendiente');

INSERT INTO `asiento` (`Id`, `Num_Asiento`, `Id_Evento`, `Estado`) VALUES
(1, 101, 1, 'Disponible'),
(2, 102, 1, 'Disponible'),
(3, 201, 2, 'Disponible'),
(4, 202, 2, 'Ocupado'),
(5, 202, 3, 'Ocupado'),
(6, 202, 3, 'Disponible'),
(7, 202, 4, 'Ocupado'),
(8, 202, 4, 'Ocupado'),
(9, 202, 5, 'Disponible'),
(10, 202, 5, 'Ocupado'),
(11, 202, 6, 'Disponible'),
(12, 202, 6, 'Ocupado'),
(13, 202, 7, 'Ocupado'),
(14, 202, 7, 'Ocupado'),
(15, 202, 8, 'Disponible');

-- Script de creación de Vistas, Funciones y Stored Procedures

-- Descripción de las Vistas:
-- - `vista_reservas_detalle`: Muestra información detallada de las reservas, incluyendo el evento, cliente, fecha de reserva, número de personas y estado de la reserva.

-- Delimitador para definir el cuerpo de la vista
DELIMITER //

-- Creación de Vistas
CREATE VIEW IF NOT EXISTS `vista_reservas_detalle` AS
SELECT r.Id, e.Nombre AS Evento, CONCAT(c.Nombre, ' ', c.Apellido) AS Cliente, r.Fecha_de_reserva, r.Num_Personas, r.Estado_reserva
FROM reserva r
INNER JOIN evento e ON r.Id_Evento = e.Id
INNER JOIN cliente c ON r.Id_Cliente = c.Id;

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Descripción de las Funciones:
-- - `calcular_total_personas_evento`: Calcula el total de personas registradas en un evento, basándose en la tabla de reservas.

-- Delimitador para definir el cuerpo de la función
DELIMITER //

-- Creación de la Función
CREATE FUNCTION `calcular_total_personas_evento` (evento_id INT) RETURNS INT DETERMINISTIC
BEGIN
    DECLARE total_personas INT;
    SELECT SUM(Num_Personas) INTO total_personas FROM reserva WHERE Id_Evento = evento_id;
    RETURN total_personas;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;
-- Descripción de los Stored Procedures:
-- - `actualizar_estado_reserva`: Actualiza el estado de una reserva dado su ID y el nuevo estado proporcionado como parámetro. Interactúa con la tabla de reservas.

-- Delimitador para definir el cuerpo del procedimiento almacenado
DELIMITER //

-- Creación de Stored Procedures
CREATE PROCEDURE IF NOT EXISTS `actualizar_estado_reserva` (reserva_id INT, nuevo_estado VARCHAR(20))
BEGIN
    UPDATE reserva SET Estado_reserva = nuevo_estado WHERE Id = reserva_id;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;
