CREATE DATABASE  IF NOT EXISTS `farmdb` /*!40100 DEFAULT CHARACTER SET big5 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `farmdb`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: farmdb
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
-- Table structure for table `askhelp`
--

DROP TABLE IF EXISTS `askhelp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `askhelp` (
  `askhelpid` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `subject1` varchar(45) NOT NULL,
  `problem_description` varchar(405) NOT NULL,
  `dateandtime` varchar(45) NOT NULL,
  PRIMARY KEY (`askhelpid`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `askhelp`
--

LOCK TABLES `askhelp` WRITE;
/*!40000 ALTER TABLE `askhelp` DISABLE KEYS */;
INSERT INTO `askhelp` VALUES (8,6,'fsdfs','fsdfsdf','2020-04-26 20:25:11.209'),(9,6,'ersefs','fsdsdfsdf','2020-04-28 02:08:51.196'),(10,6,'df','dfghjnkn \nknm\nnn\n\n\n\nfv\nrv\nr\nv\nrv\nw\nv','2020-04-28 16:32:42.102'),(11,6,'ersese','tdrtrtf','2020-04-28 23:06:21.632'),(15,48,'Fertilers for wheat','Please suggest the fertilers for the good production of Wheat.\n\n','2020-04-29 00:59:51.985');
/*!40000 ALTER TABLE `askhelp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cropprices`
--

DROP TABLE IF EXISTS `cropprices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cropprices` (
  `cropid` int NOT NULL AUTO_INCREMENT,
  `cropname` varchar(100) NOT NULL,
  `cropprice` varchar(45) NOT NULL,
  PRIMARY KEY (`cropid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cropprices`
--

LOCK TABLES `cropprices` WRITE;
/*!40000 ALTER TABLE `cropprices` DISABLE KEYS */;
INSERT INTO `cropprices` VALUES (1,'Wheat','1925'),(2,'Rice','4950'),(3,'Maize','1850'),(4,'Ragi','2544'),(5,'Cotton','3300'),(6,'Arecanut','38000'),(7,'Groundnut','4600'),(8,'Sunflower','3666');
/*!40000 ALTER TABLE `cropprices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'sasd','dasdas','lohith','12345','shags@gama.com','asdasd'),(6,'harish','gowda','harish','1234','h@gmail.com','channagiri'),(7,'hari','prasad','hari','hari123','hariprasad@gmail.com','bangalore'),(8,'krishna','Neelaraddi','krishna','kri123','krishna@gmail.com','hubli'),(9,'sanchith','savio','sanchith','sanchithi12','sanchith@gmail.com','belary'),(10,'Rekha','Javali','rekha','1234','r@gmail.com','r@gmail.com'),(28,'ewerw','werwe','qwer','1234','rewewe','rewewe'),(30,'qwe','qweqw','qwer','1234','qweqw','qweqw'),(31,'eqwq','qewe','qwq1','2312','qweqe','qweqe'),(32,'weqw','qweq','qweq','12312','qweq','qweq'),(33,'werwe','werw','werwr','werw','werw','werw'),(34,'rwew','werw','werwe','wrew','fsds','fsds'),(35,'wewre','wrew','wrew','wer','werw','werw'),(36,'werwewer','erw','re','rwe','wer','wer'),(37,'wew','wrew','wer','wr','werw','werw'),(38,'Rekha','gk','re','12','rekha@g.com','rekha@g.com'),(39,'eqwe','qewq','q','1','qewq','qewq'),(40,'qwe','qwe','qwe','qwe','qwee','qwee'),(41,'qwerty','qwertttt','qwerty','qwert','qwerty','qwerty'),(42,'xyzxz','xzxz','zxzx','zxzx','xzx','xzx'),(43,'xyz','xrrer','xyz','123','xcv@gmail.com','xcv@gmail.com'),(44,'Kisaan','KP','kisan','1234','kisan@gmail.com','kisan@gmail.com'),(48,'Harish','Gowda','harishjavali','1234','harishgowdagp@gmail.com','harishgowdagp@gmail.com');
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

-- Dump completed on 2020-04-29  1:42:49
