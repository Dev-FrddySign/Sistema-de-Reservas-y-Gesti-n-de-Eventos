CREATE DATABASE `sistema de reservas y gestion de eventos`;

USE `sistema de reservas y gestion de eventos`;

-- Cliente
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    telefono VARCHAR(15)
);

-- Temática
CREATE TABLE tematica (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Evento
CREATE TABLE evento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    fecha DATE,
    hora TIME,
    lugar VARCHAR(100),
    tematica_id INT,
    FOREIGN KEY (tematica_id) REFERENCES tematica(id)
);

-- Reserva
CREATE TABLE reserva (
    id INT AUTO_INCREMENT PRIMARY KEY,
    evento_id INT,
    cliente_id INT,
    fecha_de_reserva DATETIME,
    num_personas INT,
    estado_reserva VARCHAR(20),
    INDEX (evento_id),
    INDEX (cliente_id),
    FOREIGN KEY (evento_id) REFERENCES evento(id),
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

-- Asiento
CREATE TABLE asiento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    num_asiento INT,
    evento_id INT,
    estado VARCHAR(20),
    INDEX (evento_id),
    FOREIGN KEY (evento_id) REFERENCES evento(id)
);

-- Zona de asiento
CREATE TABLE zona_asiento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    evento_id INT,
    INDEX (evento_id),
    FOREIGN KEY (evento_id) REFERENCES evento(id)
);

-- Creación de la tabla para gestionar el inventario y los recursos
CREATE TABLE recursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cantidad_disponible INT NOT NULL
);

