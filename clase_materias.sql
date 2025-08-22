-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: clase
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `MAT_ID` int NOT NULL AUTO_INCREMENT,
  `MAT_NOMBRE` varchar(255) NOT NULL,
  `MAT_HORA` time NOT NULL,
  `MAT_FECHA` date NOT NULL,
  PRIMARY KEY (`MAT_ID`),
  UNIQUE KEY `MAT_ID` (`MAT_ID`),
  CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`MAT_ID`) REFERENCES `docentes_materias` (`MAT_ID`),
  CONSTRAINT `materias_ibfk_2` FOREIGN KEY (`MAT_ID`) REFERENCES `tutoria` (`MAT_ID`),
  CONSTRAINT `materias_ibfk_3` FOREIGN KEY (`MAT_ID`) REFERENCES `docentes_materias` (`MAT_ID`),
  CONSTRAINT `materias_ibfk_4` FOREIGN KEY (`MAT_ID`) REFERENCES `tutoria` (`MAT_ID`),
  CONSTRAINT `materias_ibfk_5` FOREIGN KEY (`MAT_ID`) REFERENCES `docentes_materias` (`MAT_ID`),
  CONSTRAINT `materias_ibfk_6` FOREIGN KEY (`MAT_ID`) REFERENCES `registro_materias` (`MAT_ID`),
  CONSTRAINT `materias_ibfk_7` FOREIGN KEY (`MAT_ID`) REFERENCES `docentes_materias` (`MAT_ID`),
  CONSTRAINT `materias_ibfk_8` FOREIGN KEY (`MAT_ID`) REFERENCES `registro_materias` (`MAT_ID`),
  CONSTRAINT `materias_ibfk_9` FOREIGN KEY (`MAT_ID`) REFERENCES `tutoria` (`MAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-21 21:34:19
