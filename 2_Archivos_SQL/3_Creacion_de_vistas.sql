USE `sistema de reservas y gestion de eventos`;

-- Vista para mostrar detalles de las reservas
CREATE VIEW vista_reservas_detalle AS
SELECT r.id AS reserva_id, e.nombre AS nombre_evento, c.nombre AS nombre_cliente, 
       r.fecha_de_reserva, r.num_personas, r.estado_reserva
FROM reserva r
INNER JOIN evento e ON r.evento_id = e.id
INNER JOIN cliente c ON r.cliente_id = c.id;

-- Vista para mostrar la disponibilidad de asientos por evento
CREATE VIEW vista_disponibilidad_asientos AS
SELECT e.nombre AS nombre_evento, COUNT(a.id) AS asientos_disponibles
FROM evento e
LEFT JOIN asiento a ON e.id = a.evento_id AND a.estado = 'Disponible'
GROUP BY e.nombre;

-- Vista para mostrar la cantidad de reservas por temática de evento
CREATE VIEW vista_reservas_por_tematica AS
SELECT t.nombre AS tematica, COUNT(r.id) AS cantidad_reservas
FROM reserva r
INNER JOIN evento e ON r.evento_id = e.id
INNER JOIN tematica t ON e.tematica_id = t.id
GROUP BY t.nombre;

-- Creación de la vista para gestionar el inventario y los recursos
CREATE VIEW vista_recursos AS 
SELECT r.id AS recursos_id, NULL AS nombre_recurso, r.cantidad_disponible 
FROM recursos r;

