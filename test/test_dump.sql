-- MySQL dump 10.13  Distrib 5.7.21, for osx10.13 (x86_64)
--
-- Host: localhost    Database: model_manager
-- ------------------------------------------------------
-- Server version	5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` varchar(50) NOT NULL,
  `pw` varchar(45) NOT NULL,
  `role` varchar(15) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('fujiwara','90b61e21b5184a4145c58a27db50fffa7e2820cf','operator'),('kim','fa4ec27aa315d68c3b2aa353bbd4a597c4c9331f','admin'),('sh1','e30b665c6586c07c66ecb9fa95dd3de593417654','operator');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_models`
--

DROP TABLE IF EXISTS `working_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `working_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `status` int(1) DEFAULT '0',
  `item_name` varchar(200) DEFAULT '',
  `brand` varchar(100) DEFAULT '',
  `category` varchar(45) DEFAULT '',
  `kind` varchar(45) DEFAULT '',
  `gender` varchar(10) DEFAULT 'unisex',
  `tag` varchar(500) DEFAULT '',
  `message` varchar(1000) DEFAULT '',
  `scan_obj` varchar(400) DEFAULT '',
  `scan_mtl` varchar(400) DEFAULT '',
  `scan_png` varchar(400) DEFAULT '',
  `work` varchar(400) DEFAULT '',
  `publish_gltl` varchar(2000) DEFAULT '',
  `publish_mtl` varchar(2000) DEFAULT '',
  `error` varchar(500) DEFAULT '',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename_UNIQUE` (`name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_models`
--

LOCK TABLES `working_models` WRITE;
/*!40000 ALTER TABLE `working_models` DISABLE KEYS */;
INSERT INTO `working_models` VALUES (18,'areuiuire/',9,'カッコいい服','mars','ジャケット','tops','men','zara , aa','動作検証用データ','https://storage.cloud.google.com/kimakuri_sandbox/areuiuire/abc.obj','https://storage.cloud.google.com/kimakuri_sandbox/areuiuire/xxxx.mtl','https://storage.cloud.google.com/kimakuri_sandbox/areuiuire/aec.png','https://storage.cloud.google.com/kimakuri_model/https://storage.cloud.google.com/kimakuri_model/areuiuire/archive.zip','https://storage.cloud.google.com/kimakuri_publish/areuiuire/dummy2/pub/a.gltl','https://storage.cloud.google.com/kimakuri_publish/areuiuire/dummy2/pub/ssssfer.mtl','','2018-04-23 11:56:40','2018-04-23 11:56:40'),(22,'abc/onepiece/',9,'abcクッキー','ふつう','ワンピース','tops','wemen','pink, girly, kids','動作検証用データ','https://storage.cloud.google.com/kimakuri_sandbox/abc/onepiece/onepice.obj','https://storage.cloud.google.com/kimakuri_sandbox/abc/onepiece/onepice.mtl','https://storage.cloud.google.com/kimakuri_sandbox/abc/onepiece/onepice.png','https://storage.cloud.google.com/kimakuri_model/abc/onepiece/archive.zip','aaaa','','','2018-04-27 03:22:33','2018-04-27 03:22:33'),(36,'aaaaaa',9,'','','','','unisex','','動作検証用データ','','','','','','','','2018-04-27 07:43:43','2018-04-27 07:43:43'),(37,'dummy/',9,'','','','','unisex','','動作検証用データ','https://storage.cloud.google.com/3dscan/dummy/abc.obj','https://storage.cloud.google.com/3dscan/dummy/xxxx.mtl','https://storage.cloud.google.com/3dscan/dummy/aec.png','https://storage.cloud.google.com/kimakuri_model/dummy/archive.zip','https://storage.cloud.google.com/kimakuri_publish/dummy/dummy2/pub/a.gltl','https://storage.cloud.google.com/kimakuri_publish/dummy/dummy2/pub/ssssfer.mtl','','2018-05-02 01:41:09','2018-05-02 01:41:09'),(40,'onepiece0503/',0,'','','','','unisex','','','https://storage.cloud.google.com/3dscan/onepiece0503/onepice.obj','https://storage.cloud.google.com/3dscan/onepiece0503/onepice.mtl','https://storage.cloud.google.com/3dscan/onepiece0503/onepice.png','https://storage.cloud.google.com/kimakuri_model/onepiece0503/archive.zip','https://storage.cloud.google.com/kimakuri_publish/onepiece0503/onepiece0503/pub/a.gltl','https://storage.cloud.google.com/kimakuri_publish/onepiece0503/onepiece0503/pub/b.mtl','','2018-05-03 04:45:42','2018-05-03 04:45:42'),(43,'model0503/',0,'','','','','unisex','','','https://storage.cloud.google.com/3dscan/model0503/model_0409%2Fmodel_003.obj','https://storage.cloud.google.com/3dscan/model0503/model_0409%2Fmodel_003.mtl','https://storage.cloud.google.com/3dscan/model0503/model_0409%2Fmodel_003.png','https://storage.cloud.google.com/kimakuri_model/model0503/archive.zip','https://storage.cloud.google.com/kimakuri_publish/model0503/model0503/pub/a.gltl','https://storage.cloud.google.com/kimakuri_publish/model0503/model0503/pub/onepice.mtl','','2018-05-03 04:59:23','2018-05-03 04:59:23');
/*!40000 ALTER TABLE `working_models` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-15 18:30:06
