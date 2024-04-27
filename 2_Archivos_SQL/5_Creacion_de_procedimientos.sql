USE `sistema de reservas y gestion de eventos`;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE PROCEDURE CrearReserva(
    IN cliente_id INT,
    IN evento_id INT,
    IN fecha_de_reserva DATETIME,
    IN num_personas INT
)
BEGIN
    -- Insertar una nueva reserva
    INSERT INTO reserva (evento_id, cliente_id, fecha_de_reserva, num_personas, estado_reserva)
    VALUES (evento_id, cliente_id, fecha_de_reserva, num_personas, 'pendiente');
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE PROCEDURE CalcularTotalPersonasEvento(
    IN evento_id INT,
    OUT total_personas INT
)
BEGIN
    -- Variable para almacenar el total de personas
    DECLARE total INT;

    -- Calcular el total de personas para el evento dado
    SELECT SUM(num_personas) INTO total
    FROM reserva
    WHERE evento_id = evento_id;

    -- Si no hay reservas para el evento, establecer el total en cero
    IF total IS NULL THEN
        SET total_personas = 0;
    ELSE
        SET total_personas = total;
    END IF;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE PROCEDURE CancelarReservaProcedure(
    IN reserva_id INT,
    OUT success BOOLEAN
)
BEGIN
    -- Inicializar la variable de éxito como falso por defecto
    SET success = FALSE;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE PROCEDURE ActualizarEstadoReserva(
    IN reserva_id INT,
    IN nuevo_estado VARCHAR(20)
)
BEGIN
    -- Actualizar el estado de la reserva
    UPDATE reserva SET estado_reserva = nuevo_estado WHERE id = reserva_id;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE PROCEDURE GenerarFactura(
    IN reserva_id INT,
    OUT factura_id INT
)
BEGIN
    -- Insertar una nueva factura para la reserva
    INSERT INTO factura (reserva_id, fecha_emision)
    VALUES (reserva_id, NOW());

    -- Obtener el ID de la factura recién generada
    SET factura_id = LAST_INSERT_ID();
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento almacenado
DELIMITER //

CREATE PROCEDURE GenerarFacturaProcedure(
    IN reserva_id INT,
    OUT factura_id INT
)
BEGIN
    -- Declarar variables para almacenar información de la reserva
    DECLARE cliente_id INT;
    DECLARE evento_id INT;
    DECLARE num_personas INT;

    -- Obtener información de la reserva
    SELECT cliente_id, evento_id, num_personas
    INTO cliente_id, evento_id, num_personas
    FROM reserva
    WHERE id = reserva_id;

    -- Realizar los cálculos necesarios para generar la factura
    INSERT INTO factura (reserva_id, total)
    VALUES (reserva_id, 0); -- Inicialmente el total es 0
    
    -- Obtener el ID de la factura generada
    SET factura_id = LAST_INSERT_ID();
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento almacenado
DELIMITER //

-- Procedimiento para gestionar el inventario y los recursos
CREATE PROCEDURE gestionar_inventario_recursos(
    IN p_recurso_id INT,
    IN p_cantidad INT
)
BEGIN
    DECLARE cantidad_actual INT;

    -- Obtener la cantidad actual del recurso en el inventario
SELECT 
    cantidad_disponible
INTO cantidad_actual FROM
    inventario_recursos
WHERE
    recurso_id = p_recurso_id;

    -- Verificar si el recurso existe en el inventario
    IF cantidad_actual IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El recurso especificado no existe en el inventario.';
    ELSE
        -- Actualizar la cantidad disponible del recurso
        UPDATE inventario_recursos
        SET cantidad_disponible = cantidad_actual + p_cantidad
        WHERE recurso_id = p_recurso_id;
    END IF;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento almacenado
DELIMITER //

CREATE PROCEDURE VerificarDisponibilidadRecursos(
    IN nombre_recurso VARCHAR(255),
    IN cantidad_requerida INT,
    OUT disponible BOOLEAN
)
BEGIN
    -- Verificar si hay suficiente cantidad disponible
    SELECT cantidad_disponible >= cantidad_requerida INTO disponible
    FROM inventario_recursos
    WHERE nombre_recurso = nombre_recurso;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento almacenado
DELIMITER //

CREATE PROCEDURE RegistrarEntradaSalidaRecursos(
    IN nombre_recurso VARCHAR(255),
    IN cantidad INT,
    IN tipo_operacion VARCHAR(10) -- 'entrada' o 'salida'
)
BEGIN
    IF tipo_operacion = 'entrada' THEN
        -- Registrar entrada de recursos
        UPDATE inventario_recursos
        SET cantidad_disponible = cantidad_disponible + cantidad
        WHERE nombre_recurso = nombre_recurso;
    ELSEIF tipo_operacion = 'salida' THEN
        -- Registrar salida de recursos
        UPDATE inventario_recursos
        SET cantidad_disponible = cantidad_disponible - cantidad
        WHERE nombre_recurso = nombre_recurso;
    END IF;
END//

SELECT ROUTINE_NAME 
FROM information_schema.routines 
WHERE ROUTINE_TYPE = 'PROCEDURE' AND ROUTINE_SCHEMA = 'sistema de reservas y gestion de eventos';

-- Restaurar el delimitador predeterminado
DELIMITER ;


