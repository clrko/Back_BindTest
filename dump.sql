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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES (1,13,'tra.6624715'),(2,13,'tra.41005650'),(3,13,'tra.408277546'),(4,13,'tra.264525103'),(5,13,'tra.68528991'),(6,13,'tra.335870850'),(7,13,'tra.314832319'),(8,13,'tra.163854736'),(9,14,'tra.253965727'),(10,14,'tra.113160018'),(11,14,'tra.231411447'),(13,14,'tra.404757762'),(14,14,'tra.422265053'),(15,14,'tra.250973808'),(16,14,'tra.245690079'),(17,14,'tra.401394036'),(18,14,'tra.283060820'),(19,14,'tra.243984588'),(20,14,'tra.68528995'),(21,14,'tra.146138920'),(23,15,'tra.1919312'),(24,15,'tra.67547522'),(25,15,'tra.68528991'),(27,15,'tra.51806487'),(28,15,'tra.2819341'),(29,15,'tra.2020418'),(30,15,'tra.253965727'),(31,15,'tra.187042431'),(32,15,'tra.2020418'),(33,16,'tra.290429761'),(34,16,'tra.51806487'),(35,16,'tra.41005642'),(36,16,'tra.7477273'),(37,16,'tra.420282798'),(38,16,'tra.434528459'),(39,17,'tra.2011082'),(41,17,'tra.340035725'),(42,17,'tra.20455886'),(43,17,'tra.221222031'),(44,17,'tra.1919312'),(45,17,'tra.2452197'),(46,17,'tra.253965727'),(47,13,'tra.104365166'),(48,13,'tra.6528356');
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
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,1,'Aristide',92,'Pop'),(2,2,'Celine',108,'Pop'),(3,3,'Emily',125,'Pop'),(4,4,'Florent',18,'Pop'),(5,5,'Jerome',144,'Pop'),(6,6,'Johnny',140,'Pop'),(7,7,'Juba',87,'Pop'),(8,8,'Mamed',38,'Pop'),(9,9,'Paracelse',94,'Pop'),(10,10,'Tristan',54,'Pop'),(11,11,'Yasmine',71,'Pop'),(12,1,'Aristide',19,'Rock'),(13,2,'Celine',88,'Rock'),(14,3,'Emily',43,'Rock'),(15,4,'Florent',47,'Rock'),(16,5,'Jerome',104,'Rock'),(17,6,'Johnny',73,'Rock'),(18,7,'Juba',108,'Rock'),(19,8,'Mamed',146,'Rock'),(20,9,'Paracelse',74,'Rock'),(21,10,'Tristan',29,'Rock'),(22,11,'Yasmine',148,'Rock'),(23,1,'Aristide',1,'Alternative'),(24,2,'Celine',61,'Alternative'),(25,3,'Emily',66,'Alternative'),(26,4,'Florent',141,'Alternative'),(27,5,'Jerome',38,'Alternative'),(28,6,'Johnny',29,'Alternative'),(29,7,'Juba',92,'Alternative'),(30,8,'Mamed',15,'Alternative'),(31,9,'Paracelse',58,'Alternative'),(32,10,'Tristan',25,'Alternative'),(33,11,'Yasmine',145,'Alternative'),(34,1,'Aristide',7,'Rap/Hip-Hop'),(35,2,'Celine',17,'Rap/Hip-Hop'),(36,3,'Emily',89,'Rap/Hip-Hop'),(37,4,'Florent',111,'Rap/Hip-Hop'),(38,5,'Jerome',146,'Rap/Hip-Hop'),(39,6,'Johnny',84,'Rap/Hip-Hop'),(40,7,'Juba',21,'Rap/Hip-Hop'),(41,8,'Mamed',111,'Rap/Hip-Hop'),(42,9,'Paracelse',104,'Rap/Hip-Hop'),(43,10,'Tristan',130,'Rap/Hip-Hop'),(44,11,'Yasmine',43,'Rap/Hip-Hop'),(45,1,'Aristide',56,'Soul/R&B'),(46,2,'Celine',13,'Soul/R&B'),(47,3,'Emily',112,'Soul/R&B'),(48,4,'Florent',147,'Soul/R&B'),(49,5,'Jerome',31,'Soul/R&B'),(50,6,'Johnny',84,'Soul/R&B'),(51,7,'Juba',129,'Soul/R&B'),(52,8,'Mamed',36,'Soul/R&B'),(53,9,'Paracelse',87,'Soul/R&B'),(54,10,'Tristan',66,'Soul/R&B'),(55,11,'Yasmine',131,'Soul/R&B'),(56,1,'Aristide',93,'Country'),(57,2,'Celine',53,'Country'),(58,3,'Emily',120,'Country'),(59,4,'Florent',99,'Country'),(60,5,'Jerome',30,'Country'),(61,6,'Johnny',69,'Country'),(62,7,'Juba',62,'Country'),(63,8,'Mamed',26,'Country'),(64,9,'Paracelse',3,'Country'),(65,10,'Tristan',73,'Country'),(66,11,'Yasmine',22,'Country'),(67,1,'Aristide',137,'Jazz'),(68,2,'Celine',108,'Jazz'),(69,3,'Emily',120,'Jazz'),(70,4,'Florent',71,'Jazz'),(71,5,'Jerome',42,'Jazz'),(72,6,'Johnny',105,'Jazz'),(73,7,'Juba',4,'Jazz'),(74,8,'Mamed',0,'Jazz'),(75,9,'Paracelse',16,'Jazz'),(76,10,'Tristan',88,'Jazz'),(77,11,'Yasmine',39,'Jazz'),(78,1,'Aristide',139,'Electronic'),(79,2,'Celine',129,'Electronic'),(80,3,'Emily',89,'Electronic'),(81,4,'Florent',56,'Electronic'),(82,5,'Jerome',4,'Electronic'),(83,6,'Johnny',143,'Electronic'),(84,7,'Juba',77,'Electronic'),(85,8,'Mamed',26,'Electronic'),(86,9,'Paracelse',11,'Electronic'),(87,10,'Tristan',61,'Electronic'),(88,11,'Yasmine',46,'Electronic'),(89,1,'Aristide',88,'Latin'),(90,2,'Celine',69,'Latin'),(91,3,'Emily',91,'Latin'),(92,4,'Florent',72,'Latin'),(93,5,'Jerome',145,'Latin'),(94,6,'Johnny',141,'Latin'),(95,7,'Juba',111,'Latin'),(96,8,'Mamed',44,'Latin'),(97,9,'Paracelse',118,'Latin'),(98,10,'Tristan',130,'Latin'),(99,11,'Yasmine',37,'Latin'),(100,1,'Aristide',139,'World'),(101,2,'Celine',121,'World'),(102,3,'Emily',66,'World'),(103,4,'Florent',9,'World'),(104,5,'Jerome',46,'World'),(105,6,'Johnny',7,'World'),(106,7,'Juba',96,'World'),(107,8,'Mamed',81,'World'),(108,9,'Paracelse',134,'World'),(109,10,'Tristan',138,'World'),(110,11,'Yasmine',121,'World'),(111,1,'Aristide',123,'Reggae'),(112,2,'Celine',77,'Reggae'),(113,3,'Emily',61,'Reggae'),(114,4,'Florent',6,'Reggae'),(115,5,'Jerome',13,'Reggae'),(116,6,'Johnny',100,'Reggae'),(117,7,'Juba',81,'Reggae'),(118,8,'Mamed',106,'Reggae'),(119,9,'Paracelse',14,'Reggae'),(120,10,'Tristan',17,'Reggae'),(121,11,'Yasmine',118,'Reggae'),(122,1,'Aristide',141,'Classical'),(123,2,'Celine',23,'Classical'),(124,3,'Emily',83,'Classical'),(125,4,'Florent',86,'Classical'),(126,5,'Jerome',21,'Classical'),(127,6,'Johnny',148,'Classical'),(128,7,'Juba',29,'Classical'),(129,8,'Mamed',98,'Classical'),(130,9,'Paracelse',63,'Classical'),(131,10,'Tristan',125,'Classical'),(132,11,'Yasmine',126,'Classical'),(133,1,'Aristide',3,'Oldies'),(134,2,'Celine',30,'Oldies'),(135,3,'Emily',67,'Oldies'),(136,4,'Florent',62,'Oldies'),(137,5,'Jerome',60,'Oldies'),(138,6,'Johnny',47,'Oldies'),(139,7,'Juba',71,'Oldies'),(140,8,'Mamed',24,'Oldies'),(141,9,'Paracelse',132,'Oldies'),(142,10,'Tristan',35,'Oldies'),(143,11,'Yasmine',97,'Oldies'),(144,1,'Aristide',77,'New Age'),(145,2,'Celine',135,'New Age'),(146,3,'Emily',125,'New Age'),(147,4,'Florent',49,'New Age'),(148,5,'Jerome',30,'New Age'),(149,6,'Johnny',60,'New Age'),(150,7,'Juba',9,'New Age'),(151,8,'Mamed',142,'New Age'),(152,9,'Paracelse',67,'New Age'),(153,10,'Tristan',75,'New Age'),(154,11,'Yasmine',89,'New Age'),(155,1,'Aristide',114,'Christian/Gospel'),(156,2,'Celine',11,'Christian/Gospel'),(157,3,'Emily',118,'Christian/Gospel'),(158,4,'Florent',100,'Christian/Gospel'),(159,5,'Jerome',105,'Christian/Gospel'),(160,6,'Johnny',116,'Christian/Gospel'),(161,7,'Juba',4,'Christian/Gospel'),(162,8,'Mamed',99,'Christian/Gospel'),(163,9,'Paracelse',89,'Christian/Gospel'),(164,10,'Tristan',141,'Christian/Gospel'),(165,11,'Yasmine',78,'Christian/Gospel'),(166,1,'Aristide',62,'Blues'),(167,2,'Celine',54,'Blues'),(168,3,'Emily',15,'Blues'),(169,4,'Florent',116,'Blues'),(170,5,'Jerome',87,'Blues'),(171,6,'Johnny',96,'Blues'),(172,7,'Juba',108,'Blues'),(173,8,'Mamed',130,'Blues'),(174,9,'Paracelse',66,'Blues'),(175,10,'Tristan',46,'Blues'),(176,11,'Yasmine',30,'Blues'),(177,1,'Aristide',17,'Folk'),(178,2,'Celine',149,'Folk'),(179,3,'Emily',12,'Folk'),(180,4,'Florent',137,'Folk'),(181,5,'Jerome',4,'Folk'),(182,6,'Johnny',34,'Folk'),(183,7,'Juba',57,'Folk'),(184,8,'Mamed',7,'Folk'),(185,9,'Paracelse',135,'Folk'),(186,10,'Tristan',85,'Folk'),(187,11,'Yasmine',0,'Folk'),(188,1,'Aristide',43,'Vocal/Easy Listening'),(189,2,'Celine',91,'Vocal/Easy Listening'),(190,3,'Emily',57,'Vocal/Easy Listening'),(191,4,'Florent',0,'Vocal/Easy Listening'),(192,5,'Jerome',102,'Vocal/Easy Listening'),(193,6,'Johnny',75,'Vocal/Easy Listening'),(194,7,'Juba',133,'Vocal/Easy Listening'),(195,8,'Mamed',21,'Vocal/Easy Listening'),(196,9,'Paracelse',120,'Vocal/Easy Listening'),(197,10,'Tristan',8,'Vocal/Easy Listening'),(198,11,'Yasmine',37,'Vocal/Easy Listening'),(199,1,'Aristide',50,'Metal'),(200,2,'Celine',19,'Metal'),(201,3,'Emily',29,'Metal'),(202,4,'Florent',147,'Metal'),(203,5,'Jerome',114,'Metal'),(204,6,'Johnny',53,'Metal'),(205,7,'Juba',136,'Metal'),(206,8,'Mamed',127,'Metal'),(207,9,'Paracelse',100,'Metal'),(208,10,'Tristan',29,'Metal'),(209,11,'Yasmine',115,'Metal'),(210,1,'Aristide',128,'Soundtracks'),(211,2,'Celine',139,'Soundtracks'),(212,3,'Emily',49,'Soundtracks'),(213,4,'Florent',131,'Soundtracks'),(214,5,'Jerome',101,'Soundtracks'),(215,6,'Johnny',43,'Soundtracks'),(216,7,'Juba',34,'Soundtracks'),(217,8,'Mamed',97,'Soundtracks'),(218,9,'Paracelse',124,'Soundtracks'),(219,10,'Tristan',12,'Soundtracks'),(220,11,'Yasmine',7,'Soundtracks'),(221,1,'Aristide',36,'Children'),(222,2,'Celine',119,'Children'),(223,3,'Emily',146,'Children'),(224,4,'Florent',115,'Children'),(225,5,'Jerome',13,'Children'),(226,6,'Johnny',51,'Children'),(227,7,'Juba',26,'Children'),(228,8,'Mamed',10,'Children'),(229,9,'Paracelse',53,'Children'),(230,10,'Tristan',76,'Children'),(231,11,'Yasmine',96,'Children'),(232,1,'Aristide',41,'Survival'),(233,2,'Celine',25,'Survival'),(234,3,'Emily',68,'Survival'),(235,4,'Florent',46,'Survival'),(236,5,'Jerome',101,'Survival'),(237,6,'Johnny',45,'Survival'),(238,7,'Juba',148,'Survival'),(239,8,'Mamed',122,'Survival'),(240,9,'Paracelse',129,'Survival'),(241,10,'Tristan',89,'Survival'),(242,11,'Yasmine',132,'Survival'),(243,12,'Sebastien',103,'Pop'),(244,13,'claire',105,'Pop'),(245,13,'claire',0,'Survival'),(246,14,'titi',149,'Survival'),(247,14,'titi',119,'Pop'),(248,15,'maxime',122,'Pop'),(249,15,'maxime',74,'Survival'),(250,16,'stephane',14,'Pop'),(251,16,'stephane',0,'Survival'),(252,17,'aweb',60,'Soundtracks'),(253,17,'aweb',84,'Rock'),(254,17,'aweb',114,'Survival'),(255,17,'aweb',82,'Pop'),(256,17,NULL,NULL,NULL);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Aristide','$2b$10$kkoeI1tqcMWFZgdj63phFOdMjUhgePcO4G4fFKVpQZbJEOL3ogoQK','2020-05-14 21:26:48'),(2,'Celine','$2b$10$O/csNX7hHlyolX9ODo8N/OB9cezwz1c3lB7SvKFb5.yYmczv7MUnu','2020-05-14 21:28:56'),(3,'Emily','$2b$10$uStjY7nLdyVaEtJSIRbwR.T.FaH2/379m6BatpWWqyzZEvVSoo5la','2020-05-14 21:29:31'),(4,'Florent','$2b$10$Js1ERFvXZuWLkbX2raTfoum7eTnwj.EDO.8FkdQgr40rmuJ4WkoWO','2020-05-14 21:29:44'),(5,'Jerome','$2b$10$DnknssMse9E3Rav8Z6VqHuWWLv7nVO9E7JPjNK6/9bumsHKJq/fkG','2020-05-14 21:29:56'),(6,'johnny','$2b$10$FzNWKWGL2StEJo7ih9SSzukNOxjfkWepPBlTBUefa9Zzli6HSdxSK','2020-05-14 21:30:16'),(7,'Juba','$2b$10$gyJ/.Y3SOJhepV1cnhS4VeBHbvQEm5U5cf5aAPp3vH445URQwSaSK','2020-05-14 21:30:33'),(8,'Mamed','$2b$10$EiLFUExAOSbrKMkBqHJuReJRowWXvcm3z2w53EKhcek8nhFlmfeiW','2020-05-14 21:30:46'),(9,'Paracelse','$2b$10$lKpA79tbfUaMNSi2c3mQEOFXNB12HQQoGIM/yjJqC7OwwUZwuuKFC','2020-05-14 21:31:10'),(10,'Tristan','$2b$10$R8sYgcAFN4jS/MrDio7V1eE6cuBv7JdDOp42rdb/RxTPdhSKKBD5W','2020-05-14 21:31:23'),(11,'Yasmine','$2b$10$X1BenZBkVbxgdyYlgrByB.GxHbWeTEJrfQVI6tU2vZejy39wsZiY6','2020-05-14 21:31:39'),(12,'Sebastien','$2b$10$Q0MmAuNYAdkkK4w7ZbDGl.4Gq0n/eCCWS3wwIQGIF2/rzH8EUuWkG','2020-05-14 21:46:05'),(13,'claire','$2b$10$anGXOqrPJpHdZqQNXBV/8u0ZUZdAmxHN8bBmaL5etjb2Byii4RNgC','2020-05-14 22:50:29'),(14,'titi','$2b$10$yTBgmQupzGiEOYgjM3OGWehvFDif2ff5arzRcgh9e2O83DPpE8Yhe','2020-05-15 06:19:54'),(15,'maxime','$2b$10$HBJkvK9ps0EZc3vAY7.AyOAx/jH0YAJ3kkiu5wCLSlwRDtkeVbypq','2020-05-15 10:12:24'),(16,'stephane','$2b$10$p57WkSpTjee04YPEs.bIP.ycID/VKdBRZ7QoPqQoDKymM/CtPtVnG','2020-05-15 14:45:03'),(17,'aweb','$2b$10$jEPiIuCiGoae.XY1TryxJO6H7q38Ez9bIP0.3OHUC9XDLWTayTXie','2020-05-18 07:18:25');
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

-- Dump completed on 2020-05-22 15:36:44
