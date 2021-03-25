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
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `likeNum` int NOT NULL AUTO_INCREMENT,
  `gameNum` int NOT NULL,
  `id` varchar(45) NOT NULL,
  `up` int NOT NULL,
  `content` varchar(255) NOT NULL,
  `registerDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`likeNum`),
  KEY `gameNum_idx` (`gameNum`),
  KEY `id4_idx` (`id`),
  CONSTRAINT `gameNum4` FOREIGN KEY (`gameNum`) REFERENCES `game` (`gameNum`),
  CONSTRAINT `id4` FOREIGN KEY (`id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (6,43,'thdgkstjd',1,'1','2021-03-25 14:48:01'),(7,23,'thdgkstjd',1,'1','2021-03-25 14:48:08'),(8,43,'thdgkstjd',1,'2332','2021-03-25 14:49:22'),(9,17,'thdgkstjd',1,'좋아연','2021-03-25 15:17:54'),(10,43,'thdgkstjd',1,'호로로로로로로로로로롱ㅎ오ㅜ니ㅏ무하ㅣㅇ누히ㅏㄴ무히ㅏㅇ누히ㅏㅁㅇ뉘훈ㅇ미휜ㅇㅁ휘ㅏㄴ우히ㅏㅁ뉘한우미후이나휘ㅏㄴㅁ우히ㅏㅁ누히ㅏ눙ㅁ히ㅏㅜㅁㄴ이후님우힌ㅁㅇ휜ㅁ아휜우힘누힌ㅁ우힌ㅇ무히ㅏㄴㅇ무히ㅏㅁ눙히ㅜ닝휜ㅇㅁ훔니우히','2021-03-25 17:03:09'),(11,43,'thdgkstjd',1,'21312312','2021-03-25 17:03:16'),(12,43,'thdgkstjd',1,'','2021-03-25 17:03:32'),(13,43,'thdgkstjd',1,'ㅁㄴㅇㅎㄻㄴ','2021-03-25 17:03:41'),(14,43,'thdgkstjd',-1,'45345435','2021-03-25 17:10:11'),(15,43,'thdgkstjd',-1,'ggggg','2021-03-25 17:10:32');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-25 17:42:10
