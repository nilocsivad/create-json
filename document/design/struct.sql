-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: db_create_json
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Customer ID',
  `uname` varchar(48) DEFAULT NULL COMMENT 'Customer Name',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Customer User';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `uid` int(11) NOT NULL COMMENT 'Customer ID',
  `lname` varchar(96) DEFAULT NULL,
  `lpwd` char(32) DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT 'Status  0:未验证  1:验证通过  2:授权过期(微信QQ微博)',
  KEY `FK_Reference_Login_2_Customer` (`uid`),
  CONSTRAINT `FK_Reference_Login_2_Customer` FOREIGN KEY (`uid`) REFERENCES `customer` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Login';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `res`
--

DROP TABLE IF EXISTS `res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `res` (
  `uid` int(11) NOT NULL COMMENT 'Customer ID',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT 'Type  0: xml file  1: xml string',
  `res` text NOT NULL COMMENT 'Resource',
  `url` varchar(256) NOT NULL COMMENT 'URL',
  `status` int(2) DEFAULT '1' COMMENT 'Status  0: delete  1: using',
  KEY `FK_Reference_Resource_2_Customer` (`uid`),
  CONSTRAINT `FK_Reference_Resource_2_Customer` FOREIGN KEY (`uid`) REFERENCES `customer` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `uid` int(11) NOT NULL COMMENT 'Customer ID',
  `token` char(36) DEFAULT NULL,
  `totime` varchar(14) DEFAULT NULL,
  KEY `FK_Reference_Token_2_Customer` (`uid`),
  CONSTRAINT `FK_Reference_Token_2_Customer` FOREIGN KEY (`uid`) REFERENCES `customer` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vip`
--

DROP TABLE IF EXISTS `vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip` (
  `uid` int(11) NOT NULL COMMENT 'Customer ID',
  `todate` char(19) DEFAULT NULL,
  `count` int(2) DEFAULT '20',
  KEY `FK_Reference_VIP_2_Customer` (`uid`),
  CONSTRAINT `FK_Reference_VIP_2_Customer` FOREIGN KEY (`uid`) REFERENCES `customer` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='VIP   非VIP限制JSON格式数量';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-16 18:21:26
