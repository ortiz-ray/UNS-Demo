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
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `LineID` int NOT NULL,
  `WorkOrderID` int NOT NULL,
  `ScheduleType` varchar(45) DEFAULT NULL,
  `Note` varchar(255) DEFAULT NULL,
  `ScheduleStartDateTime` datetime NOT NULL,
  `ScheduleFinishDateTime` datetime NOT NULL,
  `Quantity` int NOT NULL,
  `EnteredBy` varchar(45) DEFAULT NULL,
  `TimeStamp` datetime DEFAULT NULL,
  `RunID` int DEFAULT NULL,
  `ActualStartDateTime` datetime DEFAULT NULL,
  `ActualFinishDateTime` datetime DEFAULT NULL,
  `ActualQuantity` int DEFAULT NULL,
  `RunStartDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (15,6,23,'Standard','Schedule for Press 103','2025-06-27 21:30:34','2025-06-28 05:30:34',1000,'admin','2025-06-27 21:30:34',NULL,NULL,NULL,NULL,NULL),(16,7,24,'Standard','Schedule for Press 104','2025-06-27 21:30:34','2025-06-28 05:30:34',1200,'admin','2025-06-27 21:30:34',NULL,NULL,NULL,NULL,NULL),(17,8,25,'Standard','Schedule for Press 105','2025-06-27 21:30:34','2025-06-28 05:30:34',1100,'admin','2025-06-27 21:30:34',NULL,NULL,NULL,NULL,NULL),(18,9,26,'Standard','Schedule for Press 106','2025-06-27 21:30:34','2025-06-28 05:30:34',900,'admin','2025-06-27 21:30:34',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-30 15:01:11
