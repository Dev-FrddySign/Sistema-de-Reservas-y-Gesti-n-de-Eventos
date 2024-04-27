USE `sistema de reservas y gestion de eventos`;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE TRIGGER cliente_insert_trigger
BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
END//
-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE TRIGGER reserva_validate_num_personas
BEFORE INSERT ON reserva
FOR EACH ROW
BEGIN
    IF NEW.num_personas <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El número de personas debe ser mayor que cero';
    END IF;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

DROP TRIGGER IF EXISTS actualizar_personas_por_tematica;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE TRIGGER actualizar_personas_por_tematica AFTER INSERT ON tematica
FOR EACH ROW
BEGIN
    DECLARE total_personas INT;
    
    -- Obtener el número total de personas para este evento
    SELECT IFNULL(SUM(num_personas), 0) INTO total_personas
    FROM personas_por_evento
    WHERE evento_id = NEW.id;
    
    -- Actualizar el número de personas por temática
    UPDATE personas_por_tematica pt
    JOIN evento e ON pt.tematica_id = e.tematica_id
    SET pt.num_personas = pt.num_personas + total_personas;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE TRIGGER gestionar_estado_asiento
AFTER INSERT ON asiento
FOR EACH ROW
BEGIN
    DECLARE total_personas INT;
    DECLARE total_asientos INT;
    
    -- Obtener el número total de personas que han reservado el evento
    SELECT SUM(num_personas) INTO total_personas
    FROM reserva
    WHERE evento_id = NEW.evento_id;
    
    -- Obtener el número total de asientos disponibles para el evento
    SELECT COUNT(*) INTO total_asientos
    FROM asiento
    WHERE evento_id = NEW.evento_id;
    
    -- Actualizar el estado de los asientos
    IF total_personas <= total_asientos THEN
        -- Si hay suficientes asientos disponibles, marcar los asientos como "Disponible"
        UPDATE asiento
        SET estado = 'Disponible'
        WHERE evento_id = NEW.evento_id;
    ELSE
        -- Si no hay suficientes asientos disponibles, marcar los asientos como "Reservado"
        UPDATE asiento
        SET estado = 'Reservado'
        WHERE evento_id = NEW.evento_id;
    END IF;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE TRIGGER validar_fecha_hora_lugar
BEFORE INSERT ON evento
FOR EACH ROW
BEGIN
    DECLARE fecha_actual DATE;
    DECLARE hora_actual TIME;
    
    -- Obtener la fecha y hora actuales
    SET fecha_actual = CURDATE();
    SET hora_actual = CURTIME();
    
    -- Validar la fecha, hora y lugar
    IF NEW.fecha < fecha_actual THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La fecha no puede ser anterior a la fecha actual.';
    END IF;
    
    IF NEW.fecha = fecha_actual AND NEW.hora < hora_actual THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La hora no puede ser anterior a la hora actual para el mismo día.';
    END IF;
    
    IF NEW.lugar IS NULL OR NEW.lugar = '' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El lugar no puede estar vacío.';
    END IF;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE TRIGGER validar_capacidad_zona_asiento
BEFORE INSERT ON zona_asiento
FOR EACH ROW
BEGIN
    DECLARE total_asientos INT;
    DECLARE capacidad_maxima INT;
    
    -- Obtener el número total de asientos en la zona de asiento
    SELECT COUNT(*) INTO total_asientos
    FROM asiento
    WHERE zona_asiento_id = NEW.id;
    
    -- Obtener la capacidad máxima permitida para la zona de asiento
    SELECT capacidad_maxima INTO capacidad_maxima
    FROM capacidad_zona_asiento
    WHERE zona_asiento_id = NEW.id;
    
    -- Validar la capacidad de la zona de asiento
    IF total_asientos >= capacidad_maxima THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La capacidad de la zona de asiento ha sido alcanzada.';
    END IF;
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;

-- Delimitador para definir el cuerpo del procedimiento
DELIMITER //

CREATE TRIGGER registro_cambios_recursos
AFTER UPDATE ON recursos
FOR EACH ROW
BEGIN
    INSERT INTO historial_cambios_recursos (recurso_id, cantidad_anterior, cantidad_nueva, fecha_cambio)
    VALUES (OLD.id, OLD.cantidad_disponible, NEW.cantidad_disponible, NOW());
END//

-- Restaurar el delimitador predeterminado
DELIMITER ;