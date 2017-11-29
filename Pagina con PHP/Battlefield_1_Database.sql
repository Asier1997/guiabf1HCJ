-- MySQL dump 10.15  Distrib 10.0.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Battlefield_1
-- ------------------------------------------------------
-- Server version	10.0.31-MariaDB-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Armas_Apoyo`
--

DROP TABLE IF EXISTS `Armas_Apoyo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Armas_Apoyo` (
  `Arma` varchar(20) NOT NULL,
  `DMG` int(11) DEFAULT NULL,
  `Cargador` int(11) DEFAULT NULL,
  PRIMARY KEY (`Arma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Armas_Apoyo`
--

LOCK TABLES `Armas_Apoyo` WRITE;
/*!40000 ALTER TABLE `Armas_Apoyo` DISABLE KEYS */;
INSERT INTO `Armas_Apoyo` VALUES ('BAR M1918',26,31),('Chau-Chat',32,20),('Lewis Gun',20,55),('M1909',26,31),('Madsen',23,31);
/*!40000 ALTER TABLE `Armas_Apoyo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Armas_Asalto`
--

DROP TABLE IF EXISTS `Armas_Asalto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Armas_Asalto` (
  `Arma` varchar(5) NOT NULL,
  `DMG` int(11) DEFAULT NULL,
  `Cargador` int(11) DEFAULT NULL,
  PRIMARY KEY (`Arma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Armas_Asalto`
--

LOCK TABLES `Armas_Asalto` WRITE;
/*!40000 ALTER TABLE `Armas_Asalto` DISABLE KEYS */;
INSERT INTO `Armas_Asalto` VALUES ('C96',16,40),('Caba',51,89),('Carca',80,5),('Houda',80,5),('Intel',5,5),('mg',200,25),('mg23',20,100),('MP18',25,32),('MP40',80,5),('PM',78,63),('Prueb',200,54),('puñal',8,30),('Sarté',100,50);
/*!40000 ALTER TABLE `Armas_Asalto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Armas_Explorador`
--

DROP TABLE IF EXISTS `Armas_Explorador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Armas_Explorador` (
  `Arma` varchar(20) NOT NULL,
  `DMG` int(11) DEFAULT NULL,
  `Cargador` int(11) DEFAULT NULL,
  PRIMARY KEY (`Arma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Armas_Explorador`
--

LOCK TABLES `Armas_Explorador` WRITE;
/*!40000 ALTER TABLE `Armas_Explorador` DISABLE KEYS */;
INSERT INTO `Armas_Explorador` VALUES ('Gewher 98',90,5),('KaR 98',96,5),('Martiny',100,1),('SMLE',91,10),('Vitali 1870',87,5);
/*!40000 ALTER TABLE `Armas_Explorador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Armas_Medico`
--

DROP TABLE IF EXISTS `Armas_Medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Armas_Medico` (
  `Arma` varchar(20) NOT NULL,
  `DMG` int(11) DEFAULT NULL,
  `Cargador` int(11) DEFAULT NULL,
  PRIMARY KEY (`Arma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Armas_Medico`
--

LOCK TABLES `Armas_Medico` WRITE;
/*!40000 ALTER TABLE `Armas_Medico` DISABLE KEYS */;
INSERT INTO `Armas_Medico` VALUES ('Automatico',23,26),('Cell-Rigotti',40,10),('M1916',26,18),('Mondragon',42,10),('Selbstlader',45,5);
/*!40000 ALTER TABLE `Armas_Medico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29  8:14:54
