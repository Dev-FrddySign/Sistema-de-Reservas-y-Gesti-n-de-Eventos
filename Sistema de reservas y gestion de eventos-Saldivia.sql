CREATE DATABASE `sistema de reservas y gestion de eventos`;

use `sistema de reservas y gestion de eventos`;

-- Tabla evento
CREATE TABLE `evento` (
  `Id` INT NOT NULL PRIMARY KEY,
  `Nombre` VARCHAR(255),
  `Fecha` DATE,
  `Hora` TIME,
  `Lugar` VARCHAR(255),
  `Tematica` VARCHAR(255)
);

-- Tabla cliente
CREATE TABLE `cliente` (
  `Id` INT NOT NULL PRIMARY KEY,
  `Nombre` VARCHAR(255),
  `Apellido` VARCHAR(255),
  `Email` VARCHAR(255),
  `Telefono` VARCHAR(20)
);

-- Tabla reserva
CREATE TABLE `reserva` (
  `Id` INT NOT NULL PRIMARY KEY,
  `Id_Evento` INT,
  `Id_Cliente` INT,
  `Fecha_de_reserva` DATE,
  `Num_Personas` INT,
  `Estado_reserva` VARCHAR(20),
  FOREIGN KEY (`Id_Evento`) REFERENCES `evento` (`Id`),
  FOREIGN KEY (`Id_Cliente`) REFERENCES `cliente` (`Id`)
);

-- Tabla asiento
CREATE TABLE `asiento` (
  `Id` INT NOT NULL PRIMARY KEY,
  `Num_Asiento` INT,
  `Id_Evento` INT,
  `Estado` VARCHAR(20),
  FOREIGN KEY (`Id_Evento`) REFERENCES `evento` (`Id`)
);
