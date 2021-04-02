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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cusNum` int NOT NULL AUTO_INCREMENT,
  `id` varchar(30) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` longtext NOT NULL,
  `objcontent` longtext,
  `registerDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `objregisterDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `isdel` varchar(10) NOT NULL DEFAULT 'N',
  `kind` varchar(50) NOT NULL,
  `processing` varchar(45) NOT NULL DEFAULT '미처리',
  PRIMARY KEY (`cusNum`),
  KEY `id_idx` (`id`),
  CONSTRAINT `id3` FOREIGN KEY (`id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'gkstjd3540','답변문의 연습 ','회원정보가틀림','123','2021-03-12 11:52:37','2021-03-12 11:59:04','N','회원정보','답변 완료'),(3,'1234','문의합니다 ','ㅇㅇㅇㅇㅇ1',NULL,'2021-03-12 12:46:03','2021-03-12 12:46:03','N','이벤트','미처리'),(4,'gkstjd3540','답변내용없을떄 cif 적용','답변애용없을때 관리자 cif적용하여 없애기연습',NULL,'2021-03-12 13:01:18','2021-03-12 13:01:18','N','결제/청약철회','미처리'),(5,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:20:41','2021-03-12 14:20:41','N','설치 및 실행','미처리'),(6,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:20:44','2021-03-12 14:20:44','N','설치 및 실행','미처리'),(7,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:20:46','2021-03-12 14:20:46','N','설치 및 실행','미처리'),(8,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:20:48','2021-03-12 14:20:48','N','설치 및 실행','미처리'),(9,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:20:50','2021-03-12 14:20:50','N','설치 및 실행','미처리'),(10,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:20:52','2021-03-12 14:20:52','N','설치 및 실행','미처리'),(11,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:20:54','2021-03-12 14:20:54','N','설치 및 실행','미처리'),(12,'gkstjd3540','문의20개채우기','문의20개채우기','답변완료','2021-03-12 14:20:57','2021-04-01 16:06:10','N','설치 및 실행','답변 완료'),(13,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:20:58','2021-03-12 14:20:58','N','설치 및 실행','미처리'),(14,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:21:01','2021-03-12 14:21:01','N','설치 및 실행','미처리'),(15,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:21:03','2021-03-12 14:21:03','N','설치 및 실행','미처리'),(16,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:21:06','2021-03-12 14:21:06','N','게임내용','미처리'),(17,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:21:08','2021-03-12 14:21:08','N','이벤트','미처리'),(18,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:21:18','2021-03-12 14:21:18','N','설치 및 실행','미처리'),(19,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:21:20','2021-03-12 14:21:20','N','설치 및 실행','미처리'),(20,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:21:22','2021-03-12 14:21:22','N','설치 및 실행','미처리'),(21,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:21:24','2021-03-12 14:21:24','N','설치 및 실행','미처리'),(22,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:21:26','2021-03-12 14:21:26','N','설치 및 실행','미처리'),(23,'gkstjd3540','문의20개채우기','문의20개채우기',NULL,'2021-03-12 14:21:39','2021-03-12 14:21:39','N','설치 및 실행','미처리'),(26,'1234','스물글자입력스물글자입력스물글자입력입력','ㄴㅇㅎㄴㅇㅎㅁ','스물글자확인','2021-03-19 09:39:08','2021-03-19 09:39:31','N','설치 및 실행','답변 완료');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-02 13:55:52
