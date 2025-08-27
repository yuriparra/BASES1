-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: base
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
-- Table structure for table `docentes`
--

DROP TABLE IF EXISTS `docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docentes` (
  `DOC_ID` int NOT NULL AUTO_INCREMENT,
  `DOC_NOMBRE` varchar(255) NOT NULL,
  `DOC_CORREO` varchar(255) NOT NULL,
  PRIMARY KEY (`DOC_ID`),
  UNIQUE KEY `DOC_ID` (`DOC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
INSERT INTO `docentes` VALUES (1,'Carlos Ramírez','carlos.ramirez@universidad.edu'),(2,'María Gómez','maria.gomez@universidad.edu'),(3,'Andrés López','andres.lopez@universidad.edu'),(4,'Paula Torres','paula.torres@universidad.edu'),(5,'Juan Martínez','juan.martinez@universidad.edu'),(6,'Laura Rodríguez','laura.rodriguez@universidad.edu'),(7,'Sergio Fernández','sergio.fernandez@universidad.edu'),(8,'Camila Castillo','camila.castillo@universidad.edu'),(9,'Felipe Vargas','felipe.vargas@universidad.edu'),(10,'Ana Morales','ana.morales@universidad.edu'),(11,'Jorge Herrera','jorge.herrera@universidad.edu'),(12,'Natalia Jiménez','natalia.jimenez@universidad.edu'),(13,'Ricardo Díaz','ricardo.diaz@universidad.edu'),(14,'Daniela Peña','daniela.pena@universidad.edu'),(15,'Héctor Silva','hector.silva@universidad.edu'),(16,'Valentina Castro','valentina.castro@universidad.edu'),(17,'Fernando Ortiz','fernando.ortiz@universidad.edu'),(18,'Lucía Rojas','lucia.rojas@universidad.edu'),(19,'Manuel Suárez','manuel.suarez@universidad.edu'),(20,'Carolina Méndez','carolina.mendez@universidad.edu'),(21,'Alejandro Cárdenas','alejandro.cardenas@universidad.edu'),(22,'Juliana Pardo','juliana.pardo@universidad.edu'),(23,'Mauricio Gutiérrez','mauricio.gutierrez@universidad.edu'),(24,'Diana Cabrera','diana.cabrera@universidad.edu'),(25,'Óscar Medina','oscar.medina@universidad.edu'),(26,'Patricia León','patricia.leon@universidad.edu'),(27,'Hernán Patiño','hernan.patino@universidad.edu'),(28,'Mónica Vargas','monica.vargas@universidad.edu'),(29,'Cristian Gómez','cristian.gomez@universidad.edu'),(30,'Adriana Ramírez','adriana.ramirez@universidad.edu'),(31,'Esteban Torres','esteban.torres@universidad.edu'),(32,'Lorena Castillo','lorena.castillo@universidad.edu'),(33,'Diego Sánchez','diego.sanchez@universidad.edu'),(34,'Sandra Herrera','sandra.herrera@universidad.edu'),(35,'Julián López','julian.lopez@universidad.edu'),(36,'Marcela Rincón','marcela.rincon@universidad.edu'),(37,'Rafael Arias','rafael.arias@universidad.edu'),(38,'Vanessa Cifuentes','vanessa.cifuentes@universidad.edu'),(39,'Pablo Molina','pablo.molina@universidad.edu'),(40,'Claudia Restrepo','claudia.restrepo@universidad.edu'),(41,'Iván Lozano','ivan.lozano@universidad.edu'),(42,'Gabriela Salazar','gabriela.salazar@universidad.edu'),(43,'Sebastián Duarte','sebastian.duarte@universidad.edu'),(44,'Liliana Torres','liliana.torres@universidad.edu'),(45,'Raúl Peña','raul.pena@universidad.edu'),(46,'Tatiana Guerrero','tatiana.guerrero@universidad.edu'),(47,'Mateo Pineda','mateo.pineda@universidad.edu'),(48,'Isabel Vargas','isabel.vargas@universidad.edu'),(49,'Francisco Camacho','francisco.camacho@universidad.edu'),(50,'Elena Mora','elena.mora@universidad.edu');
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docentes_materias`
--

DROP TABLE IF EXISTS `docentes_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docentes_materias` (
  `MAT_ID` int NOT NULL AUTO_INCREMENT,
  `DOC_ID` int NOT NULL,
  PRIMARY KEY (`MAT_ID`,`DOC_ID`),
  UNIQUE KEY `MAT_ID` (`MAT_ID`),
  KEY `DOC_ID` (`DOC_ID`),
  CONSTRAINT `docentes_materias_ibfk_1` FOREIGN KEY (`DOC_ID`) REFERENCES `docentes` (`DOC_ID`),
  CONSTRAINT `docentes_materias_ibfk_2` FOREIGN KEY (`MAT_ID`) REFERENCES `materias` (`MAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes_materias`
--

LOCK TABLES `docentes_materias` WRITE;
/*!40000 ALTER TABLE `docentes_materias` DISABLE KEYS */;
/*!40000 ALTER TABLE `docentes_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `EST_ID` int NOT NULL AUTO_INCREMENT,
  `EST_NOMBRE` varchar(30) NOT NULL,
  `EST_PROGRAMA` varchar(255) NOT NULL,
  `EST_CORREO` varchar(255) NOT NULL,
  `EST_REGISTRO` datetime NOT NULL,
  PRIMARY KEY (`EST_ID`),
  UNIQUE KEY `EST_ID` (`EST_ID`),
  CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`EST_ID`) REFERENCES `registro_materias` (`EST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

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
  UNIQUE KEY `MAT_ID` (`MAT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Matemáticas I','08:00:00','2024-02-01'),(2,'Física I','10:00:00','2024-02-02'),(3,'Química General','14:00:00','2024-02-03'),(4,'Programación I','09:00:00','2024-02-05'),(5,'Bases de Datos','11:00:00','2024-02-06'),(6,'Algoritmos','15:00:00','2024-02-07'),(7,'Estructuras de Datos','13:00:00','2024-02-08'),(8,'Matemáticas II','08:00:00','2024-02-09'),(9,'Estadística I','16:00:00','2024-02-10'),(10,'Inglés I','10:00:00','2024-02-12'),(11,'Historia Universal','08:00:00','2024-02-13'),(12,'Lengua Española','09:00:00','2024-02-14'),(13,'Filosofía','11:00:00','2024-02-15'),(14,'Psicología General','14:00:00','2024-02-16'),(15,'Sociología','15:00:00','2024-02-17'),(16,'Literatura Universal','10:00:00','2024-02-19'),(17,'Arte y Cultura','13:00:00','2024-02-20'),(18,'Educación Física','07:00:00','2024-02-21'),(19,'Programación II','09:00:00','2024-02-22'),(20,'Redes de Computadores','11:00:00','2024-02-23'),(21,'Ingeniería de Software','14:00:00','2024-02-24'),(22,'Bases de Datos II','16:00:00','2024-02-25'),(23,'Cálculo I','08:00:00','2024-02-26'),(24,'Cálculo II','09:00:00','2024-02-27'),(25,'Probabilidad y Estadística','13:00:00','2024-02-28'),(26,'Teoría de la Computación','15:00:00','2024-03-01'),(27,'Compiladores','10:00:00','2024-03-02'),(28,'Inteligencia Artificial','11:00:00','2024-03-03'),(29,'Machine Learning','12:00:00','2024-03-04'),(30,'Sistemas Operativos','14:00:00','2024-03-05'),(31,'Arquitectura de Computadores','16:00:00','2024-03-06'),(32,'Ingeniería de Requisitos','09:00:00','2024-03-07'),(33,'Metodologías Ágiles','11:00:00','2024-03-08'),(34,'Minería de Datos','13:00:00','2024-03-09'),(35,'Big Data','15:00:00','2024-03-10'),(36,'Computación en la Nube','10:00:00','2024-03-11'),(37,'Seguridad Informática','12:00:00','2024-03-12'),(38,'Criptografía','14:00:00','2024-03-13'),(39,'Blockchain','16:00:00','2024-03-14'),(40,'Internet de las Cosas','08:00:00','2024-03-15'),(41,'Robótica','09:00:00','2024-03-16'),(42,'Procesamiento de Imágenes','11:00:00','2024-03-17'),(43,'Visión por Computador','13:00:00','2024-03-18'),(44,'Análisis Numérico','15:00:00','2024-03-19'),(45,'Optimización','10:00:00','2024-03-20'),(46,'Ciberseguridad','12:00:00','2024-03-21'),(47,'Administración de Proyectos','14:00:00','2024-03-22'),(48,'Ética Profesional','16:00:00','2024-03-23'),(49,'Desarrollo Web','08:00:00','2024-03-24'),(50,'Aplicaciones Móviles','09:00:00','2024-03-25');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_materias`
--

DROP TABLE IF EXISTS `registro_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_materias` (
  `EST_ID` int NOT NULL AUTO_INCREMENT,
  `MAT_ID` int NOT NULL,
  PRIMARY KEY (`EST_ID`,`MAT_ID`),
  UNIQUE KEY `EST_ID` (`EST_ID`),
  KEY `MAT_ID` (`MAT_ID`),
  CONSTRAINT `registro_materias_ibfk_1` FOREIGN KEY (`EST_ID`) REFERENCES `estudiantes` (`EST_ID`),
  CONSTRAINT `registro_materias_ibfk_2` FOREIGN KEY (`MAT_ID`) REFERENCES `materias` (`MAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_materias`
--

LOCK TABLES `registro_materias` WRITE;
/*!40000 ALTER TABLE `registro_materias` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarea_post_tutoria`
--

DROP TABLE IF EXISTS `tarea_post_tutoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarea_post_tutoria` (
  `ID_TAREA` int NOT NULL AUTO_INCREMENT,
  `ID_TUTORIA` int NOT NULL,
  `DESCRIPCION_TAREA` varchar(255) NOT NULL,
  `FECHA_ASIGNACION` date NOT NULL,
  `FECHA_ENTREGA` date NOT NULL,
  `CALIFICACION` float NOT NULL,
  `OBSERVACIONES_DOC` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_TAREA`),
  UNIQUE KEY `ID_TAREA` (`ID_TAREA`),
  KEY `ID_TUTORIA` (`ID_TUTORIA`),
  CONSTRAINT `tarea_post_tutoria_ibfk_1` FOREIGN KEY (`ID_TUTORIA`) REFERENCES `tutoria` (`ID_TUTORIA`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarea_post_tutoria`
--

LOCK TABLES `tarea_post_tutoria` WRITE;
/*!40000 ALTER TABLE `tarea_post_tutoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarea_post_tutoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutoria`
--

DROP TABLE IF EXISTS `tutoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutoria` (
  `ID_TUTORIA` int NOT NULL AUTO_INCREMENT,
  `EST_ID` int NOT NULL,
  `DOC_ID` int NOT NULL,
  `MAT_ID` int NOT NULL,
  `FECHA_TUTORIA` date NOT NULL,
  `HORA_TUTORIA` time NOT NULL,
  `COMENTARIO_TUTORIA` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_TUTORIA`),
  UNIQUE KEY `ID_TUTORIA` (`ID_TUTORIA`),
  KEY `EST_ID` (`EST_ID`),
  KEY `DOC_ID` (`DOC_ID`),
  KEY `MAT_ID` (`MAT_ID`),
  CONSTRAINT `tutoria_ibfk_1` FOREIGN KEY (`EST_ID`) REFERENCES `estudiantes` (`EST_ID`),
  CONSTRAINT `tutoria_ibfk_2` FOREIGN KEY (`DOC_ID`) REFERENCES `docentes` (`DOC_ID`),
  CONSTRAINT `tutoria_ibfk_3` FOREIGN KEY (`MAT_ID`) REFERENCES `materias` (`MAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutoria`
--

LOCK TABLES `tutoria` WRITE;
/*!40000 ALTER TABLE `tutoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-26 21:29:17
