-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: ThunderDatabase
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `track_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES (1,3,'tra.42030192'),(2,3,'tra.146138920'),(3,3,'tra.41005642'),(4,3,'tra.61509649'),(21,14,'tra.283060810'),(22,14,'tra.283060810'),(23,14,'tra.283060810'),(24,14,'tra.283060810'),(27,14,'tra.2020413'),(28,14,'tra.179601368'),(29,14,'tra.69423225'),(30,14,'tra.51806487'),(31,14,'tra.264525109'),(32,14,'tra.1919316'),(34,14,'tra.151869968'),(35,14,'tra.113160350'),(36,14,'tra.190834610'),(39,15,'tra.209392309'),(40,15,'tra.2011077'),(41,15,'tra.190834602'),(42,15,'tra.38874180'),(43,15,'tra.470803074'),(44,14,'tra.264525103'),(45,14,'tra.390180942'),(46,14,'tra.209391999');
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,14,'titi',47,'Pop'),(2,15,'tutu',96,'Rock'),(3,15,'tutu',69,'Survival'),(4,15,'tutu',24,'Children'),(5,14,'clrko',0,'Pop'),(6,14,NULL,14,NULL),(7,14,NULL,NULL,NULL),(8,14,NULL,NULL,NULL);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'pinto','coco','2020-05-11 14:48:41'),(2,'seb','toto','2020-05-11 14:48:41'),(3,'clrko','roro','2020-05-11 14:48:41'),(4,'test','$2b$10$a2cN5p.UKg/rBtfrTVMx9esxoj8q/9kfk26o1quJqBHenYUuqtaEy','2020-05-12 12:29:30'),(5,'test1','$2b$10$0jKxtoj4kMsG7WYkO7Uev.V4hqf/NfuSn6vNUsKp3U7Y5h0jovuQi','2020-05-12 12:33:10'),(6,'test3','$2b$10$dC67hTP3fck8KDvtHEF/2uOf3z3Z.9FmGALoBMFDWrxoHF4XvQpWK','2020-05-12 12:37:51'),(7,'test3','$2b$10$rWusQ7WQifF3MfGjasIp1.86rrcV8do0GkGPbsFyKmU9N6lGMfQK.','2020-05-12 12:39:18'),(8,'clrko','$2b$10$d7U7IetAvm.m5JUkVMAP6ueNIIvA9UwX3Ch3NKwrpVMzk.1aOMc3C','2020-05-12 12:42:38'),(9,'clrko','$2b$10$x15eV.axTKQwr0pesOWa6OthaluPXoRwhwrg7.1x3VcFgDujkphsq','2020-05-12 12:43:04'),(10,'clrko','$2b$10$.UREVRGTzvBO9f0Fa7Oz8.zLdcqaSsjh.6V8LF.jot93U5j7FPpCm','2020-05-12 12:43:18'),(11,'clrko','$2b$10$X60uO8gqtRb/s2vaIXg3x.IyXacSG4A8oBvlD.HGzjQdsMgvx/ASy','2020-05-12 12:43:50'),(12,'clrko','$2b$10$.bOX55XkoBq29WgSvgdCsu/6YERrJauE.yNNU5LdJpDoXy2ohwd2a','2020-05-12 12:44:11'),(13,'erfger','$2b$10$DYsP7To710hddQXFJDGmFOmrU/TnbRRvaJUeWfnmn1FoH8jPBXNc2','2020-05-12 12:44:39'),(14,'titi','$2b$10$bNmxIm0syD5b.hz8EDidsucYC6A2WEMbUItchN9Q7iSA4z.j6c5sm','2020-05-12 13:24:42'),(15,'tutu','$2b$10$Q8ZGS36g.bRzbK2DuUvX0.10kTr0/xAKqrY3Hy6nZ1VZ1eikmH2de','2020-05-12 13:30:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-14 22:31:12
