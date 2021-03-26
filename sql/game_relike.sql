-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: game
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `relike`
--

DROP TABLE IF EXISTS `relike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relike` (
  `relikeNum` int NOT NULL AUTO_INCREMENT,
  `likeNum` int NOT NULL,
  `id` varchar(30) NOT NULL,
  `reup` int NOT NULL,
  PRIMARY KEY (`relikeNum`),
  KEY `like_idx` (`likeNum`),
  KEY `id5_idx` (`id`),
  CONSTRAINT `id5` FOREIGN KEY (`id`) REFERENCES `user` (`id`),
  CONSTRAINT `like` FOREIGN KEY (`likeNum`) REFERENCES `likes` (`likeNum`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relike`
--

LOCK TABLES `relike` WRITE;
/*!40000 ALTER TABLE `relike` DISABLE KEYS */;
INSERT INTO `relike` VALUES (8,6,'thdgkstjd',1),(9,6,'gkstjd3540',1),(13,19,'thdgkstjd',1),(16,6,'1234',1),(17,6,'gkstjd6688',-1),(18,19,'gkstjd6688',-1),(19,20,'gkstjd6688',-1),(32,6,'thdgkstjd',1),(33,6,'thdgkstjd',1),(34,6,'thdgkstjd',1),(35,6,'thdgkstjd',1),(36,6,'thdgkstjd',1),(37,6,'thdgkstjd',1),(38,6,'thdgkstjd',1),(39,6,'thdgkstjd',1),(40,6,'thdgkstjd',1),(41,6,'thdgkstjd',1),(51,6,'gkstjd6688',1),(52,6,'gkstjd6688',1),(53,6,'gkstjd6688',1),(54,6,'gkstjd6688',1),(55,6,'gkstjd6688',1),(56,6,'gkstjd6688',1),(57,6,'gkstjd6688',1),(58,6,'gkstjd6688',1),(59,6,'gkstjd6688',1),(60,6,'gkstjd6688',1),(61,20,'thdgkstjd',1),(62,20,'gkstjd3540',1);
/*!40000 ALTER TABLE `relike` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26 17:35:53
