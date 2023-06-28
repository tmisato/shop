-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: localhost    Database: shop_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `itemlist`
--

DROP TABLE IF EXISTS `itemlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `itemdeta` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemlist`
--

LOCK TABLES `itemlist` WRITE;
/*!40000 ALTER TABLE `itemlist` DISABLE KEYS */;
INSERT INTO `itemlist` VALUES (1,'shirt1','shirt','5000','/images/shirt1.jpg'),(2,'shirt2','shirt','5000','/images/shirt2.jpg'),(3,'shirt3','shirt','5000','/images/shirt3.jpg'),(4,'shirt4','shirt','5000','/images/shirt4.jpg'),(5,'tshirt1','tshirt','3000','/images/tshirt1.jpg'),(6,'tshirt2','tshirt','3000','/images/tshirt2.jpg'),(7,'tshirt3','tshirt','3000','/images/tshirt3.jpg'),(8,'tshirt4','tshirt','3000','/images/tshirt4.jpg'),(9,'tshirt5','tshirt','3000','/images/tshirt5.jpg'),(10,'bottom1','bottom','15000','/images/bottom1.jpg'),(11,'bottom2','bottom','15000','/images/bottom2.jpg'),(12,'bottom3','bottom','15000','/images/bottom3.jpg'),(13,'bottom4','bottom','15000','/images/bottom4.jpg'),(14,'bottom5','bottom','15000','/images/bottom5.jpg'),(15,'bottom6','bottom','15000','/images/bottom6.jpg'),(16,'parker1','parker','10000','/images/parker1.jpg'),(17,'parker2','parker','10000','/images/parker2.jpg'),(18,'parker3','parker','10000','/images/parker3.jpg'),(19,'parker4','parker','10000','/images/parker4.jpg'),(20,'parker5','parker','10000','/images/parker5.jpg'),(21,'trainer1','trainer','1000','/images/trainer1.jpg'),(22,'trainer2','trainer','1000','/images/trainer2.jpg'),(23,'trainer3','trainer','1000','/images/trainer3.jpg'),(24,'trainer4','trainer','1000','/images/trainer4.jpg,');
/*!40000 ALTER TABLE `itemlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'太郎','30','5','素晴らしい商品です','bottom','2023-06-27 16:01:19'),(2,'花子','25','4','良い品質です','bottom','2023-06-27 16:01:19'),(3,'次郎','35','3','普通です','suits','2023-06-27 16:01:19'),(4,'美香','28','5','とてもおすすめです','bottom','2023-06-27 16:01:19'),(5,'健太','40','2','満足していません','shirt','2023-06-27 16:01:19');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-28 15:59:57
