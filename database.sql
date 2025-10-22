-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: nest
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'BXbhE1OIYR7m94hgLOe54hP0jWAeJOqk',1,'2025-09-11 01:46:12','2025-09-11 01:46:12','2025-09-11 01:46:12');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2030-09-11 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2025-09-11 01:46:29','2025-09-11 01:46:29',1,NULL,NULL,NULL,NULL),(2,'Make your Breakfast','2030-09-11 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2025-09-11 01:46:29','2025-09-11 01:46:29',1,NULL,NULL,NULL,NULL),(3,'The best Organic','2030-09-11 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2025-09-11 01:46:29','2025-09-11 01:46:29',1,NULL,NULL,NULL,NULL),(4,'Bring nature into your home','2030-09-11 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2025-09-11 01:46:29','2025-09-11 01:46:29',1,NULL,NULL,NULL,NULL),(5,'Delivered to your home','2030-09-11 00:00:00','not_set','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2025-09-11 01:46:29','2025-09-11 01:46:29',1,NULL,NULL,NULL,NULL),(6,'Save 17% on Oganic Juice','2030-09-11 00:00:00','not_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2025-09-11 01:46:29','2025-09-11 01:46:29',1,NULL,NULL,NULL,NULL),(7,'Everyday Fresh & Clean with Our Products','2030-09-11 00:00:00','not_set','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2025-09-11 01:46:29','2025-09-11 01:46:29',1,NULL,NULL,NULL,NULL),(8,'The best Organic Products Online','2030-09-11 00:00:00','not_set','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2025-09-11 01:46:29','2025-09-11 01:46:29',1,NULL,NULL,NULL,NULL),(9,'Everyday Fresh with Our Products','2030-09-11 00:00:00','not_set','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2025-09-11 01:46:29','2025-09-11 01:46:29',1,NULL,NULL,NULL,NULL),(10,'100% guaranteed all Fresh items','2030-09-11 00:00:00','not_set','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2025-09-11 01:46:29','2025-09-11 01:46:29',1,NULL,NULL,NULL,NULL),(11,'Special grocery sale off this month','2030-09-11 00:00:00','not_set','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2025-09-11 01:46:29','2025-09-11 01:46:29',1,NULL,NULL,NULL,NULL),(12,'Enjoy 15% OFF for all vegetable and fruit','2030-09-11 00:00:00','not_set','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2025-09-11 01:46:30','2025-09-11 01:46:30',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Id recusandae deleniti accusamus accusamus illo. Soluta est incidunt sequi sint mollitia nisi reprehenderit. Vel eum quod eius non hic.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(2,'Fashion',0,'Laudantium rerum dolore esse alias sed veniam perferendis. Libero quae quod voluptatem in omnis. Minima accusamus quod unde ab necessitatibus animi sed. Possimus possimus dolores nam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(3,'Electronic',0,'Est aut deserunt commodi in. Quibusdam esse quas quaerat alias reiciendis. Optio possimus fugiat voluptas neque ut cum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(4,'Commercial',0,'Ut autem reiciendis molestiae doloribus et. Facere occaecati earum tenetur voluptatem. Vero ut et et ut iure dolorum voluptatem eum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-11 01:46:11','2025-09-11 01:46:11');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`),
  KEY `idx_cities_name` (`name`),
  KEY `idx_cities_state_status` (`state_id`,`status`),
  KEY `idx_cities_status` (`status`),
  KEY `idx_cities_state_id` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`),
  KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  KEY `idx_cities_trans_name` (`name`),
  KEY `idx_cities_trans_cities_id` (`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_countries_name` (`name`),
  KEY `idx_countries_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`),
  KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  KEY `idx_countries_trans_name` (`name`),
  KEY `idx_countries_trans_countries_id` (`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_abandoned_carts`
--

DROP TABLE IF EXISTS `ec_abandoned_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_abandoned_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_data` json NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `items_count` int NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int NOT NULL DEFAULT '0',
  `is_recovered` tinyint(1) NOT NULL DEFAULT '0',
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  KEY `ec_abandoned_carts_email_index` (`email`),
  KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_abandoned_carts`
--

LOCK TABLES `ec_abandoned_carts` WRITE;
/*!40000 ALTER TABLE `ec_abandoned_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_abandoned_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2025-09-11 01:45:32','2025-09-11 01:45:32'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2025-09-11 01:45:32','2025-09-11 01:45:32'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2025-09-11 01:45:32','2025-09-11 01:45:32'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2025-09-11 01:45:32','2025-09-11 01:45:32'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2025-09-11 01:45:32','2025-09-11 01:45:32'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2025-09-11 01:45:32','2025-09-11 01:45:32'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2025-09-11 01:45:32','2025-09-11 01:45:32');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-09-11 01:45:32','2025-09-11 01:45:32'),(2,'EUR','€',0,2,1,0,0.84,'2025-09-11 01:45:32','2025-09-11 01:45:32'),(3,'VND','₫',0,0,2,0,23203,'2025-09-11 01:45:32','2025-09-11 01:45:32'),(4,'NGN','₦',1,2,2,0,895.52,'2025-09-11 01:45:32','2025-09-11 01:45:32');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Prof. Jefferey Gerlach III','customer@botble.com','+18204823507','AQ','Maryland','Elianbury','2545 Santina Port',1,1,'2025-09-11 01:45:57','2025-09-11 01:45:57','13785'),(2,'Prof. Jefferey Gerlach III','customer@botble.com','+14638061236','CN','Kansas','Lake Javonport','3133 Stroman Manor',1,0,'2025-09-11 01:45:57','2025-09-11 01:45:57','19599'),(3,'Cristal Kuphal','vendor@botble.com','+12105474418','ME','Pennsylvania','Rosabury','3925 Kyra Court',2,1,'2025-09-11 01:45:58','2025-09-11 01:45:58','71104-3705'),(4,'Cristal Kuphal','vendor@botble.com','+12546954996','BE','Idaho','Shayleeland','5019 Altenwerth Groves',2,0,'2025-09-11 01:45:58','2025-09-11 01:45:58','82431-2991'),(5,'Mrs. Grace Bartell MD','cruickshank.clyde@example.org','+17733362284','GE','Idaho','Eulaview','744 Anastasia Harbors Suite 581',3,1,'2025-09-11 01:45:58','2025-09-11 01:45:58','02624-8340'),(6,'Anita Skiles','missouri.grimes@example.com','+16142335501','CX','California','Port Kenna','63163 Jaskolski Common Suite 100',4,1,'2025-09-11 01:45:59','2025-09-11 01:45:59','74252-2955'),(7,'Prof. Sophie Mann','davonte.quigley@example.com','+15858195226','CM','Washington','East Tomas','600 Pfeffer Run',5,1,'2025-09-11 01:46:00','2025-09-11 01:46:00','35741'),(8,'Colt Littel','lang.oral@example.org','+16576386414','PK','Indiana','West Alfred','782 Jaskolski Hollow Suite 122',6,1,'2025-09-11 01:46:00','2025-09-11 01:46:00','20629'),(9,'Dr. Hettie McCullough','anderson.roselyn@example.com','+14583131971','BO','Rhode Island','West Newell','840 Spencer Harbors',7,1,'2025-09-11 01:46:01','2025-09-11 01:46:01','63557'),(10,'Jermain Miller','oda13@example.net','+12673825829','FM','New Mexico','DuBuquefurt','319 Conroy Plains',8,1,'2025-09-11 01:46:02','2025-09-11 01:46:02','12257-0335'),(11,'Dr. Constance McGlynn DDS','howell.sage@example.org','+18729599595','US','Montana','Sydneehaven','218 Mosciski Stream Suite 385',9,1,'2025-09-11 01:46:02','2025-09-11 01:46:02','70340'),(12,'Mose Goldner','haag.ettie@example.net','+12796661770','PF','New Hampshire','North Ubaldotown','2245 Rosella Corner Apt. 241',10,1,'2025-09-11 01:46:03','2025-09-11 01:46:03','44738');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Prof. Jefferey Gerlach III','customer@botble.com','$2y$12$bU650.dTcIA3paXznR9oFOKMq/mymsREyKObd0/UESi9xHW/g14ge','customers/3.jpg','1976-08-27','+16319924733',NULL,'2025-09-11 01:45:57','2025-09-11 01:45:57','2025-09-11 08:45:57',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(2,'Cristal Kuphal','vendor@botble.com','$2y$12$GuvhNknD4mJ/gZ/4OgEBE.1D5b0h0gtK/Gd4VsShBLmn6zzL3XjOW','customers/5.jpg','1992-08-15','+12769613236',NULL,'2025-09-11 01:45:58','2025-09-11 01:46:35','2025-09-11 08:45:58',NULL,'activated',NULL,NULL,1,'2025-09-11 08:46:35',NULL,0),(3,'Mrs. Grace Bartell MD','cruickshank.clyde@example.org','$2y$12$yI8/i7dWM3uNE8zdaLkXcu5HS4bvZbaNZpvk.ws4/U6OZaqnIo072','customers/1.jpg','1986-09-10','+12312399674',NULL,'2025-09-11 01:45:58','2025-09-11 01:46:36','2025-09-11 08:45:58',NULL,'activated',NULL,NULL,1,'2025-09-11 08:46:36',NULL,0),(4,'Anita Skiles','missouri.grimes@example.com','$2y$12$fT3jAp7GSDiipEmo/4EKYubkFfnbAbdHYpwfqCYC76j0zjGPmm1nO','customers/2.jpg','2003-08-28','+15857424404',NULL,'2025-09-11 01:45:59','2025-09-11 01:46:37','2025-09-11 08:45:59',NULL,'activated',NULL,NULL,1,'2025-09-11 08:46:37',NULL,0),(5,'Prof. Sophie Mann','davonte.quigley@example.com','$2y$12$A./5J4yR6IWAC6FeFPNRHOFMO8t2P7ymicnVmchUS0BF/yRZMHPJa','customers/3.jpg','1975-08-19','+13378661407',NULL,'2025-09-11 01:46:00','2025-09-11 01:46:38','2025-09-11 08:46:00',NULL,'activated',NULL,NULL,1,'2025-09-11 08:46:38',NULL,0),(6,'Colt Littel','lang.oral@example.org','$2y$12$sw6OK3DsHu5uLIOqRC89DeQh.108jIt1OrOsd6f6tM.oYKD32EI52','customers/4.jpg','1975-09-02','+19526509173',NULL,'2025-09-11 01:46:00','2025-09-11 01:46:39','2025-09-11 08:46:00',NULL,'activated',NULL,NULL,1,'2025-09-11 08:46:39',NULL,0),(7,'Dr. Hettie McCullough','anderson.roselyn@example.com','$2y$12$e1Xv0/cXWgspCc6QmZDsBuxwmC4DYRajVT4OXi.a3MZ.j1LPni0r2','customers/5.jpg','1984-08-27','+12347572269',NULL,'2025-09-11 01:46:01','2025-09-11 01:46:01','2025-09-11 08:46:01',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(8,'Jermain Miller','oda13@example.net','$2y$12$gukL2RvSBqgbd/He5I4lquyipK7pwkog7s.tCxT95kHRWvf8pwOOu','customers/6.jpg','1975-08-21','+16784273062',NULL,'2025-09-11 01:46:02','2025-09-11 01:46:02','2025-09-11 08:46:02',NULL,'activated',NULL,NULL,0,NULL,NULL,0),(9,'Dr. Constance McGlynn DDS','howell.sage@example.org','$2y$12$mAzvVZPrOz/HMTt.h/OyEuaiEKn976KjvS4sttPJXiFX1evmKUH.6','customers/7.jpg','2005-08-26','+16173133494',NULL,'2025-09-11 01:46:02','2025-09-11 01:46:39','2025-09-11 08:46:02',NULL,'activated',NULL,NULL,1,'2025-09-11 08:46:39',NULL,0),(10,'Mose Goldner','haag.ettie@example.net','$2y$12$edi/iBGqhvGE5rXv8kQuX.DNkL.gpIVFUwKy/ut.oRIcPCNcFg3.m','customers/8.jpg','1975-08-24','+12832871231',NULL,'2025-09-11 01:46:03','2025-09-11 01:46:03','2025-09-11 08:46:03',NULL,'activated',NULL,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','PJSKC1TUKBTQ','2025-09-10 08:46:04',NULL,NULL,0,99,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,NULL),(2,'Discount 2','9BEWSM1TNJKW','2025-09-10 08:46:04','2025-09-23 08:46:04',NULL,0,78,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,NULL),(3,'Discount 3','LRE0SVE7UOKE','2025-09-10 08:46:04',NULL,NULL,0,86,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,NULL),(4,'Discount 4','UYFCA9BQ4HR2','2025-09-10 08:46:04',NULL,NULL,0,663,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,NULL),(5,'Discount 5','X8MBB8AX8ODM','2025-09-10 08:46:04','2025-09-27 08:46:04',NULL,0,844,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,NULL),(6,'Discount 6','EB9YBVGOP38S','2025-09-10 08:46:04',NULL,NULL,0,291,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,NULL),(7,'Discount 7','6ARKXO9T2H4M','2025-09-10 08:46:04',NULL,NULL,0,328,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,NULL),(8,'Discount 8','OGVITSGAKRSM','2025-09-10 08:46:04',NULL,NULL,0,242,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,NULL),(9,'Discount 9','XUSW1ROQHZ1X','2025-09-10 08:46:04',NULL,NULL,0,744,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,NULL),(10,'Discount 10','MHIFUSAZPLXF','2025-09-10 08:46:04',NULL,NULL,0,4,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,6,18,16,1),(2,12,1292.5525,8,4),(3,9,515.7,12,1),(4,19,92.8,14,3),(5,8,253.8,15,5),(5,1,320.37,13,5),(5,2,197.6,9,5),(5,3,67.95,7,5),(5,4,387.02,19,3),(5,5,728.85,19,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2025-10-19 00:00:00','published','2025-09-11 01:46:04','2025-09-11 01:46:04'),(2,'Winter Sale','2025-10-23 00:00:00','published','2025-09-11 01:46:04','2025-09-11 01:46:04'),(3,'Gadgets &amp; Accessories','2025-10-12 00:00:00','published','2025-09-11 01:46:04','2025-09-11 01:46:04'),(4,'Hot products','2025-10-19 00:00:00','published','2025-09-11 01:46:04','2025-09-11 01:46:04'),(5,'Best sale items','2025-10-09 00:00:00','published','2025-09-11 01:46:04','2025-09-11 01:46:04');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(2,1,'2 Year',10,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(3,1,'3 Year',20,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(4,2,'4GB',0,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(5,2,'8GB',10,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(6,2,'16GB',20,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(7,3,'Core i5',0,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(8,3,'Core i7',10,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(9,3,'Core i9',20,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(10,4,'128GB',0,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(11,4,'256GB',10,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(12,4,'512GB',20,9999,0,'2025-09-11 01:46:30','2025-09-11 01:46:30');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-11 01:46:30','2025-09-11 01:46:30'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-09-11 01:46:30','2025-09-11 01:46:30');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address_line` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` text COLLATE utf8mb4_unicode_ci,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2025-09-11 01:45:37','2025-09-11 01:45:37',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`),
  KEY `idx_attribute_set_id` (`attribute_set_id`),
  KEY `idx_attribute_set_order_id` (`attribute_set_id`,`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'2025-09-11 01:45:37','2025-09-11 01:45:37'),(2,1,'2KG','2kg',NULL,NULL,0,2,'2025-09-11 01:45:37','2025-09-11 01:45:37'),(3,1,'3KG','3kg',NULL,NULL,0,3,'2025-09-11 01:45:37','2025-09-11 01:45:37'),(4,1,'4KG','4kg',NULL,NULL,0,4,'2025-09-11 01:45:37','2025-09-11 01:45:37'),(5,1,'5KG','5kg',NULL,NULL,0,5,'2025-09-11 01:45:37','2025-09-11 01:45:37'),(6,2,'1 Box','1-box',NULL,NULL,1,1,'2025-09-11 01:45:37','2025-09-11 01:45:37'),(7,2,'2 Boxes','2-boxes',NULL,NULL,0,2,'2025-09-11 01:45:37','2025-09-11 01:45:37'),(8,2,'3 Boxes','3-boxes',NULL,NULL,0,3,'2025-09-11 01:45:37','2025-09-11 01:45:37'),(9,2,'4 Boxes','4-boxes',NULL,NULL,0,4,'2025-09-11 01:45:37','2025-09-11 01:45:37'),(10,2,'5 Boxes','5-boxes',NULL,NULL,0,5,'2025-09-11 01:45:37','2025-09-11 01:45:37');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`),
  KEY `idx_categories_status_order` (`status`,`order`),
  KEY `idx_categories_order` (`order`),
  KEY `ec_product_categories_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',NULL,0,NULL,'published',0,'product-categories/image-1.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-1.png'),(2,'Clothing & beauty',NULL,0,NULL,'published',1,'product-categories/image-2.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-2.png'),(3,'Pet Toy',NULL,0,NULL,'published',2,'product-categories/image-3.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-3.png'),(4,'Baking material',NULL,0,NULL,'published',3,'product-categories/image-4.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-4.png'),(5,'Fresh Fruit',NULL,0,NULL,'published',4,'product-categories/image-5.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-5.png'),(6,'Wines & Drinks',NULL,0,NULL,'published',5,'product-categories/image-6.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-6.png'),(7,'Fresh Seafood',NULL,0,NULL,'published',6,'product-categories/image-7.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-7.png'),(8,'Fast food',NULL,0,NULL,'published',7,'product-categories/image-8.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-8.png'),(9,'Vegetables',NULL,0,NULL,'published',8,'product-categories/image-9.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-9.png'),(10,'Bread and Juice',NULL,0,NULL,'published',9,'product-categories/image-10.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-10.png'),(11,'Cake & Milk',NULL,0,NULL,'published',10,'product-categories/image-11.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-11.png'),(12,'Coffee & Teas',NULL,0,NULL,'published',11,'product-categories/image-12.png',1,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-12.png'),(13,'Pet Foods',NULL,0,NULL,'published',12,'product-categories/image-13.png',0,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-13.png'),(14,'Diet Foods',NULL,0,NULL,'published',13,'product-categories/image-14.png',0,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'product-categories/icon-14.png');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`),
  KEY `idx_product_category` (`product_id`,`category_id`),
  KEY `idx_product_category_composite` (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,3),(1,11),(1,14),(1,17),(1,19),(1,21),(2,4),(2,5),(2,7),(2,10),(2,11),(2,13),(2,18),(2,20),(2,22),(2,24),(3,7),(3,10),(3,12),(3,15),(3,21),(3,24),(4,1),(4,2),(4,7),(4,9),(4,10),(4,13),(4,17),(4,20),(4,23),(5,4),(5,6),(5,8),(5,14),(5,15),(5,16),(5,21),(5,22),(6,3),(6,5),(6,6),(6,9),(6,18),(6,23),(7,3),(7,7),(7,9),(7,12),(7,14),(7,15),(7,16),(7,21),(7,23),(8,2),(8,11),(8,13),(8,16),(8,17),(8,22),(8,24),(9,4),(9,5),(9,8),(9,15),(9,19),(9,20),(10,2),(10,4),(10,8),(10,10),(10,16),(10,18),(10,19),(10,22),(10,23),(11,1),(11,6),(11,11),(11,13),(11,17),(11,18),(11,20),(12,1),(12,2),(12,12),(12,14),(13,1),(13,8),(13,9),(13,19),(13,24),(14,3),(14,5),(14,6),(14,12);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,3),(1,6),(1,7),(1,10),(1,12),(1,16),(1,20),(1,22),(1,23),(2,1),(2,4),(2,5),(2,9),(2,18),(2,19),(2,21),(2,24),(3,8),(3,11),(3,13),(3,14),(3,15),(3,17);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2025-09-11 01:45:37','2025-09-11 01:45:37',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2025-09-11 01:45:37','2025-09-11 01:45:37',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2025-09-11 01:45:37','2025-09-11 01:45:37',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`),
  KEY `idx_product_cross_sale` (`from_product_id`,`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,3,0,0.00,'fixed',1),(1,11,0,0.00,'fixed',1),(1,12,0,0.00,'fixed',1),(1,17,0,0.00,'fixed',1),(1,20,0,0.00,'fixed',1),(1,23,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,6,0,0.00,'fixed',1),(2,13,0,0.00,'fixed',1),(2,20,0,0.00,'fixed',1),(2,22,0,0.00,'fixed',1),(2,24,0,0.00,'fixed',1),(3,2,0,0.00,'fixed',1),(3,7,0,0.00,'fixed',1),(3,8,0,0.00,'fixed',1),(3,9,0,0.00,'fixed',1),(3,14,0,0.00,'fixed',1),(3,15,0,0.00,'fixed',1),(3,21,0,0.00,'fixed',1),(4,1,0,0.00,'fixed',1),(4,2,0,0.00,'fixed',1),(4,3,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,10,0,0.00,'fixed',1),(4,15,0,0.00,'fixed',1),(5,6,0,0.00,'fixed',1),(5,8,0,0.00,'fixed',1),(5,14,0,0.00,'fixed',1),(5,16,0,0.00,'fixed',1),(5,22,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,9,0,0.00,'fixed',1),(6,14,0,0.00,'fixed',1),(6,16,0,0.00,'fixed',1),(6,18,0,0.00,'fixed',1),(6,21,0,0.00,'fixed',1),(6,24,0,0.00,'fixed',1),(7,5,0,0.00,'fixed',1),(7,10,0,0.00,'fixed',1),(7,13,0,0.00,'fixed',1),(7,14,0,0.00,'fixed',1),(7,15,0,0.00,'fixed',1),(7,24,0,0.00,'fixed',1),(8,7,0,0.00,'fixed',1),(8,10,0,0.00,'fixed',1),(8,14,0,0.00,'fixed',1),(8,16,0,0.00,'fixed',1),(8,18,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(8,20,0,0.00,'fixed',1),(9,1,0,0.00,'fixed',1),(9,4,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,13,0,0.00,'fixed',1),(9,15,0,0.00,'fixed',1),(9,17,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,8,0,0.00,'fixed',1),(10,9,0,0.00,'fixed',1),(10,12,0,0.00,'fixed',1),(10,16,0,0.00,'fixed',1),(10,20,0,0.00,'fixed',1),(10,22,0,0.00,'fixed',1),(11,1,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,20,0,0.00,'fixed',1),(11,22,0,0.00,'fixed',1),(11,24,0,0.00,'fixed',1),(12,2,0,0.00,'fixed',1),(12,8,0,0.00,'fixed',1),(12,11,0,0.00,'fixed',1),(12,14,0,0.00,'fixed',1),(12,18,0,0.00,'fixed',1),(12,21,0,0.00,'fixed',1),(12,22,0,0.00,'fixed',1),(13,1,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,14,0,0.00,'fixed',1),(13,15,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(14,1,0,0.00,'fixed',1),(14,8,0,0.00,'fixed',1),(14,15,0,0.00,'fixed',1),(14,17,0,0.00,'fixed',1),(14,18,0,0.00,'fixed',1),(14,24,0,0.00,'fixed',1),(15,2,0,0.00,'fixed',1),(15,6,0,0.00,'fixed',1),(15,8,0,0.00,'fixed',1),(15,9,0,0.00,'fixed',1),(15,11,0,0.00,'fixed',1),(15,21,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,15,0,0.00,'fixed',1),(16,20,0,0.00,'fixed',1),(16,23,0,0.00,'fixed',1),(17,1,0,0.00,'fixed',1),(17,2,0,0.00,'fixed',1),(17,6,0,0.00,'fixed',1),(17,7,0,0.00,'fixed',1),(17,14,0,0.00,'fixed',1),(17,23,0,0.00,'fixed',1),(17,24,0,0.00,'fixed',1),(18,3,0,0.00,'fixed',1),(18,4,0,0.00,'fixed',1),(18,6,0,0.00,'fixed',1),(18,7,0,0.00,'fixed',1),(18,16,0,0.00,'fixed',1),(18,19,0,0.00,'fixed',1),(18,20,0,0.00,'fixed',1),(19,2,0,0.00,'fixed',1),(19,4,0,0.00,'fixed',1),(19,6,0,0.00,'fixed',1),(19,9,0,0.00,'fixed',1),(19,24,0,0.00,'fixed',1),(20,1,0,0.00,'fixed',1),(20,5,0,0.00,'fixed',1),(20,8,0,0.00,'fixed',1),(20,14,0,0.00,'fixed',1),(20,15,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(20,21,0,0.00,'fixed',1),(21,5,0,0.00,'fixed',1),(21,8,0,0.00,'fixed',1),(21,15,0,0.00,'fixed',1),(21,16,0,0.00,'fixed',1),(21,22,0,0.00,'fixed',1),(21,23,0,0.00,'fixed',1),(22,5,0,0.00,'fixed',1),(22,8,0,0.00,'fixed',1),(22,10,0,0.00,'fixed',1),(22,19,0,0.00,'fixed',1),(22,20,0,0.00,'fixed',1),(22,21,0,0.00,'fixed',1),(23,1,0,0.00,'fixed',1),(23,3,0,0.00,'fixed',1),(23,5,0,0.00,'fixed',1),(23,14,0,0.00,'fixed',1),(23,17,0,0.00,'fixed',1),(23,24,0,0.00,'fixed',1),(24,2,0,0.00,'fixed',1),(24,4,0,0.00,'fixed',1),(24,7,0,0.00,'fixed',1),(24,12,0,0.00,'fixed',1),(24,16,0,0.00,'fixed',1),(24,18,0,0.00,'fixed',1),(24,21,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"4\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(2,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(3,8,'ecommerce/digital-product-files/8.jpg','{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"8\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(4,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(5,12,'ecommerce/digital-product-files/12.jpg','{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"12\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(6,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(7,16,'ecommerce/digital-product-files/16.jpg','{\"filename\":\"16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"16\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(8,16,'ecommerce/digital-product-files/16-1.jpg','{\"filename\":\"16-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"16-1\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(9,20,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"20\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(10,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(11,24,'ecommerce/digital-product-files/24.jpg','{\"filename\":\"24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"24\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(12,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(13,29,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55'),(14,30,'ecommerce/digital-product-files/12.jpg','{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-11 08:45:55\",\"name\":\"12\",\"extension\":\"jpg\"}','2025-09-11 01:45:55','2025-09-11 01:45:55');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,9),(1,15),(1,18),(1,24),(2,12),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2025-09-11 01:45:37','2025-09-11 01:45:37',NULL),(2,'New','#02856e','published','2025-09-11 01:45:37','2025-09-11 01:45:37',NULL),(3,'Sale','#fe9931','published','2025-09-11 01:45:37','2025-09-11 01:45:37',NULL);
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_license_codes`
--

DROP TABLE IF EXISTS `ec_product_license_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_license_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `license_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_license_codes`
--

LOCK TABLES `ec_product_license_codes` WRITE;
/*!40000 ALTER TABLE `ec_product_license_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_license_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'82.04 cm',0,0),(1,7,'31.94 cm',0,0),(1,8,'2560x1440',0,0),(2,6,'7.68 cm',0,0),(2,7,'43.76 cm',0,0),(2,8,'2560x1440',0,0),(3,1,'18.03 cm',0,0),(3,2,'83.65 cm',0,0),(3,3,'49.22 cm',0,0),(3,4,'65.46 cm',0,0),(3,5,'50.82 cm',0,0),(4,6,'33.62 cm',0,0),(4,7,'90.2 cm',0,0),(4,8,'2560x1440',0,0),(5,1,'69.05 cm',0,0),(5,2,'85.94 cm',0,0),(5,3,'92.18 cm',0,0),(5,4,'99.49 cm',0,0),(5,5,'21.85 cm',0,0),(6,6,'64.74 cm',0,0),(6,7,'45.17 cm',0,0),(6,8,'1920x1080',0,0),(7,1,'17.64 cm',0,0),(7,2,'40.14 cm',0,0),(7,3,'73.06 cm',0,0),(7,4,'4.32 cm',0,0),(7,5,'98.11 cm',0,0),(8,6,'83.49 cm',0,0),(8,7,'87.67 cm',0,0),(8,8,'2560x1440',0,0),(9,6,'81.59 cm',0,0),(9,7,'40.81 cm',0,0),(9,8,'1920x1080',0,0),(10,6,'78.13 cm',0,0),(10,7,'99.67 cm',0,0),(10,8,'1920x1080',0,0),(11,1,'80.83 cm',0,0),(11,2,'35.4 cm',0,0),(11,3,'27.96 cm',0,0),(11,4,'95.83 cm',0,0),(11,5,'27.76 cm',0,0),(12,1,'78.35 cm',0,0),(12,2,'92.8 cm',0,0),(12,3,'30.94 cm',0,0),(12,4,'74.98 cm',0,0),(12,5,'62.71 cm',0,0),(13,6,'7.13 cm',0,0),(13,7,'20.43 cm',0,0),(13,8,'1920x1080',0,0),(14,6,'45.29 cm',0,0),(14,7,'40.38 cm',0,0),(14,8,'2560x1440',0,0),(15,1,'88.06 cm',0,0),(15,2,'20.23 cm',0,0),(15,3,'51.92 cm',0,0),(15,4,'98.19 cm',0,0),(15,5,'13.29 cm',0,0),(16,6,'65.36 cm',0,0),(16,7,'69.41 cm',0,0),(16,8,'2560x1440',0,0),(17,6,'87.84 cm',0,0),(17,7,'91.85 cm',0,0),(17,8,'2560x1440',0,0),(18,6,'95.25 cm',0,0),(18,7,'92.67 cm',0,0),(18,8,'2560x1440',0,0),(19,6,'97.41 cm',0,0),(19,7,'18.92 cm',0,0),(19,8,'1920x1080',0,0),(20,6,'21.51 cm',0,0),(20,7,'47.27 cm',0,0),(20,8,'3840x2160',0,0),(21,6,'16.01 cm',0,0),(21,7,'25.5 cm',0,0),(21,8,'1920x1080',0,0),(22,6,'88.78 cm',0,0),(22,7,'18.4 cm',0,0),(22,8,'1920x1080',0,0),(23,6,'92.41 cm',0,0),(23,7,'75.52 cm',0,0),(23,8,'3840x2160',0,0),(24,6,'28.92 cm',0,0),(24,7,'80.97 cm',0,0),(24,8,'1920x1080',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute_translations`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `psat_unique` (`product_id`,`attribute_id`,`lang_code`),
  KEY `psat_product_attribute_index` (`product_id`,`attribute_id`),
  KEY `psat_product_id_index` (`product_id`),
  KEY `psat_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute_translations`
--

LOCK TABLES `ec_product_specification_attribute_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,2),(1,5),(2,1),(2,4),(2,5),(3,2),(3,3),(3,4),(4,2),(4,3),(4,5),(5,2),(5,4),(5,5),(6,1),(6,3),(6,5),(7,2),(7,3),(7,4),(8,1),(8,2),(8,4),(9,1),(9,2),(9,5),(10,2),(10,3),(10,5),(11,1),(11,4),(11,5),(12,1),(12,3),(12,5),(13,1),(13,2),(13,4),(14,2),(14,4),(14,5),(15,1),(15,3),(15,5),(16,1),(16,3),(16,4),(17,2),(17,3),(17,4),(18,1),(18,2),(18,5),(19,3),(19,4),(19,5),(20,1),(20,4),(20,5),(21,2),(21,4),(21,5),(22,1),(22,4),(22,5),(23,2),(23,4),(23,5),(24,1),(24,3),(24,4);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2025-09-11 01:45:37','2025-09-11 01:45:37'),(2,'Bags',NULL,'published','2025-09-11 01:45:37','2025-09-11 01:45:37'),(3,'Shoes',NULL,'published','2025-09-11 01:45:37','2025-09-11 01:45:37'),(4,'Clothes',NULL,'published','2025-09-11 01:45:37','2025-09-11 01:45:37'),(5,'Hand bag',NULL,'published','2025-09-11 01:45:37','2025-09-11 01:45:37');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`),
  KEY `idx_variation_id` (`variation_id`),
  KEY `idx_variation_attribute_covering` (`variation_id`,`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (21,1,11),(23,1,12),(35,1,18),(37,1,19),(1,2,1),(5,2,3),(17,2,9),(27,2,14),(31,2,16),(43,2,22),(3,3,2),(9,3,5),(11,3,6),(13,3,7),(25,3,13),(33,3,17),(41,3,21),(7,4,4),(19,4,10),(39,4,20),(15,5,8),(29,5,15),(45,5,23),(8,6,4),(16,6,8),(18,7,9),(34,7,17),(36,7,18),(4,8,2),(10,8,5),(12,8,6),(20,8,10),(32,8,16),(38,8,19),(40,8,20),(46,8,23),(2,9,1),(6,9,3),(14,9,7),(22,9,11),(24,9,12),(26,9,13),(30,9,15),(42,9,21),(44,9,22),(28,10,14);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`),
  KEY `idx_configurable_product_id` (`configurable_product_id`),
  KEY `idx_product_variations_config` (`configurable_product_id`,`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,5,1),(2,26,5,0),(3,27,7,1),(4,28,7,0),(5,29,12,1),(6,30,12,0),(7,31,14,1),(8,32,14,0),(9,33,14,0),(10,34,14,0),(11,35,14,0),(12,36,15,1),(13,37,15,0),(14,38,15,0),(15,39,17,1),(16,40,21,1),(17,41,21,0),(18,42,21,0),(19,43,23,1),(20,44,23,0),(21,45,23,0),(22,46,23,0),(23,47,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-09-11',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,5,0),(2,5,0),(1,7,0),(2,7,0),(1,12,0),(2,12,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,17,0),(2,17,0),(1,21,0),(2,21,0),(1,23,0),(2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `variations_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_count` int unsigned NOT NULL DEFAULT '0',
  `reviews_avg` decimal(3,2) NOT NULL DEFAULT '0.00',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `license_code_type` enum('auto_generate','pick_from_list') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`),
  KEY `idx_products_export` (`id`,`is_variation`),
  KEY `idx_variation_name_id` (`is_variation`,`name`,`id`),
  KEY `ec_products_variations_count_index` (`variations_count`),
  KEY `ec_products_reviews_count_index` (`reviews_count`),
  KEY `ec_products_reviews_avg_index` (`reviews_avg`),
  KEY `ec_products_slug_index` (`slug`),
  KEY `idx_products_status_variation` (`status`,`is_variation`,`id`),
  KEY `idx_products_price_sale` (`sale_type`,`sale_price`,`price`),
  KEY `idx_products_order_created` (`order`,`created_at`),
  KEY `idx_products_stock` (`with_storehouse_management`,`stock_status`,`quantity`),
  KEY `idx_store_variation_status` (`store_id`,`is_variation`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe','seeds-of-change-organic-quinoe','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]',NULL,'AW-104',0,16,0,1,'in_stock',1,1,0,0,10,2.90,0,639,543,NULL,NULL,18,16,16,882,NULL,123348,'2025-09-11 01:45:50','2025-09-11 01:46:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','7121691134034',NULL,0,'auto_generate',0,0,0,2,1,0),(2,'All Natural Italian-Style Chicken Meatballs','all-natural-italian-style-chicken-meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]',NULL,'KR-188',0,12,0,1,'in_stock',1,3,0,0,10,2.20,0,521,260,NULL,NULL,11,19,16,874,NULL,149750,'2025-09-11 01:45:51','2025-09-11 01:46:40',0,'Botble\\ACL\\Models\\User',NULL,'physical','0723375330397',NULL,0,'auto_generate',0,0,0,2,5,0),(3,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','angies-boomchickapop-sweet-salty-kettle-corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]',NULL,'IP-150',0,13,0,1,'in_stock',1,7,0,0,10,3.50,0,707,151,NULL,NULL,12,17,13,650,NULL,48344,'2025-09-11 01:45:51','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','9305450163536',NULL,0,'auto_generate',0,0,0,1,2,0),(4,'Foster Farms Takeout Crispy Classic (Digital)','foster-farms-takeout-crispy-classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]',NULL,'DX-101',0,14,0,1,'in_stock',1,4,0,0,10,3.20,0,1275,523,NULL,NULL,10,19,19,890,NULL,57743,'2025-09-11 01:45:51','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'digital','5610140691140',NULL,0,'auto_generate',0,0,0,2,5,0),(5,'Blue Diamond Almonds Lightly','blue-diamond-almonds-lightly','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]',NULL,'VR-135-A1',0,17,0,1,'in_stock',1,5,0,2,10,2.30,0,1695,NULL,NULL,NULL,16,17,17,654,NULL,59792,'2025-09-11 01:45:51','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','8658888163465',NULL,0,'auto_generate',0,0,0,1,1,0),(6,'Chobani Complete Vanilla Greek','chobani-complete-vanilla-greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]',NULL,'96-146',0,20,0,1,'in_stock',1,3,0,0,10,3.50,0,1129,30,NULL,NULL,12,19,13,865,NULL,142152,'2025-09-11 01:45:51','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','5512957183828',NULL,0,'auto_generate',0,0,0,2,3,0),(7,'Canada Dry Ginger Ale – 2 L Bottle','canada-dry-ginger-ale-2-l-bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]',NULL,'GZ-156-A1',0,19,0,1,'in_stock',1,1,0,2,9,3.33,0,947,NULL,NULL,NULL,14,15,12,590,NULL,82388,'2025-09-11 01:45:51','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','5218048846596',NULL,0,'auto_generate',0,0,0,1,2,0),(8,'Encore Seafoods Stuffed Alaskan (Digital)','encore-seafoods-stuffed-alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]',NULL,'SA-179',0,14,0,1,'in_stock',1,1,0,0,10,2.80,0,584,282,NULL,NULL,10,12,14,745,NULL,148033,'2025-09-11 01:45:51','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'digital','4269903994267',NULL,0,'auto_generate',0,0,0,2,1,0),(9,'Gorton’s Beer Battered Fish Fillets','gortons-beer-battered-fish-fillets','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]',NULL,'UG-168',0,20,0,1,'in_stock',1,2,0,0,10,2.60,0,1508,573,NULL,NULL,18,12,20,561,NULL,130196,'2025-09-11 01:45:51','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','4905199058169',NULL,0,'auto_generate',0,0,0,2,2,0),(10,'Haagen-Dazs Caramel Cone Ice Cream','haagen-dazs-caramel-cone-ice-cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]',NULL,'GZ-132',0,13,0,1,'in_stock',1,7,0,0,10,3.30,0,1908,1834,NULL,NULL,18,14,20,676,NULL,131104,'2025-09-11 01:45:51','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','3751630113062',NULL,0,'auto_generate',0,0,0,2,2,0),(11,'Nestle Original Coffee-Mate Coffee Creamer','nestle-original-coffee-mate-coffee-creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]',NULL,'TN-151',0,12,0,1,'in_stock',1,4,0,0,10,3.00,0,1407,279,NULL,NULL,13,16,16,523,NULL,17628,'2025-09-11 01:45:51','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','5301541131013',NULL,0,'auto_generate',0,0,0,1,3,0),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee (Digital)','naturally-flavored-cinnamon-vanilla-light-roast-coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]',NULL,'KZ-123-A1',0,11,0,1,'in_stock',1,2,0,2,10,3.60,0,1789,1520.65,NULL,NULL,16,20,20,510,NULL,161807,'2025-09-11 01:45:51','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'digital','5447884111104',NULL,0,'auto_generate',0,0,0,1,5,0),(13,'Pepperidge Farm Farmhouse Hearty White Bread','pepperidge-farm-farmhouse-hearty-white-bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]',NULL,'UN-131',0,19,0,1,'in_stock',1,6,0,0,10,3.20,0,989,24,NULL,NULL,10,14,12,566,NULL,37008,'2025-09-11 01:45:52','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','7788435163530',NULL,0,'auto_generate',0,0,0,2,3,0),(14,'Organic Frozen Triple Berry Blend','organic-frozen-triple-berry-blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]',NULL,'GK-136-A1',0,16,0,1,'in_stock',1,3,0,5,10,3.90,0,1375,NULL,NULL,NULL,20,12,12,827,NULL,20921,'2025-09-11 01:45:52','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','5777981375698',NULL,0,'auto_generate',0,0,0,2,3,0),(15,'Oroweat Country Buttermilk Bread','oroweat-country-buttermilk-bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]',NULL,'RP-105-A1',0,15,0,1,'in_stock',1,4,0,3,8,2.88,0,1907,NULL,NULL,NULL,12,14,15,875,NULL,72581,'2025-09-11 01:45:52','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','1031343007394',NULL,0,'auto_generate',0,0,0,1,6,0),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings (Digital)','foster-farms-takeout-crispy-classic-buffalo-wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]',NULL,'XU-115',0,14,0,1,'in_stock',1,1,0,0,10,2.10,0,2248,1802,NULL,NULL,18,18,15,609,NULL,9156,'2025-09-11 01:45:52','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'digital','0546604969126',NULL,0,'auto_generate',0,0,0,2,6,0),(17,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','angies-boomchickapop-sweet-salty-kettle-corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]',NULL,'OL-107-A1',0,20,0,1,'in_stock',1,3,0,1,10,2.80,0,1804,NULL,NULL,NULL,10,15,12,678,NULL,53237,'2025-09-11 01:45:52','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','2281254208048',NULL,0,'auto_generate',0,0,0,2,3,0),(18,'All Natural Italian-Style Chicken Meatballs','all-natural-italian-style-chicken-meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]',NULL,'J3-146',0,11,0,1,'in_stock',1,3,0,0,9,3.56,0,754,734,NULL,NULL,20,14,13,695,NULL,112652,'2025-09-11 01:45:52','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','4641728967938',NULL,0,'auto_generate',0,0,0,2,3,0),(19,'Simply Lemonade with Raspberry Juice','simply-lemonade-with-raspberry-juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]',NULL,'1Q-123',0,20,0,1,'in_stock',1,5,0,0,10,2.20,0,1317,232,NULL,NULL,15,20,12,679,NULL,181321,'2025-09-11 01:45:52','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','7079610435307',NULL,0,'auto_generate',0,0,0,2,6,0),(20,'Perdue Simply Smart Organics Gluten Free (Digital)','perdue-simply-smart-organics-gluten-free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]',NULL,'OF-170',0,14,0,1,'in_stock',1,3,0,0,10,3.10,0,1579,567,NULL,NULL,10,13,12,758,NULL,191032,'2025-09-11 01:45:52','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'digital','9795488634069',NULL,0,'auto_generate',0,0,0,2,1,0),(21,'Chen Watermelon','chen-watermelon','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]',NULL,'96-119-A1',0,14,0,1,'in_stock',1,5,0,3,10,3.00,0,968,NULL,NULL,NULL,18,19,17,848,NULL,24460,'2025-09-11 01:45:52','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','3939577010334',NULL,0,'auto_generate',0,0,0,2,3,0),(22,'Organic Cage-Free Grade A Large Brown Eggs','organic-cage-free-grade-a-large-brown-eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]',NULL,'BP-150',0,11,0,1,'in_stock',1,5,0,0,10,2.90,0,1478,52,NULL,NULL,20,17,14,724,NULL,82030,'2025-09-11 01:45:52','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','6238664771231',NULL,0,'auto_generate',0,0,0,2,1,0),(23,'Colorful Banana','colorful-banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]',NULL,'GS-186-A1',0,16,0,1,'in_stock',1,3,0,5,10,2.70,0,377,NULL,NULL,NULL,13,13,13,657,NULL,29936,'2025-09-11 01:45:53','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','4703380322637',NULL,0,'auto_generate',0,0,0,2,6,0),(24,'Signature Wood-Fired Mushroom and Caramelized (Digital)','signature-wood-fired-mushroom-and-caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]',NULL,'UX-166',0,14,0,1,'in_stock',1,2,0,0,10,3.10,0,871,376,NULL,NULL,18,13,20,695,NULL,190789,'2025-09-11 01:45:53','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'digital','0668866510080',NULL,0,'auto_generate',0,0,0,2,3,0),(25,'Blue Diamond Almonds Lightly',NULL,NULL,NULL,'published','[\"products\\/5-1.jpg\"]',NULL,'VR-135-A1',0,17,0,1,'in_stock',0,5,1,0,0,0.00,0,1695,NULL,NULL,NULL,16,17,17,654,NULL,0,'2025-09-11 01:45:53','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','9385103986279',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(26,'Blue Diamond Almonds Lightly',NULL,NULL,NULL,'published','[\"products\\/5.jpg\"]',NULL,'VR-135-A1-A2',0,17,0,1,'in_stock',0,5,1,0,0,0.00,0,1695,NULL,NULL,NULL,16,17,17,654,NULL,0,'2025-09-11 01:45:53','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','5829474626289',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(27,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,NULL,'published','[\"products\\/7-1.jpg\"]',NULL,'GZ-156-A1',0,19,0,1,'in_stock',0,1,1,0,0,0.00,0,947,NULL,NULL,NULL,14,15,12,590,NULL,0,'2025-09-11 01:45:53','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','3931329820666',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(28,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'GZ-156-A1-A2',0,19,0,1,'in_stock',0,1,1,0,0,0.00,0,947,NULL,NULL,NULL,14,15,12,590,NULL,0,'2025-09-11 01:45:53','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','2252848196836',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(29,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee (Digital)',NULL,NULL,NULL,'published','[\"products\\/12-1.jpg\"]',NULL,'KZ-123-A1',0,11,0,1,'in_stock',0,2,1,0,0,0.00,0,1789,1520.65,NULL,NULL,16,20,20,510,NULL,0,'2025-09-11 01:45:53','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'digital','9968187740526',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(30,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee (Digital)',NULL,NULL,NULL,'published','[\"products\\/12.jpg\"]',NULL,'KZ-123-A1-A2',0,11,0,1,'in_stock',0,2,1,0,0,0.00,0,1789,1449.09,NULL,NULL,16,20,20,510,NULL,0,'2025-09-11 01:45:53','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'digital','3897791066172',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(31,'Organic Frozen Triple Berry Blend',NULL,NULL,NULL,'published','[\"products\\/14-1.jpg\"]',NULL,'GK-136-A1',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,1375,NULL,NULL,NULL,20,12,12,827,NULL,0,'2025-09-11 01:45:53','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','5936951318961',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(32,'Organic Frozen Triple Berry Blend',NULL,NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'GK-136-A1-A2',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,1375,NULL,NULL,NULL,20,12,12,827,NULL,0,'2025-09-11 01:45:53','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','1860874865933',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(33,'Organic Frozen Triple Berry Blend',NULL,NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'GK-136-A1-A3',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,1375,NULL,NULL,NULL,20,12,12,827,NULL,0,'2025-09-11 01:45:53','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','0111146326135',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(34,'Organic Frozen Triple Berry Blend',NULL,NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'GK-136-A1-A4',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,1375,NULL,NULL,NULL,20,12,12,827,NULL,0,'2025-09-11 01:45:53','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','5484992204632',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(35,'Organic Frozen Triple Berry Blend',NULL,NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'GK-136-A1-A5',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,1375,NULL,NULL,NULL,20,12,12,827,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:41',0,'Botble\\ACL\\Models\\User',NULL,'physical','3849171119916',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(36,'Oroweat Country Buttermilk Bread',NULL,NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'RP-105-A1',0,15,0,1,'in_stock',0,4,1,0,0,0.00,0,1907,NULL,NULL,NULL,12,14,15,875,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','5882237291964',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(37,'Oroweat Country Buttermilk Bread',NULL,NULL,NULL,'published','[\"products\\/15.jpg\"]',NULL,'RP-105-A1-A2',0,15,0,1,'in_stock',0,4,1,0,0,0.00,0,1907,NULL,NULL,NULL,12,14,15,875,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','1202706724337',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(38,'Oroweat Country Buttermilk Bread',NULL,NULL,NULL,'published','[\"products\\/15.jpg\"]',NULL,'RP-105-A1-A3',0,15,0,1,'in_stock',0,4,1,0,0,0.00,0,1907,NULL,NULL,NULL,12,14,15,875,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','4254857823435',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(39,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,NULL,'published','[\"products\\/17-1.jpg\"]',NULL,'OL-107-A1',0,20,0,1,'in_stock',0,3,1,0,0,0.00,0,1804,NULL,NULL,NULL,10,15,12,678,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','6694508623836',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(40,'Chen Watermelon',NULL,NULL,NULL,'published','[\"products\\/21-1.jpg\"]',NULL,'96-119-A1',0,14,0,1,'in_stock',0,5,1,0,0,0.00,0,968,NULL,NULL,NULL,18,19,17,848,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','2921651660932',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(41,'Chen Watermelon',NULL,NULL,NULL,'published','[\"products\\/21.jpg\"]',NULL,'96-119-A1-A2',0,14,0,1,'in_stock',0,5,1,0,0,0.00,0,968,NULL,NULL,NULL,18,19,17,848,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','5640037862865',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(42,'Chen Watermelon',NULL,NULL,NULL,'published','[\"products\\/21.jpg\"]',NULL,'96-119-A1-A3',0,14,0,1,'in_stock',0,5,1,0,0,0.00,0,968,NULL,NULL,NULL,18,19,17,848,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','6871550057615',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(43,'Colorful Banana',NULL,NULL,NULL,'published','[\"products\\/23-1.jpg\"]',NULL,'GS-186-A1',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,377,NULL,NULL,NULL,13,13,13,657,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','4150772752365',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(44,'Colorful Banana',NULL,NULL,NULL,'published','[\"products\\/23.jpg\"]',NULL,'GS-186-A1-A2',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,377,NULL,NULL,NULL,13,13,13,657,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','4009499000337',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(45,'Colorful Banana',NULL,NULL,NULL,'published','[\"products\\/23.jpg\"]',NULL,'GS-186-A1-A3',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,377,NULL,NULL,NULL,13,13,13,657,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','5139121730994',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(46,'Colorful Banana',NULL,NULL,NULL,'published','[\"products\\/23.jpg\"]',NULL,'GS-186-A1-A4',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,377,NULL,NULL,NULL,13,13,13,657,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','4899838204935',NULL,0,'auto_generate',0,0,0,NULL,NULL,0),(47,'Colorful Banana',NULL,NULL,NULL,'published','[\"products\\/23.jpg\"]',NULL,'GS-186-A1-A5',0,16,0,1,'in_stock',0,3,1,0,0,0.00,0,377,NULL,NULL,NULL,13,13,13,657,NULL,0,'2025-09-11 01:45:54','2025-09-11 01:46:42',0,'Botble\\ACL\\Models\\User',NULL,'physical','2442524794368',NULL,0,'auto_generate',0,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,9,NULL,NULL,9,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/24-1.jpg\"]'),(2,1,NULL,NULL,5,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/14-1.jpg\",\"products\\/14.jpg\",\"products\\/24.jpg\"]'),(3,10,NULL,NULL,20,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\",\"products\\/6.jpg\",\"products\\/23.jpg\",\"products\\/24-1.jpg\"]'),(4,9,NULL,NULL,19,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2.jpg\",\"products\\/4-1.jpg\",\"products\\/16-1.jpg\"]'),(5,7,NULL,NULL,12,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/9-1.jpg\",\"products\\/13-1.jpg\",\"products\\/16-2.jpg\"]'),(6,7,NULL,NULL,15,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/16-3.jpg\",\"products\\/23.jpg\"]'),(7,2,NULL,NULL,2,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/4.jpg\",\"products\\/13.jpg\",\"products\\/17.jpg\"]'),(8,1,NULL,NULL,6,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\",\"products\\/6-1.jpg\",\"products\\/11.jpg\"]'),(9,6,NULL,NULL,1,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/13.jpg\"]'),(10,4,NULL,NULL,23,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/12-1.jpg\",\"products\\/19.jpg\"]'),(11,10,NULL,NULL,9,1,'Best ecommerce CMS online store!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16.jpg\",\"products\\/20-1.jpg\"]'),(13,2,NULL,NULL,24,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/10.jpg\",\"products\\/12-1.jpg\"]'),(14,7,NULL,NULL,5,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\",\"products\\/17-1.jpg\"]'),(15,1,NULL,NULL,20,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6-1.jpg\"]'),(16,6,NULL,NULL,13,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/21-1.jpg\"]'),(17,8,NULL,NULL,23,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6.jpg\",\"products\\/10-1.jpg\",\"products\\/15-1.jpg\",\"products\\/16.jpg\"]'),(18,7,NULL,NULL,1,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/8.jpg\",\"products\\/15-1.jpg\",\"products\\/15.jpg\",\"products\\/16-4.jpg\"]'),(19,1,NULL,NULL,17,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/15-1.jpg\"]'),(20,3,NULL,NULL,13,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/16-2.jpg\",\"products\\/16.jpg\"]'),(21,7,NULL,NULL,11,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\",\"products\\/8.jpg\",\"products\\/12.jpg\"]'),(22,2,NULL,NULL,23,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/14.jpg\",\"products\\/16-1.jpg\",\"products\\/22-1.jpg\"]'),(23,10,NULL,NULL,3,1,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3.jpg\",\"products\\/16-4.jpg\",\"products\\/24.jpg\"]'),(24,7,NULL,NULL,4,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/10.jpg\",\"products\\/11-1.jpg\",\"products\\/19-1.jpg\"]'),(25,8,NULL,NULL,9,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\",\"products\\/6.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(26,4,NULL,NULL,17,2,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\",\"products\\/7.jpg\",\"products\\/16-3.jpg\",\"products\\/18-1.jpg\"]'),(28,5,NULL,NULL,11,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/10.jpg\",\"products\\/16-2.jpg\",\"products\\/20.jpg\"]'),(29,1,NULL,NULL,12,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/24-1.jpg\"]'),(30,4,NULL,NULL,14,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-4.jpg\",\"products\\/21.jpg\"]'),(31,4,NULL,NULL,22,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/12-1.jpg\"]'),(32,2,NULL,NULL,19,1,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/13-1.jpg\",\"products\\/19-1.jpg\",\"products\\/22-1.jpg\"]'),(33,3,NULL,NULL,9,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7.jpg\",\"products\\/8-1.jpg\",\"products\\/10.jpg\",\"products\\/19.jpg\"]'),(34,10,NULL,NULL,16,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/5-1.jpg\",\"products\\/6-1.jpg\",\"products\\/17.jpg\"]'),(35,2,NULL,NULL,13,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/6-1.jpg\",\"products\\/16-6.jpg\"]'),(36,5,NULL,NULL,7,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/12-1.jpg\",\"products\\/16-1.jpg\",\"products\\/24.jpg\"]'),(37,2,NULL,NULL,3,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\",\"products\\/12-1.jpg\",\"products\\/21.jpg\",\"products\\/22-1.jpg\"]'),(38,2,NULL,NULL,16,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/11.jpg\",\"products\\/18.jpg\",\"products\\/20.jpg\",\"products\\/24.jpg\"]'),(39,9,NULL,NULL,15,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/8.jpg\",\"products\\/13.jpg\",\"products\\/17-1.jpg\",\"products\\/21.jpg\"]'),(41,10,NULL,NULL,13,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7-1.jpg\"]'),(42,10,NULL,NULL,4,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/9-1.jpg\"]'),(43,10,NULL,NULL,12,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4.jpg\",\"products\\/10-1.jpg\",\"products\\/12.jpg\"]'),(44,6,NULL,NULL,4,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/12-1.jpg\",\"products\\/18.jpg\"]'),(45,1,NULL,NULL,16,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7-1.jpg\",\"products\\/24.jpg\"]'),(46,5,NULL,NULL,13,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/17.jpg\"]'),(47,3,NULL,NULL,23,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/8.jpg\",\"products\\/16-1.jpg\",\"products\\/24-1.jpg\"]'),(49,7,NULL,NULL,23,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/24.jpg\"]'),(50,4,NULL,NULL,2,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4-1.jpg\",\"products\\/10.jpg\",\"products\\/16-2.jpg\",\"products\\/18.jpg\"]'),(51,9,NULL,NULL,17,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7-1.jpg\",\"products\\/8-1.jpg\",\"products\\/16-4.jpg\",\"products\\/22.jpg\"]'),(52,3,NULL,NULL,3,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/5-1.jpg\",\"products\\/17.jpg\"]'),(53,10,NULL,NULL,10,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/6-1.jpg\",\"products\\/11-1.jpg\",\"products\\/16-2.jpg\"]'),(55,10,NULL,NULL,2,2,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1-1.jpg\",\"products\\/3-1.jpg\",\"products\\/10.jpg\"]'),(56,9,NULL,NULL,14,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7.jpg\",\"products\\/18-1.jpg\"]'),(58,1,NULL,NULL,3,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/9.jpg\"]'),(60,7,NULL,NULL,2,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/9.jpg\"]'),(61,5,NULL,NULL,6,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/21.jpg\"]'),(63,2,NULL,NULL,17,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/22-1.jpg\"]'),(64,1,NULL,NULL,7,3,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/13.jpg\",\"products\\/14-1.jpg\",\"products\\/20.jpg\"]'),(65,1,NULL,NULL,18,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-4.jpg\",\"products\\/18.jpg\"]'),(66,5,NULL,NULL,20,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/5-1.jpg\",\"products\\/9.jpg\",\"products\\/16.jpg\"]'),(67,9,NULL,NULL,5,1,'Best ecommerce CMS online store!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/12-1.jpg\",\"products\\/16-5.jpg\",\"products\\/20.jpg\",\"products\\/23-1.jpg\"]'),(68,1,NULL,NULL,10,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/19-1.jpg\"]'),(69,10,NULL,NULL,23,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/12-1.jpg\",\"products\\/15-1.jpg\",\"products\\/22-1.jpg\"]'),(70,5,NULL,NULL,22,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1-1.jpg\",\"products\\/12-1.jpg\",\"products\\/13.jpg\",\"products\\/22.jpg\"]'),(71,8,NULL,NULL,4,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6.jpg\",\"products\\/11-1.jpg\",\"products\\/15-1.jpg\"]'),(72,5,NULL,NULL,2,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/18.jpg\"]'),(74,3,NULL,NULL,16,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3.jpg\",\"products\\/16-1.jpg\",\"products\\/21-1.jpg\"]'),(75,1,NULL,NULL,21,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/13.jpg\",\"products\\/17-1.jpg\"]'),(77,6,NULL,NULL,11,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/8-1.jpg\",\"products\\/8.jpg\",\"products\\/18.jpg\"]'),(78,3,NULL,NULL,11,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-5.jpg\",\"products\\/20.jpg\"]'),(79,6,NULL,NULL,24,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/19.jpg\"]'),(80,4,NULL,NULL,15,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/15-1.jpg\",\"products\\/17-1.jpg\",\"products\\/17.jpg\",\"products\\/22.jpg\"]'),(82,3,NULL,NULL,24,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/17-1.jpg\",\"products\\/18.jpg\"]'),(83,2,NULL,NULL,4,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/7-1.jpg\",\"products\\/12.jpg\",\"products\\/16-6.jpg\"]'),(84,10,NULL,NULL,18,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6.jpg\",\"products\\/19.jpg\",\"products\\/24.jpg\"]'),(87,4,NULL,NULL,13,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/5-1.jpg\",\"products\\/9-1.jpg\",\"products\\/14-1.jpg\",\"products\\/21.jpg\"]'),(89,6,NULL,NULL,12,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4-1.jpg\",\"products\\/11-1.jpg\"]'),(90,8,NULL,NULL,10,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6-1.jpg\",\"products\\/12-1.jpg\",\"products\\/23-1.jpg\"]'),(91,9,NULL,NULL,13,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6.jpg\",\"products\\/11.jpg\",\"products\\/14-1.jpg\"]'),(93,4,NULL,NULL,21,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/9-1.jpg\",\"products\\/17-1.jpg\",\"products\\/22.jpg\"]'),(94,9,NULL,NULL,3,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/5-1.jpg\",\"products\\/18.jpg\"]'),(96,9,NULL,NULL,23,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/5.jpg\",\"products\\/7-1.jpg\",\"products\\/8-1.jpg\",\"products\\/16-4.jpg\"]'),(97,7,NULL,NULL,16,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/15-1.jpg\",\"products\\/17-1.jpg\"]'),(99,8,NULL,NULL,18,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/21-1.jpg\"]'),(100,9,NULL,NULL,12,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/4.jpg\",\"products\\/18.jpg\",\"products\\/23-1.jpg\"]'),(101,10,NULL,NULL,11,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/24.jpg\"]'),(102,5,NULL,NULL,19,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/8-1.jpg\",\"products\\/16-6.jpg\"]'),(104,6,NULL,NULL,10,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/11-1.jpg\",\"products\\/12-1.jpg\",\"products\\/12.jpg\",\"products\\/16.jpg\"]'),(107,10,NULL,NULL,8,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/11-1.jpg\"]'),(110,2,NULL,NULL,1,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7.jpg\",\"products\\/14-1.jpg\"]'),(112,3,NULL,NULL,18,2,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4-1.jpg\",\"products\\/22.jpg\"]'),(116,3,NULL,NULL,22,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/16-4.jpg\"]'),(117,1,NULL,NULL,23,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\",\"products\\/11.jpg\",\"products\\/18.jpg\",\"products\\/21-1.jpg\"]'),(118,8,NULL,NULL,5,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/22.jpg\"]'),(121,1,NULL,NULL,1,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-1.jpg\",\"products\\/16-2.jpg\"]'),(122,5,NULL,NULL,4,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/8.jpg\",\"products\\/11.jpg\",\"products\\/16-5.jpg\",\"products\\/24-1.jpg\"]'),(123,4,NULL,NULL,3,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2.jpg\",\"products\\/17.jpg\",\"products\\/20-1.jpg\"]'),(124,4,NULL,NULL,11,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7.jpg\",\"products\\/21-1.jpg\"]'),(126,3,NULL,NULL,8,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/24.jpg\"]'),(127,1,NULL,NULL,9,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7.jpg\",\"products\\/23.jpg\"]'),(130,4,NULL,NULL,7,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/11.jpg\"]'),(131,10,NULL,NULL,21,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7.jpg\",\"products\\/17-1.jpg\"]'),(133,7,NULL,NULL,22,1,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3.jpg\",\"products\\/9.jpg\",\"products\\/18.jpg\"]'),(134,8,NULL,NULL,20,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16.jpg\"]'),(135,6,NULL,NULL,9,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7-1.jpg\",\"products\\/9.jpg\"]'),(137,5,NULL,NULL,10,3,'Best ecommerce CMS online store!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6-1.jpg\",\"products\\/7-1.jpg\",\"products\\/13-1.jpg\",\"products\\/16-2.jpg\"]'),(143,2,NULL,NULL,10,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/9-1.jpg\",\"products\\/16.jpg\",\"products\\/22-1.jpg\"]'),(144,8,NULL,NULL,11,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4.jpg\",\"products\\/9.jpg\"]'),(145,3,NULL,NULL,21,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7.jpg\",\"products\\/16-2.jpg\",\"products\\/22.jpg\"]'),(146,3,NULL,NULL,10,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/17.jpg\"]'),(147,10,NULL,NULL,6,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/9-1.jpg\",\"products\\/10-1.jpg\",\"products\\/10.jpg\",\"products\\/21.jpg\"]'),(149,2,NULL,NULL,20,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/13-1.jpg\"]'),(150,8,NULL,NULL,15,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6-1.jpg\",\"products\\/15-1.jpg\",\"products\\/18.jpg\",\"products\\/19.jpg\"]'),(153,5,NULL,NULL,17,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/5.jpg\",\"products\\/7.jpg\",\"products\\/16-3.jpg\",\"products\\/19.jpg\"]'),(154,5,NULL,NULL,23,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1-1.jpg\",\"products\\/7.jpg\"]'),(155,3,NULL,NULL,20,1,'Best ecommerce CMS online store!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/5.jpg\",\"products\\/8-1.jpg\",\"products\\/21-1.jpg\"]'),(158,4,NULL,NULL,20,5,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/15-1.jpg\",\"products\\/16-4.jpg\"]'),(160,1,NULL,NULL,19,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4.jpg\",\"products\\/13-1.jpg\",\"products\\/24-1.jpg\"]'),(161,6,NULL,NULL,5,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-3.jpg\"]'),(163,8,NULL,NULL,24,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-3.jpg\",\"products\\/17-1.jpg\",\"products\\/22.jpg\"]'),(164,6,NULL,NULL,8,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4-1.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\",\"products\\/17-1.jpg\"]'),(166,6,NULL,NULL,22,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-6.jpg\",\"products\\/19-1.jpg\"]'),(167,8,NULL,NULL,22,1,'Best ecommerce CMS online store!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/16-3.jpg\",\"products\\/22-1.jpg\"]'),(168,5,NULL,NULL,8,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/12-1.jpg\",\"products\\/21-1.jpg\"]'),(169,4,NULL,NULL,12,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/21-1.jpg\"]'),(170,3,NULL,NULL,17,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-6.jpg\"]'),(171,5,NULL,NULL,16,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-3.jpg\"]'),(177,4,NULL,NULL,24,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/18.jpg\"]'),(180,9,NULL,NULL,21,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/9-1.jpg\",\"products\\/9.jpg\",\"products\\/10-1.jpg\"]'),(182,7,NULL,NULL,8,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-4.jpg\",\"products\\/24-1.jpg\"]'),(183,2,NULL,NULL,15,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4-1.jpg\"]'),(184,6,NULL,NULL,19,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/13-1.jpg\",\"products\\/13.jpg\",\"products\\/15-1.jpg\",\"products\\/16-5.jpg\"]'),(185,5,NULL,NULL,21,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3.jpg\"]'),(188,1,NULL,NULL,13,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/15.jpg\"]'),(190,2,NULL,NULL,8,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1-1.jpg\",\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(191,4,NULL,NULL,16,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7-1.jpg\"]'),(194,5,NULL,NULL,14,4,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/10-1.jpg\",\"products\\/14.jpg\",\"products\\/23-1.jpg\"]'),(197,7,NULL,NULL,3,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2.jpg\",\"products\\/8-1.jpg\",\"products\\/11.jpg\"]'),(198,2,NULL,NULL,18,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/14.jpg\"]'),(199,10,NULL,NULL,19,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/18-1.jpg\",\"products\\/21.jpg\",\"products\\/24-1.jpg\",\"products\\/24.jpg\"]'),(201,3,NULL,NULL,12,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1-1.jpg\"]'),(204,9,NULL,NULL,2,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/5-1.jpg\",\"products\\/5.jpg\",\"products\\/13-1.jpg\"]'),(205,6,NULL,NULL,18,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/11.jpg\",\"products\\/19.jpg\"]'),(208,3,NULL,NULL,14,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/12-1.jpg\",\"products\\/19-1.jpg\"]'),(216,3,NULL,NULL,6,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6.jpg\",\"products\\/7.jpg\",\"products\\/24-1.jpg\"]'),(217,4,NULL,NULL,5,1,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\",\"products\\/8-1.jpg\",\"products\\/16-2.jpg\"]'),(219,8,NULL,NULL,17,5,'Best ecommerce CMS online store!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3.jpg\",\"products\\/23.jpg\",\"products\\/24.jpg\"]'),(222,7,NULL,NULL,10,2,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/9.jpg\",\"products\\/11.jpg\",\"products\\/14.jpg\",\"products\\/16-1.jpg\"]'),(223,1,NULL,NULL,24,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/14.jpg\"]'),(224,5,NULL,NULL,12,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3.jpg\",\"products\\/4.jpg\",\"products\\/9-1.jpg\",\"products\\/10.jpg\"]'),(225,10,NULL,NULL,17,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6-1.jpg\",\"products\\/14.jpg\"]'),(230,6,NULL,NULL,6,4,'Best ecommerce CMS online store!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/12-1.jpg\"]'),(232,4,NULL,NULL,18,3,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4-1.jpg\",\"products\\/7.jpg\",\"products\\/16-1.jpg\"]'),(233,7,NULL,NULL,18,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/11-1.jpg\",\"products\\/24-1.jpg\"]'),(235,7,NULL,NULL,7,2,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/4-1.jpg\",\"products\\/6-1.jpg\",\"products\\/12.jpg\"]'),(236,3,NULL,NULL,1,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/18-1.jpg\"]'),(240,9,NULL,NULL,1,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(246,8,NULL,NULL,16,2,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/15.jpg\",\"products\\/19.jpg\",\"products\\/20.jpg\"]'),(248,9,NULL,NULL,22,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3.jpg\",\"products\\/13.jpg\",\"products\\/15-1.jpg\"]'),(257,9,NULL,NULL,4,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/14-1.jpg\",\"products\\/14.jpg\",\"products\\/16.jpg\"]'),(259,7,NULL,NULL,13,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2.jpg\"]'),(262,6,NULL,NULL,21,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7-1.jpg\",\"products\\/11-1.jpg\"]'),(265,9,NULL,NULL,7,5,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3.jpg\",\"products\\/8-1.jpg\",\"products\\/13-1.jpg\"]'),(268,8,NULL,NULL,7,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16.jpg\"]'),(270,8,NULL,NULL,21,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/13-1.jpg\",\"products\\/16-3.jpg\",\"products\\/19-1.jpg\"]'),(271,10,NULL,NULL,24,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/7-1.jpg\",\"products\\/15-1.jpg\"]'),(275,2,NULL,NULL,22,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/17.jpg\",\"products\\/18-1.jpg\"]'),(284,1,NULL,NULL,2,1,'Best ecommerce CMS online store!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/9.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\"]'),(285,4,NULL,NULL,1,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/15-1.jpg\"]'),(286,6,NULL,NULL,17,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7-1.jpg\",\"products\\/16-1.jpg\",\"products\\/16-3.jpg\",\"products\\/18-1.jpg\"]'),(287,7,NULL,NULL,20,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/20-1.jpg\",\"products\\/21-1.jpg\",\"products\\/23-1.jpg\",\"products\\/24-1.jpg\"]'),(289,5,NULL,NULL,18,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-1.jpg\",\"products\\/16.jpg\"]'),(290,8,NULL,NULL,6,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\"]'),(292,6,NULL,NULL,14,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/18.jpg\"]'),(294,5,NULL,NULL,3,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-2.jpg\"]'),(296,10,NULL,NULL,1,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6.jpg\",\"products\\/16-2.jpg\",\"products\\/16.jpg\",\"products\\/23.jpg\"]'),(300,5,NULL,NULL,24,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/11.jpg\"]'),(307,2,NULL,NULL,9,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/18-1.jpg\"]'),(314,5,NULL,NULL,15,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/13.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/24.jpg\"]'),(315,2,NULL,NULL,21,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/5-1.jpg\",\"products\\/9.jpg\",\"products\\/14-1.jpg\"]'),(317,1,NULL,NULL,8,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1-1.jpg\",\"products\\/9.jpg\",\"products\\/15-1.jpg\"]'),(320,7,NULL,NULL,17,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1-1.jpg\",\"products\\/18-1.jpg\",\"products\\/20.jpg\",\"products\\/22.jpg\"]'),(321,7,NULL,NULL,19,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/21-1.jpg\"]'),(325,5,NULL,NULL,1,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/20.jpg\"]'),(327,1,NULL,NULL,11,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1-1.jpg\",\"products\\/5.jpg\"]'),(328,8,NULL,NULL,13,3,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/24.jpg\"]'),(348,10,NULL,NULL,22,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4.jpg\",\"products\\/16-6.jpg\",\"products\\/24.jpg\"]'),(349,5,NULL,NULL,5,4,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/13-1.jpg\",\"products\\/19.jpg\"]'),(350,2,NULL,NULL,11,4,'Best ecommerce CMS online store!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/19.jpg\"]'),(354,9,NULL,NULL,6,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1-1.jpg\",\"products\\/10.jpg\",\"products\\/24-1.jpg\"]'),(358,6,NULL,NULL,2,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/8.jpg\"]'),(359,8,NULL,NULL,3,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7-1.jpg\",\"products\\/17-1.jpg\",\"products\\/18-1.jpg\",\"products\\/20.jpg\"]'),(365,6,NULL,NULL,7,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1-1.jpg\",\"products\\/9-1.jpg\",\"products\\/9.jpg\",\"products\\/14-1.jpg\"]'),(380,2,NULL,NULL,7,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4-1.jpg\",\"products\\/23.jpg\",\"products\\/24-1.jpg\"]'),(381,6,NULL,NULL,3,3,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6-1.jpg\",\"products\\/11-1.jpg\"]'),(382,10,NULL,NULL,5,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-2.jpg\",\"products\\/16.jpg\",\"products\\/18-1.jpg\",\"products\\/20.jpg\"]'),(383,9,NULL,NULL,16,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/6.jpg\",\"products\\/8.jpg\",\"products\\/9.jpg\"]'),(396,1,NULL,NULL,4,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/5-1.jpg\",\"products\\/15.jpg\",\"products\\/17.jpg\",\"products\\/24.jpg\"]'),(398,7,NULL,NULL,21,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/6.jpg\",\"products\\/16-5.jpg\"]'),(405,2,NULL,NULL,14,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4.jpg\",\"products\\/12-1.jpg\",\"products\\/14-1.jpg\"]'),(407,10,NULL,NULL,7,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\"]'),(411,2,NULL,NULL,5,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/22.jpg\"]'),(428,3,NULL,NULL,19,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/13-1.jpg\",\"products\\/19.jpg\"]'),(430,4,NULL,NULL,10,4,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/20-1.jpg\",\"products\\/20.jpg\",\"products\\/22-1.jpg\"]'),(433,10,NULL,NULL,14,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/1.jpg\",\"products\\/8-1.jpg\",\"products\\/14.jpg\",\"products\\/17.jpg\"]'),(443,9,NULL,NULL,10,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\",\"products\\/23-1.jpg\"]'),(445,4,NULL,NULL,9,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/19-1.jpg\"]'),(446,1,NULL,NULL,14,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/9.jpg\",\"products\\/23-1.jpg\"]'),(447,8,NULL,NULL,19,4,'Good app, good backup service and support. Good documentation.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/8-1.jpg\",\"products\\/12-1.jpg\",\"products\\/16-3.jpg\",\"products\\/21-1.jpg\"]'),(457,5,NULL,NULL,9,1,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/8-1.jpg\",\"products\\/9.jpg\",\"products\\/18.jpg\",\"products\\/21-1.jpg\"]'),(466,2,NULL,NULL,12,3,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/5-1.jpg\"]'),(467,10,NULL,NULL,15,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/17.jpg\"]'),(472,9,NULL,NULL,11,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-5.jpg\",\"products\\/17.jpg\",\"products\\/19-1.jpg\"]'),(479,7,NULL,NULL,24,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/10.jpg\",\"products\\/18-1.jpg\"]'),(497,8,NULL,NULL,8,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/9-1.jpg\"]'),(510,1,NULL,NULL,22,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\",\"products\\/24-1.jpg\"]'),(531,9,NULL,NULL,8,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/15.jpg\",\"products\\/24.jpg\"]'),(535,2,NULL,NULL,6,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4-1.jpg\",\"products\\/9.jpg\",\"products\\/14-1.jpg\",\"products\\/20-1.jpg\"]'),(538,6,NULL,NULL,20,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/24.jpg\"]'),(542,3,NULL,NULL,4,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/8-1.jpg\",\"products\\/9-1.jpg\",\"products\\/19.jpg\"]'),(550,4,NULL,NULL,6,1,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/10.jpg\",\"products\\/12.jpg\",\"products\\/15-1.jpg\",\"products\\/16.jpg\"]'),(560,3,NULL,NULL,15,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3.jpg\",\"products\\/12-1.jpg\",\"products\\/16.jpg\"]'),(564,9,NULL,NULL,20,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/10.jpg\",\"products\\/14-1.jpg\",\"products\\/18.jpg\",\"products\\/21.jpg\"]'),(566,8,NULL,NULL,12,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4-1.jpg\",\"products\\/16.jpg\",\"products\\/22-1.jpg\"]'),(586,9,NULL,NULL,24,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/16-3.jpg\",\"products\\/19.jpg\",\"products\\/20-1.jpg\"]'),(587,4,NULL,NULL,19,2,'Best ecommerce CMS online store!','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2.jpg\",\"products\\/8-1.jpg\",\"products\\/15.jpg\"]'),(594,8,NULL,NULL,14,2,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/15.jpg\"]'),(661,8,NULL,NULL,2,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/10-1.jpg\",\"products\\/15.jpg\",\"products\\/23-1.jpg\"]'),(671,7,NULL,NULL,6,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\",\"products\\/4-1.jpg\",\"products\\/16.jpg\",\"products\\/24-1.jpg\"]'),(681,4,NULL,NULL,4,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/21.jpg\"]'),(737,4,NULL,NULL,8,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/10-1.jpg\",\"products\\/12.jpg\",\"products\\/16-2.jpg\",\"products\\/18-1.jpg\"]'),(758,3,NULL,NULL,5,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/4-1.jpg\",\"products\\/5-1.jpg\",\"products\\/8.jpg\"]'),(767,3,NULL,NULL,2,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/2-1.jpg\",\"products\\/5-1.jpg\",\"products\\/17-1.jpg\"]'),(774,6,NULL,NULL,16,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/7.jpg\",\"products\\/9.jpg\",\"products\\/10.jpg\",\"products\\/20.jpg\"]'),(799,7,NULL,NULL,14,4,'Clean & perfect source code','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/10.jpg\"]'),(802,7,NULL,NULL,9,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/15.jpg\",\"products\\/19-1.jpg\",\"products\\/23-1.jpg\"]'),(835,8,NULL,NULL,1,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/3-1.jpg\"]'),(962,6,NULL,NULL,23,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-11 01:46:03','2025-09-11 01:46:03','[\"products\\/9-1.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-09-11 01:46:03','2025-09-11 01:46:03');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2025-09-11 01:46:03','2025-09-11 01:46:03'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2025-09-11 01:46:03','2025-09-11 01:46:03'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2025-09-11 01:46:03','2025-09-11 01:46:03');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL),(2,'Performance',NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL),(3,'Battery',NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL),(4,'Display',NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups_translations`
--

DROP TABLE IF EXISTS `ec_specification_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_groups_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups_translations`
--

LOCK TABLES `ec_specification_groups_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL),(2,'Technical Specification',NULL,'2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables_translations`
--

DROP TABLE IF EXISTS `ec_specification_tables_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_tables_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_tables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables_translations`
--

LOCK TABLES `ec_specification_tables_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_tables_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2025-09-11 01:46:03','2025-09-11 01:46:03',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-09-11 01:45:55','2025-09-11 01:45:55'),(2,'None',0,2,'published','2025-09-11 01:45:55','2025-09-11 01:45:55'),(3,'Import Tax',15,3,'published','2025-09-11 01:45:55','2025-09-11 01:45:55');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2025-09-11 01:45:32','2025-09-11 01:45:32',NULL),(2,'Payment',1,'published','2025-09-11 01:45:32','2025-09-11 01:45:32',NULL),(3,'Order &amp; Returns',2,'published','2025-09-11 01:45:32','2025-09-11 01:45:32',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2025-09-11 01:45:32','2025-09-11 01:45:32'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2025-09-11 01:45:32','2025-09-11 01:45:32'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2025-09-11 01:45:32','2025-09-11 01:45:32'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2025-09-11 01:45:32','2025-09-11 01:45:32'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2025-09-11 01:45:32','2025-09-11 01:45:32'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2025-09-11 01:45:32','2025-09-11 01:45:32'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2025-09-11 01:45:32','2025-09-11 01:45:32'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2025-09-11 01:45:32','2025-09-11 01:45:32'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2025-09-11 01:45:32','2025-09-11 01:45:32'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2025-09-11 01:45:32','2025-09-11 01:45:32');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','e426367043e1c31ea61116bb5201690d',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','d26c4cca668a244199445bbfd1f397d0',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','30a4dbfef30c959bd26aa0487df3a731',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','92ac303ca2a39a9b99f2cda757598330',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','1113d589a27d549cc61fccc73fda7cb8',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','1b254d1092250b2202357c1557056c7c',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','01df55468645f187631bc12b4ba89d24',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'en_US','1fbaf1044500fecfd79c8b270d4738a7',1,'Botble\\Menu\\Models\\MenuLocation'),(9,'en_US','19e2b184cbf618a429bb71b582c503f3',1,'Botble\\Menu\\Models\\Menu'),(10,'en_US','6e10205906f3f0d38f801cef1fa38a19',2,'Botble\\Menu\\Models\\MenuLocation'),(11,'en_US','b83379e33926ca295a0feeac04a930ba',2,'Botble\\Menu\\Models\\Menu'),(12,'en_US','6915b378f047bc8b953152a2585b8e0c',3,'Botble\\Menu\\Models\\Menu'),(13,'en_US','e7607f94da90e7fc4d2c86d263f4715a',4,'Botble\\Menu\\Models\\Menu'),(14,'en_US','3c45620af10f867827af1a7038f0d47b',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1','icon-1',1,'image/png',5327,'product-categories/icon-1.png','[]','2025-09-11 01:45:32','2025-09-11 01:45:32',NULL,'public'),(2,0,'icon-10','icon-10',1,'image/png',5327,'product-categories/icon-10.png','[]','2025-09-11 01:45:32','2025-09-11 01:45:32',NULL,'public'),(3,0,'icon-11','icon-11',1,'image/png',5327,'product-categories/icon-11.png','[]','2025-09-11 01:45:32','2025-09-11 01:45:32',NULL,'public'),(4,0,'icon-12','icon-12',1,'image/png',5327,'product-categories/icon-12.png','[]','2025-09-11 01:45:32','2025-09-11 01:45:32',NULL,'public'),(5,0,'icon-13','icon-13',1,'image/png',5327,'product-categories/icon-13.png','[]','2025-09-11 01:45:33','2025-09-11 01:45:33',NULL,'public'),(6,0,'icon-14','icon-14',1,'image/png',5327,'product-categories/icon-14.png','[]','2025-09-11 01:45:33','2025-09-11 01:45:33',NULL,'public'),(7,0,'icon-2','icon-2',1,'image/png',5327,'product-categories/icon-2.png','[]','2025-09-11 01:45:33','2025-09-11 01:45:33',NULL,'public'),(8,0,'icon-3','icon-3',1,'image/png',5327,'product-categories/icon-3.png','[]','2025-09-11 01:45:33','2025-09-11 01:45:33',NULL,'public'),(9,0,'icon-4','icon-4',1,'image/png',5327,'product-categories/icon-4.png','[]','2025-09-11 01:45:33','2025-09-11 01:45:33',NULL,'public'),(10,0,'icon-5','icon-5',1,'image/png',5327,'product-categories/icon-5.png','[]','2025-09-11 01:45:33','2025-09-11 01:45:33',NULL,'public'),(11,0,'icon-6','icon-6',1,'image/png',5327,'product-categories/icon-6.png','[]','2025-09-11 01:45:34','2025-09-11 01:45:34',NULL,'public'),(12,0,'icon-7','icon-7',1,'image/png',5327,'product-categories/icon-7.png','[]','2025-09-11 01:45:34','2025-09-11 01:45:34',NULL,'public'),(13,0,'icon-8','icon-8',1,'image/png',5327,'product-categories/icon-8.png','[]','2025-09-11 01:45:34','2025-09-11 01:45:34',NULL,'public'),(14,0,'icon-9','icon-9',1,'image/png',5327,'product-categories/icon-9.png','[]','2025-09-11 01:45:34','2025-09-11 01:45:34',NULL,'public'),(15,0,'image-1','image-1',1,'image/png',5327,'product-categories/image-1.png','[]','2025-09-11 01:45:34','2025-09-11 01:45:34',NULL,'public'),(16,0,'image-10','image-10',1,'image/png',5327,'product-categories/image-10.png','[]','2025-09-11 01:45:35','2025-09-11 01:45:35',NULL,'public'),(17,0,'image-11','image-11',1,'image/png',5327,'product-categories/image-11.png','[]','2025-09-11 01:45:35','2025-09-11 01:45:35',NULL,'public'),(18,0,'image-12','image-12',1,'image/png',5327,'product-categories/image-12.png','[]','2025-09-11 01:45:35','2025-09-11 01:45:35',NULL,'public'),(19,0,'image-13','image-13',1,'image/png',5327,'product-categories/image-13.png','[]','2025-09-11 01:45:35','2025-09-11 01:45:35',NULL,'public'),(20,0,'image-14','image-14',1,'image/png',5327,'product-categories/image-14.png','[]','2025-09-11 01:45:35','2025-09-11 01:45:35',NULL,'public'),(21,0,'image-15','image-15',1,'image/png',5327,'product-categories/image-15.png','[]','2025-09-11 01:45:35','2025-09-11 01:45:35',NULL,'public'),(22,0,'image-2','image-2',1,'image/png',5327,'product-categories/image-2.png','[]','2025-09-11 01:45:36','2025-09-11 01:45:36',NULL,'public'),(23,0,'image-3','image-3',1,'image/png',5327,'product-categories/image-3.png','[]','2025-09-11 01:45:36','2025-09-11 01:45:36',NULL,'public'),(24,0,'image-4','image-4',1,'image/png',5327,'product-categories/image-4.png','[]','2025-09-11 01:45:36','2025-09-11 01:45:36',NULL,'public'),(25,0,'image-5','image-5',1,'image/png',5327,'product-categories/image-5.png','[]','2025-09-11 01:45:36','2025-09-11 01:45:36',NULL,'public'),(26,0,'image-6','image-6',1,'image/png',5327,'product-categories/image-6.png','[]','2025-09-11 01:45:36','2025-09-11 01:45:36',NULL,'public'),(27,0,'image-7','image-7',1,'image/png',5327,'product-categories/image-7.png','[]','2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'public'),(28,0,'image-8','image-8',1,'image/png',5327,'product-categories/image-8.png','[]','2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'public'),(29,0,'image-9','image-9',1,'image/png',5327,'product-categories/image-9.png','[]','2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'public'),(30,0,'1-1','1-1',2,'image/jpeg',9803,'products/1-1.jpg','[]','2025-09-11 01:45:37','2025-09-11 01:45:37',NULL,'public'),(31,0,'1','1',2,'image/jpeg',9803,'products/1.jpg','[]','2025-09-11 01:45:38','2025-09-11 01:45:38',NULL,'public'),(32,0,'10-1','10-1',2,'image/jpeg',9803,'products/10-1.jpg','[]','2025-09-11 01:45:38','2025-09-11 01:45:38',NULL,'public'),(33,0,'10','10',2,'image/jpeg',9803,'products/10.jpg','[]','2025-09-11 01:45:38','2025-09-11 01:45:38',NULL,'public'),(34,0,'11-1','11-1',2,'image/jpeg',9803,'products/11-1.jpg','[]','2025-09-11 01:45:38','2025-09-11 01:45:38',NULL,'public'),(35,0,'11','11',2,'image/jpeg',9803,'products/11.jpg','[]','2025-09-11 01:45:39','2025-09-11 01:45:39',NULL,'public'),(36,0,'12-1','12-1',2,'image/jpeg',9803,'products/12-1.jpg','[]','2025-09-11 01:45:39','2025-09-11 01:45:39',NULL,'public'),(37,0,'12','12',2,'image/jpeg',9803,'products/12.jpg','[]','2025-09-11 01:45:39','2025-09-11 01:45:39',NULL,'public'),(38,0,'13-1','13-1',2,'image/jpeg',9803,'products/13-1.jpg','[]','2025-09-11 01:45:39','2025-09-11 01:45:39',NULL,'public'),(39,0,'13','13',2,'image/jpeg',9803,'products/13.jpg','[]','2025-09-11 01:45:40','2025-09-11 01:45:40',NULL,'public'),(40,0,'14-1','14-1',2,'image/jpeg',9803,'products/14-1.jpg','[]','2025-09-11 01:45:40','2025-09-11 01:45:40',NULL,'public'),(41,0,'14','14',2,'image/jpeg',9803,'products/14.jpg','[]','2025-09-11 01:45:40','2025-09-11 01:45:40',NULL,'public'),(42,0,'15-1','15-1',2,'image/jpeg',9803,'products/15-1.jpg','[]','2025-09-11 01:45:40','2025-09-11 01:45:40',NULL,'public'),(43,0,'15','15',2,'image/jpeg',9803,'products/15.jpg','[]','2025-09-11 01:45:40','2025-09-11 01:45:40',NULL,'public'),(44,0,'16-1','16-1',2,'image/jpeg',9803,'products/16-1.jpg','[]','2025-09-11 01:45:41','2025-09-11 01:45:41',NULL,'public'),(45,0,'16-2','16-2',2,'image/jpeg',9803,'products/16-2.jpg','[]','2025-09-11 01:45:41','2025-09-11 01:45:41',NULL,'public'),(46,0,'16-3','16-3',2,'image/jpeg',9803,'products/16-3.jpg','[]','2025-09-11 01:45:41','2025-09-11 01:45:41',NULL,'public'),(47,0,'16-4','16-4',2,'image/jpeg',9803,'products/16-4.jpg','[]','2025-09-11 01:45:41','2025-09-11 01:45:41',NULL,'public'),(48,0,'16-5','16-5',2,'image/jpeg',9803,'products/16-5.jpg','[]','2025-09-11 01:45:42','2025-09-11 01:45:42',NULL,'public'),(49,0,'16-6','16-6',2,'image/jpeg',9803,'products/16-6.jpg','[]','2025-09-11 01:45:42','2025-09-11 01:45:42',NULL,'public'),(50,0,'16','16',2,'image/jpeg',9803,'products/16.jpg','[]','2025-09-11 01:45:42','2025-09-11 01:45:42',NULL,'public'),(51,0,'17-1','17-1',2,'image/jpeg',9803,'products/17-1.jpg','[]','2025-09-11 01:45:42','2025-09-11 01:45:42',NULL,'public'),(52,0,'17','17',2,'image/jpeg',9803,'products/17.jpg','[]','2025-09-11 01:45:43','2025-09-11 01:45:43',NULL,'public'),(53,0,'18-1','18-1',2,'image/jpeg',9803,'products/18-1.jpg','[]','2025-09-11 01:45:43','2025-09-11 01:45:43',NULL,'public'),(54,0,'18','18',2,'image/jpeg',9803,'products/18.jpg','[]','2025-09-11 01:45:43','2025-09-11 01:45:43',NULL,'public'),(55,0,'19-1','19-1',2,'image/jpeg',9803,'products/19-1.jpg','[]','2025-09-11 01:45:43','2025-09-11 01:45:43',NULL,'public'),(56,0,'19','19',2,'image/jpeg',9803,'products/19.jpg','[]','2025-09-11 01:45:43','2025-09-11 01:45:43',NULL,'public'),(57,0,'2-1','2-1',2,'image/jpeg',9803,'products/2-1.jpg','[]','2025-09-11 01:45:44','2025-09-11 01:45:44',NULL,'public'),(58,0,'2','2',2,'image/jpeg',9803,'products/2.jpg','[]','2025-09-11 01:45:44','2025-09-11 01:45:44',NULL,'public'),(59,0,'20-1','20-1',2,'image/jpeg',9803,'products/20-1.jpg','[]','2025-09-11 01:45:44','2025-09-11 01:45:44',NULL,'public'),(60,0,'20','20',2,'image/jpeg',9803,'products/20.jpg','[]','2025-09-11 01:45:44','2025-09-11 01:45:44',NULL,'public'),(61,0,'21-1','21-1',2,'image/jpeg',9803,'products/21-1.jpg','[]','2025-09-11 01:45:44','2025-09-11 01:45:44',NULL,'public'),(62,0,'21','21',2,'image/jpeg',9803,'products/21.jpg','[]','2025-09-11 01:45:45','2025-09-11 01:45:45',NULL,'public'),(63,0,'22-1','22-1',2,'image/jpeg',9803,'products/22-1.jpg','[]','2025-09-11 01:45:45','2025-09-11 01:45:45',NULL,'public'),(64,0,'22','22',2,'image/jpeg',9803,'products/22.jpg','[]','2025-09-11 01:45:45','2025-09-11 01:45:45',NULL,'public'),(65,0,'23-1','23-1',2,'image/jpeg',9803,'products/23-1.jpg','[]','2025-09-11 01:45:45','2025-09-11 01:45:45',NULL,'public'),(66,0,'23','23',2,'image/jpeg',9803,'products/23.jpg','[]','2025-09-11 01:45:45','2025-09-11 01:45:45',NULL,'public'),(67,0,'24-1','24-1',2,'image/jpeg',9803,'products/24-1.jpg','[]','2025-09-11 01:45:46','2025-09-11 01:45:46',NULL,'public'),(68,0,'24','24',2,'image/jpeg',9803,'products/24.jpg','[]','2025-09-11 01:45:46','2025-09-11 01:45:46',NULL,'public'),(69,0,'3-1','3-1',2,'image/jpeg',9803,'products/3-1.jpg','[]','2025-09-11 01:45:46','2025-09-11 01:45:46',NULL,'public'),(70,0,'3','3',2,'image/jpeg',9803,'products/3.jpg','[]','2025-09-11 01:45:46','2025-09-11 01:45:46',NULL,'public'),(71,0,'4-1','4-1',2,'image/jpeg',9803,'products/4-1.jpg','[]','2025-09-11 01:45:47','2025-09-11 01:45:47',NULL,'public'),(72,0,'4','4',2,'image/jpeg',9803,'products/4.jpg','[]','2025-09-11 01:45:47','2025-09-11 01:45:47',NULL,'public'),(73,0,'5-1','5-1',2,'image/jpeg',9803,'products/5-1.jpg','[]','2025-09-11 01:45:47','2025-09-11 01:45:47',NULL,'public'),(74,0,'5','5',2,'image/jpeg',9803,'products/5.jpg','[]','2025-09-11 01:45:47','2025-09-11 01:45:47',NULL,'public'),(75,0,'6-1','6-1',2,'image/jpeg',9803,'products/6-1.jpg','[]','2025-09-11 01:45:48','2025-09-11 01:45:48',NULL,'public'),(76,0,'6','6',2,'image/jpeg',9803,'products/6.jpg','[]','2025-09-11 01:45:48','2025-09-11 01:45:48',NULL,'public'),(77,0,'7-1','7-1',2,'image/jpeg',9803,'products/7-1.jpg','[]','2025-09-11 01:45:48','2025-09-11 01:45:48',NULL,'public'),(78,0,'7','7',2,'image/jpeg',9803,'products/7.jpg','[]','2025-09-11 01:45:49','2025-09-11 01:45:49',NULL,'public'),(79,0,'8-1','8-1',2,'image/jpeg',9803,'products/8-1.jpg','[]','2025-09-11 01:45:49','2025-09-11 01:45:49',NULL,'public'),(80,0,'8','8',2,'image/jpeg',9803,'products/8.jpg','[]','2025-09-11 01:45:49','2025-09-11 01:45:49',NULL,'public'),(81,0,'9-1','9-1',2,'image/jpeg',9803,'products/9-1.jpg','[]','2025-09-11 01:45:50','2025-09-11 01:45:50',NULL,'public'),(82,0,'9','9',2,'image/jpeg',9803,'products/9.jpg','[]','2025-09-11 01:45:50','2025-09-11 01:45:50',NULL,'public'),(83,0,'1','1',3,'image/jpeg',9803,'customers/1.jpg','[]','2025-09-11 01:45:55','2025-09-11 01:45:55',NULL,'public'),(84,0,'10','10',3,'image/jpeg',9803,'customers/10.jpg','[]','2025-09-11 01:45:55','2025-09-11 01:45:55',NULL,'public'),(85,0,'2','2',3,'image/jpeg',9803,'customers/2.jpg','[]','2025-09-11 01:45:55','2025-09-11 01:45:55',NULL,'public'),(86,0,'3','3',3,'image/jpeg',9803,'customers/3.jpg','[]','2025-09-11 01:45:55','2025-09-11 01:45:55',NULL,'public'),(87,0,'4','4',3,'image/jpeg',9803,'customers/4.jpg','[]','2025-09-11 01:45:56','2025-09-11 01:45:56',NULL,'public'),(88,0,'5','5',3,'image/jpeg',9803,'customers/5.jpg','[]','2025-09-11 01:45:56','2025-09-11 01:45:56',NULL,'public'),(89,0,'6','6',3,'image/jpeg',9803,'customers/6.jpg','[]','2025-09-11 01:45:56','2025-09-11 01:45:56',NULL,'public'),(90,0,'7','7',3,'image/jpeg',9803,'customers/7.jpg','[]','2025-09-11 01:45:56','2025-09-11 01:45:56',NULL,'public'),(91,0,'8','8',3,'image/jpeg',9803,'customers/8.jpg','[]','2025-09-11 01:45:56','2025-09-11 01:45:56',NULL,'public'),(92,0,'9','9',3,'image/jpeg',9803,'customers/9.jpg','[]','2025-09-11 01:45:57','2025-09-11 01:45:57',NULL,'public'),(93,0,'1','1',4,'image/png',17727,'flash-sales/1.png','[]','2025-09-11 01:46:03','2025-09-11 01:46:03',NULL,'public'),(94,0,'2','2',4,'image/png',12278,'flash-sales/2.png','[]','2025-09-11 01:46:03','2025-09-11 01:46:03',NULL,'public'),(95,0,'3','3',4,'image/png',12278,'flash-sales/3.png','[]','2025-09-11 01:46:03','2025-09-11 01:46:03',NULL,'public'),(96,0,'4','4',4,'image/png',12278,'flash-sales/4.png','[]','2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,'public'),(97,0,'5','5',4,'image/png',12278,'flash-sales/5.png','[]','2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,'public'),(98,0,'1-1','1-1',5,'image/png',28526,'sliders/1-1.png','[]','2025-09-11 01:46:04','2025-09-11 01:46:04',NULL,'public'),(99,0,'1-2','1-2',5,'image/png',28526,'sliders/1-2.png','[]','2025-09-11 01:46:05','2025-09-11 01:46:05',NULL,'public'),(100,0,'2-1','2-1',5,'image/png',15581,'sliders/2-1.png','[]','2025-09-11 01:46:05','2025-09-11 01:46:05',NULL,'public'),(101,0,'2-2','2-2',5,'image/png',15581,'sliders/2-2.png','[]','2025-09-11 01:46:05','2025-09-11 01:46:05',NULL,'public'),(102,0,'3-1','3-1',5,'image/png',28526,'sliders/3-1.png','[]','2025-09-11 01:46:06','2025-09-11 01:46:06',NULL,'public'),(103,0,'3-2','3-2',5,'image/png',28526,'sliders/3-2.png','[]','2025-09-11 01:46:06','2025-09-11 01:46:06',NULL,'public'),(104,0,'4-1','4-1',5,'image/png',28526,'sliders/4-1.png','[]','2025-09-11 01:46:06','2025-09-11 01:46:06',NULL,'public'),(105,0,'4-2','4-2',5,'image/png',28526,'sliders/4-2.png','[]','2025-09-11 01:46:07','2025-09-11 01:46:07',NULL,'public'),(106,0,'5-1','5-1',5,'image/png',23916,'sliders/5-1.png','[]','2025-09-11 01:46:07','2025-09-11 01:46:07',NULL,'public'),(107,0,'5-2','5-2',5,'image/png',23916,'sliders/5-2.png','[]','2025-09-11 01:46:07','2025-09-11 01:46:07',NULL,'public'),(108,0,'banner-1','banner-1',5,'image/png',212534,'sliders/banner-1.png','[]','2025-09-11 01:46:08','2025-09-11 01:46:08',NULL,'public'),(109,0,'thumbnail-1','thumbnail-1',5,'image/jpeg',9803,'sliders/thumbnail-1.jpg','[]','2025-09-11 01:46:08','2025-09-11 01:46:08',NULL,'public'),(110,0,'thumbnail-2','thumbnail-2',5,'image/jpeg',9803,'sliders/thumbnail-2.jpg','[]','2025-09-11 01:46:08','2025-09-11 01:46:08',NULL,'public'),(111,0,'thumbnail-3','thumbnail-3',5,'image/jpeg',9803,'sliders/thumbnail-3.jpg','[]','2025-09-11 01:46:08','2025-09-11 01:46:08',NULL,'public'),(112,0,'thumbnail-4','thumbnail-4',5,'image/jpeg',9803,'sliders/thumbnail-4.jpg','[]','2025-09-11 01:46:09','2025-09-11 01:46:09',NULL,'public'),(113,0,'thumbnail-5','thumbnail-5',5,'image/jpeg',9803,'sliders/thumbnail-5.jpg','[]','2025-09-11 01:46:09','2025-09-11 01:46:09',NULL,'public'),(114,0,'thumbnail-6','thumbnail-6',5,'image/jpeg',9803,'sliders/thumbnail-6.jpg','[]','2025-09-11 01:46:09','2025-09-11 01:46:09',NULL,'public'),(115,0,'1','1',6,'image/png',9803,'news/1.png','[]','2025-09-11 01:46:09','2025-09-11 01:46:09',NULL,'public'),(116,0,'10','10',6,'image/png',9803,'news/10.png','[]','2025-09-11 01:46:09','2025-09-11 01:46:09',NULL,'public'),(117,0,'11','11',6,'image/png',9803,'news/11.png','[]','2025-09-11 01:46:10','2025-09-11 01:46:10',NULL,'public'),(118,0,'2','2',6,'image/png',9803,'news/2.png','[]','2025-09-11 01:46:10','2025-09-11 01:46:10',NULL,'public'),(119,0,'3','3',6,'image/png',9803,'news/3.png','[]','2025-09-11 01:46:10','2025-09-11 01:46:10',NULL,'public'),(120,0,'4','4',6,'image/png',9803,'news/4.png','[]','2025-09-11 01:46:10','2025-09-11 01:46:10',NULL,'public'),(121,0,'5','5',6,'image/png',9803,'news/5.png','[]','2025-09-11 01:46:10','2025-09-11 01:46:10',NULL,'public'),(122,0,'6','6',6,'image/png',9803,'news/6.png','[]','2025-09-11 01:46:11','2025-09-11 01:46:11',NULL,'public'),(123,0,'7','7',6,'image/png',9803,'news/7.png','[]','2025-09-11 01:46:11','2025-09-11 01:46:11',NULL,'public'),(124,0,'8','8',6,'image/png',9803,'news/8.png','[]','2025-09-11 01:46:11','2025-09-11 01:46:11',NULL,'public'),(125,0,'9','9',6,'image/png',9803,'news/9.png','[]','2025-09-11 01:46:11','2025-09-11 01:46:11',NULL,'public'),(126,0,'app-store','app-store',7,'image/jpeg',1928,'general/app-store.jpg','[]','2025-09-11 01:46:12','2025-09-11 01:46:12',NULL,'public'),(127,0,'category-1','category-1',7,'image/png',1070,'general/category-1.png','[]','2025-09-11 01:46:13','2025-09-11 01:46:13',NULL,'public'),(128,0,'clock','clock',7,'image/png',4405,'general/clock.png','[]','2025-09-11 01:46:13','2025-09-11 01:46:13',NULL,'public'),(129,0,'contact-img','contact-img',7,'image/jpeg',35441,'general/contact-img.jpg','[]','2025-09-11 01:46:13','2025-09-11 01:46:13',NULL,'public'),(130,0,'credit-card','credit-card',7,'image/png',1455,'general/credit-card.png','[]','2025-09-11 01:46:13','2025-09-11 01:46:13',NULL,'public'),(131,0,'facebook','facebook',7,'image/png',804,'general/facebook.png','[]','2025-09-11 01:46:13','2025-09-11 01:46:13',NULL,'public'),(132,0,'favicon','favicon',7,'image/png',5383,'general/favicon.png','[]','2025-09-11 01:46:13','2025-09-11 01:46:13',NULL,'public'),(133,0,'google-play','google-play',7,'image/jpeg',1928,'general/google-play.jpg','[]','2025-09-11 01:46:13','2025-09-11 01:46:13',NULL,'public'),(134,0,'header-bg','header-bg',7,'image/png',36758,'general/header-bg.png','[]','2025-09-11 01:46:14','2025-09-11 01:46:14',NULL,'public'),(135,0,'home-6','home-6',7,'image/jpeg',103307,'general/home-6.jpeg','[]','2025-09-11 01:46:14','2025-09-11 01:46:14',NULL,'public'),(136,0,'icon-1','icon-1',7,'image/png',3143,'general/icon-1.png','[]','2025-09-11 01:46:14','2025-09-11 01:46:14',NULL,'public'),(137,0,'icon-2','icon-2',7,'image/png',5389,'general/icon-2.png','[]','2025-09-11 01:46:15','2025-09-11 01:46:15',NULL,'public'),(138,0,'icon-3','icon-3',7,'image/png',3452,'general/icon-3.png','[]','2025-09-11 01:46:15','2025-09-11 01:46:15',NULL,'public'),(139,0,'icon-4','icon-4',7,'image/png',3369,'general/icon-4.png','[]','2025-09-11 01:46:15','2025-09-11 01:46:15',NULL,'public'),(140,0,'icon-5','icon-5',7,'image/png',4435,'general/icon-5.png','[]','2025-09-11 01:46:15','2025-09-11 01:46:15',NULL,'public'),(141,0,'instagram','instagram',7,'image/png',2935,'general/instagram.png','[]','2025-09-11 01:46:15','2025-09-11 01:46:15',NULL,'public'),(142,0,'loading','loading',7,'image/gif',23986,'general/loading.gif','[]','2025-09-11 01:46:16','2025-09-11 01:46:16',NULL,'public'),(143,0,'login-1','login-1',7,'image/png',20332,'general/login-1.png','[]','2025-09-11 01:46:17','2025-09-11 01:46:17',NULL,'public'),(144,0,'logo','logo',7,'image/png',16069,'general/logo.png','[]','2025-09-11 01:46:17','2025-09-11 01:46:17',NULL,'public'),(145,0,'newsletter-background-image','newsletter-background-image',7,'image/png',58306,'general/newsletter-background-image.png','[]','2025-09-11 01:46:18','2025-09-11 01:46:18',NULL,'public'),(146,0,'newsletter-image','newsletter-image',7,'image/png',14191,'general/newsletter-image.png','[]','2025-09-11 01:46:18','2025-09-11 01:46:18',NULL,'public'),(147,0,'open-graph-image','open-graph-image',7,'image/png',387270,'general/open-graph-image.png','[]','2025-09-11 01:46:18','2025-09-11 01:46:18',NULL,'public'),(148,0,'paper-plane','paper-plane',7,'image/png',5184,'general/paper-plane.png','[]','2025-09-11 01:46:19','2025-09-11 01:46:19',NULL,'public'),(149,0,'payment-methods','payment-methods',7,'image/png',476,'general/payment-methods.png','[]','2025-09-11 01:46:19','2025-09-11 01:46:19',NULL,'public'),(150,0,'pinterest','pinterest',7,'image/png',2430,'general/pinterest.png','[]','2025-09-11 01:46:19','2025-09-11 01:46:19',NULL,'public'),(151,0,'twitter','twitter',7,'image/png',2058,'general/twitter.png','[]','2025-09-11 01:46:19','2025-09-11 01:46:19',NULL,'public'),(152,0,'youtube','youtube',7,'image/png',1296,'general/youtube.png','[]','2025-09-11 01:46:20','2025-09-11 01:46:20',NULL,'public'),(153,0,'cod','cod',8,'image/png',12121,'payments/cod.png','[]','2025-09-11 01:46:20','2025-09-11 01:46:20',NULL,'public'),(154,0,'bank-transfer','bank-transfer',8,'image/png',29089,'payments/bank-transfer.png','[]','2025-09-11 01:46:20','2025-09-11 01:46:20',NULL,'public'),(155,0,'stripe','stripe',8,'image/webp',7516,'payments/stripe.webp','[]','2025-09-11 01:46:21','2025-09-11 01:46:21',NULL,'public'),(156,0,'paypal','paypal',8,'image/png',3001,'payments/paypal.png','[]','2025-09-11 01:46:21','2025-09-11 01:46:21',NULL,'public'),(157,0,'mollie','mollie',8,'image/png',8968,'payments/mollie.png','[]','2025-09-11 01:46:21','2025-09-11 01:46:21',NULL,'public'),(158,0,'paystack','paystack',8,'image/png',31015,'payments/paystack.png','[]','2025-09-11 01:46:21','2025-09-11 01:46:21',NULL,'public'),(159,0,'razorpay','razorpay',8,'image/png',8489,'payments/razorpay.png','[]','2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,'public'),(160,0,'sslcommerz','sslcommerz',8,'image/png',3482,'payments/sslcommerz.png','[]','2025-09-11 01:46:22','2025-09-11 01:46:22',NULL,'public'),(161,0,'1','1',9,'image/png',11540,'promotion/1.png','[]','2025-09-11 01:46:26','2025-09-11 01:46:26',NULL,'public'),(162,0,'10','10',9,'image/png',7883,'promotion/10.png','[]','2025-09-11 01:46:26','2025-09-11 01:46:26',NULL,'public'),(163,0,'11','11',9,'image/png',7883,'promotion/11.png','[]','2025-09-11 01:46:26','2025-09-11 01:46:26',NULL,'public'),(164,0,'12','12',9,'image/png',7883,'promotion/12.png','[]','2025-09-11 01:46:27','2025-09-11 01:46:27',NULL,'public'),(165,0,'2','2',9,'image/png',11540,'promotion/2.png','[]','2025-09-11 01:46:27','2025-09-11 01:46:27',NULL,'public'),(166,0,'3','3',9,'image/png',11540,'promotion/3.png','[]','2025-09-11 01:46:27','2025-09-11 01:46:27',NULL,'public'),(167,0,'4','4',9,'image/png',13954,'promotion/4.png','[]','2025-09-11 01:46:27','2025-09-11 01:46:27',NULL,'public'),(168,0,'5','5',9,'image/png',26326,'promotion/5.png','[]','2025-09-11 01:46:28','2025-09-11 01:46:28',NULL,'public'),(169,0,'6','6',9,'image/png',26326,'promotion/6.png','[]','2025-09-11 01:46:28','2025-09-11 01:46:28',NULL,'public'),(170,0,'7','7',9,'image/png',14402,'promotion/7.png','[]','2025-09-11 01:46:29','2025-09-11 01:46:29',NULL,'public'),(171,0,'8','8',9,'image/png',7028,'promotion/8.png','[]','2025-09-11 01:46:29','2025-09-11 01:46:29',NULL,'public'),(172,0,'9','9',9,'image/png',7883,'promotion/9.png','[]','2025-09-11 01:46:29','2025-09-11 01:46:29',NULL,'public'),(173,0,'1','1',10,'image/png',5327,'stores/1.png','[]','2025-09-11 01:46:30','2025-09-11 01:46:30',NULL,'public'),(174,0,'10','10',10,'image/png',5327,'stores/10.png','[]','2025-09-11 01:46:30','2025-09-11 01:46:30',NULL,'public'),(175,0,'11','11',10,'image/png',5327,'stores/11.png','[]','2025-09-11 01:46:30','2025-09-11 01:46:30',NULL,'public'),(176,0,'12','12',10,'image/png',5327,'stores/12.png','[]','2025-09-11 01:46:30','2025-09-11 01:46:30',NULL,'public'),(177,0,'13','13',10,'image/png',5327,'stores/13.png','[]','2025-09-11 01:46:31','2025-09-11 01:46:31',NULL,'public'),(178,0,'14','14',10,'image/png',5327,'stores/14.png','[]','2025-09-11 01:46:31','2025-09-11 01:46:31',NULL,'public'),(179,0,'15','15',10,'image/png',5327,'stores/15.png','[]','2025-09-11 01:46:31','2025-09-11 01:46:31',NULL,'public'),(180,0,'16','16',10,'image/png',5327,'stores/16.png','[]','2025-09-11 01:46:31','2025-09-11 01:46:31',NULL,'public'),(181,0,'17','17',10,'image/png',5327,'stores/17.png','[]','2025-09-11 01:46:32','2025-09-11 01:46:32',NULL,'public'),(182,0,'2','2',10,'image/png',5327,'stores/2.png','[]','2025-09-11 01:46:32','2025-09-11 01:46:32',NULL,'public'),(183,0,'3','3',10,'image/png',5327,'stores/3.png','[]','2025-09-11 01:46:32','2025-09-11 01:46:32',NULL,'public'),(184,0,'4','4',10,'image/png',5327,'stores/4.png','[]','2025-09-11 01:46:32','2025-09-11 01:46:32',NULL,'public'),(185,0,'5','5',10,'image/png',5327,'stores/5.png','[]','2025-09-11 01:46:33','2025-09-11 01:46:33',NULL,'public'),(186,0,'6','6',10,'image/png',5327,'stores/6.png','[]','2025-09-11 01:46:33','2025-09-11 01:46:33',NULL,'public'),(187,0,'7','7',10,'image/png',5327,'stores/7.png','[]','2025-09-11 01:46:34','2025-09-11 01:46:34',NULL,'public'),(188,0,'8','8',10,'image/png',5327,'stores/8.png','[]','2025-09-11 01:46:34','2025-09-11 01:46:34',NULL,'public'),(189,0,'9','9',10,'image/png',5327,'stores/9.png','[]','2025-09-11 01:46:34','2025-09-11 01:46:34',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories',NULL,'product-categories',0,'2025-09-11 01:45:32','2025-09-11 01:45:32',NULL),(2,0,'products',NULL,'products',0,'2025-09-11 01:45:37','2025-09-11 01:45:37',NULL),(3,0,'customers',NULL,'customers',0,'2025-09-11 01:45:55','2025-09-11 01:45:55',NULL),(4,0,'flash-sales',NULL,'flash-sales',0,'2025-09-11 01:46:03','2025-09-11 01:46:03',NULL),(5,0,'sliders',NULL,'sliders',0,'2025-09-11 01:46:04','2025-09-11 01:46:04',NULL),(6,0,'news',NULL,'news',0,'2025-09-11 01:46:09','2025-09-11 01:46:09',NULL),(7,0,'general',NULL,'general',0,'2025-09-11 01:46:12','2025-09-11 01:46:12',NULL),(8,0,'payments',NULL,'payments',0,'2025-09-11 01:46:20','2025-09-11 01:46:20',NULL),(9,0,'promotion',NULL,'promotion',0,'2025-09-11 01:46:26','2025-09-11 01:46:26',NULL),(10,0,'stores',NULL,'stores',0,'2025-09-11 01:46:30','2025-09-11 01:46:30',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-09-11 01:46:43','2025-09-11 01:46:43'),(2,2,'header-navigation','2025-09-11 01:46:43','2025-09-11 01:46:43');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(2,1,1,1,'Botble\\Page\\Models\\Page','/',NULL,0,'Home 1',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,1,'Home 2',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,2,'Home 3',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,3,'Home 4',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,4,'Home 5',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,5,'Home 6',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(8,1,0,NULL,NULL,'/products',NULL,1,'Shop',NULL,'_self',1,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,1,'Shop Grid - Right Sidebar',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,2,'Shop Grid - Left Sidebar',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,3,'Products Of Category',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(13,1,0,NULL,NULL,'/stores',NULL,2,'Stores',NULL,'_self',1,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,1,'Stores - List',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(16,1,13,NULL,NULL,'',NULL,2,'Store - Detail',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,3,'Product',NULL,'_self',1,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,1,'Product Left Sidebar',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,2,'Product Full Width',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(21,1,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Blog',NULL,'_self',1,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(22,1,21,5,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog Grid',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(23,1,21,13,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Blog List',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(24,1,21,14,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Blog Big',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(25,1,21,15,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Blog Wide',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(26,1,21,NULL,NULL,'',NULL,4,'Single Post',NULL,'_self',1,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(27,1,26,NULL,NULL,'',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(28,1,26,NULL,NULL,'',NULL,1,'Single Post Left Sidebar',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(29,1,26,NULL,NULL,'',NULL,2,'Single Post Full Width',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(30,1,26,NULL,NULL,'',NULL,3,'Single Post with Product Listing',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(31,1,0,18,'Botble\\Page\\Models\\Page',NULL,NULL,5,'FAQ',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(32,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Contact',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(33,2,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About Us',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Order Tracking',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Milks and Dairies',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,1,'Clothing & beauty',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,2,'Pet Toy',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,3,'Baking material',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,4,'Fresh Fruit',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,5,'Wines & Drinks',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(41,4,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact Us',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(42,4,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,1,'About Us',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(43,4,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Cookie Policy',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(44,4,0,9,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Terms & Conditions',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(45,4,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Returns & Exchanges',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(46,4,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,5,'Shipping & Delivery',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(47,4,0,12,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Privacy Policy',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(48,5,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About us',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(49,5,0,NULL,NULL,'#',NULL,1,'Affiliate',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(50,5,0,NULL,NULL,'#',NULL,2,'Career',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43'),(51,5,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Contact us',NULL,'_self',0,'2025-09-11 01:46:43','2025-09-11 01:46:43');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-09-11 01:46:43','2025-09-11 01:46:43'),(2,'Header menu','header-menu','published','2025-09-11 01:46:43','2025-09-11 01:46:43'),(3,'Product categories','product-categories','published','2025-09-11 01:46:43','2025-09-11 01:46:43'),(4,'Information','information','published','2025-09-11 01:46:43','2025-09-11 01:46:43'),(5,'Company','company','published','2025-09-11 01:46:43','2025-09-11 01:46:43');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(2,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(3,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(4,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(5,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(6,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(7,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(8,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(9,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(10,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(11,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(12,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(13,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(14,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2025-09-11 01:45:37','2025-09-11 01:45:37'),(15,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:50','2025-09-11 01:45:50'),(16,'is_popular','[\"1\"]',1,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:50','2025-09-11 01:45:50'),(17,'faq_ids','[[1,2,5,7,8]]',1,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:50','2025-09-11 01:45:50'),(18,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(19,'faq_ids','[[1,2,5,8,10]]',2,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(20,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(21,'is_popular','[\"1\"]',3,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(22,'faq_ids','[[1,4,6,7,9]]',3,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(23,'faq_ids','[[1,3,4,7,10]]',4,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(24,'is_popular','[\"1\"]',5,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(25,'faq_ids','[[1,3,7,9,10]]',5,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(26,'faq_ids','[[1,7,8,9,10]]',6,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(27,'is_popular','[\"1\"]',7,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(28,'faq_ids','[[1,2,3,9,10]]',7,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(29,'faq_ids','[[2,5,6,7,9]]',8,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(30,'is_popular','[\"1\"]',9,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(31,'faq_ids','[[2,7,8,9,10]]',9,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(32,'faq_ids','[[1,3,5,7,10]]',10,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(33,'is_popular','[\"1\"]',11,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(34,'faq_ids','[[1,4,6,8,9]]',11,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:51','2025-09-11 01:45:51'),(35,'faq_ids','[[1,3,6,7,9]]',12,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(36,'is_popular','[\"1\"]',13,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(37,'faq_ids','[[1,4,5,7,8]]',13,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(38,'faq_ids','[[1,2,3,5,10]]',14,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(39,'is_popular','[\"1\"]',15,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(40,'faq_ids','[[4,5,6,7,8]]',15,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(41,'faq_ids','[[1,2,3,5,9]]',16,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(42,'is_popular','[\"1\"]',17,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(43,'faq_ids','[[2,4,6,7,10]]',17,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(44,'faq_ids','[[2,3,4,7,10]]',18,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(45,'is_popular','[\"1\"]',19,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(46,'faq_ids','[[1,2,6,8,9]]',19,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(47,'faq_ids','[[1,2,5,8,9]]',20,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(48,'is_popular','[\"1\"]',21,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(49,'faq_ids','[[2,4,5,7,9]]',21,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(50,'faq_ids','[[2,6,8,9,10]]',22,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:52','2025-09-11 01:45:52'),(51,'is_popular','[\"1\"]',23,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:53','2025-09-11 01:45:53'),(52,'faq_ids','[[1,2,5,8,10]]',23,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:53','2025-09-11 01:45:53'),(53,'faq_ids','[[1,5,8,9,10]]',24,'Botble\\Ecommerce\\Models\\Product','2025-09-11 01:45:53','2025-09-11 01:45:53'),(54,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2025-09-11 01:46:04','2025-09-11 01:46:04'),(55,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2025-09-11 01:46:04','2025-09-11 01:46:04'),(56,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2025-09-11 01:46:04','2025-09-11 01:46:04'),(57,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2025-09-11 01:46:04','2025-09-11 01:46:04'),(58,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2025-09-11 01:46:04','2025-09-11 01:46:04'),(59,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-09-11 01:46:09','2025-09-11 01:46:09'),(60,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-09-11 01:46:09','2025-09-11 01:46:09'),(61,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-09-11 01:46:09','2025-09-11 01:46:09'),(62,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-09-11 01:46:09','2025-09-11 01:46:09'),(63,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-09-11 01:46:09','2025-09-11 01:46:09'),(64,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-09-11 01:46:09','2025-09-11 01:46:09'),(65,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2025-09-11 01:46:09','2025-09-11 01:46:09'),(66,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2025-09-11 01:46:12','2025-09-11 01:46:12'),(67,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2025-09-11 01:46:12','2025-09-11 01:46:12'),(68,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(69,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(70,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(71,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(72,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(73,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(74,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(75,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(76,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(77,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(78,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(79,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(80,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(81,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(82,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(83,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(84,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(85,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(86,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(87,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:29','2025-09-11 01:46:29'),(88,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:30','2025-09-11 01:46:30'),(89,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:30','2025-09-11 01:46:30'),(90,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:30','2025-09-11 01:46:30'),(91,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2025-09-11 01:46:30','2025-09-11 01:46:30'),(92,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2025-09-11 01:46:40','2025-09-11 01:46:40'),(93,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2025-09-11 01:46:40','2025-09-11 01:46:40'),(94,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2025-09-11 01:46:40','2025-09-11 01:46:40'),(95,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2025-09-11 01:46:40','2025-09-11 01:46:40'),(96,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',5,'Botble\\Marketplace\\Models\\Store','2025-09-11 01:46:40','2025-09-11 01:46:40'),(97,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',6,'Botble\\Marketplace\\Models\\Store','2025-09-11 01:46:40','2025-09-11 01:46:40');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_01_07_072057_update_theme_option_for_login_page',1),(34,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(35,'2024_04_25_021317_remove_wrong_widget',1),(36,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(37,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(38,'2024_07_12_100000_change_random_hash_for_media',1),(39,'2024_09_30_024515_create_sessions_table',1),(40,'2024_12_19_000001_create_device_tokens_table',1),(41,'2024_12_19_000002_create_push_notifications_table',1),(42,'2024_12_19_000003_create_push_notification_recipients_table',1),(43,'2024_12_30_000001_create_user_settings_table',1),(44,'2025_07_06_030754_add_phone_to_users_table',1),(45,'2025_07_31_add_performance_indexes_to_slugs_table',1),(46,'2020_11_18_150916_ads_create_ads_table',2),(47,'2021_12_02_035301_add_ads_translations_table',2),(48,'2023_04_17_062645_add_open_in_new_tab',2),(49,'2023_11_07_023805_add_tablet_mobile_image',2),(50,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(51,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(52,'2024_04_27_100730_improve_analytics_setting',3),(53,'2015_06_29_025744_create_audit_history',4),(54,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(55,'2025_05_05_000001_add_user_type_to_audit_histories_table',4),(56,'2015_06_18_033822_create_blog_table',5),(57,'2021_02_16_092633_remove_default_value_for_author_type',5),(58,'2021_12_03_030600_create_blog_translations',5),(59,'2022_04_19_113923_add_index_to_table_posts',5),(60,'2023_08_29_074620_make_column_author_id_nullable',5),(61,'2024_07_30_091615_fix_order_column_in_categories_table',5),(62,'2025_01_06_033807_add_default_value_for_categories_author_type',5),(63,'2016_06_17_091537_create_contacts_table',6),(64,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(65,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(66,'2024_03_25_000001_update_captcha_settings_for_contact',6),(67,'2024_04_19_063914_create_custom_fields_table',6),(68,'2020_03_05_041139_create_ecommerce_tables',7),(69,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(70,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(71,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(72,'2021_02_18_073505_update_table_ec_reviews',7),(73,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(74,'2021_03_10_025153_change_column_tax_amount',7),(75,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(76,'2021_04_28_074008_ecommerce_create_product_label_table',7),(77,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(78,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(79,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(80,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(81,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(82,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(83,'2021_11_23_071403_correct_languages_for_product_variations',7),(84,'2021_11_28_031808_add_product_tags_translations',7),(85,'2021_12_01_031123_add_featured_image_to_ec_products',7),(86,'2022_01_01_033107_update_table_ec_shipments',7),(87,'2022_02_16_042457_improve_product_attribute_sets',7),(88,'2022_03_22_075758_correct_product_name',7),(89,'2022_04_19_113334_add_index_to_ec_products',7),(90,'2022_04_28_144405_remove_unused_table',7),(91,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(92,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(93,'2022_06_16_095633_add_index_to_some_tables',7),(94,'2022_06_30_035148_create_order_referrals_table',7),(95,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(96,'2022_08_14_032836_create_ec_order_returns_table',7),(97,'2022_08_14_033554_create_ec_order_return_items_table',7),(98,'2022_08_15_040324_add_billing_address',7),(99,'2022_08_30_091114_support_digital_products_table',7),(100,'2022_09_13_095744_create_options_table',7),(101,'2022_09_13_104347_create_option_value_table',7),(102,'2022_10_05_163518_alter_table_ec_order_product',7),(103,'2022_10_12_041517_create_invoices_table',7),(104,'2022_10_12_142226_update_orders_table',7),(105,'2022_10_13_024916_update_table_order_returns',7),(106,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(107,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(108,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(109,'2022_11_19_041643_add_ec_tax_product_table',7),(110,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(111,'2022_12_17_041532_fix_address_in_order_invoice',7),(112,'2022_12_26_070329_create_ec_product_views_table',7),(113,'2023_01_04_033051_fix_product_categories',7),(114,'2023_01_09_050400_add_ec_global_options_translations_table',7),(115,'2023_01_10_093754_add_missing_option_value_id',7),(116,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(117,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(118,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(119,'2023_02_27_095752_remove_duplicate_reviews',7),(120,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(121,'2023_04_21_082427_create_ec_product_categorizables_table',7),(122,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(123,'2023_05_17_025812_fix_invoice_issue',7),(124,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(125,'2023_05_27_144611_fix_exchange_rate_setting',7),(126,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(127,'2023_06_30_042512_create_ec_order_tax_information_table',7),(128,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(129,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(130,'2023_08_15_064505_create_ec_tax_rules_table',7),(131,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(132,'2023_08_22_094114_drop_unique_for_barcode',7),(133,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(134,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(135,'2023_09_19_024955_create_discount_product_categories_table',7),(136,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(137,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(138,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(139,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(140,'2023_12_25_040604_ec_create_review_replies_table',7),(141,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(142,'2024_01_16_070706_fix_translation_tables',7),(143,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(144,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(145,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(146,'2024_03_29_042242_migrate_old_captcha_settings',7),(147,'2024_03_29_093946_create_ec_order_return_histories_table',7),(148,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(149,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(150,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(151,'2024_05_07_073153_improve_table_wishlist',7),(152,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(153,'2024_05_15_021503_fix_invoice_path',7),(154,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(155,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(156,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(157,'2024_07_14_071826_make_customer_email_nullable',7),(158,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(159,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(160,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(161,'2024_08_19_132849_create_specification_tables',7),(162,'2024_09_07_060744_add_author_column_to_specification_tables',7),(163,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',7),(164,'2024_09_25_073928_remove_wrong_product_slugs',7),(165,'2025_01_10_000000_fix_order_invoice_rounding_issues',7),(166,'2025_01_15_050230_migrate_old_theme_options',7),(167,'2025_01_15_optimize_products_export_index',7),(168,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',7),(169,'2025_01_24_044641_migrate_old_country_data',7),(170,'2025_01_28_233602_add_private_notes_into_ec_orders_table',7),(171,'2025_02_13_021247_add_tax_translations',7),(172,'2025_02_24_152621_add_text_color_to_product_labels_table',7),(173,'2025_04_12_000001_add_payment_fee_to_ec_orders_table',7),(174,'2025_04_12_000002_add_payment_fee_to_ec_invoices_table',7),(175,'2025_05_05_092036_make_user_id_and_tax_amount_nullable',7),(176,'2025_05_15_082342_drop_email_unique_index_in_ec_customers_table',7),(177,'2025_06_07_081731_add_translations_for_specification_groups_and_tables',7),(178,'2025_06_17_091813_increase_note_in_shipments_table',7),(179,'2025_06_24_000001_create_ec_product_license_codes_table',7),(180,'2025_06_24_080427_add_license_code_type_to_products_table',7),(181,'2025_07_06_062402_create_ec_customer_deletion_requests_table',7),(182,'2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table',7),(183,'2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table',7),(184,'2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table',7),(185,'2025_07_15_090809_create_ec_abandoned_carts_table',7),(186,'2025_07_24_120510_increase_barcode_column_length_in_ec_products_table',7),(187,'2025_07_31_133600_add_performance_indexes_to_ec_product_categories_table',7),(188,'2025_08_01_161205_optimize_product_variation_query_indexes',7),(189,'2025_08_08_145059_correct_tax_amount_in_order_and_invoice_tables',7),(190,'2025_09_05_025247_create_ec_product_specification_attribute_translations_table',7),(191,'2025_09_08_025516_add_variations_count_to_ec_products_table',7),(192,'2025_09_08_030755_add_reviews_cache_to_ec_products_table',7),(193,'2025_09_08_080248_add_slug_column_to_ec_product_categories_table',7),(194,'2025_09_08_080330_add_slug_column_to_ec_product_categories_translations_table',7),(195,'2025_09_08_080443_populate_slug_column_for_product_categories',7),(196,'2025_09_08_081216_add_slug_column_to_ec_products_table',7),(197,'2025_09_08_081237_add_slug_column_to_ec_products_translations_table',7),(198,'2025_09_08_081321_populate_slug_column_for_products',7),(199,'2025_09_10_073321_add_performance_indexes_to_ecommerce_tables',7),(200,'2018_07_09_221238_create_faq_table',8),(201,'2021_12_03_082134_create_faq_translations',8),(202,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(203,'2016_10_03_032336_create_languages_table',9),(204,'2023_09_14_022423_add_index_for_language_table',9),(205,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(206,'2021_12_03_075608_create_page_translations',10),(207,'2023_07_06_011444_create_slug_translations_table',10),(208,'2019_11_18_061011_create_country_table',11),(209,'2021_12_03_084118_create_location_translations',11),(210,'2021_12_03_094518_migrate_old_location_data',11),(211,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(212,'2022_01_16_085908_improve_plugin_location',11),(213,'2022_08_04_052122_delete_location_backup_tables',11),(214,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(215,'2023_07_26_041451_add_more_columns_to_location_table',11),(216,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(217,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(218,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(219,'2024_08_17_094600_add_image_into_countries',11),(220,'2025_01_08_093652_add_zip_code_to_cities',11),(221,'2025_07_31_083459_add_indexes_for_location_search_performance',11),(222,'2021_07_06_030002_create_marketplace_table',12),(223,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(224,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(225,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(226,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(227,'2021_12_06_031304_update_table_mp_customer_revenues',12),(228,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(229,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(230,'2022_11_02_071413_add_more_info_for_store',12),(231,'2022_11_02_080444_add_tax_info',12),(232,'2023_02_01_062030_add_store_translations',12),(233,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(234,'2023_02_17_023648_fix_store_prefix',12),(235,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(236,'2024_05_07_082630_create_mp_messages_table',12),(237,'2024_07_19_131849_add_documents_to_mp_stores_table',12),(238,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',12),(239,'2024_08_27_141244_add_block_reason_to_ec_customers_table',12),(240,'2024_09_17_125408_add_square_logo_to_stores_table',12),(241,'2025_07_31_021805_add_indexes_for_vendor_categories_optimization',12),(242,'2025_08_07_073854_add_verification_fields_to_mp_stores_table',12),(243,'2017_10_24_154832_create_newsletter_table',13),(244,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(245,'2017_05_18_080441_create_payment_tables',14),(246,'2021_03_27_144913_add_customer_type_into_table_payments',14),(247,'2021_05_24_034720_make_column_currency_nullable',14),(248,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(249,'2021_10_19_020859_update_metadata_field',14),(250,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(251,'2022_07_07_153354_update_charge_id_in_table_payments',14),(252,'2024_07_04_083133_create_payment_logs_table',14),(253,'2025_04_12_000003_add_payment_fee_to_payments_table',14),(254,'2025_05_22_000001_add_payment_fee_type_to_settings_table',14),(255,'2017_07_11_140018_create_simple_slider_table',15),(256,'2025_04_08_040931_create_social_logins_table',16),(257,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',17),(258,'2016_10_07_193005_create_translations_table',18),(259,'2023_12_12_105220_drop_translations_table',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `verified_at` timestamp NULL DEFAULT NULL,
  `verified_by` bigint unsigned DEFAULT NULL,
  `verification_note` text COLLATE utf8mb4_unicode_ci,
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','alfreda.hansen@example.com','+19476030037','5822 Gislason Springs','BI','Missouri','Lilianaville',2,'stores/1.png',NULL,NULL,'Atque quas ipsam atque dicta saepe aut.','Exercitationem incidunt eaque voluptatum ut. Molestiae ut itaque quos similique assumenda ex. Minima dicta aut delectus aut dolore dicta eveniet.','published',0,NULL,NULL,NULL,NULL,'2025-09-11 01:46:40','2025-09-11 01:46:40',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','eondricka@example.net','+15637666123','8746 Margarete Wall Apt. 163','KH','Mississippi','Bransonport',3,'stores/2.png',NULL,NULL,'Quo sed et consequatur et quod reprehenderit.','Aut laboriosam earum aut quos sit quidem ut. Laboriosam blanditiis qui dolores consectetur id. Aliquam mollitia eveniet laborum deleniti aut.','published',1,'2025-09-08 04:33:55',NULL,'Verified through official business registration',NULL,'2025-09-11 01:46:40','2025-09-11 01:46:40',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','dixie88@example.net','+12403103597','62689 Wehner Forest','TK','Oregon','Port Antonietta',4,'stores/3.png',NULL,NULL,'Temporibus quo sit voluptate eum asperiores.','Et similique nisi cumque adipisci totam est. Ut atque natus perspiciatis velit quo perferendis. Quos recusandae voluptatem enim eaque sed.','published',0,NULL,NULL,NULL,NULL,'2025-09-11 01:46:40','2025-09-11 01:46:40',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','izaiah09@example.com','+15419585498','77910 Carson Parkways Suite 001','VG','Texas','Hesselport',5,'stores/4.png',NULL,NULL,'Odit ut qui ad fuga.','Est pariatur atque dolores sit aut. Aperiam sed possimus ut qui porro impedit.','published',1,'2025-08-10 03:26:33',NULL,'Verified business with valid documentation',NULL,'2025-09-11 01:46:40','2025-09-11 01:46:40',NULL,NULL,NULL,NULL,NULL),(5,'Robert’s Store','kelly26@example.org','+17868894014','53176 O\'Keefe Turnpike Apt. 677','CC','Rhode Island','Macejkovichaven',6,'stores/5.png',NULL,NULL,'Quia laudantium consequatur facilis qui officia.','Aut a consequuntur maxime rem modi odio. Sit mollitia quibusdam et. Non iste magnam non enim voluptas nobis.','published',1,'2025-08-21 14:01:44',NULL,'Established vendor with proven track record',NULL,'2025-09-11 01:46:40','2025-09-11 01:46:40',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','dean32@example.net','+15407986190','47517 Monica Haven Apt. 710','BD','Illinois','Lake Krystina',9,'stores/6.png',NULL,NULL,'Rerum vitae odio est harum.','Velit numquam qui cupiditate ut. Autem dolor quia et odit esse delectus. Laborum eaque nemo ab libero aut maxime. Quidem est optio minima pariatur.','published',1,'2025-03-23 11:35:03',NULL,'Successfully completed verification process',NULL,'2025-09-11 01:46:40','2025-09-11 01:46:40',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$bjuS6iAK7GCtIDXZFnZsR.plORkjy21u7Xzs1XDhzE6r1f/WfTPse','{\"name\":\"Percy Koepp\",\"number\":\"+13237806461\",\"full_name\":\"Aaron Considine III\",\"description\":\"Verner Jacobi\"}','2025-09-11 01:46:36','2025-09-11 01:46:36','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$dmuzzGBemBN7VgdCscqNXupoyNEjBfx0kmL3UzJOMSyGc9AECyqWi','{\"name\":\"Mr. Monroe Halvorson II\",\"number\":\"+19845092305\",\"full_name\":\"Ryley Treutel\",\"description\":\"Meaghan Gutmann\"}','2025-09-11 01:46:37','2025-09-11 01:46:37','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$NqETvC1t0PLiqWRoFUs.eOJACdLbhq9sgsEqv5x55MJDJZymTjv9q','{\"name\":\"Rylan Klein V\",\"number\":\"+16786163255\",\"full_name\":\"Bryana Dare\",\"description\":\"Miss Kristin Rowe PhD\"}','2025-09-11 01:46:38','2025-09-11 01:46:38','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$oT1.jIuHBFCZTjNeS2ZIDu0/0dQjgVw72h7nOpUb807fWz5E4RpMe','{\"name\":\"Dr. Hobart Haley PhD\",\"number\":\"+19199303531\",\"full_name\":\"Karl O\'Reilly\",\"description\":\"Price Paucek\"}','2025-09-11 01:46:39','2025-09-11 01:46:39','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$2epnqcBb/T3NKporJC9Iu.B9po52se1Cj/FxNStpHm0bORlg2UkzC','{\"name\":\"Luther Schneider\",\"number\":\"+17273654754\",\"full_name\":\"Prof. Alphonso Dicki DVM\",\"description\":\"Kayleigh Muller\"}','2025-09-11 01:46:39','2025-09-11 01:46:39','bank_transfer',NULL),(6,9,0.00,0.00,0.00,'$2y$12$8hUCjnAufCFJVEnNnGo2FOt5fioj.NTPVI.7aCt0t11vB9WqaykVG','{\"name\":\"Arnulfo Roberts II\",\"number\":\"+15166802509\",\"full_name\":\"Kelly Wyman\",\"description\":\"Elinore Sauer IV\"}','2025-09-11 01:46:40','2025-09-11 01:46:40','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(7,'About us','<p>King, with an air of great surprise. \'Of course not,\' Alice replied very politely, \'for I can\'t understand it myself to begin with; and being ordered about by mice and rabbits. I almost wish I could not join the dance? Will you, won\'t you, will you join the dance?\"\' \'Thank you, sir, for your interesting story,\' but she saw them, they set to work nibbling at the sudden change, but she did not notice this last remark that had slipped in like herself. \'Would it be murder to leave it behind?\' She.</p><p>Lizard, who seemed ready to talk nonsense. The Queen\'s argument was, that you never to lose YOUR temper!\' \'Hold your tongue!\' said the Queen, who was passing at the sudden change, but she could see, as she spoke. \'I must go by the whole party swam to the Gryphon. \'How the creatures wouldn\'t be in a long, low hall, which was sitting on the whole party swam to the shore. CHAPTER III. A Caucus-Race and a sad tale!\' said the King. (The jury all wrote down all three to settle the question, and they.</p><p>Pray, what is the same thing as \"I sleep when I got up in a hurry. \'No, I\'ll look first,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she had not long to doubt, for the first to speak. \'What size do you mean by that?\' said the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said to the Gryphon. \'The reason is,\' said the Cat. \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the King, \'that only makes the matter with it. There was a little hot.</p><p>Alice could see it written up somewhere.\' Down, down, down. There was exactly the right house, because the Duchess said after a minute or two, it was empty: she did not dare to laugh; and, as she could not join the dance? \"You can really have no answers.\' \'If you didn\'t sign it,\' said Five, \'and I\'ll tell you my adventures--beginning from this morning,\' said Alice hastily; \'but I\'m not used to read fairy-tales, I fancied that kind of serpent, that\'s all you know about it, you know.\' He was an.</p>',1,NULL,'right-sidebar',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(9,'Terms &amp; Conditions','<p>Alice: \'three inches is such a dreadful time.\' So Alice got up this morning, but I shall ever see such a thing before, and he hurried off. Alice thought to herself. At this moment the door that led into a tidy little room with a little worried. \'Just about as it happens; and if it makes me grow larger, I can guess that,\' she added aloud. \'Do you take me for a minute or two to think about stopping herself before she came upon a little wider. \'Come, it\'s pleased so far,\' thought Alice, as she.</p><p>Take your choice!\' The Duchess took her choice, and was just in time to avoid shrinking away altogether. \'That WAS a curious dream, dear, certainly: but now run in to your places!\' shouted the Queen say only yesterday you deserved to be ashamed of yourself for asking such a puzzled expression that she still held the pieces of mushroom in her own ears for having missed their turns, and she sat down and began by taking the little golden key, and when she found that it is!\' \'Why should it?\'.</p><p>I\'M a Duchess,\' she said this, she was out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in about half no time! Take your choice!\' The Duchess took her choice, and was coming to, but it makes rather a complaining tone, \'and they all spoke at once, with a round face, and was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter went on, \'I must be getting somewhere near the house before she had put the Dormouse followed him: the March Hare moved into.</p><p>What happened to me! I\'LL soon make you grow taller, and the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples.</p>',1,NULL,'default',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(10,'Returns &amp; Exchanges','<p>Alice coming. \'There\'s PLENTY of room!\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow larger again, and she very seldom followed it), and sometimes shorter, until she made her draw back in a Little Bill It was as much use in knocking,\' said the King said to herself, and fanned herself with one eye, How the Owl had the dish as its share of the tale was something like it,\' said the Hatter: \'I\'m on the top of his tail. \'As if I might venture to ask them what the moral of that.</p><p>I\'ll have you executed on the top of his teacup instead of the lefthand bit of stick, and held out its arms and legs in all my limbs very supple By the use of this rope--Will the roof of the court. (As that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is I hate cats and dogs.\' It was the first figure!\' said the Duchess, who seemed too much of it at all,\' said the Dormouse. \'Fourteenth of March, I think that there was mouth enough for it to half-past one.</p><p>Wonderland of long ago: and how she would get up and walking off to trouble myself about you: you must manage the best of educations--in fact, we went to him,\' said Alice hastily; \'but I\'m not looking for it, you know--\' (pointing with his head!\' or \'Off with their heads off?\' shouted the Queen. \'Well, I can\'t tell you my adventures--beginning from this side of the house!\' (Which was very glad she had to do this, so that by the English, who wanted leaders, and had no idea what to beautify is.</p><p>Alice. \'I don\'t know what to say anything. \'Why,\' said the Pigeon; \'but if you\'ve seen them so shiny?\' Alice looked down at once, and ran off, thinking while she remembered how small she was talking. Alice could only see her. She is such a very short time the Queen put on her spectacles, and began picking them up again as she did not answer, so Alice went on, turning to the law, And argued each case with MINE,\' said the Gryphon, with a teacup in one hand and a scroll of parchment in the middle.</p>',1,NULL,'default',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(11,'Shipping &amp; Delivery','<p>I\'ve finished.\' So they had a vague sort of way to explain it as far as they lay on the slate. \'Herald, read the accusation!\' said the Mouse only growled in reply. \'That\'s right!\' shouted the Queen, tossing her head struck against the roof off.\' After a time she found herself falling down a very pretty dance,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a shriek, \'and just as well. The twelve jurors were writing down \'stupid.</p><p>You gave us three or more; They all returned from him to be two people. \'But it\'s no use in knocking,\' said the Lory. Alice replied thoughtfully. \'They have their tails in their mouths--and they\'re all over their heads. She felt that she looked down at her rather inquisitively, and seemed not to her, one on each side to guard him; and near the door, and the sounds will take care of themselves.\"\' \'How fond she is such a new idea to Alice, and she tried to fancy what the next question is, what?\'.</p><p>And so she went on. \'Or would you like the look of it now in sight, hurrying down it. There was a bright brass plate with the game,\' the Queen ordering off her knowledge, as there was a very good height indeed!\' said the King. \'I can\'t help it,\' said Alice, and she felt that it was too late to wish that! She went in without knocking, and hurried off at once: one old Magpie began wrapping itself up and picking the daisies, when suddenly a footman because he taught us,\' said the Cat went on.</p><p>Bill! I wouldn\'t say anything about it, and then the puppy jumped into the garden with one elbow against the ceiling, and had just begun to dream that she was now more than Alice could hear the rattle of the country is, you ARE a simpleton.\' Alice did not like to see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the others. \'Are their heads off?\' shouted the Queen to play croquet with the bread-and-butter getting so far off). \'Oh, my poor little juror.</p>',1,NULL,'default',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(12,'Privacy Policy','<p>Presently she began thinking over other children she knew she had got to grow up again! Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready to ask his neighbour to tell you--all I know all sorts of things--I can\'t remember things as I used--and I don\'t know one,\' said Alice, seriously, \'I\'ll have nothing more to come, so she went back to the rose-tree, she went on again:-- \'I didn\'t write it, and talking over its head. \'Very uncomfortable for the hot day made her.</p><p>I mean what I should frighten them out again. That\'s all.\' \'Thank you,\' said the King and the Dormouse go on in a helpless sort of life! I do hope it\'ll make me giddy.\' And then, turning to Alice as she could. \'The Dormouse is asleep again,\' said the King. The next thing is, to get an opportunity of showing off a head unless there was no longer to be an old woman--but then--always to have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was a general clapping of hands at this: it was.</p><p>I\'m quite tired of being upset, and their curls got entangled together. Alice laughed so much about a thousand times as large as himself, and this Alice thought to herself, \'because of his head. But at any rate he might answer questions.--How am I to do?\' said Alice. \'I\'ve tried every way, and the White Rabbit blew three blasts on the floor, as it spoke. \'As wet as ever,\' said Alice hastily; \'but I\'m not Ada,\' she said, \'for her hair goes in such confusion that she did so, and giving it a.</p><p>Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not join the dance. Would not, could not, would not join the dance? Will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, will you, old fellow?\' The Mock Turtle replied; \'and then the Rabbit\'s little white kid gloves, and was beating her violently with its arms and legs in all their simple joys, remembering her own child-life, and the other bit. Her chin was pressed so closely against her.</p>',1,NULL,'default',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"5\" limit=\"10\" enable_lazy_loading=\"yes\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" per_row=\"5\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\" enable_lazy_loading=\"yes\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12'),(19,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2026-03-30\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"1\" image=\"general/contact-img.jpg\"][/coming-soon]',1,NULL,'without-layout',NULL,'published','2025-09-11 01:46:12','2025-09-11 01:46:12');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(3,1),(1,2),(3,2),(1,3),(3,3),(2,4),(3,4),(2,5),(4,5),(1,6),(3,6),(1,7),(3,7),(1,8),(3,8),(2,9),(3,9),(2,10),(3,10),(1,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.png',1498,NULL,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.png',1052,NULL,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.png',2132,NULL,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.png',2364,NULL,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.png',2127,NULL,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.png',854,NULL,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.png',570,NULL,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.png',1787,NULL,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.png',1074,NULL,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.png',2244,NULL,'2025-09-11 01:46:11','2025-09-11 01:46:11'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.png',1012,NULL,'2025-09-11 01:46:11','2025-09-11 01:46:11');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-09-11 01:46:12','2025-09-11 01:46:12');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','edb6223370b8c6efdd73d521bc25b897',NULL,'2025-09-11 01:46:30'),(2,'api_enabled','0',NULL,'2025-09-11 01:46:30'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"translation\"]',NULL,'2025-09-11 01:46:30'),(4,'analytics_dashboard_widgets','0','2025-09-11 01:45:24','2025-09-11 01:45:24'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-09-11 01:45:24','2025-09-11 01:45:24'),(6,'api_layer_api_key','',NULL,'2025-09-11 01:46:30'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-09-11 01:45:31','2025-09-11 01:45:31'),(10,'payment_cod_fee_type','fixed',NULL,'2025-09-11 01:46:30'),(11,'payment_bank_transfer_fee_type','fixed',NULL,'2025-09-11 01:46:30'),(12,'theme','nest',NULL,'2025-09-11 01:46:30'),(13,'show_admin_bar','1',NULL,'2025-09-11 01:46:30'),(14,'language_hide_default','1',NULL,'2025-09-11 01:46:30'),(15,'language_switcher_display','dropdown',NULL,'2025-09-11 01:46:30'),(16,'language_display','all',NULL,'2025-09-11 01:46:30'),(17,'language_hide_languages','[]',NULL,'2025-09-11 01:46:30'),(18,'ecommerce_store_name','Nest',NULL,NULL),(19,'ecommerce_store_phone','18006268',NULL,NULL),(20,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(21,'ecommerce_store_state','Singapore',NULL,NULL),(22,'ecommerce_store_city','Singapore',NULL,NULL),(23,'ecommerce_store_country','SG',NULL,NULL),(24,'admin_favicon','general/favicon.png',NULL,'2025-09-11 01:46:30'),(25,'admin_logo','general/logo.png',NULL,'2025-09-11 01:46:30'),(26,'payment_cod_status','1',NULL,'2025-09-11 01:46:30'),(27,'payment_bank_transfer_status','1',NULL,'2025-09-11 01:46:30'),(28,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-09-11 01:46:30'),(29,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-09-11 01:46:30'),(30,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-09-11 01:46:30'),(31,'plugins_ecommerce_customer_new_order_status','0',NULL,'2025-09-11 01:46:30'),(32,'plugins_ecommerce_admin_new_order_status','0',NULL,'2025-09-11 01:46:30'),(33,'ecommerce_is_enabled_support_digital_products','1',NULL,'2025-09-11 01:46:30'),(34,'ecommerce_enable_license_codes_for_digital_products','1',NULL,'2025-09-11 01:46:30'),(35,'ecommerce_auto_complete_digital_orders_after_payment','1',NULL,'2025-09-11 01:46:30'),(36,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2025-09-11 01:46:30'),(37,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2025-09-11 01:46:30'),(38,'ecommerce_store_order_prefix','SF',NULL,'2025-09-11 01:46:30'),(39,'ecommerce_enable_product_specification','1',NULL,'2025-09-11 01:46:30'),(40,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2025-09-11 01:46:30'),(41,'payment_cod_logo','payments/cod.png',NULL,'2025-09-11 01:46:30'),(42,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2025-09-11 01:46:30'),(43,'payment_stripe_logo','payments/stripe.webp',NULL,'2025-09-11 01:46:30'),(44,'payment_paypal_logo','payments/paypal.png',NULL,'2025-09-11 01:46:30'),(45,'payment_mollie_logo','payments/mollie.png',NULL,'2025-09-11 01:46:30'),(46,'payment_paystack_logo','payments/paystack.png',NULL,'2025-09-11 01:46:30'),(47,'payment_razorpay_logo','payments/razorpay.png',NULL,'2025-09-11 01:46:30'),(48,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2025-09-11 01:46:30'),(49,'permalink-botble-blog-models-post','blog',NULL,'2025-09-11 01:46:30'),(50,'permalink-botble-blog-models-category','blog',NULL,'2025-09-11 01:46:30'),(51,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(52,'theme-nest-seo_description','Nest is an attractive Laravel multi-vendor eCommerce script specially designed for the multipurpose shops like mega store, grocery store, supermarket, organic shop, and online stores selling products like beverages, vegetables, fruits, ice creams, paste, herbs, juice, meat, cold drinks, sausages, cocktails, soft drinks, cookies…',NULL,NULL),(53,'theme-nest-copyright','Copyright © %Y Nest all rights reserved. Powered by Botble.',NULL,NULL),(54,'theme-nest-favicon','general/favicon.png',NULL,NULL),(55,'theme-nest-logo','general/logo.png',NULL,NULL),(56,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(57,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(58,'theme-nest-hotline','1900 - 888',NULL,NULL),(59,'theme-nest-hotline_subtitle_text','24/7 Support Center',NULL,NULL),(60,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(61,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(62,'theme-nest-homepage_id','1',NULL,NULL),(63,'theme-nest-blog_page_id','5',NULL,NULL),(64,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(65,'theme-nest-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(66,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(67,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(68,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(69,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(70,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(71,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(72,'theme-nest-login_background','general/login-1.png',NULL,NULL),(73,'theme-nest-number_of_products_per_page','12',NULL,NULL),(74,'theme-nest-preloader_enabled','yes',NULL,NULL),(75,'theme-nest-preloader_version','v2',NULL,NULL),(76,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(77,'theme-nest-sticky_header_content_position','middle',NULL,NULL),(78,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\"}]]',NULL,NULL),(79,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(80,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(81,'theme-nest-number_of_products_per_row','5',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(2,1,'Fresh Vegetables<br>\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(3,2,'Don’t miss amazing<br> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(4,2,'Fresh Vegetables<br>\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(5,3,'Don’t miss amazing<br> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(6,3,'Fresh Vegetables<br>\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(7,4,'Don’t miss amazing<br> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(8,4,'Fresh Vegetables<br>\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(9,5,'Don’t miss amazing<br> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(10,5,'Fresh Vegetables<br>\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(11,6,'Don’t miss amazing<br> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2025-09-11 01:46:09','2025-09-11 01:46:09'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2025-09-11 01:46:09','2025-09-11 01:46:09');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2025-09-11 01:46:09','2025-09-11 01:46:09'),(2,'Home slider 2','home-slider-2',NULL,'published','2025-09-11 01:46:09','2025-09-11 01:46:09'),(3,'Home slider 3','home-slider-3',NULL,'published','2025-09-11 01:46:09','2025-09-11 01:46:09'),(4,'Home slider 4','home-slider-4',NULL,'published','2025-09-11 01:46:09','2025-09-11 01:46:09'),(5,'Home slider 5','home-slider-5',NULL,'published','2025-09-11 01:46:09','2025-09-11 01:46:09'),(6,'Home slider 6','home-slider-6',NULL,'published','2025-09-11 01:46:09','2025-09-11 01:46:09'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2025-09-11 01:46:09','2025-09-11 01:46:09');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  KEY `idx_slugs_reference` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:45:32','2025-09-11 01:45:32'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:45:32','2025-09-11 01:45:32'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:45:32','2025-09-11 01:45:32'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:45:32','2025-09-11 01:45:32'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:45:32','2025-09-11 01:45:32'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:45:32','2025-09-11 01:45:32'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-11 01:45:32','2025-09-11 01:45:32'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-11 01:45:37','2025-09-11 01:45:37'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-11 01:45:37','2025-09-11 01:45:37'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-11 01:45:37','2025-09-11 01:45:37'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-11 01:45:37','2025-09-11 01:45:37'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-11 01:45:37','2025-09-11 01:45:37'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-11 01:45:37','2025-09-11 01:45:37'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:50','2025-09-11 01:45:50'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:51','2025-09-11 01:45:51'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:51','2025-09-11 01:45:51'),(30,'foster-farms-takeout-crispy-classic-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:51','2025-09-11 01:46:43'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:51','2025-09-11 01:45:51'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:51','2025-09-11 01:45:51'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:51','2025-09-11 01:45:51'),(34,'encore-seafoods-stuffed-alaskan-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:51','2025-09-11 01:46:43'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:51','2025-09-11 01:45:51'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:51','2025-09-11 01:45:51'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:51','2025-09-11 01:45:51'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:52','2025-09-11 01:46:44'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:52','2025-09-11 01:45:52'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:52','2025-09-11 01:45:52'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:52','2025-09-11 01:45:52'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:52','2025-09-11 01:46:44'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:52','2025-09-11 01:45:52'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:52','2025-09-11 01:45:52'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:52','2025-09-11 01:45:52'),(46,'perdue-simply-smart-organics-gluten-free-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:52','2025-09-11 01:46:44'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:52','2025-09-11 01:45:52'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:52','2025-09-11 01:45:52'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:53','2025-09-11 01:45:53'),(50,'signature-wood-fired-mushroom-and-caramelized-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:45:53','2025-09-11 01:46:44'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-09-11 01:46:11','2025-09-11 01:46:11'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-09-11 01:46:11','2025-09-11 01:46:11'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-09-11 01:46:11','2025-09-11 01:46:11'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-09-11 01:46:11','2025-09-11 01:46:11'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-09-11 01:46:11','2025-09-11 01:46:11'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:46:11','2025-09-11 01:46:22'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-09-11 01:46:12','2025-09-11 01:46:22'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(89,'coming-soon',19,'Botble\\Page\\Models\\Page','','2025-09-11 01:46:12','2025-09-11 01:46:12'),(90,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2025-09-11 01:46:40','2025-09-11 01:46:40'),(91,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2025-09-11 01:46:40','2025-09-11 01:46:40'),(92,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2025-09-11 01:46:40','2025-09-11 01:46:40'),(93,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2025-09-11 01:46:40','2025-09-11 01:46:40'),(94,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2025-09-11 01:46:40','2025-09-11 01:46:40'),(95,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2025-09-11 01:46:40','2025-09-11 01:46:40'),(96,'blue-diamond-almonds-lightly',25,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(97,'blue-diamond-almonds-lightly',26,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(98,'canada-dry-ginger-ale-2-l-bottle',27,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(99,'canada-dry-ginger-ale-2-l-bottle',28,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(100,'naturally-flavored-cinnamon-vanilla-light-roast-coffee-digital',29,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(101,'naturally-flavored-cinnamon-vanilla-light-roast-coffee-digital',30,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(102,'organic-frozen-triple-berry-blend',31,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(103,'organic-frozen-triple-berry-blend',32,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(104,'organic-frozen-triple-berry-blend',33,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(105,'organic-frozen-triple-berry-blend',34,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(106,'organic-frozen-triple-berry-blend',35,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(107,'oroweat-country-buttermilk-bread',36,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(108,'oroweat-country-buttermilk-bread',37,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(109,'oroweat-country-buttermilk-bread',38,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(110,'angies-boomchickapop-sweet-salty-kettle-corn',39,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(111,'chen-watermelon',40,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(112,'chen-watermelon',41,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(113,'chen-watermelon',42,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(114,'colorful-banana',43,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(115,'colorful-banana',44,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(116,'colorful-banana',45,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(117,'colorful-banana',46,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44'),(118,'colorful-banana',47,'Botble\\Ecommerce\\Models\\Product','products','2025-09-11 01:46:44','2025-09-11 01:46:44');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`),
  KEY `idx_states_name` (`name`),
  KEY `idx_states_status` (`status`),
  KEY `idx_states_country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`),
  KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  KEY `idx_states_trans_name` (`name`),
  KEY `idx_states_trans_states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-11 01:46:11','2025-09-11 01:46:11'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-11 01:46:11','2025-09-11 01:46:11'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-11 01:46:11','2025-09-11 01:46:11'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-11 01:46:11','2025-09-11 01:46:11'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-11 01:46:11','2025-09-11 01:46:11');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mayert.pietro@ruecker.com',NULL,NULL,'$2y$12$EQZH9GU1YRK4ClyZprVsZ.Z/KT047WBSQDwkm801lCeaSA.g57/Vy',NULL,'2025-09-11 01:46:12','2025-09-11 01:46:12','Lucius','Schaefer','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(9,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(10,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Organic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(11,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(12,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(13,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(14,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2025-09-11 01:46:30','2025-09-11 01:46:30'),(15,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2025-09-11 01:46:30','2025-09-11 01:46:30');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-11 15:46:52
