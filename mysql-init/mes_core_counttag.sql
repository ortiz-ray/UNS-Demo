-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: mes_core
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `counttag`
--

DROP TABLE IF EXISTS `counttag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counttag` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TagPath` varchar(100) NOT NULL,
  `ParentID` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TagPath_UNIQUE` (`TagPath`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counttag`
--

LOCK TABLES `counttag` WRITE;
/*!40000 ALTER TABLE `counttag` DISABLE KEYS */;
INSERT INTO `counttag` VALUES (16,'[default]Enterprise/Fort Mill/Press/Press 103/Infeed/Count',6),(17,'[default]Enterprise/Fort Mill/Press/Press 103/Outfeed/Count',6),(18,'[default]Enterprise/Fort Mill/Press/Press 103/Waste/Count',6),(19,'[default]Enterprise/Fort Mill/Press/Press 104/Infeed/Count',7),(20,'[default]Enterprise/Fort Mill/Press/Press 104/Outfeed/Count',7),(21,'[default]Enterprise/Fort Mill/Press/Press 104/Waste/Count',7),(22,'[default]Enterprise/Fort Mill/Press/Press 105/Infeed/Count',8),(23,'[default]Enterprise/Fort Mill/Press/Press 105/Outfeed/Count',8),(24,'[default]Enterprise/Fort Mill/Press/Press 105/Waste/Count',8),(25,'[default]Enterprise/Fort Mill/Press/Press 106/Infeed/Count',9),(26,'[default]Enterprise/Fort Mill/Press/Press 106/Outfeed/Count',9),(27,'[default]Enterprise/Fort Mill/Press/Press 106/Waste/Count',9);
/*!40000 ALTER TABLE `counttag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-30 15:01:12
