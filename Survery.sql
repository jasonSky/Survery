-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: survery
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `Papers`
--

DROP TABLE IF EXISTS `Papers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Papers` (
  `paperId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `paperTitle` varchar(100) DEFAULT NULL,
  `paperSummary` varchar(300) DEFAULT NULL,
  `paperStartDate` datetime DEFAULT NULL,
  `paperEndDate` datetime DEFAULT NULL,
  `paperBg` varchar(40) DEFAULT NULL,
  `paperType` int(11) DEFAULT NULL,
  `paperStatus` int(11) DEFAULT NULL,
  `paperCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`paperId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Papers`
--

LOCK TABLES `Papers` WRITE;
/*!40000 ALTER TABLE `Papers` DISABLE KEYS */;
INSERT INTO `Papers` VALUES (1,1,'Test paper','This is a test paper! Enjoy it!','2013-05-01 12:00:00','2013-05-10 12:00:00','bg_01.png',1,1,99),(2,3,'test','test','2018-12-20 21:54:00','2019-01-19 21:54:00','img/06.jpg',2,0,0),(3,3,'test','test','2018-12-20 22:07:50','2019-01-19 22:07:50','img/06.jpg',1,0,0);
/*!40000 ALTER TABLE `Papers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Questions`
--

DROP TABLE IF EXISTS `Questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Questions` (
  `qstId` int(11) NOT NULL AUTO_INCREMENT,
  `paperId` int(11) DEFAULT NULL,
  `qstType` int(11) DEFAULT NULL,
  `qstTile` varchar(100) DEFAULT NULL,
  `qstOption` varchar(1000) DEFAULT NULL,
  `qstAnswer` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`qstId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Questions`
--

LOCK TABLES `Questions` WRITE;
/*!40000 ALTER TABLE `Questions` DISABLE KEYS */;
INSERT INTO `Questions` VALUES (1,1,1,'First Question','A:刘红军;B:李朋伟 ;C:袁佑 ;D:郭宝星','4;2;3;2'),(2,2,1,'test','a#b#c#d','0&0&0&0'),(3,3,1,'test1','a#b#c#d','0&0&0&0'),(4,3,1,'testqqq','江#河#湖#海','0&0&0&0');
/*!40000 ALTER TABLE `Questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(40) DEFAULT NULL,
  `userPassword` varchar(40) DEFAULT NULL,
  `userIcon` varchar(40) DEFAULT NULL,
  `userMail` varchar(40) DEFAULT NULL,
  `userReg` datetime DEFAULT NULL,
  `userSex` int(11) DEFAULT NULL,
  `userRole` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','admin','admin.png','admin@singlex.net','2012-12-12 12:12:12',1,0),(3,'jason','jason','default_icon.png','ssssssss@ss','2018-12-20 21:44:23',1,1);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 22:33:40
