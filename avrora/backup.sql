-- MySQL dump 10.11
--
-- Host: localhost    Database: avrora
-- ------------------------------------------------------
-- Server version	5.0.67-0ubuntu6

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
-- Table structure for table `accessories`
--

DROP TABLE IF EXISTS `accessories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `accessories` (
  `item_id` int(11) default NULL,
  `accessory_id` int(11) default NULL,
  `count` int(11) default '1',
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `accessories`
--

LOCK TABLES `accessories` WRITE;
/*!40000 ALTER TABLE `accessories` DISABLE KEYS */;
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (10,9,1,1);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (11,9,1,2);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (11,2,1,3);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (10,2,1,4);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (16,15,1,5);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (17,15,1,6);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (20,18,1,7);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (21,18,1,8);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (20,19,1,9);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (22,19,1,10);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (24,32,1,11);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (25,32,1,12);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (28,32,1,13);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (29,32,1,14);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (30,32,1,15);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (24,33,1,16);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (25,33,1,17);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (28,33,1,18);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (29,33,1,19);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (30,33,1,20);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (39,36,NULL,42);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (39,37,NULL,43);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (38,35,1,50);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (38,36,1,51);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (38,37,1,52);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (45,40,1,63);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (45,41,1,64);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (45,42,1,65);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (45,43,1,66);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (45,44,1,67);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (47,41,1,70);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (47,40,1,71);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (46,42,1,72);
INSERT INTO `accessories` (`item_id`, `accessory_id`, `count`, `id`) VALUES (46,43,1,73);
/*!40000 ALTER TABLE `accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `crypted_password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `active` tinyint(1) default '1',
  `role_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `admin` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`, `login`, `email`, `crypted_password`, `salt`, `active`, `role_id`, `created_at`, `updated_at`, `admin`) VALUES (1,'admin','admin@admin.lv','edd0f045d5e41e402190dca74c07251621ad317c','527c34b49c03306a8f54d38d7de2c0b724dded39',1,NULL,'2009-10-08 15:22:44','2010-03-09 17:14:31',1);
INSERT INTO `admins` (`id`, `login`, `email`, `crypted_password`, `salt`, `active`, `role_id`, `created_at`, `updated_at`, `admin`) VALUES (2,'balepc','a@b.cd','ca95f91742f7b3f7203f556672ae2f523ff4d266','f2e065e4a8119c23c279c89ef6c19b6b27cd0909',1,-1,'2010-02-08 12:17:57','2010-03-09 17:18:40',1);
INSERT INTO `admins` (`id`, `login`, `email`, `crypted_password`, `salt`, `active`, `role_id`, `created_at`, `updated_at`, `admin`) VALUES (3,'someuser','ads@sfdsf.lv','633f9503af2c3b2d279e9106e7c32933232decd7','530941b6b4331b82a57abd9e5398a2c140daeaed',1,NULL,'2010-03-09 17:19:06','2010-03-09 17:19:06',0);
INSERT INTO `admins` (`id`, `login`, `email`, `crypted_password`, `salt`, `active`, `role_id`, `created_at`, `updated_at`, `admin`) VALUES (4,'aeantonov','aeantonov@mail.ru','d21c4ca8ee97a55608bc6cf6136cd747f8429e5a','2408d7e13f3ef6f6e0b42c551f37549312e34f21',1,NULL,'2010-03-16 12:31:42','2010-03-16 12:31:42',0);
INSERT INTO `admins` (`id`, `login`, `email`, `crypted_password`, `salt`, `active`, `role_id`, `created_at`, `updated_at`, `admin`) VALUES (5,'user1','user1@user.com','e0a9b96971a8825a98517e81512617db6be73d53','2c3f908899802fcba1f100fbdb1767a6f99837e2',1,NULL,'2010-03-16 12:46:14','2010-03-16 12:46:14',0);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `parent_id` int(11) default NULL,
  `lft` int(11) default NULL,
  `rgt` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `parent_id`, `lft`, `rgt`, `created_at`, `updated_at`, `description`) VALUES (116,'Лабораторное оборудование для перемешивания и измельчения проб при пробоподготовке',NULL,1,16,'2010-02-18 10:08:20','2010-02-18 10:08:20','');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `lft`, `rgt`, `created_at`, `updated_at`, `description`) VALUES (117,'Лабораторные миксеры',116,2,3,'2010-02-18 10:09:18','2010-02-18 10:09:18','');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `lft`, `rgt`, `created_at`, `updated_at`, `description`) VALUES (118,'Лабораторные шейкеры',116,4,5,'2010-02-18 10:09:44','2010-02-18 10:09:44','');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `lft`, `rgt`, `created_at`, `updated_at`, `description`) VALUES (119,'Лабораторные мельницы',116,6,7,'2010-02-18 10:10:14','2010-02-18 10:10:14','');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `lft`, `rgt`, `created_at`, `updated_at`, `description`) VALUES (120,'Мешалки',116,8,11,'2010-02-18 10:10:32','2010-02-18 10:10:32','');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `lft`, `rgt`, `created_at`, `updated_at`, `description`) VALUES (121,'Лабораторные магнитные мешалки',120,9,10,'2010-02-18 10:11:02','2010-02-18 10:11:02','');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `lft`, `rgt`, `created_at`, `updated_at`, `description`) VALUES (122,'Аксессуары',116,12,13,'2010-02-18 10:11:49','2010-02-18 10:11:49','');
INSERT INTO `categories` (`id`, `name`, `parent_id`, `lft`, `rgt`, `created_at`, `updated_at`, `description`) VALUES (124,'Лабораторный комплекс',116,14,15,'2010-03-16 07:39:07','2010-03-16 07:39:07','');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `www` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`, `www`) VALUES (42,'IKA','2010-02-16 07:52:28','2010-02-16 07:52:28','www.ika.net');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complectation`
--

DROP TABLE IF EXISTS `complectation`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `complectation` (
  `item_id` int(11) default NULL,
  `complectation_id` int(11) default NULL,
  `count` int(11) default '1',
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `complectation`
--

LOCK TABLES `complectation` WRITE;
/*!40000 ALTER TABLE `complectation` DISABLE KEYS */;
INSERT INTO `complectation` (`item_id`, `complectation_id`, `count`, `id`) VALUES (8,4,1,1);
INSERT INTO `complectation` (`item_id`, `complectation_id`, `count`, `id`) VALUES (8,6,1,2);
INSERT INTO `complectation` (`item_id`, `complectation_id`, `count`, `id`) VALUES (34,33,10,5);
INSERT INTO `complectation` (`item_id`, `complectation_id`, `count`, `id`) VALUES (34,32,1,6);
INSERT INTO `complectation` (`item_id`, `complectation_id`, `count`, `id`) VALUES (47,33,1,12);
INSERT INTO `complectation` (`item_id`, `complectation_id`, `count`, `id`) VALUES (47,34,1,13);
INSERT INTO `complectation` (`item_id`, `complectation_id`, `count`, `id`) VALUES (46,32,1,14);
INSERT INTO `complectation` (`item_id`, `complectation_id`, `count`, `id`) VALUES (46,33,1,15);
INSERT INTO `complectation` (`item_id`, `complectation_id`, `count`, `id`) VALUES (46,34,1,16);
INSERT INTO `complectation` (`item_id`, `complectation_id`, `count`, `id`) VALUES (46,45,1,17);
INSERT INTO `complectation` (`item_id`, `complectation_id`, `count`, `id`) VALUES (46,38,1,18);
/*!40000 ALTER TABLE `complectation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (1,'Германия','2009-10-14 11:50:25','2009-10-14 11:50:25');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (2,'Чехия','2009-10-14 13:53:35','2009-10-14 13:53:35');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (3,'Нидерланды','2009-10-14 13:54:13','2009-10-14 13:54:13');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (4,'Англия','2009-10-14 13:54:38','2009-10-14 13:54:38');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (5,'Франция','2009-10-14 13:54:58','2009-10-14 13:54:58');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (6,'США','2009-10-14 13:55:09','2009-10-14 13:55:09');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (7,'Дания','2009-10-14 13:55:26','2009-10-14 13:55:26');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (8,'Япония','2009-10-14 13:55:43','2009-10-14 13:55:43');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (9,'Швейцария','2009-10-14 13:56:21','2009-10-14 13:56:21');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (10,'Бельгия','2009-10-14 13:56:44','2009-10-14 13:56:44');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (11,'Италия','2009-10-14 13:57:00','2009-10-14 13:57:00');
INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (12,'Австралия','2009-10-14 13:57:19','2009-10-14 13:57:19');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `currencies` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` (`id`, `name`, `created_at`, `updated_at`) VALUES (1,'LVL','2009-10-15 14:19:30','2009-10-15 14:19:30');
INSERT INTO `currencies` (`id`, `name`, `created_at`, `updated_at`) VALUES (2,'USD','2009-10-15 14:20:33','2009-10-15 14:20:33');
INSERT INTO `currencies` (`id`, `name`, `created_at`, `updated_at`) VALUES (3,'EUR','2009-10-15 14:20:45','2009-10-15 14:20:45');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL auto_increment,
  `document_type` int(11) default NULL,
  `valid_till` date default NULL,
  `item_id` int(11) NOT NULL,
  `document_file_name` varchar(255) default NULL,
  `document_content_type` varchar(255) default NULL,
  `document_file_size` int(11) default NULL,
  `document_updated_at` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (14,1,NULL,32,'MS_3_aww.pdf','application/pdf',1172635,'2010-02-18 10:39:07','2010-02-18 10:39:08','2010-02-18 10:39:08');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (15,4,NULL,32,'Otkaznoe_pismo.jpg','image/pjpeg',146726,'2010-02-18 10:39:08','2010-02-18 10:39:08','2010-02-18 10:39:08');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (16,1,NULL,33,'MS_3_aww.pdf','application/pdf',1172635,'2010-02-18 10:45:21','2010-02-18 10:45:21','2010-02-18 10:45:21');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (17,4,NULL,33,'Otkaznoe_pismo.jpg','image/pjpeg',146726,'2010-02-18 10:45:21','2010-02-18 10:45:21','2010-02-18 10:45:21');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (18,1,'2010-12-31',34,'Lab_Dancer_aww.pdf','application/pdf',538479,'2010-02-18 13:02:19','2010-02-18 13:02:19','2010-03-09 17:21:42');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (19,4,NULL,34,'Otkaznoe_pismo.jpg','image/pjpeg',146726,'2010-02-18 13:02:19','2010-02-18 13:02:19','2010-02-18 13:02:19');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (20,1,NULL,38,'A11_basic_aww.pdf','application/pdf',561976,'2010-03-12 12:57:34','2010-03-12 12:57:34','2010-03-12 12:57:34');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (21,4,NULL,38,'op.pdf','application/pdf',201111,'2010-03-12 12:57:34','2010-03-12 12:57:34','2010-03-12 13:02:04');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (23,3,NULL,36,'acrobat.gif','image/gif',2170,'2010-03-15 07:48:35','2010-03-15 07:48:35','2010-03-15 07:48:35');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (24,4,NULL,45,'op_1_.pdf','application/pdf',201111,'2010-03-16 07:33:47','2010-03-16 07:33:47','2010-03-16 07:33:47');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (25,3,NULL,45,'_-R.pdf','application/pdf',273473,'2010-03-16 07:33:47','2010-03-16 07:33:47','2010-03-16 07:33:47');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (26,1,NULL,46,'Africa_SHS.doc','application/msword',832512,'2010-03-16 07:49:09','2010-03-16 07:49:09','2010-03-16 07:49:09');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (27,4,NULL,46,'op.pdf','application/pdf',201111,'2010-03-16 07:49:09','2010-03-16 07:49:09','2010-03-16 07:49:09');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (28,2,NULL,46,'_.tif','image/tiff',481114,'2010-03-16 07:49:09','2010-03-16 07:49:09','2010-03-16 07:49:09');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (29,4,NULL,47,'op.pdf','application/pdf',201111,'2010-03-16 12:34:53','2010-03-16 12:34:53','2010-03-16 12:34:53');
INSERT INTO `documents` (`id`, `document_type`, `valid_till`, `item_id`, `document_file_name`, `document_content_type`, `document_file_size`, `document_updated_at`, `created_at`, `updated_at`) VALUES (30,1,NULL,47,'From.doc','application/msword',33792,'2010-03-16 12:34:53','2010-03-16 12:34:53','2010-03-16 12:34:53');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `images` (
  `id` int(11) NOT NULL auto_increment,
  `item_id` int(11) default NULL,
  `image_data_file_name` varchar(255) default NULL,
  `image_data_content_type` varchar(255) default NULL,
  `image_data_file_size` int(11) default NULL,
  `image_data_updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `item_id`, `image_data_file_name`, `image_data_content_type`, `image_data_file_size`, `image_data_updated_at`) VALUES (6,7,'1603600_1.jpg','image/pjpeg',15914,'2009-10-27 13:01:15');
INSERT INTO `images` (`id`, `item_id`, `image_data_file_name`, `image_data_content_type`, `image_data_file_size`, `image_data_updated_at`) VALUES (20,32,'MS_3.bmp','image/bmp',208854,'2010-02-18 10:34:41');
INSERT INTO `images` (`id`, `item_id`, `image_data_file_name`, `image_data_content_type`, `image_data_file_size`, `image_data_updated_at`) VALUES (21,33,'MS_3.bmp','image/bmp',208854,'2010-02-18 10:43:18');
INSERT INTO `images` (`id`, `item_id`, `image_data_file_name`, `image_data_content_type`, `image_data_file_size`, `image_data_updated_at`) VALUES (22,34,'Lab_dancer.bmp','image/bmp',145334,'2010-02-18 13:01:31');
INSERT INTO `images` (`id`, `item_id`, `image_data_file_name`, `image_data_content_type`, `image_data_file_size`, `image_data_updated_at`) VALUES (23,38,'_11_basic.bmp','image/bmp',486974,'2010-03-12 12:44:43');
INSERT INTO `images` (`id`, `item_id`, `image_data_file_name`, `image_data_content_type`, `image_data_file_size`, `image_data_updated_at`) VALUES (24,45,'DSC05283.JPG','image/pjpeg',3230091,'2010-03-16 07:32:12');
INSERT INTO `images` (`id`, `item_id`, `image_data_file_name`, `image_data_content_type`, `image_data_file_size`, `image_data_updated_at`) VALUES (25,46,'Full_20AFRICA_20System_20600_20wide1.bmp','image/bmp',482454,'2010-03-16 07:49:09');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `items` (
  `id` int(11) NOT NULL auto_increment,
  `category_id` int(11) default NULL,
  `model` varchar(255) default NULL,
  `code` varchar(255) default NULL,
  `article` varchar(255) default NULL,
  `description` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `image_id` int(11) default NULL,
  `country_id` int(11) default NULL,
  `company_id` int(11) default NULL,
  `shortdesc` varchar(255) default NULL,
  `accessory` tinyint(1) default '0',
  `hidden` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (24,122,'MS 1.21','','L001540','','2010-02-18 10:14:14','2010-02-18 10:14:14',NULL,1,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (25,122,'MS 1.34','','L001830','','2010-02-18 10:15:33','2010-02-18 10:15:33',NULL,1,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (26,122,'MS 1.32','','L001850','','2010-02-18 10:16:47','2010-02-18 10:16:47',NULL,1,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (27,122,'MS 1.31','','L001840','','2010-02-18 10:17:47','2010-02-18 10:17:47',NULL,1,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (28,122,'MS 3.1','','3426300','','2010-02-18 10:19:15','2010-02-18 10:19:15',NULL,1,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (29,122,'MS 3.3','','3426600','','2010-02-18 10:20:34','2010-02-18 10:20:34',NULL,1,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (30,122,'MS 3.4','','3426400','','2010-02-18 10:22:05','2010-02-18 10:22:05',NULL,1,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (31,122,'MS 1.33','','L001860','','2010-02-18 10:22:59','2010-02-18 10:22:59',NULL,1,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (32,118,'MS 3 basic','8479820000','3617000','<p style=\"FONT-FAMILY: \"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Компактный шейкер предназначен для работы со всеми небольшими сосудами и титрационными микропланшетами.</span></span></p>\r\n<p>&nbsp;</p>','2010-02-18 10:31:29','2010-02-18 10:31:29',NULL,1,42,'220B,50Гц',0,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (33,118,'MS 3 digital','8479820000','3319000','<p class=\"MsoNormal\" style=\"line-height: 140%; margin: 0cm 0cm 12pt;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Компактный шейкер предназначен для работы со всеми небольшими сосудами и титрационными микропланшетами.</span></span></p>','2010-02-18 10:42:47','2010-02-18 10:43:18',NULL,1,42,'220B,50Гц',0,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (34,118,'Lab Dancer','8479820000','3365000','<p><span style=\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\"><span style=\"color: #303030;\"><span style=\"font-size: small;\">Предназначен для перемешивания небольших тестовых<span style=\"mso-spacerun: yes;\">&nbsp; </span>образцов. </span></span></span></p>','2010-02-18 13:00:16','2010-02-18 13:00:16',NULL,1,42,'220B,50Гц',0,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (35,122,' Контейнер A 11.4','','12311121','','2010-03-12 12:30:01','2010-03-12 12:30:01',NULL,1,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (36,122,'Нож A 11.2','','656577','','2010-03-12 12:30:55','2010-03-12 12:51:20',NULL,1,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (37,122,'Нож A 11.3','','1321321231','','2010-03-12 12:31:37','2010-03-12 13:48:05',NULL,1,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (38,119,'A 11 basic','8479820000','2900000','<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Мельница с порционной загрузкой предназначена для двух процедур измельчения</span></span>.</p>','2010-03-12 12:42:55','2010-03-12 12:42:55',NULL,1,42,'220B,50Гц',0,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (39,120,'TEST 1','11223344','22331144','','2010-03-12 13:31:41','2010-03-12 13:31:41',NULL,12,42,'test',0,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (40,122,'Муфта 11.7','','12333453','','2010-03-16 07:24:08','2010-03-16 07:24:08',NULL,6,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (41,122,'Муфта 11.8','','97875','','2010-03-16 07:24:40','2010-03-16 07:25:56',NULL,6,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (42,122,'Муфта 11.9','','54327678','','2010-03-16 07:25:32','2010-03-16 07:25:32',NULL,6,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (43,122,'Муфтф 11.99','','754545345','','2010-03-16 07:26:30','2010-03-16 07:26:30',NULL,6,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (44,122,'Муфта 11.87','','988566465','','2010-03-16 07:27:17','2010-03-16 07:27:17',NULL,6,42,'',1,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (45,118,'SSSSS-675','84294720000','67456453378','<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Предназначен для взбалтывания.</span></span></p>','2010-03-16 07:29:58','2010-03-16 07:29:58',NULL,6,42,'220 В, 50/60 Гц',0,0);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (46,124,'FGhfhuyuh - 8665564','6576576578686','23456','<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Универсальный лабораторный комплекс предназначенный для подготовки пробы к анализу.</span></span></p>','2010-03-16 07:40:52','2010-03-16 12:47:14',NULL,1,42,'220 В, 50/60 Гц',0,1);
INSERT INTO `items` (`id`, `category_id`, `model`, `code`, `article`, `description`, `created_at`, `updated_at`, `image_id`, `country_id`, `company_id`, `shortdesc`, `accessory`, `hidden`) VALUES (47,118,'ffff-789','4535353543434','EEE45453','<p>hgkjhgjhkfghfhgfhgfhgfhghfgf</p>','2010-03-16 12:33:08','2010-03-16 12:33:08',NULL,12,42,'220B,50Гц',0,1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_standards`
--

DROP TABLE IF EXISTS `items_standards`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `items_standards` (
  `item_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `items_standards`
--

LOCK TABLES `items_standards` WRITE;
/*!40000 ALTER TABLE `items_standards` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_standards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_translations`
--

DROP TABLE IF EXISTS `model_translations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `model_translations` (
  `id` int(11) NOT NULL auto_increment,
  `translateable_type` varchar(255) NOT NULL,
  `translateable_id` int(11) NOT NULL,
  `field` varchar(255) default NULL,
  `locale` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  `text` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `model_translations`
--

LOCK TABLES `model_translations` WRITE;
/*!40000 ALTER TABLE `model_translations` DISABLE KEYS */;
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (1,'Country',1,'name','en','Germany',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (2,'Country',2,'name','en','Czech Republic',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (3,'Country',3,'name','en','Netherlands',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (4,'Country',4,'name','en','United Kingdom',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (5,'Country',5,'name','en','France',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (6,'Country',6,'name','en','USA',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (7,'Country',7,'name','en','Denmark',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (8,'Country',8,'name','en','Japan',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (9,'Country',9,'name','en','Swaziland',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (10,'Country',10,'name','en','Belgium',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (11,'Country',11,'name','en','Italy',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (12,'Country',12,'name','en','Australia',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (13,'Category',84,'name','en','Laboratory furniture',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (14,'Category',87,'name','en','Ecology',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (15,'Category',88,'name','en','Flueblocks',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (16,'Item',5,'model','en','Model #1',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (17,'Category',23,'name','en','Mitsubishi Chemical devices',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (18,'Category',26,'name','en','-',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (19,'Category',6,'name','en','Devices for petrochemistry',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (20,'Category',21,'name','en','Elemental composition',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (21,'Attribute',5,'description','en',NULL,'With Kit: Accessories Art Nr 600-0034=1st; Chemistry Kit Art 650-0032 =1st; Chemistry Kit Art 650-0032.1=1шт; Sample preparation Kit Art 650-0022; Vial Kit Art 055058; IonPac AS17, Analytical column Art 055682=1st; Kit of Cups Art 5000429=100pcs; Injection needle Art 160116=1st; Seal set for inert pump head Art 161020=1st; Pistonrinse seal Art 055870=10st; Rotary cooling unit Art 6810.4100=1st; Mainboard ASI-100 Art 6810.1800=1st');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (22,'Item',4,'model','en','850 Professional',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (23,'Category',81,'name','en','Thermostats and cryostats',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (24,'Category',89,'name','en','Laboratory information systems',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (25,'Category',74,'name','en','Brookfield Viscometers',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (26,'Category',29,'name','en','The test chamber and vibrating',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (27,'Category',58,'name','en','General laboratory equipment',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (28,'Category',48,'name','en','Instruments and equipment Anton Paar',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (29,'Category',45,'name','en','Chromatographs and spectrometers \"Varian\"',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (30,'Category',7,'name','en','Water and sediment',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (31,'Category',8,'name','en','Flash',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (32,'Category',9,'name','en','Viscosity',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (33,'Category',10,'name','en','Detonation and combustion',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (34,'Category',92,'name','en','Other petroleum analyzers',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (35,'Category',22,'name','en','Other methods',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (36,'Category',11,'name','en','Test bitumen',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (37,'Category',12,'name','en','Test oils',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (38,'Category',13,'name','en','Test lubricants',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (39,'Category',14,'name','en','Corrosion',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (40,'Category',15,'name','en','Penetration',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (41,'Category',16,'name','en','Density',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (42,'Category',17,'name','en','Tribology',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (43,'Category',18,'name','en','Fractional composition',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (44,'Category',19,'name','en','Cold behavior',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (45,'Category',20,'name','en','Color',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (46,'Category',93,'name','en','Chromatography',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (47,'Attribute',2,'description','en',NULL,'With Kit: Accessories Art Nr 600-0034 - 1; Chemistry Kit Art 650-0032 - 1; Chemistry Kit Art 650-0032.1 - 1; Sample preparation Kit Art 650-0022; Vial Kit Art 055058; IonPac AS17, Analytical column Art 055682 - 1; Kit of Cups Art 5000429 - 100pcs; Injection needle Art 160116 - 1; Seal set for inert pump head Art 161020 - 1; Pistonrinse seal Art 055870 - 10; Rotary cooling unit Art 6810.4100 - 1; Mainboard ASI-100 Art 6810.1800 - 1.');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (48,'Attribute',4,'description','en',NULL,'With Kit: Accessories Art Nr 600-0034; Chemistry Kit Art 650-0032; Chemistry Kit Art 650-0032.1; Sample preparation Kit Art 650-0022; Set of columns Art.046xxx-053xxx.\r\n\r\n');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (49,'Item',3,'model','en','ARACUS AAA',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (50,'Attribute',3,'description','en',NULL,'Complete with blocks and accessories to start');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (51,'Item',2,'model','en','ASE 200',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (52,'Standard',1,'name','en','ASTM',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (53,'Standard',2,'name','en','ASTM D 56',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (54,'Standard',3,'name','en','ASTM D 86',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (55,'Standard',4,'name','en','ASTM D 87',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (56,'Standard',5,'name','en','ASTM D 91',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (57,'Standard',6,'name','en','ASTM D 92',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (58,'Standard',7,'name','en','ASTM D 93',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (59,'Standard',8,'name','en','ASTM D 97',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (60,'Standard',9,'name','en','ASTM D 113',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (61,'Standard',10,'name','en','ASTM D 130',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (62,'Standard',11,'name','en','ASTM D 156',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (63,'Standard',12,'name','en','ASTM D 189',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (64,'Standard',13,'name','en','ASTM D 217',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (65,'Standard',14,'name','en','ASTM D 240',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (66,'Standard',15,'name','en','ASTM D 287',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (67,'Standard',16,'name','en','ASTM D 323',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (68,'Standard',17,'name','en','ASTM D 381',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (69,'Standard',18,'name','en','ASTM D 445',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (70,'Standard',19,'name','en','ASTM D 446',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (71,'Standard',20,'name','en','ASTM D 473',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (72,'Standard',21,'name','en','ASTM D 482',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (73,'Standard',22,'name','en','ASTM D 483',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (74,'Standard',23,'name','en','ASTM D 524',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (75,'Standard',24,'name','en','ASTM D 525',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (76,'Standard',25,'name','en','ASTM D 611',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (77,'Standard',26,'name','en','ASTM D 613',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (78,'Standard',27,'name','en','ASTM D 664',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (79,'Standard',28,'name','en','ASTM D 873',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (80,'Standard',29,'name','en','ASTM D 892',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (81,'Standard',30,'name','en','ASTM D 893',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (82,'Standard',31,'name','en','ASTM D 909',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (83,'Standard',32,'name','en','ASTM D 937',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (84,'Standard',33,'name','en','ASTM D 943',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (85,'Standard',34,'name','en','ASTM D 972',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (86,'Standard',35,'name','en','ASTM D 1019',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (87,'Standard',36,'name','en','ASTM D 1092',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (88,'Standard',37,'name','en','ASTM D 1159',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (89,'Standard',38,'name','en','ASTM D 1160',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (90,'Standard',39,'name','en','ASTM D 1177',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (91,'Standard',40,'name','en','ASTM D 1209',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (92,'Standard',41,'name','en','ASTM D 1264',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (93,'Standard',42,'name','en','ASTM D 1267',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (94,'Standard',43,'name','en','ASTM D 1298',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (95,'Standard',44,'name','en','ASTM D 1319',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (96,'Standard',45,'name','en','ASTM D 1321',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (97,'Standard',46,'name','en','ASTM D 1322',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (98,'Standard',47,'name','en','ASTM D 1401',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (99,'Standard',48,'name','en','ASTM D 1500',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (100,'Standard',49,'name','en','ASTM D 1544',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (101,'Standard',50,'name','en','ASTM D 1552',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (102,'Standard',51,'name','en','ASTM D 1655',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (103,'Standard',52,'name','en','ASTM D 1657',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (104,'Standard',53,'name','en','ASTM D 1742',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (105,'Standard',54,'name','en','ASTM D 1744',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (106,'Standard',55,'name','en','ASTM D 1754',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (107,'Standard',56,'name','en','ASTM D 1796',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (108,'Standard',57,'name','en','ASTM D 1837',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (109,'Standard',58,'name','en','ASTM D 1838',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (110,'Standard',59,'name','en','ASTM D 2158',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (111,'Standard',60,'name','en','ASTM D 2171',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (112,'Standard',61,'name','en','ASTM D 2274',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (113,'Standard',62,'name','en','ASTM D 2384',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (114,'Standard',63,'name','en','ASTM D 2386',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (115,'Standard',64,'name','en','ASTM D 2398',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (116,'Standard',65,'name','en','ASTM D 2420',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (117,'Standard',66,'name','en','ASTM D 2440',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (118,'Standard',67,'name','en','ASTM D 2500',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (119,'Standard',68,'name','en','ASTM D 2595',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (120,'Standard',69,'name','en','ASTM D 2622',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (121,'Standard',70,'name','en','ASTM D 2624',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (122,'Standard',71,'name','en','ASTM D 2699',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (123,'Standard',72,'name','en','ASTM D 2700',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (124,'Standard',73,'name','en','ASTM D 2784',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (125,'Standard',74,'name','en','ASTM D 2872',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (126,'Standard',75,'name','en','ASTM D 2878',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (127,'Standard',76,'name','en','ASTM D 2887',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (128,'Standard',77,'name','en','ASTM D 2892',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (129,'Standard',78,'name','en','ASTM D 2893',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (130,'Standard',79,'name','en','ASTM D 2896',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (131,'Standard',80,'name','en','ASTM D 2983',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (132,'Standard',81,'name','en','ASTM D 3227',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (133,'Standard',82,'name','en','ASTM D 3230',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (134,'Standard',83,'name','en','ASTM D 3241',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (135,'Standard',84,'name','en','ASTM D 3242',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (136,'Standard',85,'name','en','ASTM D 3278',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (137,'Standard',86,'name','en','ASTM D 3606',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (138,'Standard',87,'name','en','ASTM D 3828',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (139,'Standard',88,'name','en','ASTM D 3829',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (140,'Standard',89,'name','en','ASTM D 3948',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (141,'Standard',90,'name','en','ASTM D 4052',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (142,'Standard',91,'name','en','ASTM D 4053',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (143,'Standard',92,'name','en','ASTM D 4206',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (144,'Standard',93,'name','en','ASTM D 4239',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (145,'Standard',94,'name','en','ASTM D 4294',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (146,'Standard',95,'name','en','ASTM D 4310',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (147,'Standard',96,'name','en','ASTM D 4377',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (148,'Standard',97,'name','en','ASTM D 4530',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (149,'Standard',98,'name','en','ASTM D 4629',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (150,'Standard',99,'name','en','ASTM D 4636',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (151,'Standard',100,'name','en','ASTM D 4684',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (152,'Standard',101,'name','en','ASTM D 4815',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (153,'Standard',102,'name','en','ASTM D 4928',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (154,'Standard',103,'name','en','ASTM D 4929',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (155,'Standard',104,'name','en','ASTM D 4950',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (156,'Standard',105,'name','en','ASTM D 4951',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (157,'Standard',106,'name','en','ASTM D 4953',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (158,'Standard',107,'name','en','ASTM D 5001',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (159,'Standard',108,'name','en','ASTM D 5002',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (160,'Standard',109,'name','en','ASTM D 5016',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (161,'Standard',110,'name','en','ASTM D 5133',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (162,'Standard',111,'name','en','ASTM D 5184',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (163,'Standard',112,'name','en','ASTM D 5185',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (164,'Standard',113,'name','en','ASTM D 5191',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (165,'Standard',114,'name','en','ASTM D 5236',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (166,'Standard',115,'name','en','ASTM D 5291',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (167,'Standard',116,'name','en','ASTM D 5293',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (168,'Standard',117,'name','en','ASTM D 5307',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (169,'Standard',118,'name','en','ASTM D 5373',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (170,'Standard',119,'name','en','ASTM D 5386',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (171,'Standard',120,'name','en','ASTM D 5441',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (172,'Standard',121,'name','en','ASTM D 5453',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (173,'Standard',122,'name','en','ASTM D 5580',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (174,'Standard',123,'name','en','ASTM D 5599',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (175,'Standard',124,'name','en','ASTM D 5622',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (176,'Standard',125,'name','en','ASTM D 5800',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (177,'Standard',126,'name','en','ASTM D 5845',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (178,'Standard',127,'name','en','ASTM D 5901',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (179,'Standard',128,'name','en','ASTM D 5968',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (180,'Standard',129,'name','en','ASTM D 6074',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (181,'Standard',130,'name','en','ASTM D 6079',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (182,'Standard',131,'name','en','ASTM D 6082',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (183,'Standard',132,'name','en','ASTM D 6158',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (184,'Standard',133,'name','en','ASTM D 6277',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (185,'Standard',134,'name','en','ASTM D 6304',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (186,'Standard',135,'name','en','ASTM D 6371',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (187,'Standard',136,'name','en','ASTM D 6378',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (188,'Standard',137,'name','en','ASTM D 6667',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (189,'Standard',138,'name','en','ASTM D 7153',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (190,'Standard',139,'name','en','ASTM Е 28',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (191,'Standard',140,'name','en','ASTM Е 100',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (192,'Standard',141,'name','en','EN',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (193,'Standard',142,'name','en','EN 5',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (194,'Standard',143,'name','en','EN 12',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (195,'Standard',144,'name','en','EN 41',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (196,'Standard',145,'name','en','EN 116',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (197,'Standard',146,'name','en','EN 228',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (198,'Standard',147,'name','en','EN 238',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (199,'Standard',148,'name','en','EN 1427',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (200,'Standard',149,'name','en','EN 1557',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (201,'Standard',150,'name','en','EN 2160',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (202,'Standard',151,'name','en','EN 3675',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (203,'Standard',152,'name','en','EN 5165',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (204,'Standard',153,'name','en','EN 6245',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (205,'Standard',154,'name','en','EN 8754',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (206,'Standard',155,'name','en','EN 10370',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (207,'Standard',156,'name','en','EN 12156',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (208,'Standard',157,'name','en','EN 12177',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (209,'Standard',158,'name','en','EN 12185',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (210,'Standard',159,'name','en','EN 12205',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (211,'Standard',160,'name','en','EN 12937',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (212,'Standard',161,'name','en','EN 13016',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (213,'Standard',162,'name','en','EN 13132',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (214,'Standard',163,'name','en','EN 13736',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (215,'Standard',164,'name','en','EN 20846',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (216,'Standard',165,'name','en','EN 22719',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (217,'Standard',166,'name','en','EN 23015',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (218,'Standard',167,'name','en','EN 25163',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (219,'Standard',168,'name','en','ISO',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (220,'Standard',169,'name','en','ISO 1928',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (221,'Standard',170,'name','en','ISO 2137',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (222,'Standard',171,'name','en','ISO 2160',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (223,'Standard',172,'name','en','ISO 2592',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (224,'Standard',173,'name','en','ISO 2719',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (225,'Standard',174,'name','en','ISO 2977',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (226,'Standard',175,'name','en','ISO 3007',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (227,'Standard',176,'name','en','ISO 3013',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (228,'Standard',177,'name','en','ISO 3014',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (229,'Standard',178,'name','en','ISO 3015',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (230,'Standard',179,'name','en','ISO 3016',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (231,'Standard',180,'name','en','ISO 3104',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (232,'Standard',181,'name','en','ISO 3405',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (233,'Standard',182,'name','en','ISO 3675',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (234,'Standard',183,'name','en','ISO 3679',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (235,'Standard',184,'name','en','ISO 3680',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (236,'Standard',185,'name','en','ISO 3735',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (237,'Standard',186,'name','en','ISO 3841',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (238,'Standard',187,'name','en','ISO 3993',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (239,'Standard',188,'name','en','ISO 4260',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (240,'Standard',189,'name','en','ISO 4263',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (241,'Standard',190,'name','en','ISO 4625',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (242,'Standard',191,'name','en','ISO 4630',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (243,'Standard',192,'name','en','ISO 5163',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (244,'Standard',193,'name','en','ISO 5164',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (245,'Standard',194,'name','en','ISO 5165',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (246,'Standard',195,'name','en','ISO 6249',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (247,'Standard',196,'name','en','ISO 6251',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (248,'Standard',197,'name','en','ISO 6271',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (249,'Standard',198,'name','en','ISO 6614',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (250,'Standard',199,'name','en','ISO 6616',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (251,'Standard',200,'name','en','ISO 7536',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (252,'Standard',201,'name','en','ISO 8754',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (253,'Standard',202,'name','en','ISO 9038',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (254,'Standard',203,'name','en','ISO 9262',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (255,'Standard',204,'name','en','ISO 10370',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (256,'Standard',205,'name','en','ISO 12156',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (257,'Standard',206,'name','en','ISO 12205',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (258,'Standard',207,'name','en','ISO 13736',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (259,'Standard',208,'name','en','ISO 13757',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (260,'Standard',209,'name','en','ISO 14596',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (261,'Standard',210,'name','en','ISO 20846',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (262,'Standard',211,'name','en','IP',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (263,'Standard',212,'name','en','IP 13',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (264,'Standard',213,'name','en','IP 15',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (265,'Standard',214,'name','en','IP 16',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (266,'Standard',215,'name','en','IP 33',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (267,'Standard',216,'name','en','IP 34',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (268,'Standard',217,'name','en','IP 36',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (269,'Standard',218,'name','en','IP 40',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (270,'Standard',219,'name','en','IP 49',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (271,'Standard',220,'name','en','IP 50',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (272,'Standard',221,'name','en','IP 53',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (273,'Standard',222,'name','en','IP 55',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (274,'Standard',223,'name','en','IP 57',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (275,'Standard',224,'name','en','IP 58',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (276,'Standard',225,'name','en','IP 69',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (277,'Standard',226,'name','en','IP 71',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (278,'Standard',227,'name','en','IP 75',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (279,'Standard',228,'name','en','IP 80',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (280,'Standard',229,'name','en','IP 119',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (281,'Standard',230,'name','en','IP 123',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (282,'Standard',231,'name','en','IP 132',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (283,'Standard',232,'name','en','IP 138',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (284,'Standard',233,'name','en','IP 145',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (285,'Standard',234,'name','en','IP 146',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (286,'Standard',235,'name','en','IP 154',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (287,'Standard',236,'name','en','IP 160',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (288,'Standard',237,'name','en','IP 167',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (289,'Standard',238,'name','en','IP 170',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (290,'Standard',239,'name','en','IP 183',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (291,'Standard',240,'name','en','IP 183',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (292,'Standard',241,'name','en','IP 191',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (293,'Standard',242,'name','en','IP 195',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (294,'Standard',243,'name','en','IP 196',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (295,'Standard',244,'name','en','IP 215',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (296,'Standard',245,'name','en','IP 219',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (297,'Standard',246,'name','en','IP 227',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (298,'Standard',247,'name','en','IP 235',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (299,'Standard',248,'name','en','IP 243',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (300,'Standard',249,'name','en','IP 267',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (301,'Standard',250,'name','en','IP 303',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (302,'Standard',251,'name','en','IP 309',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (303,'Standard',252,'name','en','IP 323',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (304,'Standard',253,'name','en','IP 386',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (305,'Standard',254,'name','en','IP 481',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (306,'Standard',255,'name','en','IP 529',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (307,'Standard',256,'name','en','IP 2542',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (308,'Standard',257,'name','en','DIN',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (309,'Standard',258,'name','en','DIN 41',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (310,'Standard',259,'name','en','DIN 5033',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (311,'Standard',260,'name','en','DIN 6162',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (312,'Standard',261,'name','en','DIN 6174',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (313,'Standard',262,'name','en','DIN 51394',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (314,'Standard',263,'name','en','DIN 51411',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (315,'Standard',264,'name','en','DIN 51421',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (316,'Standard',265,'name','en','DIN 51428',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (317,'Standard',266,'name','en','DIN 51551',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (318,'Standard',267,'name','en','DIN 51562',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (319,'Standard',268,'name','en','DIN 51566',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (320,'Standard',269,'name','en','DIN 51570',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (321,'Standard',270,'name','en','DIN 51578',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (322,'Standard',271,'name','en','DIN 51579',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (323,'Standard',272,'name','en','DIN 51580',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (324,'Standard',273,'name','en','DIN 51586',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (325,'Standard',274,'name','en','DIN 51587',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (326,'Standard',275,'name','en','DIN 51599',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (327,'Standard',276,'name','en','DIN 51751',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (328,'Standard',277,'name','en','DIN 51754',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (329,'Standard',278,'name','en','DIN 51757',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (330,'Standard',279,'name','en','DIN 51758',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (331,'Standard',280,'name','en','DIN 51759',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (332,'Standard',281,'name','en','DIN 51780',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (333,'Standard',282,'name','en','DIN 51789',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (334,'Standard',283,'name','en','DIN 51793',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (335,'Standard',284,'name','en','DIN 51799',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (336,'Standard',285,'name','en','DIN 51804',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (337,'Standard',286,'name','en','DIN 51900',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (338,'Standard',287,'name','en','DIN 52010',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (339,'Standard',288,'name','en','DIN 52012',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (340,'Standard',289,'name','en','DIN 52013',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (341,'Standard',290,'name','en','GOST',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (342,'Standard',291,'name','en','GOST 33',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (343,'Standard',292,'name','en','GOST 511',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (344,'Standard',293,'name','en','GOST 1461',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (345,'Standard',294,'name','en','GOST 1567',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (346,'Standard',295,'name','en','GOST 1756',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (347,'Standard',296,'name','en','GOST 2177',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (348,'Standard',297,'name','en','GOST 3122',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (349,'Standard',298,'name','en','GOST 3338',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (350,'Standard',299,'name','en','GOST 4039',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (351,'Standard',300,'name','en','GOST 4333',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (352,'Standard',301,'name','en','GOST 4338',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (353,'Standard',302,'name','en','GOST 5066',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (354,'Standard',303,'name','en','GOST 5346',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (355,'Standard',304,'name','en','GOST 6356',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (356,'Standard',305,'name','en','GOST 8226',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (357,'Standard',306,'name','en','GOST 8489',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (358,'Standard',307,'name','en','GOST 11011',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (359,'Standard',308,'name','en','GOST 11065',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (360,'Standard',309,'name','en','GOST 11506',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (361,'Standard',310,'name','en','GOST 11507',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (362,'Standard',311,'name','en','GOST 19932',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (363,'Standard',312,'name','en','GOST 20284',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (364,'Standard',313,'name','en','GOST 20287',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (365,'Standard',314,'name','en','GOST 22254',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (366,'Standard',315,'name','en','GOST 25771',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (367,'Standard',316,'name','en','GOST 26950',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (368,'Standard',317,'name','en','GOST 51105',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (369,'Standard',318,'name','en','GOST 51866',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (370,'Standard',319,'name','en','GOST 52050',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (371,'Standard',320,'name','en','GOST 52368',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (372,'Standard',321,'name','en','FTM',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (373,'Standard',322,'name','en','FTM 791/322',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (374,'Standard',323,'name','en','FTM 791/351',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (375,'Standard',324,'name','en','FTM 791/1402',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (376,'Standard',325,'name','en','FTM 791/3201',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (377,'Standard',326,'name','en','FTM 791/3211',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (378,'Standard',327,'name','en','FTM 791/3213',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (379,'Standard',328,'name','en','FTM 791/3252',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (380,'Standard',329,'name','en','FTM 791/3352',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (381,'Standard',330,'name','en','FTM 791/3354',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (382,'Standard',331,'name','en','FTM 791/5307',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (383,'Standard',332,'name','en','FTM 791/5308',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (384,'Standard',333,'name','en','SAE J300',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (385,'Standard',334,'name','en','CEC L18A/30',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (386,'Standard',335,'name','en','GPA 2140',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (387,'Standard',336,'name','en','DefStan 91-91',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (388,'Standard',337,'name','en','AOCS Cc13e',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (389,'Standard',338,'name','en','Ph EUR',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (390,'Category',8,'description','en',NULL,'');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (391,'Category',81,'description','en',NULL,'');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (392,'Item',4,'description','en',NULL,'');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (393,'Item',4,'shortdesc','en','230V, 50/60Hz',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (394,'Item',4,'title','en','Chromatographic System',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (395,'Item',3,'description','en',NULL,'');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (396,'Item',3,'shortdesc','en','230V, 50/60Hz',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (397,'Item',3,'title','en','Chromatographic System',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (398,'Item',2,'description','en',NULL,'');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (399,'Item',2,'shortdesc','en','230V, 50/60 Hz',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (400,'Item',2,'title','en','Modular analyzer of element structure Oil',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (401,'Item',5,'description','en',NULL,'');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (402,'Item',5,'shortdesc','en','',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (403,'Item',5,'title','en','Test item 1',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (404,'Item',6,'model','en','ContrAA 300',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (405,'Item',6,'description','en',NULL,'');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (406,'Item',6,'shortdesc','en','230V, 50/60Hz',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (407,'Item',6,'title','en','The analyzer of element structure',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (408,'Attribute',6,'description','en',NULL,'With accessories: Autosampler AS 52, Art.Nr 810-60241 - 1st; VM-Kit Art Nr 810-60065-0 - 1st.');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (409,'Attribute',7,'description','en',NULL,'test');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (410,'Company',29,'name','en','B.I.E.G.',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (411,'Category',94,'name','en','',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (412,'Category',94,'description','en',NULL,'');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (413,'Page',2,'body','en',NULL,'<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\">Добро пожаловать !</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: jusity;\">Мы надеемся, что представленная здесь информация поможет Вам лучше ориентироваться в многообразии современного аналитического оборудования.<br />Наши специалисты будут рады:</p>\r\n<p style=\"text-align: jusity;\">&nbsp;</p>\r\n<ul>\r\n<li>помочь в подборе и комплектации Вашего заказа для решения конкретных задач, в строгом соответствии с Вашими требованиями</li>\r\n<li>организовать и провести обучение на фирме-производителе или на месте установки оборудования</li>\r\n<li> обеспечить гарантийное обслуживание и послегарантийный сервис</li>\r\n<li> оказать содействие в аккредитации лабораторий и испытательных центров</li>\r\n</ul>\r\n<p style=\"text-align: jusity;\"><br />C уважением и надеждой на долговременное сотрудничество ООО &laquo;АльянсТорг&raquo;</p>');
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (414,'Category',101,'name','en','Analizatoryi vsego na svete',NULL);
INSERT INTO `model_translations` (`id`, `translateable_type`, `translateable_id`, `field`, `locale`, `value`, `text`) VALUES (415,'Category',101,'description','en',NULL,'');
/*!40000 ALTER TABLE `model_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `page_type` int(11) default NULL,
  `body` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `page_type`, `body`, `created_at`, `updated_at`) VALUES (1,1,'<h2>О компании</h2>\r\n<p>ООО &laquo;Машпромэкспорт&raquo; специализируется на поставках, лизинге и сервисном обслуживании:</p>\r\n<ul>\r\n<li>сложного аналитического и испытательного оборудования,</li>\r\n<li>лабораторной мебели и другого общелабораторного оборудования для химико-аналитических лабораторий,</li>\r\n<li>лабораторий контроля качества и физического контроля различных отраслей промышленности.</li>\r\n</ul>\r\n<p>За время нашей работы поставлено тысячи единиц аналитического и испытательного оборудования, успешно работающих на предприятиях нефтедобычи и нефтепереработки, химической промышленности, предприятиях атомной и оборонной промышленности, строительной индустрии, в научно-исследовательских институтах и учебных учреждениях, косметической, пищевой и других отраслей промышленности России и стран ближнего и дальнего зарубежья.</p>\r\n<p>ООО \"Машпромэкспорт\" является прямым представительством и сервисным центром ведущих производителей лабораторного и испытательного оборудования и приборов, таких как:</p>\r\n<ul>\r\n<li>Varian (США),</li>\r\n<li>Oxford Instruments (Англия),</li>\r\n<li>Normalab Analis (Франция-Бельгия),</li>\r\n<li>Brookfield Laboratories (США),</li>\r\n<li>Anton Paar (Austria),</li>\r\n<li>WEISS Umwelttechnick (Германия) и некоторых других компаний.</li>\r\n</ul>\r\n<p>Это позволяет нашим заказчикам приобретать профессионально скомплектованное оборудование по ценам заводов-изготовителей с гарантийным и сервисным обслуживанием, которое осуществляют квалифицированные инженеры нашей фирмы на протяжении всего срока эксплуатации оборудования.</p>\r\n<p>Мы обеспечиваем:</p>\r\n<ul>\r\n<li>ввод в эксплуатацию поставляемого оборудования,</li>\r\n<li>обучение заказчиков на заводах-изготовителях и на местах эксплуатации оборудования,</li>\r\n<li>гарантийное и послегарантийное обслуживание,</li>\r\n<li>калибровку оборудования в нашем сервисном центре,</li>\r\n<li>поставку запасных частей и расходных материалов.</li>\r\n</ul>\r\n<p>Измерительное оборудование имеет сертификаты ГОССТАНДАРТа России об утверждении типа средств измерений и зарегистрированы в Государственном реестре средств измерений РФ. Оборудование и приборы, поставляемые нашей фирмой, позволяют проводить анализы в точном соответствии как с российскими (ГОСТ), так и с международными и национальными стандартами других стран (ISO, ASTM, EN, IP, DIN и др.).</p>\r\n<p>Мы готовы обсуждать с каждым клиентом различные условия оплаты, включая:</p>\r\n<ul>\r\n<li>гибкие системы скидок,</li>\r\n<li>рассрочки платежей,</li>\r\n<li>приобретение оборудования по лизингу,</li>\r\n<li>приобретение оборудования по прямым контрактам с заводами-изготовителями и другие удобные формы оплаты.</li>\r\n</ul>\r\n<p>Приглашаем к сотрудничеству дилеров и региональных представителей.</p>\r\n<p>Наши лицензии:</p>\r\n<ul>\r\n<li>на изготовление средств измерений - №12.1095-00</li>\r\n<li>на продажу средств измерений - №12.1164-00</li>\r\n<li>на лизинговую деятельность - №1479</li>\r\n</ul>','2009-10-13 15:26:33','2010-02-18 09:56:56');
INSERT INTO `pages` (`id`, `page_type`, `body`, `created_at`, `updated_at`) VALUES (2,0,'<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\">Добро пожаловать !</p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: jusity;\">Мы надеемся, что представленная здесь информация поможет Вам лучше ориентироваться в многообразии современного аналитического оборудования.<br />Наши специалисты будут рады:</p>\r\n<ul>\r\n<li>помочь в подборе и комплектации Вашего заказа для решения конкретных задач, в строгом соответствии с Вашими требованиями</li>\r\n<li>организовать и провести обучение на фирме-производителе или на месте установки оборудования</li>\r\n<li>обеспечить гарантийное обслуживание и послегарантийный сервис</li>\r\n<li>оказать содействие в аккредитации лабораторий и испытательных центров</li>\r\n</ul>\r\n<p style=\"text-align: jusity;\">&nbsp;</p>\r\n<p style=\"text-align: jusity;\">C уважением и надеждой на долговременное сотрудничество ООО &laquo;Машпромэкспорт&raquo;</p>','2009-10-13 15:26:33','2010-02-18 09:57:17');
INSERT INTO `pages` (`id`, `page_type`, `body`, `created_at`, `updated_at`) VALUES (3,2,'<h2>Контакты ООО &laquo;Машпромэкспорт&raquo;</h2>\r\n<p><strong>Адрес:</strong> 109428, г. Москва, Рязанский пр-кт, д. 39А, стр. 1</p>\r\n<p><strong>Банковские реквизиты:</strong></p>\r\n<p>ОГРН 5087746655640</p>\r\n<p>ИНН 7721642536, КПП 772101001</p>\r\n<p>Р/с 40702810800000004649 в Акционерный банк &laquo;Банк проектного финансирования&raquo;&raquo; (ЗАО), к/с 30101810400000000672, БИК 044585672</p>\r\n<p><strong>Генеральный директор:</strong> Уваров Владимир Викторович</p>\r\n<p><strong>Главный бухгалтер:</strong> Светлана Владимировна тел. +7(916)448-06-15</p>\r\n<p><strong>Юрист:</strong> Юлия тел. +7(916)032-26-96</p>','2009-10-13 15:26:33','2010-02-11 11:11:11');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_lists`
--

DROP TABLE IF EXISTS `price_lists`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `price_lists` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `pricelist_file_name` varchar(255) default NULL,
  `pricelist_content_type` varchar(255) default NULL,
  `pricelist_file_size` int(11) default NULL,
  `pricelist_updated_at` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `price_lists`
--

LOCK TABLES `price_lists` WRITE;
/*!40000 ALTER TABLE `price_lists` DISABLE KEYS */;
INSERT INTO `price_lists` (`id`, `name`, `pricelist_file_name`, `pricelist_content_type`, `pricelist_file_size`, `pricelist_updated_at`, `created_at`, `updated_at`) VALUES (1,'прайс лист','test_list.doc','application/msword',24064,'2010-02-09 15:47:34','2010-02-09 15:47:34','2010-02-09 15:47:34');
/*!40000 ALTER TABLE `price_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `random_images`
--

DROP TABLE IF EXISTS `random_images`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `random_images` (
  `id` int(11) NOT NULL auto_increment,
  `image_file_name` varchar(255) default NULL,
  `image_content_type` varchar(255) default NULL,
  `image_file_size` int(11) default NULL,
  `image_updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `random_images`
--

LOCK TABLES `random_images` WRITE;
/*!40000 ALTER TABLE `random_images` DISABLE KEYS */;
INSERT INTO `random_images` (`id`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES (7,'image2.jpg','image/jpeg',10574,'2009-10-15 21:11:29');
INSERT INTO `random_images` (`id`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES (9,'image3.jpg','image/jpeg',10224,'2009-10-15 21:11:52');
INSERT INTO `random_images` (`id`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES (10,'image1.jpg','image/jpeg',6638,'2009-10-15 21:12:12');
INSERT INTO `random_images` (`id`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES (11,'image4.PNG','image/png',68649,'2009-10-16 11:29:00');
INSERT INTO `random_images` (`id`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES (12,'image5.png','image/png',91933,'2009-10-16 11:29:06');
INSERT INTO `random_images` (`id`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES (13,'image6.png','image/png',104236,'2009-10-16 11:29:11');
INSERT INTO `random_images` (`id`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES (14,'image7.PNG','image/png',110366,'2009-10-16 11:29:17');
/*!40000 ALTER TABLE `random_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES ('20091006074421');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091006075130');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091006083306');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091006084019');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091006093546');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091006144526');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091007091836');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091007091857');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091007100604');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091007100610');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091007110626');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091008162224');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091009132450');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091009155603');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091009162431');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091009184246');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091012134259');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091012154226');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091013090001');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091013090301');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091013150714');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091014100058');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091014100358');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091014102402');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091014102407');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091014104338');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091014104704');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091014105543');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091014114545');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091014164420');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091015091947');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091015114806');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091016114206');
INSERT INTO `schema_migrations` (`version`) VALUES ('20091016144219');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100205134604');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100208090756');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100208091627');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100208111223');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100208221523');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100208222058');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100209143623');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100309090304');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100309102014');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100309103914');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100309121506');
INSERT INTO `schema_migrations` (`version`) VALUES ('20100309160852');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standards`
--

DROP TABLE IF EXISTS `standards`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `standards` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `is_group` tinyint(1) NOT NULL default '0',
  `group_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `standards`
--

LOCK TABLES `standards` WRITE;
/*!40000 ALTER TABLE `standards` DISABLE KEYS */;
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (1,'СТАНДАРТЫ - ASTM','2009-10-12 12:02:59','2009-10-12 12:02:59',1,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (2,'ASTM D 56','2009-10-12 12:02:59','2009-10-12 12:02:59',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (3,'ASTM D 86','2009-10-12 12:02:59','2009-10-12 12:02:59',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (4,'ASTM D 87','2009-10-12 12:02:59','2009-10-12 12:02:59',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (5,'ASTM D 91','2009-10-12 12:02:59','2009-10-12 12:02:59',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (6,'ASTM D 92','2009-10-12 12:03:00','2009-10-12 12:03:00',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (7,'ASTM D 93','2009-10-12 12:03:00','2009-10-12 12:03:00',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (8,'ASTM D 97','2009-10-12 12:03:00','2009-10-12 12:03:00',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (9,'ASTM D 113','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (10,'ASTM D 130','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (11,'ASTM D 156','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (12,'ASTM D 189','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (13,'ASTM D 217','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (14,'ASTM D 240','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (15,'ASTM D 287','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (16,'ASTM D 323','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (17,'ASTM D 381','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (18,'ASTM D 445','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (19,'ASTM D 446','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (20,'ASTM D 473','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (21,'ASTM D 482','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (22,'ASTM D 483','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (23,'ASTM D 524','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (24,'ASTM D 525','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (25,'ASTM D 611','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (26,'ASTM D 613','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (27,'ASTM D 664','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (28,'ASTM D 873','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (29,'ASTM D 892','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (30,'ASTM D 893','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (31,'ASTM D 909','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (32,'ASTM D 937','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (33,'ASTM D 943','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (34,'ASTM D 972','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (35,'ASTM D 1019','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (36,'ASTM D 1092','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (37,'ASTM D 1159','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (38,'ASTM D 1160','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (39,'ASTM D 1177','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (40,'ASTM D 1209','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (41,'ASTM D 1264','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (42,'ASTM D 1267','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (43,'ASTM D 1298','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (44,'ASTM D 1319','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (45,'ASTM D 1321','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (46,'ASTM D 1322','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (47,'ASTM D 1401','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (48,'ASTM D 1500','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (49,'ASTM D 1544','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (50,'ASTM D 1552','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (51,'ASTM D 1655','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (52,'ASTM D 1657','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (53,'ASTM D 1742','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (54,'ASTM D 1744','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (55,'ASTM D 1754','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (56,'ASTM D 1796','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (57,'ASTM D 1837','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (58,'ASTM D 1838','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (59,'ASTM D 2158','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (60,'ASTM D 2171','2009-10-12 12:03:01','2009-10-12 12:03:01',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (61,'ASTM D 2274','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (62,'ASTM D 2384','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (63,'ASTM D 2386','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (64,'ASTM D 2398','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (65,'ASTM D 2420','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (66,'ASTM D 2440','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (67,'ASTM D 2500','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (68,'ASTM D 2595','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (69,'ASTM D 2622','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (70,'ASTM D 2624','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (71,'ASTM D 2699','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (72,'ASTM D 2700','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (73,'ASTM D 2784','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (74,'ASTM D 2872','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (75,'ASTM D 2878','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (76,'ASTM D 2887','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (77,'ASTM D 2892','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (78,'ASTM D 2893','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (79,'ASTM D 2896','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (80,'ASTM D 2983','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (81,'ASTM D 3227','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (82,'ASTM D 3230','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (83,'ASTM D 3241','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (84,'ASTM D 3242','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (85,'ASTM D 3278','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (86,'ASTM D 3606','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (87,'ASTM D 3828','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (88,'ASTM D 3829','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (89,'ASTM D 3948','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (90,'ASTM D 4052','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (91,'ASTM D 4053','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (92,'ASTM D 4206','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (93,'ASTM D 4239','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (94,'ASTM D 4294','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (95,'ASTM D 4310','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (96,'ASTM D 4377','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (97,'ASTM D 4530','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (98,'ASTM D 4629','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (99,'ASTM D 4636','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (100,'ASTM D 4684','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (101,'ASTM D 4815','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (102,'ASTM D 4928','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (103,'ASTM D 4929','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (104,'ASTM D 4950','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (105,'ASTM D 4951','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (106,'ASTM D 4953','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (107,'ASTM D 5001','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (108,'ASTM D 5002','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (109,'ASTM D 5016','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (110,'ASTM D 5133','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (111,'ASTM D 5184','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (112,'ASTM D 5185','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (113,'ASTM D 5191','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (114,'ASTM D 5236','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (115,'ASTM D 5291','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (116,'ASTM D 5293','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (117,'ASTM D 5307','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (118,'ASTM D 5373','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (119,'ASTM D 5386','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (120,'ASTM D 5441','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (121,'ASTM D 5453','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (122,'ASTM D 5580','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (123,'ASTM D 5599','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (124,'ASTM D 5622','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (125,'ASTM D 5800','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (126,'ASTM D 5845','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (127,'ASTM D 5901','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (128,'ASTM D 5968','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (129,'ASTM D 6074','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (130,'ASTM D 6079','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (131,'ASTM D 6082','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (132,'ASTM D 6158','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (133,'ASTM D 6277','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (134,'ASTM D 6304','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (135,'ASTM D 6371','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (136,'ASTM D 6378','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (137,'ASTM D 6667','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (138,'ASTM D 7153','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (139,'ASTM Е 28','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (140,'ASTM Е 100','2009-10-12 12:03:02','2009-10-12 12:03:02',0,1);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (141,'СТАНДАРТЫ - EN','2009-10-12 12:03:02','2009-10-12 12:03:02',1,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (142,'EN 5','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (143,'EN 12','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (144,'EN 41','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (145,'EN 116','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (146,'EN 228','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (147,'EN 238','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (148,'EN 1427','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (149,'EN 1557','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (150,'EN 2160','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (151,'EN 3675','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (152,'EN 5165','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (153,'EN 6245','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (154,'EN 8754','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (155,'EN 10370','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (156,'EN 12156','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (157,'EN 12177','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (158,'EN 12185','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (159,'EN 12205','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (160,'EN 12937','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (161,'EN 13016','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (162,'EN 13132','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (163,'EN 13736','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (164,'EN 20846','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (165,'EN 22719','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (166,'EN 23015','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (167,'EN 25163','2009-10-12 12:03:02','2009-10-12 12:03:02',0,141);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (168,'СТАНДАРТЫ - ISO','2009-10-12 12:03:02','2009-10-12 12:03:02',1,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (169,'ISO 1928','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (170,'ISO 2137','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (171,'ISO 2160','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (172,'ISO 2592','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (173,'ISO 2719','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (174,'ISO 2977','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (175,'ISO 3007','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (176,'ISO 3013','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (177,'ISO 3014','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (178,'ISO 3015','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (179,'ISO 3016','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (180,'ISO 3104','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (181,'ISO 3405','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (182,'ISO 3675','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (183,'ISO 3679','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (184,'ISO 3680','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (185,'ISO 3735','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (186,'ISO 3841','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (187,'ISO 3993','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (188,'ISO 4260','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (189,'ISO 4263','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (190,'ISO 4625','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (191,'ISO 4630','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (192,'ISO 5163','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (193,'ISO 5164','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (194,'ISO 5165','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (195,'ISO 6249','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (196,'ISO 6251','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (197,'ISO 6271','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (198,'ISO 6614','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (199,'ISO 6616','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (200,'ISO 7536','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (201,'ISO 8754','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (202,'ISO 9038','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (203,'ISO 9262','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (204,'ISO 10370','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (205,'ISO 12156','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (206,'ISO 12205','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (207,'ISO 13736','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (208,'ISO 13757','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (209,'ISO 14596','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (210,'ISO 20846','2009-10-12 12:03:02','2009-10-12 12:03:02',0,168);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (211,'СТАНДАРТЫ - IP','2009-10-12 12:03:02','2009-10-12 12:03:02',1,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (212,'IP 13','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (213,'IP 15','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (214,'IP 16','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (215,'IP 33','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (216,'IP 34','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (217,'IP 36','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (218,'IP 40','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (219,'IP 49','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (220,'IP 50','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (221,'IP 53','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (222,'IP 55','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (223,'IP 57','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (224,'IP 58','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (225,'IP 69','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (226,'IP 71','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (227,'IP 75','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (228,'IP 80','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (229,'IP 119','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (230,'IP 123','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (231,'IP 132','2009-10-12 12:03:02','2009-10-12 12:03:02',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (232,'IP 138','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (233,'IP 145','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (234,'IP 146','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (235,'IP 154','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (236,'IP 160','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (237,'IP 167','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (238,'IP 170','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (239,'IP 183','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (240,'IP 183','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (241,'IP 191','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (242,'IP 195','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (243,'IP 196','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (244,'IP 215','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (245,'IP 219','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (246,'IP 227','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (247,'IP 235','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (248,'IP 243','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (249,'IP 267','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (250,'IP 303','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (251,'IP 309','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (252,'IP 323','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (253,'IP 386','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (254,'IP 481','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (255,'IP 529','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (256,'IP 2542','2009-10-12 12:03:03','2009-10-12 12:03:03',0,211);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (257,'СТАНДАРТЫ - DIN','2009-10-12 12:03:03','2009-10-12 12:03:03',1,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (258,'DIN 41','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (259,'DIN 5033','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (260,'DIN 6162','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (261,'DIN 6174','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (262,'DIN 51394','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (263,'DIN 51411','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (264,'DIN 51421','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (265,'DIN 51428','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (266,'DIN 51551','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (267,'DIN 51562','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (268,'DIN 51566','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (269,'DIN 51570','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (270,'DIN 51578','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (271,'DIN 51579','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (272,'DIN 51580','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (273,'DIN 51586','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (274,'DIN 51587','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (275,'DIN 51599','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (276,'DIN 51751','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (277,'DIN 51754','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (278,'DIN 51757','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (279,'DIN 51758','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (280,'DIN 51759','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (281,'DIN 51780','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (282,'DIN 51789','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (283,'DIN 51793','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (284,'DIN 51799','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (285,'DIN 51804','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (286,'DIN 51900','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (287,'DIN 52010','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (288,'DIN 52012','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (289,'DIN 52013','2009-10-12 12:03:03','2009-10-12 12:03:03',0,257);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (290,'СТАНДАРТЫ - ГОСТ','2009-10-12 12:03:03','2009-10-12 12:03:03',1,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (291,'ГОСТ 33','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (292,'ГОСТ 511','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (293,'ГОСТ 1461','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (294,'ГОСТ 1567','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (295,'ГОСТ 1756','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (296,'ГОСТ 2177','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (297,'ГОСТ 3122','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (298,'ГОСТ 3338','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (299,'ГОСТ 4039','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (300,'ГОСТ 4333','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (301,'ГОСТ 4338','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (302,'ГОСТ 5066','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (303,'ГОСТ 5346','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (304,'ГОСТ 6356','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (305,'ГОСТ 8226','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (306,'ГОСТ 8489','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (307,'ГОСТ 11011','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (308,'ГОСТ 11065','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (309,'ГОСТ 11506','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (310,'ГОСТ 11507','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (311,'ГОСТ 19932','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (312,'ГОСТ 20284','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (313,'ГОСТ 20287','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (314,'ГОСТ 22254','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (315,'ГОСТ 25771','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (316,'ГОСТ 26950','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (317,'ГОСТ 51105','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (318,'ГОСТ 51866','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (319,'ГОСТ 52050','2009-10-12 12:03:03','2009-10-12 12:03:03',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (320,'ГОСТ 52368','2009-10-12 12:03:04','2009-10-12 12:03:04',0,290);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (321,'СТАНДАРТЫ - FTM','2009-10-12 12:03:04','2009-10-12 12:03:04',1,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (322,'FTM 791/322','2009-10-12 12:03:04','2009-10-12 12:03:04',0,321);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (323,'FTM 791/351','2009-10-12 12:03:04','2009-10-12 12:03:04',0,321);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (324,'FTM 791/1402','2009-10-12 12:03:04','2009-10-12 12:03:04',0,321);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (325,'FTM 791/3201','2009-10-12 12:03:04','2009-10-12 12:03:04',0,321);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (326,'FTM 791/3211','2009-10-12 12:03:04','2009-10-12 12:03:04',0,321);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (327,'FTM 791/3213','2009-10-12 12:03:04','2009-10-12 12:03:04',0,321);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (328,'FTM 791/3252','2009-10-12 12:03:04','2009-10-12 12:03:04',0,321);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (329,'FTM 791/3352','2009-10-12 12:03:04','2009-10-12 12:03:04',0,321);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (330,'FTM 791/3354','2009-10-12 12:03:04','2009-10-12 12:03:04',0,321);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (331,'FTM 791/5307','2009-10-12 12:03:04','2009-10-12 12:03:04',0,321);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (332,'FTM 791/5308','2009-10-12 12:03:04','2009-10-12 12:03:04',0,321);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (333,'SAE J300','2009-10-12 12:03:04','2009-10-12 12:03:04',0,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (334,'CEC L18A/30','2009-10-12 12:03:04','2009-10-12 12:03:04',0,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (335,'GPA 2140','2009-10-12 12:03:04','2009-10-12 12:03:04',0,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (336,'DefStan 91-91','2009-10-12 12:03:04','2009-10-12 12:03:04',0,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (337,'AOCS Cc13e','2009-10-12 12:03:04','2009-10-12 12:03:04',0,NULL);
INSERT INTO `standards` (`id`, `name`, `created_at`, `updated_at`, `is_group`, `group_id`) VALUES (338,'Ph EUR','2009-10-12 12:03:04','2009-10-12 12:03:04',0,NULL);
/*!40000 ALTER TABLE `standards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_translations`
--

DROP TABLE IF EXISTS `view_translations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `view_translations` (
  `id` int(11) NOT NULL auto_increment,
  `scope` varchar(255) default NULL,
  `code` varchar(255) NOT NULL,
  `value_en` varchar(255) default NULL,
  `value_ru` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `main_translations` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `view_translations`
--

LOCK TABLES `view_translations` WRITE;
/*!40000 ALTER TABLE `view_translations` DISABLE KEYS */;
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (1,'activerecord:errors:messages','inclusion','is not included in the list','не включён в список','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (2,'activerecord:errors:messages','exclusion','is reserved','зарезервирован','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (3,'activerecord:errors:messages','invalid','is invalid','содержит недопустимое значение','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (4,'activerecord:errors:messages','confirmation','doesn\'t match confirmation','отличается от подтверждения','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (5,'activerecord:errors:messages','accepted','must be accepted','должен быть принят','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (6,'activerecord:errors:messages','empty','can\'t be empty','не может быть незаполненным','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (7,'activerecord:errors:messages','blank','can\'t be blank','не может быть незаполненным','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (8,'activerecord:errors:messages:too_long','one','is too long (maximum is {{count}} characters)','слишком большой (максимальное число символов %d)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (9,'activerecord:errors:messages:too_long','few','is too long (maximum is {{count}} characters)','слишком большой (максимальное число символов %d)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (10,'activerecord:errors:messages:too_long','many','is too long (maximum is {{count}} characters)','слишком большой (максимальное число символов %d)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (11,'activerecord:errors:messages:too_long','other','is too long (maximum is {{count}} characters)','слишком большой (максимальное число символов %d)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (12,'activerecord:errors:messages:too_short','one','is too short (minimum is {{count}} characters)','слишком короткий (минимальное число символов %d)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (13,'activerecord:errors:messages:too_short','few','is too short (minimum is {{count}} characters)','слишком короткий (минимальное число символов %d)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (14,'activerecord:errors:messages:too_short','many','is too short (minimum is {{count}} characters)','слишком короткий (минимальное число символов %d)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (15,'activerecord:errors:messages:too_short','other','is too short (minimum is {{count}} characters)','слишком короткий (минимальное число символов %d)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (16,'activerecord:errors:messages:wrong_length','one','is the wrong length (should be {{count}} characters)','неверной длинны (должен содержать %d символов)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (17,'activerecord:errors:messages:wrong_length','few','is the wrong length (should be {{count}} characters)','неверной длинны (должен содержать %d символов)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (18,'activerecord:errors:messages:wrong_length','many','is the wrong length (should be {{count}} characters)','неверной длинны (должен содержать %d символов)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (19,'activerecord:errors:messages:wrong_length','other','is the wrong length (should be {{count}} characters)','неверной длинны (должен содержать %d символов)','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (20,'activerecord:errors:messages','taken','has already been taken','уже занят','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (21,'activerecord:errors:messages','not_a_number','is not a number','не число','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (22,'activerecord:errors:messages','greater_than','must be greater than {{count}}','може да е със стойност, по-голяма от {{count}}','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (23,'activerecord:errors:messages','greater_than_or_equal_to','must be greater than or equal to {{count}}','може да е със стойност, по-голяма или равна на {{count}}','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (24,'activerecord:errors:messages','equal_to','must be equal to {{count}}','може да е единствено със стойност, равна на {{count}}','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (25,'activerecord:errors:messages','less_than','must be less than {{count}}','може да е със стойност, по-малка от {{count}}','2009-10-14 11:18:28','2009-10-14 11:18:28');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (26,'activerecord:errors:messages','less_than_or_equal_to','must be less than or equal to {{count}}','може да е със стойност, по-голяма или равна на {{count}}','2009-10-14 11:18:29','2009-10-14 11:18:29');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (27,'activerecord:errors:messages','odd','must be odd','може да е единствено четно','2009-10-14 11:18:29','2009-10-14 11:18:29');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (28,'activerecord:errors:messages','even','must be even','може да е единствено нечетно','2009-10-14 11:18:29','2009-10-14 11:18:29');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (29,NULL,'choose_one_category','Выберите как минимум одну категорию','Выберите как минимум одну категорию','2009-10-14 11:18:29','2009-10-14 11:18:29');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (30,NULL,'item_code','Goods Code','Код ТНВЭД','2009-10-14 11:18:29','2009-10-28 10:25:22');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (31,NULL,'item_articule','Art. No.','Арт. №','2009-10-14 11:18:29','2009-10-15 21:14:08');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (32,NULL,'item_production','Manufacturer','Производитель','2009-10-14 11:18:29','2009-10-15 21:17:30');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (33,NULL,'last_items','New arrivals','Наши последние поступления','2009-10-14 11:18:29','2009-10-15 21:18:14');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (35,NULL,'item_standarts','Standards','Стандарты','2009-10-14 11:18:29','2009-10-15 21:16:59');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (36,NULL,'item_complectation','Options','Комплектация','2009-10-14 11:18:29','2009-10-15 21:18:31');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (37,NULL,'choose_categories','Какие категории Вы хотите включить в прайс-лист?','Какие категории Вы хотите включить в прайс-лист?','2009-10-14 11:18:29','2009-10-14 11:18:29');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (38,NULL,'generate','формировать','формировать','2009-10-14 11:18:29','2009-10-14 11:18:29');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (39,NULL,'search_results','Результаты поиска','Результаты поиска','2009-10-14 11:18:30','2009-10-14 11:18:30');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (40,NULL,'nothing_found','Ничего не найдено','Ничего не найдено','2009-10-14 11:18:30','2009-10-14 11:18:30');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (41,NULL,'contact_phone','Тел.:  +7(916) 448-06-15,','Тел.:  +7(916) 448-06-15,','2009-10-14 11:18:30','2009-10-14 11:18:30');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (42,NULL,'contact_phone_2','+7(916) 032-26-96','+7(916) 032-26-96','2009-10-14 11:18:30','2009-10-14 11:18:30');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (43,NULL,'contact_address','Адрес:  109428, г.Москва,','Адрес:  109428, г.Москва,','2009-10-14 11:18:30','2009-10-14 11:18:30');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (44,NULL,'contact_address_2','Рязанский проспект, д.39А, стр.1','Рязанский проспект, д.39А, стр.1','2009-10-14 11:18:30','2009-10-14 11:24:16');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (45,NULL,'copyright','Copyright 2008-2009 ООО «Mashpromexport JSC»','Copyright 2008-2009 ООО «Машпромэкспорт»','2009-10-14 11:18:30','2010-02-11 11:10:33');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (46,NULL,'title','Mashpromexport JSC: Main','Машпромэкспорт: Главная','2009-10-14 11:18:30','2010-02-11 11:09:43');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (47,NULL,'company_name','Mashpromexport JSC','ООО «Машпромэкспорт»','2009-10-14 11:18:30','2010-02-11 11:08:55');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (48,NULL,'menu_main','Main','Главная','2009-10-14 11:18:30','2009-10-15 21:21:38');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (49,NULL,'menu_about','Company information','О компании','2009-10-14 11:18:30','2009-10-15 21:22:04');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (50,NULL,'menu_catalog','Catalog','Каталог','2009-10-14 11:18:30','2009-10-15 21:22:22');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (51,NULL,'menu_pricelist','Price list','Прайс-лист','2009-10-14 11:18:30','2009-10-15 21:22:34');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (52,NULL,'menu_contacts','Contacts','Контакты','2009-10-14 11:18:30','2009-10-15 21:22:44');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (53,NULL,'search','Search','поиск','2009-10-14 11:18:30','2009-10-15 21:22:54');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (54,NULL,'find','Find','найти','2009-10-14 11:18:30','2009-10-15 21:23:03');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (55,'activerecord:errors:template','header','Could not save record','Запись не сохранена','2009-10-15 14:19:29','2009-10-15 14:19:29');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (56,'activerecord:errors:template','body','The form has some invalid field values','Форма содержит некорректные значения полей','2009-10-15 14:19:29','2009-10-15 14:19:29');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (57,NULL,'item_code_tn','Код ТНВЭД','Код ТНВЭД','2010-02-05 14:07:08','2010-02-05 14:07:08');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (58,NULL,'contact_address2','Рязанский проспект, д.39А, стр.1','Рязанский проспект, д.39А, стр.1','2010-02-05 14:07:08','2010-02-05 14:07:08');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (59,NULL,'company_filter','Company filter','Фильтр по производителю','2010-02-05 14:07:08','2010-02-05 14:07:08');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (60,NULL,'check_all','Check all','Выбрать все','2010-02-05 14:07:08','2010-02-05 14:07:08');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (61,NULL,'apply_filter','Apply filter','Применить фильтр','2010-02-05 14:07:08','2010-02-05 14:07:08');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (62,NULL,'menu_companies','Companies','Производители','2010-02-05 17:44:02','2010-02-05 17:44:02');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (63,NULL,'item_title','Title','Название','2010-02-05 17:44:02','2010-02-05 17:44:02');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (64,NULL,'item_documents','Documents','Документы','2010-02-08 12:12:36','2010-02-08 12:12:36');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (65,NULL,'no_items_found','No items','Нет продуктов','2010-02-08 12:23:24','2010-02-08 12:23:24');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (66,NULL,'item_accessories','Accessories','Аксесуары','2010-02-08 22:33:41','2010-02-08 22:33:41');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (67,NULL,'item_model','Model','Модель','2010-02-09 15:34:20','2010-02-09 15:34:20');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (68,NULL,'item_country','Country','Страна','2010-02-09 15:34:21','2010-02-09 15:34:21');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (69,NULL,'item_company','Company','Компания','2010-02-09 15:34:21','2010-02-09 15:34:21');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (70,NULL,'item_short_desc','Short Description','Описание','2010-02-09 15:34:21','2010-02-09 15:34:21');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (71,NULL,'valid_till','Valid till','Годен до','2010-02-09 15:34:21','2010-02-11 11:02:01');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (72,NULL,'item_count','Count','Количество','2010-03-09 17:14:23','2010-03-09 17:14:23');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (73,NULL,'login','Login','Вход','2010-03-12 16:14:59','2010-03-12 16:14:59');
INSERT INTO `view_translations` (`id`, `scope`, `code`, `value_en`, `value_ru`, `created_at`, `updated_at`) VALUES (74,NULL,'logout','Logout','Выход','2010-03-12 16:14:59','2010-03-12 16:14:59');
/*!40000 ALTER TABLE `view_translations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-03-22  9:11:43
