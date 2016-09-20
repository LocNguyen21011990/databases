-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 172.16.0.68    Database: rutledge-geoip
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.12.04.1-log

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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `country_code` varchar(45) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `imagecity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES ('073ec8d0-1687-11e6-bc8a-45b3eb0c3c3c','Singapore','Demo singapore V2','73000',1,'2016-05-10 08:13:07','2016-05-11 02:24:03','/uploads/54IrGXXVaZnbTNcmK93GjNxm.png'),('08030620-172a-11e6-93a1-b98b5005147f','Dubai','Demo Dubai City','56000',1,'2016-05-11 03:39:57','2016-05-11 03:39:57','/uploads/sZEukRWSVFz4R11lBrbpvIOf.png'),('122d5970-1342-11e6-83d2-bbfe2430f480','New York','Demo for Newyork','73000',0,'2016-05-06 04:21:57','2016-05-11 02:29:44','/uploads/hwnKqsZrwL-9XRL0fnGpzMEG.jpg'),('233d1540-175a-11e6-98e1-7faa0f628632','Campodia',NULL,NULL,1,'2016-05-11 09:24:18','2016-05-11 09:24:18','/uploads/5J6z1o5y7y2tc6ZcAuujtjki.jpg'),('2cc744a0-166a-11e6-990d-3b8d9dfbb8ad','Saigon','HCM city',NULL,1,'2016-05-10 04:46:34','2016-05-11 02:42:51','/uploads/-QvKvJH3nogwG7itTE95J24k.png'),('4a76d7b0-1686-11e6-bc8a-45b3eb0c3c3c','Paris','Paris demo City','75000',1,'2016-05-10 08:07:51','2016-05-11 02:41:24','/uploads/VoEh0OJyh4TTEVWKovB0tvv_.png'),('53b23f30-18d5-11e6-8045-1bd34e910463','Beijing','China','76000',1,'2016-05-13 06:38:39','2016-05-13 06:38:39','/uploads/5a8T3Zt3-MbwEYmGH3Mde5JR.jpg'),('8e1dc970-168f-11e6-a586-db459e049230','Singapore V2','Singapore',NULL,1,'2016-05-10 09:14:10','2016-05-11 02:44:04','/uploads/dMtfwk9xznqQx5q-sqBVw6ku.png'),('a04c0260-172a-11e6-93a1-b98b5005147f','Toronto','Demo toronto City','68000',1,'2016-05-11 03:44:12','2016-05-11 03:44:12','/uploads/wz3mkBo6uRGYU4ktfsGloNOV.png'),('a8be61f0-1341-11e6-83d2-bbfe2430f480','Kulalumpur','Description city 1','71000',1,'2016-05-06 04:19:00','2016-05-11 02:26:12','/uploads/17RGI6e8isXK4dJukp57d46Q.png'),('a93f1880-339f-11e6-a124-4742e77aa9cf','Miband2','Miband2','dfed600b-3398-11e6-bb4e-ecb1d7f32a10',1,'2016-06-16 08:52:31','2016-06-16 08:52:31','/uploads/pd4whXksOtJVONGL4TL_sPyA.jpg'),('af0b63a0-1341-11e6-83d2-bbfe2430f480','Bangkok','Description Capital','72000',1,'2016-05-06 04:19:11','2016-05-11 02:50:25','/uploads/g_1xtcYEooVK7lbMWNAojD-q.jpg'),('af392ea0-1758-11e6-98e1-7faa0f628632','Hanoi','Demo','70000',1,'2016-05-11 09:13:54','2016-05-11 09:13:54','/uploads/tgClpEaLFA_CN4ur530bYyuE.png'),('beb1c1e0-174d-11e6-8ed7-2f7e40f97256','Tokyo','Demo','40000',1,'2016-05-11 07:55:36','2016-05-11 07:55:36','/uploads/elL6UhuGQ_EX1rSV77VXweSt.png');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `imageDevice` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `typeid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES ('2292b2c0-3398-11e6-bb4e-ecb1d7f32a10','static 1','Son',NULL,1,'2016-06-16 14:58:38','2016-06-17 10:08:39','d9661430-3398-11e6-bb4e-ecb1d7f32a10'),('2ed5016a-3398-11e6-bb4e-ecb1d7f32a10','static 2',NULL,NULL,1,'2016-06-16 14:58:59','2016-06-16 14:58:59','d9661430-3398-11e6-bb4e-ecb1d7f32a10'),('3660d43e-3398-11e6-bb4e-ecb1d7f32a10','static 3',NULL,'/uploads/-hcyI4LRZqM37x-s1OoGSDZe.jpg',1,'2016-06-16 14:59:12','2016-06-17 09:49:17','d9661430-3398-11e6-bb4e-ecb1d7f32a10'),('78502b90-33a1-11e6-8ccb-3df3b56278dd','Miban3','Miban3','/uploads/Vsm_iPtkqw7sw80Gf07fhAsk.jpg',1,'2016-06-16 09:05:28','2016-06-17 07:35:19','dfed600b-3398-11e6-bb4e-ecb1d7f32a10');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devicecanvas`
--

DROP TABLE IF EXISTS `devicecanvas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devicecanvas` (
  `id` varchar(36) NOT NULL,
  `zoneId` varchar(36) CHARACTER SET big5 NOT NULL,
  `baseCode` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devicecanvas`
--

LOCK TABLES `devicecanvas` WRITE;
/*!40000 ALTER TABLE `devicecanvas` DISABLE KEYS */;
INSERT INTO `devicecanvas` VALUES ('40b9f040-3459-11e6-af06-8196f528f476','0d71d5f0-137e-11e6-9361-91bcf9411721','[{\"zoneImage\":\"uploads/THS78ZZAFQbXa_EaWKhy6tyR.jpg\",\"top\":0,\"left\":0},{\"top\":207.5,\"left\":131.5,\"width\":51.3291015625,\"height\":17.608000000000004,\"stroke\":\"red\",\"strokeWidth\":3,\"fill\":\"green\",\"scaleX\":1,\"scaleY\":1,\"deviceName\":\"static 3\",\"deviceId\":\"3660d43e-3398-11e6-bb4e-ecb1d7f32a10\"},{\"top\":62.5,\"left\":185.5,\"width\":51.3291015625,\"height\":17.608000000000004,\"stroke\":\"red\",\"strokeWidth\":3,\"fill\":\"green\",\"scaleX\":1,\"scaleY\":1,\"deviceName\":\"static 1\",\"deviceId\":\"2292b2c0-3398-11e6-bb4e-ecb1d7f32a10\"}]'),('ebff0160-3473-11e6-9e23-8bcdec1ec5df','491ac800-1342-11e6-83d2-bbfe2430f480','[{\"zoneImage\":\"uploads/brC6b-HJGFH0yb3inPirKRuQ.gif\",\"top\":0,\"left\":0},{\"top\":187.5,\"left\":134.5,\"width\":41.8291015625,\"height\":23.5,\"stroke\":\"red\",\"strokeWidth\":3,\"fill\":\"green\",\"scaleX\":1,\"scaleY\":1,\"deviceName\":\"static 3\",\"deviceId\":\"3660d43e-3398-11e6-bb4e-ecb1d7f32a10\"},{\"top\":113.5,\"left\":324.5,\"width\":41.8291015625,\"height\":23.5,\"stroke\":\"red\",\"strokeWidth\":3,\"fill\":\"green\",\"scaleX\":1,\"scaleY\":1,\"deviceName\":\"static 1\",\"deviceId\":\"2292b2c0-3398-11e6-bb4e-ecb1d7f32a10\"}]');
/*!40000 ALTER TABLE `devicecanvas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devicelist`
--

DROP TABLE IF EXISTS `devicelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devicelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regId` varchar(300) DEFAULT NULL,
  `dateCreate` date DEFAULT NULL,
  `isActive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devicelist`
--

LOCK TABLES `devicelist` WRITE;
/*!40000 ALTER TABLE `devicelist` DISABLE KEYS */;
INSERT INTO `devicelist` VALUES (1,'fGcqGONEdR8:APA91bE3SR-X6cHNbpZDHoWgwnso0Vi5WzcQl3O6uVoIqh532jWOj-GiXEBzd8qHftqeNcQJUf0pTNLrAPw8My6gb5tGC-a_7g3uctUlODAvo2Uv6Qi1SgwRvFHbkr2RAu48tgs4CzIP','2016-05-16',''),(2,'cc77gqZsQ6k:APA91bG5eZPSsFt25XMlmzD_UP1s7waJtiIGwpOiqntdx6ePmxPR5O1kgFbBIl__VMBKmS6S3qo_vbGGGoSHg6qpwgjnVYVHWwy_GoWaxjbpAfiDlG4gh1NKp98BNSRlvfpMy1Njn_5p','2016-05-18','');
/*!40000 ALTER TABLE `devicelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drill`
--

DROP TABLE IF EXISTS `drill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drill` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `cityid` varchar(36) DEFAULT NULL,
  `imagedrill` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drill`
--

LOCK TABLES `drill` WRITE;
/*!40000 ALTER TABLE `drill` DISABLE KEYS */;
INSERT INTO `drill` VALUES ('18857f90-1730-11e6-93a1-b98b5005147f','Toronto Tower','Demo',1,'2016-05-11 04:23:21','2016-05-11 04:23:21','a04c0260-172a-11e6-93a1-b98b5005147f','/uploads/ouX4jhVQo9t59owukXy0uOPL.png'),('289d5e30-1342-11e6-83d2-bbfe2430f480','Drill 1','Description 1',1,'2016-05-06 04:22:35','2016-05-06 04:22:35','122d5970-1342-11e6-83d2-bbfe2430f480','/uploads/office-building-icon-png-office-building.jpg.png'),('320b7600-1342-11e6-83d2-bbfe2430f480','Drill 2','Description 2',1,'2016-05-06 04:22:50','2016-05-06 04:22:50','af0b63a0-1341-11e6-83d2-bbfe2430f480','/uploads/buildings2-icon-64x64.png'),('3b4648d0-1342-11e6-83d2-bbfe2430f480','Drill 3','Description drill3',1,'2016-05-06 04:23:06','2016-05-09 11:02:29','a8be61f0-1341-11e6-83d2-bbfe2430f480','/uploads/plainicon.com-61433-256px-dfc.png'),('3e6076b0-169b-11e6-8f4c-273f02f89258','Demo 4','Demo',1,'2016-05-10 10:37:50','2016-05-10 10:37:50','8e1dc970-168f-11e6-a586-db459e049230','/uploads/f0bmhnouSgafsOeYxfHchNS9.png'),('435e7b30-1740-11e6-8ed7-2f7e40f97256','Drill 2','Demo',1,'2016-05-11 06:19:05','2016-05-11 06:19:05','122d5970-1342-11e6-83d2-bbfe2430f480','/uploads/MYtNsKER7VWEwNT5y-5r-Wxi.png'),('4a8cf150-1742-11e6-8ed7-2f7e40f97256','Drill Kulalumpur','Demo',1,'2016-05-11 06:33:36','2016-05-11 06:33:36','a8be61f0-1341-11e6-83d2-bbfe2430f480','/uploads/2v_OmELaAEWDECe4mD355oXp.png'),('4b8168a0-1730-11e6-93a1-b98b5005147f','Dubai Tower','Demo',1,'2016-05-11 04:24:47','2016-05-11 04:24:47','08030620-172a-11e6-93a1-b98b5005147f','/uploads/F0kLT0d5qEfZdVxPWwQwyI74.jpg'),('4cbf1800-169c-11e6-8f4c-273f02f89258','Demo 5','Demo 5',1,'2016-05-10 10:45:23','2016-05-11 02:37:27','8e1dc970-168f-11e6-a586-db459e049230','/uploads/wYsydtu_bqfXiTqFZ7mHXuXo.jpg'),('8ef14b60-1766-11e6-982d-e310bef27f28','Demo Drill 8','Demo',1,'2016-05-11 10:53:12','2016-05-12 01:10:56','8e1dc970-168f-11e6-a586-db459e049230','/uploads/f8UyIk2T59oajPlVA4pBHCKK.jpg'),('a2b483e0-169b-11e6-8f4c-273f02f89258','Demo 5','Demo',1,'2016-05-10 10:40:38','2016-05-10 10:40:38','8e1dc970-168f-11e6-a586-db459e049230','/uploads/2ZU3je3ytbNUyjIi6Xbhvqpc.jpg'),('ab55a530-168f-11e6-a586-db459e049230','Jurong','Demo Jurong',1,'2016-05-10 09:14:59','2016-05-11 02:39:01','8e1dc970-168f-11e6-a586-db459e049230','/uploads/oMvTWiuDQqVN1GKjU0xxUVDb.jpg'),('bfea18d0-1763-11e6-9b28-35ec26c62d35','Demo Dril 6','Demo',1,'2016-05-11 10:33:05','2016-05-11 10:33:05','8e1dc970-168f-11e6-a586-db459e049230','/uploads/fsZ9m5hD4fL_yf42xOqiOnsh.png'),('ca8e3fa0-1763-11e6-9b28-35ec26c62d35','Demo Dril 7','Demo 7',1,'2016-05-11 10:33:24','2016-06-17 06:35:15','8e1dc970-168f-11e6-a586-db459e049230','/uploads/ok_DOI8yUCATtVKg78PJy2pN.png'),('d693d7c0-174e-11e6-8ed7-2f7e40f97256','Tokyo Drill 1','Demo',1,'2016-05-11 08:03:25','2016-05-11 08:03:25','beb1c1e0-174d-11e6-8ed7-2f7e40f97256','/uploads/kiFrYS1qwngYyAexCPbLIVME.png'),('e8cf4470-1757-11e6-98e1-7faa0f628632','Demo drill 5','Demo',1,'2016-05-11 09:08:21','2016-05-11 09:08:21','8e1dc970-168f-11e6-a586-db459e049230','/uploads/W8h1c4vPDXFdFB_FhabQfYKf.jpg'),('f57fa510-174e-11e6-8ed7-2f7e40f97256','Tokyo Drill 2','Demo',1,'2016-05-11 08:04:17','2016-05-11 08:04:17','beb1c1e0-174d-11e6-8ed7-2f7e40f97256','/uploads/hVzH3Z7xDUmvCWy4LXiFnyxk.png');
/*!40000 ALTER TABLE `drill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES ('c1a9f91a-076b-11e6-9766-4c0535fc5099','Check In','2016-04-21 09:50:07','2016-04-21 09:50:07'),('c6a2e107-076b-11e6-9766-4c0535fc5099','Check Out','2016-04-21 09:50:15','2016-04-21 09:50:15');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES ('097161e0-1d7a-11e6-98b4-c32f7ae31750','guest','2016-05-19 04:27:46','2016-06-16 04:19:56','this is guest group'),('2ed41710-3694-11e6-927d-97910d8fe6c3','tenantIoT','2016-06-20 03:07:54',NULL,'permision for tenantIoT'),('a7e5ac60-1d8d-11e6-af1c-df830cc8edec','logisticIoT','2016-05-19 06:48:13','2016-06-20 08:07:23','permision for logistis IoT'),('c53c3050-1d64-11e6-934d-4342c0e5bbfe','sysadmin','2016-05-19 01:55:32','2016-06-20 03:05:45','sysadmin is full permission'),('f8b67c20-1ceb-11e6-9999-c70c83f29ca5','peopleIoT','0000-00-00 00:00:00','2016-06-16 04:07:20','Permision for people IoT');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` varchar(36) NOT NULL,
  `sensorid` varchar(36) DEFAULT NULL,
  `h2s` int(11) DEFAULT NULL,
  `heartbeat` int(11) DEFAULT NULL,
  `datecreated` timestamp NULL DEFAULT NULL,
  `datemodified` timestamp NULL DEFAULT NULL,
  `message` longtext,
  `email` varchar(45) DEFAULT NULL,
  `ios` varchar(45) DEFAULT NULL,
  `android` varchar(45) DEFAULT NULL,
  `ruleid` varchar(36) DEFAULT NULL,
  `staffid` varchar(36) DEFAULT NULL,
  `roomid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES ('4f8bcb20-346d-11e6-a11e-473d9724e71b',NULL,NULL,NULL,'2016-06-17 09:24:37','2016-06-17 09:24:37','Overtime 8pm',NULL,NULL,NULL,'ddceddb1-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','60861cb0-1342-11e6-83d2-bbfe2430f480'),('69db1070-346e-11e6-a11e-473d9724e71b',NULL,NULL,NULL,'2016-06-17 09:32:30','2016-06-17 09:32:30','Overtime 8pm',NULL,NULL,NULL,'ddceddb1-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','60861cb0-1342-11e6-83d2-bbfe2430f480'),('7c1a0b20-346d-11e6-a11e-473d9724e71b',NULL,NULL,NULL,'2016-06-17 09:25:51','2016-06-17 09:25:51','Overtime 8pm',NULL,NULL,NULL,'ddceddb1-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','60861cb0-1342-11e6-83d2-bbfe2430f480');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` varchar(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `keylanguage` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `showmenu` tinyint(1) DEFAULT '1',
  `sortorder` varchar(255) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES ('009d71f0-3399-11e6-8632-afc0f60b7b21','Device Defination','home.devicedefinition','fa-desktop','DEVICE_DEFINITION',1,1,NULL,'2016-06-16 08:04:51','2016-06-20 04:34:35'),('348e6954-1c21-11e6-ad52-ecb1d7f32a10','CheckIn/CheckOut','home.history','fa-calendar','MENU_LEFT_CHECKIN_CHECKOUT',1,1,NULL,NULL,NULL),('34965ed4-1c21-11e6-ad52-ecb1d7f32a10','Notification Management','home.notification','fa-bell-o','MENU_LEFT_NOTIFICATION',1,1,NULL,NULL,NULL),('34a13bb5-1c21-11e6-ad52-ecb1d7f32a10','Rule Master','home.rule','fa-cog','MENU_LEFT_RULEMASTER',1,1,NULL,NULL,NULL),('34a7502d-1c21-11e6-ad52-ecb1d7f32a10','Room','home.room','fa-th','MENU_LEFT_ROOM',1,1,NULL,NULL,NULL),('34ad5c54-1c21-11e6-ad52-ecb1d7f32a10','Zone','home.zone','fa-th','MENU_LEFT_ZONE',1,1,NULL,NULL,NULL),('34b2c336-1c21-11e6-ad52-ecb1d7f32a10','Drill','home.drill','fa-th','MENU_LEFT_DRILL',1,1,NULL,NULL,NULL),('34bb2f38-1c21-11e6-ad52-ecb1d7f32a10','City','home.city','fa-th','MENU_LEFT_CITY',1,1,NULL,NULL,NULL),('6c5134d0-1e5a-11e6-adf3-2df5ab79e1c2','edit test','test','test','test',1,0,'test','2016-05-20 07:13:59','2016-06-01 03:40:05'),('9c3956c0-346a-11e6-af06-8196f528f476','Device Monitoring','home.devicemonitoring','fa-desktop','DEVICE_MONITORING',1,1,'','2016-06-17 09:05:17','2016-06-17 09:17:03'),('c1783ab0-3432-11e6-b050-a31e19ecb812','Staff','home.staff','fa-users','MENU_LEFT_STAFF',1,1,NULL,'2016-06-17 02:25:28',NULL),('e76174de-1bfd-11e6-ad52-ecb1d7f32a10','Dashboard','home.dashboard','fa-tachometer','MENU_LEFT_DASHBOARD',1,1,NULL,NULL,NULL),('e766f91f-1bfd-11e6-ad52-ecb1d7f32a10','Zone Monitoring','home.zonemonitoring','fa-map-marker','MENU_LEFT_ZONE_MONITORING',1,1,NULL,NULL,NULL),('e76c09f9-1bfd-11e6-ad52-ecb1d7f32a10','Zone Definition','home.zonedefinition','fa-map-marker','MENU_LEFT_ZONE_DEFINITION',1,1,NULL,NULL,NULL),('e76c09f9-1bfd-11e6-ad52-ecb1d8f12a10','Users','home.users','fa-user','MENU_LEFT_USERS',1,1,NULL,NULL,NULL),('e76c09f9-1bfd-12e6-ad52-ecb1d8f12a10','Groups','home.usergroup','fa-users','MENU_LEFT_USER_GROUP',1,1,NULL,NULL,NULL),('e76c09f9-1bfd-12e6-ad53-ecb1d8f12a10','Site tree','home.sitetree','fa-sitemap','MENU_LEFT_SITE_TREE',1,1,NULL,NULL,NULL),('e76c09f9-1bfd-12e6-ad53-ecb1d8f14a10','Site tree edit','home.sitetree.edit','fa-sitemap','MENU_LEFT_SITE_TREE_EDIT',1,1,NULL,NULL,NULL),('f25a6130-3392-11e6-9fc4-7dc456d97586','Device','home.device','fa-mobile','MENU_LEFT_DEVICE',1,1,NULL,'2016-06-16 07:21:30',NULL);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_group`
--

DROP TABLE IF EXISTS `page_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_group` (
  `id` varchar(36) NOT NULL,
  `pageid` varchar(36) DEFAULT NULL,
  `accessgroup` text,
  PRIMARY KEY (`id`),
  KEY `pageid_idx` (`pageid`),
  CONSTRAINT `pageid` FOREIGN KEY (`pageid`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_group`
--

LOCK TABLES `page_group` WRITE;
/*!40000 ALTER TABLE `page_group` DISABLE KEYS */;
INSERT INTO `page_group` VALUES ('04d9d650-36be-11e6-bcaf-658cbe3f72ed','34965ed4-1c21-11e6-ad52-ecb1d7f32a10','a7e5ac60-1d8d-11e6-af1c-df830cc8edec'),('04d9fd60-36be-11e6-bcaf-658cbe3f72ed','9c3956c0-346a-11e6-af06-8196f528f476','a7e5ac60-1d8d-11e6-af1c-df830cc8edec'),('2ed41711-3694-11e6-927d-97910d8fe6c3','009d71f0-3399-11e6-8632-afc0f60b7b21','2ed41710-3694-11e6-927d-97910d8fe6c3'),('2ed43e20-3694-11e6-927d-97910d8fe6c3','34a13bb5-1c21-11e6-ad52-ecb1d7f32a10','2ed41710-3694-11e6-927d-97910d8fe6c3'),('2ed43e21-3694-11e6-927d-97910d8fe6c3','34a7502d-1c21-11e6-ad52-ecb1d7f32a10','2ed41710-3694-11e6-927d-97910d8fe6c3'),('2ed43e22-3694-11e6-927d-97910d8fe6c3','34ad5c54-1c21-11e6-ad52-ecb1d7f32a10','2ed41710-3694-11e6-927d-97910d8fe6c3'),('2ed43e23-3694-11e6-927d-97910d8fe6c3','34b2c336-1c21-11e6-ad52-ecb1d7f32a10','2ed41710-3694-11e6-927d-97910d8fe6c3'),('2ed48c40-3694-11e6-927d-97910d8fe6c3','34bb2f38-1c21-11e6-ad52-ecb1d7f32a10','2ed41710-3694-11e6-927d-97910d8fe6c3'),('2ed48c41-3694-11e6-927d-97910d8fe6c3','c1783ab0-3432-11e6-b050-a31e19ecb812','2ed41710-3694-11e6-927d-97910d8fe6c3'),('2ed48c42-3694-11e6-927d-97910d8fe6c3','e76c09f9-1bfd-11e6-ad52-ecb1d7f32a10','2ed41710-3694-11e6-927d-97910d8fe6c3'),('2ed48c43-3694-11e6-927d-97910d8fe6c3','e76c09f9-1bfd-11e6-ad52-ecb1d8f12a10','2ed41710-3694-11e6-927d-97910d8fe6c3'),('2ed48c44-3694-11e6-927d-97910d8fe6c3','e76c09f9-1bfd-12e6-ad52-ecb1d8f12a10','2ed41710-3694-11e6-927d-97910d8fe6c3'),('2ed48c45-3694-11e6-927d-97910d8fe6c3','f25a6130-3392-11e6-9fc4-7dc456d97586','2ed41710-3694-11e6-927d-97910d8fe6c3'),('951ddb00-3379-11e6-9189-6d429cff9119','e76174de-1bfd-11e6-ad52-ecb1d7f32a10','097161e0-1d7a-11e6-98b4-c32f7ae31750'),('d2430070-3377-11e6-9189-6d429cff9119','348e6954-1c21-11e6-ad52-ecb1d7f32a10','f8b67c20-1ceb-11e6-9999-c70c83f29ca5'),('d2430071-3377-11e6-9189-6d429cff9119','34965ed4-1c21-11e6-ad52-ecb1d7f32a10','f8b67c20-1ceb-11e6-9999-c70c83f29ca5'),('d2430072-3377-11e6-9189-6d429cff9119','e76174de-1bfd-11e6-ad52-ecb1d7f32a10','f8b67c20-1ceb-11e6-9999-c70c83f29ca5'),('d2430073-3377-11e6-9189-6d429cff9119','e766f91f-1bfd-11e6-ad52-ecb1d7f32a10','f8b67c20-1ceb-11e6-9999-c70c83f29ca5'),('e19687d0-3693-11e6-927d-97910d8fe6c3','009d71f0-3399-11e6-8632-afc0f60b7b21','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aee0-3693-11e6-927d-97910d8fe6c3','348e6954-1c21-11e6-ad52-ecb1d7f32a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aee1-3693-11e6-927d-97910d8fe6c3','34965ed4-1c21-11e6-ad52-ecb1d7f32a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aee2-3693-11e6-927d-97910d8fe6c3','34a13bb5-1c21-11e6-ad52-ecb1d7f32a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aee3-3693-11e6-927d-97910d8fe6c3','34a7502d-1c21-11e6-ad52-ecb1d7f32a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aee4-3693-11e6-927d-97910d8fe6c3','34ad5c54-1c21-11e6-ad52-ecb1d7f32a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aee5-3693-11e6-927d-97910d8fe6c3','34b2c336-1c21-11e6-ad52-ecb1d7f32a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aee6-3693-11e6-927d-97910d8fe6c3','34bb2f38-1c21-11e6-ad52-ecb1d7f32a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aee7-3693-11e6-927d-97910d8fe6c3','9c3956c0-346a-11e6-af06-8196f528f476','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aee8-3693-11e6-927d-97910d8fe6c3','c1783ab0-3432-11e6-b050-a31e19ecb812','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aee9-3693-11e6-927d-97910d8fe6c3','e76174de-1bfd-11e6-ad52-ecb1d7f32a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aeea-3693-11e6-927d-97910d8fe6c3','e766f91f-1bfd-11e6-ad52-ecb1d7f32a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aeeb-3693-11e6-927d-97910d8fe6c3','e76c09f9-1bfd-11e6-ad52-ecb1d7f32a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aeec-3693-11e6-927d-97910d8fe6c3','e76c09f9-1bfd-11e6-ad52-ecb1d8f12a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aeed-3693-11e6-927d-97910d8fe6c3','e76c09f9-1bfd-12e6-ad52-ecb1d8f12a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aeee-3693-11e6-927d-97910d8fe6c3','e76c09f9-1bfd-12e6-ad53-ecb1d8f12a10','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('e196aeef-3693-11e6-927d-97910d8fe6c3','f25a6130-3392-11e6-9fc4-7dc456d97586','c53c3050-1d64-11e6-934d-4342c0e5bbfe');
/*!40000 ALTER TABLE `page_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `zoneid` varchar(36) DEFAULT NULL,
  `drillid` varchar(36) DEFAULT NULL,
  `cityid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('07dc1a80-1377-11e6-b77c-0bf4b30d3ae5','test room','ok',1,'2016-05-06 10:41:03','2016-05-17 03:55:41','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('10b55ac0-1bda-11e6-aec7-eb2c5392d4d9','Demo Room 10','Demo Room 10',1,'2016-05-17 02:50:08','2016-06-20 08:00:19','0d71d5f0-137e-11e6-9361-91bcf9411721','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('3ffa2fc0-15ba-11e6-a25f-c7b08022eb52','Room 5','Demo',1,'2016-05-09 07:47:16','2016-05-17 03:57:13','5435cc80-1342-11e6-83d2-bbfe2430f480','289d5e30-1342-11e6-83d2-bbfe2430f480','122d5970-1342-11e6-83d2-bbfe2430f480'),('40a0f1d0-1690-11e6-a586-db459e049230','Entertainment (Music and Game ) Room',NULL,1,'2016-05-10 09:19:09','2016-05-17 03:54:39','c7d02460-168f-11e6-a586-db459e049230','ab55a530-168f-11e6-a586-db459e049230','8e1dc970-168f-11e6-a586-db459e049230'),('51276f00-1bdd-11e6-844c-733c0a7b3776','STSC Room','STSC Room',1,'2016-05-17 03:13:24','2016-06-20 07:59:59','0d71d5f0-137e-11e6-9361-91bcf9411721','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('5f4b0c30-15d5-11e6-8320-1b0f22361915','Room Demo Rasia','Demo',1,'2016-05-09 11:01:25','2016-05-17 03:55:07','5435cc80-1342-11e6-83d2-bbfe2430f480','289d5e30-1342-11e6-83d2-bbfe2430f480','122d5970-1342-11e6-83d2-bbfe2430f480'),('60861cb0-1342-11e6-83d2-bbfe2430f480','Room 1','Description 1',1,'2016-05-06 04:24:08','2016-05-17 03:56:25','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('655c0ec0-1342-11e6-83d2-bbfe2430f480','Room 2','Description 2',1,'2016-05-06 04:24:17','2016-05-17 03:56:14','4e5a5150-1342-11e6-83d2-bbfe2430f480','320b7600-1342-11e6-83d2-bbfe2430f480','af0b63a0-1341-11e6-83d2-bbfe2430f480'),('6b4e6d50-1342-11e6-83d2-bbfe2430f480','Room 3','Description 3',1,'2016-05-06 04:24:27','2016-05-17 03:56:03','5435cc80-1342-11e6-83d2-bbfe2430f480','289d5e30-1342-11e6-83d2-bbfe2430f480','122d5970-1342-11e6-83d2-bbfe2430f480'),('6ff84440-168d-11e6-a586-db459e049230','New room',NULL,1,'2016-05-10 08:59:00','2016-05-17 03:54:53','71997ac0-15d5-11e6-8320-1b0f22361915','289d5e30-1342-11e6-83d2-bbfe2430f480','122d5970-1342-11e6-83d2-bbfe2430f480'),('ae364da0-1373-11e6-8fbf-b956e1c2c485','Demo 4','Demo',1,'2016-05-06 10:17:04','2016-05-17 03:55:49','5435cc80-1342-11e6-83d2-bbfe2430f480','289d5e30-1342-11e6-83d2-bbfe2430f480','122d5970-1342-11e6-83d2-bbfe2430f480'),('dc471840-168f-11e6-a586-db459e049230','R&D room','R&D',1,'2016-05-10 09:16:21','2016-05-17 03:54:46','c7d02460-168f-11e6-a586-db459e049230','ab55a530-168f-11e6-a586-db459e049230','8e1dc970-168f-11e6-a586-db459e049230'),('e75bf780-1669-11e6-990d-3b8d9dfbb8ad','Lab Room','test',1,'2016-05-10 04:44:38','2016-05-17 03:54:59','5435cc80-1342-11e6-83d2-bbfe2430f480','289d5e30-1342-11e6-83d2-bbfe2430f480','122d5970-1342-11e6-83d2-bbfe2430f480');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruleevent`
--

DROP TABLE IF EXISTS `ruleevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruleevent` (
  `id` varchar(36) NOT NULL,
  `ruleid` varchar(36) DEFAULT NULL,
  `eventid` varchar(36) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruleevent`
--

LOCK TABLES `ruleevent` WRITE;
/*!40000 ALTER TABLE `ruleevent` DISABLE KEYS */;
INSERT INTO `ruleevent` VALUES ('b2c627c2-3469-11e6-81b4-c951057f738e','ddceddb1-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099','2016-06-17 08:58:45','2016-06-17 08:58:45'),('ca3bc413-223e-11e6-a645-03a78ad9f7b2','a12aba01-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099','2016-05-25 06:06:16','2016-05-25 06:06:16'),('e0322af3-209c-11e6-b186-d37cd93e5bd2','fb7e3361-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099','2016-05-23 04:14:43','2016-05-23 04:14:43'),('e0325200-209c-11e6-b186-d37cd93e5bd2','fb7e3361-1342-11e6-83d2-bbfe2430f480','c6a2e107-076b-11e6-9766-4c0535fc5099','2016-05-23 04:14:43','2016-05-23 04:14:43');
/*!40000 ALTER TABLE `ruleevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rulemaster`
--

DROP TABLE IF EXISTS `rulemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rulemaster` (
  `id` varchar(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `typetemplateid` varchar(36) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `templateid` varchar(36) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `message` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rulemaster`
--

LOCK TABLES `rulemaster` WRITE;
/*!40000 ALTER TABLE `rulemaster` DISABLE KEYS */;
INSERT INTO `rulemaster` VALUES ('',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('a12aba01-1342-11e6-83d2-bbfe2430f480','Deny time stay in room','Description','6a2c3678-076b-11e6-9766-4c0535fc5099',1,'a12aba00-1342-11e6-83d2-bbfe2430f480','2016-05-06 04:25:57','2016-05-25 06:06:16','Access denied'),('ddceddb1-1342-11e6-83d2-bbfe2430f480','Demo Deny Access Room','Description','6d26067c-076b-11e6-9766-4c0535fc5099',2,'ddceddb0-1342-11e6-83d2-bbfe2430f480','2016-05-06 04:27:39','2016-06-17 08:58:45','Overtime 8pm'),('fb7e3361-1342-11e6-83d2-bbfe2430f480','Deny time stay in room 2','Demo discription','6a2c3678-076b-11e6-9766-4c0535fc5099',3,'fb7e3360-1342-11e6-83d2-bbfe2430f480','2016-05-06 04:28:28','2016-05-23 04:14:43','Time denied');
/*!40000 ALTER TABLE `rulemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruleroom`
--

DROP TABLE IF EXISTS `ruleroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruleroom` (
  `id` varchar(36) NOT NULL,
  `ruleid` varchar(36) DEFAULT NULL,
  `roomid` varchar(36) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruleroom`
--

LOCK TABLES `ruleroom` WRITE;
/*!40000 ALTER TABLE `ruleroom` DISABLE KEYS */;
INSERT INTO `ruleroom` VALUES ('b2c627c0-3469-11e6-81b4-c951057f738e','ddceddb1-1342-11e6-83d2-bbfe2430f480','3ffa2fc0-15ba-11e6-a25f-c7b08022eb52','2016-06-17 08:58:45','2016-06-17 08:58:45'),('b2c627c1-3469-11e6-81b4-c951057f738e','ddceddb1-1342-11e6-83d2-bbfe2430f480','60861cb0-1342-11e6-83d2-bbfe2430f480','2016-06-17 08:58:45','2016-06-17 08:58:45'),('ca3bc410-223e-11e6-a645-03a78ad9f7b2','a12aba01-1342-11e6-83d2-bbfe2430f480','60861cb0-1342-11e6-83d2-bbfe2430f480','2016-05-25 06:06:16','2016-05-25 06:06:16'),('ca3bc411-223e-11e6-a645-03a78ad9f7b2','a12aba01-1342-11e6-83d2-bbfe2430f480','655c0ec0-1342-11e6-83d2-bbfe2430f480','2016-05-25 06:06:16','2016-05-25 06:06:16'),('ca3bc412-223e-11e6-a645-03a78ad9f7b2','a12aba01-1342-11e6-83d2-bbfe2430f480','6b4e6d50-1342-11e6-83d2-bbfe2430f480','2016-05-25 06:06:16','2016-05-25 06:06:16'),('e0322af0-209c-11e6-b186-d37cd93e5bd2','fb7e3361-1342-11e6-83d2-bbfe2430f480','60861cb0-1342-11e6-83d2-bbfe2430f480','2016-05-23 04:14:43','2016-05-23 04:14:43'),('e0322af1-209c-11e6-b186-d37cd93e5bd2','fb7e3361-1342-11e6-83d2-bbfe2430f480','655c0ec0-1342-11e6-83d2-bbfe2430f480','2016-05-23 04:14:43','2016-05-23 04:14:43'),('e0322af2-209c-11e6-b186-d37cd93e5bd2','fb7e3361-1342-11e6-83d2-bbfe2430f480','6b4e6d50-1342-11e6-83d2-bbfe2430f480','2016-05-23 04:14:43','2016-05-23 04:14:43');
/*!40000 ALTER TABLE `ruleroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('41d751b0-345a-11e6-9871-f37068d26ea2','Xuan','Le Van Xuan','xuanlv@rasia.info','Address','2016-06-17 07:08:13',NULL,'/uploads/IS8D_k5A0cpN9v3hR_fJWmiu.jpg',1),('50a2db10-345a-11e6-9871-f37068d26ea2','B','Le Van B','b@rasia.info','Address B','2016-06-17 07:08:38',NULL,'/uploads/qBsvAAHc-pVlGIuzAcPHsR9g.jpg',1),('5b142ab0-345d-11e6-9871-f37068d26ea2','C','Nguyen Van Son','c@rasia.info','12 A City','2016-06-17 07:30:24','2016-06-17 10:17:50','/uploads/pXHRsV8qHWylz1SS4LTXVjiM.jpg',1),('d53e1c50-3459-11e6-a000-87916515f4da','A','Le Van A','a@gmail.com','Thiss is A','2016-06-17 07:05:11','2016-06-17 09:48:31','/uploads/RW813qs4XuaRMQ5IWh4vTZ0v.jpg',1);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_device`
--

DROP TABLE IF EXISTS `staff_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_device` (
  `id` varchar(36) NOT NULL,
  `staffid` varchar(36) DEFAULT NULL,
  `deviceid` varchar(36) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_device`
--

LOCK TABLES `staff_device` WRITE;
/*!40000 ALTER TABLE `staff_device` DISABLE KEYS */;
INSERT INTO `staff_device` VALUES ('41d778c0-345a-11e6-9871-f37068d26ea2','41d751b0-345a-11e6-9871-f37068d26ea2','3660d43e-3398-11e6-bb4e-ecb1d7f32a10','2016-06-17 07:08:13','2016-06-17 07:08:13'),('41d778c1-345a-11e6-9871-f37068d26ea2','41d751b0-345a-11e6-9871-f37068d26ea2','78502b90-33a1-11e6-8ccb-3df3b56278dd','2016-06-17 07:08:13','2016-06-17 07:08:13'),('50a2db11-345a-11e6-9871-f37068d26ea2','50a2db10-345a-11e6-9871-f37068d26ea2','3660d43e-3398-11e6-bb4e-ecb1d7f32a10','2016-06-17 07:08:38','2016-06-17 07:08:38'),('50a2db12-345a-11e6-9871-f37068d26ea2','50a2db10-345a-11e6-9871-f37068d26ea2','78502b90-33a1-11e6-8ccb-3df3b56278dd','2016-06-17 07:08:38','2016-06-17 07:08:38'),('a6a7dfe0-3470-11e6-8cd1-ddc1e7417de0','d53e1c50-3459-11e6-a000-87916515f4da','2292b2c0-3398-11e6-bb4e-ecb1d7f32a10','2016-06-17 09:48:31','2016-06-17 09:48:31'),('beb962d0-3474-11e6-bb65-139d5fe0d8aa','5b142ab0-345d-11e6-9871-f37068d26ea2','3660d43e-3398-11e6-bb4e-ecb1d7f32a10','2016-06-17 10:17:50','2016-06-17 10:17:50'),('beb989e0-3474-11e6-bb65-139d5fe0d8aa','5b142ab0-345d-11e6-9871-f37068d26ea2','78502b90-33a1-11e6-8ccb-3df3b56278dd','2016-06-17 10:17:50','2016-06-17 10:17:50');
/*!40000 ALTER TABLE `staff_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffdetect`
--

DROP TABLE IF EXISTS `staffdetect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffdetect` (
  `id` varchar(36) NOT NULL,
  `staffid` varchar(36) DEFAULT NULL,
  `description` text,
  `status` varchar(45) DEFAULT NULL,
  `datecheckin` datetime DEFAULT NULL,
  `datecheckout` datetime DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `roomid` varchar(36) DEFAULT NULL,
  `eventid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffdetect`
--

LOCK TABLES `staffdetect` WRITE;
/*!40000 ALTER TABLE `staffdetect` DISABLE KEYS */;
INSERT INTO `staffdetect` VALUES ('01297ce0-346b-11e6-bc52-9f760937a5e5','50a2db10-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 09:08:06','2016-06-17 09:10:30','2016-06-17 16:08:06','2016-06-17 16:10:30','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('09627aa0-346c-11e6-8ec7-5f16f5fbef59','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 09:15:29','2016-06-17 09:24:24','2016-06-17 16:15:29','2016-06-17 16:24:24','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('16e5b110-3462-11e6-aaf5-0db4a0880f3c','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 08:04:17','2016-06-17 08:04:46','2016-06-17 15:04:17','2016-06-17 15:04:46','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('232de390-3465-11e6-aaf5-0db4a0880f3c','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 08:26:06','2016-06-17 08:29:04','2016-06-17 15:26:06','2016-06-17 15:29:04','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('241364c0-3469-11e6-a56e-9d1668250cdb','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 08:54:46','2016-06-17 08:55:13','2016-06-17 15:54:46','2016-06-17 15:55:13','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('24933130-346b-11e6-bc52-9f760937a5e5','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 09:09:06','2016-06-17 09:15:21','2016-06-17 16:09:06','2016-06-17 16:15:21','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('3d882560-3466-11e6-aaf5-0db4a0880f3c','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 08:34:00','2016-06-17 08:37:03','2016-06-17 15:34:00','2016-06-17 15:37:03','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('449848a0-3469-11e6-a56e-9d1668250cdb','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 08:55:40','2016-06-17 09:00:21','2016-06-17 15:55:40','2016-06-17 16:00:21','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('46b66db0-3469-11e6-a56e-9d1668250cdb','50a2db10-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 08:55:44','2016-06-17 09:05:36','2016-06-17 15:55:44','2016-06-17 16:05:36','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('492746a0-3469-11e6-a56e-9d1668250cdb','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 08:55:48','2016-06-17 09:05:41','2016-06-17 15:55:48','2016-06-17 16:05:41','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('4f811cc0-346d-11e6-a11e-473d9724e71b','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 09:24:37','2016-06-17 09:32:23','2016-06-17 16:24:37','2016-06-17 16:32:23','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('4fb62bf0-346c-11e6-bb20-edb647c88bb6','50a2db10-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 09:17:27','2016-06-17 09:24:17','2016-06-17 16:17:27','2016-06-17 16:24:17','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('576e61f0-3462-11e6-aaf5-0db4a0880f3c','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 08:06:05','2016-06-17 08:06:53','2016-06-17 15:06:05','2016-06-17 15:06:53','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('57c71e60-3464-11e6-aaf5-0db4a0880f3c','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 08:20:25','2016-06-17 08:21:39','2016-06-17 15:20:25','2016-06-17 15:21:39','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('58015980-346a-11e6-a56e-9d1668250cdb','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 09:03:22','2016-06-17 09:15:21','2016-06-17 16:03:22','2016-06-17 16:15:21','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('58cf55b0-345b-11e6-aaf5-0db4a0880f3c','50a2db10-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 07:16:01','2016-06-17 08:55:26','2016-06-17 14:16:01','2016-06-17 15:55:26','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('64fa33d0-346c-11e6-9e1d-c9a42487b171','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 09:18:03','2016-06-17 09:24:21','2016-06-17 16:18:03','2016-06-17 16:24:21','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('68d15050-3468-11e6-8c5e-c178d3808bdd','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 08:49:32','2016-06-17 08:54:33','2016-06-17 15:49:32','2016-06-17 15:54:33','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('69d4f5f0-346e-11e6-a11e-473d9724e71b','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 09:32:30',NULL,'2016-06-17 16:32:30','2016-06-17 16:32:30','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('7c135460-346d-11e6-a11e-473d9724e71b','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 09:25:51','2016-06-17 09:32:16','2016-06-17 16:25:51','2016-06-17 16:32:16','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('7deb2d30-3463-11e6-aaf5-0db4a0880f3c','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 08:14:20','2016-06-17 08:15:54','2016-06-17 15:14:20','2016-06-17 15:15:54','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('8f3b9740-3464-11e6-aaf5-0db4a0880f3c','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 08:21:58','2016-06-17 08:25:05','2016-06-17 15:21:58','2016-06-17 15:25:05','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('9f8753d0-346b-11e6-bdf5-f5f20247191e','50a2db10-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 09:12:32','2016-06-17 09:15:17','2016-06-17 16:12:32','2016-06-17 16:15:17','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('a9a5a6a0-345c-11e6-aaf5-0db4a0880f3c','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 07:25:26','2016-06-17 07:54:14','2016-06-17 14:25:26','2016-06-17 14:54:14','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('aa538f50-345b-11e6-aaf5-0db4a0880f3c','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 07:18:18','2016-06-17 07:33:54','2016-06-17 14:18:18','2016-06-17 14:33:54','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('b8e235c0-3466-11e6-aaf5-0db4a0880f3c','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 08:37:27','2016-06-17 08:37:52','2016-06-17 15:37:27','2016-06-17 15:37:52','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('bc6a7550-346a-11e6-8755-6b583d384584','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 09:06:11','2016-06-17 09:11:24','2016-06-17 16:06:11','2016-06-17 16:11:24','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('c7166fe0-3460-11e6-aaf5-0db4a0880f3c','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 07:54:54','2016-06-17 08:02:38','2016-06-17 14:54:54','2016-06-17 15:02:38','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('cf80cbf0-3463-11e6-aaf5-0db4a0880f3c','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 08:16:36','2016-06-17 08:19:54','2016-06-17 15:16:36','2016-06-17 15:19:54','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('d571d150-346b-11e6-a2e8-07d2ecf7fd20','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 09:14:02','2016-06-17 09:15:12','2016-06-17 16:14:02','2016-06-17 16:15:12','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('eea9de70-3465-11e6-aaf5-0db4a0880f3c','41d751b0-345a-11e6-9871-f37068d26ea2','Test','1','2016-06-17 08:31:48','2016-06-17 08:33:17','2016-06-17 15:31:48','2016-06-17 15:33:17','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099'),('f0a1e540-3462-11e6-aaf5-0db4a0880f3c','d53e1c50-3459-11e6-a000-87916515f4da','Test','1','2016-06-17 08:10:22','2016-06-17 08:11:10','2016-06-17 15:10:22','2016-06-17 15:11:10','60861cb0-1342-11e6-83d2-bbfe2430f480','c1a9f91a-076b-11e6-9766-4c0535fc5099');
/*!40000 ALTER TABLE `staffdetect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffinroom`
--

DROP TABLE IF EXISTS `staffinroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffinroom` (
  `id` varchar(36) NOT NULL,
  `roomid` varchar(36) DEFAULT NULL,
  `staffid` varchar(36) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `dateevented` datetime DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `zoneid` varchar(36) DEFAULT NULL,
  `drillid` varchar(36) DEFAULT NULL,
  `cityid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffinroom`
--

LOCK TABLES `staffinroom` WRITE;
/*!40000 ALTER TABLE `staffinroom` DISABLE KEYS */;
INSERT INTO `staffinroom` VALUES ('012a8e50-346b-11e6-bc52-9f760937a5e5','60861cb0-1342-11e6-83d2-bbfe2430f480','50a2db10-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:24:17','2016-06-17 16:08:06','2016-06-17 16:24:17','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('0962a1b0-346c-11e6-8ec7-5f16f5fbef59','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 16:15:29','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('16e5d820-3462-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:04:17','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('232de391-3465-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:26:06','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('241364c1-3469-11e6-a56e-9d1668250cdb','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:54:46','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('24933131-346b-11e6-bc52-9f760937a5e5','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 16:09:06','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('3d882561-3466-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:34:00','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('449848a1-3469-11e6-a56e-9d1668250cdb','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:55:40','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('46b66db1-3469-11e6-a56e-9d1668250cdb','60861cb0-1342-11e6-83d2-bbfe2430f480','50a2db10-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:24:17','2016-06-17 15:55:44','2016-06-17 16:24:17','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('492746a1-3469-11e6-a56e-9d1668250cdb','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:55:48','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('4f811cc1-346d-11e6-a11e-473d9724e71b','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 16:24:37','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('4fb6c830-346c-11e6-bb20-edb647c88bb6','60861cb0-1342-11e6-83d2-bbfe2430f480','50a2db10-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:24:17','2016-06-17 16:17:27','2016-06-17 16:24:17','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('576e61f1-3462-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:06:05','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('57c71e61-3464-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:20:25','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('58015981-346a-11e6-a56e-9d1668250cdb','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 16:03:22','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('58cf55b1-345b-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','50a2db10-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:24:17','2016-06-17 14:16:01','2016-06-17 16:24:17','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('64fad010-346c-11e6-9e1d-c9a42487b171','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 16:18:03','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('68d1ec90-3468-11e6-8c5e-c178d3808bdd','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:49:32','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('69d4f5f1-346e-11e6-a11e-473d9724e71b','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','1','2016-06-17 09:32:30','2016-06-17 16:32:30','2016-06-17 16:32:30','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('7c135461-346d-11e6-a11e-473d9724e71b','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 16:25:51','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('7deb2d31-3463-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:14:20','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('8f3b9741-3464-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:21:58','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('9f8753d1-346b-11e6-bdf5-f5f20247191e','60861cb0-1342-11e6-83d2-bbfe2430f480','50a2db10-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:24:17','2016-06-17 16:12:32','2016-06-17 16:24:17','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('a9a5cdb0-345c-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 14:25:26','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('aa53b660-345b-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 14:18:18','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('b8e235c1-3466-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:37:27','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('bc6a7551-346a-11e6-8755-6b583d384584','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 16:06:11','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('c7166fe1-3460-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 14:54:54','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('cf80f300-3463-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:16:36','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('d57294a0-346b-11e6-a2e8-07d2ecf7fd20','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 16:14:02','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('eeaa0580-3465-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:31:48','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('f0a1e541-3462-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:10:22','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','3b4648d0-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480');
/*!40000 ALTER TABLE `staffinroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stayhour`
--

DROP TABLE IF EXISTS `stayhour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stayhour` (
  `id` varchar(36) NOT NULL,
  `timelimit` float DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stayhour`
--

LOCK TABLES `stayhour` WRITE;
/*!40000 ALTER TABLE `stayhour` DISABLE KEYS */;
INSERT INTO `stayhour` VALUES ('a12aba00-1342-11e6-83d2-bbfe2430f480',11,'2016-05-06 04:25:57','2016-05-25 06:06:16'),('fb7e3360-1342-11e6-83d2-bbfe2430f480',8,'2016-05-06 04:28:28','2016-05-23 04:14:43');
/*!40000 ALTER TABLE `stayhour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeaccess`
--

DROP TABLE IF EXISTS `timeaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeaccess` (
  `id` varchar(36) NOT NULL,
  `timebegin` time DEFAULT NULL,
  `timeend` time DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeaccess`
--

LOCK TABLES `timeaccess` WRITE;
/*!40000 ALTER TABLE `timeaccess` DISABLE KEYS */;
INSERT INTO `timeaccess` VALUES ('ddceddb0-1342-11e6-83d2-bbfe2430f480','15:00:00','18:00:00','2016-05-06 04:27:39','2016-06-17 08:58:45');
/*!40000 ALTER TABLE `timeaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` varchar(36) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES ('bc0e188c-3398-11e6-bb4e-ecb1d7f32a10','Server'),('d9661430-3398-11e6-bb4e-ecb1d7f32a10','Static node'),('dfed600b-3398-11e6-bb4e-ecb1d7f32a10','Mobile node');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typetemplate`
--

DROP TABLE IF EXISTS `typetemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typetemplate` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tablename` varchar(255) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typetemplate`
--

LOCK TABLES `typetemplate` WRITE;
/*!40000 ALTER TABLE `typetemplate` DISABLE KEYS */;
INSERT INTO `typetemplate` VALUES ('6a2c3678-076b-11e6-9766-4c0535fc5099','Stay Hour','stayhour','2016-04-21 09:47:40','2016-04-21 09:47:40'),('6d26067c-076b-11e6-9766-4c0535fc5099','Time Access','timeaccess','2016-04-21 09:47:45','2016-04-21 09:47:45');
/*!40000 ALTER TABLE `typetemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `username` varchar(45) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('00e8b0d0-1ca5-11e6-bd08-49bf42bd04c3',NULL,'25f9e794323b453885f5181f1b624d0b','Xuan Le Van',0,'xuanlv',NULL,NULL,NULL),('04a11990-1cd4-11e6-b1d7-79f14f7a59f1',NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,1,'admin','2016-05-18 08:39:22',NULL,NULL),('1ceb5820-1d7a-11e6-98b4-c32f7ae31750','guest','0fc037f0db952f264337d6bd9878a970','guest',1,'guest','2016-05-19 04:28:19','2016-05-20 09:11:12','xuan@rasia.info'),('274b79b0-1ccd-11e6-9c1c-47978b9a4517',NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,1,'demo','2016-05-18 07:50:13',NULL,'son@rasia.info'),('29095b70-3378-11e6-9189-6d429cff9119','peopleIoT','e10adc3949ba59abbe56e057f20f883e','peopleIoT',1,'people','2016-06-16 04:09:45',NULL,'peopleiot@rasia.info'),('29395c60-1d90-11e6-96b5-918d1b9b33a0','le van xuan','0fc037f0db952f264337d6bd9878a970','le van xuan',0,'leteo','2016-05-19 07:06:09','2016-05-19 07:21:53','xuan@rasia.info'),('3bcb56e0-3379-11e6-9189-6d429cff9119','logistic','e10adc3949ba59abbe56e057f20f883e','logistic',1,'logistic','2016-06-16 04:17:26',NULL,'logisticiot@rasia.info'),('3caac77e-1bfd-11e6-ad52-ecb1d7f32a10','locnguyen','e10adc3949ba59abbe56e057f20f883e','Lộc',1,'locnguyen',NULL,NULL,NULL),('3cb7b381-1bfd-11e6-ad52-ecb1d7f32a10','buiduy','e10adc3949ba59abbe56e057f20f883e','Duy',1,'buiduy',NULL,NULL,NULL),('3ccae269-1bfd-11e6-ad52-ecb1d7f32a10','viennp','e10adc3949ba59abbe56e057f20f883e','Viên',1,'viennp',NULL,NULL,NULL),('51077c20-1ca7-11e6-9bec-fd5ff1c520f7',NULL,'e10adc3949ba59abbe56e057f20f883e','Xuan LV',1,'xuan',NULL,NULL,NULL),('543a44b0-1cd7-11e6-95c0-1b7e4785be3e',NULL,'ee90d53178b12449119ad86182242681',NULL,1,'admin1','2016-05-18 09:03:04',NULL,'email@gmail.com'),('7dd7d8f0-1ccd-11e6-b367-d5a0fda63820',NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,1,'demo','2016-05-18 07:52:39',NULL,'son@rasia.info'),('8a8efaa0-1d64-11e6-934d-4342c0e5bbfe',NULL,'e10adc3949ba59abbe56e057f20f883e','xyz',1,'xyz','2016-05-19 01:53:54',NULL,'xyz@gmail.com'),('a3bca3c0-1ceb-11e6-83e6-c70c83f29ca5',NULL,'e10adc3949ba59abbe56e057f20f883e','levanxuan',1,'levanxuan','2016-05-18 11:28:27',NULL,'levanxuan@rasia.info'),('b874caa0-3379-11e6-9189-6d429cff9119','tenant','e10adc3949ba59abbe56e057f20f883e','tenant',1,'tenant','2016-06-16 04:20:56','2016-06-20 03:08:11','tenant@rasia.info'),('ba95d820-1ccb-11e6-a12b-ad6db995e7a3','son','3859bcb72909fc479e26816cefb85383',NULL,1,'son','2016-05-18 07:40:02',NULL,'nvs2394@gmail.com'),('c88da8e0-1cee-11e6-a79a-87db17a77210','sonnguyen1','e10adc3949ba59abbe56e057f20f883e','sonnguyen1',1,'sonnguyen','2016-05-18 11:50:57','2016-05-19 04:22:23','reemail@gmail.com'),('e284d4f0-1d64-11e6-934d-4342c0e5bbfe','full','e10adc3949ba59abbe56e057f20f883e','Rasia',1,'full','2016-05-19 01:56:22','2016-05-19 04:16:48','refull@gmail.com'),('f8b67c20-1ceb-11e6-83e6-c70c83f29ca5','abc','e10adc3949ba59abbe56e057f20f883e','abc',1,'abc','2016-05-18 11:30:50','2016-05-20 03:16:35','nikecon90@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `id` varchar(36) NOT NULL,
  `userid` varchar(36) DEFAULT NULL,
  `groupid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid_idx` (`userid`),
  KEY `groupid_idx` (`groupid`),
  CONSTRAINT `groupid` FOREIGN KEY (`groupid`) REFERENCES `group` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='					';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` VALUES ('29095b71-3378-11e6-9189-6d429cff9119','29095b70-3378-11e6-9189-6d429cff9119','f8b67c20-1ceb-11e6-9999-c70c83f29ca5'),('386dabb0-3694-11e6-927d-97910d8fe6c3','b874caa0-3379-11e6-9189-6d429cff9119','2ed41710-3694-11e6-927d-97910d8fe6c3'),('3bcb7df0-3379-11e6-9189-6d429cff9119','3bcb56e0-3379-11e6-9189-6d429cff9119','a7e5ac60-1d8d-11e6-af1c-df830cc8edec'),('4224b590-1e39-11e6-a4f5-e5be2734542e','f8b67c20-1ceb-11e6-83e6-c70c83f29ca5','f8b67c20-1ceb-11e6-9999-c70c83f29ca5'),('48f98820-1d79-11e6-98b4-c32f7ae31750','c88da8e0-1cee-11e6-a79a-87db17a77210','f8b67c20-1ceb-11e6-9999-c70c83f29ca5'),('5c0c75d0-1d92-11e6-b43e-51a54a7e7a9d','29395c60-1d90-11e6-96b5-918d1b9b33a0','097161e0-1d7a-11e6-98b4-c32f7ae31750'),('5c0c75d1-1d92-11e6-b43e-51a54a7e7a9d','29395c60-1d90-11e6-96b5-918d1b9b33a0','a7e5ac60-1d8d-11e6-af1c-df830cc8edec'),('810c3240-1d78-11e6-98b4-c32f7ae31750','e284d4f0-1d64-11e6-934d-4342c0e5bbfe','c53c3050-1d64-11e6-934d-4342c0e5bbfe'),('810c3241-1d78-11e6-98b4-c32f7ae31750','e284d4f0-1d64-11e6-934d-4342c0e5bbfe','f8b67c20-1ceb-11e6-9999-c70c83f29ca5'),('8a8f21b0-1d64-11e6-934d-4342c0e5bbfe','8a8efaa0-1d64-11e6-934d-4342c0e5bbfe','f8b67c20-1ceb-11e6-9999-c70c83f29ca5'),('cc298aa0-1e6a-11e6-bbbb-31584ef9d808','1ceb5820-1d7a-11e6-98b4-c32f7ae31750','097161e0-1d7a-11e6-98b4-c32f7ae31750'),('cc29b1b0-1e6a-11e6-bbbb-31584ef9d808','1ceb5820-1d7a-11e6-98b4-c32f7ae31750','f8b67c20-1ceb-11e6-9999-c70c83f29ca5');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `drillid` varchar(36) DEFAULT NULL,
  `zonemap` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES ('0d71d5f0-137e-11e6-9361-91bcf9411721','Demo zone 7','Demo for zone 7',1,'2016-05-06 11:31:19','2016-05-10 03:57:01','3b4648d0-1342-11e6-83d2-bbfe2430f480','uploads/THS78ZZAFQbXa_EaWKhy6tyR.jpg'),('22e11910-1369-11e6-9ea3-5d2fd15f06e4','Zone 6','Demo Rasia 8',1,'2016-05-06 09:01:35','2016-05-10 09:05:07','320b7600-1342-11e6-83d2-bbfe2430f480','uploads/0I4rZ37hBHytB970CumhWeMo.png'),('491ac800-1342-11e6-83d2-bbfe2430f480','Zone 1','Description Zone 1',1,'2016-05-06 04:23:29','2016-05-06 04:23:29','3b4648d0-1342-11e6-83d2-bbfe2430f480','uploads/brC6b-HJGFH0yb3inPirKRuQ.gif'),('4e5a5150-1342-11e6-83d2-bbfe2430f480','Zone 2','Description Zone 2',1,'2016-05-06 04:23:38','2016-05-06 04:23:38','320b7600-1342-11e6-83d2-bbfe2430f480','/images/Zone 3.png'),('5435cc80-1342-11e6-83d2-bbfe2430f480','Zone 3','Description Zone 3',1,'2016-05-06 04:23:48','2016-05-06 04:23:48','289d5e30-1342-11e6-83d2-bbfe2430f480','/uploads/Zone 3.gif'),('71997ac0-15d5-11e6-8320-1b0f22361915','Demo zone 8','Demo',1,'2016-05-09 11:01:55','2016-05-11 06:11:50','289d5e30-1342-11e6-83d2-bbfe2430f480','/uploads/FN_r48nuDWxoBUtp_-UEV3Y9.jpg'),('c7d02460-168f-11e6-a586-db459e049230','Zone 1 V1',NULL,1,'2016-05-10 09:15:46','2016-05-10 09:15:46','ab55a530-168f-11e6-a586-db459e049230','/uploads/dlVcYlWjS8SOYQGngdYNAFqN.png'),('da7a1f80-1365-11e6-a938-f99fd4f839c4','Zone 4','Demo',1,'2016-05-06 08:38:05','2016-05-06 08:38:05','320b7600-1342-11e6-83d2-bbfe2430f480',NULL);
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zonecanvas`
--

DROP TABLE IF EXISTS `zonecanvas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zonecanvas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneId` varchar(45) NOT NULL,
  `baseCode` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zonecanvas`
--

LOCK TABLES `zonecanvas` WRITE;
/*!40000 ALTER TABLE `zonecanvas` DISABLE KEYS */;
INSERT INTO `zonecanvas` VALUES (51,'491ac800-1342-11e6-83d2-bbfe2430f480','[{\"zoneImage\":\"uploads/brC6b-HJGFH0yb3inPirKRuQ.gif\",\"top\":0,\"left\":0},{\"top\":20.5,\"left\":441.5,\"width\":166.66666666666663,\"height\":166.66666666666663,\"stroke\":\"#000000\",\"strokeWidth\":1,\"fill\":\"rgba(0,0,0,0.0)\",\"id\":\"60861cb0-1342-11e6-83d2-bbfe2430f480\",\"scaleX\":1,\"scaleY\":1,\"roomName\":\"Room 1\"}]'),(52,'5435cc80-1342-11e6-83d2-bbfe2430f480','[{\"zoneImage\":\"/uploads/Zone 3.gif\",\"top\":0,\"left\":0},{\"top\":106.5,\"left\":461,\"width\":61,\"height\":61.5,\"stroke\":\"#000000\",\"strokeWidth\":1,\"fill\":\"rgba(0,0,0,0.0)\",\"id\":\"6b4e6d50-1342-11e6-83d2-bbfe2430f480\",\"scaleX\":2.9344262295081966,\"scaleY\":2.3333333333333335,\"roomName\":\"Room 3\"},{\"top\":134.5,\"left\":279.5,\"width\":84.85772357723579,\"height\":84.85772357723579,\"stroke\":\"#000000\",\"strokeWidth\":1,\"fill\":\"rgba(0,0,0,0.0)\",\"id\":\"3ffa2fc0-15ba-11e6-a25f-c7b08022eb52\",\"scaleX\":1,\"scaleY\":1,\"roomName\":\"Room 5\"}]'),(53,'c7d02460-168f-11e6-a586-db459e049230','[{\"zoneImage\":\"/uploads/dlVcYlWjS8SOYQGngdYNAFqN.png\",\"top\":0,\"left\":0},{\"top\":260.5,\"left\":4,\"width\":61,\"height\":61.5,\"stroke\":\"#000000\",\"strokeWidth\":1,\"fill\":\"rgba(0,0,0,0.0)\",\"id\":\"dc471840-168f-11e6-a586-db459e049230\",\"scaleX\":8.78688524590164,\"scaleY\":1.8780487804878048,\"roomName\":\"R&D room\"},{\"top\":-2.5,\"left\":-1,\"width\":202.5,\"height\":61.5,\"stroke\":\"#000000\",\"strokeWidth\":1,\"fill\":\"rgba(0,0,0,0.0)\",\"id\":\"40a0f1d0-1690-11e6-a586-db459e049230\",\"scaleX\":2.9580246913580246,\"scaleY\":4.252032520325203,\"roomName\":\"Entertainment (Music and Game ) Room\"}]'),(54,'0d71d5f0-137e-11e6-9361-91bcf9411721','[{\"zoneImage\":\"uploads/THS78ZZAFQbXa_EaWKhy6tyR.jpg\",\"top\":0,\"left\":0},{\"top\":9.5,\"left\":630,\"width\":81.5,\"height\":61.5,\"stroke\":\"#000000\",\"strokeWidth\":1,\"fill\":\"rgba(0,0,0,0.0)\",\"id\":\"10b55ac0-1bda-11e6-aec7-eb2c5392d4d9\",\"scaleX\":1,\"scaleY\":1,\"roomName\":\"Demo Room 10\"}]');
/*!40000 ALTER TABLE `zonecanvas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'rutledge-geoip'
--

--
-- Dumping routines for database 'rutledge-geoip'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-20 14:20:43
