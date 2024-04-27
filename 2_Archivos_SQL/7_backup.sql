-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema de reservas y gestion de eventos
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asiento`
--

DROP TABLE IF EXISTS `asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `num_asiento` int DEFAULT NULL,
  `evento_id` int DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evento_id` (`evento_id`),
  CONSTRAINT `asiento_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiento`
--

LOCK TABLES `asiento` WRITE;
/*!40000 ALTER TABLE `asiento` DISABLE KEYS */;
INSERT INTO `asiento` VALUES (85,101,16,'Disponible'),(86,102,17,'Disponible'),(87,201,18,'Disponible'),(88,202,19,'Ocupado'),(89,301,20,'Disponible'),(90,302,21,'Ocupado'),(91,401,22,'Ocupado'),(92,402,23,'Ocupado'),(93,501,24,'Ocupado'),(94,502,25,'Ocupado'),(95,601,26,'Ocupado'),(96,602,27,'Ocupado'),(97,701,28,'Ocupado'),(98,702,29,'Ocupado'),(99,801,30,'Ocupado'),(100,901,31,'Ocupado'),(101,1001,32,'Ocupado'),(102,1002,33,'Ocupado'),(103,1101,34,'Ocupado'),(104,1102,35,'Ocupado'),(105,1201,36,'Ocupado'),(106,1202,37,'Ocupado'),(107,1301,38,'Ocupado'),(108,1302,39,'Ocupado'),(109,1401,40,'Ocupado'),(110,1402,41,'Ocupado'),(111,1501,42,'Ocupado'),(112,1502,43,'Ocupado'),(113,101,16,'Disponible'),(114,102,17,'Disponible'),(115,201,18,'Disponible'),(116,202,19,'Ocupado'),(117,301,20,'Disponible'),(118,302,21,'Ocupado'),(119,401,22,'Ocupado'),(120,402,23,'Ocupado'),(121,501,24,'Ocupado'),(122,502,25,'Ocupado'),(123,601,26,'Ocupado'),(124,602,27,'Ocupado'),(125,701,28,'Ocupado'),(126,702,29,'Ocupado'),(127,801,30,'Ocupado'),(128,901,31,'Ocupado'),(129,1001,32,'Ocupado'),(130,1002,33,'Ocupado'),(131,1101,34,'Ocupado'),(132,1102,35,'Ocupado'),(133,1201,36,'Ocupado'),(134,1202,37,'Ocupado'),(135,1301,38,'Ocupado'),(136,1302,39,'Ocupado'),(137,1401,40,'Ocupado'),(138,1402,41,'Ocupado'),(139,1501,42,'Ocupado'),(140,1502,43,'Ocupado'),(141,101,16,'Disponible'),(142,102,17,'Disponible'),(143,201,18,'Disponible'),(144,202,19,'Ocupado'),(145,301,20,'Disponible'),(146,302,21,'Ocupado'),(147,401,22,'Ocupado'),(148,402,23,'Ocupado'),(149,501,24,'Ocupado'),(150,502,25,'Ocupado'),(151,601,26,'Ocupado'),(152,602,27,'Ocupado'),(153,701,28,'Ocupado'),(154,702,29,'Ocupado'),(155,801,30,'Ocupado'),(156,901,31,'Ocupado'),(157,1001,32,'Ocupado'),(158,1002,33,'Ocupado'),(159,1101,34,'Ocupado'),(160,1102,35,'Ocupado'),(161,1201,36,'Ocupado'),(162,1202,37,'Ocupado'),(163,1301,38,'Ocupado'),(164,1302,39,'Ocupado'),(165,1401,40,'Ocupado'),(166,1402,41,'Ocupado'),(167,1501,42,'Ocupado'),(168,1502,43,'Ocupado'),(169,101,16,'Disponible'),(170,102,17,'Disponible'),(171,201,18,'Disponible'),(172,202,19,'Ocupado'),(173,301,20,'Disponible'),(174,302,21,'Ocupado'),(175,401,22,'Ocupado'),(176,402,23,'Ocupado'),(177,501,24,'Ocupado'),(178,502,25,'Ocupado'),(179,601,26,'Ocupado'),(180,602,27,'Ocupado'),(181,701,28,'Ocupado'),(182,702,29,'Ocupado'),(183,801,30,'Ocupado'),(184,901,31,'Ocupado'),(185,1001,32,'Ocupado'),(186,1002,33,'Ocupado'),(187,1101,34,'Ocupado'),(188,1102,35,'Ocupado'),(189,1201,36,'Ocupado'),(190,1202,37,'Ocupado'),(191,1301,38,'Ocupado'),(192,1302,39,'Ocupado'),(193,1401,40,'Ocupado'),(194,1402,41,'Ocupado'),(195,1501,42,'Ocupado'),(196,1502,43,'Ocupado');
/*!40000 ALTER TABLE `asiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `gestionar_estado_asiento` AFTER INSERT ON `asiento` FOR EACH ROW BEGIN
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
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan','Perez','juan@hotmail.com','0945678090'),(2,'Felipe','Lopez','felipe_lopez@gmail.com','0987654321'),(3,'Juan','Martinez','juan.martinez@yahoo.com','0987654321'),(4,'Aristides','Aristiguieta','aristides.aristiguieta@gmail.com','0987654321'),(5,'Edmundo','Pulgar','edmundo.pulgar@hotmail.com','0987654321'),(6,'Freddy','Jimenez','freddy.jimenez@gmail.com','0987654321'),(7,'Daniel','Jimenez','daniel.jimenez@gmail.com','0987654321'),(8,'Josefina','Mata','josefina.mata@hotmail.com','0987654321'),(9,'Altagracia','Ugarte','altagracia.ugarte@outlook.com','0987654321'),(10,'Luis','Altamirano','luis.altamirano@outlook.com','0987654321'),(11,'Carlos','Voce','carlos.voce@outlook.com','0987654321'),(12,'Jose','Solorzano','jose.solorzano@gmail.com','0987654321'),(13,'Humberto','Blasquez','humberto.blasquez@gmail.com','0987654321'),(14,'Paola','Vasquez','paola.vasquez@gmail.com','0987654321'),(15,'Alejandra','Lipi','alejandra.lipi@outlook.com','0987654321'),(16,'Juan','Perez','juan@hotmail.com','0945678090'),(17,'Felipe','Lopez','felipe_lopez@gmail.com','0987654321'),(18,'Juan','Martinez','juan.martinez@yahoo.com','0987654321'),(19,'Aristides','Aristiguieta','aristides.aristiguieta@gmail.com','0987654321'),(20,'Edmundo','Pulgar','edmundo.pulgar@hotmail.com','0987654321'),(21,'Freddy','Jimenez','freddy.jimenez@gmail.com','0987654321'),(22,'Daniel','Jimenez','daniel.jimenez@gmail.com','0987654321'),(23,'Josefina','Mata','josefina.mata@hotmail.com','0987654321'),(24,'Altagracia','Ugarte','altagracia.ugarte@outlook.com','0987654321'),(25,'Luis','Altamirano','luis.altamirano@outlook.com','0987654321'),(26,'Carlos','Voce','carlos.voce@outlook.com','0987654321'),(27,'Jose','Solorzano','jose.solorzano@gmail.com','0987654321'),(28,'Humberto','Blasquez','humberto.blasquez@gmail.com','0987654321'),(29,'Paola','Vasquez','paola.vasquez@gmail.com','0987654321'),(30,'Alejandra','Lipi','alejandra.lipi@outlook.com','0987654321'),(31,'Juan','Perez','juan@hotmail.com','0945678090'),(32,'Felipe','Lopez','felipe_lopez@gmail.com','0987654321'),(33,'Juan','Martinez','juan.martinez@yahoo.com','0987654321'),(34,'Aristides','Aristiguieta','aristides.aristiguieta@gmail.com','0987654321'),(35,'Edmundo','Pulgar','edmundo.pulgar@hotmail.com','0987654321'),(36,'Freddy','Jimenez','freddy.jimenez@gmail.com','0987654321'),(37,'Daniel','Jimenez','daniel.jimenez@gmail.com','0987654321'),(38,'Josefina','Mata','josefina.mata@hotmail.com','0987654321'),(39,'Altagracia','Ugarte','altagracia.ugarte@outlook.com','0987654321'),(40,'Luis','Altamirano','luis.altamirano@outlook.com','0987654321'),(41,'Carlos','Voce','carlos.voce@outlook.com','0987654321'),(42,'Jose','Solorzano','jose.solorzano@gmail.com','0987654321'),(43,'Humberto','Blasquez','humberto.blasquez@gmail.com','0987654321'),(44,'Paola','Vasquez','paola.vasquez@gmail.com','0987654321'),(45,'Alejandra','Lipi','alejandra.lipi@outlook.com','0987654321'),(46,'Juan','Perez','juan@hotmail.com','0945678090'),(47,'Felipe','Lopez','felipe_lopez@gmail.com','0987654321'),(48,'Juan','Martinez','juan.martinez@yahoo.com','0987654321'),(49,'Aristides','Aristiguieta','aristides.aristiguieta@gmail.com','0987654321'),(50,'Edmundo','Pulgar','edmundo.pulgar@hotmail.com','0987654321'),(51,'Freddy','Jimenez','freddy.jimenez@gmail.com','0987654321'),(52,'Daniel','Jimenez','daniel.jimenez@gmail.com','0987654321'),(53,'Josefina','Mata','josefina.mata@hotmail.com','0987654321'),(54,'Altagracia','Ugarte','altagracia.ugarte@outlook.com','0987654321'),(55,'Luis','Altamirano','luis.altamirano@outlook.com','0987654321'),(56,'Carlos','Voce','carlos.voce@outlook.com','0987654321'),(57,'Jose','Solorzano','jose.solorzano@gmail.com','0987654321'),(58,'Humberto','Blasquez','humberto.blasquez@gmail.com','0987654321'),(59,'Paola','Vasquez','paola.vasquez@gmail.com','0987654321'),(60,'Alejandra','Lipi','alejandra.lipi@outlook.com','0987654321'),(61,'Juan','Perez','juan@hotmail.com','0945678090'),(62,'Felipe','Lopez','felipe_lopez@gmail.com','0987654321'),(63,'Juan','Martinez','juan.martinez@yahoo.com','0987654321'),(64,'Aristides','Aristiguieta','aristides.aristiguieta@gmail.com','0987654321'),(65,'Edmundo','Pulgar','edmundo.pulgar@hotmail.com','0987654321'),(66,'Freddy','Jimenez','freddy.jimenez@gmail.com','0987654321'),(67,'Daniel','Jimenez','daniel.jimenez@gmail.com','0987654321'),(68,'Josefina','Mata','josefina.mata@hotmail.com','0987654321'),(69,'Altagracia','Ugarte','altagracia.ugarte@outlook.com','0987654321'),(70,'Luis','Altamirano','luis.altamirano@outlook.com','0987654321'),(71,'Carlos','Voce','carlos.voce@outlook.com','0987654321'),(72,'Jose','Solorzano','jose.solorzano@gmail.com','0987654321'),(73,'Humberto','Blasquez','humberto.blasquez@gmail.com','0987654321'),(74,'Paola','Vasquez','paola.vasquez@gmail.com','0987654321'),(75,'Alejandra','Lipi','alejandra.lipi@outlook.com','0987654321'),(76,'Juan','Perez','juan@hotmail.com','0945678090'),(77,'Felipe','Lopez','felipe_lopez@gmail.com','0987654321'),(78,'Juan','Martinez','juan.martinez@yahoo.com','0987654321'),(79,'Aristides','Aristiguieta','aristides.aristiguieta@gmail.com','0987654321'),(80,'Edmundo','Pulgar','edmundo.pulgar@hotmail.com','0987654321'),(81,'Freddy','Jimenez','freddy.jimenez@gmail.com','0987654321'),(82,'Daniel','Jimenez','daniel.jimenez@gmail.com','0987654321'),(83,'Josefina','Mata','josefina.mata@hotmail.com','0987654321'),(84,'Altagracia','Ugarte','altagracia.ugarte@outlook.com','0987654321'),(85,'Luis','Altamirano','luis.altamirano@outlook.com','0987654321'),(86,'Carlos','Voce','carlos.voce@outlook.com','0987654321'),(87,'Jose','Solorzano','jose.solorzano@gmail.com','0987654321'),(88,'Humberto','Blasquez','humberto.blasquez@gmail.com','0987654321'),(89,'Paola','Vasquez','paola.vasquez@gmail.com','0987654321'),(90,'Alejandra','Lipi','alejandra.lipi@outlook.com','0987654321'),(95,'benito','silba','benitosilba@gmail.com','936556789');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cliente_insert_trigger` BEFORE INSERT ON `cliente` FOR EACH ROW BEGIN
    -- No es necesario hacer ninguna acción, el trigger se encarga de insertar automáticamente.
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `lugar` varchar(100) DEFAULT NULL,
  `tematica_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tematica_id` (`tematica_id`),
  CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`tematica_id`) REFERENCES `tematica` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (16,'Concierto de Rock','2024-05-15','20:00:00','Estadio Nacional',1),(17,'Festival de Jazz','2024-06-20','18:00:00','Parque Central',2),(18,'Conferencia de Tecnología','2024-07-10','09:00:00','Centro de Convenciones',3),(19,'Festival de Rock','2024-07-15','09:00:00','Parque Central',2),(20,'Festival de Alternativo','2024-07-18','09:00:00','Parque Central',2),(21,'Concierto de Retro 60-80','2024-07-22','09:00:00','Estadio Nacional',1),(22,'Conferencia de Astronomia','2024-07-23','09:00:00','Centro de Convenciones',3),(23,'Festival de Reggaetón','2024-07-24','09:00:00','Parque Central',2),(24,'Festival de folklore','2024-07-25','09:00:00','Parque Central',2),(25,'Conferencia de Tecnología','2024-07-27','09:00:00','Centro de Convenciones',3),(26,'Conferencia de Tecnología','2024-07-31','09:00:00','Centro de Convenciones',3),(27,'concierto de Jazz','2024-08-03','09:00:00','Estadio Nacional',1),(28,'Festival de Electronica','2024-08-05','09:00:00','Parque Central',2),(29,'Conferencia de Programacion','2024-08-07','09:00:00','Centro de Convenciones',3),(30,'Conferencia de Evolucion de la tecnologia','2024-08-10','09:00:00','Centro de Convenciones',3),(31,'Concierto de Rock','2024-05-15','20:00:00','Estadio Nacional',1),(32,'Festival de Jazz','2024-06-20','18:00:00','Parque Central',2),(33,'Conferencia de Tecnología','2024-07-10','09:00:00','Centro de Convenciones',3),(34,'Festival de Rock','2024-07-15','09:00:00','Parque Central',2),(35,'Festival de Alternativo','2024-07-18','09:00:00','Parque Central',2),(36,'Concierto de Retro 60-80','2024-07-22','09:00:00','Estadio Nacional',1),(37,'Conferencia de Astronomia','2024-07-23','09:00:00','Centro de Convenciones',3),(38,'Festival de Reggaetón','2024-07-24','09:00:00','Parque Central',2),(39,'Festival de folklore','2024-07-25','09:00:00','Parque Central',2),(40,'Conferencia de Tecnología','2024-07-27','09:00:00','Centro de Convenciones',3),(41,'Conferencia de Tecnología','2024-07-31','09:00:00','Centro de Convenciones',3),(42,'concierto de Jazz','2024-08-03','09:00:00','Estadio Nacional',1),(43,'Festival de Electronica','2024-08-05','09:00:00','Parque Central',2),(44,'Conferencia de Programacion','2024-08-07','09:00:00','Centro de Convenciones',3),(45,'Conferencia de Evolucion de la tecnologia','2024-08-10','09:00:00','Centro de Convenciones',3),(46,'Concierto de Rock','2024-05-15','20:00:00','Estadio Nacional',1),(47,'Festival de Jazz','2024-06-20','18:00:00','Parque Central',2),(48,'Conferencia de Tecnología','2024-07-10','09:00:00','Centro de Convenciones',3),(49,'Festival de Rock','2024-07-15','09:00:00','Parque Central',2),(50,'Festival de Alternativo','2024-07-18','09:00:00','Parque Central',2),(51,'Concierto de Retro 60-80','2024-07-22','09:00:00','Estadio Nacional',1),(52,'Conferencia de Astronomia','2024-07-23','09:00:00','Centro de Convenciones',3),(53,'Festival de Reggaetón','2024-07-24','09:00:00','Parque Central',2),(54,'Festival de folklore','2024-07-25','09:00:00','Parque Central',2),(55,'Conferencia de Tecnología','2024-07-27','09:00:00','Centro de Convenciones',3),(56,'Conferencia de Tecnología','2024-07-31','09:00:00','Centro de Convenciones',3),(57,'concierto de Jazz','2024-08-03','09:00:00','Estadio Nacional',1),(58,'Festival de Electronica','2024-08-05','09:00:00','Parque Central',2),(59,'Conferencia de Programacion','2024-08-07','09:00:00','Centro de Convenciones',3),(60,'Conferencia de Evolucion de la tecnologia','2024-08-10','09:00:00','Centro de Convenciones',3),(61,'Concierto de Rock','2024-05-15','20:00:00','Estadio Nacional',1),(62,'Festival de Jazz','2024-06-20','18:00:00','Parque Central',2),(63,'Conferencia de Tecnología','2024-07-10','09:00:00','Centro de Convenciones',3),(64,'Festival de Rock','2024-07-15','09:00:00','Parque Central',2),(65,'Festival de Alternativo','2024-07-18','09:00:00','Parque Central',2),(66,'Concierto de Retro 60-80','2024-07-22','09:00:00','Estadio Nacional',1),(67,'Conferencia de Astronomia','2024-07-23','09:00:00','Centro de Convenciones',3),(68,'Festival de Reggaetón','2024-07-24','09:00:00','Parque Central',2),(69,'Festival de folklore','2024-07-25','09:00:00','Parque Central',2),(70,'Conferencia de Tecnología','2024-07-27','09:00:00','Centro de Convenciones',3),(71,'Conferencia de Tecnología','2024-07-31','09:00:00','Centro de Convenciones',3),(72,'concierto de Jazz','2024-08-03','09:00:00','Estadio Nacional',1),(73,'Festival de Electronica','2024-08-05','09:00:00','Parque Central',2),(74,'Conferencia de Programacion','2024-08-07','09:00:00','Centro de Convenciones',3),(75,'Conferencia de Evolucion de la tecnologia','2024-08-10','09:00:00','Centro de Convenciones',3),(76,'Concierto de Rock','2024-05-15','20:00:00','Estadio Nacional',1),(77,'Festival de Jazz','2024-06-20','18:00:00','Parque Central',2),(78,'Conferencia de Tecnología','2024-07-10','09:00:00','Centro de Convenciones',3),(79,'Festival de Rock','2024-07-15','09:00:00','Parque Central',2),(80,'Festival de Alternativo','2024-07-18','09:00:00','Parque Central',2),(81,'Concierto de Retro 60-80','2024-07-22','09:00:00','Estadio Nacional',1),(82,'Conferencia de Astronomia','2024-07-23','09:00:00','Centro de Convenciones',3),(83,'Festival de Reggaetón','2024-07-24','09:00:00','Parque Central',2),(84,'Festival de folklore','2024-07-25','09:00:00','Parque Central',2),(85,'Conferencia de Tecnología','2024-07-27','09:00:00','Centro de Convenciones',3),(86,'Conferencia de Tecnología','2024-07-31','09:00:00','Centro de Convenciones',3),(87,'concierto de Jazz','2024-08-03','09:00:00','Estadio Nacional',1),(88,'Festival de Electronica','2024-08-05','09:00:00','Parque Central',2),(89,'Conferencia de Programacion','2024-08-07','09:00:00','Centro de Convenciones',3),(90,'Conferencia de Evolucion de la tecnologia','2024-08-10','09:00:00','Centro de Convenciones',3);
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validar_fecha_hora_lugar` BEFORE INSERT ON `evento` FOR EACH ROW BEGIN
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
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recursos`
--

DROP TABLE IF EXISTS `recursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recursos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cantidad_disponible` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recursos`
--

LOCK TABLES `recursos` WRITE;
/*!40000 ALTER TABLE `recursos` DISABLE KEYS */;
INSERT INTO `recursos` VALUES (1,100),(2,50),(3,200),(4,80),(5,10),(6,60),(7,20),(8,2),(9,30),(10,20);
/*!40000 ALTER TABLE `recursos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `registro_cambios_recursos` AFTER UPDATE ON `recursos` FOR EACH ROW BEGIN
    INSERT INTO historial_cambios_recursos (recurso_id, cantidad_anterior, cantidad_nueva, fecha_cambio)
    VALUES (OLD.id, OLD.cantidad_disponible, NEW.cantidad_disponible, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `id` int NOT NULL AUTO_INCREMENT,
  `evento_id` int DEFAULT NULL,
  `cliente_id` int DEFAULT NULL,
  `fecha_de_reserva` datetime DEFAULT NULL,
  `num_personas` int DEFAULT NULL,
  `estado_reserva` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_evento_id` (`evento_id`),
  KEY `idx_cliente_id` (`cliente_id`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `evento` (`id`),
  CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (46,16,16,'2024-05-10 10:00:00',2,'Confirmada'),(47,17,17,'2024-06-10 15:00:00',3,'Pendiente'),(48,18,18,'2024-07-01 09:30:00',1,'Cancelada'),(49,19,19,'2024-07-01 09:30:00',1,'Confirmada'),(50,20,20,'2024-07-01 09:30:00',1,'Pendiente'),(51,21,21,'2024-07-01 09:30:00',1,'Confirmada'),(52,22,22,'2024-07-01 09:30:00',1,'Pendiente'),(53,23,23,'2024-07-01 09:30:00',1,'Cancelada'),(54,24,24,'2024-07-01 09:30:00',1,'Confirmada'),(55,25,25,'2024-07-01 09:30:00',1,'Confirmada'),(56,26,26,'2024-07-01 09:30:00',1,'Pendiente'),(57,27,27,'2024-07-01 09:30:00',1,'Confirmada'),(58,28,28,'2024-07-01 09:30:00',1,'Pendiente'),(59,29,29,'2024-07-01 09:30:00',1,'Confirmada'),(60,30,30,'2024-07-01 09:30:00',1,'Pendiente'),(61,16,16,'2024-05-10 10:00:00',2,'Confirmada'),(62,17,17,'2024-06-10 15:00:00',3,'Pendiente'),(63,18,18,'2024-07-01 09:30:00',1,'Cancelada'),(64,19,19,'2024-07-01 09:30:00',1,'Confirmada'),(65,20,20,'2024-07-01 09:30:00',1,'Pendiente'),(66,21,21,'2024-07-01 09:30:00',1,'Confirmada'),(67,22,22,'2024-07-01 09:30:00',1,'Pendiente'),(68,23,23,'2024-07-01 09:30:00',1,'Cancelada'),(69,24,24,'2024-07-01 09:30:00',1,'Confirmada'),(70,25,25,'2024-07-01 09:30:00',1,'Confirmada'),(71,26,26,'2024-07-01 09:30:00',1,'Pendiente'),(72,27,27,'2024-07-01 09:30:00',1,'Confirmada'),(73,28,28,'2024-07-01 09:30:00',1,'Pendiente'),(74,29,29,'2024-07-01 09:30:00',1,'Confirmada'),(75,30,30,'2024-07-01 09:30:00',1,'Pendiente'),(76,16,16,'2024-05-10 10:00:00',2,'Confirmada'),(77,17,17,'2024-06-10 15:00:00',3,'Pendiente'),(78,18,18,'2024-07-01 09:30:00',1,'Cancelada'),(79,19,19,'2024-07-01 09:30:00',1,'Confirmada'),(80,20,20,'2024-07-01 09:30:00',1,'Pendiente'),(81,21,21,'2024-07-01 09:30:00',1,'Confirmada'),(82,22,22,'2024-07-01 09:30:00',1,'Pendiente'),(83,23,23,'2024-07-01 09:30:00',1,'Cancelada'),(84,24,24,'2024-07-01 09:30:00',1,'Confirmada'),(85,25,25,'2024-07-01 09:30:00',1,'Confirmada'),(86,26,26,'2024-07-01 09:30:00',1,'Pendiente'),(87,27,27,'2024-07-01 09:30:00',1,'Confirmada'),(88,28,28,'2024-07-01 09:30:00',1,'Pendiente'),(89,29,29,'2024-07-01 09:30:00',1,'Confirmada'),(90,30,30,'2024-07-01 09:30:00',1,'Pendiente'),(91,16,16,'2024-05-10 10:00:00',2,'Confirmada'),(92,17,17,'2024-06-10 15:00:00',3,'Pendiente'),(93,18,18,'2024-07-01 09:30:00',1,'Cancelada'),(94,19,19,'2024-07-01 09:30:00',1,'Confirmada'),(95,20,20,'2024-07-01 09:30:00',1,'Pendiente'),(96,21,21,'2024-07-01 09:30:00',1,'Confirmada'),(97,22,22,'2024-07-01 09:30:00',1,'Pendiente'),(98,23,23,'2024-07-01 09:30:00',1,'Cancelada'),(99,24,24,'2024-07-01 09:30:00',1,'Confirmada'),(100,25,25,'2024-07-01 09:30:00',1,'Confirmada'),(101,26,26,'2024-07-01 09:30:00',1,'Pendiente'),(102,27,27,'2024-07-01 09:30:00',1,'Confirmada'),(103,28,28,'2024-07-01 09:30:00',1,'Pendiente'),(104,29,29,'2024-07-01 09:30:00',1,'Confirmada'),(105,30,30,'2024-07-01 09:30:00',1,'Pendiente'),(109,NULL,NULL,NULL,NULL,'Pendiente'),(110,NULL,NULL,NULL,NULL,'Pendiente'),(111,NULL,NULL,NULL,NULL,'Pendiente'),(112,NULL,NULL,NULL,NULL,'Pendiente'),(113,NULL,NULL,NULL,NULL,'Pendiente'),(114,NULL,NULL,NULL,NULL,'Pendiente'),(115,NULL,NULL,NULL,NULL,'Pendiente'),(116,NULL,NULL,NULL,NULL,'Pendiente');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `reserva_validate_num_personas` BEFORE INSERT ON `reserva` FOR EACH ROW BEGIN
    IF NEW.num_personas <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El número de personas debe ser mayor que cero';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tematica`
--

DROP TABLE IF EXISTS `tematica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tematica` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tematica`
--

LOCK TABLES `tematica` WRITE;
/*!40000 ALTER TABLE `tematica` DISABLE KEYS */;
INSERT INTO `tematica` VALUES (1,'Concierto'),(2,'Festival'),(3,'Conferencia'),(4,'Concierto'),(5,'Festival'),(6,'Conferencia');
/*!40000 ALTER TABLE `tematica` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_personas_por_tematica` AFTER INSERT ON `tematica` FOR EACH ROW BEGIN
    DECLARE total_personas INT;
    
    -- Obtener el número total de personas para este evento
    SELECT IFNULL(SUM(num_personas), 0) INTO total_personas
    FROM personas_por_evento
    WHERE evento_id = NEW.id;
    
    -- Actualizar el número de personas por temática
    UPDATE personas_por_tematica pt
    JOIN evento e ON pt.tematica_id = e.tematica_id
    SET pt.num_personas = pt.num_personas + total_personas;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vista_disponibilidad_asientos`
--

DROP TABLE IF EXISTS `vista_disponibilidad_asientos`;
/*!50001 DROP VIEW IF EXISTS `vista_disponibilidad_asientos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_disponibilidad_asientos` AS SELECT 
 1 AS `nombre_evento`,
 1 AS `asientos_disponibles`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_recursos`
--

DROP TABLE IF EXISTS `vista_recursos`;
/*!50001 DROP VIEW IF EXISTS `vista_recursos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_recursos` AS SELECT 
 1 AS `recursos_id`,
 1 AS `nombre_recurso`,
 1 AS `cantidad_disponible`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_reservas_detalle`
--

DROP TABLE IF EXISTS `vista_reservas_detalle`;
/*!50001 DROP VIEW IF EXISTS `vista_reservas_detalle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_reservas_detalle` AS SELECT 
 1 AS `reserva_id`,
 1 AS `nombre_evento`,
 1 AS `nombre_cliente`,
 1 AS `fecha_de_reserva`,
 1 AS `num_personas`,
 1 AS `estado_reserva`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_reservas_por_tematica`
--

DROP TABLE IF EXISTS `vista_reservas_por_tematica`;
/*!50001 DROP VIEW IF EXISTS `vista_reservas_por_tematica`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_reservas_por_tematica` AS SELECT 
 1 AS `tematica`,
 1 AS `cantidad_reservas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `zona_asiento`
--

DROP TABLE IF EXISTS `zona_asiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zona_asiento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `evento_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evento_id` (`evento_id`),
  CONSTRAINT `zona_asiento_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `evento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona_asiento`
--

LOCK TABLES `zona_asiento` WRITE;
/*!40000 ALTER TABLE `zona_asiento` DISABLE KEYS */;
INSERT INTO `zona_asiento` VALUES (7,'VIP',16),(8,'General',17),(9,'Premium',18),(10,'VIP',16),(11,'General',17),(12,'Premium',18),(13,'VIP',16),(14,'General',17),(15,'Premium',18),(16,'VIP',16),(17,'General',17),(18,'Premium',18);
/*!40000 ALTER TABLE `zona_asiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validar_capacidad_zona_asiento` BEFORE INSERT ON `zona_asiento` FOR EACH ROW BEGIN
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
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_disponibilidad_asientos`
--

/*!50001 DROP VIEW IF EXISTS `vista_disponibilidad_asientos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_disponibilidad_asientos` AS select `e`.`nombre` AS `nombre_evento`,count(`a`.`id`) AS `asientos_disponibles` from (`evento` `e` left join `asiento` `a` on(((`e`.`id` = `a`.`evento_id`) and (`a`.`estado` = 'Disponible')))) group by `e`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_recursos`
--

/*!50001 DROP VIEW IF EXISTS `vista_recursos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_recursos` AS select `r`.`id` AS `recursos_id`,NULL AS `nombre_recurso`,`r`.`cantidad_disponible` AS `cantidad_disponible` from `recursos` `r` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reservas_detalle`
--

/*!50001 DROP VIEW IF EXISTS `vista_reservas_detalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reservas_detalle` AS select `r`.`id` AS `reserva_id`,`e`.`nombre` AS `nombre_evento`,`c`.`nombre` AS `nombre_cliente`,`r`.`fecha_de_reserva` AS `fecha_de_reserva`,`r`.`num_personas` AS `num_personas`,`r`.`estado_reserva` AS `estado_reserva` from ((`reserva` `r` join `evento` `e` on((`r`.`evento_id` = `e`.`id`))) join `cliente` `c` on((`r`.`cliente_id` = `c`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reservas_por_tematica`
--

/*!50001 DROP VIEW IF EXISTS `vista_reservas_por_tematica`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reservas_por_tematica` AS select `t`.`nombre` AS `tematica`,count(`r`.`id`) AS `cantidad_reservas` from ((`reserva` `r` join `evento` `e` on((`r`.`evento_id` = `e`.`id`))) join `tematica` `t` on((`e`.`tematica_id` = `t`.`id`))) group by `t`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 14:45:30
