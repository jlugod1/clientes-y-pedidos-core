CREATE DATABASE  IF NOT EXISTS `bd_pedidos_clientes` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_pedidos_clientes`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_pedidos_clientes
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` int NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'luis','chile',912345678,'2024-10-04 22:21:50','2024-10-04 22:21:50'),(2,'alfredo','mexico',923456789,'2024-10-04 22:21:50','2024-10-04 22:21:50'),(3,'cande','argentina',91234567,'2024-10-04 22:21:50','2024-10-04 22:21:50'),(4,'alex','usa',934567891,'2024-10-04 22:21:50','2024-10-04 22:21:50'),(5,'hadasa','brasil',302201625,'2024-10-04 22:21:50','2024-10-04 22:21:50'),(6,'martin','chile',12345678,'2024-10-04 22:21:50','2024-10-04 22:21:50'),(7,'alfredo','mexico',923456789,'2024-10-04 22:21:58','2024-10-04 22:21:58'),(8,'cande','argentina',91234567,'2024-10-04 22:21:58','2024-10-04 22:21:58'),(9,'alex','usa',934567891,'2024-10-04 22:21:58','2024-10-04 22:21:58'),(10,'hadasa','brasil',302201625,'2024-10-04 22:21:58','2024-10-04 22:21:58'),(11,'martin','chile',12345678,'2024-10-04 22:21:58','2024-10-04 22:21:58'),(12,'alfredo','mexico',923456789,'2024-10-04 22:25:12','2024-10-04 22:25:12'),(13,'cande','argentina',91234567,'2024-10-04 22:25:12','2024-10-04 22:25:12'),(14,'alex','usa',934567891,'2024-10-04 22:25:12','2024-10-04 22:25:12'),(15,'hadasa','brasil',302201625,'2024-10-04 22:25:12','2024-10-04 22:25:12'),(16,'martin','chile',12345678,'2024-10-04 22:25:12','2024-10-04 22:25:12'),(17,'alfredo','mexico',923456789,'2024-10-04 22:25:17','2024-10-04 22:25:17'),(18,'cande','argentina',91234567,'2024-10-04 22:25:17','2024-10-04 22:25:17'),(19,'alex','usa',934567891,'2024-10-04 22:25:17','2024-10-04 22:25:17'),(20,'hadasa','brasil',302201625,'2024-10-04 22:25:17','2024-10-04 22:25:17'),(21,'martin','chile',12345678,'2024-10-04 22:25:17','2024-10-04 22:25:17');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clientes_id` int NOT NULL,
  `fecha` datetime NOT NULL,
  `total` int NOT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_pedidos_clientes_idx` (`clientes_id`),
  CONSTRAINT `fk_pedidos_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,'2024-10-01 00:00:00',151,'2024-10-04 22:25:48','2024-10-04 22:25:48'),(2,1,'2024-10-02 00:00:00',201,'2024-10-04 22:25:48','2024-10-04 22:25:48'),(3,2,'2024-10-03 00:00:00',100,'2024-10-04 22:25:48','2024-10-04 22:25:48'),(4,3,'2024-10-04 00:00:00',300,'2024-10-04 22:25:48','2024-10-04 22:25:48'),(5,4,'2024-10-05 00:00:00',120,'2024-10-04 22:25:48','2024-10-04 22:25:48'),(6,4,'2024-10-06 00:00:00',251,'2024-10-04 22:25:48','2024-10-04 22:25:48'),(7,5,'2024-10-07 00:00:00',80,'2024-10-04 22:25:48','2024-10-04 22:25:48'),(8,5,'2024-10-08 00:00:00',210,'2024-10-04 22:25:48','2024-10-04 22:25:48'),(9,3,'2024-10-09 00:00:00',155,'2024-10-04 22:25:48','2024-10-04 22:25:48'),(10,2,'2024-10-10 00:00:00',91,'2024-10-04 22:25:48','2024-10-04 22:25:48');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-04 23:36:18
