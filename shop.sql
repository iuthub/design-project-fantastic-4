CREATE DATABASE  IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `shop`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `article_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `caption` varchar(50) NOT NULL,
  `site` varchar(30) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_name` varchar(15) NOT NULL,
  `category_order` int(11) NOT NULL,
  PRIMARY KEY (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('Accessories',6),('Bags',5),('Bottoms',2),('Dresses',3),('Shoes',4),('Tops',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_comments`
--

DROP TABLE IF EXISTS `client_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_comments` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `issue` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_comments`
--

LOCK TABLES `client_comments` WRITE;
/*!40000 ALTER TABLE `client_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #10`
--

DROP TABLE IF EXISTS `details #10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #10` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #10`
--

LOCK TABLES `details #10` WRITE;
/*!40000 ALTER TABLE `details #10` DISABLE KEYS */;
INSERT INTO `details #10` VALUES ('XS','white',20),('S','white',30),('M','white',30),('L','white',30),('XL','white',20),('XS','black',20),('S','black',30),('M','black',30),('L','black',30),('XL','black',20),('XS','heather grey',20),('S','heather grey',30),('M','heather grey',30),('L','heather grey',30),('XL','heather grey',20),('XS','light rose',20),('S','light rose',30),('M','light rose',30),('L','light rose',30),('XL','light rose',20);
/*!40000 ALTER TABLE `details #10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #100`
--

DROP TABLE IF EXISTS `details #100`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #100` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #100`
--

LOCK TABLES `details #100` WRITE;
/*!40000 ALTER TABLE `details #100` DISABLE KEYS */;
INSERT INTO `details #100` VALUES ('XS','blue',30),('S','blue',30),('M','blue',30),('L','blue',30),('XL','blue',30);
/*!40000 ALTER TABLE `details #100` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #101`
--

DROP TABLE IF EXISTS `details #101`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #101` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #101`
--

LOCK TABLES `details #101` WRITE;
/*!40000 ALTER TABLE `details #101` DISABLE KEYS */;
INSERT INTO `details #101` VALUES ('XS','white',30),('S','white',30),('M','white',30),('L','white',30),('XL','white',30);
/*!40000 ALTER TABLE `details #101` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #102`
--

DROP TABLE IF EXISTS `details #102`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #102` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #102`
--

LOCK TABLES `details #102` WRITE;
/*!40000 ALTER TABLE `details #102` DISABLE KEYS */;
INSERT INTO `details #102` VALUES ('XS','pink',30),('S','pink',30),('M','pink',30),('L','pink',30),('XL','pink',30);
/*!40000 ALTER TABLE `details #102` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #104`
--

DROP TABLE IF EXISTS `details #104`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #104` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #104`
--

LOCK TABLES `details #104` WRITE;
/*!40000 ALTER TABLE `details #104` DISABLE KEYS */;
INSERT INTO `details #104` VALUES ('XS','silver',30),('S','silver',30),('M','silver',30),('L','silver',30),('XL','silver',30);
/*!40000 ALTER TABLE `details #104` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #105`
--

DROP TABLE IF EXISTS `details #105`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #105` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #105`
--

LOCK TABLES `details #105` WRITE;
/*!40000 ALTER TABLE `details #105` DISABLE KEYS */;
INSERT INTO `details #105` VALUES ('XS','gold',30),('S','gold',30),('M','gold',30),('L','gold',30),('XL','gold',30);
/*!40000 ALTER TABLE `details #105` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #106`
--

DROP TABLE IF EXISTS `details #106`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #106` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #106`
--

LOCK TABLES `details #106` WRITE;
/*!40000 ALTER TABLE `details #106` DISABLE KEYS */;
INSERT INTO `details #106` VALUES ('XS','silver',30),('S','silver',30),('M','silver',30),('L','silver',30),('XL','silver',30);
/*!40000 ALTER TABLE `details #106` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #107`
--

DROP TABLE IF EXISTS `details #107`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #107` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #107`
--

LOCK TABLES `details #107` WRITE;
/*!40000 ALTER TABLE `details #107` DISABLE KEYS */;
INSERT INTO `details #107` VALUES ('XS','pink',25),('S','pink',25),('M','pink',25),('L','pink',25),('XL','pink',25);
/*!40000 ALTER TABLE `details #107` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #108`
--

DROP TABLE IF EXISTS `details #108`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #108` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #108`
--

LOCK TABLES `details #108` WRITE;
/*!40000 ALTER TABLE `details #108` DISABLE KEYS */;
INSERT INTO `details #108` VALUES ('XS','silver',80),('S','silver',80),('M','silver',80),('L','silver',80),('XL','silver',80);
/*!40000 ALTER TABLE `details #108` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #109`
--

DROP TABLE IF EXISTS `details #109`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #109` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #109`
--

LOCK TABLES `details #109` WRITE;
/*!40000 ALTER TABLE `details #109` DISABLE KEYS */;
INSERT INTO `details #109` VALUES ('XS','gold',25),('S','gold',25),('M','gold',25),('L','gold',25),('XL','gold',25);
/*!40000 ALTER TABLE `details #109` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #11`
--

DROP TABLE IF EXISTS `details #11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #11` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #11`
--

LOCK TABLES `details #11` WRITE;
/*!40000 ALTER TABLE `details #11` DISABLE KEYS */;
INSERT INTO `details #11` VALUES ('XS','black',20),('S','black',20),('M','black',30),('L','black',10),('XL','black',10);
/*!40000 ALTER TABLE `details #11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #111`
--

DROP TABLE IF EXISTS `details #111`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #111` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #111`
--

LOCK TABLES `details #111` WRITE;
/*!40000 ALTER TABLE `details #111` DISABLE KEYS */;
INSERT INTO `details #111` VALUES ('XS','nude',30),('S','nude',30),('M','nude',30),('L','nude',30),('XL','nude',30);
/*!40000 ALTER TABLE `details #111` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #113`
--

DROP TABLE IF EXISTS `details #113`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #113` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #113`
--

LOCK TABLES `details #113` WRITE;
/*!40000 ALTER TABLE `details #113` DISABLE KEYS */;
INSERT INTO `details #113` VALUES ('XS','black',30),('S','black',30),('M','black',30),('L','black',30),('XL','black',30);
/*!40000 ALTER TABLE `details #113` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #12`
--

DROP TABLE IF EXISTS `details #12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #12` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #12`
--

LOCK TABLES `details #12` WRITE;
/*!40000 ALTER TABLE `details #12` DISABLE KEYS */;
INSERT INTO `details #12` VALUES ('XS','rainbow',10),('S','rainbow',10),('M','rainbow',10),('L','rainbow',20),('XL','rainbow',20);
/*!40000 ALTER TABLE `details #12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #124`
--

DROP TABLE IF EXISTS `details #124`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #124` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #124`
--

LOCK TABLES `details #124` WRITE;
/*!40000 ALTER TABLE `details #124` DISABLE KEYS */;
INSERT INTO `details #124` VALUES ('XS','green',30),('S','green',30),('M','green',30),('L','green',30),('XL','green',30);
/*!40000 ALTER TABLE `details #124` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #125`
--

DROP TABLE IF EXISTS `details #125`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #125` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #125`
--

LOCK TABLES `details #125` WRITE;
/*!40000 ALTER TABLE `details #125` DISABLE KEYS */;
INSERT INTO `details #125` VALUES ('XS','multi',30),('S','multi',30),('M','multi',30),('L','multi',30),('XL','multi',30);
/*!40000 ALTER TABLE `details #125` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #126`
--

DROP TABLE IF EXISTS `details #126`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #126` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #126`
--

LOCK TABLES `details #126` WRITE;
/*!40000 ALTER TABLE `details #126` DISABLE KEYS */;
INSERT INTO `details #126` VALUES ('XS','black',30),('S','black',30),('M','black',30),('L','black',30),('XL','black',30);
/*!40000 ALTER TABLE `details #126` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #127`
--

DROP TABLE IF EXISTS `details #127`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #127` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #127`
--

LOCK TABLES `details #127` WRITE;
/*!40000 ALTER TABLE `details #127` DISABLE KEYS */;
INSERT INTO `details #127` VALUES ('XS','black',30),('S','black',30),('M','black',30),('L','black',30),('XL','black',30);
/*!40000 ALTER TABLE `details #127` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #128`
--

DROP TABLE IF EXISTS `details #128`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #128` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #128`
--

LOCK TABLES `details #128` WRITE;
/*!40000 ALTER TABLE `details #128` DISABLE KEYS */;
INSERT INTO `details #128` VALUES ('XS','nude',50),('S','nude',50),('M','nude',50),('L','nude',50),('XL','nude',50);
/*!40000 ALTER TABLE `details #128` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #129`
--

DROP TABLE IF EXISTS `details #129`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #129` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #129`
--

LOCK TABLES `details #129` WRITE;
/*!40000 ALTER TABLE `details #129` DISABLE KEYS */;
INSERT INTO `details #129` VALUES ('XS','black',45),('S','black',45),('M','black',45),('L','black',45),('XL','black',45);
/*!40000 ALTER TABLE `details #129` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #13`
--

DROP TABLE IF EXISTS `details #13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #13` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #13`
--

LOCK TABLES `details #13` WRITE;
/*!40000 ALTER TABLE `details #13` DISABLE KEYS */;
INSERT INTO `details #13` VALUES ('XS','light blue',30),('S','light blue',30),('M','light blue',30),('L','light blue',30),('XL','light blue',30),('XS','black',30),('S','black',30),('M','black',30),('L','black',30),('XL','black',30);
/*!40000 ALTER TABLE `details #13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #130`
--

DROP TABLE IF EXISTS `details #130`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #130` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #130`
--

LOCK TABLES `details #130` WRITE;
/*!40000 ALTER TABLE `details #130` DISABLE KEYS */;
INSERT INTO `details #130` VALUES ('XS','white',55),('S','white',55),('M','white',55),('L','white',55),('XL','white',55);
/*!40000 ALTER TABLE `details #130` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #131`
--

DROP TABLE IF EXISTS `details #131`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #131` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #131`
--

LOCK TABLES `details #131` WRITE;
/*!40000 ALTER TABLE `details #131` DISABLE KEYS */;
INSERT INTO `details #131` VALUES ('XS','pink',30),('S','pink',30),('M','pink',30),('L','pink',30),('XL','pink',30);
/*!40000 ALTER TABLE `details #131` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #132`
--

DROP TABLE IF EXISTS `details #132`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #132` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #132`
--

LOCK TABLES `details #132` WRITE;
/*!40000 ALTER TABLE `details #132` DISABLE KEYS */;
INSERT INTO `details #132` VALUES ('XS','white',55),('S','white',55),('M','white',55),('L','white',55),('XL','white',55);
/*!40000 ALTER TABLE `details #132` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #133`
--

DROP TABLE IF EXISTS `details #133`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #133` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #133`
--

LOCK TABLES `details #133` WRITE;
/*!40000 ALTER TABLE `details #133` DISABLE KEYS */;
INSERT INTO `details #133` VALUES ('XS','burgundy',80),('S','burgundy',80),('M','burgundy',80),('L','burgundy',80),('XL','burgundy',80);
/*!40000 ALTER TABLE `details #133` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #134`
--

DROP TABLE IF EXISTS `details #134`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #134` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #134`
--

LOCK TABLES `details #134` WRITE;
/*!40000 ALTER TABLE `details #134` DISABLE KEYS */;
INSERT INTO `details #134` VALUES ('XS','black',30),('S','black',30),('M','black',30),('L','black',30),('XL','black',30);
/*!40000 ALTER TABLE `details #134` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #135`
--

DROP TABLE IF EXISTS `details #135`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #135` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #135`
--

LOCK TABLES `details #135` WRITE;
/*!40000 ALTER TABLE `details #135` DISABLE KEYS */;
INSERT INTO `details #135` VALUES ('XS','black',50),('S','black',50),('M','black',50),('L','black',50),('XL','black',50);
/*!40000 ALTER TABLE `details #135` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #136`
--

DROP TABLE IF EXISTS `details #136`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #136` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #136`
--

LOCK TABLES `details #136` WRITE;
/*!40000 ALTER TABLE `details #136` DISABLE KEYS */;
INSERT INTO `details #136` VALUES ('XS','black',20),('S','black',20),('M','black',20),('L','black',20),('XL','black',20);
/*!40000 ALTER TABLE `details #136` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #137`
--

DROP TABLE IF EXISTS `details #137`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #137` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #137`
--

LOCK TABLES `details #137` WRITE;
/*!40000 ALTER TABLE `details #137` DISABLE KEYS */;
INSERT INTO `details #137` VALUES ('XS','blue',30),('S','blue',30),('M','blue',30),('L','blue',30),('XL','blue',30);
/*!40000 ALTER TABLE `details #137` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #138`
--

DROP TABLE IF EXISTS `details #138`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #138` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #138`
--

LOCK TABLES `details #138` WRITE;
/*!40000 ALTER TABLE `details #138` DISABLE KEYS */;
INSERT INTO `details #138` VALUES ('XS','blue',90),('S','blue',90),('M','blue',90),('L','blue',90),('XL','blue',90);
/*!40000 ALTER TABLE `details #138` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #139`
--

DROP TABLE IF EXISTS `details #139`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #139` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #139`
--

LOCK TABLES `details #139` WRITE;
/*!40000 ALTER TABLE `details #139` DISABLE KEYS */;
INSERT INTO `details #139` VALUES ('XS','pink',30),('S','pink',30),('M','pink',30),('L','pink',30),('XL','pink',30);
/*!40000 ALTER TABLE `details #139` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #14`
--

DROP TABLE IF EXISTS `details #14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #14` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #14`
--

LOCK TABLES `details #14` WRITE;
/*!40000 ALTER TABLE `details #14` DISABLE KEYS */;
INSERT INTO `details #14` VALUES ('XS','black',20),('S','black',25),('M','black',25),('L','black',25),('XL','black',20);
/*!40000 ALTER TABLE `details #14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #17`
--

DROP TABLE IF EXISTS `details #17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #17` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #17`
--

LOCK TABLES `details #17` WRITE;
/*!40000 ALTER TABLE `details #17` DISABLE KEYS */;
INSERT INTO `details #17` VALUES ('XS','white',20),('S','white',20),('M','white',20),('L','white',20),('XL','white',20);
/*!40000 ALTER TABLE `details #17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #18`
--

DROP TABLE IF EXISTS `details #18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #18` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #18`
--

LOCK TABLES `details #18` WRITE;
/*!40000 ALTER TABLE `details #18` DISABLE KEYS */;
INSERT INTO `details #18` VALUES ('XS','Grey',20),('S','Grey',20),('M','Grey',20),('L','Grey',20),('XL','Grey',20);
/*!40000 ALTER TABLE `details #18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #19`
--

DROP TABLE IF EXISTS `details #19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #19` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #19`
--

LOCK TABLES `details #19` WRITE;
/*!40000 ALTER TABLE `details #19` DISABLE KEYS */;
INSERT INTO `details #19` VALUES ('XS','grey',20),('S','grey',20),('M','grey',20),('L','grey',20),('XL','grey',20);
/*!40000 ALTER TABLE `details #19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #20`
--

DROP TABLE IF EXISTS `details #20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #20` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #20`
--

LOCK TABLES `details #20` WRITE;
/*!40000 ALTER TABLE `details #20` DISABLE KEYS */;
INSERT INTO `details #20` VALUES ('XS','black',30),('S','black',20),('M','black',25),('L','black',20),('XL','black',30),('XS','white',30),('S','white',20),('M','white',25),('L','white',20),('XL','white',30);
/*!40000 ALTER TABLE `details #20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #21`
--

DROP TABLE IF EXISTS `details #21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #21` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #21`
--

LOCK TABLES `details #21` WRITE;
/*!40000 ALTER TABLE `details #21` DISABLE KEYS */;
INSERT INTO `details #21` VALUES ('XS','black',35),('S','black',30),('M','black',30),('L','black',30),('XL','black',30),('XS','grey',35),('S','grey',30),('M','grey',30),('L','grey',30),('XL','grey',30);
/*!40000 ALTER TABLE `details #21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #31`
--

DROP TABLE IF EXISTS `details #31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #31` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #31`
--

LOCK TABLES `details #31` WRITE;
/*!40000 ALTER TABLE `details #31` DISABLE KEYS */;
INSERT INTO `details #31` VALUES ('XS','Nude',20),('S','Nude',20),('M','Nude',20),('L','Nude',40),('XL','Nude',40),('XS','black',20),('S','black',20),('M','black',20),('L','black',40),('XL','black',40);
/*!40000 ALTER TABLE `details #31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #33`
--

DROP TABLE IF EXISTS `details #33`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #33` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #33`
--

LOCK TABLES `details #33` WRITE;
/*!40000 ALTER TABLE `details #33` DISABLE KEYS */;
INSERT INTO `details #33` VALUES ('XS','black',6),('S','black',6),('M','black',6),('L','black',6),('XL','black',6),('XS','white',6),('S','white',6),('M','white',6),('L','white',6),('XL','white',6);
/*!40000 ALTER TABLE `details #33` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #34`
--

DROP TABLE IF EXISTS `details #34`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #34` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #34`
--

LOCK TABLES `details #34` WRITE;
/*!40000 ALTER TABLE `details #34` DISABLE KEYS */;
INSERT INTO `details #34` VALUES ('XS','pink',25),('S','pink',25),('M','pink',25),('L','pink',25),('XL','pink',25);
/*!40000 ALTER TABLE `details #34` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #35`
--

DROP TABLE IF EXISTS `details #35`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #35` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #35`
--

LOCK TABLES `details #35` WRITE;
/*!40000 ALTER TABLE `details #35` DISABLE KEYS */;
INSERT INTO `details #35` VALUES ('XS','black',30),('S','black',30),('M','black',30),('L','black',30),('XL','black',30);
/*!40000 ALTER TABLE `details #35` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #36`
--

DROP TABLE IF EXISTS `details #36`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #36` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #36`
--

LOCK TABLES `details #36` WRITE;
/*!40000 ALTER TABLE `details #36` DISABLE KEYS */;
INSERT INTO `details #36` VALUES ('XS','white',25),('S','white',25),('M','white',25),('L','white',25),('XL','white',25);
/*!40000 ALTER TABLE `details #36` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #37`
--

DROP TABLE IF EXISTS `details #37`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #37` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #37`
--

LOCK TABLES `details #37` WRITE;
/*!40000 ALTER TABLE `details #37` DISABLE KEYS */;
INSERT INTO `details #37` VALUES ('XS','white',25),('S','white',25),('M','white',25),('L','white',25),('XL','white',25);
/*!40000 ALTER TABLE `details #37` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #38`
--

DROP TABLE IF EXISTS `details #38`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #38` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #38`
--

LOCK TABLES `details #38` WRITE;
/*!40000 ALTER TABLE `details #38` DISABLE KEYS */;
INSERT INTO `details #38` VALUES ('XS','black',30),('S','black',30),('M','black',30),('L','black',30),('XL','black',30);
/*!40000 ALTER TABLE `details #38` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #40`
--

DROP TABLE IF EXISTS `details #40`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #40` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #40`
--

LOCK TABLES `details #40` WRITE;
/*!40000 ALTER TABLE `details #40` DISABLE KEYS */;
INSERT INTO `details #40` VALUES ('XS','black',25),('S','black',25),('M','black',25),('L','black',25),('XL','black',25);
/*!40000 ALTER TABLE `details #40` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #41`
--

DROP TABLE IF EXISTS `details #41`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #41` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #41`
--

LOCK TABLES `details #41` WRITE;
/*!40000 ALTER TABLE `details #41` DISABLE KEYS */;
INSERT INTO `details #41` VALUES ('XS','pink',25),('S','pink',25),('M','pink',25),('L','pink',25),('XL','pink',25);
/*!40000 ALTER TABLE `details #41` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #42`
--

DROP TABLE IF EXISTS `details #42`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #42` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #42`
--

LOCK TABLES `details #42` WRITE;
/*!40000 ALTER TABLE `details #42` DISABLE KEYS */;
INSERT INTO `details #42` VALUES ('XS','pink',25),('S','pink',25),('M','pink',25),('L','pink',25),('XL','pink',25);
/*!40000 ALTER TABLE `details #42` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #43`
--

DROP TABLE IF EXISTS `details #43`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #43` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #43`
--

LOCK TABLES `details #43` WRITE;
/*!40000 ALTER TABLE `details #43` DISABLE KEYS */;
INSERT INTO `details #43` VALUES ('XS','pink',25),('S','pink',30),('M','pink',30),('L','pink',30),('XL','pink',25);
/*!40000 ALTER TABLE `details #43` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #44`
--

DROP TABLE IF EXISTS `details #44`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #44` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #44`
--

LOCK TABLES `details #44` WRITE;
/*!40000 ALTER TABLE `details #44` DISABLE KEYS */;
INSERT INTO `details #44` VALUES ('XS','pink',25),('S','pink',25),('M','pink',25),('L','pink',25),('XL','pink',25);
/*!40000 ALTER TABLE `details #44` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #45`
--

DROP TABLE IF EXISTS `details #45`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #45` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #45`
--

LOCK TABLES `details #45` WRITE;
/*!40000 ALTER TABLE `details #45` DISABLE KEYS */;
INSERT INTO `details #45` VALUES ('XS','silver',10),('S','silver',10),('M','silver',10),('L','silver',10),('XL','silver',10);
/*!40000 ALTER TABLE `details #45` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #46`
--

DROP TABLE IF EXISTS `details #46`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #46` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #46`
--

LOCK TABLES `details #46` WRITE;
/*!40000 ALTER TABLE `details #46` DISABLE KEYS */;
INSERT INTO `details #46` VALUES ('XS','clear',50),('S','clear',50),('M','clear',50),('L','clear',50),('XL','clear',50);
/*!40000 ALTER TABLE `details #46` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #47`
--

DROP TABLE IF EXISTS `details #47`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #47` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #47`
--

LOCK TABLES `details #47` WRITE;
/*!40000 ALTER TABLE `details #47` DISABLE KEYS */;
INSERT INTO `details #47` VALUES ('XS','black',25),('S','black',25),('M','black',25),('L','black',25),('XL','black',25);
/*!40000 ALTER TABLE `details #47` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #48`
--

DROP TABLE IF EXISTS `details #48`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #48` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #48`
--

LOCK TABLES `details #48` WRITE;
/*!40000 ALTER TABLE `details #48` DISABLE KEYS */;
INSERT INTO `details #48` VALUES ('XS','olive',25),('S','olive',25),('M','olive',25),('L','olive',25),('XL','olive',25);
/*!40000 ALTER TABLE `details #48` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #49`
--

DROP TABLE IF EXISTS `details #49`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #49` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #49`
--

LOCK TABLES `details #49` WRITE;
/*!40000 ALTER TABLE `details #49` DISABLE KEYS */;
INSERT INTO `details #49` VALUES ('XS','black',12),('S','black',12),('M','black',12),('L','black',12),('XL','black',12);
/*!40000 ALTER TABLE `details #49` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #50`
--

DROP TABLE IF EXISTS `details #50`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #50` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #50`
--

LOCK TABLES `details #50` WRITE;
/*!40000 ALTER TABLE `details #50` DISABLE KEYS */;
INSERT INTO `details #50` VALUES ('XS','Light denim',25),('S','Light denim',25),('M','Light denim',25),('L','Light denim',25),('XL','Light denim',25);
/*!40000 ALTER TABLE `details #50` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #62`
--

DROP TABLE IF EXISTS `details #62`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #62` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #62`
--

LOCK TABLES `details #62` WRITE;
/*!40000 ALTER TABLE `details #62` DISABLE KEYS */;
INSERT INTO `details #62` VALUES ('XS','black',10),('S','black',20),('M','black',20),('L','black',20),('XL','black',30);
/*!40000 ALTER TABLE `details #62` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #67`
--

DROP TABLE IF EXISTS `details #67`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #67` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #67`
--

LOCK TABLES `details #67` WRITE;
/*!40000 ALTER TABLE `details #67` DISABLE KEYS */;
INSERT INTO `details #67` VALUES ('XS','white',25),('S','white',25),('M','white',25),('L','white',25),('XL','white',25);
/*!40000 ALTER TABLE `details #67` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #69`
--

DROP TABLE IF EXISTS `details #69`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #69` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #69`
--

LOCK TABLES `details #69` WRITE;
/*!40000 ALTER TABLE `details #69` DISABLE KEYS */;
INSERT INTO `details #69` VALUES ('XS','taupe',25),('S','taupe',25),('M','taupe',25),('L','taupe',25),('XL','taupe',25);
/*!40000 ALTER TABLE `details #69` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #70`
--

DROP TABLE IF EXISTS `details #70`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #70` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #70`
--

LOCK TABLES `details #70` WRITE;
/*!40000 ALTER TABLE `details #70` DISABLE KEYS */;
INSERT INTO `details #70` VALUES ('XS','silver',25),('S','silver',25),('M','silver',25),('L','silver',25),('XL','silver',25);
/*!40000 ALTER TABLE `details #70` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #71`
--

DROP TABLE IF EXISTS `details #71`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #71` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #71`
--

LOCK TABLES `details #71` WRITE;
/*!40000 ALTER TABLE `details #71` DISABLE KEYS */;
INSERT INTO `details #71` VALUES ('XS','olive',25),('S','olive',25),('M','olive',25),('L','olive',25),('XL','olive',25);
/*!40000 ALTER TABLE `details #71` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #72`
--

DROP TABLE IF EXISTS `details #72`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #72` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #72`
--

LOCK TABLES `details #72` WRITE;
/*!40000 ALTER TABLE `details #72` DISABLE KEYS */;
INSERT INTO `details #72` VALUES ('XS','mustard',25),('S','mustard',25),('M','mustard',25),('L','mustard',25),('XL','mustard',25);
/*!40000 ALTER TABLE `details #72` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #73`
--

DROP TABLE IF EXISTS `details #73`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #73` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #73`
--

LOCK TABLES `details #73` WRITE;
/*!40000 ALTER TABLE `details #73` DISABLE KEYS */;
INSERT INTO `details #73` VALUES ('XS','Beige',25),('S','Beige',25),('M','Beige',25),('L','Beige',25),('XL','Beige',25);
/*!40000 ALTER TABLE `details #73` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #74`
--

DROP TABLE IF EXISTS `details #74`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #74` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #74`
--

LOCK TABLES `details #74` WRITE;
/*!40000 ALTER TABLE `details #74` DISABLE KEYS */;
INSERT INTO `details #74` VALUES ('XS','silver',20),('S','silver',20),('M','silver',20),('L','silver',20),('XL','silver',20);
/*!40000 ALTER TABLE `details #74` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #75`
--

DROP TABLE IF EXISTS `details #75`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #75` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #75`
--

LOCK TABLES `details #75` WRITE;
/*!40000 ALTER TABLE `details #75` DISABLE KEYS */;
INSERT INTO `details #75` VALUES ('XS','blush',20),('S','blush',20),('M','blush',20),('L','blush',20),('XL','blush',20);
/*!40000 ALTER TABLE `details #75` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #76`
--

DROP TABLE IF EXISTS `details #76`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #76` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #76`
--

LOCK TABLES `details #76` WRITE;
/*!40000 ALTER TABLE `details #76` DISABLE KEYS */;
INSERT INTO `details #76` VALUES ('XS','black',25),('S','black',25),('M','black',25),('L','black',25),('XL','black',25);
/*!40000 ALTER TABLE `details #76` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #77`
--

DROP TABLE IF EXISTS `details #77`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #77` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #77`
--

LOCK TABLES `details #77` WRITE;
/*!40000 ALTER TABLE `details #77` DISABLE KEYS */;
INSERT INTO `details #77` VALUES ('XS','nude',25),('S','nude',25),('M','nude',25),('L','nude',25),('XL','nude',25);
/*!40000 ALTER TABLE `details #77` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #78`
--

DROP TABLE IF EXISTS `details #78`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #78` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #78`
--

LOCK TABLES `details #78` WRITE;
/*!40000 ALTER TABLE `details #78` DISABLE KEYS */;
INSERT INTO `details #78` VALUES ('XS','blush',25),('S','blush',25),('M','blush',25),('L','blush',25),('XL','blush',25);
/*!40000 ALTER TABLE `details #78` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #83`
--

DROP TABLE IF EXISTS `details #83`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #83` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #83`
--

LOCK TABLES `details #83` WRITE;
/*!40000 ALTER TABLE `details #83` DISABLE KEYS */;
INSERT INTO `details #83` VALUES ('XS','black',20),('S','black',20),('M','black',20),('L','black',20),('XL','black',20);
/*!40000 ALTER TABLE `details #83` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #89`
--

DROP TABLE IF EXISTS `details #89`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #89` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #89`
--

LOCK TABLES `details #89` WRITE;
/*!40000 ALTER TABLE `details #89` DISABLE KEYS */;
INSERT INTO `details #89` VALUES ('XS','brown',50),('S','brown',50),('M','brown',50),('L','brown',50),('XL','brown',50);
/*!40000 ALTER TABLE `details #89` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #90`
--

DROP TABLE IF EXISTS `details #90`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #90` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #90`
--

LOCK TABLES `details #90` WRITE;
/*!40000 ALTER TABLE `details #90` DISABLE KEYS */;
INSERT INTO `details #90` VALUES ('XS','grey',30),('S','grey',30),('M','grey',30),('L','grey',30),('XL','grey',30);
/*!40000 ALTER TABLE `details #90` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #91`
--

DROP TABLE IF EXISTS `details #91`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #91` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #91`
--

LOCK TABLES `details #91` WRITE;
/*!40000 ALTER TABLE `details #91` DISABLE KEYS */;
INSERT INTO `details #91` VALUES ('XS','silver',30),('S','silver',30),('M','silver',30),('L','silver',30),('XL','silver',30);
/*!40000 ALTER TABLE `details #91` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #92`
--

DROP TABLE IF EXISTS `details #92`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #92` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #92`
--

LOCK TABLES `details #92` WRITE;
/*!40000 ALTER TABLE `details #92` DISABLE KEYS */;
INSERT INTO `details #92` VALUES ('XS','multi',20),('S','multi',20),('M','multi',20),('L','multi',20),('XL','multi',20);
/*!40000 ALTER TABLE `details #92` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #93`
--

DROP TABLE IF EXISTS `details #93`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #93` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #93`
--

LOCK TABLES `details #93` WRITE;
/*!40000 ALTER TABLE `details #93` DISABLE KEYS */;
INSERT INTO `details #93` VALUES ('XS','black',30),('S','black',30),('M','black',30),('L','black',30),('XL','black',30);
/*!40000 ALTER TABLE `details #93` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #94`
--

DROP TABLE IF EXISTS `details #94`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #94` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #94`
--

LOCK TABLES `details #94` WRITE;
/*!40000 ALTER TABLE `details #94` DISABLE KEYS */;
INSERT INTO `details #94` VALUES ('XS','purple',30),('S','purple',30),('M','purple',30),('L','purple',30),('XL','purple',30);
/*!40000 ALTER TABLE `details #94` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #95`
--

DROP TABLE IF EXISTS `details #95`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #95` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #95`
--

LOCK TABLES `details #95` WRITE;
/*!40000 ALTER TABLE `details #95` DISABLE KEYS */;
INSERT INTO `details #95` VALUES ('XS','rainbow',30),('S','rainbow',30),('M','rainbow',30),('L','rainbow',30),('XL','rainbow',30);
/*!40000 ALTER TABLE `details #95` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #96`
--

DROP TABLE IF EXISTS `details #96`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #96` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #96`
--

LOCK TABLES `details #96` WRITE;
/*!40000 ALTER TABLE `details #96` DISABLE KEYS */;
INSERT INTO `details #96` VALUES ('XS','silver',30),('S','silver',30),('M','silver',30),('L','silver',30),('XL','silver',30);
/*!40000 ALTER TABLE `details #96` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #97`
--

DROP TABLE IF EXISTS `details #97`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #97` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #97`
--

LOCK TABLES `details #97` WRITE;
/*!40000 ALTER TABLE `details #97` DISABLE KEYS */;
INSERT INTO `details #97` VALUES ('XS','gold',30),('S','gold',30),('M','gold',30),('L','gold',30),('XL','gold',30);
/*!40000 ALTER TABLE `details #97` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #98`
--

DROP TABLE IF EXISTS `details #98`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #98` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #98`
--

LOCK TABLES `details #98` WRITE;
/*!40000 ALTER TABLE `details #98` DISABLE KEYS */;
INSERT INTO `details #98` VALUES ('XS','gold',30),('S','gold',30),('M','gold',30),('L','gold',30),('XL','gold',30);
/*!40000 ALTER TABLE `details #98` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details #99`
--

DROP TABLE IF EXISTS `details #99`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details #99` (
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  `amount` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details #99`
--

LOCK TABLES `details #99` WRITE;
/*!40000 ALTER TABLE `details #99` DISABLE KEYS */;
INSERT INTO `details #99` VALUES ('XS','gold',30),('S','gold',30),('M','gold',30),('L','gold',30),('XL','gold',30);
/*!40000 ALTER TABLE `details #99` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `credit_card_id` varchar(30) NOT NULL,
  `cc_verification_code` varchar(10) NOT NULL,
  `is_applied` tinyint(1) NOT NULL,
  `is_payed` tinyint(1) NOT NULL,
  `is_delivered` tinyint(1) NOT NULL,
  `is_received` tinyint(1) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(25) NOT NULL,
  `price` double DEFAULT NULL,
  `short_description` varchar(500) NOT NULL,
  `long_description` text NOT NULL,
  `content_care` varchar(300) NOT NULL,
  `size_fit` varchar(300) NOT NULL,
  `category` varchar(15) DEFAULT NULL,
  `discount` tinyint(3) NOT NULL,
  `sale_end` datetime DEFAULT NULL,
  `image_path` varchar(50) NOT NULL,
  `image_count` tinyint(2) NOT NULL,
  `is_limited` tinyint(2) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `brand_name` varchar(15) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category` (`category`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`category_name`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (10,'V-Neck Cami Bodysuit',8.9,'A knit cami bodysuit featuring a V-neckline, scoop back, and a snap-button closure.','A knit cami bodysuit featuring a V-neckline, scoop back, and a snap-button closure.','- 88% cotton, 12% spandex\r\n- Machine wash cold\r\n- Made in Vietnam\r\n','A knit cami bodysuit featuring a V-neckline, scoop back, and a snap-button closure.','Tops',0,'0000-00-00 00:00:00','images/Tops/10',4,-1,1,'Forever21'),(11,'Off-the-Shoulder Choker T',14.9,'A woven top featuring a choker neck detail with dual button closures, an elasticized off-the-shoulder neckline, short sleeves, and a flowy silhouette.\r\n','A woven top featuring a choker neck detail with dual button closures, an elasticized off-the-shoulder neckline, short sleeves, and a flowy silhouette.\r\n','- Shell: 100% rayon\r\n- Lining: 100% polyester\r\n- Hand wash cold\r\n- Made in China','A woven top featuring a choker neck detail with dual button closures, an elasticized off-the-shoulder neckline, short sleeves, and a flowy silhouette.\r\n','Tops',0,'0000-00-00 00:00:00','images/Tops/11',4,-1,1,'Forever21'),(12,'Multicolor Knit Crop Top',14.9,'A sweater-knitted crop top featuring a multicolor design, a V-neck, and a self-tie halter neck and back closure.','A sweater-knitted crop top featuring a multicolor design, a V-neck, and a self-tie halter neck and back closure.','- 55% cotton, 45% acrylic\r\n- Hand wash cold\r\n- Made in China','A sweater-knitted crop top featuring a multicolor design, a V-neck, and a self-tie halter neck and back closure.','Tops',0,'0000-00-00 00:00:00','images/Tops/12',5,-1,1,'Forever21'),(13,'One-Shoulder Bodysuit',10.9,'Style Deals - A stretch knit bodysuit featuring a one-shoulder design, a short sleeve, and dual snap-button bottom closures.','Style Deals - A stretch knit bodysuit featuring a one-shoulder design, a short sleeve, and dual snap-button bottom closures.','- 95% cotton, 5% spandex\r\n- Hand wash cold\r\n- Made in Vietnam','Style Deals - A stretch knit bodysuit featuring a one-shoulder design, a short sleeve, and dual snap-button bottom closures.','Tops',0,'0000-00-00 00:00:00','images/Tops/13',4,-1,1,'Forever21'),(14,'Contemporary Longline Kim',19.9,'Forever 21 Contemporary - A sheer woven longline kimono featuring button front closures, long dolman sleeves, an oversized fit, and a curved cocoon hem.','Forever 21 Contemporary - A sheer woven longline kimono featuring button front closures, long dolman sleeves, an oversized fit, and a curved cocoon hem.','- 100% polyester\r\n- Machine wash cold\r\n- Made in Vietnam','Forever 21 Contemporary - A sheer woven longline kimono featuring button front closures, long dolman sleeves, an oversized fit, and a curved cocoon hem.','Tops',0,'0000-00-00 00:00:00','images/Tops/14',4,-1,1,'Forever21'),(17,'Tie-Dye Pocket Tee',14.9,'A boxy knit tee featuring an allover tie-dye wash, short sleeves, a ribbed round neckline, and a chest pocket.','A boxy knit tee featuring an allover tie-dye wash, short sleeves, a ribbed round neckline, and a chest pocket.','- 60% cotton, 40% polyester\r\n- Machine wash cold\r\n- Made in China','A boxy knit tee featuring an allover tie-dye wash, short sleeves, a ribbed round neckline, and a chest pocket.','Tops',0,'0000-00-00 00:00:00','images/Tops/17',4,-1,1,'Forever21'),(18,'Ribbed Knit Choker Top',4.9,'This ribbed knit top features a V-cut choker neck, a sleeveless cut, and a formfitting silhouette.','This ribbed knit top features a V-cut choker neck, a sleeveless cut, and a formfitting silhouette.','- 95% rayon, 5% spandex\r\n- Hand wash cold\r\n- Made in China','This ribbed knit top features a V-cut choker neck, a sleeveless cut, and a formfitting silhouette.','Tops',0,'0000-00-00 00:00:00','images/Tops/18',4,-1,1,'Mexx'),(19,'Draped Surplice Bodysuit',10,'A heathered knit bodysuit featuring a draped surplice neckline and a sleeveless cut.','A heathered knit bodysuit featuring a draped surplice neckline and a sleeveless cut.','- 90% rayon, 4% spandex\r\n- Hand wash cold\r\n- Made in USA','A heathered knit bodysuit featuring a draped surplice neckline and a sleeveless cut.','Tops',0,'0000-00-00 00:00:00','images/Tops/19',4,-1,1,'Mexx'),(20,'Pleated Open-Shoulder Top',24.9,'A semi-sheer top featuring a pleated design, an open shoulder, round neckline, self-tie back with a plunging keyhole cutout, long sleeves with button cuffs, and a flowy silhouette.','A semi-sheer top featuring a pleated design, an open shoulder, round neckline, self-tie back with a plunging keyhole cutout, long sleeves with button cuffs, and a flowy silhouette.','- 100% polyester\r\n- Hand wash cold\r\n- Made in China','A semi-sheer top featuring a pleated design, an open shoulder, round neckline, self-tie back with a plunging keyhole cutout, long sleeves with button cuffs, and a flowy silhouette.','Tops',0,'0000-00-00 00:00:00','images/Tops/20',5,-1,1,'Mexx'),(21,'Mock Neck Keyhole Bodysui',12.9,'A ribbed knit bodysuit featuring a mock neck with back button closures, a chest keyhole cutout, and a snap-button closure.','A ribbed knit bodysuit featuring a mock neck with back button closures, a chest keyhole cutout, and a snap-button closure.','- 95% rayon, 5% spandex\r\n- Hand wash cold\r\n- Made in Vietnam','A ribbed knit bodysuit featuring a mock neck with back button closures, a chest keyhole cutout, and a snap-button closure.','Tops',0,'0000-00-00 00:00:00','images/Tops/21',4,-1,1,'Forever21'),(31,'Distressed Ribbed Halter ',19.9,'A ribbed knit dress featuring self-tie halter straps, a V-neck, distressed trim, and a bodycon fit.','A ribbed knit dress featuring self-tie halter straps, a V-neck, distressed trim, and a bodycon fit.','- 100% polyester\r\n- Hand wash cold\r\n- Made in China','A ribbed knit dress featuring self-tie halter straps, a V-neck, distressed trim, and a bodycon fit.','Dresses',0,'0000-00-00 00:00:00','images/Dresses/31',5,-1,1,'Forever21'),(33,'Structured Faux Leather T',27.9,'A structured faux leather tote featuring dual flat top handles and a front extended knot detail.','A structured faux leather tote featuring dual flat top handles and a front extended knot detail.','- 100% polyurethane\r\n- Made in China','A structured faux leather tote featuring dual flat top handles and a front extended knot detail.','Bags',0,'0000-00-00 00:00:00','images/Bags/33',6,-1,1,'Forever21'),(34,'I Am Caticorn Duffle Bag',27.9,'A large duffle bag featuring a front \"I am Caticorn\" graphic, dual flat top handles, an adjustable shoulder strap, zip-top closure, a contrast trim throughout, and dual interior slip pockets.','A large duffle bag featuring a front \"I am Caticorn\" graphic, dual flat top handles, an adjustable shoulder strap, zip-top closure, a contrast trim throughout, and dual interior slip pockets.','- Shell & Lining: 100% polyester\r\n- Made in China','A large duffle bag featuring a front \"I am Caticorn\" graphic, dual flat top handles, an adjustable shoulder strap, zip-top closure, a contrast trim throughout, and dual interior slip pockets.','Bags',0,'0000-00-00 00:00:00','images/Bags/34',4,-1,1,'Forever21'),(44,'Quilted Tube Duffle Bag',24.9,'An unstructured woven tube duffle bag featuring a quilted body construction, a zip top closure, dual top handles, an adjustable removable shoulder strap, dual side exterior pockets, and two interior slip pockets.','An unstructured woven tube duffle bag featuring a quilted body construction, a zip top closure, dual top handles, an adjustable removable shoulder strap, dual side exterior pockets, and two interior slip pockets.','- Shell: 97% polyester, 3% spandex\r\n- Lining: 100% polyester\r\n- Made in China','An unstructured woven tube duffle bag featuring a quilted body construction, a zip top closure, dual top handles, an adjustable removable shoulder strap, dual side exterior pockets, and two interior slip pockets.','Bags',0,'0000-00-00 00:00:00','images/Bags/44',2,-1,1,'Forever21'),(45,'Holographic Makeup Bag',9.9,'A holographic makeup bag featuring a zipper top.','A holographic makeup bag featuring a zipper top.','- 100% polyurethane\r\n- Wipe clean with soap and damp cloth\r\n- Made in China','A holographic makeup bag featuring a zipper top.','Bags',0,'0000-00-00 00:00:00','images/Bags/45',2,-1,1,'Forever21'),(46,'Ice Cream Print Backpack',27.9,'This clear vinyl backpack features an allover ice cream cone print, an exterior zippered pouch, zippered front pocket, top zipper closure, top loop, and adjustable straps.','This clear vinyl backpack features an allover ice cream cone print, an exterior zippered pouch, zippered front pocket, top zipper closure, top loop, and adjustable straps.','- Shell 1: 100% PVC\r\n- Shell 2: 100% polyurethane\r\n- Made in China','This clear vinyl backpack features an allover ice cream cone print, an exterior zippered pouch, zippered front pocket, top zipper closure, top loop, and adjustable straps.','Bags',0,'0000-00-00 00:00:00','images/Bags/46',2,-1,1,'Forever21'),(47,'Cat Face Mini Backpack',24.9,'Crafted in a faux leather, this mini backpack features a cat face graphic on the front flap pocket, a zip-around closure, two interior slip pockets, one interior zipper pocket, a back exterior zippered pocket, adjustable shoulder straps, and a top handle. Main zipper closure includes a detachable zip coin purse with matching cat whiskers.','Crafted in a faux leather, this mini backpack features a cat face graphic on the front flap pocket, a zip-around closure, two interior slip pockets, one interior zipper pocket, a back exterior zippered pocket, adjustable shoulder straps, and a top handle. Main zipper closure includes a detachable zip coin purse with matching cat whiskers.','- Two pieces total\r\n- Shell: 100% polyurethane\r\n- Lining: 100% polyester\r\n- Made in China','Crafted in a faux leather, this mini backpack features a cat face graphic on the front flap pocket, a zip-around closure, two interior slip pockets, one interior zipper pocket, a back exterior zippered pocket, adjustable shoulder straps, and a top handle. Main zipper closure includes a detachable zi','Bags',0,'0000-00-00 00:00:00','images/Bags/47',4,-1,1,'Forever21'),(48,'High-Waist Camo Denim Sho',19.9,'A pair of denim shorts featuring an allover camouflage print, a high-waist fit, cuffed legs, slanted front pockets, back patch pockets, and a zip fly.','A pair of denim shorts featuring an allover camouflage print, a high-waist fit, cuffed legs, slanted front pockets, back patch pockets, and a zip fly.','- 98% cotton, 2% spandex\r\n- Machine wash cold\r\n- Made in China','A pair of denim shorts featuring an allover camouflage print, a high-waist fit, cuffed legs, slanted front pockets, back patch pockets, and a zip fly.','Bottoms',0,'0000-00-00 00:00:00','images/Bottoms/48',5,-1,1,'Forever21'),(49,'Lace-Up Grommet Leggings',35,'A pair of high-waist knit leggings featuring high-polish grommets, lace-up sides, and an elasticized waist.\r\n- This is an independent brand and not a Forever 21 branded item.','A pair of high-waist knit leggings featuring high-polish grommets, lace-up sides, and an elasticized waist.\r\n- This is an independent brand and not a Forever 21 branded item.','- 95% cotton, 5% spandex\r\n- Hand wash cold\r\n- Made in China','A pair of high-waist knit leggings featuring high-polish grommets, lace-up sides, and an elasticized waist.\r\n- This is an independent brand and not a Forever 21 branded item.','Bottoms',0,'0000-00-00 00:00:00','images/Bottoms/49',4,-1,1,'Forever21'),(50,'High-Waisted Denim Shorts',22.9,'A pair of denim shorts featuring a high-waisted fit, a zipper fly, distressed detailing, a five-pocket construction, and a raw-cut hem.','A pair of denim shorts featuring a high-waisted fit, a zipper fly, distressed detailing, a five-pocket construction, and a raw-cut hem.','- 100% cotton\r\n- Machine wash cold\r\n- Made in Egypt','A pair of denim shorts featuring a high-waisted fit, a zipper fly, distressed detailing, a five-pocket construction, and a raw-cut hem.','Bottoms',0,'0000-00-00 00:00:00','images/Bottoms/50',4,-1,1,'Forever21'),(62,'Active Mesh Panel Legging',19.9,'A pair of athletic capri leggings featuring mesh paneled asymmetrical leg accents, a mid-rise, and moisture management wicking fabric.','A pair of athletic capri leggings featuring mesh paneled asymmetrical leg accents, a mid-rise, and moisture management wicking fabric.','- Self: 87% nylon, 13% spandex\r\n- Contrast: 82% nylon, 18% spandex\r\n- Machine wash cold\r\n- Made in Philippines','A pair of athletic capri leggings featuring mesh paneled asymmetrical leg accents, a mid-rise, and moisture management wicking fabric.','Bottoms',0,'0000-00-00 00:00:00','images/Bottoms/62',5,-1,1,'Forever21'),(67,'Button-Down Denim Skirt',29,'A denim mini skirt featuring a button-down front, dual slip pockets, and an A-line silhouette.','A denim mini skirt featuring a button-down front, dual slip pockets, and an A-line silhouette.','- 100% cotton\r\n- Machine wash cold\r\n- Made in China','A denim mini skirt featuring a button-down front, dual slip pockets, and an A-line silhouette.','Bottoms',0,'0000-00-00 00:00:00','images/Bottoms/67',4,-1,1,'Forever21'),(69,'Strappy Ankle-Wrap Heels',29.9,'A pair of faux suede heels featuring a strappy upper, open toe, a lace-up ankle wrap design, and a block heel.','A pair of faux suede heels featuring a strappy upper, open toe, a lace-up ankle wrap design, and a block heel.','- Padded insole, textured outsole\r\n- Upper & Insole: 100% polyester\r\n- Lining & Insole coating: 100% polyurethane\r\n- Outsole 1: 60% rayon, 27% cotton, 13% polyester\r\n- Outsole 2: 100% PVC\r\n- Made in China','A pair of faux suede heels featuring a strappy upper, open toe, a lace-up ankle wrap design, and a block heel.','Shoes',0,'0000-00-00 00:00:00','images/Shoes/69',4,-1,1,'Forever21'),(70,'Metallic Faux Leather San',9.9,'A pair of faux leather sandals featuring a metallic finish, toe loop, upper strap, and low heel.','A pair of faux leather sandals featuring a metallic finish, toe loop, upper strap, and low heel.','- Textured outsole\r\n- Upper & Lining: 100% polyurethane\r\n- Outsole: 100% rubber\r\n- Made in China','A pair of faux leather sandals featuring a metallic finish, toe loop, upper strap, and low heel.','Shoes',0,'0000-00-00 00:00:00','images/Shoes/70',6,-1,1,'Forever21'),(71,'Faux Suede Camo Heels',35,'A pair of faux suede heels featuring an allover camo print, peep toe, and stiletto heels.\r\n- This is an independent brand and not a Forever 21 branded item.','A pair of faux suede heels featuring an allover camo print, peep toe, and stiletto heels.\r\n- This is an independent brand and not a Forever 21 branded item.','- Padded insole, textured outsole\r\n- Upper & Insole: 100% polyurethane\r\n- Outsole: 100% Rubber\r\n- Made in China','A pair of faux suede heels featuring an allover camo print, peep toe, and stiletto heels.\r\n- This is an independent brand and not a Forever 21 branded item.','Shoes',0,'0000-00-00 00:00:00','images/Shoes/71',5,-1,1,'Forever21'),(72,'Knotted Satin Slides',19.9,'A pair of satin slide sandals featuring an open toe, knotted vamp detail, and a low heel.','A pair of satin slide sandals featuring an open toe, knotted vamp detail, and a low heel.','- Padded insole, textured outsole\r\n- Upper 1, Lining 1 & Lining 2: 100% polyester\r\n- Upper 2: 100% rubber\r\n- Other: 100% polyurethane\r\n- Outer: 33% polyester, 33% polyurethane, 34% rubber\r\n- Made in China\r\n','A pair of satin slide sandals featuring an open toe, knotted vamp detail, and a low heel.','Shoes',0,'0000-00-00 00:00:00','images/Shoes/72',6,-1,1,'Forever21'),(73,'Yoki Faux Pearl Mule Sand',35,'A pair of velvet mule sandals by Yokiâ„¢ featuring a beaded faux pearl statement strap design, an open-toe and a chunky block heel.','A pair of velvet mule sandals by Yokiâ„¢ featuring a beaded faux pearl statement strap design, an open-toe and a chunky block heel.','- Padded insole, textured outsole\r\n- Upper: 100% Textile\r\n- Made in China','- Heel height: 2.5\"\r\n- Platform: .25\"','Shoes',0,'0000-00-00 00:00:00','images/Shoes/73',4,-1,1,'Forever21'),(74,'Daya by Zendaya Ankle-Wra',78,'A pair of faux patent ankle heels from Daya by Zendayaâ„¢ featuring a ribbed toe strap, a self-tie ankle wrap, and a stacked heel.','A pair of faux patent ankle heels from Daya by Zendayaâ„¢ featuring a ribbed toe strap, a self-tie ankle wrap, and a stacked heel.','- Upper: 100% faux patent leather\r\n- Made in China','- Heel height: 2.5\"\r\n- Shaft height: 6.5\"','Shoes',0,'0000-00-00 00:00:00','images/Shoes/74',4,-1,1,'Forever21'),(75,'Lace-Up Pointed Toe Flats',22.9,'A pair of faux suede flats featuring a lace-up ankle design, pointed toe, and a high shaft.','A pair of faux suede flats featuring a lace-up ankle design, pointed toe, and a high shaft.','- Padded insole, textured outsole\r\n- Upper & Lining: 100% polyester\r\n- Insole: 100% polyurethane\r\n- Outsole: 100% TPR\r\n- Made in China','- Heel height: 0.25\"\r\n- Shaft height: 3.25\"','Shoes',0,'0000-00-00 00:00:00','images/Shoes/75',3,-1,1,'Forever21'),(76,'Jelly Wrap Sandals',9.9,'A pair of jelly thong sandals featuring a strappy design, a braided ankle wrap, and a low heel.','A pair of jelly thong sandals featuring a strappy design, a braided ankle wrap, and a low heel.','- Padded insole, textured outsole\r\n- Upper, Insole & Outsole: 100% polyvinyl\r\n- Made in China','- Heel height: 0.5\"\r\n- Platform: 0.25\"','Shoes',0,'0000-00-00 00:00:00','images/Shoes/76',3,-1,1,'Forever21'),(77,'Crisscross Lucite Heels',34.9,'A pair of faux leather heels featuring an open toe, transparent upper construction, a crisscross design, lucite heel, and an adjustable ankle strap.\r\n- This is an independent brand and not a Forever 21 branded item.','A pair of faux leather heels featuring an open toe, transparent upper construction, a crisscross design, lucite heel, and an adjustable ankle strap.\r\n- This is an independent brand and not a Forever 21 branded item.','- Padded insole, textured\r\n- Upper & Lining: 100% polyurethane\r\n- Upper 2: 66% polyurethane, 34% rubber\r\n- Outsole: 100% rubber\r\n- Made in China','- Heel height: 4.25\"','Shoes',0,'0000-00-00 00:00:00','images/Shoes/77',3,-1,1,'Forever21'),(78,'Satin Lace-Up Sneakers',24.9,'A pair of satin sneakers featuring a lace-up front and a padded shaft.','A pair of satin sneakers featuring a lace-up front and a padded shaft.','- Padded insole, textured outsole\r\n- Upper & Lining: 100% polyester\r\n- Insole: 100% polyurethane\r\n- Outsole: 70% cotton, 30% rayon\r\n- Made in China','- Heel height: 0.75\"\r\n- Shaft height: 2.25\"\r\n- Platform: 0.75\"','Shoes',0,'0000-00-00 00:00:00','images/Shoes/78',5,-1,1,'Forever21'),(83,'Y.R.U. Platform Sneakers',135,'A pair of platform sneakers by Y.R.U.â„¢ featuring an allover glitter design, a round toe, lace-up closure, topstitched detail, padded tongue and collar, and a ridged sole.','A pair of platform sneakers by Y.R.U.â„¢ featuring an allover glitter design, a round toe, lace-up closure, topstitched detail, padded tongue and collar, and a ridged sole.','- Padded insole, textured outsole\r\n- 90% other materials, 10% textile\r\n- Made in China','- Shaft height: 4\"\r\n- Platform height: 3.25\" - 4\"','Shoes',0,'0000-00-00 00:00:00','images/Shoes/83',4,-1,1,'Y.R.U.'),(89,'Brow Bar Aviator Sunglass',5.9,'A pair of high-polish aviators featuring a brow bar and gradient lenses.','A pair of high-polish aviators featuring a brow bar and gradient lenses.','- Made in China','- Height: 2\"\r\n- Width: 5.5\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/89',3,-1,1,'Forever21'),(90,'Classic Aviator Sunglasse',7.9,'A pair of classic high-polish aviator sunglasses featuring a dark solid tinted lens and skinny temples.','A pair of classic high-polish aviator sunglasses featuring a dark solid tinted lens and skinny temples.','- Made in China','- Height: 2.25\"\r\n- Width: 5.75\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/90',3,-1,1,'Forever21'),(91,'Circle Drop Earrings',5.9,'A pair of high-polish drop earrings featuring a linked circle cutout design and post-back closures.\r\n','A pair of high-polish drop earrings featuring a linked circle cutout design and post-back closures.\r\n','- Made in Korea','- Length: 2.75\"\r\n- Width: 0.75\" - 2\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/91',2,-1,1,'Forever21'),(92,'Phone Case for iPhone 6/6',8.9,'A clear hard shell phone case for the iPhone 6Â®, iPhone 6sÂ®, and iPhone 7Â®, featuring an iridescent ombre design.','A clear hard shell phone case for the iPhone 6Â®, iPhone 6sÂ®, and iPhone 7Â®, featuring an iridescent ombre design.','- iPhoneÂ® is a registered trademark of Apple, Inc. Corporation and is used herein for descriptive purposes only.\r\n- Phone not included\r\n- Made in China','- Fit for iPhone 6Â®, iPhone 6sÂ®, and iPhone 7Â®','Accessories',0,'0000-00-00 00:00:00','images/Accessories/92',2,-1,1,'Forever21'),(93,'Faux Leather Braided Belt',4.9,'A faux leather belt featuring a braided construction, with a high-polish curved buckle.','A faux leather belt featuring a braided construction, with a high-polish curved buckle.','- 100% polyurethane\r\n- Made in China','- Length: 41\"\r\n- Width: 0.75\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/93',1,-1,1,'Forever21'),(94,'MELT Cutout Cateye Sungla',28,'A pair of cateye sunglasses by MELTâ„¢ featuring a thin metal frame with a double brow bar and mirrored lenses. Every pair includes a faux leather pouch with a cleaning cloth in a Melt logo box.','A pair of cateye sunglasses by MELTâ„¢ featuring a thin metal frame with a double brow bar and mirrored lenses. Every pair includes a faux leather pouch with a cleaning cloth in a Melt logo box.','- made in China','- Height: 2.25\"\r\n- Width: 5.5\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/94',3,-1,1,'MELT'),(95,'Rainbow Scalloped Choker',3.9,'A scalloped woven choker featuring rainbow colors with an iridescent thread, contrast trim, and a lobster clasp closure.','A scalloped woven choker featuring rainbow colors with an iridescent thread, contrast trim, and a lobster clasp closure.','- 90% polyester, 10% iron\r\n- Made in China','- Chain length: 15.5\"\r\n- DÃ©cor: 12.25\" x 0.25\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/95',1,-1,1,'Forever21'),(96,'Reader Aviator Glasses',5.9,'A pair of reader glasses featuring aviator frames and clear lenses.','A pair of reader glasses featuring aviator frames and clear lenses.','- Made in China','- Height: 2\"\r\n- Width: 5.5\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/96',3,-1,1,'Forever21'),(97,'Textured Metallic Collar ',5.9,'A thin metallic choker featuring a textured finish, collar design, and a lobster clasp closure.','A thin metallic choker featuring a textured finish, collar design, and a lobster clasp closure.','- Made in Korea','- Choker diameter: 4\"\r\n','Accessories',0,'0000-00-00 00:00:00','images/Accessories/97',3,-1,1,'Forever21'),(98,'Geo Pendent Necklace',5.9,'A curb chain necklace with a geo pendent, matchstick accent, and lobster clasp closure.','A curb chain necklace with a geo pendent, matchstick accent, and lobster clasp closure.','- Made in China','- Chain length: 23\"\r\n- DÃ©cor: 1.5\" x 1\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/98',3,-1,1,'Forever21'),(99,'MELT Marble Browline Sung',28,'A pair of round metal sunglasses by MELTâ„¢ featuring a marble browline with cutout sides and mirrored lenses. Every pair includes a faux leather pouch with a cleaning cloth in a Melt logo box.','A pair of round metal sunglasses by MELTâ„¢ featuring a marble browline with cutout sides and mirrored lenses. Every pair includes a faux leather pouch with a cleaning cloth in a Melt logo box.','made in China','- Height: 2.5\"\r\n- Width: 6\"\r\n','Accessories',0,'0000-00-00 00:00:00','images/Accessories/99',4,-1,1,'Forever21'),(100,'Butterfly Cape Costume',48,'A cape costume in a butterfly-wing design featuring an adjustable mock neck, elasticized wristbands, and two rods for added structure and twirl ability. This is an independent brand and not a Forever 21 branded item.','A cape costume in a butterfly-wing design featuring an adjustable mock neck, elasticized wristbands, and two rods for added structure and twirl ability. This is an independent brand and not a Forever 21 branded item.','- One cape, two rods, three pieces total\r\n- 100% polyester\r\n- Hand wash cold\r\n- Made in China',' One size fits most','Accessories',0,'0000-00-00 00:00:00','images/Accessories/100',2,-1,1,'Forever21'),(101,'98 Percent Angel Graphic ',9.9,'A woven baseball cap featuring a \"98% angel\" front embroidery, an adjustable back, and a curved brim.','A woven baseball cap featuring a \"98% angel\" front embroidery, an adjustable back, and a curved brim.','- 100% cotton\r\n- Made in China','- Circumference: 23\"\r\n- Brim: 2.75\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/101',5,-1,1,'Forever21'),(102,'Active Running Cap',10.9,'An athletic cap with mesh panels and an adjustable strap.','An athletic cap with mesh panels and an adjustable strap.','- Shell: 100% polyester\r\n- Lining: 78% polyester, 22% cotton\r\n- Hand wash cold\r\n- Made in China','- Circumference: 22\"\r\n- Brim: 2.625\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/102',2,-1,1,'Forever21'),(104,'Star Shape Hoop Earrings',4.9,'A pair of high-polish hoop earrings in a star-shaped design, and omega closures.','A pair of high-polish hoop earrings in a star-shaped design, and omega closures.','- Made in China','- Length: 2.25\"\r\n- Width: 2.75\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/104',3,-1,1,'Forever21'),(105,'Cutout Heart Drop Earring',3.9,'A pair of cutout heart-shape drop earrings featuring a high-polish finish, and a fish-hook closure.','A pair of cutout heart-shape drop earrings featuring a high-polish finish, and a fish-hook closure.','- Made in China','- Length: 2\"\r\n- Width: 1.5\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/105',2,-1,1,'Forever21'),(106,'Mesh O-Ring Choker Set',8.9,'A choker set featuring a thick chainmail mesh choker, and one skinny cord choker with a bar and O-ring charm detail, and lobster clasp closures.','A choker set featuring a thick chainmail mesh choker, and one skinny cord choker with a bar and O-ring charm detail, and lobster clasp closures.','- Set of two\r\n- Made in China','- Length: 11.5\"- 12\"\r\n- Width: 0.125\" & 0.75\"\r\n- DÃ©cor: 0.75\" x 0.75\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/106',3,-1,1,'Forever21'),(107,'MELT Browline Cateye Sung',28,'A pair of cateye sunglasses by MELTâ„¢ featuring a matte browline and mirrored lenses. Every pair includes a faux leather pouch with a cleaning cloth in a Melt logo box.','A pair of cateye sunglasses by MELTâ„¢ featuring a matte browline and mirrored lenses. Every pair includes a faux leather pouch with a cleaning cloth in a Melt logo box.','made in China','- Height: 2\"\r\n- Width: 5.5\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/107',3,-1,1,'Forever21'),(108,'Disco Bauble Drop Earring',4.9,'A pair of high-polish drop earrings featuring disco-inspired baubles, and a fish-hook back.','A pair of high-polish drop earrings featuring disco-inspired baubles, and a fish-hook back.','- Made in China','- Length: 2.25\"\r\n- DÃ©cor: 0.75\"- 0.75\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/108',2,-1,1,'Forever21'),(109,'Oversized Round Sunglasse',5.9,'A pair of oversized round sunglasses, slightly gradient lenses, and a high polish metal frame.','A pair of oversized round sunglasses, slightly gradient lenses, and a high polish metal frame.','- Made in China','- Height: 2.5\"\r\n- Width: 6\"','Accessories',0,'0000-00-00 00:00:00','images/Accessories/109',3,-1,1,'Selfie Leslie'),(111,'Metallic Pleated Maxi Dre',45,'A knit maxi dress in a metallic finish featuring an allover pleated design, a wraparound self-tie closure, cami straps, and a crossover hem. This is an independent brand and not a Forever 21 branded item.','A knit maxi dress in a metallic finish featuring an allover pleated design, a wraparound self-tie closure, cami straps, and a crossover hem. This is an independent brand and not a Forever 21 branded item.','- 100% polyester\r\n- Hand wash cold\r\n- Made in China','- Model is 5\'8.5\" and wearing a Small\r\n- Full length: 65\"\r\n- Chest: 30\"\r\n- Waist: 30\"','Dresses',0,'0000-00-00 00:00:00','images/Dresses/111',5,-1,1,'Forever21'),(113,'Lace-Up Shift Dress',15.9,'A knit shift dress featuring a contrast lace-up front with grommets, round neckline, and short sleeves.','A knit shift dress featuring a contrast lace-up front with grommets, round neckline, and short sleeves.','- 63% polyester, 33% rayon, 4% spandex\r\n- Machine wash cold\r\n- Made in Indonesia','- Model is 5\'8\" and wearing a Small\r\n- Full length: 33\"\r\n- Chest: 38\"\r\n- Waist: 39\"\r\n- Sleeve length: 7\"','Dresses',0,'0000-00-00 00:00:00','images/Dresses/113',5,-1,1,'Forever21'),(124,'Watermelon Faux Leather T',24.9,'An unstructured faux leather tote bag featuring a stitched watermelon graphic design, contrast shoulder straps, top zipper, two interior slip pockets, and an interior zip pocket.','An unstructured faux leather tote bag featuring a stitched watermelon graphic design, contrast shoulder straps, top zipper, two interior slip pockets, and an interior zip pocket.','- Shell: 100% polyurethane\r\n- Lining: 87% polyester, 13% cotton\r\n- Made in China','- Height: 13\"\r\n- Width: 18.5\"\r\n- Depth: 5.5\"','Bags',0,'0000-00-00 00:00:00','images/Bags/124',3,-1,1,'Forever21'),(125,'America & Beyond Tote Bag',30,'A woven tote bag by America & Beyondâ„¢ featuring an embroidered geo print on the front and sides, dual shoulder straps, multicolored tassels, a zipper top, side slip pockets, and interior zipper and slip pockets.','A woven tote bag by America & Beyondâ„¢ featuring an embroidered geo print on the front and sides, dual shoulder straps, multicolored tassels, a zipper top, side slip pockets, and interior zipper and slip pockets.','- 100% jute\r\n- Made in India','- Height: 13.5\"\r\n- Width: 20\"\r\n- Depth: 6\"','Bags',0,'0000-00-00 00:00:00','images/Bags/125',3,-1,1,'America & Beyon'),(126,'City Graphic Tote Bag',30,'A canvas tote bag featuring a multicolored list of cities including \"Madrid\", \"Los Angeles\", \"New York\" \"Berlin\" and more, and dual shoulder straps.','A canvas tote bag featuring a multicolored list of cities including \"Madrid\", \"Los Angeles\", \"New York\" \"Berlin\" and more, and dual shoulder straps.','- 100% cotton\r\n- Hand wash cold\r\n- Made in China','- Height: 15\"\r\n- Width: 14.5\"','Bags',0,'0000-00-00 00:00:00','images/Bags/126',2,-1,1,'Forever21'),(127,'Striped Ribbed Knit Midi ',10,'This ribbed knit midi dress features a striped pattern, sleeveless cut, scoop neck, and a form-fitting silhouette. This is an independent brand and not a Forever 21 branded item.','This ribbed knit midi dress features a striped pattern, sleeveless cut, scoop neck, and a form-fitting silhouette. This is an independent brand and not a Forever 21 branded item.','\r\n\r\n- 79% cotton, 16% rayon, 5% spandex\r\n\r\n- Hand wash cold\r\n\r\n- Made in China\r\n','\r\n\r\n- Model is 5\'7\" and wearing a Small\r\n\r\n- Full length: 42\"\r\n\r\n- Chest: 25.5\"\r\n\r\n- Waist: 22.5\"\r\n','Dresses',0,'0000-00-00 00:00:00','images/Dresses/127',3,-1,1,'Independent'),(128,' Lace-Up Bustier Bodycon ',45,'A woven bodycon dress featuring a sweetheart bustier-style design with a lace-up front, a front sheer mesh insert, a padded bust, adjustable cami straps, and an exposed back zipper.\r\n\r\n- This is an independent brand and not a Forever 21 branded item.','A woven bodycon dress featuring a sweetheart bustier-style design with a lace-up front, a front sheer mesh insert, a padded bust, adjustable cami straps, and an exposed back zipper.\r\n\r\n- This is an independent brand and not a Forever 21 branded item.','\r\n\r\n- 95% polyester, 5% spandex\r\n\r\n- Hand wash cold\r\n\r\n- Made in China\r\n\r\n- Hand wash cold\r\n\r\n- Made in China\r\n','\r\n\r\n- Model is 5\'9.5\" and wearing a Small\r\n\r\n- Bust to hem: 32.5\"\r\n\r\n- Chest: 25.5\"\r\n\r\n- Waist: 25\"\r\n\r\n- Full length: 42\"\r\n\r\n- Chest: 25.5\"\r\n\r\n- Waist: 22.5\"\r\n','Dresses',0,'0000-00-00 00:00:00','images/Dresses/128',4,-1,1,'Forever21'),(129,'Contrast Caged Mini Dress',50,'A knit mini dress featuring a contrast caged piped design, adjustable cami straps, a plunging sweetheart neckline with padded cups, bodycon silhouette, contrast waistband, and an exposed back zipper.','A knit mini dress featuring a contrast caged piped design, adjustable cami straps, a plunging sweetheart neckline with padded cups, bodycon silhouette, contrast waistband, and an exposed back zipper.','- Shell: 95% polyester, 5% spandex\r\n\r\n- Lining: 100% polyester\r\n\r\n- Hand wash cold\r\n\r\n- Made in China','- Model is 5\'8\" and wearing a Small\r\n\r\n- Bust to hem length: 33\"\r\n\r\n- Chest: 30\"\r\n\r\n- Waist: 26\"\r\n','Dresses',0,'0000-00-00 00:00:00','images/Dresses/129',3,-1,1,'Forever21'),(130,'Cutout Strappy Jumpsuit',50,'A stretch-knit jumpsuit featuring a front split down the legs, strappy side design with grommet accents, V-neckline, sleeveless cut, an exposed back zipper, and a form-fitting silhouette.\r\n\r\n- This is an independent brand and not a Forever 21 branded item.','A stretch-knit jumpsuit featuring a front split down the legs, strappy side design with grommet accents, V-neckline, sleeveless cut, an exposed back zipper, and a form-fitting silhouette.\r\n\r\n- This is an independent brand and not a Forever 21 branded item.','- Shell: 95% polyester, 5% spandex\r\n\r\n- Lining: 100% polyester\r\n\r\n- Hand wash cold\r\n\r\n- Made in China','- Model is 5\'9\" and wearing a Small\r\n\r\n- Full length: 56\"\r\n\r\n- Waist to hem: 40.5\"\r\n\r\n- Inseam: 28.5\"\r\n\r\n- Waist: 22.5\"\r\n\r\n- Chest: 30\"','Dresses',0,'0000-00-00 00:00:00','images/Dresses/130',1,-1,1,'Forever21'),(131,'Floral Surplice Romper',18,'A woven romper featuring an allover floral print, a surplice neck with a crochet trim, a crisscross cami strap design with a self-tie cutout back, and an elasticized waist.','A woven romper featuring an allover floral print, a surplice neck with a crochet trim, a crisscross cami strap design with a self-tie cutout back, and an elasticized waist.','\r\n\r\n- Self: 100% rayon\r\n\r\n- Contrast: 100% cotton\r\n\r\n- Hand wash cold\r\n\r\n- Made in China\r\n','\r\n\r\n- Model is 5\'7\" and wearing a Small\r\n\r\n- Full length: 35\"\r\n\r\n- Waist to hem: 15\"\r\n\r\n- Inseam: 2\"\r\n\r\n- Waist: 24\"\r\n\r\n- Chest: 32\"\r\n','Dresses',0,'0000-00-00 00:00:00','images/Dresses/131',1,-1,1,'Forever21'),(132,' Contemporary Ribbon-Fron',22,'Forever 21 Contemporary - A French terry knit dress featuring a thick ribbon lace-up front neckline, short sleeves, a vented hem, and boxy silhouette.','Forever 21 Contemporary - A French terry knit dress featuring a thick ribbon lace-up front neckline, short sleeves, a vented hem, and boxy silhouette.','\r\n\r\n- 67% polyester, 33% cotton\r\n\r\n- Hand wash cold\r\n\r\n- Made in China\r\n\r\n','\r\n\r\n- Model is 5\'8\" and wearing a Small\r\n\r\n- Full length: 33\"\r\n\r\n- Chest: 42\"\r\n\r\n- Waist: 42\"\r\n\r\n- Sleeve length: 8\"\r\n\r\n\r\n','Dresses',0,'0000-00-00 00:00:00','images/Dresses/132',1,-1,1,'Forever21'),(133,'Ribbed Knit Tank Dress',10,'A ribbed knit tank dress featuring a scooped neckline and a bodycon silhouette.\r\n\r\n- This is an independent brand and not a Forever 21 branded item.','A ribbed knit tank dress featuring a scooped neckline and a bodycon silhouette.\r\n\r\n- This is an independent brand and not a Forever 21 branded item.','- 65% polyester, 35% cotton\r\n\r\n- Machine wash cold\r\n\r\n- Made in China','- Model is 5\'9\" and wearing a Small\r\n\r\n- Full length: 43\"\r\n\r\n- Chest: 27\"\r\n\r\n- Waist: 22\"','Dresses',0,'0000-00-00 00:00:00','images/Dresses/133',1,-1,1,'Forever21'),(134,'Studded Fray Detail Mini ',20,'A denim mini skirt featuring a slightly faded wash, high-polish pointed round studs, frayed detailing, a five-pocket construction, and a zip fly. This is an independent brand and not a Forever 21 branded item.','A denim mini skirt featuring a slightly faded wash, high-polish pointed round studs, frayed detailing, a five-pocket construction, and a zip fly. This is an independent brand and not a Forever 21 branded item.','\r\n\r\n- 100% cotton\r\n\r\n- Hand wash cold\r\n\r\n- Made in China\r\n','\r\n\r\n- Model is 5\'9\" and wearing a Small\r\n\r\n- Full length: 16.5\"\r\n\r\n- Waist: 25\"\r\n','Bottoms',0,'0000-00-00 00:00:00','images/Bottoms/134',1,-1,1,'Forever21'),(135,' Lace Trim Crossover Skir',25,'A woven skirt featuring a lace trim hem, an interior button closure, and a crossover front with an O-ring snap-button closure. This is an independent brand and not a Forever 21 branded item.','A woven skirt featuring a lace trim hem, an interior button closure, and a crossover front with an O-ring snap-button closure. This is an independent brand and not a Forever 21 branded item.','\r\n\r\n- 100% polyester\r\n\r\n- Hand wash cold\r\n\r\n- Made in China\r\n','\r\n\r\n- Model is 5\'9\" and wearing a Small\r\n\r\n- Full length: 16\"\r\n\r\n- Waist: 26\"\r\n','Bottoms',0,'0000-00-00 00:00:00','images/Bottoms/135',1,-1,1,'Forever21'),(136,' Active Mesh-Paneled Legg',15.9,'A pair of knit cotton-blend leggings featuring geo-shaped side mesh panels and an elasticized waist.','A pair of knit cotton-blend leggings featuring geo-shaped side mesh panels and an elasticized waist.','\r\n\r\n- Shell 1: 90% cotton, 10% spandex\r\n\r\n- Shell 2: 82% nylon, 18% spandex\r\n\r\n- Hand wash cold\r\n\r\n- Made in Philippines\r\n','\r\n\r\n- Model is 5\'8.5\" and wearing a Small\r\n\r\n- Inseam: 27.5\"\r\n\r\n- Waist: 25\"\r\n','Bottoms',0,'0000-00-00 00:00:00','images/Bottoms/136',1,-1,1,'Forever21'),(137,'Pixie & Diamond Denim Ski',38,'A denim skirt by Pixie & Diamondâ„¢ featuring a destroyed design, five-pocket construction, and a zip fly.','A denim skirt by Pixie & Diamondâ„¢ featuring a destroyed design, five-pocket construction, and a zip fly.','\r\n\r\n- 100% cotton\r\n\r\n- Machine wash cold\r\n\r\n- Made in China\r\n','\r\n\r\n- Model is 5\'8.5\" and wearing a Small\r\n\r\n- Full length: 16\"\r\n\r\n- Waist: 28\"\r\n','Bottoms',0,'0000-00-00 00:00:00','images/Bottoms/137',1,-1,1,'Forever21'),(138,' Light Wash Ripped Skinny',29.9,'A pair of light wash skinny jeans featuring ripped up knees, a high rise, an ankle length, two patch pockets in back, and a zip fly.','A pair of light wash skinny jeans featuring ripped up knees, a high rise, an ankle length, two patch pockets in back, and a zip fly.','\r\n\r\n- 98% cotton, 2% spandex\r\n\r\n- Machine wash cold\r\n\r\n- Made in Pakistan\r\n','\r\n\r\n- Model is 5\'10.5\" and wearing a Size 26\r\n\r\n- Inseam: 29\"\r\n\r\n- Waist: 26\"\r\n\r\n- Rise: 10.5\"\r\n','Bottoms',0,'0000-00-00 00:00:00','images/Bottoms/138',1,-1,1,'Forever21'),(139,'Mesh Makeup Bag',6.9,'A mesh makeup bag featuring a contrast zip top.','A mesh makeup bag featuring a contrast zip top.','- Shell & Lining: 100% polyester\r\n\r\n- Made in China','- Height: 6\"\r\n\r\n- Width: 9\"\r\n\r\n- Depth: 0.5\"','Bags',0,'0000-00-00 00:00:00','images/Bags/139',1,-1,1,'Forever21');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `balance` double DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sergey','202cb962ac59075b964b07152d234b70','hello@gmail.com','+998901671213','admin',0),(2,'Andra','202cb962ac59075b964b07152d234b70','dcp@gmail.com','+998933754139','client',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist #1`
--

DROP TABLE IF EXISTS `wishlist #1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist #1` (
  `product_id` bigint(20) DEFAULT NULL,
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  KEY `product_id` (`product_id`),
  CONSTRAINT `wishlist #1_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist #1`
--

LOCK TABLES `wishlist #1` WRITE;
/*!40000 ALTER TABLE `wishlist #1` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist #1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist #2`
--

DROP TABLE IF EXISTS `wishlist #2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist #2` (
  `product_id` bigint(20) DEFAULT NULL,
  `size` varchar(3) NOT NULL,
  `color` varchar(20) NOT NULL,
  KEY `product_id` (`product_id`),
  CONSTRAINT `wishlist #2_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist #2`
--

LOCK TABLES `wishlist #2` WRITE;
/*!40000 ALTER TABLE `wishlist #2` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist #2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-09 23:14:52
