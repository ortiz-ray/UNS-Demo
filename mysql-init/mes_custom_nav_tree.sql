-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: mes_custom
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
-- Table structure for table `nav_tree`
--

DROP TABLE IF EXISTS `nav_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nav_tree` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(1536) DEFAULT NULL,
  `text` varchar(765) DEFAULT NULL,
  `type` varchar(135) DEFAULT NULL,
  `security` varchar(765) DEFAULT NULL,
  `command` varchar(765) DEFAULT NULL,
  `icon` varchar(765) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `mode` varchar(135) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nav_tree`
--

LOCK TABLES `nav_tree` WRITE;
/*!40000 ALTER TABLE `nav_tree` DISABLE KEYS */;
INSERT INTO `nav_tree` VALUES (55,'','Admin','folder',NULL,NULL,'Builtin/icons/16/folder-horizontal.png',NULL,''),(56,'Admin','Navigation Admin','openWindow',NULL,'ii/Navigation Administration','Uploads/icons/16/database--pencil.png',NULL,''),(57,'Admin','Production Model','openWindow',NULL,'MES_core/Admin/Production Model','Uploads/icons/16/disks.png',NULL,''),(58,'','Operations','folder',NULL,NULL,'Builtin/icons/16/folder-horizontal.png',NULL,''),(60,'Operations','Work Orders','openWindow',NULL,'MES_core/Admin/Work Orders','Builtin/icons/16/table_sql_view.png',NULL,''),(61,'Operations','Product Codes','openWindow',NULL,'MES_core/Admin/Configuration','Uploads/icons/16/database--pencil.png',NULL,''),(63,'Operations','Simulator','openWindow',NULL,'MES_core/Simulator BootCamp','Uploads/icons/16/balance-unbalance.png',NULL,''),(65,'Operations','Line Operations','openWindow',NULL,'MES_core/Operations/Operator Control','Uploads/icons/16/image--arrow.png',NULL,'');
/*!40000 ALTER TABLE `nav_tree` ENABLE KEYS */;
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
