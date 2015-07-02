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
  `category` varchar(255) DEFAULT NULL,
  `shelfID` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookID`),
  KEY `shelfID` (`shelfID`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`shelfID`) REFERENCES `shelf` (`shelfID`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Physics for Sceintists and Engineers','Paul Fishbane','Stephen Thornton',1996,'Non-Fiction',1),(2,'Commodore 64 Data Files A Basic Tutorial','David Miller','None',1984,'Non-Fiction',2),(3,'Journey Through Genius The Great Theorems of Mathematics','William Dunham','None',1990,'Non-Fiction',2),(4,'Starting Electronics','Keith Brindley','None',2004,'Non-Fiction',2),(5,'Why I am Not a Christian','Bertrand Russell','None',1957,'Non-Fiction',2),(6,'Simply Sushi','Steven Pallett','None',2006,'Non-Fiction',2),(7,'Roget\'s International Thesaurus','Robert L. Chapman','None',1977,'Non-Fiction',2),(9,'Fundamentals of Heat and Mass Transfer','Frank P. Incropera','David P. DeWitt',2002,'Non-Fiction',2),(10,'The Oxford Dictionary of Quotations','Oxford','None',1980,'Non-Fiction',2),(11,'The Bipolar Disorder Survival Guide','David J. Miklowitz','None',2002,'Non-Fiction',2),(12,'Sushi!','Yasuko Fukuoka','None',2003,'Non-Fiction',2),(13,'Star Trek The Next Generatio Technical Manual','Rick Sternbach','Michael Okuda',1991,'Fiction',3),(14,'Anatomy for Strength and Fitness Training','Mark Vella','None',2006,'Non-Fiction',3),(15,'Commodore 64 Troubleshooting and Repair Guide','Robert C. Brenner','None',1985,'Non-Fiction',3),(16,'Rush Guitar Anthology Series','Warner Bros. Publications','None',1995,'Non-Fiction',3),(17,'RF Circuit Design','John Blyler','Cheryl Ajluni',2008,'Non-Fiction',3),(18,'Basic Electrical Engineering ','Jimmie J. Cathey','Syed A. Nasar',1997,'Non-Fiction',3),(19,'Never Gymless','Ross Enamait','None',2006,'Non-Fiction',3),(20,'Electric Circuits','Mahmood Nahvi','Joseph Edminister',2003,'Non-Fiction',3),(21,'Graphics Communications for Engineers','Gary R. Bertoline','None',1999,'Non-Fiction',3),(22,'Digital Electronics ','Roger L. Tokheim','None',1990,'Non-Fiction',3),(23,'Mechanics of Materials','James M. Gere','Stephen P. Timoshenko',1997,'Non-Fiction',3),(24,'Meteorology','Joseph M. Moran','Michael D. Morgan',1994,'Non-Fiction',3),(25,'Critical Thinking','Richard W. Paul','Linda Elder',2002,'Non-Fiction',3),(26,'The Guitar Handbook','Ralph Denyer','None',1992,'Non-Fiction',3),(27,'None','None','None',0,'None',4),(28,'None','None','None',0,'None',5),(29,'None','None','None',0,'None',6),(30,'None','None','None',0,'None',7),(31,'None','None','None',0,'None',8),(32,'Webster\'s Unabridged Dictionary','Random House','None',2001,'Non-Fiction',9),(33,'The Heritage Guide to the Constitution','Edwin Meese III','None',2005,'Non-Fiction',10),(34,'The God Delusion','Richard Dawkins','None',2006,'Non-Fiction',10),(35,'America Again','Stephen Colbert','None',2012,'Non-Fiction',10),(36,'Lies My Teacher Told Me','James W. Loewen','None',2007,'Non-Fiction',10),(37,'I am Better Thank Your Kids','Maddox','None',2011,'Non-Fiction',10),(38,'My Two Moms','Zach Wahls','None',2012,'Non-Fiction',10),(39,'Grill Yourself Skinny','Heidi Skolnik','None',2013,'Non-Fiction',10),(40,'None','None','None',0,'None',11),(41,'Calorie Fat and Carbohydrate','Allan Borushek','None',2008,'Non-Fiction',12),(42,'Kane and Abel','Jeffrey Archer','None',1980,'Fiction',12),(43,'Skeletons on the Zahara','Dean King','None',2004,'Non-Fiction',12),(44,'The Age of Shiva','Manil Suri','None',2007,'Fiction',12),(45,'Misquoting Jeasus','Bart D. Ehrman','',2005,'Non-Fiction',12),(46,'History of God ','Karen Armstrong','',1993,'Non-Fiction',12),(47,'Blink','Malcolm Gladwell','None',2005,'Non-Fiction',12),(48,'The Tipping Point','Malcolm Gladwell','None',2002,'Non-Fiction',12),(50,'Blasphemy','Alan Dershowitz','None',2007,'Non-Fiction',12),(51,'The Will ti Survive','Julius','Jacobs',2006,'Non-Fiction',12),(52,'The Missionary Position','Christopher Hitchens','None',1995,'Non-Fiction',12),(53,'Thomas Paine and the Promise of America','Harvey J. Kaye','None',2005,'Non-Fiction',12),(54,'Finding Jefferson','Alan Dershowitz','None',2008,'Non-Fiction',12),(55,'Look Me in the Eye--My Life With Asperger\'s','John Elder Robison','None',2008,'Non-Fiction',12),(56,'Still Life with Crows','Douglas Preston','Lincoln Child',2003,'Fiction',12),(57,'Nineteen Minutes','Jodi Picoult','None',2007,'Fiction',12),(60,'Isaac Newton','James Gleick','None',2003,'Non-Fiction',13),(61,'Quiet','Susan Cain','None',2013,'Non-Fiction',13),(62,'Nerds 2.0.1 A Brief History of the Internet','Stephen Segaller','None',1998,'Non-Fiction',13),(63,'Needful Things','Stephen King','None',1991,'Fiction',14),(64,'Private Parts','Howard Stern','None',1993,'Non-Fiction',14),(65,'Cujo','Stephen King','None',1981,'Fiction',14),(66,'Night Journey','Stephen King','None',1996,'Fiction',14),(67,'Coffey on the Mile','Stephen King','None',1996,'Fiction',14),(68,'The Postman','David Brin','None',1985,'Fiction',14),(69,'Webster\'s American English Dictionary','Merria-Webster','None',1999,'Non-Fiction',14),(70,'Thomas Paine\'s Rights of Man','Christopher Hitchens','None',2006,'Non-Fiction',14),(71,'The revolution A Manifesto','Ron Paul','None',2008,'Non-Fiction',14),(72,'A Mind of its Own A Cultural History of the Penis','David M. Friedman','None',2001,'Non-Fiction',14),(73,'The Signal and the Noise','Nate Silver','None',2012,'Non-Fiction',14),(74,'Tuney','Jack Cavanaugh','None',2006,'Non-Fiction',14),(75,'When Everything Changed','Gail Collings','None',2009,'Non-Fiction',14),(76,'Rocky Marciano','Russell Sullivan','None',2005,'Non-Fiction',14),(77,'Darwin\'s Dangerous Idea--Evolution and the Meaning of Life','Daniel C. Dennett','None',1995,'Non-Fiction',14),(78,'Roots','Alex Haley','None',1974,'Non-Fiction',14),(79,'Bill of Wrongs The Executive Branch\'s Assault on America\'s Fundamental Rights','Molly Ivins','Lou Dubose',2007,'Non-Fiction',14),(80,'None','None','None',0,'None',15),(81,'Full Dark No Stars','Stephen King','None',2010,'Fiction',16),(82,'Code The Hidden Language of Computer Hardware and Software','Charles Petzold','None',2000,'Non-Fiction',16),(83,'The Prodigal Daughter','Jeffrey Archer','None',1972,'Fiction',16),(84,'Life\'s Little Instruction Book','H. Jackson Brown Jr.','None',1991,'Non-Fiction',16),(85,'Life\'s Little Destruction Book','Charles Sherwood Dane','None',1992,'Non-Fiction',16),(86,'P.S. I Love You','H. Jackson Brown Jr.','None',1990,'Non-Fiction',16),(87,'Life\'s Little Instruction Book 2','H. Jackson Brown Jr.','None',1993,'Non-Fiction',16),(88,'Carrie','Stephen King','None',1974,'Fiction',16),(89,'The Rough Guide Phrasebook French','Lexus','None',1995,'Non-Fiction',16),(90,'Crimes Aginst Logic ','Jamie Whyte','None',2005,'Non-Fiction',16),(91,'Children of the Corn','Stephen King','None',1976,'Fiction',16),(92,'Jumper','Steven Gould','None',1992,'Fiction',16),(93,'The Rift','Walter J. Williams','None',1999,'Fiction',16),(94,'The Tailsman','Peter Straub','None',1984,'Fiction',16),(95,'Profiles in Courage','John F. Kennedy','None',1956,'Non-Fiction',16),(96,'The Catcher in the Rye','J.D. Salinger','None',1945,'Fiction',16),(97,'The Book of Common Prayer','The Seabury Press','None',1979,'Non-Fiction',16),(98,'Kant A Very Short Introduction','Roger Scruton','None',1982,'Non-Fiction',16),(99,'Webster\'s American English Thesaurus','Merriam-Webster','None',2002,'Non-Fiction',16),(100,'Earth Abides','George R. Stewart','None',1949,'Fiction',16),(101,'The Revelation of John Volume 1','William Barclay','None',1976,'Non-Fiction',16),(102,'Last and First Men','Olaf Stapledon','None',1930,'Fiction',16),(103,'Traffic Why We Drive the Way We Do','Tom Vanderbilt','None',2008,'Non-Fiction',16),(104,'It','Stephen King','None',1986,'Fiction',16),(105,'Hitch-22 A Memoir','Christopher Hitchens','None',2010,'Non-Fiction',16),(106,'The Greatest Show On Earth The Evidence for Evolution','Richard Dawinks','None',2009,'Non-Fiction',16),(107,'Body Language','Alan Pease','Barbara Pease',2004,'Non-Fiction',16),(108,'Duma Key','Stephen King','None',2008,'Fiction',16),(109,'Dolores Claiborne','Stephen King','None',1993,'Fiction',16);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelf`
--

DROP TABLE IF EXISTS `shelf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shelf` (
  `shelfID` int(11) NOT NULL AUTO_INCREMENT,
  `mainShelf` varchar(255) DEFAULT NULL,
  `subShelfNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`shelfID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelf`
--

LOCK TABLES `shelf` WRITE;
/*!40000 ALTER TABLE `shelf` DISABLE KEYS */;
INSERT INTO `shelf` VALUES (1,'Right',1),(2,'Right',2),(3,'Right',3),(4,'Right',4),(5,'Right',5),(6,'right',6),(7,'Right',7),(8,'Right',8),(9,'Left',1),(10,'Left',2),(11,'Left',3),(12,'Left',4),(13,'Left',5),(14,'Left',6),(15,'Left',7),(16,'Left',8);
/*!40000 ALTER TABLE `shelf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-02 16:32:52
