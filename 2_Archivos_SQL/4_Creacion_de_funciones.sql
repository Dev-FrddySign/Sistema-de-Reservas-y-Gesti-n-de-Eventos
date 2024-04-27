USE `sistema de reservas y gestion de eventos`;

-- Delimitador para definir el cuerpo de la función
DELIMITER //

CREATE FUNCTION CrearReserva(
    cliente_id INT,
    evento_id INT,
    fecha_de_reserva DATETIME,
    num_personas INT
) RETURNS INT
NO SQL
BEGIN
    DECLARE reserva_id INT;

    -- Lógica para crear la reserva y obtener su ID
    INSERT INTO reserva (cliente_id, evento_id, fecha_de_reserva, num_personas, estado_reserva)
    VALUES (cliente_id, evento_id, fecha_de_reserva, num_personas, 'Pendiente');

    -- Obtener el ID de la última reserva insertada
    SET reserva_id = LAST_INSERT_ID();

    RETURN reserva_id;
END//

-- Delimitador para definir el cuerpo de la función
DELIMITER ;

-- Delimitador para definir el cuerpo de la función
DELIMITER //

CREATE FUNCTION CancelarReserva(
    reserva_id INT
) RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE success BOOLEAN;
    CALL CancelarReservaProcedure(reserva_id, success);
    RETURN success;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo de la función
DELIMITER //

CREATE FUNCTION ActualizarEstadoReserva(
    reserva_id INT,
    nuevo_estado VARCHAR(20)
) RETURNS BOOLEAN
NO SQL
BEGIN
    DECLARE success BOOLEAN;
    CALL ActualizarEstadoReservaProcedure(reserva_id, nuevo_estado, success);
    RETURN success;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo de la función
DELIMITER //

CREATE FUNCTION GenerarFactura(
    reserva_id INT
) RETURNS INT
NO SQL
BEGIN
    DECLARE factura_id INT;
    CALL GenerarFacturaProcedure(reserva_id, factura_id);
    RETURN factura_id;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo de la función
DELIMITER //

CREATE FUNCTION GestionarInventarioRecursos(
    nombre_recurso VARCHAR(255),
    cantidad INT,
    accion VARCHAR(10) -- 'agregar' o 'eliminar'
) RETURNS INT
NO SQL
BEGIN
    DECLARE success BOOLEAN;
    CALL GestionarInventarioRecursosProcedure(nombre_recurso, cantidad, accion, success);
    RETURN success;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo de la función
DELIMITER //

CREATE FUNCTION RegistrarEntradaSalidaRecursos(
    nombre_recurso VARCHAR(255),
    cantidad INT,
    tipo_operacion VARCHAR(10) -- 'entrada' o 'salida'
) RETURNS INT
NO SQL
BEGIN
    DECLARE success BOOLEAN;
    CALL RegistrarEntradaSalidaRecursosProcedure(nombre_recurso, cantidad, tipo_operacion, success);
    RETURN success;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo de la función
DELIMITER //

-- Creación de la función calcular_total_personas_evento
CREATE FUNCTION calcular_total_personas_evento(evento_id INT) RETURNS INT UNSIGNED DETERMINISTIC
BEGIN
    DECLARE total_personas INT UNSIGNED;
    SELECT SUM(num_personas) INTO total_personas FROM reserva WHERE evento_id = evento_id;
    RETURN total_personas;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo de la función
DELIMITER //

-- Creación de la función para gestionar el inventario y los recursos
CREATE FUNCTION verificar_disponibilidad_recurso(
    p_recurso_id INT,
    p_cantidad_requerida INT
) RETURNS BOOLEAN
NOT DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE cantidad_disponible INT;

    -- Obtener la cantidad disponible del recurso en el inventario
    SELECT cantidad_disponible INTO cantidad_disponible
    FROM inventario_recursos
    WHERE recurso_id = p_recurso_id;

    -- Verificar si hay suficiente cantidad disponible
    IF cantidad_disponible IS NULL OR cantidad_disponible < p_cantidad_requerida THEN
        RETURN FALSE; -- No hay suficiente cantidad disponible
    ELSE
        RETURN TRUE; -- Hay suficiente cantidad disponible
    END IF;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;