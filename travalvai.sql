-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 172.16.0.68    Database: travalvai
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
-- Table structure for table `Units`
--

DROP TABLE IF EXISTS `Units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Units` (
  `Id_unit` int(11) NOT NULL AUTO_INCREMENT,
  `unit_Code` varchar(255) DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_unit`),
  KEY `FK4E1674F2740CAF0` (`id_Factory`),
  CONSTRAINT `FK4E1674F2740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Units`
--

LOCK TABLES `Units` WRITE;
/*!40000 ALTER TABLE `Units` DISABLE KEYS */;
/*!40000 ALTER TABLE `Units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `access_level`
--

DROP TABLE IF EXISTS `access_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_level` (
  `id_access_level` int(11) NOT NULL AUTO_INCREMENT,
  `al_name` varchar(255) DEFAULT NULL,
  `al_right` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_access_level`),
  KEY `FK8BF918E930B5C2E3` (`id_user_created`),
  KEY `FK8BF918E9E56E24B6` (`id_user_updated`),
  CONSTRAINT `FK8BF918E930B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK8BF918E9E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_level`
--

LOCK TABLES `access_level` WRITE;
/*!40000 ALTER TABLE `access_level` DISABLE KEYS */;
INSERT INTO `access_level` VALUES (1,'Admin','[]','2016-08-15 11:21:32','2016-08-15 11:21:32',1,1),(2,'Finance','[]','2016-08-15 11:21:42','2016-08-15 11:21:42',1,1);
/*!40000 ALTER TABLE `access_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `access_page`
--

DROP TABLE IF EXISTS `access_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `idPage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idPage` (`idPage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_page`
--

LOCK TABLES `access_page` WRITE;
/*!40000 ALTER TABLE `access_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent` (
  `id_Agent` int(11) NOT NULL AUTO_INCREMENT,
  `ag_code` varchar(255) DEFAULT NULL,
  `ag_description` longtext,
  `ag_commission` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_Zone` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  `id_plz` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Agent`),
  UNIQUE KEY `ag_code` (`ag_code`),
  KEY `FK587430587962C11` (`id_plz`),
  KEY `FK587430530B5C2E3` (`id_user_created`),
  KEY `FK587430562BFEBFC` (`id_Zone`),
  KEY `FK58743057E351E17` (`id_language`),
  KEY `FK5874305E56E24B6` (`id_user_updated`),
  KEY `FK58743051AD8B11C` (`id_contact`),
  CONSTRAINT `FK58743051AD8B11C` FOREIGN KEY (`id_contact`) REFERENCES `contact` (`id_contact`),
  CONSTRAINT `FK587430530B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK587430562BFEBFC` FOREIGN KEY (`id_Zone`) REFERENCES `zone` (`id_Zone`),
  CONSTRAINT `FK58743057E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK587430587962C11` FOREIGN KEY (`id_plz`) REFERENCES `price_list_zone` (`id_plz`),
  CONSTRAINT `FK5874305E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (1,'ANY','agent of newyork',5,'2016-08-01 14:18:55','2016-09-09 15:21:20',2,1,1,1,9,NULL),(2,'amy3','agent 2 of newyork zone',2,'2016-08-01 14:20:05','2016-09-09 15:21:50',2,1,1,1,10,NULL),(3,'AWA','agent 1 of WA zone',1,'2016-08-01 14:21:45','2016-08-01 14:21:45',3,3,2,1,12,NULL),(4,'AWA2','agent 2 of WA zone',1,'2016-08-01 14:22:31','2016-08-01 14:22:31',3,3,2,1,13,NULL),(5,'Tokyo','Agent in Tokyo',5,'2016-08-15 08:20:28','2016-08-15 08:20:28',14,14,3,12,NULL,NULL),(9,'vietnamagent1','vietnamagent1',1,'2016-08-16 10:18:38','2016-08-16 10:18:38',17,17,4,4,NULL,NULL),(10,'vietnamagent2','vietnamagent2',1,'2016-08-16 10:19:09','2016-08-16 10:19:09',17,17,4,12,NULL,NULL),(11,'vietnamagent3','dfgdfgfdg',1,'2016-08-16 10:26:06','2016-08-16 10:26:06',17,17,4,4,61,NULL),(12,'vietnamagent4','vietnamagent4',1,'2016-08-16 10:32:34','2016-08-16 10:32:34',17,17,4,4,NULL,NULL),(13,'agent-loc-1','agent-loc-1',1,'2016-08-16 10:43:31','2016-08-16 10:43:31',2,2,1,1,NULL,NULL);
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_price`
--

DROP TABLE IF EXISTS `agent_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_price` (
  `id_agent_pl` int(11) NOT NULL AUTO_INCREMENT,
  `apl_date_i` datetime DEFAULT NULL,
  `apl_date_f` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_Agent` int(11) DEFAULT NULL,
  `id_plz` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_agent_pl`),
  KEY `FK76C43F8F87962C11` (`id_plz`),
  KEY `FK76C43F8F30B5C2E3` (`id_user_created`),
  KEY `FK76C43F8FE56E24B6` (`id_user_updated`),
  KEY `FK76C43F8FF27575E6` (`id_Agent`),
  CONSTRAINT `FK76C43F8F30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK76C43F8F87962C11` FOREIGN KEY (`id_plz`) REFERENCES `price_list_zone` (`id_plz`),
  CONSTRAINT `FK76C43F8FE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK76C43F8FF27575E6` FOREIGN KEY (`id_Agent`) REFERENCES `agent` (`id_Agent`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_price`
--

LOCK TABLES `agent_price` WRITE;
/*!40000 ALTER TABLE `agent_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL AUTO_INCREMENT,
  `cn_name` varchar(255) DEFAULT NULL,
  `cts_address_1` varchar(255) DEFAULT NULL,
  `cts_address_2` varchar(255) DEFAULT NULL,
  `cts_address_3` varchar(255) DEFAULT NULL,
  `cts_city` varchar(255) DEFAULT NULL,
  `cts_province` varchar(255) DEFAULT NULL,
  `cts_zip_code` varchar(255) DEFAULT NULL,
  `cts_country` varchar(255) DEFAULT NULL,
  `cts_phone` varchar(255) DEFAULT NULL,
  `cts_email` varchar(255) DEFAULT NULL,
  `cts_vat_code` varchar(255) DEFAULT NULL,
  `cts_notes` varchar(255) DEFAULT NULL,
  `cts_type` int(11) DEFAULT NULL,
  `draft` bit(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `cts_sh_name` varchar(255) DEFAULT NULL,
  `cts_sh_address_1` varchar(255) DEFAULT NULL,
  `cts_sh_address_2` varchar(255) DEFAULT NULL,
  `cts_sh_address_3` varchar(255) DEFAULT NULL,
  `cts_sh_city` varchar(255) DEFAULT NULL,
  `cts_sh_province` varchar(255) DEFAULT NULL,
  `cts_sh_zip_code` varchar(255) DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_contact`),
  KEY `FK38B7242030B5C2E3` (`id_user_created`),
  KEY `FK38B72420E56E24B6` (`id_user_updated`),
  CONSTRAINT `FK38B7242030B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK38B72420E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (3,'abc','','','','','','','','','','60000','',4,'\0','2016-08-01 13:42:26','2016-08-25 17:05:48','','','','','','','',NULL,1),(4,'User Factory Contact','','','','','','','','s','','7000','',4,'\0',NULL,'2016-08-16 11:17:15','','','','','','','',NULL,1),(5,'contact zone1','','','','','','','','','','333222','',2,'\0','2016-08-01 14:08:00','2016-08-15 15:36:57','','','','','','','',1,2),(6,'contact zone 2','','','','','','','','','','','',2,'\0','2016-08-01 14:09:23','2016-08-01 14:51:35','','','','','','','',1,1),(7,'contact agent 1','','','','','','','','','','','',3,'\0','2016-08-01 14:11:54','2016-08-01 14:11:54','','','','','','','',2,2),(8,'Pepsico Contact','88 Dong Khoi Street, District 1, Ho Chi Minh City, VietNam.','88 Dong Khoi Street, District 1, Ho Chi Minh City, VietNam.','88 Dong Khoi Street, District 1, Ho Chi Minh City, VietNam.','Ho Chi Minh','Ho Chi Minh','40000','Viet Nam','(84 8) 3 821 9436','pepsico@gmail.com','PESVAT','PepsiCo contact information for consumer contacts, media contacts, shareholders, careers and business addresses.',1,'\0','2016-08-01 14:17:33','2016-08-25 17:05:28','Pepsico Shipe','88 Dong Khoi Street, District 1, Ho Chi Minh City, VietNam','88 Dong Khoi Street, District 1, Ho Chi Minh City, VietNam','88 Dong Khoi Street, District 1, Ho Chi Minh City, VietNam','830000','Ho Chi Min','840000',1,1),(9,'agent of newyork','','','','','','','','','','','',3,'\0','2016-08-01 14:18:13','2016-08-01 14:18:13','','','','','','','',2,2),(10,'contact of agent 2 \'s newyork zone','','','','','','','','','','','',3,'\0','2016-08-01 14:20:03','2016-08-05 17:07:08','','','','','','','',2,7),(12,'agent of WA zone','','','','','','','','','','','',3,'\0','2016-08-01 14:21:43','2016-08-01 14:21:43','','','','','','','',3,3),(13,'agent 2 of WA zone','','','','','','','','','','','',3,'\0','2016-08-01 14:22:29','2016-08-01 14:22:29','','','','','','','',3,3),(14,'agent 2','','','','','','','','','','','',3,'\0','2016-08-01 14:24:39','2016-08-01 14:50:34','','','','','','','',1,1),(15,'agent 3','','','','','','','','','','','',3,'\0','2016-08-01 14:25:35','2016-08-01 14:50:55','','','','','','','',1,1),(16,'Bill Gates','','','','','','','','','','','',4,'\0','2016-08-01 14:27:44','2016-08-01 14:27:44','','','','','','','',4,4),(17,'Thomas Mueller','','','','','','','','','','','',4,'\0','2016-08-01 14:28:52','2016-08-01 14:28:52','','','','','','','',4,4),(18,'customer 1','','','','','','','','','','','',4,'\0','2016-08-01 14:38:39','2016-08-01 14:53:17','','','','','','','',1,1),(19,'agent 1','gdf','','asf','','','','','','','','',2,'\0','2016-08-01 14:45:38','2016-08-05 09:48:32','','','','','','','',1,1),(20,'customer 2','','','','','','','','','','','',4,'\0','2016-08-01 14:46:45','2016-08-01 14:46:45','','','','','','','',1,1),(21,'Customer Vietnam','address customer 1','address customer 1','address customer 1','ho chi minh','','','','','','700000','',4,'\0','2016-08-01 15:02:13','2016-08-01 15:02:13','TAG','address customer 1','address customer 1','address customer 1','Ho chi MIn','','700000',1,1),(22,'Vietname Pepsico','address customer 1','address customer 1','address customer 1','','','','','','','','',4,'\0','2016-08-01 15:05:37','2016-08-01 15:05:37','TAG','address customer 1','address customer 1','address customer 1','','','',1,1),(23,'Tinh Loi Company','Nam Sach - Hai Duong','Nam Sach - Hai Duong','Nam Sach - Hai Duong','Hai Duong','Hai Duong','340000','Viet Nam','19008198','ledonit90@gmail.com','340000','Nam Sach - Hai Duong',4,'\0','2016-08-01 16:51:24','2016-08-01 16:51:24','','','','','','','',5,5),(25,'john terry','','','','','','','','','','','',4,'\0','2016-08-01 17:32:16','2016-08-01 17:32:16','','','','','','','',6,6),(26,'cus1ofcustoer1','','','','','','','','','','','',4,'\0','2016-08-01 17:33:43','2016-08-01 17:33:43','','','','','','','',6,6),(28,'pep','','','','','','','','','','0','',1,'\0','2016-08-01 17:52:55','2016-09-09 15:36:56','','','','','','','',1,1),(29,'Barcelona','English','English','English','London','','','','','','7000','',3,'\0','2016-08-01 17:55:38','2016-08-01 17:55:38','BCN','English','English','English','7000','LonDon','',2,2),(31,'sdg','','','','','','','','','','sdg','',4,'\0','2016-08-01 18:24:30','2016-08-01 18:24:30','','','','','','','',5,5),(32,'sdgsdvfg','sdg','sdgsdg','sdgsdg','sdg','','','','','rtdfdfg','sdg','',4,'\0','2016-08-01 18:37:27','2016-08-01 18:39:10','','','','','','','',2,2),(37,'Zone NewYork 1','Sai Gon - Gia Dinh','Sai Gon - Gia Dinh','Sai Gon - Gia Dinh','Ho Chi Minh','','','','','','70000','',2,'\0','2016-08-05 09:54:44','2016-08-12 16:09:16','','','','','','','',1,1),(38,'Zone Washington','That kho hieu qua','That kho hieu qua','That kho hieu qua','Ho Chi Minh City','','','','','','8000','',2,'\0','2016-08-05 09:55:27','2016-08-05 09:55:27','','','','','','','',1,1),(39,'Forwarder 1','Ho Chi Minh City','Ho Chi Minh City','Ho Chi Minh City','Ho Chi Minh City','Ho Chi Minh City','7000','Viet Nam','0985888214','ledonit90@gmail.com','7000','Ho Chi Minh City, Ho Chi Minh City, Ho Chi Minh City',4,'\0','2016-08-05 09:57:45','2016-08-05 09:57:45','','','','','','','',1,1),(40,'Forwarder 2','Ho Chi Minh City','Ho Chi Minh City','','','','','','','','70000','',4,'\0','2016-08-05 10:00:03','2016-08-05 10:00:03','50','ss','ss','ss','Sai gon','','',1,1),(41,'Loan','Quang Trung SoftwareCity','','','Tan Binh','Ho Chin Minh','','Vietnam','+913660066','steven@gmail.com','1111','',4,'\0','2016-08-11 15:55:34','2016-08-16 09:19:07','','','','','','','',7,7),(42,'Li','','','','','','','','913660066','','1111','',4,'\0','2016-08-12 09:34:09','2016-08-16 09:18:57','','','','','','','',7,7),(43,'Selena','','','','','','','','','','','',4,'\0','2016-08-12 11:36:31','2016-08-12 11:36:31','','','','','','','',5,5),(44,'Kawamaka','','','','','','','','','','','',2,'\0','2016-08-15 08:18:23','2016-08-15 08:18:23','','','','','','','',1,1),(45,'Kawamaka','','','','','','','','','','','',2,'\0','2016-08-15 08:19:26','2016-08-15 08:19:26','','','','','','','',1,1),(47,'Tokyomana','','','','','','','','','','','',4,'\0','2016-08-15 08:21:05','2016-08-15 08:21:05','','','','','','','',14,14),(48,'Alice','43/78/9 Cong Hoa','','','Tan Binh','Ho Chi Minh City','700000','Vietnam','0913660066','','','',4,'\0','2016-08-15 09:01:46','2016-08-15 09:01:46','','','','','','','',15,15),(49,'Alan','','','','','','','','','','','',4,'\0','2016-08-15 12:27:56','2016-08-15 12:27:56','','','','','','','',15,15),(50,'customer 10','','','','','','','','','','','',4,'\0','2016-08-15 14:08:24','2016-08-15 14:11:40','','','','','','','',2,2),(51,'roberto carlos','','','','','','','','','','2222','',3,'\0','2016-08-16 09:52:41','2016-08-16 09:52:41','','','','','','','',1,1),(52,'le van teo','','','','','','','','','','22','',3,'\0','2016-08-16 09:53:47','2016-08-16 09:53:47','','','','','','','',1,1),(58,'le van teo','','','','','','','','','','555','',3,'\0','2016-08-16 10:21:36','2016-08-16 10:21:36','','','','','','','',17,17),(59,'nguyen van teo','','','','','','','','','','444','',3,'\0','2016-08-16 10:22:41','2016-08-16 10:22:41','','','','','','','',17,17),(61,'nguyen van a','','','','','','','','','','555','',3,'\0','2016-08-16 10:27:06','2016-09-07 11:36:50','','','','','','','',17,1),(63,'le van b','','','','','','','','','','6666','',3,'\0','2016-08-16 10:33:44','2016-08-16 10:33:44','','','','','','','',17,17),(65,'contact user agent loc 1','','','','','','','','','','123','',3,'\0','2016-08-16 10:44:50','2016-08-16 10:44:50','','','','','','','',2,2),(67,'alisa','','','','','','','','','','032523025','',2,'\0','2016-09-09 14:54:18','2016-09-09 14:55:17','','','','','','','',1,1),(73,'Pepsico Contact','tt','','','','','','','','','039563255','',3,'\0','2016-09-12 10:31:10','2016-09-12 10:31:10','','','','','','','',1,1);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract` (
  `id_contract` int(11) NOT NULL AUTO_INCREMENT,
  `c_date_i` datetime DEFAULT NULL,
  `c_no_of_years` double DEFAULT NULL,
  `c_increase_year` double DEFAULT NULL,
  `id_Customer` int(11) DEFAULT NULL,
  `id_Agent` int(11) DEFAULT NULL,
  `id_Zone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_contract`),
  KEY `FKDE351112CC25B260` (`id_Customer`),
  KEY `FKDE35111262BFEBFC` (`id_Zone`),
  KEY `FKDE351112F27575E6` (`id_Agent`),
  CONSTRAINT `FKDE35111262BFEBFC` FOREIGN KEY (`id_Zone`) REFERENCES `zone` (`id_Zone`),
  CONSTRAINT `FKDE351112CC25B260` FOREIGN KEY (`id_Customer`) REFERENCES `customer` (`id_Customer`),
  CONSTRAINT `FKDE351112F27575E6` FOREIGN KEY (`id_Agent`) REFERENCES `agent` (`id_Agent`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (11,'2011-08-16 00:00:00',3,7,8,5,3),(21,'2012-02-15 00:00:00',3,5,9,5,3);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costing`
--

DROP TABLE IF EXISTS `costing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costing` (
  `id_cost` int(11) NOT NULL AUTO_INCREMENT,
  `cost_code` varchar(255) DEFAULT NULL,
  `cost_season` varchar(255) DEFAULT NULL,
  `cost_pl` bit(1) DEFAULT NULL,
  `cost_date` date DEFAULT NULL,
  `cost_update` date DEFAULT NULL,
  `cost_weight` float DEFAULT NULL,
  `cost_volume` float DEFAULT NULL,
  `cost_variants` int(11) DEFAULT NULL,
  `cost_sketch` varchar(255) DEFAULT NULL,
  `hashid` varchar(32) DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_type_products` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cost`),
  UNIQUE KEY `hashid` (`hashid`),
  KEY `FK38FDB8F52740CAF0` (`id_Factory`),
  KEY `FK38FDB8F59737C5EC` (`id_type_products`),
  KEY `FK38FDB8F530B5C2E3` (`id_user_created`),
  KEY `FK38FDB8F5CC25B260` (`id_customer`),
  KEY `FK38FDB8F5E56E24B6` (`id_user_updated`),
  CONSTRAINT `FK38FDB8F52740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`),
  CONSTRAINT `FK38FDB8F530B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK38FDB8F59737C5EC` FOREIGN KEY (`id_type_products`) REFERENCES `type_of_products` (`id_type_products`),
  CONSTRAINT `FK38FDB8F5CC25B260` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_Customer`),
  CONSTRAINT `FK38FDB8F5E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costing`
--

LOCK TABLES `costing` WRITE;
/*!40000 ALTER TABLE `costing` DISABLE KEYS */;
INSERT INTO `costing` VALUES (278,'TSS','2016','','2016-09-19','2016-09-19',0.15,0.7,0,'front-tshirt-vector-1357044118.jpg','FAA182ADD7BB36F8916C4654C7C9F89E',1,1,1,1,2),(279,'TSL','2016','','2016-09-19','2016-09-19',0.15,0.7,0,'front-tshirt-vector-1357044120.jpg','CC3537CC5ED5BB3909E230C235888E1C',1,1,1,1,8),(280,'TPS','2016','','2016-09-19','2016-09-19',0.15,0.7,0,NULL,'F20BC81ED735340605000AA8B931FEFF',1,1,1,1,1),(281,'TSS-BIS-99','2016','','2016-09-19','2016-09-19',0.15,0.8,0,NULL,'CBF6A75451624023C131FDB76A064E77',1,1,1,1,2),(282,'TPL','2016','','2016-09-19','2016-09-19',0.15,0.7,0,NULL,'EA30BF908EAAD1058D5D24C3758FB881',1,1,1,1,8),(307,'PPP','2016','','2016-09-20','2016-09-20',3,4,0,'front-tshirt-vector-1357044143.jpg','DF9284938E4CD96598154040C639506C',1,1,1,1,1),(308,'LLL','2016','','2016-09-20','2016-09-20',12,12,0,'front-tshirt-vector-1357044145.jpg','B2A2FE96295CC046CD2901ED8232C244',1,1,1,1,2);
/*!40000 ALTER TABLE `costing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costing_description`
--

DROP TABLE IF EXISTS `costing_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costing_description` (
  `id_cost_description` int(11) NOT NULL AUTO_INCREMENT,
  `cd_description` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_cost` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cost_description`),
  KEY `FK89B0D3B230B5C2E3` (`id_user_created`),
  KEY `FK89B0D3B27E351E17` (`id_language`),
  KEY `FK89B0D3B2E56E24B6` (`id_user_updated`),
  KEY `FK89B0D3B29B7A0D66` (`id_cost`),
  CONSTRAINT `FK89B0D3B230B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK89B0D3B27E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK89B0D3B29B7A0D66` FOREIGN KEY (`id_cost`) REFERENCES `costing` (`id_cost`),
  CONSTRAINT `FK89B0D3B2E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2625 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costing_description`
--

LOCK TABLES `costing_description` WRITE;
/*!40000 ALTER TABLE `costing_description` DISABLE KEYS */;
INSERT INTO `costing_description` VALUES (2361,'T-Shirt Long Sleeve - TS','2016-09-19 10:24:45','2016-09-19 10:24:45',1,1,278,1),(2362,'','2016-09-19 10:24:45','2016-09-19 10:24:45',1,1,278,2),(2363,'','2016-09-19 10:24:45','2016-09-19 10:24:45',1,1,278,4),(2364,'','2016-09-19 10:24:45','2016-09-19 10:24:45',1,1,278,8),(2365,'','2016-09-19 10:24:45','2016-09-19 10:24:45',1,1,278,12),(2366,'','2016-09-19 10:24:45','2016-09-19 10:24:45',1,1,278,15),(2367,'','2016-09-19 10:24:45','2016-09-19 10:24:45',1,1,278,17),(2368,'','2016-09-19 10:24:45','2016-09-19 10:24:45',1,1,278,19),(2369,'T-Shirt Spandex S/SL','2016-09-19 10:28:25','2016-09-19 10:28:25',1,1,279,1),(2370,'','2016-09-19 10:28:25','2016-09-19 10:28:25',1,1,279,2),(2371,'','2016-09-19 10:28:25','2016-09-19 10:28:25',1,1,279,4),(2372,'','2016-09-19 10:28:25','2016-09-19 10:28:25',1,1,279,8),(2373,'','2016-09-19 10:28:25','2016-09-19 10:28:25',1,1,279,12),(2374,'','2016-09-19 10:28:25','2016-09-19 10:28:25',1,1,279,15),(2375,'','2016-09-19 10:28:25','2016-09-19 10:28:25',1,1,279,17),(2376,'','2016-09-19 10:28:25','2016-09-19 10:28:25',1,1,279,19),(2377,'T-Shirt Short Sleeve - TS','2016-09-19 10:30:50','2016-09-19 10:30:50',1,1,280,1),(2378,'T-Shirt S/SL ES','2016-09-19 10:30:50','2016-09-19 10:30:50',1,1,280,2),(2379,'T-Shirt S/SL VIET','2016-09-19 10:30:50','2016-09-19 10:30:50',1,1,280,4),(2380,'T-Shirt S/SL FRE','2016-09-19 10:30:50','2016-09-19 10:30:50',1,1,280,8),(2381,'T-Shirt S/SL JPN','2016-09-19 10:30:50','2016-09-19 10:30:50',1,1,280,12),(2382,'T-Shirt S/SL CA','2016-09-19 10:30:50','2016-09-19 10:30:50',1,1,280,15),(2383,'T-Shirt S/SL GER','2016-09-19 10:30:50','2016-09-19 10:30:50',1,1,280,17),(2384,'T-Shirt S/SL KOR','2016-09-19 10:30:50','2016-09-19 10:30:50',1,1,280,19),(2385,'T-Shirt Long Sleeve - TS','2016-09-19 10:32:20','2016-09-19 10:32:20',1,1,281,1),(2386,'','2016-09-19 10:32:20','2016-09-19 10:32:20',1,1,281,2),(2387,'','2016-09-19 10:32:20','2016-09-19 10:32:20',1,1,281,4),(2388,'','2016-09-19 10:32:20','2016-09-19 10:32:20',1,1,281,8),(2389,'','2016-09-19 10:32:20','2016-09-19 10:32:20',1,1,281,12),(2390,'','2016-09-19 10:32:20','2016-09-19 10:32:20',1,1,281,15),(2391,'','2016-09-19 10:32:20','2016-09-19 10:32:20',1,1,281,17),(2392,'','2016-09-19 10:32:20','2016-09-19 10:32:20',1,1,281,19),(2393,'T-Shirt Spandex S/SL','2016-09-19 10:34:47','2016-09-19 10:34:47',1,1,282,1),(2394,'','2016-09-19 10:34:47','2016-09-19 10:34:47',1,1,282,2),(2395,'','2016-09-19 10:34:47','2016-09-19 10:34:47',1,1,282,4),(2396,'','2016-09-19 10:34:47','2016-09-19 10:34:47',1,1,282,8),(2397,'','2016-09-19 10:34:47','2016-09-19 10:34:47',1,1,282,12),(2398,'','2016-09-19 10:34:47','2016-09-19 10:34:47',1,1,282,15),(2399,'','2016-09-19 10:34:47','2016-09-19 10:34:47',1,1,282,17),(2400,'','2016-09-19 10:34:47','2016-09-19 10:34:47',1,1,282,19),(2601,'T-Shirt Short Sleeve - TS','2016-09-20 13:16:18','2016-09-20 13:16:18',1,1,307,1),(2602,'T-Shirt S/SL ES','2016-09-20 13:16:18','2016-09-20 13:16:18',1,1,307,2),(2603,'T-Shirt S/SL VIET','2016-09-20 13:16:18','2016-09-20 13:16:18',1,1,307,4),(2604,'T-Shirt S/SL FRE','2016-09-20 13:16:18','2016-09-20 13:16:18',1,1,307,8),(2605,'T-Shirt S/SL JPN','2016-09-20 13:16:18','2016-09-20 13:16:18',1,1,307,12),(2606,'T-Shirt S/SL CA','2016-09-20 13:16:18','2016-09-20 13:16:18',1,1,307,15),(2607,'T-Shirt S/SL GER','2016-09-20 13:16:18','2016-09-20 13:16:18',1,1,307,17),(2608,'T-Shirt S/SL KOR','2016-09-20 13:16:18','2016-09-20 13:16:18',1,1,307,19),(2609,'T-Shirt Long Sleeve - TS','2016-09-20 13:33:57','2016-09-20 13:33:57',1,1,308,1),(2610,'','2016-09-20 13:33:57','2016-09-20 13:33:57',1,1,308,2),(2611,'','2016-09-20 13:33:57','2016-09-20 13:33:57',1,1,308,4),(2612,'','2016-09-20 13:33:57','2016-09-20 13:33:57',1,1,308,8),(2613,'','2016-09-20 13:33:57','2016-09-20 13:33:57',1,1,308,12),(2614,'','2016-09-20 13:33:57','2016-09-20 13:33:57',1,1,308,15),(2615,'','2016-09-20 13:33:57','2016-09-20 13:33:57',1,1,308,17),(2616,'','2016-09-20 13:33:57','2016-09-20 13:33:57',1,1,308,19);
/*!40000 ALTER TABLE `costing_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costing_version_description`
--

DROP TABLE IF EXISTS `costing_version_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costing_version_description` (
  `id_cost_version_desc` int(11) NOT NULL AUTO_INCREMENT,
  `cvd_description` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_cost_version` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cost_version_desc`),
  KEY `FK213DB4CB30B5C2E3` (`id_user_created`),
  KEY `FK213DB4CB64F051AF` (`id_cost_version`),
  KEY `FK213DB4CB7E351E17` (`id_language`),
  KEY `FK213DB4CBE56E24B6` (`id_user_updated`),
  CONSTRAINT `FK213DB4CB30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK213DB4CB64F051AF` FOREIGN KEY (`id_cost_version`) REFERENCES `costing_versions` (`id_cost_version`),
  CONSTRAINT `FK213DB4CB7E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK213DB4CBE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costing_version_description`
--

LOCK TABLES `costing_version_description` WRITE;
/*!40000 ALTER TABLE `costing_version_description` DISABLE KEYS */;
INSERT INTO `costing_version_description` VALUES (235,'T-Shirt S/SL','2016-09-19 10:26:24','2016-09-19 10:26:24',1,1,302,1),(236,'T-Shirt L/SL','2016-09-19 10:29:07','2016-09-19 10:29:07',1,1,303,1),(237,'2 sides print','2016-09-19 10:31:45','2016-09-19 10:31:45',1,1,304,1),(238,'full print','2016-09-19 10:33:13','2016-09-19 10:33:13',1,1,305,1),(239,'full print + No.','2016-09-19 10:35:44','2016-09-19 10:35:44',1,1,306,1),(255,'full print + No.','2016-09-20 13:34:37','2016-09-20 13:34:37',1,1,328,1);
/*!40000 ALTER TABLE `costing_version_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costing_versions`
--

DROP TABLE IF EXISTS `costing_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costing_versions` (
  `id_cost_version` int(11) NOT NULL AUTO_INCREMENT,
  `cv_version` float DEFAULT NULL,
  `cv_material_cost` varchar(255) DEFAULT NULL,
  `cv_process_cost` varchar(255) DEFAULT NULL,
  `cv_waste` float DEFAULT NULL,
  `cv_structure` varchar(255) DEFAULT NULL,
  `cv_margin` float DEFAULT NULL,
  `cv_fty_cost_0` decimal(10,0) DEFAULT NULL,
  `cv_weight` float DEFAULT NULL,
  `cv_volume` float DEFAULT NULL,
  `cv_sketch` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cost_version`),
  KEY `FKB64E3AA530B5C2E3` (`id_user_created`),
  KEY `FKB64E3AA5E56E24B6` (`id_user_updated`),
  KEY `FKB64E3AA59B7A0D66` (`id_cost`),
  CONSTRAINT `FKB64E3AA530B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKB64E3AA59B7A0D66` FOREIGN KEY (`id_cost`) REFERENCES `costing` (`id_cost`),
  CONSTRAINT `FKB64E3AA5E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costing_versions`
--

LOCK TABLES `costing_versions` WRITE;
/*!40000 ALTER TABLE `costing_versions` DISABLE KEYS */;
INSERT INTO `costing_versions` VALUES (302,1,NULL,NULL,5,NULL,20,8956200,0.15,0.7,'','2016-09-20 08:54:37','2016-09-20 08:54:37',1,1,278),(303,1,NULL,NULL,15,NULL,5,653200,0.15,0.7,'','2016-09-20 08:54:48','2016-09-20 08:54:48',1,1,279),(304,1,NULL,NULL,0.15,NULL,0.7,875000,0.15,0.7,'','2016-09-20 08:54:24','2016-09-20 08:54:24',1,1,280),(305,1,NULL,NULL,5,NULL,20,8652300,0.15,0.8,'','2016-09-20 08:53:57','2016-09-20 08:53:57',1,1,281),(306,1,NULL,NULL,5,NULL,20,5620000,0.15,0.7,'','2016-09-20 08:54:11','2016-09-20 08:54:11',1,1,282),(327,1,NULL,NULL,5,NULL,43,50000,3,4,'front-tshirt-vector-1357044144.jpg','2016-09-20 13:16:59','2016-09-20 13:16:59',1,1,307),(328,1,NULL,NULL,13,NULL,19,20000,16,12,'','2016-09-20 13:55:48','2016-09-20 13:55:48',1,1,308);
/*!40000 ALTER TABLE `costing_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id_currency` int(11) NOT NULL AUTO_INCREMENT,
  `curr_code` varchar(255) DEFAULT NULL,
  `curr_description` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_currency`),
  UNIQUE KEY `curr_code` (`curr_code`),
  KEY `FK224BF01130B5C2E3` (`id_user_created`),
  KEY `FK224BF011E56E24B6` (`id_user_updated`),
  CONSTRAINT `FK224BF01130B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK224BF011E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'USD','US Dollar','2016-06-14 16:07:20',NULL,NULL,NULL),(3,'VND','Vietnam Dong','2016-06-14 16:07:20',NULL,NULL,NULL),(6,'RUB','Ruby','2016-06-14 16:07:20',NULL,NULL,NULL),(16,'JPY','Yen','2016-06-14 16:07:20',NULL,NULL,NULL),(17,'GB','Pound','2016-06-14 16:07:20',NULL,NULL,NULL),(18,'EUR','Euro','2016-06-14 16:07:20',NULL,NULL,NULL);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_convert`
--

DROP TABLE IF EXISTS `currency_convert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_convert` (
  `id_curr_conv` int(11) NOT NULL AUTO_INCREMENT,
  `cc_date` date DEFAULT NULL,
  `cc_value` double DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_curr_conv`),
  KEY `FK6D2F138530B5C2E3` (`id_user_created`),
  KEY `FK6D2F1385C87A92C6` (`id_currency`),
  KEY `FK6D2F1385E56E24B6` (`id_user_updated`),
  CONSTRAINT `FK6D2F138530B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK6D2F1385C87A92C6` FOREIGN KEY (`id_currency`) REFERENCES `currency` (`id_currency`),
  CONSTRAINT `FK6D2F1385E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_convert`
--

LOCK TABLES `currency_convert` WRITE;
/*!40000 ALTER TABLE `currency_convert` DISABLE KEYS */;
INSERT INTO `currency_convert` VALUES (1,'2016-08-08',1,1,1,1),(2,'2016-08-08',22260,3,1,1),(3,'2016-08-08',0.91,18,1,1),(4,'2016-08-08',103.75,16,1,1),(5,'2016-08-08',70.86,6,1,1),(6,'2016-08-08',0.778,17,1,1),(7,'2016-08-10',1,1,1,1),(8,'2016-08-10',22270,3,1,1),(9,'2016-08-10',0.92,18,1,1),(10,'2016-08-10',104,16,1,1),(11,'2016-08-10',70.8,6,1,1),(12,'2016-08-10',0.78,17,1,1),(13,'2016-08-12',1,1,1,1),(14,'2016-08-12',22250,3,1,1),(15,'2016-08-12',0.9,18,1,1),(16,'2016-08-12',114.4,16,1,1),(17,'2016-08-12',71,6,1,1),(18,'2016-08-12',0.79,17,1,1),(25,'2016-08-15',1,1,1,1),(26,'2016-08-15',22250,3,1,1),(27,'2016-08-15',0.9,18,1,1),(28,'2016-08-15',114.4,16,1,1),(29,'2016-08-15',71,6,1,1),(30,'2016-08-15',0.79,17,1,1),(31,'2016-08-17',1,1,1,1),(32,'2016-08-17',22250,3,1,1),(33,'2016-08-17',0.9,18,1,1),(34,'2016-08-17',114.4,16,1,1),(35,'2016-08-17',71,6,1,1),(36,'2016-08-17',0.79,17,1,1),(37,'2016-08-18',1,1,1,1),(38,'2016-08-18',22250,3,1,1),(39,'2016-08-18',0.9,18,1,1),(40,'2016-08-18',114.4,16,1,1),(41,'2016-08-18',71,6,1,1),(42,'2016-08-18',0.79,17,1,1),(43,'2016-08-19',1,1,1,1),(44,'2016-08-19',22250,3,1,1),(45,'2016-08-19',0.9,18,1,1),(46,'2016-08-19',114.4,16,1,1),(47,'2016-08-19',71,6,1,1),(48,'2016-08-19',0.79,17,1,1),(49,'2016-08-20',1,1,1,1),(50,'2016-08-20',22250,3,1,1),(51,'2016-08-20',0.9,18,1,1),(52,'2016-08-20',114.4,16,1,1),(53,'2016-08-20',71,6,1,1),(54,'2016-08-20',0.79,17,1,1),(55,'2016-08-21',1,1,1,1),(56,'2016-08-21',22250,3,1,1),(57,'2016-08-21',0.9,18,1,1),(58,'2016-08-21',114.4,16,1,1),(59,'2016-08-21',71,6,1,1),(60,'2016-08-21',0.79,17,1,1),(61,'2016-08-22',1,1,1,1),(62,'2016-08-22',22250,3,1,1),(63,'2016-08-22',0.9,18,1,1),(64,'2016-08-22',114.4,16,1,1),(65,'2016-08-22',71,6,1,1),(66,'2016-08-22',0.79,17,1,1),(67,'2016-08-23',1,1,1,1),(68,'2016-08-23',22250,3,1,1),(69,'2016-08-23',0.9,18,1,1),(70,'2016-08-23',114.4,16,1,1),(71,'2016-08-23',71,6,1,1),(72,'2016-08-23',0.79,17,1,1),(73,'2016-08-24',1,1,1,1),(74,'2016-08-24',22250,3,1,1),(75,'2016-08-24',0.9,18,1,1),(76,'2016-08-24',114.4,16,1,1),(77,'2016-08-24',71,6,1,1),(78,'2016-08-24',0.79,17,1,1),(79,'2016-08-25',1,1,1,1),(80,'2016-08-25',22250,3,1,1),(81,'2016-08-25',0.9,18,1,1),(82,'2016-08-25',114.4,16,1,1),(83,'2016-08-25',71,6,1,1),(84,'2016-08-25',0.79,17,1,1);
/*!40000 ALTER TABLE `currency_convert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id_Customer` int(11) NOT NULL AUTO_INCREMENT,
  `cs_code` varchar(255) DEFAULT NULL,
  `cs_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_agent` int(11) DEFAULT NULL,
  `id_Zone` int(11) DEFAULT NULL,
  `id_type_customer` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Customer`),
  UNIQUE KEY `cs_code` (`cs_code`),
  KEY `FK24217FDE9F3A43F1` (`id_type_customer`),
  KEY `FK24217FDE30B5C2E3` (`id_user_created`),
  KEY `FK24217FDE62BFEBFC` (`id_Zone`),
  KEY `FK24217FDE7E351E17` (`id_language`),
  KEY `FK24217FDEE56E24B6` (`id_user_updated`),
  KEY `FK24217FDE1AD8B11C` (`id_contact`),
  KEY `FK24217FDEF27575E6` (`id_agent`),
  CONSTRAINT `FK24217FDE1AD8B11C` FOREIGN KEY (`id_contact`) REFERENCES `contact` (`id_contact`),
  CONSTRAINT `FK24217FDE30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK24217FDE62BFEBFC` FOREIGN KEY (`id_Zone`) REFERENCES `zone` (`id_Zone`),
  CONSTRAINT `FK24217FDE7E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK24217FDE9F3A43F1` FOREIGN KEY (`id_type_customer`) REFERENCES `type_of_customers` (`id_type_Customer`),
  CONSTRAINT `FK24217FDEE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK24217FDEF27575E6` FOREIGN KEY (`id_agent`) REFERENCES `agent` (`id_Agent`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'PEP','sell','2016-08-01 13:52:09','2016-09-09 15:39:55',1,1,4,2,1,1,28),(2,'BG','Bill Gates','2016-08-01 14:27:48','2016-08-01 14:27:48',4,4,1,1,1,1,16),(3,'TM','Thomas Mueller','2016-08-01 14:28:55','2016-08-01 14:28:55',4,4,17,1,1,1,17),(4,'TL','Tinh Loi Ltd','2016-08-01 16:51:31','2016-08-01 18:15:15',5,5,4,3,2,1,23),(5,NULL,'Rasia','2016-08-11 15:55:39','2016-08-11 15:55:39',7,7,1,2,1,1,41),(6,NULL,'Stavis','2016-08-12 09:34:13','2016-08-12 09:34:13',7,7,1,2,1,1,42),(7,NULL,'Stavis HCM','2016-08-12 11:36:37','2016-09-09 15:36:15',5,1,12,3,2,1,43),(8,NULL,'Alice','2016-08-15 09:01:48','2016-08-15 12:27:30',15,15,12,5,3,1,48),(9,NULL,'Alan','2016-08-15 12:27:58','2016-08-15 12:27:58',15,15,1,5,3,1,49);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factory`
--

DROP TABLE IF EXISTS `factory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factory` (
  `id_factory` int(11) NOT NULL AUTO_INCREMENT,
  `fty_code` varchar(255) DEFAULT NULL,
  `fty_description` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_factory`),
  KEY `FKBEEB310A30B5C2E3` (`id_user_created`),
  KEY `FKBEEB310A7E351E17` (`id_language`),
  KEY `FKBEEB310AC87A92C6` (`id_currency`),
  KEY `FKBEEB310AE56E24B6` (`id_user_updated`),
  KEY `FKBEEB310A1AD8B11C` (`id_contact`),
  CONSTRAINT `FKBEEB310A1AD8B11C` FOREIGN KEY (`id_contact`) REFERENCES `contact` (`id_contact`),
  CONSTRAINT `FKBEEB310A30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKBEEB310A7E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FKBEEB310AC87A92C6` FOREIGN KEY (`id_currency`) REFERENCES `currency` (`id_currency`),
  CONSTRAINT `FKBEEB310AE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factory`
--

LOCK TABLES `factory` WRITE;
/*!40000 ALTER TABLE `factory` DISABLE KEYS */;
INSERT INTO `factory` VALUES (1,'PEPSI','Pepsico is the largest company in the world','2016-08-01 13:06:04','2016-08-17 16:00:02',NULL,1,3,1,4);
/*!40000 ALTER TABLE `factory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forwarder`
--

DROP TABLE IF EXISTS `forwarder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forwarder` (
  `id_forwarder` int(11) NOT NULL AUTO_INCREMENT,
  `fw_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_forwarder`),
  KEY `FK7D0A023230B5C2E3` (`id_user_created`),
  KEY `FK7D0A0232E56E24B6` (`id_user_updated`),
  KEY `FK7D0A02321AD8B11C` (`id_contact`),
  CONSTRAINT `FK7D0A02321AD8B11C` FOREIGN KEY (`id_contact`) REFERENCES `contact` (`id_contact`),
  CONSTRAINT `FK7D0A023230B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK7D0A0232E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forwarder`
--

LOCK TABLES `forwarder` WRITE;
/*!40000 ALTER TABLE `forwarder` DISABLE KEYS */;
INSERT INTO `forwarder` VALUES (1,'dfgdfg','2016-08-01 18:24:33','2016-08-01 18:24:33',5,5,31),(2,'Forwarder 1','2016-08-01 18:25:07','2016-08-05 09:58:04',5,1,39),(3,'Forwarder 2','2016-08-01 18:25:25','2016-08-05 10:02:11',5,1,40),(4,'ewfwef','2016-09-12 10:26:07','2016-09-12 10:26:07',1,1,NULL),(5,'Forwarder 3','2016-09-12 10:31:13','2016-09-12 10:31:13',1,1,73);
/*!40000 ALTER TABLE `forwarder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freight`
--

DROP TABLE IF EXISTS `freight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freight` (
  `id_freight` int(11) NOT NULL AUTO_INCREMENT,
  `fr_description` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_freight`),
  KEY `FKDC04A34330B5C2E3` (`id_user_created`),
  KEY `FKDC04A343E56E24B6` (`id_user_updated`),
  CONSTRAINT `FKDC04A34330B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKDC04A343E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freight`
--

LOCK TABLES `freight` WRITE;
/*!40000 ALTER TABLE `freight` DISABLE KEYS */;
INSERT INTO `freight` VALUES (4,'Freight 1','2016-08-01 18:19:02','2016-08-05 10:56:43',6,1),(5,'Freight 2','2016-08-05 10:56:51','2016-08-05 10:56:51',1,1);
/*!40000 ALTER TABLE `freight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_materials`
--

DROP TABLE IF EXISTS `group_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_materials` (
  `Id_group_mat` int(11) NOT NULL AUTO_INCREMENT,
  `gm_code` varchar(255) DEFAULT NULL,
  `gm_order` varchar(255) DEFAULT NULL,
  `gm_description` varchar(255) DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_group_mat`),
  KEY `FK9EF45E6C2740CAF0` (`id_Factory`),
  CONSTRAINT `FK9EF45E6C2740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_materials`
--

LOCK TABLES `group_materials` WRITE;
/*!40000 ALTER TABLE `group_materials` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_of_products`
--

DROP TABLE IF EXISTS `group_of_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_of_products` (
  `id_group_products` int(11) NOT NULL AUTO_INCREMENT,
  `gp_code` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_group_products`),
  KEY `FKFA0A250C2740CAF0` (`id_Factory`),
  KEY `FKFA0A250C30B5C2E3` (`id_user_created`),
  KEY `FKFA0A250CE56E24B6` (`id_user_updated`),
  CONSTRAINT `FKFA0A250C2740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`),
  CONSTRAINT `FKFA0A250C30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKFA0A250CE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_of_products`
--

LOCK TABLES `group_of_products` WRITE;
/*!40000 ALTER TABLE `group_of_products` DISABLE KEYS */;
INSERT INTO `group_of_products` VALUES (1,'UP','2016-08-01 13:48:40','2016-08-01 13:48:40',1,1,1),(3,'TS','2016-08-01 17:12:35','2016-08-02 11:06:06',1,1,1),(5,'TP','2016-08-02 11:06:24','2016-08-02 11:06:24',1,1,1),(6,'TX','2016-08-02 11:06:44','2016-08-02 11:06:44',1,1,1),(7,'TT','2016-08-02 11:07:08','2016-08-02 11:07:08',1,1,1),(8,'SG','2016-08-02 11:07:19','2016-08-02 11:07:19',1,1,1),(9,'PS','2016-08-02 11:07:31','2016-09-08 10:12:38',1,1,1),(10,'PP','2016-08-02 11:07:44','2016-09-08 10:06:18',1,1,1),(11,'PL','2016-08-02 11:07:56','2016-08-02 11:07:56',1,1,1),(12,'PX','2016-08-02 11:08:11','2016-09-08 10:20:05',1,1,1),(13,'SW','2016-08-02 11:08:21','2016-08-02 11:08:21',1,1,1),(14,'SH','2016-08-02 11:08:34','2016-08-02 11:08:34',1,1,1),(15,'JK','2016-08-02 11:08:45','2016-09-08 10:04:34',1,1,1),(16,'JH','2016-08-02 11:09:08','2016-09-08 11:09:20',1,1,1),(17,'CT','2016-08-02 11:09:34','2016-09-08 11:09:13',1,1,1),(18,'MX','2016-08-02 11:09:50','2016-08-02 11:09:50',1,1,1),(19,'B','2016-08-02 11:10:05','2016-09-08 10:05:09',1,1,1),(20,'BB','2016-08-02 11:10:16','2016-09-08 11:14:29',1,1,1),(21,'WS','2016-08-02 11:10:29','2016-08-02 11:10:29',1,1,1),(23,'DD','2016-08-16 13:15:46','2016-08-16 13:15:46',1,1,1),(24,'RTT','2016-08-16 14:13:58','2016-08-16 14:15:26',1,1,1),(25,'UUUU','2016-08-16 14:26:18','2016-08-16 14:26:18',1,1,1),(26,'YYYY','2016-08-16 14:26:35','2016-08-16 14:26:35',1,1,1),(27,'ABC','2016-08-16 14:31:33','2016-09-19 14:25:41',1,1,1),(28,'XP','2016-08-16 17:51:00','2016-08-16 17:51:00',1,1,1),(29,'XS','2016-08-16 17:54:01','2016-08-16 17:54:01',1,1,1),(30,'TTT','2016-08-18 15:50:59','2016-08-18 15:50:59',1,1,1),(31,'UUUUU','2016-08-18 15:53:18','2016-08-18 15:53:18',1,1,1),(32,'SDFSDF','2016-08-18 16:08:55','2016-08-18 16:08:55',1,1,1),(33,'SDFSDFFF','2016-08-18 16:11:47','2016-08-18 16:11:47',1,1,1),(34,'RWEREWR','2016-08-18 16:12:13','2016-08-18 16:12:13',1,1,1),(35,'WERWER','2016-08-18 16:12:22','2016-08-18 16:12:22',1,1,1);
/*!40000 ALTER TABLE `group_of_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_product_language`
--

DROP TABLE IF EXISTS `group_product_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_product_language` (
  `id_group_language` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_group_language`),
  KEY `FK55D26E6830B5C2E3` (`id_user_created`),
  KEY `FK55D26E687E351E17` (`id_language`),
  KEY `FK55D26E68E56E24B6` (`id_user_updated`),
  KEY `FK55D26E68E7520B67` (`id_group`),
  CONSTRAINT `FK55D26E6830B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK55D26E687E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK55D26E68E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK55D26E68E7520B67` FOREIGN KEY (`id_group`) REFERENCES `group_of_products` (`id_group_products`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_product_language`
--

LOCK TABLES `group_product_language` WRITE;
/*!40000 ALTER TABLE `group_product_language` DISABLE KEYS */;
INSERT INTO `group_product_language` VALUES (1,'Shirt','2016-08-01 13:48:40','2016-08-01 13:48:40',1,1,1,1),(2,'','2016-08-01 13:48:40','2016-08-01 13:48:40',1,1,1,2),(3,'','2016-08-01 13:48:40','2016-08-01 13:48:40',1,1,1,4),(4,'','2016-08-01 13:48:40','2016-08-01 13:48:40',1,1,1,8),(5,'','2016-08-01 13:48:40','2016-08-01 13:48:40',1,1,1,12),(6,'','2016-08-01 13:48:40','2016-08-01 13:48:40',1,1,1,15),(7,'','2016-08-01 13:48:40','2016-08-01 13:48:40',1,1,1,17),(8,'','2016-08-01 13:48:40','2016-08-01 13:48:40',1,1,1,19),(17,'T-Shirt','2016-08-01 17:12:35','2016-08-02 11:06:06',1,1,3,1),(18,'','2016-08-01 17:12:35','2016-08-02 11:06:06',1,1,3,2),(19,'','2016-08-01 17:12:35','2016-08-02 11:06:06',1,1,3,4),(20,'','2016-08-01 17:12:35','2016-08-02 11:06:06',1,1,3,8),(21,'','2016-08-01 17:12:35','2016-08-02 11:06:06',1,1,3,12),(22,'','2016-08-01 17:12:35','2016-08-02 11:06:06',1,1,3,15),(23,'','2016-08-01 17:12:35','2016-08-02 11:06:06',1,1,3,17),(24,'','2016-08-01 17:12:35','2016-08-02 11:06:06',1,1,3,19),(33,'Polo','2016-08-02 11:06:24','2016-08-02 11:06:24',1,1,5,1),(34,'','2016-08-02 11:06:24','2016-08-02 11:06:24',1,1,5,2),(35,'','2016-08-02 11:06:24','2016-08-02 11:06:24',1,1,5,4),(36,'','2016-08-02 11:06:24','2016-08-02 11:06:24',1,1,5,8),(37,'','2016-08-02 11:06:24','2016-08-02 11:06:24',1,1,5,12),(38,'','2016-08-02 11:06:24','2016-08-02 11:06:24',1,1,5,15),(39,'','2016-08-02 11:06:24','2016-08-02 11:06:24',1,1,5,17),(40,'','2016-08-02 11:06:24','2016-08-02 11:06:24',1,1,5,19),(41,'T-Shirt Spandex','2016-08-02 11:06:44','2016-08-02 11:06:44',1,1,6,1),(42,'','2016-08-02 11:06:44','2016-08-02 11:06:44',1,1,6,2),(43,'','2016-08-02 11:06:44','2016-08-02 11:06:44',1,1,6,4),(44,'','2016-08-02 11:06:44','2016-08-02 11:06:44',1,1,6,8),(45,'','2016-08-02 11:06:44','2016-08-02 11:06:44',1,1,6,12),(46,'','2016-08-02 11:06:44','2016-08-02 11:06:44',1,1,6,15),(47,'','2016-08-02 11:06:44','2016-08-02 11:06:44',1,1,6,17),(48,'','2016-08-02 11:06:44','2016-08-02 11:06:44',1,1,6,19),(49,'Tank Top','2016-08-02 11:07:08','2016-08-02 11:07:08',1,1,7,1),(50,'','2016-08-02 11:07:08','2016-08-02 11:07:08',1,1,7,2),(51,'','2016-08-02 11:07:08','2016-08-02 11:07:08',1,1,7,4),(52,'','2016-08-02 11:07:08','2016-08-02 11:07:08',1,1,7,8),(53,'','2016-08-02 11:07:08','2016-08-02 11:07:08',1,1,7,12),(54,'','2016-08-02 11:07:08','2016-08-02 11:07:08',1,1,7,15),(55,'','2016-08-02 11:07:08','2016-08-02 11:07:08',1,1,7,17),(56,'','2016-08-02 11:07:08','2016-08-02 11:07:08',1,1,7,19),(57,'Singlet','2016-08-02 11:07:19','2016-08-02 11:07:19',1,1,8,1),(58,'','2016-08-02 11:07:19','2016-08-02 11:07:19',1,1,8,2),(59,'','2016-08-02 11:07:19','2016-08-02 11:07:19',1,1,8,4),(60,'','2016-08-02 11:07:19','2016-08-02 11:07:19',1,1,8,8),(61,'','2016-08-02 11:07:19','2016-08-02 11:07:19',1,1,8,12),(62,'','2016-08-02 11:07:19','2016-08-02 11:07:19',1,1,8,15),(63,'','2016-08-02 11:07:19','2016-08-02 11:07:19',1,1,8,17),(64,'','2016-08-02 11:07:19','2016-08-02 11:07:19',1,1,8,19),(65,'Jacket','2016-08-02 11:07:31','2016-09-08 10:12:38',1,1,9,1),(66,'Pant Short','2016-08-02 11:07:31','2016-09-08 10:12:38',1,1,9,2),(67,'Pant Short','2016-08-02 11:07:31','2016-09-08 10:12:38',1,1,9,4),(68,'Pant Short','2016-08-02 11:07:31','2016-09-08 10:12:38',1,1,9,8),(69,'Pant Short','2016-08-02 11:07:31','2016-09-08 10:12:38',1,1,9,12),(70,'Pant Short','2016-08-02 11:07:31','2016-09-08 10:12:38',1,1,9,15),(71,'Pant Short','2016-08-02 11:07:31','2016-09-08 10:12:38',1,1,9,17),(72,'Pant Short','2016-08-02 11:07:31','2016-09-08 10:12:38',1,1,9,19),(73,'jacket','2016-08-02 11:07:44','2016-09-08 10:06:18',1,1,10,1),(74,'jacket','2016-08-02 11:07:44','2016-09-08 10:06:18',1,1,10,2),(75,'jacket','2016-08-02 11:07:44','2016-09-08 10:06:18',1,1,10,4),(76,'jacket','2016-08-02 11:07:44','2016-09-08 10:06:18',1,1,10,8),(77,'jacket','2016-08-02 11:07:44','2016-09-08 10:06:18',1,1,10,12),(78,'jacket','2016-08-02 11:07:44','2016-09-08 10:06:18',1,1,10,15),(79,'jacket','2016-08-02 11:07:44','2016-09-08 10:06:18',1,1,10,17),(80,'jacket','2016-08-02 11:07:44','2016-09-08 10:06:18',1,1,10,19),(81,'Pant Long','2016-08-02 11:07:56','2016-08-02 11:07:56',1,1,11,1),(82,'','2016-08-02 11:07:56','2016-08-02 11:07:56',1,1,11,2),(83,'','2016-08-02 11:07:56','2016-08-02 11:07:56',1,1,11,4),(84,'','2016-08-02 11:07:56','2016-08-02 11:07:56',1,1,11,8),(85,'','2016-08-02 11:07:56','2016-08-02 11:07:56',1,1,11,12),(86,'','2016-08-02 11:07:56','2016-08-02 11:07:56',1,1,11,15),(87,'','2016-08-02 11:07:56','2016-08-02 11:07:56',1,1,11,17),(88,'','2016-08-02 11:07:56','2016-08-02 11:07:56',1,1,11,19),(89,'Pant SPANDEX','2016-08-02 11:08:11','2016-09-08 10:20:05',1,1,12,1),(90,'Pant SPANDEX','2016-08-02 11:08:11','2016-09-08 10:20:05',1,1,12,2),(91,'Pant SPANDEX','2016-08-02 11:08:11','2016-09-08 10:20:05',1,1,12,4),(92,'Pant SPANDEX','2016-08-02 11:08:11','2016-09-08 10:20:05',1,1,12,8),(93,'Pant SPANDEX','2016-08-02 11:08:11','2016-09-08 10:20:05',1,1,12,12),(94,'Pant SPANDEX','2016-08-02 11:08:11','2016-09-08 10:20:05',1,1,12,15),(95,'Pant SPANDEX','2016-08-02 11:08:11','2016-09-08 10:20:05',1,1,12,17),(96,'Pant SPANDEX','2016-08-02 11:08:11','2016-09-08 10:20:05',1,1,12,19),(97,'Sweater','2016-08-02 11:08:21','2016-08-02 11:08:21',1,1,13,1),(98,'','2016-08-02 11:08:21','2016-08-02 11:08:21',1,1,13,2),(99,'','2016-08-02 11:08:21','2016-08-02 11:08:21',1,1,13,4),(100,'','2016-08-02 11:08:21','2016-08-02 11:08:21',1,1,13,8),(101,'','2016-08-02 11:08:21','2016-08-02 11:08:21',1,1,13,12),(102,'','2016-08-02 11:08:21','2016-08-02 11:08:21',1,1,13,15),(103,'','2016-08-02 11:08:21','2016-08-02 11:08:21',1,1,13,17),(104,'','2016-08-02 11:08:21','2016-08-02 11:08:21',1,1,13,19),(105,'Sweater Hoodie','2016-08-02 11:08:34','2016-08-02 11:08:34',1,1,14,1),(106,'','2016-08-02 11:08:34','2016-08-02 11:08:34',1,1,14,2),(107,'','2016-08-02 11:08:34','2016-08-02 11:08:34',1,1,14,4),(108,'','2016-08-02 11:08:34','2016-08-02 11:08:34',1,1,14,8),(109,'','2016-08-02 11:08:34','2016-08-02 11:08:34',1,1,14,12),(110,'','2016-08-02 11:08:34','2016-08-02 11:08:34',1,1,14,15),(111,'','2016-08-02 11:08:34','2016-08-02 11:08:34',1,1,14,17),(112,'','2016-08-02 11:08:34','2016-08-02 11:08:34',1,1,14,19),(113,'jacket','2016-08-02 11:08:45','2016-09-08 10:04:34',1,1,15,1),(114,'jacket','2016-08-02 11:08:45','2016-09-08 10:04:34',1,1,15,2),(115,'jacket','2016-08-02 11:08:45','2016-09-08 10:04:34',1,1,15,4),(116,'jacket','2016-08-02 11:08:45','2016-09-08 10:04:34',1,1,15,8),(117,'jacket','2016-08-02 11:08:45','2016-09-08 10:04:34',1,1,15,12),(118,'jacket','2016-08-02 11:08:45','2016-09-08 10:04:34',1,1,15,15),(119,'jacket','2016-08-02 11:08:45','2016-09-08 10:04:34',1,1,15,17),(120,'jacket','2016-08-02 11:08:45','2016-09-08 10:04:34',1,1,15,19),(121,'Jacket Hoodie','2016-08-02 11:09:08','2016-09-08 11:09:20',1,1,16,1),(122,'Jacket Hoodie','2016-08-02 11:09:08','2016-09-08 11:09:20',1,1,16,2),(123,'Jacket Hoodie','2016-08-02 11:09:08','2016-09-08 11:09:20',1,1,16,4),(124,'Jacket Hoodie','2016-08-02 11:09:08','2016-09-08 11:09:20',1,1,16,8),(125,'Jacket Hoodie','2016-08-02 11:09:08','2016-09-08 11:09:20',1,1,16,12),(126,'Jacket Hoodie','2016-08-02 11:09:08','2016-09-08 11:09:20',1,1,16,15),(127,'htyhtyhtyhd','2016-08-02 11:09:08','2016-09-08 11:09:20',1,1,16,17),(128,'Jacket Hoodie','2016-08-02 11:09:08','2016-09-08 11:09:20',1,1,16,19),(129,'Coat','2016-08-02 11:09:34','2016-09-08 11:09:13',1,1,17,1),(130,'ugjfhdhd','2016-08-02 11:09:34','2016-09-08 11:09:13',1,1,17,2),(131,'tt','2016-08-02 11:09:34','2016-09-08 11:09:13',1,1,17,4),(132,'rr','2016-08-02 11:09:34','2016-09-08 11:09:13',1,1,17,8),(133,'de','2016-08-02 11:09:34','2016-09-08 11:09:13',1,1,17,12),(134,'Coat','2016-08-02 11:09:34','2016-09-08 11:09:13',1,1,17,15),(135,'Coat','2016-08-02 11:09:34','2016-09-08 11:09:13',1,1,17,17),(136,'Coat','2016-08-02 11:09:34','2016-09-08 11:09:13',1,1,17,19),(137,'Skinsuits','2016-08-02 11:09:50','2016-08-02 11:09:50',1,1,18,1),(138,'','2016-08-02 11:09:50','2016-08-02 11:09:50',1,1,18,2),(139,'','2016-08-02 11:09:50','2016-08-02 11:09:50',1,1,18,4),(140,'','2016-08-02 11:09:50','2016-08-02 11:09:50',1,1,18,8),(141,'','2016-08-02 11:09:50','2016-08-02 11:09:50',1,1,18,12),(142,'','2016-08-02 11:09:50','2016-08-02 11:09:50',1,1,18,15),(143,'','2016-08-02 11:09:50','2016-08-02 11:09:50',1,1,18,17),(144,'','2016-08-02 11:09:50','2016-08-02 11:09:50',1,1,18,19),(145,'action','2016-08-02 11:10:05','2016-09-08 10:05:09',1,1,19,1),(146,'action','2016-08-02 11:10:05','2016-09-08 10:05:09',1,1,19,2),(147,'action','2016-08-02 11:10:05','2016-09-08 10:05:09',1,1,19,4),(148,'action','2016-08-02 11:10:05','2016-09-08 10:05:09',1,1,19,8),(149,'action','2016-08-02 11:10:05','2016-09-08 10:05:09',1,1,19,12),(150,'action','2016-08-02 11:10:05','2016-09-08 10:05:09',1,1,19,15),(151,'action','2016-08-02 11:10:05','2016-09-08 10:05:09',1,1,19,17),(152,'action','2016-08-02 11:10:05','2016-09-08 10:05:09',1,1,19,19),(153,'jacket','2016-08-02 11:10:16','2016-09-08 11:14:29',1,1,20,1),(154,'','2016-08-02 11:10:16','2016-09-08 11:14:29',1,1,20,2),(155,'','2016-08-02 11:10:16','2016-09-08 11:14:29',1,1,20,4),(156,'','2016-08-02 11:10:16','2016-09-08 11:14:29',1,1,20,8),(157,'','2016-08-02 11:10:16','2016-09-08 11:14:29',1,1,20,12),(158,'','2016-08-02 11:10:16','2016-09-08 11:14:29',1,1,20,15),(159,'','2016-08-02 11:10:16','2016-09-08 11:14:29',1,1,20,17),(160,'','2016-08-02 11:10:16','2016-09-08 11:14:29',1,1,20,19),(161,'Windstoppers','2016-08-02 11:10:29','2016-08-02 11:10:29',1,1,21,1),(162,'','2016-08-02 11:10:29','2016-08-02 11:10:29',1,1,21,2),(163,'','2016-08-02 11:10:29','2016-08-02 11:10:29',1,1,21,4),(164,'','2016-08-02 11:10:29','2016-08-02 11:10:29',1,1,21,8),(165,'','2016-08-02 11:10:29','2016-08-02 11:10:29',1,1,21,12),(166,'','2016-08-02 11:10:29','2016-08-02 11:10:29',1,1,21,15),(167,'','2016-08-02 11:10:29','2016-08-02 11:10:29',1,1,21,17),(168,'','2016-08-02 11:10:29','2016-08-02 11:10:29',1,1,21,19),(177,'e','2016-08-16 13:15:46','2016-08-16 13:15:46',1,1,23,1),(178,'r','2016-08-16 13:15:46','2016-08-16 13:15:46',1,1,23,2),(179,'t','2016-08-16 13:15:46','2016-08-16 13:15:46',1,1,23,4),(180,'y','2016-08-16 13:15:46','2016-08-16 13:15:46',1,1,23,8),(181,'u','2016-08-16 13:15:46','2016-08-16 13:15:46',1,1,23,12),(182,'i','2016-08-16 13:15:46','2016-08-16 13:15:46',1,1,23,15),(183,'o','2016-08-16 13:15:46','2016-08-16 13:15:46',1,1,23,17),(184,'p','2016-08-16 13:15:46','2016-08-16 13:15:46',1,1,23,19),(185,'English','2016-08-16 14:13:58','2016-08-16 14:15:26',1,1,24,1),(186,'','2016-08-16 14:13:58','2016-08-16 14:15:26',1,1,24,2),(187,'','2016-08-16 14:13:58','2016-08-16 14:15:26',1,1,24,4),(188,'','2016-08-16 14:13:58','2016-08-16 14:15:26',1,1,24,8),(189,'','2016-08-16 14:13:58','2016-08-16 14:15:26',1,1,24,12),(190,'','2016-08-16 14:13:58','2016-08-16 14:15:26',1,1,24,15),(191,'','2016-08-16 14:13:58','2016-08-16 14:15:26',1,1,24,17),(192,'','2016-08-16 14:13:58','2016-08-16 14:15:26',1,1,24,19),(193,'english','2016-08-16 14:26:18','2016-08-16 14:26:18',1,1,25,1),(194,'english','2016-08-16 14:26:18','2016-08-16 14:26:18',1,1,25,2),(195,'english','2016-08-16 14:26:18','2016-08-16 14:26:18',1,1,25,4),(196,'english','2016-08-16 14:26:18','2016-08-16 14:26:18',1,1,25,8),(197,'english','2016-08-16 14:26:18','2016-08-16 14:26:18',1,1,25,12),(198,'english','2016-08-16 14:26:18','2016-08-16 14:26:18',1,1,25,15),(199,'english','2016-08-16 14:26:18','2016-08-16 14:26:18',1,1,25,17),(200,'english','2016-08-16 14:26:18','2016-08-16 14:26:18',1,1,25,19),(201,'englist','2016-08-16 14:26:35','2016-08-16 14:26:35',1,1,26,1),(202,'englist','2016-08-16 14:26:35','2016-08-16 14:26:35',1,1,26,2),(203,'englist','2016-08-16 14:26:35','2016-08-16 14:26:35',1,1,26,4),(204,'englist','2016-08-16 14:26:35','2016-08-16 14:26:35',1,1,26,8),(205,'englist','2016-08-16 14:26:35','2016-08-16 14:26:35',1,1,26,12),(206,'englist','2016-08-16 14:26:35','2016-08-16 14:26:35',1,1,26,15),(207,'englist','2016-08-16 14:26:35','2016-08-16 14:26:35',1,1,26,17),(208,'englist','2016-08-16 14:26:35','2016-08-16 14:26:35',1,1,26,19),(209,'f','2016-08-16 14:31:33','2016-09-19 14:25:41',1,1,27,1),(210,'f','2016-08-16 14:31:33','2016-09-19 14:25:41',1,1,27,2),(211,'theh','2016-08-16 14:31:33','2016-09-19 14:25:41',1,1,27,4),(212,'sfsg','2016-08-16 14:31:33','2016-09-19 14:25:41',1,1,27,8),(213,'sgsrg','2016-08-16 14:31:33','2016-09-19 14:25:41',1,1,27,12),(214,'srg','2016-08-16 14:31:33','2016-09-19 14:25:41',1,1,27,15),(215,'hhhy','2016-08-16 14:31:33','2016-09-19 14:25:41',1,1,27,17),(216,'f','2016-08-16 14:31:33','2016-09-19 14:25:41',1,1,27,19),(217,'Xenon Pales','2016-08-16 17:51:00','2016-08-16 17:51:00',1,1,28,1),(218,'','2016-08-16 17:51:00','2016-08-16 17:51:00',1,1,28,2),(219,'','2016-08-16 17:51:00','2016-08-16 17:51:00',1,1,28,4),(220,'','2016-08-16 17:51:00','2016-08-16 17:51:00',1,1,28,8),(221,'','2016-08-16 17:51:00','2016-08-16 17:51:00',1,1,28,12),(222,'','2016-08-16 17:51:00','2016-08-16 17:51:00',1,1,28,15),(223,'','2016-08-16 17:51:00','2016-08-16 17:51:00',1,1,28,17),(224,'','2016-08-16 17:51:00','2016-08-16 17:51:00',1,1,28,19),(225,'Xeno Shield','2016-08-16 17:54:01','2016-08-16 17:54:01',1,1,29,1),(226,'Xeno Shield','2016-08-16 17:54:01','2016-08-16 17:54:01',1,1,29,2),(227,'Xeno Shield','2016-08-16 17:54:01','2016-08-16 17:54:01',1,1,29,4),(228,'Xeno Shield','2016-08-16 17:54:01','2016-08-16 17:54:01',1,1,29,8),(229,'Xeno Shield','2016-08-16 17:54:01','2016-08-16 17:54:01',1,1,29,12),(230,'Xeno Shield','2016-08-16 17:54:01','2016-08-16 17:54:01',1,1,29,15),(231,'Xeno Shield','2016-08-16 17:54:01','2016-08-16 17:54:01',1,1,29,17),(232,'Xeno Shield','2016-08-16 17:54:01','2016-08-16 17:54:01',1,1,29,19),(233,'t','2016-08-18 15:50:59','2016-08-18 15:50:59',1,1,30,1),(234,'t','2016-08-18 15:50:59','2016-08-18 15:50:59',1,1,30,2),(235,'t','2016-08-18 15:50:59','2016-08-18 15:50:59',1,1,30,4),(236,'t','2016-08-18 15:50:59','2016-08-18 15:50:59',1,1,30,8),(237,'t','2016-08-18 15:50:59','2016-08-18 15:50:59',1,1,30,12),(238,'t','2016-08-18 15:50:59','2016-08-18 15:50:59',1,1,30,15),(239,'t','2016-08-18 15:50:59','2016-08-18 15:50:59',1,1,30,17),(240,'t','2016-08-18 15:50:59','2016-08-18 15:50:59',1,1,30,19),(241,'uuu','2016-08-18 15:53:18','2016-08-18 15:53:18',1,1,31,1),(242,'','2016-08-18 15:53:18','2016-08-18 15:53:18',1,1,31,2),(243,'','2016-08-18 15:53:18','2016-08-18 15:53:18',1,1,31,4),(244,'','2016-08-18 15:53:18','2016-08-18 15:53:18',1,1,31,8),(245,'','2016-08-18 15:53:18','2016-08-18 15:53:18',1,1,31,12),(246,'','2016-08-18 15:53:18','2016-08-18 15:53:18',1,1,31,15),(247,'','2016-08-18 15:53:18','2016-08-18 15:53:18',1,1,31,17),(248,'','2016-08-18 15:53:18','2016-08-18 15:53:18',1,1,31,19),(249,'sdfsdf','2016-08-18 16:08:55','2016-08-18 16:08:55',1,1,32,1),(250,'','2016-08-18 16:08:55','2016-08-18 16:08:55',1,1,32,2),(251,'','2016-08-18 16:08:55','2016-08-18 16:08:55',1,1,32,4),(252,'','2016-08-18 16:08:55','2016-08-18 16:08:55',1,1,32,8),(253,'','2016-08-18 16:08:55','2016-08-18 16:08:55',1,1,32,12),(254,'','2016-08-18 16:08:55','2016-08-18 16:08:55',1,1,32,15),(255,'','2016-08-18 16:08:55','2016-08-18 16:08:55',1,1,32,17),(256,'','2016-08-18 16:08:55','2016-08-18 16:08:55',1,1,32,19),(257,'sdfsdf','2016-08-18 16:11:47','2016-08-18 16:11:47',1,1,33,1),(258,'sdfsdf','2016-08-18 16:11:47','2016-08-18 16:11:47',1,1,33,2),(259,'','2016-08-18 16:11:47','2016-08-18 16:11:47',1,1,33,4),(260,'','2016-08-18 16:11:47','2016-08-18 16:11:47',1,1,33,8),(261,'','2016-08-18 16:11:47','2016-08-18 16:11:47',1,1,33,12),(262,'','2016-08-18 16:11:47','2016-08-18 16:11:47',1,1,33,15),(263,'','2016-08-18 16:11:47','2016-08-18 16:11:47',1,1,33,17),(264,'','2016-08-18 16:11:47','2016-08-18 16:11:47',1,1,33,19),(265,'werw','2016-08-18 16:12:13','2016-08-18 16:12:13',1,1,34,1),(266,'','2016-08-18 16:12:13','2016-08-18 16:12:13',1,1,34,2),(267,'','2016-08-18 16:12:13','2016-08-18 16:12:13',1,1,34,4),(268,'','2016-08-18 16:12:13','2016-08-18 16:12:13',1,1,34,8),(269,'','2016-08-18 16:12:13','2016-08-18 16:12:13',1,1,34,12),(270,'','2016-08-18 16:12:13','2016-08-18 16:12:13',1,1,34,15),(271,'','2016-08-18 16:12:13','2016-08-18 16:12:13',1,1,34,17),(272,'','2016-08-18 16:12:13','2016-08-18 16:12:13',1,1,34,19),(273,'wer','2016-08-18 16:12:22','2016-08-18 16:12:22',1,1,35,1),(274,'wer','2016-08-18 16:12:22','2016-08-18 16:12:22',1,1,35,2),(275,'wer','2016-08-18 16:12:22','2016-08-18 16:12:22',1,1,35,4),(276,'wer','2016-08-18 16:12:22','2016-08-18 16:12:22',1,1,35,8),(277,'wer','2016-08-18 16:12:22','2016-08-18 16:12:22',1,1,35,12),(278,'wer','2016-08-18 16:12:22','2016-08-18 16:12:22',1,1,35,15),(279,'wer','2016-08-18 16:12:22','2016-08-18 16:12:22',1,1,35,17),(280,'wer','2016-08-18 16:12:22','2016-08-18 16:12:22',1,1,35,19);
/*!40000 ALTER TABLE `group_product_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incoterm`
--

DROP TABLE IF EXISTS `incoterm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incoterm` (
  `id_incoterm` int(11) NOT NULL AUTO_INCREMENT,
  `ict_code` varchar(255) DEFAULT NULL,
  `ict_description` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_incoterm`),
  KEY `FK58B183D30B5C2E3` (`id_user_created`),
  KEY `FK58B183DE56E24B6` (`id_user_updated`),
  CONSTRAINT `FK58B183D30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK58B183DE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incoterm`
--

LOCK TABLES `incoterm` WRITE;
/*!40000 ALTER TABLE `incoterm` DISABLE KEYS */;
/*!40000 ALTER TABLE `incoterm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id_language` int(11) NOT NULL AUTO_INCREMENT,
  `lg_code` varchar(255) DEFAULT NULL,
  `lg_name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_language`),
  UNIQUE KEY `lg_code` (`lg_code`),
  KEY `FK5A7FD81B30B5C2E3` (`id_user_created`),
  KEY `FK5A7FD81BE56E24B6` (`id_user_updated`),
  CONSTRAINT `FK5A7FD81B30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK5A7FD81BE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'ENG','English','2016-06-14 16:07:20',NULL,NULL,NULL),(2,'ES','Spanish','2016-06-14 16:07:20',NULL,NULL,NULL),(4,'VIET','Vietnamese','2016-06-14 16:07:20',NULL,NULL,NULL),(8,'FRE','French','2016-06-14 16:07:20',NULL,NULL,NULL),(12,'JPN','Japanese','2016-06-14 16:07:20',NULL,NULL,NULL),(15,'CA','Catalan','2016-06-14 16:07:20','2016-08-01 18:13:09',NULL,6),(17,'GER','German','2016-06-14 16:07:20',NULL,NULL,NULL),(19,'KOR','Korean','2016-06-14 16:07:20','2016-07-29 17:03:48',NULL,NULL);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
  `Id_mat` int(11) NOT NULL AUTO_INCREMENT,
  `mat_code` varchar(255) DEFAULT NULL,
  `mat_description` varchar(255) DEFAULT NULL,
  `id_unit` varchar(255) DEFAULT NULL,
  `mat_price` varchar(255) DEFAULT NULL,
  `mat_date` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_group_mat` int(11) DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_mat`),
  KEY `FK2899402C2740CAF0` (`id_Factory`),
  KEY `FK2899402C30B5C2E3` (`id_user_created`),
  KEY `FK2899402C3F0873E8` (`id_group_mat`),
  KEY `FK2899402CE56E24B6` (`id_user_updated`),
  CONSTRAINT `FK2899402C2740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`),
  CONSTRAINT `FK2899402C30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK2899402C3F0873E8` FOREIGN KEY (`id_group_mat`) REFERENCES `group_materials` (`Id_group_mat`),
  CONSTRAINT `FK2899402CE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_condition`
--

DROP TABLE IF EXISTS `order_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_condition` (
  `id_order_condition` int(11) NOT NULL AUTO_INCREMENT,
  `oc_description` longtext,
  PRIMARY KEY (`id_order_condition`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_condition`
--

LOCK TABLES `order_condition` WRITE;
/*!40000 ALTER TABLE `order_condition` DISABLE KEYS */;
INSERT INTO `order_condition` VALUES (1,'Direct'),(2,'Agent'),(3,'Dealer');
/*!40000 ALTER TABLE `order_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id_order_det` int(11) NOT NULL AUTO_INCREMENT,
  `ordd_cg_name` varchar(255) DEFAULT NULL,
  `ordd_line` varchar(255) DEFAULT NULL,
  `ordd_name` varchar(255) DEFAULT NULL,
  `ordd_number` varchar(255) DEFAULT NULL,
  `ordd_qtty` double DEFAULT NULL,
  `ordd_fty_pr` double DEFAULT NULL,
  `ordd_zone_pr` double DEFAULT NULL,
  `ordd_ag_pr` double DEFAULT NULL,
  `ordd_fty_tot` double DEFAULT NULL,
  `ordd_zone_tot` double DEFAULT NULL,
  `ordd_ag_tot` double DEFAULT NULL,
  `ordd_del_fty` double DEFAULT NULL,
  `ordd_del_zone` double DEFAULT NULL,
  `ordd_del_ag` double DEFAULT NULL,
  `id_size_det` int(11) DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `ordd_rcv_zone` double DEFAULT NULL,
  `ordd_rcv_ag` double DEFAULT NULL,
  `ordd_rcv_cs` double DEFAULT NULL,
  `ordd_rcv_pr` double DEFAULT NULL,
  `ordd_size_custom` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_order_det`),
  KEY `FK521CF251B197DA0F` (`id_order`),
  KEY `FK521CF251848602BA` (`id_product`),
  KEY `FK521CF251DD39650E` (`id_size_det`),
  CONSTRAINT `FK521CF251848602BA` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`),
  CONSTRAINT `FK521CF251B197DA0F` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`),
  CONSTRAINT `FK521CF251DD39650E` FOREIGN KEY (`id_size_det`) REFERENCES `sizes_details` (`id_size_det`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_status` (
  `id_order_status` int(11) NOT NULL AUTO_INCREMENT,
  `os_description` longtext,
  PRIMARY KEY (`id_order_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'On delivery'),(2,'Delivered'),(3,'Open');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_type`
--

DROP TABLE IF EXISTS `order_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_type` (
  `id_order_type` int(11) NOT NULL AUTO_INCREMENT,
  `ot_description` longtext,
  PRIMARY KEY (`id_order_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_type`
--

LOCK TABLES `order_type` WRITE;
/*!40000 ALTER TABLE `order_type` DISABLE KEYS */;
INSERT INTO `order_type` VALUES (1,'Regular'),(2,'Reposition'),(3,'Samples');
/*!40000 ALTER TABLE `order_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `ord_date` datetime DEFAULT NULL,
  `ord_description` longtext,
  `ord_units` double DEFAULT NULL,
  `ord_fty_del_date` datetime DEFAULT NULL,
  `ord_fty_delivered` double DEFAULT NULL,
  `ord_fty_value` double DEFAULT NULL,
  `ord_fty_confirm` datetime DEFAULT NULL,
  `ord_zone_del_date` datetime DEFAULT NULL,
  `ord_zone_delivered` double DEFAULT NULL,
  `ord_zone_value` double DEFAULT NULL,
  `ord_zone_confirm` datetime DEFAULT NULL,
  `ord_ag_del_date` datetime DEFAULT NULL,
  `ord_ag_commission` int(11) DEFAULT NULL,
  `ord_discount_1` int(11) DEFAULT NULL,
  `ord_discount_2` int(11) DEFAULT NULL,
  `ord_ag_delivered` double DEFAULT NULL,
  `ord_ag_value` double DEFAULT NULL,
  `ord_ag_value_dsc1` double DEFAULT NULL,
  `ord_ag_value_dsc2` double DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `ord_plf` int(11) DEFAULT NULL,
  `ord_plz` int(11) DEFAULT NULL,
  `id_order_type` int(11) DEFAULT NULL,
  `id_order_condition` int(11) DEFAULT NULL,
  `id_payment` int(11) DEFAULT NULL,
  `id_order_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `FKC3DF62E5CC25B260` (`id_customer`),
  KEY `FKC3DF62E5F8A192B` (`ord_plf`),
  KEY `FKC3DF62E586C57AD7` (`ord_plz`),
  KEY `FKC3DF62E54BA2CCE8` (`id_payment`),
  KEY `FKC3DF62E5702CDCBA` (`id_order_type`),
  KEY `FKC3DF62E5D92D17B0` (`id_order_condition`),
  KEY `FKC3DF62E51464E4AA` (`id_order_status`),
  CONSTRAINT `FKC3DF62E51464E4AA` FOREIGN KEY (`id_order_status`) REFERENCES `order_status` (`id_order_status`),
  CONSTRAINT `FKC3DF62E54BA2CCE8` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id_payment`),
  CONSTRAINT `FKC3DF62E5702CDCBA` FOREIGN KEY (`id_order_type`) REFERENCES `order_type` (`id_order_type`),
  CONSTRAINT `FKC3DF62E586C57AD7` FOREIGN KEY (`ord_plz`) REFERENCES `price_list_zone` (`id_plz`),
  CONSTRAINT `FKC3DF62E5CC25B260` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_Customer`),
  CONSTRAINT `FKC3DF62E5D92D17B0` FOREIGN KEY (`id_order_condition`) REFERENCES `order_condition` (`id_order_condition`),
  CONSTRAINT `FKC3DF62E5F8A192B` FOREIGN KEY (`ord_plf`) REFERENCES `price_list_factory` (`id_plf`)
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
-- Table structure for table `particular`
--

DROP TABLE IF EXISTS `particular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `particular` (
  `id_particular` int(11) NOT NULL AUTO_INCREMENT,
  `pt_name` varchar(255) DEFAULT NULL,
  `pt_dni` longtext,
  `pt_password` longtext,
  `pt_mail` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_particular`),
  KEY `FK17F22D530B5C2E3` (`id_user_created`),
  KEY `FK17F22D5CC25B260` (`id_customer`),
  KEY `FK17F22D57E351E17` (`id_language`),
  KEY `FK17F22D5E56E24B6` (`id_user_updated`),
  KEY `FK17F22D51AD8B11C` (`id_contact`),
  CONSTRAINT `FK17F22D51AD8B11C` FOREIGN KEY (`id_contact`) REFERENCES `contact` (`id_contact`),
  CONSTRAINT `FK17F22D530B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK17F22D57E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK17F22D5CC25B260` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_Customer`),
  CONSTRAINT `FK17F22D5E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `particular`
--

LOCK TABLES `particular` WRITE;
/*!40000 ALTER TABLE `particular` DISABLE KEYS */;
/*!40000 ALTER TABLE `particular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pattern_description`
--

DROP TABLE IF EXISTS `pattern_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pattern_description` (
  `id_pattern_des` int(11) NOT NULL AUTO_INCREMENT,
  `pd_description` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_pattern` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pattern_des`),
  KEY `FK31A5F5CD30B5C2E3` (`id_user_created`),
  KEY `FK31A5F5CD7E351E17` (`id_language`),
  KEY `FK31A5F5CDE56E24B6` (`id_user_updated`),
  KEY `FK31A5F5CDC487DB4F` (`id_pattern`),
  CONSTRAINT `FK31A5F5CD30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK31A5F5CD7E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK31A5F5CDC487DB4F` FOREIGN KEY (`id_pattern`) REFERENCES `patterns` (`id_pattern`),
  CONSTRAINT `FK31A5F5CDE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pattern_description`
--

LOCK TABLES `pattern_description` WRITE;
/*!40000 ALTER TABLE `pattern_description` DISABLE KEYS */;
INSERT INTO `pattern_description` VALUES (113,'0110 ENG','2016-08-08 00:00:00','2016-08-17 00:00:00',1,1,2,1),(114,'','2016-08-08 00:00:00','2016-08-17 00:00:00',1,1,2,2),(115,'','2016-08-08 00:00:00','2016-08-17 00:00:00',1,1,2,4),(116,'','2016-08-08 00:00:00','2016-08-17 00:00:00',1,1,2,8),(117,'','2016-08-08 00:00:00','2016-08-17 00:00:00',1,1,2,12),(118,'','2016-08-08 00:00:00','2016-08-17 00:00:00',1,1,2,15),(119,'','2016-08-08 00:00:00','2016-08-17 00:00:00',1,1,2,17),(120,'','2016-08-08 00:00:00','2016-08-17 00:00:00',1,1,2,19),(121,'','2016-05-09 00:00:00','2016-05-09 00:00:00',15,15,3,1),(122,'','2016-05-09 00:00:00','2016-05-09 00:00:00',15,15,3,2),(123,'','2016-05-09 00:00:00','2016-05-09 00:00:00',15,15,3,4),(124,'','2016-05-09 00:00:00','2016-05-09 00:00:00',15,15,3,8),(125,'','2016-05-09 00:00:00','2016-05-09 00:00:00',15,15,3,12),(126,'','2016-05-09 00:00:00','2016-05-09 00:00:00',15,15,3,15),(127,'','2016-05-09 00:00:00','2016-05-09 00:00:00',15,15,3,17),(128,'','2016-05-09 00:00:00','2016-05-09 00:00:00',15,15,3,19),(129,'Notes','2016-07-09 00:00:00','2016-07-09 00:00:00',15,15,4,1),(130,'','2016-07-09 00:00:00','2016-07-09 00:00:00',15,15,4,2),(131,'','2016-07-09 00:00:00','2016-07-09 00:00:00',15,15,4,4),(132,'','2016-07-09 00:00:00','2016-07-09 00:00:00',15,15,4,8),(133,'','2016-07-09 00:00:00','2016-07-09 00:00:00',15,15,4,12),(134,'','2016-07-09 00:00:00','2016-07-09 00:00:00',15,15,4,15),(135,'','2016-07-09 00:00:00','2016-07-09 00:00:00',15,15,4,17),(136,'','2016-07-09 00:00:00','2016-07-09 00:00:00',15,15,4,19),(137,'UPP1','2016-07-09 00:00:00','2016-07-09 00:00:00',1,1,5,1),(138,'','2016-07-09 00:00:00','2016-07-09 00:00:00',1,1,5,2),(139,'','2016-07-09 00:00:00','2016-07-09 00:00:00',1,1,5,4),(140,'','2016-07-09 00:00:00','2016-07-09 00:00:00',1,1,5,8),(141,'','2016-07-09 00:00:00','2016-07-09 00:00:00',1,1,5,12),(142,'','2016-07-09 00:00:00','2016-07-09 00:00:00',1,1,5,15),(143,'','2016-07-09 00:00:00','2016-07-09 00:00:00',1,1,5,17),(144,'','2016-07-09 00:00:00','2016-07-09 00:00:00',1,1,5,19),(145,'PPP','2016-08-09 00:00:00','2016-08-09 00:00:00',15,15,6,1),(146,'','2016-08-09 00:00:00','2016-08-09 00:00:00',15,15,6,2),(147,'','2016-08-09 00:00:00','2016-08-09 00:00:00',15,15,6,4),(148,'','2016-08-09 00:00:00','2016-08-09 00:00:00',15,15,6,8),(149,'','2016-08-09 00:00:00','2016-08-09 00:00:00',15,15,6,12),(150,'','2016-08-09 00:00:00','2016-08-09 00:00:00',15,15,6,15),(151,'','2016-08-09 00:00:00','2016-08-09 00:00:00',15,15,6,17),(152,'','2016-08-09 00:00:00','2016-08-09 00:00:00',15,15,6,19),(153,'bb2','2016-09-09 00:00:00','2016-09-09 00:00:00',15,15,7,1),(154,'','2016-09-09 00:00:00','2016-09-09 00:00:00',15,15,7,2),(155,'','2016-09-09 00:00:00','2016-09-09 00:00:00',15,15,7,4),(156,'','2016-09-09 00:00:00','2016-09-09 00:00:00',15,15,7,8),(157,'','2016-09-09 00:00:00','2016-09-09 00:00:00',15,15,7,12),(158,'','2016-09-09 00:00:00','2016-09-09 00:00:00',15,15,7,15),(159,'','2016-09-09 00:00:00','2016-09-09 00:00:00',15,15,7,17),(160,'','2016-09-09 00:00:00','2016-09-09 00:00:00',15,15,7,19);
/*!40000 ALTER TABLE `pattern_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pattern_notes`
--

DROP TABLE IF EXISTS `pattern_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pattern_notes` (
  `id_pattern_note` int(11) NOT NULL AUTO_INCREMENT,
  `pn_note` longtext,
  `pn_date` datetime DEFAULT NULL,
  `id_pattern` int(11) DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pattern_note`),
  KEY `FK911CB15230B5C2E3` (`id_user_created`),
  KEY `FK911CB152C487DB4F` (`id_pattern`),
  CONSTRAINT `FK911CB15230B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK911CB152C487DB4F` FOREIGN KEY (`id_pattern`) REFERENCES `patterns` (`id_pattern`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pattern_notes`
--

LOCK TABLES `pattern_notes` WRITE;
/*!40000 ALTER TABLE `pattern_notes` DISABLE KEYS */;
INSERT INTO `pattern_notes` VALUES (32,'first notes','2016-08-08 00:00:00',2,1),(33,'','2016-05-09 00:00:00',3,15),(34,'','2016-07-09 00:00:00',4,15),(35,'','2016-07-09 00:00:00',5,1),(36,'','2016-08-09 00:00:00',6,15),(37,'','2016-09-09 00:00:00',7,15);
/*!40000 ALTER TABLE `pattern_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pattern_part`
--

DROP TABLE IF EXISTS `pattern_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pattern_part` (
  `id_pattern_part` int(11) NOT NULL AUTO_INCREMENT,
  `pp_description` longtext,
  `pp_code` longtext,
  `id_pattern` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pattern_part`),
  KEY `FKF42AEB427E351E17` (`id_language`),
  KEY `FKF42AEB42C487DB4F` (`id_pattern`),
  CONSTRAINT `FKF42AEB427E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FKF42AEB42C487DB4F` FOREIGN KEY (`id_pattern`) REFERENCES `patterns` (`id_pattern`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pattern_part`
--

LOCK TABLES `pattern_part` WRITE;
/*!40000 ALTER TABLE `pattern_part` DISABLE KEYS */;
INSERT INTO `pattern_part` VALUES (1,'A','A',2,1),(2,'','A',2,2),(3,'','A',2,4),(4,'','A',2,8),(5,'','A',2,12),(6,'','A',2,15),(7,'','A',2,17),(8,'','A',2,19),(9,'B','B',2,1),(10,'','B',2,2),(11,'','B',2,4),(12,'','B',2,8),(13,'','B',2,12),(14,'','B',2,15),(15,'','B',2,17),(16,'','B',2,19),(17,'C dsfsdf sdfsdf','C',2,1),(18,'','C',2,2),(19,'','C',2,4),(20,'','C',2,8),(21,'','C',2,12),(22,'','C',2,15),(23,'','C',2,17),(24,'','C',2,19),(25,'aafff','AA',2,1),(26,'','AA',2,2),(27,'','AA',2,4),(28,'','AA',2,8),(29,'','AA',2,12),(30,'','AA',2,15),(31,'','AA',2,17),(32,'','AA',2,19);
/*!40000 ALTER TABLE `pattern_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pattern_var_des`
--

DROP TABLE IF EXISTS `pattern_var_des`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pattern_var_des` (
  `id_pv_des` int(11) NOT NULL AUTO_INCREMENT,
  `pv_description` longtext,
  `id_pattern_var` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pv_des`),
  KEY `FK4BE4914B7E351E17` (`id_language`),
  KEY `FK4BE4914B7FA15615` (`id_pattern_var`),
  CONSTRAINT `FK4BE4914B7E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK4BE4914B7FA15615` FOREIGN KEY (`id_pattern_var`) REFERENCES `pattern_variantions` (`id_pattern_var`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pattern_var_des`
--

LOCK TABLES `pattern_var_des` WRITE;
/*!40000 ALTER TABLE `pattern_var_des` DISABLE KEYS */;
INSERT INTO `pattern_var_des` VALUES (57,'sdfsdf',12,1),(58,'',12,2),(59,'',12,4),(60,'',12,8),(61,'',12,12),(62,'',12,15),(63,'',12,17),(64,'',12,19),(89,'rr',16,1),(90,'',16,2),(91,'',16,4),(92,'',16,8),(93,'',16,12),(94,'',16,15),(95,'',16,17),(96,'',16,19);
/*!40000 ALTER TABLE `pattern_var_des` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pattern_variantions`
--

DROP TABLE IF EXISTS `pattern_variantions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pattern_variantions` (
  `id_pattern_var` int(11) NOT NULL AUTO_INCREMENT,
  `pv_code` varchar(255) DEFAULT NULL,
  `pv_parts` varchar(255) DEFAULT NULL,
  `pv_sketch` varchar(255) DEFAULT NULL,
  `id_pattern` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pattern_var`),
  KEY `FK39092141C487DB4F` (`id_pattern`),
  CONSTRAINT `FK39092141C487DB4F` FOREIGN KEY (`id_pattern`) REFERENCES `patterns` (`id_pattern`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pattern_variantions`
--

LOCK TABLES `pattern_variantions` WRITE;
/*!40000 ALTER TABLE `pattern_variantions` DISABLE KEYS */;
INSERT INTO `pattern_variantions` VALUES (2,'ABC','A, B','cs09yx9p1pg5o6dihcizrne1wsf69o.jpeg',2),(3,'DEF','B','bbq5sy6t1tnyi1al3qpx83fyyamrds.jpeg',2),(4,'FGDGFD','FFGFG',NULL,2),(6,'RT','A','fznx6yi7uf6o6h9wzd8h931vyhs8vb.jpeg',2),(12,'RT','SDFSDF',NULL,2),(15,'RR','YY','4myaua7ukn2tmyanbm97bcfzgplqcq.jpeg',2),(16,'RR','RRR',NULL,2);
/*!40000 ALTER TABLE `pattern_variantions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patterns`
--

DROP TABLE IF EXISTS `patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patterns` (
  `id_pattern` int(11) NOT NULL AUTO_INCREMENT,
  `pt_code` varchar(255) DEFAULT NULL,
  `pt_date` date DEFAULT NULL,
  `pt_update` date DEFAULT NULL,
  `pt_notes` varchar(255) DEFAULT NULL,
  `pt_Sketch` varchar(255) DEFAULT NULL,
  `pt_Parts` varchar(255) DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  `id_group_products` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pattern`),
  UNIQUE KEY `pt_code` (`pt_code`),
  KEY `FK4A4486E32740CAF0` (`id_Factory`),
  KEY `FK4A4486E330B5C2E3` (`id_user_created`),
  KEY `FK4A4486E3E56E24B6` (`id_user_updated`),
  KEY `FK4A4486E3A7F137D4` (`id_group_products`),
  CONSTRAINT `FK4A4486E32740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`),
  CONSTRAINT `FK4A4486E330B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK4A4486E3A7F137D4` FOREIGN KEY (`id_group_products`) REFERENCES `group_of_products` (`id_group_products`),
  CONSTRAINT `FK4A4486E3E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patterns`
--

LOCK TABLES `patterns` WRITE;
/*!40000 ALTER TABLE `patterns` DISABLE KEYS */;
INSERT INTO `patterns` VALUES (2,'0110','2016-08-08','2016-08-17',NULL,'hkkqmfn03fm28dri9gbipbd1tt4ycy.jpeg','xfxdod25vn62lh39bq98ccg0xpsucs.jpeg',1,1,1,3),(3,'LLL','2016-05-09','2016-05-09',NULL,'fkcxon3zxopxxrpdi1yh1elwf5tugz.jpeg','uhwapmzrohwh3xc4fb3p429nsl8anh.jpeg',15,15,1,5),(4,'PS','2016-07-09','2016-07-09',NULL,'ulbi11s83uiwbya5xep1uhecnpokiv.jpeg','3lvco8epu947h2gkhsa0i0gs2tyzhg.jpeg',15,15,1,9),(5,'UPP1','2016-07-09','2016-07-09',NULL,'ed2m9wrhuozkk7amg5l172yls8anya.jpeg','vz7xz5rfidunn0ilplzvqlb0v3pi12.jpeg',1,1,1,1),(6,'PPP','2016-08-09','2016-08-09',NULL,'0zz5cms6yp08ys0vmnz9ap515a7d6u.jpeg','tyk1gy149fxzsdbr6ilc6rxw7236k8.jpeg',15,15,1,1),(7,'BB2','2016-09-09','2016-09-09',NULL,'gevh4n3n4nl1k5o4vowwxqavr0bx1h.jpeg','u4g7pcq853ehm9kq13m1lk4971c1mo.jpeg',15,15,1,20);
/*!40000 ALTER TABLE `patterns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id_payment` int(11) NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(255) DEFAULT NULL,
  `pay_description` longtext,
  `pay_dp` double DEFAULT NULL,
  `pay_delivery` double DEFAULT NULL,
  `pay_30_days` double DEFAULT NULL,
  `pay_60_days` double DEFAULT NULL,
  `pay_other` double DEFAULT NULL,
  `pay_day` double DEFAULT NULL,
  PRIMARY KEY (`id_payment`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'PAY-1','First pay ',10,15,20,25,30,30);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id_person` int(11) NOT NULL AUTO_INCREMENT,
  `cts_p_name` varchar(255) DEFAULT NULL,
  `cts_p_position` varchar(255) DEFAULT NULL,
  `cts_p_phone` varchar(255) DEFAULT NULL,
  `cts_p_email` varchar(255) DEFAULT NULL,
  `cts_p_notes` varchar(255) DEFAULT NULL,
  `cts_p_bday` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_person`),
  KEY `FKC4E39B5530B5C2E3` (`id_user_created`),
  KEY `FKC4E39B55E56E24B6` (`id_user_updated`),
  KEY `FKC4E39B551AD8B11C` (`id_contact`),
  CONSTRAINT `FKC4E39B551AD8B11C` FOREIGN KEY (`id_contact`) REFERENCES `contact` (`id_contact`),
  CONSTRAINT `FKC4E39B5530B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKC4E39B55E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_list_factory`
--

DROP TABLE IF EXISTS `price_list_factory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_list_factory` (
  `id_plf` int(11) NOT NULL AUTO_INCREMENT,
  `plf_code` varchar(255) DEFAULT NULL,
  `plf_description` varchar(255) DEFAULT NULL,
  `plf_season` varchar(255) DEFAULT NULL,
  `plf_correction` double DEFAULT NULL,
  `plf_Ex_Rate` double DEFAULT NULL,
  `plf_date` date DEFAULT NULL,
  `plf_update` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `id_Zone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_plf`),
  KEY `FK577FE19F2740CAF0` (`id_Factory`),
  KEY `FK577FE19F30B5C2E3` (`id_user_created`),
  KEY `FK577FE19F62BFEBFC` (`id_Zone`),
  KEY `FK577FE19F7E351E17` (`id_language`),
  KEY `FK577FE19FC87A92C6` (`id_currency`),
  KEY `FK577FE19FE56E24B6` (`id_user_updated`),
  CONSTRAINT `FK577FE19F2740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`),
  CONSTRAINT `FK577FE19F30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK577FE19F62BFEBFC` FOREIGN KEY (`id_Zone`) REFERENCES `zone` (`id_Zone`),
  CONSTRAINT `FK577FE19F7E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK577FE19FC87A92C6` FOREIGN KEY (`id_currency`) REFERENCES `currency` (`id_currency`),
  CONSTRAINT `FK577FE19FE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_list_factory`
--

LOCK TABLES `price_list_factory` WRITE;
/*!40000 ALTER TABLE `price_list_factory` DISABLE KEYS */;
INSERT INTO `price_list_factory` VALUES (121,'2016-BCN','Tarifa Barcelona 2016','2016',5,400,'2016-09-19','2016-09-19 13:23:45',1,1,1,1,6,3),(136,'2016-PPP','2016-PPP','2016',23,194.49,'2016-09-20',NULL,1,1,1,1,16,1),(137,'2016-LLL','2016-LLL','2016',23,313.38,'2016-09-20',NULL,1,1,1,1,6,2);
/*!40000 ALTER TABLE `price_list_factory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_list_factory_detail`
--

DROP TABLE IF EXISTS `price_list_factory_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_list_factory_detail` (
  `id_plf_det` int(11) NOT NULL AUTO_INCREMENT,
  `plfd_fty_cost_0` varchar(255) DEFAULT NULL,
  `plfd_fty_sell_1` double DEFAULT NULL,
  `plfd_fty_sell_2` double DEFAULT NULL,
  `plfd_fty_sell_3` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_plf` int(11) DEFAULT NULL,
  `id_cost` int(11) DEFAULT NULL,
  `id_factory` int(11) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `id_cost_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_plf_det`),
  KEY `FKCAC5F2F12740CAF0` (`id_factory`),
  KEY `FKCAC5F2F130B5C2E3` (`id_user_created`),
  KEY `FKCAC5F2F164F051AF` (`id_cost_version`),
  KEY `FKCAC5F2F1C87A92C6` (`id_currency`),
  KEY `FKCAC5F2F1E56E24B6` (`id_user_updated`),
  KEY `FKCAC5F2F1105ACA65` (`id_plf`),
  KEY `FKCAC5F2F19B7A0D66` (`id_cost`),
  CONSTRAINT `FKCAC5F2F1105ACA65` FOREIGN KEY (`id_plf`) REFERENCES `price_list_factory` (`id_plf`),
  CONSTRAINT `FKCAC5F2F12740CAF0` FOREIGN KEY (`id_factory`) REFERENCES `factory` (`id_factory`),
  CONSTRAINT `FKCAC5F2F130B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKCAC5F2F164F051AF` FOREIGN KEY (`id_cost_version`) REFERENCES `costing_versions` (`id_cost_version`),
  CONSTRAINT `FKCAC5F2F19B7A0D66` FOREIGN KEY (`id_cost`) REFERENCES `costing` (`id_cost`),
  CONSTRAINT `FKCAC5F2F1C87A92C6` FOREIGN KEY (`id_currency`) REFERENCES `currency` (`id_currency`),
  CONSTRAINT `FKCAC5F2F1E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=1418 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_list_factory_detail`
--

LOCK TABLES `price_list_factory_detail` WRITE;
/*!40000 ALTER TABLE `price_list_factory_detail` DISABLE KEYS */;
INSERT INTO `price_list_factory_detail` VALUES (1414,'5620000',6912600,22058.2,22058.2,NULL,NULL,NULL,NULL,137,282,1,6,306),(1415,'20000',24600,78.5,78.5,NULL,NULL,NULL,NULL,137,308,1,6,328),(1416,'653200',803436,4130.99,4130.99,NULL,NULL,NULL,NULL,136,279,1,16,303),(1417,'50000',61500,316.21,316.21,NULL,NULL,NULL,NULL,136,307,1,16,327);
/*!40000 ALTER TABLE `price_list_factory_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_list_zone`
--

DROP TABLE IF EXISTS `price_list_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_list_zone` (
  `id_plz` int(11) NOT NULL AUTO_INCREMENT,
  `plz_code` varchar(255) DEFAULT NULL,
  `plz_description` longtext,
  `plz_season` varchar(255) DEFAULT NULL,
  `plz_ex_Rate` double DEFAULT NULL,
  `plz_correction` double DEFAULT NULL,
  `plz_commission` double DEFAULT NULL,
  `plz_freight` double DEFAULT NULL,
  `plz_taxes` double DEFAULT NULL,
  `plz_margin` double DEFAULT NULL,
  `plz_date` date DEFAULT NULL,
  `plz_update` date DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_plf` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_plz`),
  KEY `FKCEBB433730B5C2E3` (`id_user_created`),
  KEY `FKCEBB43377E351E17` (`id_language`),
  KEY `FKCEBB4337C87A92C6` (`id_currency`),
  KEY `FKCEBB4337E56E24B6` (`id_user_updated`),
  KEY `FKCEBB4337105ACA65` (`id_plf`),
  CONSTRAINT `FKCEBB4337105ACA65` FOREIGN KEY (`id_plf`) REFERENCES `price_list_factory` (`id_plf`),
  CONSTRAINT `FKCEBB433730B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKCEBB43377E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FKCEBB4337C87A92C6` FOREIGN KEY (`id_currency`) REFERENCES `currency` (`id_currency`),
  CONSTRAINT `FKCEBB4337E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_list_zone`
--

LOCK TABLES `price_list_zone` WRITE;
/*!40000 ALTER TABLE `price_list_zone` DISABLE KEYS */;
INSERT INTO `price_list_zone` VALUES (79,'2016-SP-DIST','TARIFA 2016 (Dist)','2016',90.9,5,20,4,20,30,'2016-09-19','2016-09-19',1,1,17,1,121),(89,'2016-PPP','2016-PPP','2017',1,68,34,25,23,40,'2016-09-20','2016-09-20',1,1,16,4,136);
/*!40000 ALTER TABLE `price_list_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_list_zone_details`
--

DROP TABLE IF EXISTS `price_list_zone_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_list_zone_details` (
  `id_plz_det` int(11) NOT NULL AUTO_INCREMENT,
  `plzd_Weight` double DEFAULT NULL,
  `plzd_Fty_Sell_4` double DEFAULT NULL,
  `plzd_Freight` double DEFAULT NULL,
  `plzd_Taxes` double DEFAULT NULL,
  `plzd_Margin` double DEFAULT NULL,
  `plzd_Margin_1` double DEFAULT NULL,
  `plzd_Margin_2` double DEFAULT NULL,
  `plzd_Zone_Sell_5` double DEFAULT NULL,
  `plzd_Zone_Sell_6` double DEFAULT NULL,
  `plzd_PVPR_7` double DEFAULT NULL,
  `plzd_PVPR_8` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_plz` int(11) DEFAULT NULL,
  `id_plf_det` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_plz_det`),
  KEY `FK90E4B53A87962C11` (`id_plz`),
  KEY `FK90E4B53A56FFBC0B` (`id_plf_det`),
  KEY `FK90E4B53A30B5C2E3` (`id_user_created`),
  KEY `FK90E4B53AE56E24B6` (`id_user_updated`),
  CONSTRAINT `FK90E4B53A30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK90E4B53A56FFBC0B` FOREIGN KEY (`id_plf_det`) REFERENCES `price_list_factory_detail` (`id_plf_det`),
  CONSTRAINT `FK90E4B53A87962C11` FOREIGN KEY (`id_plz`) REFERENCES `price_list_zone` (`id_plz`),
  CONSTRAINT `FK90E4B53AE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_list_zone_details`
--

LOCK TABLES `price_list_zone_details` WRITE;
/*!40000 ALTER TABLE `price_list_zone_details` DISABLE KEYS */;
INSERT INTO `price_list_zone_details` VALUES (480,0.15,4130.99,0.0038,950.13,2032.45,-98.84,40,7113.57,58.91,98.18,98.18,'2016-09-20 14:15:15',NULL,1,NULL,89,1416),(481,3,316.21,0.075,72.75,155.61,-98.74,39.98,544.64,4.91,8.18,8.18,'2016-09-20 14:15:15',NULL,1,NULL,89,1417);
/*!40000 ALTER TABLE `price_list_zone_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `process` (
  `Id_process` int(11) NOT NULL AUTO_INCREMENT,
  `process_code` varchar(255) DEFAULT NULL,
  `process_description` varchar(255) DEFAULT NULL,
  `process_price` varchar(255) DEFAULT NULL,
  `id_unit` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_process`),
  KEY `FKED8D1E6F6765E577` (`id_unit`),
  CONSTRAINT `FKED8D1E6F6765E577` FOREIGN KEY (`id_unit`) REFERENCES `Units` (`Id_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_cust`
--

DROP TABLE IF EXISTS `prod_cust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_cust` (
  `id_prd_cust` int(11) NOT NULL AUTO_INCREMENT,
  `cost_code` varchar(255) DEFAULT NULL,
  `cv_version` varchar(255) DEFAULT NULL,
  `prd_cust_qtty` double DEFAULT NULL,
  `prd_cust_description` varchar(255) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_plz_det` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prd_cust`),
  KEY `FKC0185A3B848602BA` (`id_product`),
  KEY `FKC0185A3B1E385468` (`id_plz_det`),
  CONSTRAINT `FKC0185A3B1E385468` FOREIGN KEY (`id_plz_det`) REFERENCES `price_list_zone_details` (`id_plz_det`),
  CONSTRAINT `FKC0185A3B848602BA` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_cust`
--

LOCK TABLES `prod_cust` WRITE;
/*!40000 ALTER TABLE `prod_cust` DISABLE KEYS */;
/*!40000 ALTER TABLE `prod_cust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `pr_version` int(11) DEFAULT NULL,
  `pr_description` longtext,
  `pr_section` varchar(255) DEFAULT NULL,
  `pr_fty_sell_9` double DEFAULT NULL,
  `pr_zone_sell_10` double DEFAULT NULL,
  `pr_PVPR_11` double DEFAULT NULL,
  `pr_Club_12` double DEFAULT NULL,
  `pr_Web_13` double DEFAULT NULL,
  `pr_date` date DEFAULT NULL,
  `pr_date_update` date DEFAULT NULL,
  `pr_web` double DEFAULT NULL,
  `pr_9_valid` double DEFAULT NULL,
  `pr_10_valid` double DEFAULT NULL,
  `pr_11_valid` double DEFAULT NULL,
  `pr_sketch` varchar(255) DEFAULT NULL,
  `pr_picture` varchar(255) DEFAULT NULL,
  `pr_stock` bit(1) DEFAULT NULL,
  `id_Project` int(11) DEFAULT NULL,
  `id_type_products` int(11) DEFAULT NULL,
  `id_pattern_var` int(11) DEFAULT NULL,
  `id_pr_status` int(11) DEFAULT NULL,
  `id_cost` int(11) DEFAULT NULL,
  `id_cost_version` int(11) DEFAULT NULL,
  `id_Pattern` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `id_contract` int(11) DEFAULT NULL,
  `id_plz_det` int(11) DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  KEY `FKED8DCCEF404CD4C8` (`id_contract`),
  KEY `FKED8DCCEF9737C5EC` (`id_type_products`),
  KEY `FKED8DCCEF6909A537` (`id_size`),
  KEY `FKED8DCCEF30B5C2E3` (`id_user_created`),
  KEY `FKED8DCCEF64F051AF` (`id_cost_version`),
  KEY `FKED8DCCEF7FA15615` (`id_pattern_var`),
  KEY `FKED8DCCEF85F35FED` (`id_pr_status`),
  KEY `FKED8DCCEF9B7A0D66` (`id_cost`),
  KEY `FKED8DCCEF848AFF0E` (`id_Project`),
  KEY `FKED8DCCEFC487DB4F` (`id_Pattern`),
  KEY `FKED8DCCEF2740CAF0` (`id_Factory`),
  KEY `FKED8DCCEFE56E24B6` (`id_user_updated`),
  KEY `FKED8DCCEF1E385468` (`id_plz_det`),
  CONSTRAINT `FKED8DCCEF1E385468` FOREIGN KEY (`id_plz_det`) REFERENCES `price_list_zone_details` (`id_plz_det`),
  CONSTRAINT `FKED8DCCEF2740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`),
  CONSTRAINT `FKED8DCCEF30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKED8DCCEF404CD4C8` FOREIGN KEY (`id_contract`) REFERENCES `contract` (`id_contract`),
  CONSTRAINT `FKED8DCCEF64F051AF` FOREIGN KEY (`id_cost_version`) REFERENCES `costing_versions` (`id_cost_version`),
  CONSTRAINT `FKED8DCCEF6909A537` FOREIGN KEY (`id_size`) REFERENCES `sizes` (`id_size`),
  CONSTRAINT `FKED8DCCEF7FA15615` FOREIGN KEY (`id_pattern_var`) REFERENCES `pattern_variantions` (`id_pattern_var`),
  CONSTRAINT `FKED8DCCEF848AFF0E` FOREIGN KEY (`id_Project`) REFERENCES `project` (`id_Project`),
  CONSTRAINT `FKED8DCCEF85F35FED` FOREIGN KEY (`id_pr_status`) REFERENCES `product_status` (`id_pr_status`),
  CONSTRAINT `FKED8DCCEF9737C5EC` FOREIGN KEY (`id_type_products`) REFERENCES `type_of_products` (`id_type_products`),
  CONSTRAINT `FKED8DCCEF9B7A0D66` FOREIGN KEY (`id_cost`) REFERENCES `costing` (`id_cost`),
  CONSTRAINT `FKED8DCCEFC487DB4F` FOREIGN KEY (`id_Pattern`) REFERENCES `patterns` (`id_pattern`),
  CONSTRAINT `FKED8DCCEFE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_components`
--

DROP TABLE IF EXISTS `product_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_components` (
  `Id_pr_comp` int(11) NOT NULL AUTO_INCREMENT,
  `pc_comp_qtty` varchar(255) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_mat` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_pr_comp`),
  KEY `FKED26F066848602BA` (`id_product`),
  KEY `FKED26F066E1741C68` (`id_mat`),
  CONSTRAINT `FKED26F066848602BA` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`),
  CONSTRAINT `FKED26F066E1741C68` FOREIGN KEY (`id_mat`) REFERENCES `materials` (`Id_mat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_components`
--

LOCK TABLES `product_components` WRITE;
/*!40000 ALTER TABLE `product_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_process`
--

DROP TABLE IF EXISTS `product_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_process` (
  `Id_pr_process` int(11) NOT NULL AUTO_INCREMENT,
  `pr_process_qtty` varchar(255) DEFAULT NULL,
  `id_process` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_pr_process`),
  KEY `FK7F02331F848602BA` (`id_product`),
  KEY `FK7F02331F8484A5BA` (`id_process`),
  CONSTRAINT `FK7F02331F8484A5BA` FOREIGN KEY (`id_process`) REFERENCES `process` (`Id_process`),
  CONSTRAINT `FK7F02331F848602BA` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_process`
--

LOCK TABLES `product_process` WRITE;
/*!40000 ALTER TABLE `product_process` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_status`
--

DROP TABLE IF EXISTS `product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_status` (
  `id_pr_status` int(11) NOT NULL AUTO_INCREMENT,
  `pr_stat_desc` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pr_status`),
  KEY `FK10B654230B5C2E3` (`id_user_created`),
  KEY `FK10B6542E56E24B6` (`id_user_updated`),
  CONSTRAINT `FK10B654230B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK10B6542E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_status`
--

LOCK TABLES `product_status` WRITE;
/*!40000 ALTER TABLE `product_status` DISABLE KEYS */;
INSERT INTO `product_status` VALUES (3,'cancel',NULL,NULL,NULL,NULL),(4,'Cancel',NULL,NULL,NULL,NULL),(5,'In Process',NULL,NULL,NULL,NULL),(6,'Discard',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id_Project` int(11) NOT NULL AUTO_INCREMENT,
  `id_display` int(11) DEFAULT NULL,
  `pj_description` longtext,
  `pj_date` date DEFAULT NULL,
  `pj_act_1` bit(1) DEFAULT NULL,
  `pj_act_2` bit(1) DEFAULT NULL,
  `pj_act_3` bit(1) DEFAULT NULL,
  `pj_act_4` bit(1) DEFAULT NULL,
  `pj_act_5` bit(1) DEFAULT NULL,
  `pj_act_6` bit(1) DEFAULT NULL,
  `pj_act_7` bit(1) DEFAULT NULL,
  `pj_act_8` bit(1) DEFAULT NULL,
  `pj_act_9` bit(1) DEFAULT NULL,
  `pj_act_10` bit(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_pj_Status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Project`),
  UNIQUE KEY `id_display` (`id_display`),
  KEY `FKED904B192740CAF0` (`id_Factory`),
  KEY `FKED904B1930B5C2E3` (`id_user_created`),
  KEY `FKED904B19CC25B260` (`id_customer`),
  KEY `FKED904B19E56E24B6` (`id_user_updated`),
  KEY `FKED904B197FAF178B` (`id_pj_Status`),
  CONSTRAINT `FKED904B192740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`),
  CONSTRAINT `FKED904B1930B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKED904B197FAF178B` FOREIGN KEY (`id_pj_Status`) REFERENCES `project_status` (`id_pj_Status`),
  CONSTRAINT `FKED904B19CC25B260` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_Customer`),
  CONSTRAINT `FKED904B19E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_comment`
--

DROP TABLE IF EXISTS `project_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_comment` (
  `id_pj_comment` int(11) NOT NULL AUTO_INCREMENT,
  `pj_com_comment` varchar(255) DEFAULT NULL,
  `pj_com_date` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_Project` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pj_comment`),
  KEY `FKA9F9B73930B5C2E3` (`id_user_created`),
  KEY `FKA9F9B73962BB7C3A` (`id_user`),
  KEY `FKA9F9B739E56E24B6` (`id_user_updated`),
  KEY `FKA9F9B739848AFF0E` (`id_Project`),
  CONSTRAINT `FKA9F9B73930B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKA9F9B73962BB7C3A` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKA9F9B739848AFF0E` FOREIGN KEY (`id_Project`) REFERENCES `project` (`id_Project`),
  CONSTRAINT `FKA9F9B739E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_comment`
--

LOCK TABLES `project_comment` WRITE;
/*!40000 ALTER TABLE `project_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_status`
--

DROP TABLE IF EXISTS `project_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_status` (
  `id_pj_Status` int(11) NOT NULL AUTO_INCREMENT,
  `pj_stat_desc` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pj_Status`),
  KEY `FK39D083D830B5C2E3` (`id_user_created`),
  KEY `FK39D083D8E56E24B6` (`id_user_updated`),
  CONSTRAINT `FK39D083D830B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK39D083D8E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_status`
--

LOCK TABLES `project_status` WRITE;
/*!40000 ALTER TABLE `project_status` DISABLE KEYS */;
INSERT INTO `project_status` VALUES (1,'starting','2016-08-01 15:19:18','2016-09-05 15:15:28',1,15),(2,'Cancel','2016-08-01 18:56:13','2016-08-01 18:56:13',2,2),(3,'Starting','2016-08-01 18:56:23','2016-08-01 18:56:23',2,2),(5,'approved','2016-09-05 15:16:02','2016-09-05 15:16:02',15,15),(6,'starting','2016-09-07 08:58:18','2016-09-07 08:58:18',1,1);
/*!40000 ALTER TABLE `project_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_type`
--

DROP TABLE IF EXISTS `shipment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_type` (
  `id_shipment_type` int(11) NOT NULL AUTO_INCREMENT,
  `st_code` varchar(255) DEFAULT NULL,
  `st_description` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_shipment_type`),
  KEY `FKDA40C6BF30B5C2E3` (`id_user_created`),
  KEY `FKDA40C6BFE56E24B6` (`id_user_updated`),
  CONSTRAINT `FKDA40C6BF30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKDA40C6BFE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_type`
--

LOCK TABLES `shipment_type` WRITE;
/*!40000 ALTER TABLE `shipment_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes` (
  `id_size` int(11) NOT NULL AUTO_INCREMENT,
  `sz_description` varchar(255) DEFAULT NULL,
  `sz_qtty` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_size`),
  KEY `FK686209230B5C2E3` (`id_user_created`),
  KEY `FK6862092E56E24B6` (`id_user_updated`),
  CONSTRAINT `FK686209230B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK6862092E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'6XS to 6XL',15,'2016-08-17 16:56:16','2016-08-17 16:56:16',1,1),(2,'Unica',2,'2016-08-03 18:27:04','2016-08-03 18:27:04',1,1),(4,'BIB',4,'2016-08-18 08:37:33','2016-08-18 08:37:33',1,1);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes_details`
--

DROP TABLE IF EXISTS `sizes_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes_details` (
  `id_size_det` int(11) NOT NULL AUTO_INCREMENT,
  `id_size` int(11) DEFAULT NULL,
  `szd_position` varchar(255) DEFAULT NULL,
  `szd_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_size_det`),
  KEY `FK26D607956909A537` (`id_size`),
  CONSTRAINT `FK26D607956909A537` FOREIGN KEY (`id_size`) REFERENCES `sizes` (`id_size`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes_details`
--

LOCK TABLES `sizes_details` WRITE;
/*!40000 ALTER TABLE `sizes_details` DISABLE KEYS */;
INSERT INTO `sizes_details` VALUES (94,1,'8','M'),(95,1,'9','L'),(102,4,'1','1'),(103,4,'2','2'),(104,4,'3','3'),(105,4,'4','4');
/*!40000 ALTER TABLE `sizes_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_of_customers`
--

DROP TABLE IF EXISTS `type_of_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_of_customers` (
  `id_type_Customer` int(11) NOT NULL AUTO_INCREMENT,
  `tc_code` varchar(255) DEFAULT NULL,
  `tc_description` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_type_Customer`),
  KEY `FKCA7E4CD230B5C2E3` (`id_user_created`),
  KEY `FKCA7E4CD2E56E24B6` (`id_user_updated`),
  CONSTRAINT `FKCA7E4CD230B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKCA7E4CD2E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_customers`
--

LOCK TABLES `type_of_customers` WRITE;
/*!40000 ALTER TABLE `type_of_customers` DISABLE KEYS */;
INSERT INTO `type_of_customers` VALUES (1,'COM','Company','2016-08-01 13:51:55','2016-08-01 18:15:56',1,2),(2,'LLL','city','2016-09-12 08:49:45','2016-09-12 08:49:45',1,1);
/*!40000 ALTER TABLE `type_of_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_of_products`
--

DROP TABLE IF EXISTS `type_of_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_of_products` (
  `id_type_products` int(11) NOT NULL AUTO_INCREMENT,
  `tp_code` varchar(255) DEFAULT NULL,
  `tp_description` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  `id_group_products` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_type_products`),
  KEY `FK22717D472740CAF0` (`id_Factory`),
  KEY `FK22717D4730B5C2E3` (`id_user_created`),
  KEY `FK22717D47E56E24B6` (`id_user_updated`),
  KEY `FK22717D47A7F137D4` (`id_group_products`),
  CONSTRAINT `FK22717D472740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`),
  CONSTRAINT `FK22717D4730B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK22717D47A7F137D4` FOREIGN KEY (`id_group_products`) REFERENCES `group_of_products` (`id_group_products`),
  CONSTRAINT `FK22717D47E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_products`
--

LOCK TABLES `type_of_products` WRITE;
/*!40000 ALTER TABLE `type_of_products` DISABLE KEYS */;
INSERT INTO `type_of_products` VALUES (1,'SUP',NULL,'2016-08-01 13:49:02','2016-08-01 13:49:02',1,1,1,1),(2,'TSS',NULL,'2016-08-01 17:13:57','2016-08-18 13:42:43',1,1,1,3),(8,'TSL',NULL,'2016-08-02 11:12:23','2016-08-18 13:43:06',1,1,1,3),(9,'TPS',NULL,'2016-08-02 11:12:52','2016-08-02 11:12:52',1,1,1,5),(10,'TPL',NULL,'2016-08-02 11:13:11','2016-08-02 11:13:11',1,1,1,5),(11,'SG',NULL,'2016-08-02 11:15:49','2016-08-02 11:15:49',1,1,1,8),(12,'SGR',NULL,'2016-08-02 11:16:08','2016-08-02 11:16:08',1,1,1,8),(13,'SG2',NULL,'2016-08-02 11:16:23','2016-08-02 11:16:23',1,1,1,8),(14,'TXS',NULL,'2016-08-02 11:17:20','2016-08-02 11:17:20',1,1,1,6),(15,'TXL',NULL,'2016-08-02 11:17:34','2016-08-02 11:17:34',1,1,1,6),(16,'ATW',NULL,'2016-08-02 11:18:11','2016-09-16 16:41:30',1,1,1,19),(17,'ABF',NULL,'2016-08-02 11:18:28','2016-09-08 11:19:11',1,1,1,19),(18,'ASL',NULL,'2016-08-02 11:18:47','2016-09-16 16:42:06',1,1,1,19),(21,'BB1',NULL,'2016-08-02 11:19:50','2016-09-16 16:41:48',1,1,1,20),(22,'BB2',NULL,'2016-08-02 11:20:13','2016-09-08 10:36:18',1,1,1,20),(23,'TTS',NULL,'2016-08-02 11:21:28','2016-08-02 11:21:28',1,1,1,7),(24,'PPP',NULL,'2016-08-18 14:35:28','2016-08-18 14:35:28',1,1,1,1),(25,'LLL',NULL,'2016-08-18 14:36:37','2016-09-16 16:41:55',1,1,1,3),(26,'OOO',NULL,'2016-08-18 14:37:55','2016-08-18 14:38:27',1,1,1,3),(29,'SDFSDFSDF',NULL,'2016-08-18 15:57:51','2016-08-18 15:57:51',1,1,1,3),(30,'SFDSF',NULL,'2016-08-18 15:58:01','2016-08-18 15:58:01',1,1,1,3),(31,'YYTUYTU',NULL,'2016-08-18 15:59:44','2016-08-18 15:59:44',1,1,1,1),(32,'TYRTY',NULL,'2016-08-18 16:00:30','2016-08-18 16:00:30',1,1,1,3),(35,'SDFS',NULL,'2016-08-18 16:13:26','2016-08-18 16:13:26',1,1,1,3),(36,'PS',NULL,'2016-09-07 10:07:37','2016-09-08 11:23:24',1,1,1,9);
/*!40000 ALTER TABLE `type_of_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_product_language`
--

DROP TABLE IF EXISTS `type_product_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_product_language` (
  `id_type_language` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_type_language`),
  KEY `FKE4F0030D30B5C2E3` (`id_user_created`),
  KEY `FKE4F0030D7E351E17` (`id_language`),
  KEY `FKE4F0030D84F5B125` (`id_type`),
  KEY `FKE4F0030DE56E24B6` (`id_user_updated`),
  CONSTRAINT `FKE4F0030D30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKE4F0030D7E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FKE4F0030D84F5B125` FOREIGN KEY (`id_type`) REFERENCES `type_of_products` (`id_type_products`),
  CONSTRAINT `FKE4F0030DE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_product_language`
--

LOCK TABLES `type_product_language` WRITE;
/*!40000 ALTER TABLE `type_product_language` DISABLE KEYS */;
INSERT INTO `type_product_language` VALUES (1,'Short shirt','2016-08-01 13:49:02','2016-08-01 13:49:02',1,1,1,1),(2,'','2016-08-01 13:49:02','2016-08-01 13:49:02',1,1,1,2),(3,'','2016-08-01 13:49:02','2016-08-01 13:49:02',1,1,1,4),(4,'','2016-08-01 13:49:02','2016-08-01 13:49:02',1,1,1,8),(5,'','2016-08-01 13:49:02','2016-08-01 13:49:02',1,1,1,12),(6,'','2016-08-01 13:49:02','2016-08-01 13:49:02',1,1,1,15),(7,'','2016-08-01 13:49:02','2016-08-01 13:49:02',1,1,1,17),(8,'','2016-08-01 13:49:02','2016-08-01 13:49:02',1,1,1,19),(9,'T-Shirt Short Sleeve - TS','2016-08-01 17:13:57','2016-08-18 13:42:43',1,1,2,1),(10,'T-Shirt S/SL ES','2016-08-01 17:13:57','2016-08-18 13:42:43',1,1,2,2),(11,'T-Shirt S/SL VIET','2016-08-01 17:13:57','2016-08-18 13:42:43',1,1,2,4),(12,'T-Shirt S/SL FRE','2016-08-01 17:13:57','2016-08-18 13:42:43',1,1,2,8),(13,'T-Shirt S/SL JPN','2016-08-01 17:13:57','2016-08-18 13:42:43',1,1,2,12),(14,'T-Shirt S/SL CA','2016-08-01 17:13:57','2016-08-18 13:42:43',1,1,2,15),(15,'T-Shirt S/SL GER','2016-08-01 17:13:57','2016-08-18 13:42:43',1,1,2,17),(16,'T-Shirt S/SL KOR','2016-08-01 17:13:57','2016-08-18 13:42:43',1,1,2,19),(57,'T-Shirt Long Sleeve - TS','2016-08-02 11:12:23','2016-08-18 13:43:06',1,1,8,1),(58,'','2016-08-02 11:12:23','2016-08-18 13:43:06',1,1,8,2),(59,'','2016-08-02 11:12:23','2016-08-18 13:43:06',1,1,8,4),(60,'','2016-08-02 11:12:23','2016-08-18 13:43:06',1,1,8,8),(61,'','2016-08-02 11:12:23','2016-08-18 13:43:06',1,1,8,12),(62,'','2016-08-02 11:12:23','2016-08-18 13:43:06',1,1,8,15),(63,'','2016-08-02 11:12:23','2016-08-18 13:43:06',1,1,8,17),(64,'','2016-08-02 11:12:23','2016-08-18 13:43:06',1,1,8,19),(65,'Polo S/SL','2016-08-02 11:12:52','2016-08-02 11:12:52',1,1,9,1),(66,'','2016-08-02 11:12:52','2016-08-02 11:12:52',1,1,9,2),(67,'','2016-08-02 11:12:52','2016-08-02 11:12:52',1,1,9,4),(68,'','2016-08-02 11:12:52','2016-08-02 11:12:52',1,1,9,8),(69,'','2016-08-02 11:12:52','2016-08-02 11:12:52',1,1,9,12),(70,'','2016-08-02 11:12:52','2016-08-02 11:12:52',1,1,9,15),(71,'','2016-08-02 11:12:52','2016-08-02 11:12:52',1,1,9,17),(72,'','2016-08-02 11:12:52','2016-08-02 11:12:52',1,1,9,19),(73,'Polo L/SL','2016-08-02 11:13:11','2016-08-02 11:13:11',1,1,10,1),(74,'','2016-08-02 11:13:11','2016-08-02 11:13:11',1,1,10,2),(75,'','2016-08-02 11:13:11','2016-08-02 11:13:11',1,1,10,4),(76,'','2016-08-02 11:13:11','2016-08-02 11:13:11',1,1,10,8),(77,'','2016-08-02 11:13:11','2016-08-02 11:13:11',1,1,10,12),(78,'','2016-08-02 11:13:11','2016-08-02 11:13:11',1,1,10,15),(79,'','2016-08-02 11:13:11','2016-08-02 11:13:11',1,1,10,17),(80,'','2016-08-02 11:13:11','2016-08-02 11:13:11',1,1,10,19),(81,'Singlet','2016-08-02 11:15:49','2016-08-02 11:15:49',1,1,11,1),(82,'','2016-08-02 11:15:49','2016-08-02 11:15:49',1,1,11,2),(83,'','2016-08-02 11:15:49','2016-08-02 11:15:49',1,1,11,4),(84,'','2016-08-02 11:15:49','2016-08-02 11:15:49',1,1,11,8),(85,'','2016-08-02 11:15:49','2016-08-02 11:15:49',1,1,11,12),(86,'','2016-08-02 11:15:49','2016-08-02 11:15:49',1,1,11,15),(87,'','2016-08-02 11:15:49','2016-08-02 11:15:49',1,1,11,17),(88,'','2016-08-02 11:15:49','2016-08-02 11:15:49',1,1,11,19),(89,'Singlet Reversible','2016-08-02 11:16:08','2016-08-02 11:16:08',1,1,12,1),(90,'','2016-08-02 11:16:08','2016-08-02 11:16:08',1,1,12,2),(91,'','2016-08-02 11:16:08','2016-08-02 11:16:08',1,1,12,4),(92,'','2016-08-02 11:16:08','2016-08-02 11:16:08',1,1,12,8),(93,'','2016-08-02 11:16:08','2016-08-02 11:16:08',1,1,12,12),(94,'','2016-08-02 11:16:08','2016-08-02 11:16:08',1,1,12,15),(95,'','2016-08-02 11:16:08','2016-08-02 11:16:08',1,1,12,17),(96,'','2016-08-02 11:16:08','2016-08-02 11:16:08',1,1,12,19),(97,'Singlet Rev. 2 layers','2016-08-02 11:16:23','2016-08-02 11:16:23',1,1,13,1),(98,'','2016-08-02 11:16:23','2016-08-02 11:16:23',1,1,13,2),(99,'','2016-08-02 11:16:23','2016-08-02 11:16:23',1,1,13,4),(100,'','2016-08-02 11:16:23','2016-08-02 11:16:23',1,1,13,8),(101,'','2016-08-02 11:16:23','2016-08-02 11:16:23',1,1,13,12),(102,'','2016-08-02 11:16:23','2016-08-02 11:16:23',1,1,13,15),(103,'','2016-08-02 11:16:23','2016-08-02 11:16:23',1,1,13,17),(104,'','2016-08-02 11:16:23','2016-08-02 11:16:23',1,1,13,19),(105,'T-Shirt Spandex S/SL','2016-08-02 11:17:20','2016-08-02 11:17:20',1,1,14,1),(106,'','2016-08-02 11:17:20','2016-08-02 11:17:20',1,1,14,2),(107,'','2016-08-02 11:17:20','2016-08-02 11:17:20',1,1,14,4),(108,'','2016-08-02 11:17:20','2016-08-02 11:17:20',1,1,14,8),(109,'','2016-08-02 11:17:20','2016-08-02 11:17:20',1,1,14,12),(110,'','2016-08-02 11:17:20','2016-08-02 11:17:20',1,1,14,15),(111,'','2016-08-02 11:17:20','2016-08-02 11:17:20',1,1,14,17),(112,'','2016-08-02 11:17:20','2016-08-02 11:17:20',1,1,14,19),(113,'T-Shirt Spandex L/SL','2016-08-02 11:17:34','2016-08-02 11:17:34',1,1,15,1),(114,'','2016-08-02 11:17:34','2016-08-02 11:17:34',1,1,15,2),(115,'','2016-08-02 11:17:34','2016-08-02 11:17:34',1,1,15,4),(116,'','2016-08-02 11:17:34','2016-08-02 11:17:34',1,1,15,8),(117,'','2016-08-02 11:17:34','2016-08-02 11:17:34',1,1,15,12),(118,'','2016-08-02 11:17:34','2016-08-02 11:17:34',1,1,15,15),(119,'','2016-08-02 11:17:34','2016-08-02 11:17:34',1,1,15,17),(120,'','2016-08-02 11:17:34','2016-08-02 11:17:34',1,1,15,19),(121,'Towel','2016-08-02 11:18:11','2016-09-16 16:41:30',1,1,16,1),(122,'','2016-08-02 11:18:11','2016-08-02 11:18:11',1,1,16,2),(123,'','2016-08-02 11:18:11','2016-08-02 11:18:11',1,1,16,4),(124,'','2016-08-02 11:18:11','2016-08-02 11:18:11',1,1,16,8),(125,'','2016-08-02 11:18:11','2016-08-02 11:18:11',1,1,16,12),(126,'','2016-08-02 11:18:11','2016-08-02 11:18:11',1,1,16,15),(127,'','2016-08-02 11:18:11','2016-08-02 11:18:11',1,1,16,17),(128,'','2016-08-02 11:18:11','2016-08-02 11:18:11',1,1,16,19),(129,'Buff','2016-08-02 11:18:28','2016-09-08 11:19:11',1,1,17,1),(130,'Buff','2016-08-02 11:18:28','2016-09-08 11:19:11',1,1,17,2),(131,'Buff','2016-08-02 11:18:28','2016-09-08 11:19:11',1,1,17,4),(132,'Buff','2016-08-02 11:18:28','2016-09-08 11:19:11',1,1,17,8),(133,'Buff','2016-08-02 11:18:28','2016-09-08 11:19:11',1,1,17,12),(134,'Buff','2016-08-02 11:18:28','2016-09-08 11:19:11',1,1,17,15),(135,'Buff','2016-08-02 11:18:28','2016-09-08 11:19:11',1,1,17,17),(136,'Buff','2016-08-02 11:18:28','2016-09-08 11:19:11',1,1,17,19),(137,'Sleaves','2016-08-02 11:18:47','2016-09-08 10:40:21',1,1,18,1),(138,'Sleaves','2016-08-02 11:18:47','2016-09-08 10:40:21',1,1,18,2),(139,'Sleaves','2016-08-02 11:18:47','2016-09-08 10:40:21',1,1,18,4),(140,'Sleaves','2016-08-02 11:18:47','2016-09-08 10:28:15',1,1,18,8),(141,'Sleaves','2016-08-02 11:18:47','2016-09-08 10:28:15',1,1,18,12),(142,'Sleaves','2016-08-02 11:18:47','2016-09-08 10:28:15',1,1,18,15),(143,'Sleaves','2016-08-02 11:18:47','2016-09-08 10:28:15',1,1,18,17),(144,'Sleaves','2016-08-02 11:18:47','2016-09-08 10:28:15',1,1,18,19),(161,'Bib','2016-08-02 11:19:50','2016-09-16 16:41:48',1,1,21,1),(162,'','2016-08-02 11:19:50','2016-08-02 11:19:50',1,1,21,2),(163,'','2016-08-02 11:19:50','2016-08-02 11:19:50',1,1,21,4),(164,'','2016-08-02 11:19:50','2016-08-02 11:19:50',1,1,21,8),(165,'','2016-08-02 11:19:50','2016-08-02 11:19:50',1,1,21,12),(166,'','2016-08-02 11:19:50','2016-08-02 11:19:50',1,1,21,15),(167,'','2016-08-02 11:19:50','2016-08-02 11:19:50',1,1,21,17),(168,'','2016-08-02 11:19:50','2016-08-02 11:19:50',1,1,21,19),(169,'Bib Rev. 2 layers','2016-08-02 11:20:13','2016-09-08 10:36:18',1,1,22,1),(170,'','2016-08-02 11:20:13','2016-08-02 11:20:13',1,1,22,2),(171,'','2016-08-02 11:20:13','2016-08-02 11:20:13',1,1,22,4),(172,'','2016-08-02 11:20:13','2016-08-02 11:20:13',1,1,22,8),(173,'','2016-08-02 11:20:13','2016-08-02 11:20:13',1,1,22,12),(174,'','2016-08-02 11:20:13','2016-08-02 11:20:13',1,1,22,15),(175,'','2016-08-02 11:20:13','2016-08-02 11:20:13',1,1,22,17),(176,'','2016-08-02 11:20:13','2016-08-02 11:20:13',1,1,22,19),(177,'Tank Top Spandex short','2016-08-02 11:21:28','2016-08-02 11:21:28',1,1,23,1),(178,'','2016-08-02 11:21:28','2016-08-02 11:21:28',1,1,23,2),(179,'','2016-08-02 11:21:28','2016-08-02 11:21:28',1,1,23,4),(180,'','2016-08-02 11:21:28','2016-08-02 11:21:28',1,1,23,8),(181,'','2016-08-02 11:21:28','2016-08-02 11:21:28',1,1,23,12),(182,'','2016-08-02 11:21:28','2016-08-02 11:21:28',1,1,23,15),(183,'','2016-08-02 11:21:28','2016-08-02 11:21:28',1,1,23,17),(184,'','2016-08-02 11:21:28','2016-08-02 11:21:28',1,1,23,19),(185,'hhkjhjkhjkhjkjhk','2016-08-18 14:35:28','2016-08-18 14:35:28',1,1,24,1),(186,'hhkjhjkhjkhjkjhk','2016-08-18 14:35:28','2016-08-18 14:35:28',1,1,24,2),(187,'hhkjhjkhjkhjkjhk','2016-08-18 14:35:28','2016-08-18 14:35:28',1,1,24,4),(188,'hhkjhjkhjkhjkjhk','2016-08-18 14:35:28','2016-08-18 14:35:28',1,1,24,8),(189,'hhkjhjkhjkhjkjhk','2016-08-18 14:35:28','2016-08-18 14:35:28',1,1,24,12),(190,'hhkjhjkhjkhjkjhk','2016-08-18 14:35:28','2016-08-18 14:35:28',1,1,24,15),(191,'hhkjhjkhjkhjkjhk','2016-08-18 14:35:28','2016-08-18 14:35:28',1,1,24,17),(192,'hhkjhjkhjkhjkjhk','2016-08-18 14:35:28','2016-08-18 14:35:28',1,1,24,19),(193,'llll','2016-08-18 14:36:37','2016-09-16 16:41:55',1,1,25,1),(194,'frfrfv','2016-08-18 14:36:37','2016-09-16 16:41:55',1,1,25,2),(195,'llll','2016-08-18 14:36:37','2016-09-16 16:41:55',1,1,25,4),(196,'llll','2016-08-18 14:36:37','2016-09-16 16:41:55',1,1,25,8),(197,'llll','2016-08-18 14:36:37','2016-09-16 16:41:55',1,1,25,12),(198,'llll','2016-08-18 14:36:37','2016-09-16 16:41:55',1,1,25,15),(199,'llll','2016-08-18 14:36:37','2016-09-16 16:41:55',1,1,25,17),(200,'llll','2016-08-18 14:36:37','2016-09-16 16:41:55',1,1,25,19),(201,'ppppppppp','2016-08-18 14:37:55','2016-08-18 14:38:27',1,1,26,1),(202,'ppppppppp','2016-08-18 14:37:55','2016-08-18 14:38:27',1,1,26,2),(203,'ppppppppp','2016-08-18 14:37:55','2016-08-18 14:38:27',1,1,26,4),(204,'ppppppppp','2016-08-18 14:37:55','2016-08-18 14:38:27',1,1,26,8),(205,'ppppppppp','2016-08-18 14:37:55','2016-08-18 14:38:27',1,1,26,12),(206,'ppppppppp','2016-08-18 14:37:55','2016-08-18 14:38:27',1,1,26,15),(207,'ppppppppp','2016-08-18 14:37:55','2016-08-18 14:38:27',1,1,26,17),(208,'ppppppppp','2016-08-18 14:37:55','2016-08-18 14:38:27',1,1,26,19),(225,'sdf','2016-08-18 15:57:51','2016-08-18 15:57:51',1,1,29,1),(226,'sdf','2016-08-18 15:57:51','2016-08-18 15:57:51',1,1,29,2),(227,'sdf','2016-08-18 15:57:51','2016-08-18 15:57:51',1,1,29,4),(228,'sdf','2016-08-18 15:57:51','2016-08-18 15:57:51',1,1,29,8),(229,'sdf','2016-08-18 15:57:51','2016-08-18 15:57:51',1,1,29,12),(230,'sdf','2016-08-18 15:57:51','2016-08-18 15:57:51',1,1,29,15),(231,'sdf','2016-08-18 15:57:51','2016-08-18 15:57:51',1,1,29,17),(232,'sdf','2016-08-18 15:57:51','2016-08-18 15:57:51',1,1,29,19),(233,'sdfsdf','2016-08-18 15:58:01','2016-08-18 15:58:01',1,1,30,1),(234,'','2016-08-18 15:58:01','2016-08-18 15:58:01',1,1,30,2),(235,'','2016-08-18 15:58:01','2016-08-18 15:58:01',1,1,30,4),(236,'','2016-08-18 15:58:01','2016-08-18 15:58:01',1,1,30,8),(237,'','2016-08-18 15:58:01','2016-08-18 15:58:01',1,1,30,12),(238,'','2016-08-18 15:58:01','2016-08-18 15:58:01',1,1,30,15),(239,'','2016-08-18 15:58:01','2016-08-18 15:58:01',1,1,30,17),(240,'','2016-08-18 15:58:01','2016-08-18 15:58:01',1,1,30,19),(241,'lk,;','2016-08-18 15:59:44','2016-08-18 15:59:44',1,1,31,1),(242,'','2016-08-18 15:59:44','2016-08-18 15:59:44',1,1,31,2),(243,'','2016-08-18 15:59:44','2016-08-18 15:59:44',1,1,31,4),(244,'','2016-08-18 15:59:44','2016-08-18 15:59:44',1,1,31,8),(245,'','2016-08-18 15:59:44','2016-08-18 15:59:44',1,1,31,12),(246,'','2016-08-18 15:59:44','2016-08-18 15:59:44',1,1,31,15),(247,'','2016-08-18 15:59:44','2016-08-18 15:59:44',1,1,31,17),(248,'','2016-08-18 15:59:44','2016-08-18 15:59:44',1,1,31,19),(249,'rtyrty','2016-08-18 16:00:30','2016-08-18 16:00:30',1,1,32,1),(250,'','2016-08-18 16:00:30','2016-08-18 16:00:30',1,1,32,2),(251,'','2016-08-18 16:00:30','2016-08-18 16:00:30',1,1,32,4),(252,'','2016-08-18 16:00:30','2016-08-18 16:00:30',1,1,32,8),(253,'','2016-08-18 16:00:30','2016-08-18 16:00:30',1,1,32,12),(254,'','2016-08-18 16:00:30','2016-08-18 16:00:30',1,1,32,15),(255,'','2016-08-18 16:00:30','2016-08-18 16:00:30',1,1,32,17),(256,'','2016-08-18 16:00:30','2016-08-18 16:00:30',1,1,32,19),(273,'sdfsdf','2016-08-18 16:13:26','2016-08-18 16:13:26',1,1,35,1),(274,'','2016-08-18 16:13:26','2016-08-18 16:13:26',1,1,35,2),(275,'','2016-08-18 16:13:26','2016-08-18 16:13:26',1,1,35,4),(276,'','2016-08-18 16:13:26','2016-08-18 16:13:26',1,1,35,8),(277,'','2016-08-18 16:13:26','2016-08-18 16:13:26',1,1,35,12),(278,'','2016-08-18 16:13:26','2016-08-18 16:13:26',1,1,35,15),(279,'','2016-08-18 16:13:26','2016-08-18 16:13:26',1,1,35,17),(280,'','2016-08-18 16:13:26','2016-08-18 16:13:26',1,1,35,19),(281,'PS PRODUCT','2016-09-07 10:07:37','2016-09-08 11:23:24',1,1,36,1),(282,'PS PRODUCT','2016-09-07 10:07:37','2016-09-08 11:23:24',1,1,36,2),(283,'PS PRODUCT','2016-09-07 10:07:37','2016-09-08 11:23:24',1,1,36,4),(284,'PS PRODUCT','2016-09-07 10:07:37','2016-09-08 11:23:24',1,1,36,8),(285,'PS PRODUCT','2016-09-07 10:07:37','2016-09-08 11:23:24',1,1,36,12),(286,'PS PRODUCT','2016-09-07 10:07:37','2016-09-08 11:23:24',1,1,36,15),(287,'PS PRODUCT','2016-09-07 10:07:37','2016-09-08 11:23:24',1,1,36,17),(288,'PS PRODUCT','2016-09-07 10:07:37','2016-09-08 11:23:24',1,1,36,19);
/*!40000 ALTER TABLE `type_product_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_position` longtext,
  `user_password` longtext,
  `is_root` bit(1) DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_Zone` int(11) DEFAULT NULL,
  `id_Agent` int(11) DEFAULT NULL,
  `id_Customer` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  `id_access_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `FK36EBCB2740CAF0` (`id_Factory`),
  KEY `FK36EBCB62BFEBFC` (`id_Zone`),
  KEY `FK36EBCBCC25B260` (`id_Customer`),
  KEY `FK36EBCB7E351E17` (`id_language`),
  KEY `FK36EBCB1AD8B11C` (`id_contact`),
  KEY `FK36EBCBF27575E6` (`id_Agent`),
  KEY `FK36EBCBB032F276` (`id_access_level`),
  CONSTRAINT `FK36EBCB1AD8B11C` FOREIGN KEY (`id_contact`) REFERENCES `contact` (`id_contact`),
  CONSTRAINT `FK36EBCB2740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`),
  CONSTRAINT `FK36EBCB62BFEBFC` FOREIGN KEY (`id_Zone`) REFERENCES `zone` (`id_Zone`),
  CONSTRAINT `FK36EBCB7E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK36EBCBB032F276` FOREIGN KEY (`id_access_level`) REFERENCES `access_level` (`id_access_level`),
  CONSTRAINT `FK36EBCBCC25B260` FOREIGN KEY (`id_Customer`) REFERENCES `customer` (`id_Customer`),
  CONSTRAINT `FK36EBCBF27575E6` FOREIGN KEY (`id_Agent`) REFERENCES `agent` (`id_Agent`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'factory1',NULL,'admin123','\0',1,1,NULL,NULL,NULL,8,NULL),(2,'zone1','','admin123','\0',1,1,1,NULL,NULL,5,NULL),(3,'zone2','','admin123','\0',1,1,2,NULL,NULL,6,NULL),(4,'agent2','','admin123','\0',1,1,1,1,NULL,14,2),(5,'agent3','','admin123','\0',1,1,2,3,NULL,15,NULL),(6,'customer1','','admin123','\0',1,1,1,1,2,18,NULL),(7,'agent1','Sales Director','admin123','\0',1,1,1,2,NULL,19,1),(8,'customer2','','admin123','\0',1,1,1,1,3,20,NULL),(9,'Customer3','Sales Staff','admin123','\0',1,4,1,2,1,22,1),(11,'terry','','admin123','\0',NULL,1,NULL,NULL,NULL,25,NULL),(12,'customer1ofcus1','','admin123','\0',NULL,1,NULL,NULL,NULL,26,NULL),(13,'sdgsdss','sdg','sd','\0',1,2,1,2,1,32,NULL),(14,'japan1','Admin','admin123','\0',1,12,3,NULL,NULL,45,NULL),(15,'tokyo1','Admin','admin123','\0',1,12,3,5,NULL,47,NULL),(16,'customer10','','admin123','\0',1,1,1,2,1,50,NULL),(17,'vietnam1','','admin123','\0',1,4,4,NULL,NULL,52,NULL),(18,'vietnamagent1','','admin123','\0',1,4,4,9,NULL,58,NULL),(19,'vietnamagent2','','admin123','\0',1,4,4,10,NULL,59,NULL),(20,'vietnamagent3','','admin123','\0',1,4,4,11,NULL,61,NULL),(21,'vietnamagent4','','admin123','\0',1,4,4,12,NULL,63,NULL),(22,'agentloc1','','admin123','\0',1,1,1,13,NULL,65,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersetting`
--

DROP TABLE IF EXISTS `usersetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersetting` (
  `id_USetting` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_user_setting` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_USetting`),
  KEY `FK128582530B5C2E3` (`id_user_created`),
  KEY `FK12858257E351E17` (`id_language`),
  KEY `FK1285825E56E24B6` (`id_user_updated`),
  KEY `FK128582569C6524B` (`id_user_setting`),
  CONSTRAINT `FK128582530B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK128582569C6524B` FOREIGN KEY (`id_user_setting`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK12858257E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK1285825E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersetting`
--

LOCK TABLES `usersetting` WRITE;
/*!40000 ALTER TABLE `usersetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone` (
  `id_Zone` int(11) NOT NULL AUTO_INCREMENT,
  `z_code` varchar(255) DEFAULT NULL,
  `z_description` longtext,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_Factory` int(11) DEFAULT NULL,
  `id_currency` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `id_contact` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Zone`),
  UNIQUE KEY `z_code` (`z_code`),
  KEY `FK3923AC2740CAF0` (`id_Factory`),
  KEY `FK3923AC30B5C2E3` (`id_user_created`),
  KEY `FK3923AC7E351E17` (`id_language`),
  KEY `FK3923ACC87A92C6` (`id_currency`),
  KEY `FK3923ACE56E24B6` (`id_user_updated`),
  KEY `FK3923AC1AD8B11C` (`id_contact`),
  CONSTRAINT `FK3923AC1AD8B11C` FOREIGN KEY (`id_contact`) REFERENCES `contact` (`id_contact`),
  CONSTRAINT `FK3923AC2740CAF0` FOREIGN KEY (`id_Factory`) REFERENCES `factory` (`id_factory`),
  CONSTRAINT `FK3923AC30B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK3923AC7E351E17` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  CONSTRAINT `FK3923ACC87A92C6` FOREIGN KEY (`id_currency`) REFERENCES `currency` (`id_currency`),
  CONSTRAINT `FK3923ACE56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES (1,'NYY','New York','2016-08-01 14:04:25','2016-08-12 16:08:06',1,1,1,1,1,37),(2,'WA','Wasington','2016-08-01 14:04:47','2016-08-05 09:55:29',1,1,1,1,1,38),(3,'Japan','Japan Zone','2016-08-15 08:18:25','2016-08-15 12:19:13',1,1,1,16,12,44),(4,'vietnam','vietnam','2016-08-16 09:52:43','2016-08-16 09:52:43',1,1,1,3,4,51);
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_price`
--

DROP TABLE IF EXISTS `zone_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_price` (
  `id_zone_pl` int(11) NOT NULL AUTO_INCREMENT,
  `zpl_date_i` datetime DEFAULT NULL,
  `zpl_date_f` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `id_user_created` int(11) DEFAULT NULL,
  `id_user_updated` int(11) DEFAULT NULL,
  `id_Zone` int(11) DEFAULT NULL,
  `id_plf` int(11) DEFAULT NULL,
  `if_plf` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_zone_pl`),
  KEY `FKDEBEC6F630B5C2E3` (`id_user_created`),
  KEY `FKDEBEC6F662BFEBFC` (`id_Zone`),
  KEY `FKDEBEC6F6E56E24B6` (`id_user_updated`),
  KEY `FKDEBEC6F6105ACA65` (`id_plf`),
  KEY `FKDEBEC6F61076F967` (`if_plf`),
  CONSTRAINT `FKDEBEC6F6105ACA65` FOREIGN KEY (`id_plf`) REFERENCES `price_list_factory` (`id_plf`),
  CONSTRAINT `FKDEBEC6F61076F967` FOREIGN KEY (`if_plf`) REFERENCES `price_list_factory` (`id_plf`),
  CONSTRAINT `FKDEBEC6F630B5C2E3` FOREIGN KEY (`id_user_created`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKDEBEC6F662BFEBFC` FOREIGN KEY (`id_Zone`) REFERENCES `zone` (`id_Zone`),
  CONSTRAINT `FKDEBEC6F6E56E24B6` FOREIGN KEY (`id_user_updated`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_price`
--

LOCK TABLES `zone_price` WRITE;
/*!40000 ALTER TABLE `zone_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'travalvai'
--

--
-- Dumping routines for database 'travalvai'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-20 14:19:24
