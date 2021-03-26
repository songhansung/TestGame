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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `pw` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int NOT NULL,
  `money` int NOT NULL DEFAULT '0',
  `rating` int NOT NULL DEFAULT '1',
  `mainImg` varchar(255) DEFAULT NULL,
  `isdel` varchar(10) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1234','유관순','$2a$10$ls0btZ4dD2v1KBBSh2E8HObMg/N5UxRa85ATxxa9eYOJvBohRsdu.','gksgk@naver.com',1055551111,85000,1,NULL,'N'),('123456','송한성','$2a$10$BvuvF/j/KQY7oOv2vRpNDO0HVlbdWqVhlLHdBGp76f0f9IlPelSTq','gkstjd6688@naver.com',1052730904,100000,1,NULL,'N'),('gkstjd3540','송한성','$2a$10$2e04WccNSQNu0sesFTsr1OIRGqgBonsxHTFxpjR.4UEbioxS/deni','151651',151515,33700,1,NULL,'N'),('gkstjd6688','송한성','$2a$10$6m4tgW91p1u0rVxznovh0ODihvWVK8XD0TMg1rZF8bVdOMHnBiYW6','gkstjd6688@naver.com',1052730904,100000,1,NULL,'N'),('thdgkstjd','이순신','$2a$10$VBOOtJtDWbxKS7/oEPO57.mOM89Qbcvq01Fx/cueXAO3/BuNq68Tm','gkstjd6688@naver.com',1052730904,12970,10,NULL,'N');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
