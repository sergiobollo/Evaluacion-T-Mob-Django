CREATE DATABASE  IF NOT EXISTS `url` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `url`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: url
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add urls',7,'add_urls'),(26,'Can change urls',7,'change_urls'),(27,'Can delete urls',7,'delete_urls'),(28,'Can view urls',7,'view_urls');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$j0vJXapgH29Z$FQdtJgMkK1LjWFSgCNqH02h+edjy8x4s3mVHikOvoRc=','2021-04-21 01:30:02.230276',1,'sergi','','','sergiobollo@hotmail.com',1,1,'2021-04-21 00:56:11.227322');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-04-21 01:36:19.291371','1','sgdkjahsldkafasñkfhakslhf',1,'[{\"added\": {}}]',7,1),(2,'2021-04-21 01:37:09.252166','1','sgdkjahsldkafasñkfhakslhfadsdfsdsdvsvsdvds',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',7,1),(3,'2021-04-21 01:38:43.711953','2','gsggsdfbzbzzv',1,'[{\"added\": {}}]',7,1),(4,'2021-04-21 03:09:25.915580','3','adfzfbzbzbzbzzb',1,'[{\"added\": {}}]',7,1),(5,'2021-04-21 05:20:19.308431','4','adasdadadadahhhhhh',1,'[{\"added\": {}}]',7,1),(6,'2021-04-21 05:54:53.201059','5','dffffd',1,'[{\"added\": {}}]',7,1),(7,'2021-04-21 13:56:11.694654','6','vsjdkvkjdsjkgsdkj',1,'[{\"added\": {}}]',7,1),(8,'2021-04-21 13:56:56.500274','7','abaajsbdasbdljab',1,'[{\"added\": {}}]',7,1),(9,'2021-04-21 14:13:24.714419','8','fhdshsgfsjhdkhjhlhl',1,'[{\"added\": {}}]',7,1),(10,'2021-04-21 14:39:16.968353','9','sgsgdhsdjfjh',1,'[{\"added\": {}}]',7,1),(11,'2021-04-21 14:42:51.253597','10','asdfghjkl',1,'[{\"added\": {}}]',7,1),(12,'2021-04-21 14:44:19.809510','11','ljdhalhfalhcajsbcja',1,'[{\"added\": {}}]',7,1),(13,'2021-04-21 14:46:34.107284','12','djjdjsdsjdjks',1,'[{\"added\": {}}]',7,1),(14,'2021-04-21 14:49:58.415146','13','skahalhfahflashfsa',1,'[{\"added\": {}}]',7,1),(15,'2021-04-21 15:14:32.227007','14','398729n2dfsgd',1,'[{\"added\": {}}]',7,1),(16,'2021-04-21 15:45:23.366582','15','cnfsjdhkdghx',1,'[{\"added\": {}}]',7,1),(17,'2021-04-21 15:49:41.455819','16','dfjfgj7i53wtgasddghf',1,'[{\"added\": {}}]',7,1),(18,'2021-04-21 15:58:33.155389','17','dgdfjfghkgchkjknxnxfhmhm',1,'[{\"added\": {}}]',7,1),(19,'2021-04-21 16:22:36.439439','18','dgdgdhjfghfkjsjfg',1,'[{\"added\": {}}]',7,1),(20,'2021-04-21 16:25:25.585914','19','sfsddhdgjkufglcghfxgnbvcxz',1,'[{\"added\": {}}]',7,1),(21,'2021-04-21 16:29:47.738853','20','svsdvdad',1,'[{\"added\": {}}]',7,1),(22,'2021-04-21 16:55:21.352853','21','fhsgngbsdcsc<cdbngxmhcgjvhb',1,'[{\"added\": {}}]',7,1),(23,'2021-04-21 17:07:22.108385','23','xbghcvv,jhmnbvcsasdcvbnm',1,'[{\"added\": {}}]',7,1),(24,'2021-04-21 17:16:07.133326','24','zdxfcghvvc34567',1,'[{\"added\": {}}]',7,1),(25,'2021-04-21 17:26:26.464365','25','dfgfhgl76543edf',1,'[{\"added\": {}}]',7,1),(26,'2021-04-21 17:37:43.916399','27','vfcnty44tgdt4',1,'[{\"added\": {}}]',7,1),(27,'2021-04-21 17:42:22.600876','28','rhe564twccc',1,'[{\"added\": {}}]',7,1),(28,'2021-04-21 17:48:38.556598','29','dfgh654535tg',1,'[{\"added\": {}}]',7,1),(29,'2021-04-21 17:50:46.559141','30','dfghj654wfghgf434',1,'[{\"added\": {}}]',7,1),(30,'2021-04-21 18:48:16.476016','31','fuhaohaufouayfasa',1,'[{\"added\": {}}]',7,1),(31,'2021-04-21 18:51:38.543470','32','adfdjsdkllskvzvnzn',1,'[{\"added\": {}}]',7,1),(32,'2021-04-21 19:05:50.873762','33','fsadgscvne4tgxs',1,'[{\"added\": {}}]',7,1),(33,'2021-04-21 19:11:33.337815','33','id: 33, url: fsadgscvne4tgxsfegdfgghghgfdsasdfg, active: True, created_at: 2021-04-21 19:05:50.871725+00:00, updated_at: 2021-04-21 19:11:33.335807+00:00',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',7,1),(34,'2021-04-21 19:12:48.303890','21','id: 21, url: http://127.0.0.1:8000/admin/Evaluacion/urls/21/change/, active: True, created_at: 2021-04-21 16:55:21.339846+00:00, updated_at: 2021-04-21 19:12:48.298889+00:00',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'Evaluacion','urls'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'Evaluacion','0001_initial','2021-04-20 23:23:19.901259'),(2,'contenttypes','0001_initial','2021-04-20 23:23:20.040269'),(3,'auth','0001_initial','2021-04-20 23:23:21.450266'),(4,'admin','0001_initial','2021-04-20 23:23:21.760944'),(5,'admin','0002_logentry_remove_auto_add','2021-04-20 23:23:21.776429'),(6,'admin','0003_logentry_add_action_flag_choices','2021-04-20 23:23:21.791600'),(7,'contenttypes','0002_remove_content_type_name','2021-04-20 23:23:21.978428'),(8,'auth','0002_alter_permission_name_max_length','2021-04-20 23:23:22.258001'),(9,'auth','0003_alter_user_email_max_length','2021-04-20 23:23:22.308959'),(10,'auth','0004_alter_user_username_opts','2021-04-20 23:23:22.340961'),(11,'auth','0005_alter_user_last_login_null','2021-04-20 23:23:22.451963'),(12,'auth','0006_require_contenttypes_0002','2021-04-20 23:23:22.462961'),(13,'auth','0007_alter_validators_add_error_messages','2021-04-20 23:23:22.484964'),(14,'auth','0008_alter_user_username_max_length','2021-04-20 23:23:22.628027'),(15,'auth','0009_alter_user_last_name_max_length','2021-04-20 23:23:22.746154'),(16,'sessions','0001_initial','2021-04-20 23:23:22.850178'),(17,'Evaluacion','0002_remove_urls_key','2021-04-21 00:42:15.442095'),(18,'Evaluacion','0003_auto_20210420_2235','2021-04-21 01:35:19.126557');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ila96uorha3wvafnv8t03hmqpbkiidp9','ODgwZjBlYTRkZjk3ZTZiNjUzNzU3MzA5ZGJmNzA5YTE4NTc4OWNkNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMjFmNGNhODI5YjQzMDMyOWJlMTcyZTQ2YzczNjIyYzkyYjAxZjhmIn0=','2021-05-05 01:30:02.238274');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion_urls`
--

DROP TABLE IF EXISTS `evaluacion_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion_urls`
--

LOCK TABLES `evaluacion_urls` WRITE;
/*!40000 ALTER TABLE `evaluacion_urls` DISABLE KEYS */;
INSERT INTO `evaluacion_urls` VALUES (1,'sgdkjahsldkafasñkfhakslhfadsdfsdsdvsvsdvds',1,'2021-04-21 01:37:09.250206','2021-04-21 01:36:19.289307'),(2,'gsggsdfbzbzzv',0,'2021-04-21 01:38:43.709981','2021-04-21 01:38:43.709981'),(3,'adfzfbzbzbzbzzb',1,'2021-04-21 03:09:25.914514','2021-04-21 03:09:25.914514'),(4,'adasdadadadahhhhhh',0,'2021-04-21 05:20:19.305434','2021-04-21 05:20:19.305434'),(5,'dffffd',1,'2021-04-21 05:54:53.198097','2021-04-21 05:54:53.198097'),(6,'vsjdkvkjdsjkgsdkj',0,'2021-04-21 13:56:11.692699','2021-04-21 13:56:11.692699'),(7,'abaajsbdasbdljab',1,'2021-04-21 13:56:56.495249','2021-04-21 13:56:56.495249'),(8,'fhdshsgfsjhdkhjhlhl',1,'2021-04-21 14:13:24.712371','2021-04-21 14:13:24.712371'),(9,'sgsgdhsdjfjh',1,'2021-04-21 14:39:16.966399','2021-04-21 14:39:16.966399'),(10,'asdfghjkl',1,'2021-04-21 14:42:51.251470','2021-04-21 14:42:51.251470'),(11,'ljdhalhfalhcajsbcja',1,'2021-04-21 14:44:19.806515','2021-04-21 14:44:19.806515'),(12,'djjdjsdsjdjks',1,'2021-04-21 14:46:34.097960','2021-04-21 14:46:34.097960'),(13,'skahalhfahflashfsa',0,'2021-04-21 14:49:58.413137','2021-04-21 14:49:58.413137'),(14,'398729n2dfsgd',1,'2021-04-21 15:14:32.224849','2021-04-21 15:14:32.224849'),(15,'cnfsjdhkdghx',1,'2021-04-21 15:45:23.364379','2021-04-21 15:45:23.364379'),(16,'dfjfgj7i53wtgasddghf',1,'2021-04-21 15:49:41.453807','2021-04-21 15:49:41.453807'),(17,'dgdfjfghkgchkjknxnxfhmhm',1,'2021-04-21 15:58:33.153438','2021-04-21 15:58:33.153438'),(18,'dgdgdhjfghfkjsjfg',1,'2021-04-21 16:22:36.438335','2021-04-21 16:22:36.438335'),(19,'sfsddhdgjkufglcghfxgnbvcxz',1,'2021-04-21 16:25:25.583924','2021-04-21 16:25:25.583924'),(20,'svsdvdad',1,'2021-04-21 16:29:47.737679','2021-04-21 16:29:47.737679'),(21,'http://127.0.0.1:8000/admin/Evaluacion/urls/21/change/',1,'2021-04-21 19:12:48.298889','2021-04-21 16:55:21.339846'),(23,'xbghcvv,jhmnbvcsasdcvbnm',1,'2021-04-21 17:07:22.104383','2021-04-21 17:07:22.104383'),(24,'zdxfcghvvc34567',1,'2021-04-21 17:16:07.130365','2021-04-21 17:16:07.130365'),(25,'dfgfhgl76543edf',1,'2021-04-21 17:26:26.461362','2021-04-21 17:26:26.461362'),(27,'vfcnty44tgdt4',1,'2021-04-21 17:37:43.908735','2021-04-21 17:37:43.908735'),(28,'rhe564twccc',1,'2021-04-21 17:42:22.597901','2021-04-21 17:42:22.597901'),(29,'dfgh654535tg',1,'2021-04-21 17:48:38.553595','2021-04-21 17:48:38.553595'),(30,'dfghj654wfghgf434',0,'2021-04-21 17:50:46.559141','2021-04-21 17:50:46.559141'),(31,'fuhaohaufouayfasa',1,'2021-04-21 18:48:16.474398','2021-04-21 18:48:16.474398'),(32,'adfdjsdkllskvzvnzn',1,'2021-04-21 18:51:38.542468','2021-04-21 18:51:38.542468'),(33,'fsadgscvne4tgxsfegdfgghghgfdsasdfg',1,'2021-04-21 19:11:33.335807','2021-04-21 19:05:50.871725');
/*!40000 ALTER TABLE `evaluacion_urls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21 16:22:45
