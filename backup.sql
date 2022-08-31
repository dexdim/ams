-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: ams
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'PC',NULL,NULL,'2022-05-12 08:17:57'),(2,'Monitor',NULL,NULL,'2022-05-03 10:24:20'),(3,'Mouse',NULL,NULL,'2022-05-03 10:24:09'),(4,'Keyboard',NULL,NULL,'2022-05-03 10:24:29'),(5,'Modem',NULL,NULL,'2022-05-03 10:24:58'),(6,'Kursi',NULL,NULL,'2022-05-03 23:30:45'),(7,'Buku',NULL,'2022-05-05 18:53:52','2022-05-05 18:53:52'),(8,'Meja',NULL,'2022-05-06 04:44:00','2022-05-06 04:44:00'),(12,'Beanbag',NULL,'2022-05-08 21:08:23','2022-05-08 21:08:23');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `idcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `category` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `brand` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serialnumber` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchasecost` int DEFAULT NULL,
  `purchasedate` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dept` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `history` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkdate` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkedby` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
INSERT INTO `inventories` VALUES (1,'A8/05/2022/I/01',1,NULL,'Lenovo','Lenovo','-','iBox',20000000,'6 Mei 2022','Alexander Adimas','adimas.anggi@niagahoster.co.id','People Team','Deployed',NULL,NULL,'6 Mei 2022','Dimas',NULL,'2022-08-04 20:07:15','2022-08-04 20:07:15'),(3,'A8/05/2022/I/02',1,NULL,'Macboook Pro M1 2022','Apple','-','iBox',20000000,'12 Mei 2022','Alexander Adimas',NULL,NULL,'Deployed',NULL,NULL,'12 Mei 2022','Maudy','2022-05-12 04:07:22','2022-08-04 20:07:11','2022-08-04 20:07:11'),(4,'TEST',1,NULL,'TEST','TEST','TEST','TEST',1,'TEST','TEST',NULL,NULL,'Broken',NULL,NULL,'TEST','Adith','2022-05-12 04:10:33','2022-08-04 20:07:03','2022-08-04 20:07:03'),(5,'A1/03/2019/O/01',1,'PC','PC Rakit',NULL,NULL,NULL,0,'2022-08-01T17:00:00.000Z','','office.operation@niagahoster.co.id','-','Storage',NULL,'',NULL,'Maudy',NULL,'2022-08-25 20:12:32',NULL),(6,'A1/03/2019/O/02',1,'PC','PC Rakit','','','',0,'3-March-2019','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(7,'A1/03/2019/O/03',1,'PC','PC Rakit','','','',0,'3-March-2019','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(8,'A1/03/2019/O/04',1,'PC','PC Rakit','','','',0,'3-March-2019','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(9,'A1/05/2019/O/01',1,'PC','PC Rakit','','','',0,'2-May-2019','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(10,'A1/05/2019/O/02',1,'PC','PC Rakit','','','',0,'2-May-2019','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(11,'A1/11/2017/O/01',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(12,'A1/11/2017/O/02',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(13,'A1/11/2017/O/03',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(14,'A1/11/2017/O/04',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(15,'A1/11/2017/O/05',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(16,'A1/11/2017/O/06',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(17,'A1/11/2017/O/07',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(18,'A1/11/2017/O/08',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(19,'A1/11/2017/O/09',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(20,'A1/11/2017/O/10',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(21,'A1/11/2017/O/11',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(22,'A1/11/2017/O/12',1,'PC','PC Rakit','','',' sari',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(23,'A1/11/2017/O/13',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(24,'A1/11/2017/O/15',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(25,'A1/11/2017/O/16',1,'PC','PC Rakit','','','',0,'1-November-2017','','office.operation@niagahoster.co.id','-','Storage','','','','',NULL,NULL,NULL),(26,'A1/02/2020/O/11',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','24 Aug 2020','Muammar',NULL,NULL,NULL),(27,'A1/02/2020/O/12',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','5 Oct 2020','Hans',NULL,NULL,NULL),(28,'A1/11/2020/O/01',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Working','','','4 Nov 2020','Rayhana',NULL,NULL,NULL),(29,'A1/11/2020/O/02',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','16 Nov 2020','Rayhana',NULL,NULL,NULL),(30,'A1/11/2020/O/03',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(31,'A1/11/2020/O/04',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(32,'A1/11/2020/O/05',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(33,'A1/11/2020/O/06',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(34,'A1/11/2020/O/07',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(35,'A1/11/2020/O/08',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(36,'A1/11/2020/O/09',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(37,'A1/11/2020/O/10',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(38,'A1/11/2020/O/11',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(39,'A1/11/2020/O/12',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(40,'A1/11/2020/O/13',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(41,'A1/11/2020/O/14',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(42,'A1/11/2020/O/15',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(43,'A1/11/2020/O/16',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(44,'A1/11/2020/O/17',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(45,'A1/11/2020/O/18',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(46,'A1/11/2020/O/19',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(47,'A1/11/2020/O/20',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(48,'A1/11/2020/O/21',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(49,'A1/11/2020/O/22',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(50,'A1/11/2020/O/23',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(51,'A1/11/2020/O/24',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','Agus Setyawan','agus@hostinger.com','Customer Success','Deployed','','','25 Aug 2021','Maudy',NULL,NULL,NULL),(52,'A1/11/2020/O/25',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(53,'A1/11/2020/O/26',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(54,'A1/11/2020/O/27',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(55,'A1/11/2020/O/28',1,'PC','PC Rakit-CS KAMPUS 1','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(56,'A1/11/2020/O/29',1,'PC','PC Rakit -SAE','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(57,'A1/11/2020/O/30',1,'PC','PC Rakit -SAE','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','27 Nov 2020','Hans',NULL,NULL,NULL),(58,'A1/11/2020/O/31',1,'PC','PC Rakit -SAE','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','Sara Prakasita','19 Jan 2021','Rayhana',NULL,NULL,NULL),(59,'A1/11/2020/O/32',1,'PC','PC Rakit -SAE','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(60,'A1/11/2020/O/33',1,'PC','PC Rakit -SAE','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(61,'A1/11/2020/O/34',1,'PC','PC Rakit -SAE','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(62,'A1/11/2020/O/35',1,'PC','PC Rakit -DEVELOPER','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(63,'A1/11/2020/O/36',1,'PC','PC Rakit -DEVELOPER','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(64,'A1/11/2020/O/37',1,'PC','PC Rakit-FINANCE','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(65,'A1/11/2020/O/38',1,'PC','PC Rakit-FINANCE','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(66,'A1/11/2020/O/39',1,'PC','PC Rakit-FINANCE','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(67,'A1/11/2020/O/40',1,'PC','PC Rakit-FINANCE','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(68,'A1/11/2020/O/41',1,'PC','PC Rakit-CS KAMPUS 2','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(69,'A1/11/2020/O/42',1,'PC','PC Rakit-CS KAMPUS 2','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(70,'A1/11/2020/O/43',1,'PC','PC Rakit-CS KAMPUS 2','','','',0,'','','-','-','','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(71,'A1/11/2020/O/44',1,'PC','PC Rakit-CS KAMPUS 2','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(72,'A1/11/2020/O/45',1,'PC','PC Rakit-CS KAMPUS 2','','','',0,'','Windar Makhita','wiwi.mahita@hostinger.com','Customer Success','Deployed','','','25 Oct 2021','Dimas',NULL,NULL,NULL),(73,'A1/11/2020/O/46',1,'PC','PC Rakit-CS KAMPUS 2','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(74,'A1/11/2020/O/47',1,'PC','PC Rakit-CS KAMPUS 2','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(75,'A1/11/2020/O/48',1,'PC','PC Rakit-CS KAMPUS 2','','','',0,'','','-','-','','','','27 Nov 2020','Hans',NULL,NULL,NULL),(76,'A1/11/2020/O/49',1,'PC','Mini PC','','','',0,'','Ade Syah Perkasa Lubis','syah@hostinger.com','Board of Director','Deployed','','','23 Dec 2020','Rayhana',NULL,NULL,NULL),(77,'A1/11/2020/O/50',1,'PC','PC Rakit','','','',0,'','','-','-','','','','15 Feb 2021','hans',NULL,NULL,NULL),(78,'A1/11/2020/O/51',1,'PC','mini PC','','98HTXA002028','',0,'','','office.operation@niagahoster.co.id','-','Storage','Dikembalikan 31 Maret 2022','Rhevin','31 Mar 2022','Adith',NULL,NULL,NULL),(79,'A1/12/2020/O/46',1,'','','','','',0,'','','','','','','','8 Mar 2022','Adith',NULL,NULL,NULL),(80,'A1/2/2021/O/3',1,'PC','Mini PC','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','14 Aug 2021','Dimas',NULL,NULL,NULL),(81,'A1/08/2021/O/01',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(82,'A1/08/2021/O/02',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(83,'A1/08/2021/O/03',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(84,'A1/08/2021/O/04',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(85,'A1/08/2021/O/05',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(86,'A1/08/2021/O/06',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(87,'A1/08/2021/O/07',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(88,'A1/08/2021/O/08',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(89,'A1/08/2021/O/09',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(90,'A1/08/2021/O/10',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(91,'A1/08/2021/O/12',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(92,'A1/09/2021/O/01',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(93,'A1/09/2021/O/02',1,'PC','PC Rakit','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','8 Mar 2022','Adith',NULL,NULL,NULL),(94,'',1,'','','','','',0,'','','-','-','','','','','',NULL,NULL,NULL),(95,'',1,'','','','','',0,'','','','','','WMTI/CS/122019 - 40','Depan Ruang OO','6 May 2022','Adith',NULL,NULL,NULL),(96,'',1,'','','','','',0,'','Indah Nor Oetami','','','Deployed','WMTI/CS122019','','4 Apr 2022','Adith',NULL,NULL,NULL),(97,'',1,'','','','','',0,'','Amelia Meidy Putriayu Semadaria','amelia.putriayu@hostinger.com','Hostinger Payments','Deployed','Audit 22 Maret WMTI/CS/032020','','22 Mar 2022','Adith',NULL,NULL,NULL),(98,'',1,'','','','','',0,'','Amelia Meidy Putriayu Semadaria','amelia.putriayu@hostinger.com','Hostinger Payments','Deployed','Audit 22 Maret WMTI/CS/032020','','22 Mar 2022','Adith',NULL,NULL,NULL),(99,'',1,'','','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','51/WMTI/CS/122019','Riza Prihananto','','',NULL,NULL,NULL),(100,'A2/08/2020/I/01',1,'monitor','LG 24MK600M','LG','902INTX5S385','',0,'','','office.operation@niagahoster.co.id','-','Storage','','Sidiq Sembodo','24 Aug 2020','Hans',NULL,NULL,NULL),(101,'A2/08/2020/I/02',1,'monitor','LG 24MK600M','LG','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','Muammar Irfan Auliya','24 Aug 2020','Hans',NULL,NULL,NULL),(102,'A2/08/2020/I/03',1,'monitor','LG 24MK600M','LG','','',0,'','','office.operation@niagahoster.co.id','-','Working','Depan ruang OO','Ryan Restyawan','6 May 2022','Adith',NULL,NULL,NULL),(103,'A2/08/2020/I/04',1,'monitor','LG 24MK600M','LG','','',0,'','Mungkassasi Pajar Saputro','sasi@niagahoster.co.id','Marketing','Deployed','','','16 Oct 2020','Rayhana',NULL,NULL,NULL),(104,'A2/08/2020/I/05',1,'monitor','LG 24MK600M','LG','','',0,'','Devandira Kusuma Putri','devandira.putri@hostinger.com','Customer Success','Deployed','','','29 Dec 2020','Rayhana',NULL,NULL,NULL),(105,'A2/08/2020/I/06',1,'monitor','LG 24MP68VQ','LG','','',0,'','Ananda Dian Pertiwi','ananda.pertiwi@hostinger.com','Customer Success','Deployed','','','20 Oct 2020','Rayhana',NULL,NULL,NULL),(106,'A2/09/2020/I/09',1,'monitor','LG 24MK600M','LG','001INPT8F216','',0,'','Heri Andria Herdiana','andri@niagahoster.co.id','Engineering','Deployed','','','29 Sep 2020','Hans',NULL,NULL,NULL),(107,'A2/10/2020/I/01',1,'monitor','DELL 24 Monitor','DELL','CNOVJRF7641805C707XTAOO','',0,'','','office.operation@niagahoster.co.id','-','Storage','','Abdurrachman Azis','2 Oct 2020','Hans',NULL,NULL,NULL),(108,'A2/10/2020/I/02',1,'monitor','LG22MK430H','LG','907INDP17770','',0,'','','office.operation@niagahoster.co.id','-','Storage','Depan Ruang Creative','Yoeka Steifano Indra Setiawan','6 May 2022','Adith',NULL,NULL,NULL),(109,'A2/10/2020/I/03',1,'monitor','LG22MK430H','LG','','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','6 May 2022','Adith',NULL,NULL,NULL),(110,'A2/10/2020/I/04',1,'monitor','LG24MP68VQ','LG','804INBS4M101','',0,'','','office.operation@niagahoster.co.id','-','Storage','','Gilang Dewantara','1 Apr 2021','Hans',NULL,NULL,NULL),(111,'A2/10/2020/I/05',1,'monitor','LG22MK430H','LG','911INBS1X677','',0,'','Gregorius Titis Indrajaya','greg@hostinger.com','Customer Success','Deployed','','','20 Oct 2020','Rayhana',NULL,NULL,NULL),(112,'A2/10/2020/I/06',1,'monitor','LG24MK600M','LG','902INLV5S432','',0,'','','office.operation@niagahoster.co.id','-','Storage','','Rusak','3 Nov 2020','Hans',NULL,NULL,NULL),(113,'A2/10/2020/I/07',1,'monitor','LG22MK430H','LG','901INEW6X660','',0,'','Titis Dwi Aribowo','titis@hostinger.com','Operations','Deployed','','','30 Oct 2020','Rayhana',NULL,NULL,NULL),(114,'A2/10/2020/I/08',1,'monitor','LG22MK430H','LG','804INPT4X688','',0,'','Suryadi Kurniawan','suryadi@hostinger.com','Marketing','Deployed','','','22 Oct 2020','Maudy',NULL,NULL,NULL),(115,'A2/11/2020/I/01',1,'monitor','LG 24MK600M','LG','902INTX5R401','',0,'','Suryadi Kurniawan','suryadi@hostinger.com','Marketing','Deployed','','','5 Nov 2020','Rayhana',NULL,NULL,NULL),(116,'A2/11/2020/I/02',1,'monitor','LG 22MK430H','LG','804INLV4X744','',0,'','','office.operation@niagahoster.co.id','-','Working','Depan ruang OO','Ratri Miskawaih Eka Putri','6 May 2022','Adith',NULL,NULL,NULL),(117,'A2/11/2020/I/03',1,'monitor','LG 24MK600M','LG','001INCN8F219','',0,'','Muhammat Najib','moehnajib@hostinger.com','Customer Success','Deployed','','','10 Nov 2020','Rayhana',NULL,NULL,NULL),(118,'A2/12/2020/O/08',1,'monitor','LG MP48A-P  CSA','LG','702NTCZ20971','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(119,'A2/12/2020/O/09',1,'monitor','LG MP48A-P  CSA','LG','609NTWGGE297','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(120,'A2/12/2020/O/10',1,'monitor','LG MP48A-P  CSA','LG','702NTHM20897','',0,'','','-','-','','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(121,'A2/12/2020/O/11',1,'monitor','LG MP48A-P  CSA','LG','609NTWGF990','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','6 May 2022','Adith',NULL,NULL,NULL),(122,'A2/12/2020/O/12',1,'monitor','LG MP48A-P  CSA','LG','609NTZNGE069','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(123,'A2/12/2020/O/13',1,'monitor','LG MP48A-P  CSA','LG','612NTPCBN528','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(124,'A2/12/2020/O/14',1,'monitor','LG MP48A-P  CSA','LG','708NTDV23258','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(125,'A2/12/2020/O/15',1,'monitor','LG MP48A-P  CSA','LG','707NTABCN784','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(126,'A2/12/2020/O/16',1,'monitor','LG MP48A-P  CSA','LG','708NTT023257','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(127,'A2/12/2020/O/17',1,'monitor','LG MP48A-P  CSA','LG','708NTLE23256','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(128,'A2/12/2020/O/18',1,'monitor','LG MP48A-P  CSA','LG','60INTXR81282','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(129,'A2/12/2020/O/19',1,'monitor','LG MP48A-P  CSA','LG','609NTFAGE299','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(130,'A2/12/2020/O/20',1,'monitor','LG MP48A-P  CSA','LG','601NTKF80629','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(131,'A2/12/2020/O/21',1,'monitor','LG MP48A-P  CSA','LG','603NTUW8B638','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(132,'A2/12/2020/O/22',1,'monitor','LG MP48A-P  CSA','LG','702NTPC20608','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(133,'A2/12/2020/O/23',1,'monitor','LG MP48A-P  CSA','LG','705NTYTCE170','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(134,'A2/12/2020/O/24',1,'monitor','LG MP48A-P  CSA','LG','805NTVSCK439','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(135,'A2/12/2020/O/25',1,'monitor','LG MP48A-P  CSA','LG','603NTFAAV283','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(136,'A2/12/2020/O/26',1,'monitor','LG 20M37A-B CSA','LG','508NTNH8B623','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(137,'A2/12/2020/O/27',1,'monitor','LG 20M37A-B CSA','LG','504NDSK59662','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(138,'A2/12/2020/O/28',1,'monitor','LG 20M37A-B CSA','LG','501NDLS4H240','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(139,'A2/12/2020/O/29',1,'monitor','LG 20M37A-B CSA','LG','501NDRF4H254','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(140,'A2/12/2020/O/30',1,'monitor','LG 20M37A-B CSA','LG','802INGQ48727','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(141,'A2/12/2020/O/31',1,'monitor','LG 20M37A-B CSA','LG','8021NZY26213','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(142,'A2/12/2020/O/32',1,'monitor','LG 20M37A-B CSA','LG','802INMF26219','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(143,'A2/12/2020/O/33',1,'monitor','LG 20M37A-B CSA','LG','802INFK26203','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(144,'A2/12/2020/O/34',1,'monitor','LG 20M37A-B CSA','LG','802INFK26155','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(145,'A2/12/2020/O/35',1,'monitor','LG 20M37A-B CSA','LG','802INCN48675','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(146,'A2/12/2020/O/36',1,'monitor','LG 20M37A-B CSA','LG','802INWA48761','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(147,'A2/12/2020/O/37',1,'monitor','LG 20M37A-B CSA','LG','8021NSE48750','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(148,'A2/12/2020/O/38',1,'monitor','LG 20M37A-B CSA','LG','8021NQU48772','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(149,'A2/12/2020/O/39',1,'monitor','LG 20M37A-B CSA','LG','802INSE26190','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(150,'A2/12/2020/O/40',1,'monitor','LG 20M37A-B CSA','LG','709NTABA3792','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(151,'A2/12/2020/O/41',1,'monitor','LG 20M37A-B CSA','LG','7009NTBKA3821','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(152,'A2/12/2020/O/42',1,'monitor','LG 20M37A-B CSA','LG','709NTSUA3758','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(153,'A2/12/2020/O/43',1,'monitor','LG 20M37A-B CSA','LG','709NTPCA3752','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(154,'A2/12/2020/O/44',1,'monitor','LG 20M37A-B CSA','LG','709NTWGA1561','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(155,'A2/12/2020/O/45',1,'monitor','LG 24MK600MB CSA','LG','001/NPT8F240','',0,'','Bayu Wardani','bayu.wardani@hostinger.com','Engineering','Deployed','','','15 Mar 2022','Adith',NULL,NULL,NULL),(156,'A2/12/2020/O/46',1,'monitor','LG 24MK600MB CSA','LG','910INTX73521','',0,'','','-','-','','Ruang depan OO','','6 May 2022','Adith',NULL,NULL,NULL),(157,'A2/12/2020/O/47',1,'monitor','LG 24MK600MB CSA','LG','9061NYD31290','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang Cs','','6 May 2022','Adith',NULL,NULL,NULL),(158,'A2/12/2020/O/48',1,'monitor','LG 24MK600MB CSA','LG','','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(159,'A2/12/2020/O/49',1,'monitor','LG 20M38A-B  CSA','LG','9011NEW6Z528','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(160,'A2/12/2020/O/50',1,'monitor','ASUS VS197/18.5 CSA','ASUS','D3LMTF172832','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(161,'A2/12/2020/O/51',1,'monitor','ASUS VS197/18.5 CSA','ASUS','D8LMTF169773','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(162,'A2/12/2020/O/52',1,'monitor','22MK430H Server','LG','804INRC4X710','SERVER',0,'','Lilis Arilia','lilis.arilia@hostinger.com','Customer Success','Deployed','WMTI/CS/032020\n','','','Hans',NULL,NULL,NULL),(163,'A2/12/2020/O/53',1,'monitor','VIEWSONIC Server','','TSL133607173','SERVER',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(164,'A2/12/2020/O/54',1,'monitor','22MK430H  SAE','LG','9021NFK6X619','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','6 May 2022','Adith',NULL,NULL,NULL),(165,'A2/12/2020/O/55',1,'monitor','20MP38A-BI','LG','709NTHMA1545','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(166,'A2/12/2020/O/56',1,'monitor','22MK430H BI','LG','911INLVIX688','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(167,'A2/12/2020/O/57',1,'monitor','22MK430H SAE','LG','907INQU17932','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','6 May 2022','Adith',NULL,NULL,NULL),(168,'A2/12/2020/O/58',1,'monitor','24MK600M-B  Cubical','LG','001INHZ8F241','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(169,'A2/12/2020/O/59',1,'monitor','20MP48A - P Cubical','C','605NTTOCK305','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(170,'A2/12/2020/O/60',1,'monitor','UNKnowN Developer','DELL','CN0V3RF7-64180','',0,'','','office.operation@niagahoster.co.id','-','Storage','Depan Ruang Creative','','6 May 2022','Adith',NULL,NULL,NULL),(171,'A2/12/2020/O/61',1,'monitor','LG 24MK600M','LG','9091NSE398','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','6 May 2022','Adith',NULL,NULL,NULL),(172,'A2/12/2020/O/62',1,'monitor','LG 24MK600M','LG','909INNG11383','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(173,'A2/12/2020/O/63',1,'monitor','LG20MP484','LG','707NTYTGV7941','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(174,'A2/12/2020/O/64',1,'monitor','LG20MP484','LG','707NTNHGV783','',0,'','','-','-','','','','','Hans',NULL,NULL,NULL),(175,'A2/12/2020/O/65',1,'monitor','LG 24MK600M','LG','905INAR45792','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','6 May 2022','Adith',NULL,NULL,NULL),(176,'A2/12/2020/O/66',1,'monitor','LG 24MK600M','LG','90SINEW7FI80','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','6 May 2022','Adith',NULL,NULL,NULL),(177,'A2/12/2020/O/67',1,'monitor','DELL 52216H','DELL','','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','6 May 2022','Adith',NULL,NULL,NULL),(178,'A2/12/2020/O/68',1,'monitor','DELL 1707FPc','DELL','','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','11 Mar 2022','Adith',NULL,NULL,NULL),(179,'A2/12/2020/O/69',1,'monitor','LG 24MK600M','LG','909INTX113377','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','6 May 2022','Adith',NULL,NULL,NULL),(180,'A2/12/2020/O/70',1,'monitor','LG 24MK600M','LG','909INXJ11386','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','6 May 2022','Adith',NULL,NULL,NULL),(181,'A2/01/2021/I/01',1,'monitor','LG 24MK600M','LG','9091NYD11370','Anandam',0,'','','office.operation@niagahoster.co.id','-','Storage','','Sidiq Sembodo','28 Dec 2020','Rayhana',NULL,NULL,NULL),(182,'A2/01/2021/I/02',1,'monitor','LG 24MK600M','LG','001INYD8F218','Anandam',0,'','','office.operation@niagahoster.co.id','-','Storage','layar ngeblank','Mirza Muhammad Haekal','6 Jul 2021','Rayhana',NULL,NULL,NULL),(183,'A2/02/2021/I/01',1,'monitor','','LG','','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','Sara Prakasita','6 Jan 2022','Adith',NULL,NULL,NULL),(184,'A2/02/2021/I/02',1,'monitor','','LG','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','Sara Prakasita','6 Jan 2022','Adith',NULL,NULL,NULL),(185,'A2/02/2021/I/03',1,'monitor','','LG','','',0,'','Ayunda Salsabilla','ayunda.salsabila@hostinger.com','Customer Success','Deployed','','wmti/cs/122019','','Rayhana',NULL,NULL,NULL),(186,'A2/02/2021/I/12',1,'monitor','LG 24MP68VQ','LG','','',0,'','Mahfudz Aji Wicaksono M.Nur','mahfudz.aji@hostinger.com','Operations','Deployed','','','15 Feb 2021','Hans',NULL,NULL,NULL),(187,'A2/02/2021/I/13',1,'monitor','LG 24MK600M','LG','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','','15 Feb 2021','hans',NULL,NULL,NULL),(188,'A2/02/2021/I/14',1,'monitor','','','','',0,'','','-','-','','','','15 Feb 2021','hans',NULL,NULL,NULL),(189,'A2/02/2021/I/15',1,'monitor','','','','',0,'','','-','-','','','','15 Feb 2021','hans',NULL,NULL,NULL),(190,'A2/02/2021/I/16',1,'monitor','','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','Ruang CS','','6 May 2022','Adith',NULL,NULL,NULL),(191,'A2/02/2021/I/17',1,'monitor','','','','',0,'','','-','-','','','','15 Feb 2021','hans',NULL,NULL,NULL),(192,'A2/02/2021/I/18',1,'monitor','','','','',0,'','Brian Yuli Andika','office.operation@niagahoster.co.id','-','Storage','','','15 Feb 2021','Hans',NULL,NULL,NULL),(193,'A2/02/2021/I/19',1,'monitor','','','','',0,'','Agus Setyawan','agus@hostinger.com','Customer Success','Deployed','','','15 Feb 2021','Hans',NULL,NULL,NULL),(194,'A2/02/2021/I/20',1,'monitor','','','','',0,'','Agus Setyawan','agus@hostinger.com','Customer Success','Deployed','','','15 Feb 2021','Hans',NULL,NULL,NULL),(195,'A2/02/2021/I/21',1,'monitor','','','','',0,'','Nofiana Dwi Dayanti','nofiana@hostinger.com','Hostinger Finance','Deployed','','','15 Feb 2021','Hans',NULL,NULL,NULL),(196,'A2/02/2021/I/22',1,'monitor','','','','',0,'','Dewi Suryaningsih','dewi@hostinger.com','Hostinger Finance','Deployed','','','15 Feb 2021','Hans',NULL,NULL,NULL),(197,'A2/02/2021/I/23',1,'monitor','LG22MK400H','','812NTWG4S673','',0,'','Gaelle Makagiansar','gaelle.makagiansar@hostinger.com','Customer Success','Deployed','','Feni Ratna Ningrum','16 Aug 2021','Dimas',NULL,NULL,NULL),(198,'A2/02/2021/I/24',1,'monitor','','','','',0,'','Jihan Mutia F Bouta','jihan@hostinger.com','Hostinger Finance','Deployed','','','15 Feb 2021','Hans',NULL,NULL,NULL),(199,'A2/02/2021/I/25',1,'monitor','','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','','Fitra Cintami','15 Feb 2021','Hans',NULL,NULL,NULL),(200,'A2/02/2021/I/26',1,'monitor','','','','',0,'','','office.operation@niagahoster.co.id','-','Storage','Dikembalikan 2021 oleh Mba Fauzia diterima Maudy','','15 Feb 2021','Hans',NULL,NULL,NULL),(201,'A2/02/2021/I/27',1,'monitor',' 23 inch','LG','','',0,'','Betia Bayu Saputra','bayu.putra@hostinger.com','Engineering','Deployed','','WMTI/CS/122019 (39)','18 Mar 2022','Adith',NULL,NULL,NULL),(202,'A2/02/2021/I/28',1,'monitor',' ','LG','','',0,'','Irfan Gani Rahmadan','irfan@hostinger.com','Engineering','Deployed','','','','Rayhana',NULL,NULL,NULL),(203,'A2/02/2021/I/29',1,'monitor',' ','LG','','',0,'','Vincent Putra Gunawan','vincent@niagahoster.co.id','Engineering','Deployed','','','15 Mar 2022','Adith',NULL,NULL,NULL),(204,'A2/02/2021/I/30',1,'monitor','','','','',0,'','Akril Valerat Deainert Wierfi','dea@hostinger.com','Product','Deployed','','','15 Feb 2021','Hans',NULL,NULL,NULL),(205,'A2/02/2021/I/31',1,'monitor',' LG 24MK600M','LG','','',0,'','Abdul Halim','abdul.halim@hostinger.com','Engineering','Deployed','','','','Rayhana',NULL,NULL,NULL),(206,'A2/02/2021/I/32',1,'monitor','','','','',0,'','Wayan Cahyono','wayan@hostinger.com','Board of Director','Deployed','','','18 Mar 2022','Adith',NULL,NULL,NULL),(207,'A2/02/2021/I/33',2,'monitor',NULL,NULL,NULL,NULL,0,NULL,'Ade Cahya Ramadhan','ade.cahya@hostinger.com','Hostinger Marketing','Deployed','','Rahmandika, Andi Fatimah','17 Jan 2022','Adith',NULL,'2022-05-12 19:14:45',NULL),(218,'A1/08/2022/I/01',1,NULL,'PC Server','HP','111111','Anandam',20000000,'3 Agustus 2022','-',NULL,NULL,'Storage',NULL,NULL,'3 Agustus 2022','Adith','2022-08-04 21:11:47','2022-08-04 21:23:05','2022-08-04 21:23:05'),(219,'test',2,NULL,'test','test','test','test',1,'2022-08-14T17:00:00.000Z','test',NULL,NULL,'Deployed','test',NULL,'2022-08-22T17:00:00.000Z','Dimas','2022-08-14 20:01:23','2022-08-14 20:10:49','2022-08-14 20:10:49'),(220,'A1/01/2000/I/01',1,NULL,'-','-','-','-',1,'2022-08-19T17:00:00.000Z','Alexander Adimas',NULL,NULL,'Storage','test',NULL,'2022-08-25T17:00:00.000Z','Dimas','2022-08-25 20:50:39','2022-08-25 21:04:27',NULL);
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_09_044534_create_roles_table',1),(10,'2019_12_09_082630_create_role_user_table',1),(11,'2019_12_09_094511_create_social_accounts_table',1),(12,'2019_12_27_065818_create_products_table',1),(13,'2019_12_27_070549_create_categories_table',1),(14,'2019_12_27_070603_create_tags_table',1),(15,'2020_01_08_113508_create_product_tag_pivot_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Niagahoster AMS Personal Access Client','8va5z6MU5tRmYriFAbODmDIVrKdgmPdhO5v0oB0C',NULL,'http://localhost',1,0,0,'2022-05-03 10:17:53','2022-05-03 10:17:53'),(2,NULL,'Niagahoster AMS Password Grant Client','ZSu9kLCCRUhSy8JX3FrgNL9vvKtCyzHurbdwx4lQ','users','http://localhost',0,1,0,'2022-05-03 10:17:53','2022-05-03 10:17:53');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2022-05-03 10:17:53','2022-05-03 10:17:53');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_accounts` (
  `user_id` int NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Tag 1',NULL,NULL),(2,'Tag 2',NULL,NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alexander Adimas','admin','adimas.anggi@niagahoster.co.id',NULL,'$2y$10$hXcRJCwUSNAXBQqCwi4U2O2YA/W1esFWC9hAf3vqw/tdk88M5eR2m','FQDVPNIiOF4a6oEnXzZSo7NWSFRlww3rOgpctOIghG45cBDBgYfizXJJi3Fa','2022-05-03','2022-05-05'),(3,'Maudy','admin','maudy@hostinger.com',NULL,'$2y$10$y1uQH3vv2w6i/Ml5xwErSO2Duze93h7.4JaWd8fIk7ZF.8K.i7Xse',NULL,'2022-05-09','2022-05-09'),(4,'Adith','admin','adith.haris@hostinger.com',NULL,'$2y$10$xjizi1fV18H1qgQco.w2wOkGLk9QTxNyn228mCS6B9hTpDQfqx3pu','DrkgbXU991mpEpKgUgrKstWfveDzRIjdy4dRAyJLXY6IJ4no9RyYWEWjpYfC','2022-08-05','2022-08-05'),(5,'Nurul','user','nurul@hostinger.com',NULL,'$2y$10$4jRRHkPvIBN0IeuaN45gHu5tXbiuL/Dxj.H62shgMBKcNSNYbasiW',NULL,'2022-08-05','2022-08-05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-31 12:11:30
