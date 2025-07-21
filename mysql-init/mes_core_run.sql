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
-- Table structure for table `run`
--

DROP TABLE IF EXISTS `run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `run` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ScheduleID` int NOT NULL,
  `RunStartDateTime` datetime DEFAULT NULL,
  `RunStopDateTime` datetime DEFAULT NULL,
  `StartInfeed` int DEFAULT NULL,
  `CurrentInfeed` int DEFAULT NULL,
  `StartOutfeed` int DEFAULT NULL,
  `CurrentOutfeed` int DEFAULT NULL,
  `StartWaste` int DEFAULT NULL,
  `CurrentWaste` int DEFAULT NULL,
  `TotalCount` int DEFAULT NULL,
  `WasteCount` int DEFAULT NULL,
  `GoodCount` int DEFAULT NULL,
  `Availability` float DEFAULT NULL,
  `Performance` float DEFAULT NULL,
  `Quality` float DEFAULT NULL,
  `OEE` float DEFAULT NULL,
  `SetupStartDateTime` datetime DEFAULT NULL,
  `SetupEndDateTime` datetime DEFAULT NULL,
  `RunTime` int DEFAULT NULL,
  `UnplannedDowntime` int DEFAULT NULL,
  `PlannedDowntime` int DEFAULT NULL,
  `TotalTime` int DEFAULT NULL,
  `TimeStamp` datetime DEFAULT NULL,
  `Closed` tinyint DEFAULT '0',
  `EstimatedFinishedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `run`
--

LOCK TABLES `run` WRITE;
/*!40000 ALTER TABLE `run` DISABLE KEYS */;
/*!40000 ALTER TABLE `run` ENABLE KEYS */;
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
