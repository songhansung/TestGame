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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,5,'ELEVEN메인.jpg','/2021/02/15/734ebb82-6fec-4e47-8cfe-ce401cb2cd6f_ELEVEN메인.jpg','M','N'),(3,6,'배틀그라운드 메인1.jpg','/2021/02/04/04374e2c-b417-404e-9756-91e761cd2024_배틀그라운드 메인1.jpg','M','N'),(4,6,'배틀그라운드 메인.jpg','/2021/02/04/3bf7f80d-7fc7-470a-8450-1b3c6b34a196_배틀그라운드 메인.jpg','S','N'),(5,7,'배틀그라운드1.jpg','/2021/02/04/57dabeb1-7769-4f3a-9f20-dcad18609790_배틀그라운드1.jpg','S','N'),(6,7,'배틀그라운드2.jpg','/2021/02/04/4810603e-3bef-4e6f-8d42-bb042c3fc2a5_배틀그라운드2.jpg','S','N'),(8,8,'배틀그라운드 메인.jpg','/2021/02/05/770769d4-1a8d-4760-a4a9-dad906d15bee_배틀그라운드 메인.jpg','M','N'),(9,8,'배틀그라운드1.jpg','/2021/02/05/51a69930-ef71-44f3-8ccc-73e2dddf8a36_배틀그라운드1.jpg','S','N'),(10,8,'배틀그라운드2.jpg','/2021/02/05/75d3e0f8-3c4e-41e2-a82a-41ac51283bc9_배틀그라운드2.jpg','S','N'),(11,8,'배틀그라운드3.jpg','/2021/02/05/36b9710e-67bb-47f2-b216-c5bc5f593350_배틀그라운드3.jpg','S','N'),(12,8,'배틀그라운드4.jpg','/2021/02/05/8832f525-63b8-47ab-999e-1185794867c9_배틀그라운드4.jpg','S','N'),(13,8,'배틀그라운드5.jpg','/2021/02/05/bb27ad81-a5ec-4f25-a1ac-b8ea2892ef45_배틀그라운드5.jpg','S','N'),(14,11,'배틀그라운드5.jpg','/2021/02/08/e1e80ca7-31c7-43b4-b00f-56dc412a77f2_배틀그라운드5.jpg','S','N'),(15,12,'배틀그라운드3.jpg','/2021/02/08/2e23a207-6832-4903-ba1f-9ea28219e209_배틀그라운드3.jpg','S','N'),(16,12,'배틀그라운드3.jpg','/2021/02/08/2e23a207-6832-4903-ba1f-9ea28219e209_배틀그라운드3.jpg','S','N'),(25,10,'섬의궤적메인.jpg','/2021/02/15/a979d5bc-5125-41c8-99b1-e11d61ef9e29_섬의궤적메인.jpg','M','N'),(31,13,'스컬메인.jpg','/2021/02/15/4276d638-7bdf-43ac-ab13-0d206797f49b_스컬메인.jpg','M','N'),(32,13,'배틀그라운드1.jpg','/2021/02/15/8fbcdd35-6aab-4c1e-a1f8-bc8ee4bd2441_배틀그라운드1.jpg','S','N'),(33,13,'배틀그라운드1.jpg','/2021/02/15/68189352-6b9f-4ab1-8269-c5c043da418f_배틀그라운드1.jpg','S','N'),(34,13,'배틀그라운드5.jpg','/2021/02/15/7992fa2c-6eb2-4ac2-9160-e02f3b4af55e_배틀그라운드5.jpg','S','N'),(35,13,'배틀그라운드4.jpg','/2021/02/15/e811500a-4a0c-4dd6-bfc1-e8151866da2c_배틀그라운드4.jpg','S','N'),(36,14,'문명메인.jpg','/2021/02/15/64ab1d74-d978-48b4-9e1d-c8b437fed953_문명메인.jpg','M','Y'),(43,17,'풋볼매니저2021.jpg','/2021/02/25/561987a0-af09-4af8-884c-b747effe88e0_풋볼매니저2021.jpg','M','Y'),(44,17,'풋볼매니저1.jpg','/2021/02/25/781ff4a0-2ecb-4896-b8de-145bed83f155_풋볼매니저1.jpg','S','Y'),(45,17,'풋볼매니저2.jpg','/2021/02/25/e14afee3-abde-403b-9e30-bf9e3c6aa062_풋볼매니저2.jpg','S','Y'),(46,17,'풋볼매니저3.jpg','/2021/02/25/914ceda5-1afe-45ca-a7a0-b46d57a7da10_풋볼매니저3.jpg','S','Y'),(47,17,'풋볼매니저4.jpg','/2021/02/25/0935a3af-6411-4b94-9c2f-7c0ab134882e_풋볼매니저4.jpg','S','Y'),(48,17,'풋볼매니저5.jpg','/2021/02/25/d61fa536-9226-4abc-b678-32d07d82c012_풋볼매니저5.jpg','S','Y'),(49,17,'풋볼매니저6.jpg','/2021/02/25/85633936-d956-4ba3-a78f-1e3e44f3e623_풋볼매니저6.jpg','S','Y'),(65,16,'배틀그라운드5.jpg','/2021/02/25/f55791ac-ebfc-4121-a881-85436a62b32d_배틀그라운드5.jpg','S','Y'),(66,16,'배틀그라운드4.jpg','/2021/02/25/41f0770d-05f7-45f7-b025-2e3946994201_배틀그라운드4.jpg','S','Y'),(67,16,'배틀그라운드1.jpg','/2021/02/25/85f57df7-c787-45c8-9109-0f4e98d5f423_배틀그라운드1.jpg','S','Y'),(68,16,'배틀그라운드2.jpg','/2021/02/25/7f319d44-a357-412c-9508-ca7b72cf3af5_배틀그라운드2.jpg','S','Y'),(69,16,'gta5메인.jpg','/2021/02/25/1f0eeaf1-fb7f-4337-93ba-97628a193ff4_gta5메인.jpg','M','Y'),(70,16,'배틀그라운드5.jpg','/2021/02/25/8d3fbf34-1432-4161-826c-fd2eb101144f_배틀그라운드5.jpg','S','Y'),(71,16,'배틀그라운드4.jpg','/2021/02/25/41c513b9-4d86-4a0a-a90f-61c7ccf6e327_배틀그라운드4.jpg','S','Y'),(72,15,'배틀그라운드 메인1.jpg','/2021/02/25/b2e0e4f8-8368-4da4-b724-ec19b373fed4_배틀그라운드 메인1.jpg','M','Y'),(73,4,'나이트메어2.jpg','/2021/02/25/a066646a-3605-4559-a503-5c8d96f83d1d_나이트메어2.jpg','M','N'),(74,3,'레프트.jpg','/2021/02/25/4f337b39-1759-4bab-9193-509eff7a2bf6_레프트.jpg','M','N'),(75,17,'풋볼매니저2021.jpg','/2021/02/26/13817183-7ae5-4e37-8a97-6f16b5facf1c_풋볼매니저2021.jpg','M','N'),(76,17,'풋볼매니저1.jpg','/2021/02/26/e84444e1-b7bf-477d-8d16-e1da03ec6725_풋볼매니저1.jpg','S','N'),(77,17,'풋볼매니저2.jpg','/2021/02/26/17b74fec-8cbb-44ab-bf56-a23421a0633f_풋볼매니저2.jpg','S','N'),(78,17,'풋볼매니저3.jpg','/2021/02/26/2e3d69ca-bae0-4628-85d1-9f085c38ca90_풋볼매니저3.jpg','S','N'),(79,17,'풋볼매니저4.jpg','/2021/02/26/ccedb37b-2ff4-4cc2-bc88-d2476e04edf5_풋볼매니저4.jpg','S','N'),(80,17,'풋볼매니저5.jpg','/2021/02/26/e248c197-c30f-4658-b499-6b23325e5b16_풋볼매니저5.jpg','S','N'),(81,17,'풋볼매니저6.jpg','/2021/02/26/c9d2554f-f7d6-40f8-9bde-590adb428ec8_풋볼매니저6.jpg','S','N'),(82,16,'레포데 메인.jpg','/2021/02/26/6a67503f-e85e-40d7-9b93-11f07b90c03d_레포데 메인.jpg','M','N'),(83,16,'레포데1.jpg','/2021/02/26/18ec785f-b600-4d6d-8a20-69d9c41dfedd_레포데1.jpg','S','N'),(84,16,'레포데2.jpg','/2021/02/26/da7d3dd9-a461-4e86-afc9-15ba379eefdc_레포데2.jpg','S','N'),(85,16,'레포데3.jpg','/2021/02/26/d66283ed-4dc8-4bb3-82a0-fe38247838e0_레포데3.jpg','S','N'),(86,16,'레포데4.jpg','/2021/02/26/b902e2fb-ebf6-4a85-9b42-b5e930859130_레포데4.jpg','S','N'),(87,16,'레포데5.jpg','/2021/02/26/06cf7bbb-3ef0-4dbe-a8ee-397b1f2e5a13_레포데5.jpg','S','N'),(88,15,'폴가이즈메인.jpg','/2021/02/26/c362c36d-f244-4cc8-a9a4-2319586314ae_폴가이즈메인.jpg','M','N'),(89,15,'폴가이즈1.jpg','/2021/02/26/a272eb64-6ed6-4308-a68e-e13e176c2c1f_폴가이즈1.jpg','S','N'),(90,15,'폴가이즈2.jpg','/2021/02/26/e1b9ee51-5474-4f2d-bccb-172bdbe47777_폴가이즈2.jpg','S','N'),(91,15,'폴가이즈3.jpg','/2021/02/26/ceb22bab-66b2-4208-b332-c82e91fe66f4_폴가이즈3.jpg','S','N'),(92,15,'폴가이즈4.jpg','/2021/02/26/f474fcf4-333f-453f-aaf6-285e1c91e61e_폴가이즈4.jpg','S','N'),(93,15,'폴가이즈5.jpg','/2021/02/26/437cfa07-43ea-4191-80d2-a6e2d98d6d64_폴가이즈5.jpg','S','N'),(94,14,'스컬메인.jpg','/2021/02/26/5129b352-d226-4ce5-8f90-38e4e9de4684_스컬메인.jpg','M','N'),(95,14,'스컬1.jpg','/2021/02/26/95ecf68b-c595-43dc-82ef-176369c765ee_스컬1.jpg','S','N'),(96,14,'스컬2.jpg','/2021/02/26/342d4c8b-7735-4134-ae2c-8be43d276e2b_스컬2.jpg','S','N'),(97,14,'스컬3.jpg','/2021/02/26/f2cfc685-33c2-4fb9-aefc-7ebafb5a2b57_스컬3.jpg','S','N'),(98,14,'스컬4.jpg','/2021/02/26/e5a7fcd7-80a0-4e5f-9258-85790691ca06_스컬4.jpg','S','N'),(99,14,'스컬5.jpg','/2021/02/26/469ec76c-1096-4a72-9375-78327401c92d_스컬5.jpg','S','N'),(100,14,'스컬6.jpg','/2021/02/26/b10c6d4d-0250-42e0-b5c2-0c25f9c60f00_스컬6.jpg','S','N');
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

-- Dump completed on 2021-02-26 17:23:17
