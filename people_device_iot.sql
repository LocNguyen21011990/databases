-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 172.16.0.68    Database: people_device_iot
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
  `ipv6` varchar(45) DEFAULT NULL,
  `roomid` varchar(36) DEFAULT NULL,
  `staffid` varchar(36) DEFAULT NULL,
  `coordinates` varchar(45) DEFAULT NULL,
  `expireddates` datetime DEFAULT NULL,
  `status` varchar(36) DEFAULT NULL,
  `isdeploy` tinyint(4) DEFAULT '0',
  `zoneid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES ('02758b90-33a1-11e6-8ccb-3df3b56278dd','Miban4','Miban3 edit','/uploads/GOUDRCtBYdhDqnWXPoPnyBRw.jpg',1,'2016-06-16 09:05:28','2016-08-10 10:35:20','921c3ae0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD6','2292b2c0-3398-11e6-bb4e-ecb1d7f10a32','65987237-4cb7-11e6-ba67-ecb1d7f32a10','3,1','0000-00-00 00:00:00','31b59d81-5dfb-11e6-b409-ecb1d7f32a10',0,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('11e43160-5ec3-11e6-87d4-f180d67c0b20','Rose','Rose','/uploads/9GaDtUph40G29v60dohPAj34.jpg',1,'2016-08-10 06:24:18','2016-08-15 03:08:05','900fa6b0-5ec2-11e6-87d4-f180d67c0b20','3123:234:234',NULL,NULL,'3,8','2015-02-09 17:00:00',NULL,1,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('2087ccc0-7e46-11e6-959d-6945c78a686c','Device Static','Device Static','/uploads/_oQ6e1NvbaBNuwbpekPfVdmt.jpg',1,'2016-09-19 08:50:33','2016-09-19 08:50:33','921c3ae0-53d2-11e6-8a75-59420aba1aed',NULL,NULL,NULL,'3,2','2016-05-08 17:00:00',NULL,0,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('2292b2c0-3398-11e6-bb4e-ecb1d7f32a10','static 1','Smart Device',NULL,1,'2016-06-16 14:58:38','2016-06-17 10:08:39','921c3ae0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:FFFF','2292b2c0-31bc-11e6-bb4e-ecb1d7f32a10','41d751b0-345a-11e6-9871-f37068d26ea2','200 200',NULL,'8d4f54d9-5dfc-11e6-b409-ecb1d7f32a10',0,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('32f49390-637d-11e6-bd82-357f5741c12c','Demo edit','Demo','/uploads/U0OhLmtFGkypHMlPSpY1A518.jpg',1,'2016-08-16 06:46:45','2016-08-16 06:53:40','8b705080-629d-11e6-b608-93fce3e37de2','1234567',NULL,NULL,'2,0','2016-03-06 17:00:00',NULL,1,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('3660d43e-3398-11e6-bb4e-ecb1d7f32a10','static 3','Miban',NULL,1,'2016-06-16 14:59:12','2016-06-17 09:49:17','921c3ae0-53d2-11e6-8a75-59420aba1aed','FF01:0DC8::1005:2F43:0BCD:FFFF','2534b2c0-3398-11e6-bb4e-ecb1d7f32a10','5b142ab0-345d-11e6-9871-f37068d26ea2','200 200',NULL,'31b59d81-5dfb-11e6-b409-ecb1d7f32a10',0,'1801c170-7bc9-11e6-9eed-7b62b7741570'),('4414D58FC5386C70','Xuanlv Tracking','Rasia',NULL,1,'2016-06-16 09:05:28','2016-08-15 10:12:53','9ee368c0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD6',NULL,NULL,NULL,'2016-02-16 17:00:00',NULL,0,'1801c170-7bc9-11e6-9eed-7b62b7741570'),('497adf70-637d-11e6-8434-89d22c6ee6c3','Demo edit','Demo','/uploads/siYj_gwAgYtA4VXd7TjtdMXd.jpg',1,'2016-08-16 06:47:23','2016-08-16 06:54:15','8b705080-629d-11e6-b608-93fce3e37de2','1234567',NULL,NULL,'3,2','2016-03-06 17:00:00',NULL,1,'1801c170-7bc9-11e6-9eed-7b62b7741570'),('773a7380-637d-11e6-8434-89d22c6ee6c3','Demo add device edit','Demo','/uploads/zCtMaOQSQ-pWoKf5xPESVjln.jpg',1,'2016-08-16 06:48:40','2016-08-16 06:57:32','8b705080-629d-11e6-b608-93fce3e37de2','1234567',NULL,NULL,'3,3','2016-02-06 17:00:00',NULL,1,'6c736520-59ea-11e6-93fa-679c761fc9b0'),('ad0dbf80-637d-11e6-8434-89d22c6ee6c3','Demo demo edit','Demo edit','/uploads/AvbQIYxLnoOLWtOXrcL84T85.png',1,'2016-08-16 06:50:10','2016-08-16 06:59:19','8b705080-629d-11e6-b608-93fce3e37de2','1234567',NULL,NULL,'3,4','2016-10-06 17:00:00',NULL,1,'6c736520-59ea-11e6-93fa-679c761fc9b0'),('c91d8070-57c0-11e6-a8cf-cb75d9474b81','Smart DeviceIOT','Smart DeviceIOT','/uploads/CVLekvCoXxvuDAXN9b3IrzM8.jpg',1,'2016-08-01 08:20:21','2016-08-01 08:20:21','921c3ae0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD7','',NULL,'3,1','2016-08-03 23:10:00','8d4f54d9-5dfc-11e6-b409-ecb1d7f32a10',1,'6c736520-59ea-11e6-93fa-679c761fc9b0'),('e3fd5557-4d63-11e6-ba67-ecb1d7f32a10','Miban4','Miban3','/uploads/YFEIR5_8yI0gL_HRyJRvut-Y.png',1,'2016-06-16 09:05:28','2016-07-26 02:43:13','921c3ae0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD6','2292b2c0-31bc-11e6-bb4e-ecb1d7f32a10','65987237-4cb7-11e6-ba67-ecb1d7f32a10','200 200','1969-12-31 17:00:00','8d4f54d9-5dfc-11e6-b409-ecb1d7f32a10',0,'6c736520-59ea-11e6-93fa-679c761fc9b0'),('e4fe003c-4d63-11e6-ba67-ecb1d7f32a10','Miban4','Miban3','/uploads/P4epKT-KXuaE8KjeNM65dga2.png',1,'2016-06-16 09:05:28','2016-07-26 03:11:24','9ee368c0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD6','2534b2c0-3398-11e6-bb4e-ecb1d7f32a10','65987237-4cb7-11e6-ba67-ecb1d7f32a10','8,4','1969-12-31 17:00:00','8d4f54d9-5dfc-11e6-b409-ecb1d7f32a10',1,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('e520289a-4d63-11e6-ba67-ecb1d7f32a10','Miban42','Miban32',NULL,1,'2016-06-16 09:05:28','2016-07-26 02:51:01','921c3ae0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD6','2292b2c0-3398-11e6-bb4e-ecb1d7f10a32','65987237-4cb7-11e6-ba67-ecb1d7f32a10','2,2','1970-01-01 00:00:00','8d4f54d9-5dfc-11e6-b409-ecb1d7f32a10',0,'NULL'),('e53cbfdc-4d63-11e6-ba67-ecb1d7f32a10','Miban4','Miban3','/uploads/Q3YsJLeABDWQwOjvqTHNr3lh.png',1,'2016-06-16 09:05:28','2016-07-26 03:12:22','9ee368c0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD6','2292b2c0-31bc-11e6-bb4e-ecb1d7f32a10','65987237-4cb7-11e6-ba67-ecb1d7f32a10','4,4','1969-12-31 17:00:00','8d4f54d9-5dfc-11e6-b409-ecb1d7f32a10',1,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('e556509b-4d63-11e6-ba67-ecb1d7f32a10','Miban41','Miban32',NULL,1,'2016-06-16 09:05:28','2016-07-26 02:52:15','921c3ae0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD6','2292b2c0-3398-11e6-bb4e-ecb1d7f10a32','65987237-4cb7-11e6-ba67-ecb1d7f32a10','4,2','1970-01-01 00:00:00','a0be4549-5dec-11e6-b409-ecb1d7f32a10',0,'NULL'),('e5786b8a-4d63-11e6-ba67-ecb1d7f32a10','Miban4 edit dem','Miban3 edit dv','/uploads/7ukAImf91C7DHHgDs7pDaPz6.jpg',1,'2016-06-16 09:05:28','2016-07-26 03:02:03','9ee368c0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD6','2292b2c0-31bc-11e6-bb4e-ecb1d7f32a10','65987237-4cb7-11e6-ba67-ecb1d7f32a10','4,6','1969-12-31 03:00:00','8d4f54d9-5dfc-11e6-b409-ecb1d7f32a10',1,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('e7ce50c0-7e45-11e6-959d-6945c78a686c','Device Test','Device Test','/uploads/gyUy_Hnvid1dYLBDLxb06qSz.jpg',1,'2016-09-19 08:48:58','2016-09-19 08:48:58','9ee368c0-53d2-11e6-8a75-59420aba1aed',NULL,NULL,NULL,'3,1','2016-02-08 17:00:00',NULL,0,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('e7ee5dd8-4d63-11e6-ba67-ecb1d7f32a10','Miban4','Miban3',NULL,0,'2016-06-16 09:05:28','2016-08-10 10:29:02','9ee368c0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD6','2292b2c0-31bc-11e6-bb4e-ecb1d7f32a10','65987237-4cb7-11e6-ba67-ecb1d7f32a10','14,7','0000-00-00 00:00:00','a0be4549-5dec-11e6-b409-ecb1d7f32a10',0,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('e814923e-4d63-11e6-ba67-ecb1d7f32a10','Miban4','Miban3',NULL,1,'2016-06-16 09:05:28','2016-06-17 07:35:19','9ee368c0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD6','2534b2c0-3398-11e6-bb4e-ecb1d7f32a10','65987237-4cb7-11e6-ba67-ecb1d7f32a10','14,7',NULL,'a0be4549-5dec-11e6-b409-ecb1d7f32a10',0,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('ECFAAA95DA48722F','Location Tracking 2 edit 2','Mobile location tracking10',NULL,1,'2016-06-16 09:05:28','2016-08-15 10:12:53','9ee368c0-53d2-11e6-8a75-59420aba1aed','2001:0DC8::1005:2F43:0BCD:DDD6',NULL,NULL,'5,2','2016-02-16 17:00:00',NULL,0,'0d71d5f0-137e-11e6-9361-91bcf9411721'),('f4f88100-637c-11e6-a472-7725c5f8490a','Demo edit','Demo','/uploads/go9_Ir4mrjbLgN6kfXtFSKYs.jpg',1,'2016-08-16 06:45:01','2016-08-16 06:56:07','8b705080-629d-11e6-b608-93fce3e37de2','1234567',NULL,NULL,'4,3','2016-03-06 17:00:00',NULL,1,'6c736520-59ea-11e6-93fa-679c761fc9b0');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_deployment`
--

DROP TABLE IF EXISTS `device_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_deployment` (
  `id` varchar(36) NOT NULL,
  `deviceid` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `coordinates` varchar(45) DEFAULT NULL,
  `coordinatex` varchar(45) DEFAULT NULL,
  `coordinatey` varchar(45) DEFAULT NULL,
  `ipv6` varchar(45) DEFAULT NULL,
  `zoneid` varchar(45) DEFAULT NULL,
  `roomid` varchar(45) DEFAULT NULL,
  `isdeploy` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_deployment`
--

LOCK TABLES `device_deployment` WRITE;
/*!40000 ALTER TABLE `device_deployment` DISABLE KEYS */;
INSERT INTO `device_deployment` VALUES ('1','B607A6C200311702','relay','13,6','394','800',NULL,'0d71d5f0-137e-11e6-9361-91bcf9411721',NULL,0),('2','7F0510BBA6C80240','relay','14,12','756','887',NULL,'0d71d5f0-137e-11e6-9361-91bcf9411721',NULL,0),('3','62B3A3D485E47AA1','relay','6,9','551','353',NULL,'0d71d5f0-137e-11e6-9361-91bcf9411721',NULL,0),('6','E64B0873952E9025','server','8,9','551','451',NULL,'0d71d5f0-137e-11e6-9361-91bcf9411721',NULL,0),('7','1DFA891FE0A17EFB','relay','10,2','551','353',NULL,'0d71d5f0-137e-11e6-9361-91bcf9411721',NULL,0);
/*!40000 ALTER TABLE `device_deployment` ENABLE KEYS */;
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
-- Table structure for table `devicemap`
--

DROP TABLE IF EXISTS `devicemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devicemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devicemap` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devicemap`
--

LOCK TABLES `devicemap` WRITE;
/*!40000 ALTER TABLE `devicemap` DISABLE KEYS */;
INSERT INTO `devicemap` VALUES (1,'[{\"type\":\"wallRelay\",\"top\":720,\"left\":900,\"width\":20,\"height\":20,\"fill\":\"rgb(21,114,153)\",\"stroke\":\"\",\"strokeWidth\":1,\"scaleX\":1,\"scaleY\":1,\"deviceId\":\"CCC35330626B9785\"},{\"type\":\"wallRelay\",\"top\":360,\"left\":600,\"width\":20,\"height\":20,\"fill\":\"rgb(21,114,153)\",\"stroke\":\"\",\"strokeWidth\":1,\"scaleX\":1,\"scaleY\":1,\"deviceId\":\"C42078431D5FAD57\"},{\"type\":\"wallRelay\",\"top\":660,\"left\":360,\"width\":20,\"height\":20,\"fill\":\"rgb(21,114,153)\",\"stroke\":\"\",\"strokeWidth\":1,\"scaleX\":1,\"scaleY\":1,\"deviceId\":\"924ED509B0F1B393\"}]');
/*!40000 ALTER TABLE `devicemap` ENABLE KEYS */;
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
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `imagelocation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('02758b90-33a1-11e6-8ccb-3df3b56278dd','Dubai',NULL,1,'2016-06-16 09:05:28','2016-06-17 07:35:19','/uploads/hwnKqsZrwL-9XRL0fnGpzMEG.jpg'),('11daee00-4f2a-11e6-be96-d9ed608f0412','Singapore',NULL,1,'2016-06-16 09:05:28','2016-06-17 07:35:19','/uploads/hwnKqsZrwL-9XRL0fnGpzMEG.jpg'),('1fcb2990-5951-11e6-9281-7d71f88bb794','Demo Location','Demo',1,'2016-08-03 08:06:04','2016-08-03 08:10:17',NULL),('3b996b20-6381-11e6-aa57-6ff11fb65f70','Rio de Janerio edit test','Demo',1,'2016-08-16 07:15:38','2016-08-16 07:15:50','/uploads/G3_1k9ytzkiFhdUKNHPrg5Ud.jpg'),('759a10b0-5a0b-11e6-9cf8-adfaaebff297','Demo location new edit demo','Demo location new edit',0,'2016-08-04 06:19:54','2016-08-15 04:07:33','/uploads/OxZrivqO96WwiEc8ZvqeD097.jpg'),('75f5d420-587d-11e6-82e5-7d8f90136c7b','HCM City','Demo',1,'2016-08-02 06:50:54',NULL,NULL),('c58828d0-587d-11e6-82e5-7d8f90136c7b','Dubai','Demo',1,'2016-08-02 06:53:08','2016-08-02 09:27:16','/uploads/xPnNOkKRJNOGWSh2TO9gh_A6.jpg'),('e5786b8a-4d63-11e6-ba67-ecb1d7f32a10','Indonesia',NULL,1,'2016-06-16 09:05:28','2016-06-17 07:35:19','/uploads/VoEh0OJyh4TTEVWKovB0tvv_.png'),('e7143eb0-629d-11e6-8501-3feebde782ae','Location demo edit2','demo',1,'2016-08-15 04:08:20','2016-08-16 07:09:37','/uploads/J16islNFAOvMsVTMsFA6RssG.jpg');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` varchar(36) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES ('2ac8b7f0-6dbe-11e6-89e5-b99ba0575f94','Demo noti','Thí is message','2016-08-29 07:57:01',NULL,'0'),('d4333b80-6dbe-11e6-89e5-b99ba0575f94','Demo 2 edit 2','Demo edit 2','2016-08-29 08:01:45','2016-08-29T08:21:42.352Z','1');
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
  `locationid` varchar(36) DEFAULT NULL,
  `imageroom` varchar(255) DEFAULT NULL,
  `coordinatex` varchar(45) DEFAULT NULL,
  `coordinatey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('0e139ce0-629e-11e6-8501-3feebde782ae','Room demo','demo',0,'2016-08-15 04:09:26','2016-08-24 06:43:53','491ac800-1342-11e6-83d2-bbfe2430f480','02758b90-33a1-11e6-8ccb-3df3b56278dd',NULL,'0,1','10,6'),('19b27db0-636a-11e6-a472-7725c5f8490a','Demo today','demo',1,'2016-08-16 04:30:02','2016-08-16 10:45:25','491ac800-1342-11e6-83d2-bbfe2430f480','02758b90-33a1-11e6-8ccb-3df3b56278dd','/uploads/PsQaF2CRfKqugcK8V42pEuLR.jpg','1,9','8,6'),('a8093b30-59ec-11e6-8787-c5219d9eaee3','Room 2 edit','Demo 1',1,'2016-08-04 02:39:23','2016-08-15 04:09:06','491ac800-1342-11e6-83d2-bbfe2430f480','02758b90-33a1-11e6-8ccb-3df3b56278dd',NULL,'10,6','14,7'),('d0c50ac0-62d1-11e6-875e-399e616e1f6d','1','sdf',1,'2016-08-15 10:19:57','2016-08-16 04:21:28','22e11910-1369-11e6-9ea3-5d2fd15f06e4','11daee00-4f2a-11e6-be96-d9ed608f0412',NULL,'0,3','4,9'),('e284d4f0-1d64-11e6-934d-4342c0e5bbfe','Working room 2','Demo working',1,'2016-06-16 09:05:28','2016-08-04 04:48:21','0d71d5f0-137e-11e6-9361-91bcf9411721','02758b90-33a1-11e6-8ccb-3df3b56278dd','/uploads/PMfRs8zmeAMFGMiJZ5JVIE1q.jpg','10,6','0,2'),('f8b67c20-1ceb-11e6-83e6-c70c83f29ca5','Working room 1','Demo room 1',1,'2016-06-16 09:05:28','2016-08-15 07:48:38','22e11910-1369-11e6-9ea3-5d2fd15f06e4','11daee00-4f2a-11e6-be96-d9ed608f0412',NULL,'10,6','0,1');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` varchar(36) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `status` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `biography` varchar(255) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `phonenumber` int(11) DEFAULT NULL,
  `bloodtype` varchar(10) DEFAULT NULL,
  `diet` varchar(255) DEFAULT NULL,
  `adicted` varchar(255) DEFAULT NULL,
  `drug` varchar(255) DEFAULT NULL,
  `metalemotionhealth` varchar(255) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `training` text,
  `title` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('26a2c990-62c9-11e6-931c-3f4c4ff4223a','Sabet','Mark','lee@rasia.info','3 years','2016-08-15 09:17:54',NULL,'/uploads/P_WP5Ne90UwZkrSD4runZuBj.jpg',1,'Off-site','Member R&D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,NULL,'Mr'),('41d751b0-345a-11e6-9871-f37068d26ea2','Sabet','Mark','xuanlv@rasia.info','3 years','2016-06-17 07:08:13','2016-08-16 10:45:04','/uploads/P_WP5Ne90UwZkrSD4runZuBj.jpg',NULL,'Off-site','Member R&D','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su','1',123456789,'A','yes','smoking, dug','yahoo, facebook','nothing','R&D','','In this tutorial i am trying to cover code for learning and code for production. So if you know this already and looking for ready made code for production. Click here to jump there directly.','Mr'),('43f224f0-62c9-11e6-931c-3f4c4ff4223a','Bui','Duy','duyb@gmail.com','3 years','2016-08-15 09:18:44',NULL,'/uploads/P_WP5Ne90UwZkrSD4runZuBj.jpg',1,'Off-site','Member R&D',NULL,'1',147852369,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,'In this tutorial i am trying to cover code for learning and code for production. So if you know this already and looking for ready made code for production. Click here to jump there directly.','Ms'),('479a5630-7571-11e6-a933-f3e0d40546f3','Nguyen','Son','nvs2394@gmail.com','3','2016-09-08 03:06:47','2016-09-08 03:08:12','/uploads/9m089_v5vSuK_u8lH7YKOSEv.jpg',1,NULL,'R&A',NULL,'1',987278398,'A','no','no','no','nothing','S&D',NULL,'Trainn...........','Mr'),('4f3ae5a0-62c8-11e6-8275-854919692198','Hoang','Huong','huongh@gmail.com','3 years','2016-08-15 09:11:53',NULL,'/uploads/P_WP5Ne90UwZkrSD4runZuBj.jpg',1,'Off-site','Member R&D',NULL,'0',14785239,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,NULL,'Ms'),('6316b9b0-62c2-11e6-bff5-f39840fdb592','Nguyen','Hao','haont@gmail.com','3 years','2016-08-15 08:29:29','2016-08-15 09:10:39','/uploads/P_WP5Ne90UwZkrSD4runZuBj.jpg',1,'Off-site','Member R&D',NULL,'0',147852369,'A','yes','yes','no','nothing','S&D',NULL,'Node.js is rich with number of popular packages registered at package registry called NPM. Most of them are not so reliable to use for production but there are some on which we can rely upon. For MySQL there is one popular driver called node-mysql.','Ms'),('af34e3d0-57cd-11e6-83e6-877943e390ef','Le','LeeNa','lee@rasia.info','2','2016-08-01 09:52:39','2016-08-01 11:17:52','/uploads/iooGZSdkdKilMxPveuNe38oo.jpg',1,'Off-site','HR',NULL,'0',147852369,'O','No','No','Twitter','Pracetamol','S&D',NULL,NULL,'Ms'),('c3fb8530-62cc-11e6-8308-cb64fea01398','Mark','Mark','lee@rasia.info','3 years','2016-08-15 09:43:47','2016-08-16 02:43:41','/uploads/P_WP5Ne90UwZkrSD4runZuBj.jpg',1,'Off-site','Member R&D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,'abc',NULL),('cf1bb3cd-4cb6-11e6-ba67-ecb1d7f32a10','Nguyen','Tony','a@gmail.com','5 years','2016-06-17 07:05:11','2016-08-09 03:43:20','/uploads/6.jpg',1,'On-site','PM','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su','1',147852369,'O','no','no','no','Nothing','S&D',NULL,NULL,'Mr'),('cf227e7e-4cb6-11e6-ba67-ecb1d7f32a10','Kunshima','Sato','a@gmail.com','5 years','2016-06-17 07:05:11','2016-06-17 09:48:31','/uploads/2.jpg',1,'On-site','PM','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,NULL,NULL),('cf295f3f-4cb6-11e6-ba67-ecb1d7f32a10','Heyhei','Sato','a@gmail.com','5 years','2016-06-17 07:05:11','2016-06-17 09:48:31','/uploads/3.jpg',1,'On-site','PM','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,NULL,NULL),('cf2fb3b3-4cb6-11e6-ba67-ecb1d7f32a10','Yurino','Chinda','a@gmail.com','5 years','2016-06-17 07:05:11','2016-06-17 09:48:31','/uploads/5.jpg',1,'On-site','PM','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,NULL,NULL),('d53e1c50-3459-11e6-a000-75216515f4da','Tony','Crus','v@gmail.com','5 years','2016-06-17 07:05:11','2016-06-17 09:48:31','/uploads/4.jpg',1,'Off-site','PM','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,NULL,NULL),('d53e1c50-3459-11e6-a000-87916515dcda','Wassh','Buhhh','a@gmail.com','5 years','2016-06-17 07:05:11','2016-06-17 09:48:31','/uploads/1.jpg',1,'On-site','PM','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,NULL,NULL),('d53e1c50-3459-11e6-a000-87916515f4ad','Shiwa','Sato','m@gmail.com','5 years','2016-06-17 07:05:11','2016-06-17 09:48:31','/uploads/2.jpg',1,'On-site','Member','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,NULL,NULL),('d53e1c50-3459-11e6-a000-87916515f4da','Kunshima','Nata','a@gmail.com','5 years','2016-06-17 07:05:11','2016-06-17 09:48:31','/uploads/1.jpg',1,'On-site','PM','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,NULL,NULL),('d53e1c50-3459-11e6-a123-87916515f4da','Mato','Sato','a@gmail.com','5 years','2016-06-17 07:05:11','2016-06-17 09:48:31','/uploads/1.jpg',1,'Off-site','PM','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,NULL,NULL),('e1180f10-57bb-11e6-b717-e9171d86b6a7','Ozanaki','Tokishima','ozanaki@petrol.sg','3 years','2016-08-01 07:45:12',NULL,'/uploads/oJA4fjMJFnFcBfuu2dMzOel5.jpg',1,'Off-site','Member R&D',NULL,'0',124356412,NULL,NULL,NULL,NULL,NULL,'S&D',NULL,NULL,'Ms'),('f552b810-57cd-11e6-83e6-877943e390ef','Rew','Mountain','son@rasia.info','2','2016-08-01 09:54:37','2016-08-15 04:40:48','/uploads/wo55z666plUxOkiuH47mw4wu.jpg',1,'Off-site','Developer Web1',NULL,'1',147852360,'A,O','Yes','Yes','Facebook,twitter','nothing1','S&D',NULL,NULL,'Mr');
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
INSERT INTO `staff_device` VALUES ('41d778c0-345a-11e6-9871-f37068d26ea2','41d751b0-345a-11e6-9871-f37068d26ea2','3660d43e-3398-11e6-bb4e-ecb1d7f32a10','2016-06-17 07:08:13','2016-06-17 07:08:13'),('41d778c1-345a-11e6-9871-f37068d26ea2','41d751b0-345a-11e6-9871-f37068d26ea2','78502b90-33a1-11e6-8ccb-3df3b56278dd','2016-06-17 07:08:13','2016-06-17 07:08:13'),('50a2db11-345a-11e6-9871-f37068d26ea2','50a2db10-345a-11e6-9871-f37068d26ea2','3660d43e-3398-11e6-bb4e-ecb1d7f32a10','2016-06-17 07:08:38','2016-06-17 07:08:38'),('50a2db12-345a-11e6-9871-f37068d26ea2','50a2db10-345a-11e6-9871-f37068d26ea2','78502b90-33a1-11e6-8ccb-3df3b56278dd','2016-06-17 07:08:38','2016-06-17 07:08:38'),('a6a7dfe0-3470-11e6-8cd1-ddc1e7417de0','d53e1c50-3459-11e6-a000-87916515f4da','587B72467F0976A5','2016-06-17 09:48:31','2016-06-17 09:48:31'),('beb962d0-3474-11e6-bb65-139d5fe0d8aa','5b142ab0-345d-11e6-9871-f37068d26ea2','3660d43e-3398-11e6-bb4e-ecb1d7f32a10','2016-06-17 10:17:50','2016-06-17 10:17:50'),('beb989e0-3474-11e6-bb65-139d5fe0d8aa','5b142ab0-345d-11e6-9871-f37068d26ea2','78502b90-33a1-11e6-8ccb-3df3b56278dd','2016-06-17 10:17:50','2016-06-17 10:17:50');
/*!40000 ALTER TABLE `staff_device` ENABLE KEYS */;
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
  `locationid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffinroom`
--

LOCK TABLES `staffinroom` WRITE;
/*!40000 ALTER TABLE `staffinroom` DISABLE KEYS */;
INSERT INTO `staffinroom` VALUES ('012a8e50-346b-11e6-bc52-9f760937a5e5','60861cb0-1342-11e6-83d2-bbfe2430f480','50a2db10-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:24:17','2016-06-17 16:08:06','2016-06-17 16:24:17','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('0962a1b0-346c-11e6-8ec7-5f16f5fbef59','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 16:15:29','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('16e5d820-3462-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:04:17','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('232de391-3465-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:26:06','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('241364c1-3469-11e6-a56e-9d1668250cdb','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:54:46','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('24933131-346b-11e6-bc52-9f760937a5e5','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 16:09:06','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('3d882561-3466-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:34:00','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('449848a1-3469-11e6-a56e-9d1668250cdb','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:55:40','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('46b66db1-3469-11e6-a56e-9d1668250cdb','60861cb0-1342-11e6-83d2-bbfe2430f480','50a2db10-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:24:17','2016-06-17 15:55:44','2016-06-17 16:24:17','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('492746a1-3469-11e6-a56e-9d1668250cdb','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:55:48','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('4f811cc1-346d-11e6-a11e-473d9724e71b','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 16:24:37','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('4fb6c830-346c-11e6-bb20-edb647c88bb6','60861cb0-1342-11e6-83d2-bbfe2430f480','50a2db10-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:24:17','2016-06-17 16:17:27','2016-06-17 16:24:17','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('576e61f1-3462-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:06:05','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('57c71e61-3464-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:20:25','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('58015981-346a-11e6-a56e-9d1668250cdb','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 16:03:22','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('58cf55b1-345b-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','50a2db10-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:24:17','2016-06-17 14:16:01','2016-06-17 16:24:17','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('64fad010-346c-11e6-9e1d-c9a42487b171','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 16:18:03','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('68d1ec90-3468-11e6-8c5e-c178d3808bdd','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:49:32','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('69d4f5f1-346e-11e6-a11e-473d9724e71b','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','1','2016-06-17 09:32:30','2016-06-17 16:32:30','2016-06-17 16:32:30','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('7c135461-346d-11e6-a11e-473d9724e71b','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 16:25:51','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('7deb2d31-3463-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:14:20','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('8f3b9741-3464-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:21:58','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('9f8753d1-346b-11e6-bdf5-f5f20247191e','60861cb0-1342-11e6-83d2-bbfe2430f480','50a2db10-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:24:17','2016-06-17 16:12:32','2016-06-17 16:24:17','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('a9a5cdb0-345c-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 14:25:26','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('aa53b660-345b-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 14:18:18','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('b8e235c1-3466-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:37:27','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('bc6a7551-346a-11e6-8755-6b583d384584','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 16:06:11','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('c7166fe1-3460-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 14:54:54','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('cf80f300-3463-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:16:36','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('d57294a0-346b-11e6-a2e8-07d2ecf7fd20','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 16:14:02','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('eeaa0580-3465-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','41d751b0-345a-11e6-9871-f37068d26ea2','0','2016-06-17 09:32:16','2016-06-17 15:31:48','2016-06-17 16:32:16','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480'),('f0a1e541-3462-11e6-aaf5-0db4a0880f3c','60861cb0-1342-11e6-83d2-bbfe2430f480','d53e1c50-3459-11e6-a000-87916515f4da','0','2016-06-17 09:32:23','2016-06-17 15:10:22','2016-06-17 16:32:23','491ac800-1342-11e6-83d2-bbfe2430f480','a8be61f0-1341-11e6-83d2-bbfe2430f480');
/*!40000 ALTER TABLE `staffinroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_device`
--

DROP TABLE IF EXISTS `status_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_device` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_device`
--

LOCK TABLES `status_device` WRITE;
/*!40000 ALTER TABLE `status_device` DISABLE KEYS */;
INSERT INTO `status_device` VALUES ('31b59d81-5dfb-11e6-b409-ecb1d7f32a10','Low Battery','Low Battery device',NULL,NULL),('8d4f54d9-5dfc-11e6-b409-ecb1d7f32a10','Run','Running',NULL,NULL),('a0be4549-5dec-11e6-b409-ecb1d7f32a10','Death','Death device',NULL,NULL);
/*!40000 ALTER TABLE `status_device` ENABLE KEYS */;
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
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `datemodified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES ('8b705080-629d-11e6-b608-93fce3e37de2','Demo edit','Dem','12','2016-08-15 04:05:45','2016-08-16 07:40:17'),('900fa6b0-5ec2-11e6-87d4-f180d67c0b20','Mobile Node 1','Mobile Node','the wearable device','2016-08-10 06:20:40','2016-08-15 03:23:57'),('921c3ae0-53d2-11e6-8a75-59420aba1aed','Static','Static','Demo description static','2016-07-27 08:17:34','2016-07-28 03:51:54'),('9ee368c0-53d2-11e6-8a75-59420aba1aed','Server','Server','Demo description server1','2016-07-27 08:17:55','2016-08-10 08:56:51'),('bb213f50-6384-11e6-aa57-6ff11fb65f70','Demo noti','demo noti','demo','2016-08-16 07:40:40','2016-08-16 07:40:40');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
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
  `staffid` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('00e8b0d0-1ca5-11e6-bd08-49bf42bd04c3',NULL,'25f9e794323b453885f5181f1b624d0b','Xuan Le Van',0,'xuanlv',NULL,NULL,NULL,NULL),('04a11990-1cd4-11e6-b1d7-79f14f7a59f1',NULL,'e10adc3949ba59abbe56e057f20f883e','La van B',1,'admin','2016-05-18 08:39:22',NULL,NULL,NULL),('1ceb5820-1d7a-11e6-98b4-c32f7ae31750','guest','0fc037f0db952f264337d6bd9878a970','guest',1,'guest','2016-05-19 04:28:19','2016-05-20 09:11:12','xuan@rasia.info',NULL),('26a2f0a0-62c9-11e6-931c-3f4c4ff4223a','undefined undefined','e10adc3949ba59abbe56e057f20f883e','undefined undefined',1,'minhnguyen','2016-08-15 09:17:54',NULL,NULL,'26a2c990-62c9-11e6-931c-3f4c4ff4223a'),('274b79b0-1ccd-11e6-9c1c-47978b9a4517',NULL,'e10adc3949ba59abbe56e057f20f883e','La van B',1,'demo','2016-05-18 07:50:13',NULL,'son@rasia.info',NULL),('29095b70-3378-11e6-9189-6d429cff9119','peopleIoT','e10adc3949ba59abbe56e057f20f883e','peopleIoT',1,'people','2016-06-16 04:09:45',NULL,'peopleiot@rasia.info',NULL),('29395c60-1d90-11e6-96b5-918d1b9b33a0','le van xuan','0fc037f0db952f264337d6bd9878a970','le van xuan',0,'leteo','2016-05-19 07:06:09','2016-05-19 07:21:53','xuan@rasia.info',NULL),('3bcb56e0-3379-11e6-9189-6d429cff9119','logistic','e10adc3949ba59abbe56e057f20f883e','logistic',1,'logistic','2016-06-16 04:17:26',NULL,'logisticiot@rasia.info',NULL),('3caac77e-1bfd-11e6-ad52-ecb1d7f32a10','locnguyen','e10adc3949ba59abbe56e057f20f883e','Lộc',1,'locnguyen',NULL,NULL,NULL,NULL),('3cb7b381-1bfd-11e6-ad52-ecb1d7f32a10','buiduy','e10adc3949ba59abbe56e057f20f883e','Duy',1,'buiduy',NULL,NULL,NULL,NULL),('3ccae269-1bfd-11e6-ad52-ecb1d7f32a10','viennp','e10adc3949ba59abbe56e057f20f883e','Viên',1,'viennp',NULL,NULL,NULL,NULL),('43f224f1-62c9-11e6-931c-3f4c4ff4223a','Duy Bui','e10adc3949ba59abbe56e057f20f883e','Duy Bui',1,'duyn','2016-08-15 09:18:44',NULL,'duyb@gmail.com','43f224f0-62c9-11e6-931c-3f4c4ff4223a'),('479b8eb0-7571-11e6-a933-f3e0d40546f3','Son Nguyen','e10adc3949ba59abbe56e057f20f883e','Son Nguyen',1,'sonnv2394','2016-09-08 03:06:47',NULL,'nvs2394@gmail.com','479a5630-7571-11e6-a933-f3e0d40546f3'),('4f3ae5a1-62c8-11e6-8275-854919692198','Huong Hoang','e10adc3949ba59abbe56e057f20f883e','Huong Hoang',1,'huonghoang','2016-08-15 09:11:53',NULL,'huongh@gmail.com','4f3ae5a0-62c8-11e6-8275-854919692198'),('51077c20-1ca7-11e6-9bec-fd5ff1c520f7',NULL,'e10adc3949ba59abbe56e057f20f883e','Xuan LV',1,'xuan',NULL,NULL,NULL,NULL),('543a44b0-1cd7-11e6-95c0-1b7e4785be3e',NULL,'ee90d53178b12449119ad86182242681','La van B',1,'admin1','2016-05-18 09:03:04',NULL,'email@gmail.com',NULL),('6316e0c0-62c2-11e6-bff5-f39840fdb592','Hao Nguyen','e10adc3949ba59abbe56e057f20f883e','Hao Nguyen',1,'haont','2016-08-15 08:29:29',NULL,'haont@gmail.com','6316b9b0-62c2-11e6-bff5-f39840fdb592'),('7dd7d8f0-1ccd-11e6-b367-d5a0fda63820',NULL,'e10adc3949ba59abbe56e057f20f883e','La van B',1,'demo','2016-05-18 07:52:39',NULL,'son@rasia.info',NULL),('8a8efaa0-1d64-11e6-934d-4342c0e5bbfe',NULL,'e10adc3949ba59abbe56e057f20f883e','Tony Jayden',1,'xyz','2016-05-19 01:53:54',NULL,'xyz@gmail.com',NULL),('a3bca3c0-1ceb-11e6-83e6-c70c83f29ca5',NULL,'e10adc3949ba59abbe56e057f20f883e','levanxuan',1,'levanxuan','2016-05-18 11:28:27',NULL,'levanxuan@rasia.info',NULL),('b874caa0-3379-11e6-9189-6d429cff9119','tenant','e10adc3949ba59abbe56e057f20f883e','tenant',1,'tenant','2016-06-16 04:20:56','2016-06-20 03:08:11','tenant@rasia.info',NULL),('ba95d820-1ccb-11e6-a12b-ad6db995e7a3','son','3859bcb72909fc479e26816cefb85383','Kimashita',1,'son','2016-05-18 07:40:02',NULL,'nvs2394@gmail.com',NULL),('c3fb8531-62cc-11e6-8308-cb64fea01398','undefined undefined','e10adc3949ba59abbe56e057f20f883e','undefined undefined',1,NULL,'2016-08-15 09:43:47',NULL,NULL,'c3fb8530-62cc-11e6-8308-cb64fea01398'),('c88da8e0-1cee-11e6-a79a-87db17a77210','sonnguyen1','e10adc3949ba59abbe56e057f20f883e','sonnguyen1',1,'sonnguyen','2016-05-18 11:50:57','2016-05-19 04:22:23','reemail@gmail.com',NULL),('e284d4f0-1d64-11e6-934d-4342c0e5bbfe','full','e10adc3949ba59abbe56e057f20f883e','Rasia',1,'full','2016-05-19 01:56:22','2016-05-19 04:16:48','refull@gmail.com','41d751b0-345a-11e6-9871-f37068d26ea2'),('f8b67c20-1ceb-11e6-83e6-c70c83f29ca5','abc','e10adc3949ba59abbe56e057f20f883e','Bushrod',1,'abc','2016-05-18 11:30:50','2016-05-20 03:16:35','nikecon90@gmail.com',NULL);
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
  `locationid` varchar(36) DEFAULT NULL,
  `zoneimage` varchar(255) DEFAULT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES ('0d71d5f0-137e-11e6-9361-91bcf9411721','Demo zone 7','Demo for zone 7',1,'2016-05-06 11:31:19','2016-05-10 03:57:01','1fcb2990-5951-11e6-9281-7d71f88bb794','/uploads/mapRasia.png',23,13.5),('1801c170-7bc9-11e6-9eed-7b62b7741570','Test 16092016','Test 16092016',1,'2016-09-16 04:50:30',NULL,'1fcb2990-5951-11e6-9281-7d71f88bb794','/uploads/6jbvvXNubyw5gOgoYARJvZXw.jpg',2000,1000),('22e11910-1369-11e6-9ea3-5d2fd15f06e4','Zone 6','Demo Rasia 8',1,'2016-05-06 09:01:35','2016-05-10 09:05:07','11daee00-4f2a-11e6-be96-d9ed608f0412','/uploads/0I4rZ37hBHytB970CumhWeMo.png',100,100),('491ac800-1342-11e6-83d2-bbfe2430f480','Zone 1','Description Zone 1',1,'2016-05-06 04:23:29','2016-05-06 04:23:29','02758b90-33a1-11e6-8ccb-3df3b56278dd','/uploads/brC6b-HJGFH0yb3inPirKRuQ.gif',100,100),('4e5a5150-1342-11e6-83d2-bbfe2430f480','Zone 2','Description Zone 2',1,'2016-05-06 04:23:38','2016-05-06 04:23:38','02758b90-33a1-11e6-8ccb-3df3b56278dd','/uploads/dlVcYlWjS8SOYQGngdYNAFqN.png',100,100),('5435cc80-1342-11e6-83d2-bbfe2430f480','Zone 3','Description Zone 3',1,'2016-05-06 04:23:48','2016-05-06 04:23:48','02758b90-33a1-11e6-8ccb-3df3b56278dd','/uploads/Zone 3.gif',200,150),('6c736520-59ea-11e6-93fa-679c761fc9b0','Zone Rasia','Demo zone rasia',0,'2016-08-04 02:23:25','2016-08-04 06:19:07','1fcb2990-5951-11e6-9281-7d71f88bb794','/uploads/e0Vifi8NgLywmpyEwtrtTgpj.jpg',0,NULL),('71997ac0-15d5-11e6-8320-1b0f22361915','Demo zone 8','Demo',1,'2016-05-09 11:01:55','2016-05-11 06:11:50','02758b90-33a1-11e6-8ccb-3df3b56278dd','/uploads/FN_r48nuDWxoBUtp_-UEV3Y9.jpg',NULL,NULL),('9281bec0-5949-11e6-8319-83c98161e8bc','Anna Demo','Demo',1,'2016-08-03 07:11:59','2016-08-03 07:19:12','11daee00-4f2a-11e6-be96-d9ed608f0412','/uploads/0GgxU_bpstPOuH7qgLfq_VVL.jpg',NULL,NULL),('939f75a0-5a0b-11e6-9cf8-adfaaebff297','Zone demo new edit zone','Demo location new edit',1,'2016-08-04 06:20:44','2016-08-15 04:08:35','02758b90-33a1-11e6-8ccb-3df3b56278dd','/uploads/6PgzLFwW8xNglq78Kse-O_0T.jpg',NULL,NULL),('c7d02460-168f-11e6-a586-db459e049230','Zone Demo','Demo des',1,'2016-05-10 09:15:46','2016-08-03 04:06:38','75f5d420-587d-11e6-82e5-7d8f90136c7b','/uploads/K1_-ZLFW62SiI6sDCJwm4NZk.jpg',100,0),('d68d8600-6388-11e6-aa57-6ff11fb65f70','Demo noti','Demo noti',0,'2016-08-16 08:10:04','2016-08-24 02:46:37','02758b90-33a1-11e6-8ccb-3df3b56278dd',NULL,300,300),('fb890fb0-629d-11e6-8501-3feebde782ae','Demo zone edit','Zone',1,'2016-08-15 04:08:55','2016-08-16 08:01:52','11daee00-4f2a-11e6-be96-d9ed608f0412',NULL,15,20);
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'people_device_iot'
--

--
-- Dumping routines for database 'people_device_iot'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-20 14:20:05
