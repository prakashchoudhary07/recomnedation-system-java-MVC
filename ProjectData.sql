CREATE DATABASE  IF NOT EXISTS `Project` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Project`;
-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Project
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.10.1

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
-- Table structure for table `Adds`
--

DROP TABLE IF EXISTS `Adds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Adds` (
  `AddsId` varchar(11) NOT NULL,
  `AddsName` varchar(255) NOT NULL,
  `AddsImageUrl` varchar(512) NOT NULL,
  `AddsCategories` int(11) NOT NULL,
  PRIMARY KEY (`AddsId`),
  KEY `AddsEventsCategories_idx` (`AddsCategories`),
  CONSTRAINT `Addskey` FOREIGN KEY (`AddsCategories`) REFERENCES `Categories` (`idCategories`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Adds`
--

LOCK TABLES `Adds` WRITE;
/*!40000 ALTER TABLE `Adds` DISABLE KEYS */;
INSERT INTO `Adds` VALUES ('10ad','TravelAdd2','Images/new-zealand-1882703_1280.jpg',1),('11ad','TravelAdd2','Images/Sarah_Bailey_Braxton_County_WV.jpg',1),('1ad','BikeAdd','Images/060817-2017-superbike-shootout-f.jpg',4),('2ad','BikeAdd2','Images/tumblr_p3qvci4lL51uyzjswo1_640.jpg',4),('3ad','CarAdd1','Images/502868.jpg',3),('4ad','TravelAdd1','Images/103933741-GettyImages-590680682.720x405.jpg',1),('5ad','CarAdd2','Images/cars3-lightning-cruz-beach-700x293.jpg',3),('6ad','FoodAdd1','Images/getty_855098134_353411.jpg',2),('7ad','AnimalAdd1','Images/Home-feature3.jpg',5),('8ad','FoodAdd2','Images/howcuttingdo.jpg',2),('9ad','NatureAdd1','Images/Adds/maxresdefault.jpg',6);
/*!40000 ALTER TABLE `Adds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categories` (
  `idCategories` int(11) NOT NULL AUTO_INCREMENT,
  `CategoriesName` varchar(255) NOT NULL,
  PRIMARY KEY (`idCategories`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Travel'),(2,'Food'),(3,'Cars'),(4,'Bikes'),(5,'Animals'),(6,'Nature');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CategoriesContent`
--

DROP TABLE IF EXISTS `CategoriesContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CategoriesContent` (
  `CategoriesContentId` varchar(11) NOT NULL,
  `ImageName` varchar(255) NOT NULL,
  `ImageURL` varchar(512) NOT NULL,
  `CategoriesId` int(11) NOT NULL,
  PRIMARY KEY (`CategoriesContentId`,`CategoriesId`),
  KEY `idCategories` (`CategoriesId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoriesContent`
--

LOCK TABLES `CategoriesContent` WRITE;
/*!40000 ALTER TABLE `CategoriesContent` DISABLE KEYS */;
INSERT INTO `CategoriesContent` VALUES ('1','Dosa','Images/masaladosa.jpeg',2),('10','Pancakes','Images/fullsizeoutput_178f1.jpg',2),('11','Coconut fruit bowl','Images/DSC_6980.jpg',2),('2','Mustang','Images/cq5dam.web.1280.1280.jpeg',3),('3','Ferrari','Images/images.jpeg',3),('4','Lamborghini','Images/2016-lamborghini-aventador.jpg',3),('5','R1 Yamaha','Images/r1-banner.jpg',4),('6','R6 Yamaha','Images/2014_Yamaha_YZF-R6.jpg',4),('7','Apache 310','Images/index.jpeg',4),('8','Bike','Images/0b15d2224a3a6e196c2aa79a9966da80.jpg',4),('9','Bike','Images/4f5a4f1d9e5c45a57279678117fe63f0.jpg',4);
/*!40000 ALTER TABLE `CategoriesContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInfo`
--

DROP TABLE IF EXISTS `UserInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserInfo` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `EmailId` varchar(45) NOT NULL,
  `Password` varchar(16) NOT NULL,
  PRIMARY KEY (`idUser`,`Username`,`EmailId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInfo`
--

LOCK TABLES `UserInfo` WRITE;
/*!40000 ALTER TABLE `UserInfo` DISABLE KEYS */;
INSERT INTO `UserInfo` VALUES (1,'prakash','prakash@email.com','prakash1'),(2,'sachin','sachindesai7240@gmail.com','reset123'),(3,'nazil','nzilahmed@gmail.com','nazil'),(4,'fariya','fariya@gmail.com','23456'),(5,'sarath','sarathm912@gmail.in','23456'),(6,'abhay740','shah@gmail.com','abhay'),(7,'shashanka','shashanka@gmail.com','adiga'),(8,'nazil123','123@mail.com','123456789'),(9,'shivali','shivalishakya@gmail.com','234');
/*!40000 ALTER TABLE `UserInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInterest`
--

DROP TABLE IF EXISTS `UserInterest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserInterest` (
  `UserName` varchar(45) NOT NULL,
  `CategoriesId` int(11) NOT NULL,
  `CategoriesContentId` varchar(11) NOT NULL,
  `UpdatedTime` datetime DEFAULT NULL,
  KEY `Username_idx` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInterest`
--

LOCK TABLES `UserInterest` WRITE;
/*!40000 ALTER TABLE `UserInterest` DISABLE KEYS */;
INSERT INTO `UserInterest` VALUES ('fariya',4,'5',NULL),('fariya',2,'1',NULL),('sarath',2,'1',NULL),('sarath',2,'1',NULL),('sarath',2,'1',NULL),('fariya',2,'1',NULL),('fariya',3,'2',NULL),('fariya',3,'2',NULL),('fariya',4,'5',NULL),('fariya',2,'1',NULL),('fariya',2,'1',NULL),('fariya',2,'1',NULL),('fariya',3,'2',NULL),('shashanka',4,'8','2018-12-04 12:05:25'),('shivali',2,'11','2018-12-04 13:48:08'),('prakash',2,'1','2018-12-04 17:14:32'),('prakash',4,'8','2018-12-04 17:15:40');
/*!40000 ALTER TABLE `UserInterest` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`prakash`@`localhost`*/ /*!50003 TRIGGER `Project`.`UserInterest_BEFORE_INSERT` BEFORE INSERT ON `UserInterest` FOR EACH ROW
BEGIN
	SET NEW.UpdatedTime = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'Project'
--

--
-- Dumping routines for database 'Project'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddsRecommend` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`prakash`@`localhost` PROCEDURE `AddsRecommend`(IN username1 CHAR(45))
BEGIN
		select * 
from Project.Adds
where Adds.AddsCategories in (
	select Project.UserInterest.CategoriesId 
    from Project.UserInterest
    where UserName = username1)
order by rand() ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CategoriesDisplay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`prakash`@`localhost` PROCEDURE `CategoriesDisplay`(in id1 int)
BEGIN
SELECT * FROM Project.CategoriesContent
where CategoriesId = id1
order by rand() ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MyInterst` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`prakash`@`localhost` PROCEDURE `MyInterst`(in username1 char(45))
BEGIN
select * 
from CategoriesContent
where CategoriesContentId in (
	select CategoriesContentId
    from UserInterest
    where UserName = username1)
    order by rand() ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-05 17:06:12
