-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: life_chng
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.12.04.1

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
-- Table structure for table `CATEGORY`
--

DROP TABLE IF EXISTS `CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CATEGORY` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(250) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATEGORY`
--

LOCK TABLES `CATEGORY` WRITE;
/*!40000 ALTER TABLE `CATEGORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DOWNVOTE`
--

DROP TABLE IF EXISTS `DOWNVOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DOWNVOTE` (
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  KEY `pid` (`pid`),
  KEY `uid` (`uid`),
  CONSTRAINT `DOWNVOTE_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `POST` (`pid`) ON DELETE CASCADE,
  CONSTRAINT `DOWNVOTE_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `USER` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOWNVOTE`
--

LOCK TABLES `DOWNVOTE` WRITE;
/*!40000 ALTER TABLE `DOWNVOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `DOWNVOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POINTS`
--

DROP TABLE IF EXISTS `POINTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `POINTS` (
  `uid` int(11) NOT NULL,
  `point` int(11) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`),
  CONSTRAINT `POINTS_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `USER` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POINTS`
--

LOCK TABLES `POINTS` WRITE;
/*!40000 ALTER TABLE `POINTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `POINTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POST`
--

DROP TABLE IF EXISTS `POST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `POST` (
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pid`),
  KEY `uid` (`uid`),
  CONSTRAINT `POST_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `USER` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POST`
--

LOCK TABLES `POST` WRITE;
/*!40000 ALTER TABLE `POST` DISABLE KEYS */;
/*!40000 ALTER TABLE `POST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POST_DETAILS`
--

DROP TABLE IF EXISTS `POST_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `POST_DETAILS` (
  `pid` int(11) NOT NULL,
  `content` blob NOT NULL,
  `upvote` int(11) NOT NULL DEFAULT '1',
  `downvote` int(11) NOT NULL DEFAULT '0',
  `category_name` varchar(250) DEFAULT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `pid` (`pid`),
  CONSTRAINT `POST_DETAILS_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `POST` (`pid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POST_DETAILS`
--

LOCK TABLES `POST_DETAILS` WRITE;
/*!40000 ALTER TABLE `POST_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `POST_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UPVOTE`
--

DROP TABLE IF EXISTS `UPVOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UPVOTE` (
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  KEY `pid` (`pid`),
  KEY `uid` (`uid`),
  CONSTRAINT `UPVOTE_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `POST` (`pid`) ON DELETE CASCADE,
  CONSTRAINT `UPVOTE_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `USER` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UPVOTE`
--

LOCK TABLES `UPVOTE` WRITE;
/*!40000 ALTER TABLE `UPVOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `UPVOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `profile_picture` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bio` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VIEW`
--

DROP TABLE IF EXISTS `VIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VIEW` (
  `pid` int(11) NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT '1',
  `view_location` varchar(250) DEFAULT NULL,
  KEY `pid` (`pid`),
  CONSTRAINT `VIEW_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `POST` (`pid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VIEW`
--

LOCK TABLES `VIEW` WRITE;
/*!40000 ALTER TABLE `VIEW` DISABLE KEYS */;
/*!40000 ALTER TABLE `VIEW` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-12  0:56:14
