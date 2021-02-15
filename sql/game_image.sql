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
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `imgNum` int NOT NULL AUTO_INCREMENT,
  `gameNum` int NOT NULL,
  `oriFilename` varchar(300) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `isimg` varchar(10) NOT NULL DEFAULT 'S',
  `isdel` varchar(10) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`imgNum`),
  KEY `game_idx` (`gameNum`),
  CONSTRAINT `game` FOREIGN KEY (`gameNum`) REFERENCES `game` (`gameNum`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,5,'ELEVEN메인.jpg','/2021/02/15/734ebb82-6fec-4e47-8cfe-ce401cb2cd6f_ELEVEN메인.jpg','M','N'),(3,6,'배틀그라운드 메인1.jpg','/2021/02/04/04374e2c-b417-404e-9756-91e761cd2024_배틀그라운드 메인1.jpg','M','N'),(4,6,'배틀그라운드 메인.jpg','/2021/02/04/3bf7f80d-7fc7-470a-8450-1b3c6b34a196_배틀그라운드 메인.jpg','S','N'),(5,7,'배틀그라운드1.jpg','/2021/02/04/57dabeb1-7769-4f3a-9f20-dcad18609790_배틀그라운드1.jpg','S','N'),(6,7,'배틀그라운드2.jpg','/2021/02/04/4810603e-3bef-4e6f-8d42-bb042c3fc2a5_배틀그라운드2.jpg','S','N'),(8,8,'배틀그라운드 메인.jpg','/2021/02/05/770769d4-1a8d-4760-a4a9-dad906d15bee_배틀그라운드 메인.jpg','M','N'),(9,8,'배틀그라운드1.jpg','/2021/02/05/51a69930-ef71-44f3-8ccc-73e2dddf8a36_배틀그라운드1.jpg','S','N'),(10,8,'배틀그라운드2.jpg','/2021/02/05/75d3e0f8-3c4e-41e2-a82a-41ac51283bc9_배틀그라운드2.jpg','S','N'),(11,8,'배틀그라운드3.jpg','/2021/02/05/36b9710e-67bb-47f2-b216-c5bc5f593350_배틀그라운드3.jpg','S','N'),(12,8,'배틀그라운드4.jpg','/2021/02/05/8832f525-63b8-47ab-999e-1185794867c9_배틀그라운드4.jpg','S','N'),(13,8,'배틀그라운드5.jpg','/2021/02/05/bb27ad81-a5ec-4f25-a1ac-b8ea2892ef45_배틀그라운드5.jpg','S','N'),(14,11,'배틀그라운드5.jpg','/2021/02/08/e1e80ca7-31c7-43b4-b00f-56dc412a77f2_배틀그라운드5.jpg','S','N'),(15,12,'배틀그라운드3.jpg','/2021/02/08/2e23a207-6832-4903-ba1f-9ea28219e209_배틀그라운드3.jpg','S','N'),(16,12,'배틀그라운드3.jpg','/2021/02/08/2e23a207-6832-4903-ba1f-9ea28219e209_배틀그라운드3.jpg','S','N'),(17,13,'배틀그라운드4.jpg','/2021/02/08/4e3856d6-959d-46d2-ae8f-4f787d033846_배틀그라운드4.jpg','S','Y'),(18,13,'배틀그라운드4.jpg','/2021/02/08/4e3856d6-959d-46d2-ae8f-4f787d033846_배틀그라운드4.jpg','S','Y'),(19,14,'배틀그라운드4.jpg','/2021/02/15/d12d8ac1-e6fb-4314-b2c9-46568c49dfc7_배틀그라운드4.jpg','S','Y'),(20,14,'배틀그라운드4.jpg','/2021/02/15/d12d8ac1-e6fb-4314-b2c9-46568c49dfc7_배틀그라운드4.jpg','S','Y'),(25,10,'섬의궤적메인.jpg','/2021/02/15/a979d5bc-5125-41c8-99b1-e11d61ef9e29_섬의궤적메인.jpg','M','N'),(31,13,'스컬메인.jpg','/2021/02/15/4276d638-7bdf-43ac-ab13-0d206797f49b_스컬메인.jpg','M','N'),(32,13,'배틀그라운드1.jpg','/2021/02/15/8fbcdd35-6aab-4c1e-a1f8-bc8ee4bd2441_배틀그라운드1.jpg','S','N'),(33,13,'배틀그라운드1.jpg','/2021/02/15/68189352-6b9f-4ab1-8269-c5c043da418f_배틀그라운드1.jpg','S','N'),(34,13,'배틀그라운드5.jpg','/2021/02/15/7992fa2c-6eb2-4ac2-9160-e02f3b4af55e_배틀그라운드5.jpg','S','N'),(35,13,'배틀그라운드4.jpg','/2021/02/15/e811500a-4a0c-4dd6-bfc1-e8151866da2c_배틀그라운드4.jpg','S','N'),(36,14,'문명메인.jpg','/2021/02/15/64ab1d74-d978-48b4-9e1d-c8b437fed953_문명메인.jpg','M','N'),(37,15,'gta5메인.jpg','/2021/02/15/2c1bf931-74b0-45c4-8f6b-e152123ced11_gta5메인.jpg','M','Y'),(38,15,'섬의궤적메인.jpg','/2021/02/15/dfe16cd0-f965-4e5b-9505-ff978900c136_섬의궤적메인.jpg','M','N');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-15 17:24:38
