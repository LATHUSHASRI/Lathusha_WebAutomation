-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: pos_user_identity
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Monex','MN');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'$2a$10$WE7En9THsCgHuv5q23b/A.oUdeMSRTJvnREqpOJaXP.1.wYYFiY3K','testalgorial@gmail.com',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1,1,1),(2,2,'$2a$10$WE7En9THsCgHuv5q23b/A.oUdeMSRTJvnREqpOJaXP.1.wYYFiY3K','madusanka_agent@codelantic.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_login_details`
--

LOCK TABLES `user_login_details` WRITE;
/*!40000 ALTER TABLE `user_login_details` DISABLE KEYS */;
INSERT INTO `user_login_details` VALUES (1,'test@code.com','0.0.0.0.0',NULL,NULL,1,2),(2,'user@codexxxx.com',NULL,NULL,NULL,0,NULL),(3,'user@code.com','0:0:0:0:0:0:0:1','2021-04-09','07:16:51',0,1),(4,'alpha@code.com','0:0:0:0:0:0:0:1','2021-04-09','17:25:35',1,0),(5,'testalgorial@gmail.com','0:0:0:0:0:0:0:1','2021-05-27','08:33:37',1,0);
/*!40000 ALTER TABLE `user_login_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_login_details_h`
--

LOCK TABLES `user_login_details_h` WRITE;
/*!40000 ALTER TABLE `user_login_details_h` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_login_details_h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,'Core Admin'),(2,'Agent Admin'),(3,'Customer'),(4,'Internal'),(5,'Agent User'),(6,'Sub Agent'),(7,'Sub Agent User'),(8,'Agent Customer');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-28 14:13:02
