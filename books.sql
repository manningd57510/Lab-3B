-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	5.6.24-log

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
-- Current Database: `books`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `books` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `books`;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `bookID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `author2` varchar(255) DEFAULT NULL,
  `yearPublished` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Journey Through Genius The Great Theorems of Mathematics','William Dunham','None',1990),(2,'Why I am Not a Christian','Bertrand Russell','None',1957),(3,'Digital Electronics ','Roger L. Tokheim','None',1990),(4,'Mechanics of Materials','Ferdinand P. Beer','\"E. Russell Johnston',0),(5,'Misquoting Jeasus','Bart D. Ehrman','',2005),(6,'Isaac Newton','James Gleick','None',2003),(7,'Rocky Marciano','Russell Sullivan','None',2005),(8,'Darwin\'s Dangerous Idea--Evolution and the Meaning of Life','Daniel C. Dennett','None',1995),(9,'It','Stephen King','None',1986);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booksubject`
--

DROP TABLE IF EXISTS `booksubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booksubject` (
  `bookID` int(11) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `futureMetadata` blob,
  UNIQUE KEY `pkbooksubject` (`bookID`,`subjectID`),
  KEY `subjectID` (`subjectID`),
  CONSTRAINT `booksubject_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`),
  CONSTRAINT `booksubject_ibfk_2` FOREIGN KEY (`subjectID`) REFERENCES `subject1` (`subjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booksubject`
--

LOCK TABLES `booksubject` WRITE;
/*!40000 ALTER TABLE `booksubject` DISABLE KEYS */;
INSERT INTO `booksubject` VALUES (1,3,''),(1,4,''),(1,10,''),(2,6,''),(2,10,''),(3,1,''),(3,2,''),(3,10,''),(4,1,''),(4,2,''),(4,10,''),(5,8,''),(5,10,''),(6,5,''),(6,10,''),(7,5,''),(7,10,''),(8,6,''),(8,10,''),(9,7,''),(9,9,'');
/*!40000 ALTER TABLE `booksubject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject1`
--

DROP TABLE IF EXISTS `subject1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject1` (
  `subjectID` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`subjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject1`
--

LOCK TABLES `subject1` WRITE;
/*!40000 ALTER TABLE `subject1` DISABLE KEYS */;
INSERT INTO `subject1` VALUES (1,'Physics'),(2,'Engineering'),(3,'Mathematics'),(4,'History'),(5,'Biography'),(6,'Philosophy'),(7,'Horror'),(8,'Religion'),(9,'Fiction'),(10,'Non-Fiction');
/*!40000 ALTER TABLE `subject1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-16 18:30:18
