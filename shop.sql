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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (3,'次郎','35','3','普通です','suits','2023-06-27 16:01:19'),(5,'健太','40','2','満足していません','shirt','2023-06-27 16:01:19'),(6,'田中','37','5','よかったです','shirt',NULL),(7,'松本','45','5','とっても','shirt',NULL),(8,'田中','30','5','よかったです','parker','2023-06-07 16:00:00'),(9,'角田','25','4','早かったです','parker','2023-06-07 16:00:00'),(10,'板野','35','3','可愛かったです','shirt','2023-06-07 16:00:00'),(11,'佐々木','28','5','早く届きました','suits','2023-06-07 16:00:00'),(12,'黒野','40','5','綺麗でした','suits','2023-06-07 16:00:00'),(13,'田中','30','3','よかったです','parker','2023-06-07 16:00:00'),(14,'角田','25','4','早かったです','parker','2023-06-07 16:00:00'),(15,'板野','35','3','可愛かったです','shirt','2023-06-07 16:00:00'),(16,'佐々木','28','5','早く届きました','suits','2023-06-07 16:00:00'),(17,'黒野','40','5','綺麗でした','suits','2023-06-07 16:00:00'),(18,'田中','30','3','よかったです','parker','2023-06-30 11:05:21'),(19,'角田','25','4','早かったです','parker','2023-06-30 11:05:21'),(20,'板野','35','3','可愛かったです','shirt','2023-06-30 11:05:21'),(21,'佐々木','28','5','早く届きました','suits','2023-06-30 11:05:21'),(22,'黒野','40','5','綺麗でした','suits','2023-06-30 11:05:21'),(23,'みさと','20','5','一ヶ月で戻ってきたら優しく受け付けてね♡','tshirt','2023-06-29 18:50:00'),(24,'なつみ','20','5','先生のおかげで私でも楽しくわかりやすく学ぶことができました♡ありがとうございます','tshirt','2023-06-29 18:50:00'),(32,'しょうご','20','5','出向先で私に何かあったら、私のPCのHDDを破壊してください。','tshirt','2023-06-30 16:38:09'),(47,'田中','11','5','いい','bottom','2023-06-30 18:55:23'),(50,'田中','33','5','まる','bottom','2023-06-30 19:00:07'),(53,'しゅうへい','20','5','お世話になっております。いつもご指導ありがとうございます。\r\nなかなか理解できず課題がスムーズに進まない状況ですが、私の場合はもう少しお世話になると思いますので、\r\nどうぞよろしくお願い致します。笑\r\nまた、出向先が決まった際にご飯でも行きたいです！','tshirt','2023-07-03 10:12:42');
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

-- Dump completed on 2023-07-03 10:48:20
