-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: bbs
-- ------------------------------------------------------
-- Server version	5.7.38-log

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
-- Table structure for table `access_tokens`
--

DROP TABLE IF EXISTS `access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_activity_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_tokens_token_unique` (`token`),
  KEY `access_tokens_user_id_foreign` (`user_id`),
  KEY `access_tokens_type_index` (`type`),
  CONSTRAINT `access_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_tokens`
--

LOCK TABLES `access_tokens` WRITE;
/*!40000 ALTER TABLE `access_tokens` DISABLE KEYS */;
INSERT INTO `access_tokens` VALUES (13,'eDuBVOQSqL8uKXpsT1zbBMRWd2y0tUKms0NZqHpT',4,'2022-08-09 05:14:03','2022-08-09 05:14:03','session_remember',NULL,'183.56.113.206','Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 QQ/8.9.0.625 V1_IPH_SQ_8.9.0_1_APP_A Pixel/1170 MiniAppEnable SimpleUISwitch/0 StudyMode/0 CurrentMode/0 CurrentFontScale/1.000000 QQTheme/1000 A'),(18,'AaB4pJshwzZuBAoMoMJm8NZic2ToAMWzJDJPpWOo',5,'2022-08-09 07:19:35','2022-08-09 07:19:35','session_remember',NULL,'182.91.47.44','Mozilla/5.0 (Linux; Android 10; OXF-AN00 Build/HUAWEIOXF-AN00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.72 MQQBrowser/6.2 TBS/046125 Mobile Safari/537.36 V1_AND_SQ_8.9.3_3118_YYB_D A_8090300 QQ/8.9.3.8730 NetType/WIFI WebP/0'),(24,'i9acYoiMP3xKobrSSfTz61vBK6nHUhMMJ5oThVmR',6,'2022-08-09 08:04:18','2022-08-09 08:02:27','session_remember',NULL,'39.149.153.57','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36'),(28,'IhxTbOUFHCP0Q4QMDzISWguhNXL1FBNPF0m62VYG',7,'2022-08-09 10:01:16','2022-08-09 09:58:03','session_remember',NULL,'180.136.64.173','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.47'),(65,'kyPXqJgPTinUGWadCsKwDNAtFX9b0x0msu2RVnTd',2,'2022-08-11 08:10:44','2022-08-11 07:53:51','session',NULL,'182.91.38.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.47');
/*!40000 ALTER TABLE `access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_keys` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `allowed_ips` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_keys_key_unique` (`key`),
  KEY `api_keys_user_id_foreign` (`user_id`),
  CONSTRAINT `api_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_meta`
--

DROP TABLE IF EXISTS `blog_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) unsigned NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `is_featured` tinyint(1) DEFAULT '0',
  `is_sized` tinyint(1) DEFAULT '0',
  `is_pending_review` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blog_meta_discussion_id_foreign` (`discussion_id`),
  CONSTRAINT `blog_meta_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_meta`
--

LOCK TABLES `blog_meta` WRITE;
/*!40000 ALTER TABLE `blog_meta` DISABLE KEYS */;
INSERT INTO `blog_meta` VALUES (1,8,'https://bbs.ist4102.cloud/assets/files/2022-08-10/1660149432-752234-2.png','用户协议 论坛',0,1,0),(2,11,'https://bbs.ist4102.cloud/assets/files/2022-08-10/1660152269-838416-c537992e-b28b-454b-9e17-e363a44cb607.png','社区规范',NULL,1,0);
/*!40000 ALTER TABLE `blog_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_tag`
--

DROP TABLE IF EXISTS `discussion_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_tag` (
  `discussion_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`discussion_id`,`tag_id`),
  KEY `discussion_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `discussion_tag_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `discussion_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_tag`
--

LOCK TABLES `discussion_tag` WRITE;
/*!40000 ALTER TABLE `discussion_tag` DISABLE KEYS */;
INSERT INTO `discussion_tag` VALUES (2,5,'2022-08-09 02:50:13'),(3,2,'2022-08-09 07:11:02'),(3,4,'2022-08-09 07:11:02'),(4,7,'2022-08-09 07:24:04'),(5,8,'2022-08-09 16:24:47'),(8,2,'2022-08-10 16:02:14'),(11,2,'2022-08-10 17:24:47');
/*!40000 ALTER TABLE `discussion_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_user`
--

DROP TABLE IF EXISTS `discussion_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_user` (
  `user_id` int(10) unsigned NOT NULL,
  `discussion_id` int(10) unsigned NOT NULL,
  `last_read_at` datetime DEFAULT NULL,
  `last_read_post_number` int(10) unsigned DEFAULT NULL,
  `subscription` enum('follow','ignore') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `who_read_unread` tinyint(1) NOT NULL DEFAULT '0',
  `bookmarked_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`discussion_id`),
  KEY `discussion_user_discussion_id_foreign` (`discussion_id`),
  CONSTRAINT `discussion_user_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `discussion_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_user`
--

LOCK TABLES `discussion_user` WRITE;
/*!40000 ALTER TABLE `discussion_user` DISABLE KEYS */;
INSERT INTO `discussion_user` VALUES (1,2,'2022-08-10 17:11:34',10,NULL,0,NULL),(1,3,'2022-08-10 10:54:48',1,NULL,0,NULL),(1,4,'2022-08-10 10:57:27',5,NULL,0,NULL),(1,5,'2022-08-10 10:53:42',3,NULL,0,NULL),(1,8,'2022-08-10 15:59:16',2,NULL,0,NULL),(1,9,'2022-08-10 17:05:06',4,NULL,0,NULL),(1,11,'2022-08-10 17:24:49',1,NULL,0,NULL),(2,2,'2022-08-10 19:00:21',10,'follow',0,NULL),(2,3,'2022-08-09 15:30:24',2,NULL,0,NULL),(2,4,'2022-08-11 07:33:47',6,NULL,0,NULL),(2,5,'2022-08-10 17:08:43',5,'follow',0,NULL),(2,8,'2022-08-10 18:40:52',1,NULL,0,NULL),(2,9,'2022-08-10 17:07:34',6,NULL,0,NULL),(2,11,'2022-08-10 18:36:37',1,NULL,0,NULL),(4,2,'2022-08-09 05:14:40',2,NULL,0,NULL),(5,4,'2022-08-09 07:28:04',2,NULL,0,NULL),(6,2,'2022-08-09 08:04:23',6,NULL,0,NULL),(6,3,'2022-08-09 08:03:40',1,NULL,0,NULL),(7,3,'2022-08-09 09:59:54',1,NULL,0,NULL),(7,4,'2022-08-09 09:59:40',5,NULL,0,NULL),(8,2,'2022-08-10 18:52:06',10,NULL,0,NULL),(8,4,'2022-08-10 18:56:39',6,NULL,0,NULL),(8,5,'2022-08-10 18:49:14',4,NULL,0,NULL),(8,8,'2022-08-10 19:07:01',1,NULL,0,NULL),(8,11,'2022-08-10 19:07:11',1,NULL,0,NULL);
/*!40000 ALTER TABLE `discussion_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_views`
--

DROP TABLE IF EXISTS `discussion_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussion_views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `discussion_id` int(10) unsigned NOT NULL,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discussion_views_discussion_id_foreign` (`discussion_id`),
  KEY `discussion_views_user_id_foreign` (`user_id`),
  CONSTRAINT `discussion_views_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `discussion_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_views`
--

LOCK TABLES `discussion_views` WRITE;
/*!40000 ALTER TABLE `discussion_views` DISABLE KEYS */;
INSERT INTO `discussion_views` VALUES (8,2,2,'117.140.154.153','2022-08-09 02:50:13'),(9,2,2,'117.140.154.153','2022-08-09 02:50:59'),(10,2,2,'117.140.154.153','2022-08-09 02:51:04'),(11,NULL,2,'117.140.154.153','2022-08-09 02:52:17'),(12,NULL,2,'117.140.154.153','2022-08-09 02:53:54'),(14,NULL,2,'117.140.154.153','2022-08-09 02:54:56'),(15,NULL,2,'117.140.154.153','2022-08-09 02:56:06'),(16,NULL,2,'117.140.154.153','2022-08-09 02:59:44'),(17,NULL,2,'117.140.154.153','2022-08-09 03:02:36'),(18,NULL,2,'117.140.154.153','2022-08-09 03:05:08'),(21,2,2,'117.140.154.153','2022-08-09 03:16:58'),(22,2,2,'117.140.154.153','2022-08-09 03:17:52'),(26,NULL,2,'117.140.154.153','2022-08-09 03:21:31'),(30,NULL,2,'220.200.126.74','2022-08-09 03:34:28'),(31,NULL,2,'61.151.207.115','2022-08-09 04:01:20'),(32,NULL,2,'117.140.154.153','2022-08-09 05:05:24'),(33,NULL,2,'117.140.154.153','2022-08-09 05:06:13'),(35,4,2,'183.56.113.206','2022-08-09 05:14:40'),(36,2,2,'117.140.154.153','2022-08-09 05:18:56'),(37,NULL,2,'117.140.154.153','2022-08-09 05:54:17');
/*!40000 ALTER TABLE `discussion_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussions`
--

DROP TABLE IF EXISTS `discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_count` int(11) NOT NULL DEFAULT '1',
  `participant_count` int(10) unsigned NOT NULL DEFAULT '0',
  `post_number_index` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `first_post_id` int(10) unsigned DEFAULT NULL,
  `last_posted_at` datetime DEFAULT NULL,
  `last_posted_user_id` int(10) unsigned DEFAULT NULL,
  `last_post_id` int(10) unsigned DEFAULT NULL,
  `last_post_number` int(10) unsigned DEFAULT NULL,
  `hidden_at` datetime DEFAULT NULL,
  `hidden_user_id` int(10) unsigned DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `view_count` int(11) NOT NULL DEFAULT '0',
  `best_answer_post_id` int(10) unsigned DEFAULT NULL,
  `best_answer_user_id` int(10) unsigned DEFAULT NULL,
  `best_answer_notified` tinyint(1) NOT NULL,
  `best_answer_set_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discussions_hidden_user_id_foreign` (`hidden_user_id`),
  KEY `discussions_first_post_id_foreign` (`first_post_id`),
  KEY `discussions_last_post_id_foreign` (`last_post_id`),
  KEY `discussions_last_posted_at_index` (`last_posted_at`),
  KEY `discussions_last_posted_user_id_index` (`last_posted_user_id`),
  KEY `discussions_created_at_index` (`created_at`),
  KEY `discussions_user_id_index` (`user_id`),
  KEY `discussions_comment_count_index` (`comment_count`),
  KEY `discussions_participant_count_index` (`participant_count`),
  KEY `discussions_hidden_at_index` (`hidden_at`),
  KEY `discussions_is_locked_index` (`is_locked`),
  KEY `discussions_is_sticky_created_at_index` (`is_sticky`,`created_at`),
  KEY `discussions_is_sticky_last_posted_at_index` (`is_sticky`,`last_posted_at`),
  KEY `discussions_best_answer_post_id_foreign` (`best_answer_post_id`),
  KEY `discussions_best_answer_user_id_foreign` (`best_answer_user_id`),
  KEY `discussions_best_answer_set_at_index` (`best_answer_set_at`),
  FULLTEXT KEY `title` (`title`) /*!50100 WITH PARSER `ngram` */ ,
  CONSTRAINT `discussions_best_answer_post_id_foreign` FOREIGN KEY (`best_answer_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_best_answer_user_id_foreign` FOREIGN KEY (`best_answer_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_first_post_id_foreign` FOREIGN KEY (`first_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_last_post_id_foreign` FOREIGN KEY (`last_post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussions`
--

LOCK TABLES `discussions` WRITE;
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;
INSERT INTO `discussions` VALUES (2,'论坛BUG反馈及新功能发布',6,2,0,'2022-08-09 02:31:06',1,1,'2022-08-10 17:10:38',2,35,9,NULL,NULL,'lun-tan-bugfan-kui-ji-xin-gong-neng-fa-bu',0,1,0,0,20,NULL,NULL,0,NULL),(3,'IST智能实验室可公开网络服务',1,1,0,'2022-08-09 07:11:02',2,6,'2022-08-09 07:11:02',2,6,1,NULL,NULL,'istzhi-neng-shi-yan-shi-ke-gong-kai-wang-luo-fu-wu',0,1,0,0,0,NULL,NULL,0,NULL),(4,'招新了吗',4,4,0,'2022-08-09 07:24:04',5,7,'2022-08-09 09:59:40',7,12,5,NULL,NULL,'zhao-xin-liao-ma',0,1,0,1,0,NULL,NULL,0,NULL),(5,'IST代码在线评测机Online Judge',2,1,0,'2022-08-09 16:24:47',2,14,'2022-08-09 16:47:43',2,16,3,NULL,NULL,'istdai-ma-zai-xian-ping-ce-ji-online-judge',0,1,0,1,0,NULL,NULL,0,NULL),(8,'IST智能实验室论坛用户协议',1,1,0,'2022-08-10 15:51:40',1,21,'2022-08-10 15:51:40',1,21,1,NULL,NULL,'istzhi-neng-shi-yan-shi-lun-tan-yong-hu-xie-yi',0,1,0,0,0,NULL,NULL,0,NULL),(9,'测试论坛',3,2,0,'2022-08-10 16:44:46',1,26,'2022-08-10 17:04:43',2,30,4,NULL,NULL,'ce-shi-lun-tan',1,1,0,0,0,NULL,NULL,0,NULL),(11,'IST智能实验室社区规范',1,1,0,'2022-08-10 17:24:47',1,37,'2022-08-10 17:24:47',1,37,1,NULL,NULL,'istzhi-neng-shi-yan-shi-she-qu-gui-fan',0,1,0,0,0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drafts`
--

DROP TABLE IF EXISTS `drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drafts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationships` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `scheduled_for` datetime DEFAULT NULL,
  `scheduled_validation_error` mediumtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `drafts_user_id_foreign` (`user_id`),
  CONSTRAINT `drafts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drafts`
--

LOCK TABLES `drafts` WRITE;
/*!40000 ALTER TABLE `drafts` DISABLE KEYS */;
INSERT INTO `drafts` VALUES (11,2,'','\n','{\"tags\":{\"data\":[]}}','2022-08-10 20:11:48',NULL,NULL,'182.91.38.53','{\"title\":\"\"}');
/*!40000 ALTER TABLE `drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_tokens`
--

DROP TABLE IF EXISTS `email_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `email_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `email_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_tokens`
--

LOCK TABLES `email_tokens` WRITE;
/*!40000 ALTER TABLE `email_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flags`
--

DROP TABLE IF EXISTS `flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `flags_post_id_foreign` (`post_id`),
  KEY `flags_user_id_foreign` (`user_id`),
  KEY `flags_created_at_index` (`created_at`),
  CONSTRAINT `flags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `flags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flags`
--

LOCK TABLES `flags` WRITE;
/*!40000 ALTER TABLE `flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fof_merge_discussions_redirections`
--

DROP TABLE IF EXISTS `fof_merge_discussions_redirections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fof_merge_discussions_redirections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_discussion_id` bigint(20) unsigned NOT NULL,
  `to_discussion_id` bigint(20) unsigned NOT NULL,
  `http_code` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fof_merge_discussions_redirections`
--

LOCK TABLES `fof_merge_discussions_redirections` WRITE;
/*!40000 ALTER TABLE `fof_merge_discussions_redirections` DISABLE KEYS */;
INSERT INTO `fof_merge_discussions_redirections` VALUES (1,1,2,301,'2022-08-08 23:06:14'),(2,5,4,301,'2022-08-09 00:20:00');
/*!40000 ALTER TABLE `fof_merge_discussions_redirections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fof_terms_policies`
--

DROP TABLE IF EXISTS `fof_terms_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fof_terms_policies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_message` text COLLATE utf8mb4_unicode_ci,
  `terms_updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fof_terms_policies_sort_index` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fof_terms_policies`
--

LOCK TABLES `fof_terms_policies` WRITE;
/*!40000 ALTER TABLE `fof_terms_policies` DISABLE KEYS */;
INSERT INTO `fof_terms_policies` VALUES (1,NULL,'用户协议','https://bbs.ist4102.cloud/blog/8/2',NULL,'2022-08-10 08:09:13','2022-08-08 17:44:20','2022-08-10 08:09:15'),(2,NULL,'社区规范','https://bbs.ist4102.cloud/blog/11',NULL,'2022-08-10 10:38:06','2022-08-08 17:44:43','2022-08-10 10:38:10');
/*!40000 ALTER TABLE `fof_terms_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fof_terms_policy_user`
--

DROP TABLE IF EXISTS `fof_terms_policy_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fof_terms_policy_user` (
  `policy_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `accepted_at` timestamp NOT NULL,
  PRIMARY KEY (`policy_id`,`user_id`),
  KEY `fof_terms_policy_user_user_id_foreign` (`user_id`),
  KEY `fof_terms_policy_user_accepted_at_index` (`accepted_at`),
  CONSTRAINT `fof_terms_policy_user_policy_id_foreign` FOREIGN KEY (`policy_id`) REFERENCES `fof_terms_policies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fof_terms_policy_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fof_terms_policy_user`
--

LOCK TABLES `fof_terms_policy_user` WRITE;
/*!40000 ALTER TABLE `fof_terms_policy_user` DISABLE KEYS */;
INSERT INTO `fof_terms_policy_user` VALUES (1,4,'2022-08-08 21:14:03'),(2,4,'2022-08-08 21:14:03'),(1,5,'2022-08-08 23:19:35'),(2,5,'2022-08-08 23:19:35'),(1,6,'2022-08-09 00:02:27'),(2,6,'2022-08-09 00:02:27'),(1,7,'2022-08-09 01:58:03'),(2,7,'2022-08-09 01:58:03'),(1,1,'2022-08-10 08:14:55'),(1,2,'2022-08-10 09:03:34'),(2,2,'2022-08-10 10:39:33'),(1,8,'2022-08-10 10:48:57'),(2,8,'2022-08-10 10:48:57'),(2,1,'2022-08-10 11:32:40');
/*!40000 ALTER TABLE `fof_terms_policy_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fof_upload_downloads`
--

DROP TABLE IF EXISTS `fof_upload_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fof_upload_downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `discussion_id` int(10) unsigned DEFAULT NULL,
  `post_id` int(10) unsigned DEFAULT NULL,
  `actor_id` int(10) unsigned DEFAULT NULL,
  `downloaded_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fof_upload_downloads_file_id_foreign` (`file_id`),
  KEY `fof_upload_downloads_discussion_id_foreign` (`discussion_id`),
  KEY `fof_upload_downloads_actor_id_foreign` (`actor_id`),
  KEY `fof_upload_downloads_post_id_foreign` (`post_id`),
  CONSTRAINT `fof_upload_downloads_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fof_upload_downloads_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fof_upload_downloads_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `fof_upload_files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fof_upload_downloads_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fof_upload_downloads`
--

LOCK TABLES `fof_upload_downloads` WRITE;
/*!40000 ALTER TABLE `fof_upload_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `fof_upload_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fof_upload_files`
--

DROP TABLE IF EXISTS `fof_upload_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fof_upload_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int(10) unsigned DEFAULT NULL,
  `discussion_id` int(10) unsigned DEFAULT NULL,
  `post_id` int(10) unsigned DEFAULT NULL,
  `base_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `upload_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remote_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide_from_media_manager` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fof_upload_files_actor_id_hide_from_media_manager_index` (`actor_id`,`hide_from_media_manager`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fof_upload_files`
--

LOCK TABLES `fof_upload_files` WRITE;
/*!40000 ALTER TABLE `fof_upload_files` DISABLE KEYS */;
INSERT INTO `fof_upload_files` VALUES (1,1,NULL,NULL,'qq20220809075913.jpg','2022-08-09/1660012251-758539-qq20220809075913.jpg','https://bbs.ist4102.cloud/assets/files/2022-08-09/1660012251-758539-qq20220809075913.jpg','image/jpeg',165778,'local','2022-08-09 10:30:51',NULL,'300201ff-be5c-4cad-b9f4-e8fd9691a398','image-preview',1),(2,2,NULL,NULL,'163426959792716342695971.jpg','2022-08-09/1660023913-222422-163426959792716342695971.jpg','https://bbs.ist4102.cloud/assets/files/2022-08-09/1660023913-222422-163426959792716342695971.jpg','image/jpeg',48572,'local','2022-08-09 13:45:13',NULL,'a766bf29-68ab-4583-ae3c-072344dad40e','image-preview',0),(3,2,NULL,NULL,'image.png','2022-08-09/1660062678-672652-image.png','https://bbs.ist4102.cloud/assets/files/2022-08-09/1660062678-672652-image.png','image/png',316775,'local','2022-08-10 00:31:18',NULL,'d6f0d5f7-89cd-4cef-a9b6-3eff735dba74','image-preview',0),(4,2,NULL,NULL,'image.png','2022-08-09/1660062736-17316-image.png','https://bbs.ist4102.cloud/assets/files/2022-08-09/1660062736-17316-image.png','image/png',344984,'local','2022-08-10 00:32:16',NULL,'47fcfd4f-ee69-4611-a1d6-5e05914bb603','image-preview',0),(5,2,NULL,NULL,'image.png','2022-08-09/1660063567-50638-image.png','https://bbs.ist4102.cloud/assets/files/2022-08-09/1660063567-50638-image.png','image/png',374537,'local','2022-08-10 00:46:07',NULL,'7b69c882-aafb-4d84-82b7-c9f13a304054','image-preview',0),(6,1,NULL,NULL,'v2-579a1137afd4fba5bdb6bdb7591e8400-r.jpg','2022-08-10/1660146191-824554-v2-579a1137afd4fba5bdb6bdb7591e8400-r.jpg','https://bbs.ist4102.cloud/assets/files/2022-08-10/1660146191-824554-v2-579a1137afd4fba5bdb6bdb7591e8400-r.jpg','image/jpeg',241434,'local','2022-08-10 23:43:11',NULL,'e5340e8d-8692-4761-9009-268ab2af99f1','image-preview',0),(7,1,NULL,NULL,'5c627603-4e15-400c-946e-94a83c880a48.png','2022-08-10/1660149166-279633-5c627603-4e15-400c-946e-94a83c880a48.png','https://bbs.ist4102.cloud/assets/files/2022-08-10/1660149166-279633-5c627603-4e15-400c-946e-94a83c880a48.png','image/png',261588,'local','2022-08-11 00:32:46',NULL,'5c627603-4e15-400c-946e-94a83c880a48','image-preview',1),(8,1,NULL,NULL,'1.png','2022-08-10/1660149263-170860-1.png','https://bbs.ist4102.cloud/assets/files/2022-08-10/1660149263-170860-1.png','image/png',1723845,'local','2022-08-11 00:34:23',NULL,'367529ff-f6cd-4d80-8fa9-f651bd3654c0','image-preview',0),(9,1,NULL,NULL,'2.png','2022-08-10/1660149432-752234-2.png','https://bbs.ist4102.cloud/assets/files/2022-08-10/1660149432-752234-2.png','image/png',1550739,'local','2022-08-11 00:37:12',NULL,'a17b53a1-c7c1-40a0-a0ed-4d125be6c684','image-preview',0),(10,1,NULL,NULL,'v2-579a1137afd4fba5bdb6bdb7591e8400-r.jpg','2022-08-10/1660149809-340019-v2-579a1137afd4fba5bdb6bdb7591e8400-r.jpg','https://bbs.ist4102.cloud/assets/files/2022-08-10/1660149809-340019-v2-579a1137afd4fba5bdb6bdb7591e8400-r.jpg','image/jpeg',241434,'local','2022-08-11 00:43:29',NULL,'8f617c99-f6f7-4808-8f0d-846dbeb0a3ac','image-preview',0),(11,2,NULL,NULL,'image.png','2022-08-10/1660151389-224295-image.png','https://bbs.ist4102.cloud/assets/files/2022-08-10/1660151389-224295-image.png','image/png',285485,'local','2022-08-11 01:09:49',NULL,'970635d7-aeac-4391-81a8-3a3940f62fd4','image-preview',0),(12,1,NULL,NULL,'c537992e-b28b-454b-9e17-e363a44cb607.png','2022-08-10/1660152269-838416-c537992e-b28b-454b-9e17-e363a44cb607.png','https://bbs.ist4102.cloud/assets/files/2022-08-10/1660152269-838416-c537992e-b28b-454b-9e17-e363a44cb607.png','image/png',2976257,'local','2022-08-11 01:24:29',NULL,'c537992e-b28b-454b-9e17-e363a44cb607','image-preview',0);
/*!40000 ALTER TABLE `fof_upload_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_permission`
--

DROP TABLE IF EXISTS `group_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_permission` (
  `group_id` int(10) unsigned NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`,`permission`),
  CONSTRAINT `group_permission_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_permission`
--

LOCK TABLES `group_permission` WRITE;
/*!40000 ALTER TABLE `group_permission` DISABLE KEYS */;
INSERT INTO `group_permission` VALUES (2,'fof-forum-statistics-widget.viewWidget.discussionsCount','2022-08-09 02:01:15'),(2,'fof-forum-statistics-widget.viewWidget.postsCount','2022-08-09 02:01:15'),(2,'fof-upload.download','2022-08-09 01:38:38'),(2,'fof-user-bio.view','2022-08-09 15:26:34'),(2,'searchUsers','2022-08-10 19:02:01'),(2,'viewForum',NULL),(2,'who-read.seeRead','2022-08-10 19:02:32'),(2,'who-read.seeSubscription','2022-08-10 19:02:36'),(3,'bypassTagCounts','2022-08-09 06:59:52'),(3,'discussion.canSeeReactions','2022-08-10 19:02:12'),(3,'discussion.flagPosts','2022-08-09 01:20:46'),(3,'discussion.likePosts','2022-08-09 01:20:46'),(3,'discussion.makePublic','2022-08-09 15:27:20'),(3,'discussion.reactPosts','2022-08-09 02:19:10'),(3,'discussion.reply','2022-08-10 19:03:38'),(3,'discussion.replyWithoutApproval','2022-08-09 15:27:13'),(3,'discussion.selectBestAnswerOwnDiscussion','2022-08-10 19:04:08'),(3,'discussion.startWithoutApproval','2022-08-09 01:20:46'),(3,'discussion.tag','2022-08-09 02:41:17'),(3,'fof-forum-statistics-widget.viewWidget.latestMember','2022-08-09 02:01:23'),(3,'fof-upload.upload','2022-08-09 01:38:40'),(3,'fof-user-bio.editOwn','2022-08-09 15:27:01'),(3,'nearata.embedvideo.create','2022-08-09 06:15:30'),(3,'selfDeleteEditHistory','2022-08-09 01:57:30'),(3,'selfEditPolls','2022-08-09 02:01:45'),(3,'selfRollbackEditHistory','2022-08-09 01:57:30'),(3,'setProfileCover','2022-08-09 02:00:12'),(3,'startDiscussion',NULL),(3,'startPolls','2022-08-09 02:01:43'),(3,'user.beFollowed','2022-08-09 02:02:09'),(3,'user.editOwnNickname','2022-08-09 01:45:15'),(3,'user.requestNickname','2022-08-09 15:27:00'),(3,'user.requestUsername','2022-08-09 01:44:57'),(3,'user.saveDrafts','2022-08-09 15:27:08'),(3,'user.scheduleDrafts','2022-08-09 15:27:09'),(3,'user.setCustomAvatarAlways','2022-08-09 15:28:33'),(3,'user.setPredefinedAvatar','2022-08-09 15:27:46'),(3,'viewEditHistory','2022-08-09 01:57:30'),(3,'viewPollResultsWithoutVoting','2022-08-09 02:01:51'),(3,'votePolls','2022-08-09 15:27:25'),(3,'xelson-chat.permissions.chat','2022-08-09 02:16:34'),(3,'xelson-chat.permissions.create','2022-08-09 02:16:34'),(3,'xelson-chat.permissions.delete','2022-08-09 02:16:34'),(3,'xelson-chat.permissions.edit','2022-08-09 02:16:34'),(3,'xelson-chat.permissions.enabled','2022-08-09 02:16:45'),(4,'blog.autoApprovePosts','2022-08-09 05:43:00'),(4,'blog.canApprovePosts','2022-08-09 05:43:00'),(4,'blog.writeArticles','2022-08-09 05:43:00'),(4,'deleteEditHistory','2022-08-09 01:57:30'),(4,'discussion.approvePosts','2022-08-09 01:20:46'),(4,'discussion.editPosts',NULL),(4,'discussion.hide',NULL),(4,'discussion.hidePosts',NULL),(4,'discussion.lock','2022-08-09 01:20:47'),(4,'discussion.rename',NULL),(4,'discussion.viewFlags','2022-08-09 01:20:46'),(4,'discussion.viewIpsPosts',NULL),(4,'fof-upload.deleteUserUploads','2022-08-09 01:38:20'),(4,'fof-upload.viewUserUploads','2022-08-09 01:38:20'),(4,'rollbackEditHistory','2022-08-09 01:57:30'),(4,'user.suspend','2022-08-09 01:20:48'),(4,'user.viewLastSeenAt',NULL),(4,'xelson-chat.permissions.create.channel','2022-08-09 02:16:34'),(4,'xelson-chat.permissions.moderate.delete','2022-08-09 02:16:34'),(4,'xelson-chat.permissions.moderate.vision','2022-08-09 02:16:34');
/*!40000 ALTER TABLE `group_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user`
--

DROP TABLE IF EXISTS `group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_user` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `group_user_group_id_foreign` (`group_id`),
  CONSTRAINT `group_user_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `group_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user`
--

LOCK TABLES `group_user` WRITE;
/*!40000 ALTER TABLE `group_user` DISABLE KEYS */;
INSERT INTO `group_user` VALUES (1,1,'2022-08-09 01:20:45'),(1,4,'2022-08-10 17:37:15'),(1,5,'2022-08-10 17:37:15'),(2,1,'2022-08-09 01:57:26'),(2,5,'2022-08-10 17:36:55'),(4,5,'2022-08-10 17:37:02'),(5,4,'2022-08-09 15:29:18'),(5,5,'2022-08-10 17:37:05'),(6,5,'2022-08-10 17:37:08'),(7,5,'2022-08-10 17:37:10');
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_singular` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Admin','Admins','#B72A2A','fas fa-wrench',0,NULL,NULL),(2,'Guest','Guests',NULL,NULL,0,NULL,NULL),(3,'Member','Members',NULL,NULL,0,NULL,NULL),(4,'Mod','Mods','#80349E','fas fa-bolt',0,NULL,NULL),(5,'实验室成员','实验室成员','','',0,'2022-08-10 17:36:26','2022-08-10 17:36:26');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT '0',
  `is_newtab` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` enum('everyone','members','guests') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'everyone',
  PRIMARY KEY (`id`),
  KEY `links_parent_id_foreign` (`parent_id`),
  KEY `links_visibility_index` (`visibility`),
  CONSTRAINT `links_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `links` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'导航','',0,0,1,NULL,'fas fa-bolt','everyone'),(2,'ISTOJ','https://oj.ist4102.cloud',1,0,1,NULL,'','everyone'),(3,'实验室云盘','https://nas.ist4102.cloud',1,0,1,1,'fas fa-cloud','everyone'),(4,'实验室主页','https://ist4102.cloud',0,0,1,1,'fa fa-hashtag','everyone');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_providers`
--

DROP TABLE IF EXISTS `login_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_providers_provider_identifier_unique` (`provider`,`identifier`),
  KEY `login_providers_user_id_foreign` (`user_id`),
  CONSTRAINT `login_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_providers`
--

LOCK TABLES `login_providers` WRITE;
/*!40000 ALTER TABLE `login_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2015_02_24_000000_create_access_tokens_table',NULL),(2,'2015_02_24_000000_create_api_keys_table',NULL),(3,'2015_02_24_000000_create_config_table',NULL),(4,'2015_02_24_000000_create_discussions_table',NULL),(5,'2015_02_24_000000_create_email_tokens_table',NULL),(6,'2015_02_24_000000_create_groups_table',NULL),(7,'2015_02_24_000000_create_notifications_table',NULL),(8,'2015_02_24_000000_create_password_tokens_table',NULL),(9,'2015_02_24_000000_create_permissions_table',NULL),(10,'2015_02_24_000000_create_posts_table',NULL),(11,'2015_02_24_000000_create_users_discussions_table',NULL),(12,'2015_02_24_000000_create_users_groups_table',NULL),(13,'2015_02_24_000000_create_users_table',NULL),(14,'2015_09_15_000000_create_auth_tokens_table',NULL),(15,'2015_09_20_224327_add_hide_to_discussions',NULL),(16,'2015_09_22_030432_rename_notification_read_time',NULL),(17,'2015_10_07_130531_rename_config_to_settings',NULL),(18,'2015_10_24_194000_add_ip_address_to_posts',NULL),(19,'2015_12_05_042721_change_access_tokens_columns',NULL),(20,'2015_12_17_194247_change_settings_value_column_to_text',NULL),(21,'2016_02_04_095452_add_slug_to_discussions',NULL),(22,'2017_04_07_114138_add_is_private_to_discussions',NULL),(23,'2017_04_07_114138_add_is_private_to_posts',NULL),(24,'2018_01_11_093900_change_access_tokens_columns',NULL),(25,'2018_01_11_094000_change_access_tokens_add_foreign_keys',NULL),(26,'2018_01_11_095000_change_api_keys_columns',NULL),(27,'2018_01_11_101800_rename_auth_tokens_to_registration_tokens',NULL),(28,'2018_01_11_102000_change_registration_tokens_rename_id_to_token',NULL),(29,'2018_01_11_102100_change_registration_tokens_created_at_to_datetime',NULL),(30,'2018_01_11_120604_change_posts_table_to_innodb',NULL),(31,'2018_01_11_155200_change_discussions_rename_columns',NULL),(32,'2018_01_11_155300_change_discussions_add_foreign_keys',NULL),(33,'2018_01_15_071700_rename_users_discussions_to_discussion_user',NULL),(34,'2018_01_15_071800_change_discussion_user_rename_columns',NULL),(35,'2018_01_15_071900_change_discussion_user_add_foreign_keys',NULL),(36,'2018_01_15_072600_change_email_tokens_rename_id_to_token',NULL),(37,'2018_01_15_072700_change_email_tokens_add_foreign_keys',NULL),(38,'2018_01_15_072800_change_email_tokens_created_at_to_datetime',NULL),(39,'2018_01_18_130400_rename_permissions_to_group_permission',NULL),(40,'2018_01_18_130500_change_group_permission_add_foreign_keys',NULL),(41,'2018_01_18_130600_rename_users_groups_to_group_user',NULL),(42,'2018_01_18_130700_change_group_user_add_foreign_keys',NULL),(43,'2018_01_18_133000_change_notifications_columns',NULL),(44,'2018_01_18_133100_change_notifications_add_foreign_keys',NULL),(45,'2018_01_18_134400_change_password_tokens_rename_id_to_token',NULL),(46,'2018_01_18_134500_change_password_tokens_add_foreign_keys',NULL),(47,'2018_01_18_134600_change_password_tokens_created_at_to_datetime',NULL),(48,'2018_01_18_135000_change_posts_rename_columns',NULL),(49,'2018_01_18_135100_change_posts_add_foreign_keys',NULL),(50,'2018_01_30_112238_add_fulltext_index_to_discussions_title',NULL),(51,'2018_01_30_220100_create_post_user_table',NULL),(52,'2018_01_30_222900_change_users_rename_columns',NULL),(55,'2018_09_15_041340_add_users_indicies',NULL),(56,'2018_09_15_041828_add_discussions_indicies',NULL),(57,'2018_09_15_043337_add_notifications_indices',NULL),(58,'2018_09_15_043621_add_posts_indices',NULL),(59,'2018_09_22_004100_change_registration_tokens_columns',NULL),(60,'2018_09_22_004200_create_login_providers_table',NULL),(61,'2018_10_08_144700_add_shim_prefix_to_group_icons',NULL),(62,'2019_10_12_195349_change_posts_add_discussion_foreign_key',NULL),(63,'2020_03_19_134512_change_discussions_default_comment_count',NULL),(64,'2020_04_21_130500_change_permission_groups_add_is_hidden',NULL),(65,'2021_03_02_040000_change_access_tokens_add_type',NULL),(66,'2021_03_02_040500_change_access_tokens_add_id',NULL),(67,'2021_03_02_041000_change_access_tokens_add_title_ip_agent',NULL),(68,'2021_04_18_040500_change_migrations_add_id_primary_key',NULL),(69,'2021_04_18_145100_change_posts_content_column_to_mediumtext',NULL),(70,'2018_07_21_000000_seed_default_groups',NULL),(71,'2018_07_21_000100_seed_default_group_permissions',NULL),(72,'2021_05_10_000000_rename_permissions',NULL),(73,'2022_05_20_000000_add_timestamps_to_groups_table',NULL),(74,'2022_05_20_000001_add_created_at_to_group_user_table',NULL),(75,'2022_05_20_000002_add_created_at_to_group_permission_table',NULL),(76,'2015_09_21_011527_add_is_approved_to_discussions','flarum-approval'),(77,'2015_09_21_011706_add_is_approved_to_posts','flarum-approval'),(78,'2017_07_22_000000_add_default_permissions','flarum-approval'),(79,'2018_09_29_060444_replace_emoji_shorcuts_with_unicode','flarum-emoji'),(80,'2015_09_02_000000_add_flags_read_time_to_users_table','flarum-flags'),(81,'2015_09_02_000000_create_flags_table','flarum-flags'),(82,'2017_07_22_000000_add_default_permissions','flarum-flags'),(83,'2018_06_27_101500_change_flags_rename_time_to_created_at','flarum-flags'),(84,'2018_06_27_101600_change_flags_add_foreign_keys','flarum-flags'),(85,'2018_06_27_105100_change_users_rename_flags_read_time_to_read_flags_at','flarum-flags'),(86,'2018_09_15_043621_add_flags_indices','flarum-flags'),(87,'2019_10_22_000000_change_reason_text_col_type','flarum-flags'),(88,'2015_05_11_000000_create_posts_likes_table','flarum-likes'),(89,'2015_09_04_000000_add_default_like_permissions','flarum-likes'),(90,'2018_06_27_100600_rename_posts_likes_to_post_likes','flarum-likes'),(91,'2018_06_27_100700_change_post_likes_add_foreign_keys','flarum-likes'),(92,'2021_05_10_094200_add_created_at_to_post_likes_table','flarum-likes'),(93,'2015_02_24_000000_add_locked_to_discussions','flarum-lock'),(94,'2017_07_22_000000_add_default_permissions','flarum-lock'),(95,'2018_09_15_043621_add_discussions_indices','flarum-lock'),(96,'2021_03_25_000000_default_settings','flarum-markdown'),(97,'2015_05_11_000000_create_mentions_posts_table','flarum-mentions'),(98,'2015_05_11_000000_create_mentions_users_table','flarum-mentions'),(99,'2018_06_27_102000_rename_mentions_posts_to_post_mentions_post','flarum-mentions'),(100,'2018_06_27_102100_rename_mentions_users_to_post_mentions_user','flarum-mentions'),(101,'2018_06_27_102200_change_post_mentions_post_rename_mentions_id_to_mentions_post_id','flarum-mentions'),(102,'2018_06_27_102300_change_post_mentions_post_add_foreign_keys','flarum-mentions'),(103,'2018_06_27_102400_change_post_mentions_user_rename_mentions_id_to_mentions_user_id','flarum-mentions'),(104,'2018_06_27_102500_change_post_mentions_user_add_foreign_keys','flarum-mentions'),(105,'2021_04_19_000000_set_default_settings','flarum-mentions'),(106,'2022_05_20_000005_add_created_at_to_post_mentions_post_table','flarum-mentions'),(107,'2022_05_20_000006_add_created_at_to_post_mentions_user_table','flarum-mentions'),(108,'2015_02_24_000000_add_sticky_to_discussions','flarum-sticky'),(109,'2017_07_22_000000_add_default_permissions','flarum-sticky'),(110,'2018_09_15_043621_add_discussions_indices','flarum-sticky'),(111,'2021_01_13_000000_add_discussion_last_posted_at_indices','flarum-sticky'),(112,'2015_05_11_000000_add_subscription_to_users_discussions_table','flarum-subscriptions'),(113,'2015_05_11_000000_add_suspended_until_to_users_table','flarum-suspend'),(114,'2015_09_14_000000_rename_suspended_until_column','flarum-suspend'),(115,'2017_07_22_000000_add_default_permissions','flarum-suspend'),(116,'2018_06_27_111400_change_users_rename_suspend_until_to_suspended_until','flarum-suspend'),(117,'2021_10_27_000000_add_suspend_reason_and_message','flarum-suspend'),(118,'2015_02_24_000000_create_discussions_tags_table','flarum-tags'),(119,'2015_02_24_000000_create_tags_table','flarum-tags'),(120,'2015_02_24_000000_create_users_tags_table','flarum-tags'),(121,'2015_02_24_000000_set_default_settings','flarum-tags'),(122,'2015_10_19_061223_make_slug_unique','flarum-tags'),(123,'2017_07_22_000000_add_default_permissions','flarum-tags'),(124,'2018_06_27_085200_change_tags_columns','flarum-tags'),(125,'2018_06_27_085300_change_tags_add_foreign_keys','flarum-tags'),(126,'2018_06_27_090400_rename_users_tags_to_tag_user','flarum-tags'),(127,'2018_06_27_100100_change_tag_user_rename_read_time_to_marked_as_read_at','flarum-tags'),(128,'2018_06_27_100200_change_tag_user_add_foreign_keys','flarum-tags'),(129,'2018_06_27_103000_rename_discussions_tags_to_discussion_tag','flarum-tags'),(130,'2018_06_27_103100_add_discussion_tag_foreign_keys','flarum-tags'),(131,'2019_04_21_000000_add_icon_to_tags_table','flarum-tags'),(132,'2022_05_20_000003_add_timestamps_to_tags_table','flarum-tags'),(133,'2022_05_20_000004_add_created_at_to_discussion_tag_table','flarum-tags'),(134,'2020_02_06_01_rename_flagrow_permissions','fof-upload'),(135,'2020_02_06_02_rename_flagrow_settings','fof-upload'),(136,'2020_02_06_03_rename_flagrow_tables','fof-upload'),(137,'2020_02_06_04_remove_flagrow_migrations','fof-upload'),(138,'2020_02_06_05_create_files_table','fof-upload'),(139,'2020_02_06_06_create_downloads_table','fof-upload'),(140,'2020_02_06_07_alter_downloads_add_post_constraint','fof-upload'),(141,'2021_02_11_01_add_uploads_view_and_delete_permissions','fof-upload'),(142,'2021_03_13_000000_alter_upload_files_add_hidden_from_media_manager','fof-upload'),(143,'2021_03_13_set_created_at_to_default_as_current_timestamp','fof-upload'),(144,'2021_09_30_000000_add_index_actor_id_and_hide_media','fof-upload'),(145,'2019_10_22_01_rename_permissions','fof-terms'),(146,'2019_10_22_02_rename_settings','fof-terms'),(147,'2019_10_22_03_rename_flagrow_tables','fof-terms'),(148,'2019_10_22_04_remove_flagrow_migrations','fof-terms'),(149,'2019_10_22_05_create_terms_policies','fof-terms'),(150,'2019_10_22_06_create_terms_policy_user','fof-terms'),(151,'2019_07_03_171200_create_username_requests_table','fof-username-request'),(152,'2019_07_03_171600_add_default_permissions','fof-username-request'),(153,'2019_07_03_172000_add_user_request_foreign_keys','fof-username-request'),(154,'2019_07_04_212000_add_username_history_to_users','fof-username-request'),(155,'2019_08_05_171200_rename_username_requests_column','fof-username-request'),(156,'2019_09_29_114200_change_username_history_column_type','fof-username-request'),(157,'2020_12_21_212000_add_nickname_column_to_username_requests','fof-username-request'),(158,'2020_12_23_171200_make_requested_username_nullable','fof-username-request'),(159,'2020_11_23_000000_add_nickname_column','flarum-nicknames'),(160,'2020_12_02_000001_set_default_permissions','flarum-nicknames'),(161,'2021_11_16_000000_nickname_column_nullable','flarum-nicknames'),(162,'2020_02_18_000003_add_default_permission','the-turk-diff'),(163,'2020_03_28_000000_add_post_edit_histories_table','the-turk-diff'),(164,'2020_03_28_000001_add_post_edit_histories_archive_table','the-turk-diff'),(165,'2020_03_28_000003_add_default_rollback_permission','the-turk-diff'),(166,'2017_11_07_223624_discussions_add_views','michaelbelgium-discussion-views'),(167,'2018_11_30_141817_discussions_rename_views','michaelbelgium-discussion-views'),(168,'2020_01_11_220612_add_discussionviews_table','michaelbelgium-discussion-views'),(169,'2020_01_17_110823_add_default_settings','michaelbelgium-discussion-views'),(170,'2020_01_19_131055_add_viewlist_settings','michaelbelgium-discussion-views'),(171,'2021_09_15_000000_add_extra_settings','michaelbelgium-discussion-views'),(172,'2019_11_04_000001_add_columns_to_discussions_table','fof-best-answer'),(173,'2019_11_04_000002_add_foreign_keys_to_best_anwer_columns','fof-best-answer'),(174,'2019_11_04_000003_migrate_extension_settings','fof-best-answer'),(175,'2020_02_04_205300_add_best_answer_set_timestamp','fof-best-answer'),(176,'2021_08_09_add_qna_column_to_tags_table','fof-best-answer'),(177,'2021_08_10_add_reminders_column_to_tags_table','fof-best-answer'),(178,'2021_08_15_migrate_reminder_settings','fof-best-answer'),(179,'2021_09_10_add_default_filter_option_setting','fof-best-answer'),(180,'2022_05_19_000000_add_best_answer_count_to_users_table','fof-best-answer'),(181,'2019_08_02_171300_create_drafts_table','fof-drafts'),(182,'2019_08_02_172100_add_drafts_foreign_keys','fof-drafts'),(183,'2019_08_03_171600_add_default_permissions','fof-drafts'),(184,'2019_08_04_151000_change_content_to_medium_text','fof-drafts'),(185,'2020_05_24_000000_add_scheduled_at_column','fof-drafts'),(186,'2020_05_24_000001_add_schedule_post_permission','fof-drafts'),(187,'2020_05_24_000002_add_error_and_ip_columns','fof-drafts'),(188,'2020_05_24_000003_add_scheduled_post_setting','fof-drafts'),(189,'2020_08_16_000000_add_extra_to_drafts','fof-drafts'),(190,'0000_00_00_000000_migrate_extension_settings','fof-cookie-consent'),(191,'2016_02_13_000000_create_links_table','fof-links'),(192,'2016_04_19_065618_change_links_columns','fof-links'),(193,'2020_03_16_000000_add_child_links','fof-links'),(194,'2020_09_10_000000_add_icon_to_links_table','fof-links'),(195,'2021_01_17_000000_add_registered_users_only_to_links_table','fof-links'),(196,'2021_01_17_000001_add_visibility_to_links_table','fof-links'),(197,'2021_01_17_000001_drop_registered_users_only_column_and_migrate_options','fof-links'),(198,'2020_05_16_01_rename_itnt_settings','itnt-uitab'),(199,'2021_01_10_01_drop_itnt_settings','itnt-uitab'),(200,'2021_01_10_02_set_default_settings','itnt-uitab'),(201,'2020_03_05_alter_discussion_user_add_unread','clarkwinkelmann-who-read'),(202,'2019_10_07_000000_add_cover_column','sycho-profile-cover'),(203,'2020_07_25_000000_add_default_cover_permissions','sycho-profile-cover'),(204,'2020_07_01_000000_create_bio_column','fof-user-bio'),(205,'2021_01_17_000000_set_default_bio_length','fof-user-bio'),(206,'2019_06_11_000000_add_subscription_to_users_tags_table','fof-follow-tags'),(207,'2019_06_28_000000_add_hide_subscription_option','fof-follow-tags'),(208,'2021_01_22_000000_add_indicies','fof-follow-tags'),(209,'2022_05_20_000000_add_timestamps_to_tag_user_table','fof-follow-tags'),(210,'2020_07_15_000000_add_default_settings','fof-forum-statistics-widget'),(211,'2021_02_18_000000_add_default_permissions','fof-forum-statistics-widget'),(212,'2022_01_04_000000_create_redirections_table','fof-merge-discussions'),(213,'2019_07_01_000000_add_polls_table','fof-polls'),(214,'2019_07_01_000001_add_poll_options_table','fof-polls'),(215,'2019_07_01_000002_add_poll_votes_table','fof-polls'),(216,'2021_04_06_000000_alter_options_add_vote_count','fof-polls'),(217,'2021_04_06_000001_alter_polls_add_vote_count','fof-polls'),(218,'2019_06_17_000000_add_settings_social_list','fof-share-social'),(219,'0000_00_00_000000_create_user_followers_table','ianm-follow-users'),(220,'0000_00_00_000001_set_default_permissions','ianm-follow-users'),(221,'2021_08_01_000000_set_default_settings','afrux-online-users-widget'),(222,'2021_03_13_000000_add_tags_text_color_column','nearata-tags-color-generator'),(223,'2022_08_04_000000_remove_is_custom_color','nearata-tags-color-generator'),(224,'2017_04_07_000000_create_pushedx_messages','xelson-chat'),(225,'2020_01_23_000000_fix_message_length','xelson-chat'),(226,'2020_01_29_000000_add_edited_removed_msg_flags','xelson-chat'),(227,'2020_01_31_000000_change_timestamp_to_datetime','xelson-chat'),(228,'2020_09_28_000000_create_chat_tables','xelson-chat'),(229,'2020_10_28_191115_edit_chat_user','xelson-chat'),(230,'2020_12_05_000000_add_default_settings','xelson-chat'),(231,'2020_12_05_000001_add_default_permissions','xelson-chat'),(232,'2020_06_27_000000_set_default_theme','fof-nightmode'),(233,'2020_07_12_000000_migrate_old_user_settings','fof-nightmode'),(234,'2019_07_08_000000_create_reactions_tables','fof-reactions'),(235,'2019_07_08_000001_create_post_reactions_table','fof-reactions'),(236,'2019_07_08_000002_add_default_reaction_permission','fof-reactions'),(237,'2019_07_08_000003_migrate_extension_settings','fof-reactions'),(241,'2019_06_07_000000_add_recipients_table','fof-byobu'),(242,'2019_06_07_000001_remove_flagrow_migrations','fof-byobu'),(243,'2019_07_08_000000_add_blocks_pd_to_users','fof-byobu'),(244,'2019_07_09_000000_blocks_pd_index','fof-byobu'),(245,'2020_02_14_214800_fix_user_id_not_nullable_for_group_pds','fof-byobu'),(246,'2020_02_19_110103_remove_retired_settings_key','fof-byobu'),(247,'2020_10_23_000000_users_unified_index_column','fof-byobu'),(248,'2021_01_13_000000_unified_index_index','fof-byobu'),(249,'2021_01_13_000001_byobu_indicies','fof-byobu'),(250,'2021_01_23_000000_drop_tags_from_old_private_discussions','fof-byobu'),(251,'2021_04_21_000000_drop_users_unified_index_column','fof-byobu'),(252,'2017_03_08_102708_add_emailed_to_posts','fof-filter'),(253,'2019_07_05_022521_add_auto_mod_to_posts','fof-filter'),(254,'2021_09_12_modify_badwords_delimiter','fof-filter'),(255,'2020_10_17_16_34_create_blog_meta_table','v17development-blog'),(256,'2020_10_17_16_50_add_default_permissions','v17development-blog'),(261,'2020_09_20_alter_discussion_user_add_bookmarked','clarkwinkelmann-bookmarks'),(262,'2021_01_28_add_permissions','nearata-embed-video'),(264,'2019_12_05_000000_add_timestamps_to_post_reactions_table','fof-reactions'),(265,'2019_12_13_120237_add_enabled_column_to_reactions_table','fof-reactions'),(266,'2020_01_19_000000_add_display_column_to_reactions_table','fof-reactions'),(267,'2020_06_07_000000_set_default','fof-sitemap'),(268,'2016_04_11_182821__create_pages_table','fof-pages'),(269,'2016_08_28_180020_add_is_html','fof-pages'),(270,'2020_02_26_010000_add_is_restricted','fof-pages'),(271,'2020_09_09_173600_increase_char_limit','fof-pages'),(272,'2019_09_12_000000_add_templates_to_settings','fof-pretty-mail');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neonchat_chat_user`
--

DROP TABLE IF EXISTS `neonchat_chat_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neonchat_chat_user` (
  `chat_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `removed_by` int(10) unsigned DEFAULT NULL,
  `readed_at` datetime DEFAULT NULL,
  `removed_at` datetime DEFAULT NULL,
  `joined_at` datetime DEFAULT NULL,
  PRIMARY KEY (`chat_id`,`user_id`),
  KEY `neonchat_chat_user_user_id_foreign` (`user_id`),
  KEY `neonchat_chat_user_removed_by_foreign` (`removed_by`),
  CONSTRAINT `neonchat_chat_user_chat_id_foreign` FOREIGN KEY (`chat_id`) REFERENCES `neonchat_chats` (`id`) ON DELETE CASCADE,
  CONSTRAINT `neonchat_chat_user_removed_by_foreign` FOREIGN KEY (`removed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `neonchat_chat_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neonchat_chat_user`
--

LOCK TABLES `neonchat_chat_user` WRITE;
/*!40000 ALTER TABLE `neonchat_chat_user` DISABLE KEYS */;
INSERT INTO `neonchat_chat_user` VALUES (1,1,0,NULL,'2022-08-09 02:16:52',NULL,NULL);
/*!40000 ALTER TABLE `neonchat_chat_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neonchat_chats`
--

DROP TABLE IF EXISTS `neonchat_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neonchat_chats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PM',
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neonchat_chats`
--

LOCK TABLES `neonchat_chats` WRITE;
/*!40000 ALTER TABLE `neonchat_chats` DISABLE KEYS */;
INSERT INTO `neonchat_chats` VALUES (1,'#main','#FF94C1','fas fa-cloud',1,0,NULL);
/*!40000 ALTER TABLE `neonchat_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neonchat_messages`
--

DROP TABLE IF EXISTS `neonchat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `neonchat_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `edited_at` datetime DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  `chat_id` int(10) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `is_readed` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `neonchat_messages_chat_id_foreign` (`chat_id`),
  KEY `neonchat_messages_user_id_foreign` (`user_id`),
  KEY `neonchat_messages_deleted_by_foreign` (`deleted_by`),
  CONSTRAINT `neonchat_messages_chat_id_foreign` FOREIGN KEY (`chat_id`) REFERENCES `neonchat_chats` (`id`) ON DELETE CASCADE,
  CONSTRAINT `neonchat_messages_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `neonchat_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neonchat_messages`
--

LOCK TABLES `neonchat_messages` WRITE;
/*!40000 ALTER TABLE `neonchat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `neonchat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `from_user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(10) unsigned DEFAULT NULL,
  `data` blob,
  `created_at` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `read_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_from_user_id_foreign` (`from_user_id`),
  KEY `notifications_user_id_index` (`user_id`),
  CONSTRAINT `notifications_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1,2,'postMentioned',1,_binary '{\"replyNumber\":2}','2022-08-09 02:44:27',0,'2022-08-10 16:08:10'),(2,2,1,'postReacted',2,_binary '\"{\\\"id\\\":1,\\\"identifier\\\":\\\"thumbsup\\\",\\\"type\\\":\\\"emoji\\\",\\\"enabled\\\":1,\\\"display\\\":null}\"','2022-08-09 02:45:47',0,'2022-08-09 03:07:15'),(4,1,2,'discussionMerged',2,_binary '{\"merged_title\":\"\\u6d4b\\u8bd5\\u53d1\\u5e16\\u5b50\",\"merged_id\":1}','2022-08-09 07:06:14',0,'2022-08-10 16:08:10'),(5,5,2,'postReacted',7,_binary '\"{\\\"id\\\":1,\\\"identifier\\\":\\\"thumbsup\\\",\\\"type\\\":\\\"emoji\\\",\\\"enabled\\\":1,\\\"display\\\":null}\"','2022-08-09 07:27:29',0,NULL),(6,5,2,'postMentioned',7,_binary '{\"replyNumber\":2}','2022-08-09 07:27:43',0,NULL),(7,6,2,'discussionMerged',4,_binary '{\"merged_title\":\"\\u62db\\u65b0\\u62db\\u65b0\",\"merged_id\":5}','2022-08-09 08:20:00',0,NULL),(8,2,1,'byobuPrivateDiscussionCreated',9,NULL,'2022-08-10 16:44:46',0,NULL),(9,1,2,'byobuPrivateDiscussionReplied',9,_binary '{\"postNumber\":3}','2022-08-10 17:04:01',0,NULL),(10,1,2,'postLiked',26,NULL,'2022-08-10 17:04:28',0,NULL),(11,1,2,'byobuPrivateDiscussionReplied',9,_binary '{\"postNumber\":4}','2022-08-10 17:04:43',0,NULL),(12,1,2,'byobuPrivateDiscussionReplied',9,_binary '{\"postNumber\":5}','2022-08-10 17:07:24',0,NULL),(13,1,2,'byobuPrivateDiscussionReplied',9,_binary '{\"postNumber\":6}','2022-08-10 17:07:31',0,NULL),(14,1,2,'discussionRenamed',2,_binary '{\"postNumber\":10}','2022-08-10 17:11:17',0,NULL);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `edit_time` datetime DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT ' ',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_html` tinyint(1) NOT NULL DEFAULT '0',
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_tokens`
--

DROP TABLE IF EXISTS `password_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `password_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `password_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_tokens`
--

LOCK TABLES `password_tokens` WRITE;
/*!40000 ALTER TABLE `password_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_options`
--

DROP TABLE IF EXISTS `poll_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poll_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_options_poll_id_foreign` (`poll_id`),
  CONSTRAINT `poll_options_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_options`
--

LOCK TABLES `poll_options` WRITE;
/*!40000 ALTER TABLE `poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_votes`
--

DROP TABLE IF EXISTS `poll_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `poll_votes_poll_id_foreign` (`poll_id`),
  KEY `poll_votes_option_id_foreign` (`option_id`),
  KEY `poll_votes_user_id_foreign` (`user_id`),
  CONSTRAINT `poll_votes_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE,
  CONSTRAINT `poll_votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `poll_votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_votes`
--

LOCK TABLES `poll_votes` WRITE;
/*!40000 ALTER TABLE `poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discussion_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `public_poll` tinyint(1) NOT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `polls_discussion_id_foreign` (`discussion_id`),
  KEY `polls_user_id_foreign` (`user_id`),
  CONSTRAINT `polls_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `polls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls`
--

LOCK TABLES `polls` WRITE;
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_edit_histories`
--

DROP TABLE IF EXISTS `post_edit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_edit_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `actor_id` int(10) unsigned DEFAULT NULL,
  `revision` smallint(5) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  `deleted_user_id` int(10) unsigned DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `rollbacked_user_id` int(10) unsigned DEFAULT NULL,
  `rollbacked_at` datetime DEFAULT NULL,
  `rollbacked_to` int(10) unsigned DEFAULT NULL,
  `archive_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_edit_histories_post_id_foreign` (`post_id`),
  KEY `post_edit_histories_actor_id_foreign` (`actor_id`),
  KEY `post_edit_histories_deleted_user_id_foreign` (`deleted_user_id`),
  KEY `post_edit_histories_rollbacked_user_id_foreign` (`rollbacked_user_id`),
  KEY `post_edit_histories_rollbacked_to_foreign` (`rollbacked_to`),
  KEY `post_edit_histories_archive_id_foreign` (`archive_id`),
  CONSTRAINT `post_edit_histories_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `post_edit_histories_archive_id_foreign` FOREIGN KEY (`archive_id`) REFERENCES `post_edit_histories_archive` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `post_edit_histories_deleted_user_id_foreign` FOREIGN KEY (`deleted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `post_edit_histories_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `post_edit_histories_rollbacked_to_foreign` FOREIGN KEY (`rollbacked_to`) REFERENCES `post_edit_histories` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `post_edit_histories_rollbacked_user_id_foreign` FOREIGN KEY (`rollbacked_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_edit_histories`
--

LOCK TABLES `post_edit_histories` WRITE;
/*!40000 ALTER TABLE `post_edit_histories` DISABLE KEYS */;
INSERT INTO `post_edit_histories` VALUES (1,14,2,0,'2022-08-09 16:24:47','[ISTOJ](https://oj.ist4102.cloud \"在线评测入口\")致力于为实验室成员在校同学们提供安全、完善、开放的在线评测及题目交流等服务。点击[ISTOJ](https://oj.ist4102.cloud \"在线评测入口\")开启你的刷题之旅吧！🚀',NULL,NULL,NULL,NULL,NULL,NULL),(2,14,2,1,'2022-08-09 16:31:32','[ISTOJ](https://oj.ist4102.cloud \"在线评测入口\")致力于为实验室成员在校同学们提供安全、完善、开放的在线评测及题目交流等服务。点击[ISTOJ](https://oj.ist4102.cloud \"在线评测入口\")开启你的刷题之旅吧！🚀\n\n[upl-image-preview url=https://bbs.ist4102.cloud/assets/files/2022-08-09/1660062678-672652-image.png]',NULL,NULL,NULL,NULL,NULL,NULL),(3,14,2,2,'2022-08-09 16:32:23','[ISTOJ](https://oj.ist4102.cloud \"在线评测入口\")致力于为实验室成员在校同学们提供安全、完善、开放的在线评测及题目交流等服务。点击[ISTOJ](https://oj.ist4102.cloud \"在线评测入口\")开启你的刷题之旅吧！🚀\n\n[upl-image-preview url=https://bbs.ist4102.cloud/assets/files/2022-08-09/1660062736-17316-image.png]',NULL,NULL,NULL,NULL,NULL,NULL),(4,14,2,3,'2022-08-09 16:32:35','[ISTOJ](https://oj.ist4102.cloud \"在线评测入口\")致力于为实验室成员在校同学们提供安全、完善、开放的在线评测及题目交流等服务。\n\n点击[ISTOJ](https://oj.ist4102.cloud \"在线评测入口\")开启你的刷题之旅吧！🚀\n\n[upl-image-preview url=https://bbs.ist4102.cloud/assets/files/2022-08-09/1660062736-17316-image.png]',NULL,NULL,NULL,NULL,NULL,NULL),(5,14,2,4,'2022-08-10 05:59:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,21,1,0,'2022-08-10 15:51:40','## 欢迎来到IST智能实验室论坛。\n\n请您仔细阅读以下条款，如果您对本协议的任何条款表示异议，您可以选择不进入IST智能实验室论坛。当您注册成功，无论是进入IST智能实验室论坛，还是在IST智能实验室论坛上发布任何内容（以下简称「内容」），均意味着您（以下简称「用户」）完全接受本协议项下的全部条款。\n\n## 第一章　使用规则\n\n第一条　用户注册成功后，IST智能实验室论坛将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管。用户应当对以其用户帐号进行的所有活动和事件负法律责任。\n\n第二条　用户须对在IST智能实验室论坛的注册信息的真实性、合法性、有效性承担全部责任，用户不得冒充他人；不得利用他人的名义发布任何信息；不得恶意使用注册帐号导致其他用户误认；否则IST智能实验室论坛有权立即停止提供服务，收回其帐号并由用户独自承担由此而产生的一切法律责任。\n\n第三条　用户直接或通过各类方式（如 RSS 源和站外 API 引用等）间接使用 IST智能实验室论坛服务和数据的行为，都将被视作已无条件接受本协议全部内容；若用户对本协议的任何条款存在异议，应当立即停止使用IST智能实验室论坛所提供的全部服务。\n\n第四条　IST智能实验室论坛是一个信息分享、传播及获取的平台，用户通过 IST智能实验室论坛发表的信息为公开的信息，其他第三方均可以通过 IST智能实验室论坛获取用户发表的信息，用户对任何信息的发表即认可该信息为公开的信息，并单独对此行为承担法律责任；任何用户不愿被其他第三人获知的信息都不应该在IST智能实验室论坛上进行发表。\n\n第五条　用户承诺不得以任何方式利用 IST智能实验室论坛直接或间接从事违反中华人民共和国法律以及社会公德的行为，IST智能实验室论坛有权对违反上述承诺的内容予以删除。\n\n第六条　用户不得利用 IST智能实验室论坛服务制作、上载、复制、发布、传播或者转载如下内容：\n\n* 反对宪法所确定的基本原则的；\n\n* 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\n\n* 损害国家荣誉和利益的；\n\n* 煽动民族仇恨、民族歧视，破坏民族团结的；\n\n* 侮辱、滥用英烈形象，否定英烈事迹，美化粉饰侵略战争行为的；\n\n* 破坏国家宗教政策，宣扬邪教和封建迷信的；\n\n* 散布谣言，扰乱社会秩序，破坏社会稳定的；\n\n* 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\n\n* 侮辱或者诽谤他人，侵害他人合法权益的；\n\n* 含有法律、行政法规禁止的其他内容的信息。\n\n第七条　所有用户均同意遵守 IST智能实验室论坛社区规范。\n\n第八条　IST智能实验室论坛有权对用户使用IST智能实验室论坛的情况进行审查和监督，如用户在使用 IST智能实验室论坛时违反任何上述规定，IST智能实验室论坛或其授权的人有权要求用户改正或直接采取一切必要的措施（包括但不限于更改或删除用户张贴的内容、暂停或终止用户使用 IST智能实验室论坛的权利）以减轻用户不当行为造成的影响。\n\n## 第二章　知识产权\n\nIST智能实验室论坛是一个信息获取、分享及传播的平台，我们尊重 IST智能实验室论坛用户创作的内容，鼓励用户认识到保护知识产权对 IST智能实验室论坛生存与发展的重要性，承诺将保护知识产权作为 IST智能实验室论坛运营的基本原则之一。\n\n第一条　用户在 IST智能实验室论坛上发表的全部原创内容（包括但不仅限于回答、文章和评论），著作权均归用户本人所有。用户可授权第三方以任何方式使用，不需要得到 IST智能实验室论坛的同意。\n\n第二条　IST智能实验室论坛上可由多人参与翻译的内容，所有参与者均同意相关知识产权归 Flarum 及 IST智能实验室论坛所有。\n\n第三条　IST智能实验室论坛提供的网络服务中包含的标识、版面设计、排版方式、文本、图片、图形等均受著作权、商标权及其它法律保护，未经相关权利人（含 Flarum、IST智能实验室论坛及其他原始权利人）同意，上述内容均不得在任何平台被直接或间接发布、使用、出于发布或使用目的的改写或再发行，或被用于其他任何商业目的。\n\n第四条　为了促进知识的分享和传播，用户将其在 IST智能实验室论坛上发表的全部内容，授予 Flarum 和 IST智能实验室论坛免费的、不可撤销的、非独家使用许可，Flarum 和 IST智能实验室论坛有权将该内容用于 Flarum 或 IST智能实验室论坛各种形态的产品和服务上，包括但不限于网站以及发表的应用或其他互联网产品。\n\n第五条　第三方若出于非商业目的，将用户在 IST智能实验室论坛上发表的内容转载在 IST智能实验室论坛之外的地方，应当在作品的正文开头的显著位置注明原作者姓名（或原作者在 IST智能实验室论坛上使用的帐号名称），并给出原始链接，注明「发表于 IST智能实验室论坛」，并不得对作品进行修改演绎。若需要对作品进行修改，或用于商业目的，第三方应当联系用户获得单独授权，按照用户规定的方式使用该内容。\n\n第六条　IST智能实验室论坛为用户提供「保留所有权利，禁止转载」的选项。除非获得原作者的单独授权，任何第三方不得转载标注了「禁止转载」的内容，否则均视为侵权。\n\n第七条　在 IST智能实验室论坛上传或发表的内容，用户应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益。如果第三方提出关于著作权的异议，IST智能实验室论坛有权根据实际情况删除相关的内容，且有权追究用户的法律责任。给 Flarum 或 IST智能实验室论坛或任何第三方造成损失的，用户应负责全额赔偿。\n\n第八条　如果任何第三方侵犯了 IST智能实验室论坛用户相关的权利，用户同意授权 IST智能实验室论坛或其指定的代理人代表 IST智能实验室论坛自身或用户对该第三方提出警告、投诉、发起行政执法、诉讼、进行上诉，或谈判和解，并且用户同意在 IST智能实验室论坛认为必要的情况下参与共同维权。\n\n第九条　IST智能实验室论坛有权但无义务对用户发布的内容进行审核，有权根据相关证据结合《侵权责任法》、《信息网络传播权保护条例》等法律法规及 IST智能实验室论坛社区指导原则对侵权信息进行处理。\n\n## 第三章　个人隐私\n\n尊重用户个人隐私信息的私有性是 IST智能实验室论坛的一贯原则，IST智能实验室论坛将通过技术手段、强化内部管理等办法充分保护用户的个人隐私信息，除法律或有法律赋予权限的政府部门要求或事先得到用户明确授权等原因外，IST智能实验室论坛保证不对外公开或向第三方透露用户个人隐私信息，或用户在使用服务时存储的非公开内容。同时，为了运营和改善 IST智能实验室论坛的技术与服务，IST智能实验室论坛将可能会自行收集使用或向第三方提供用户的非个人隐私信息，这将有助于 IST智能实验室论坛向用户提供更好的用户体验和服务质量。\n\n您使用或继续使用我们的服务，即意味着同意我们按照 IST智能实验室论坛《IST智能实验室论坛隐私保护指引》收集、使用、储存和分享您的相关信息。详情请参见《IST智能实验室论坛隐私政策》\n\n## 第四章　侵权举报\n\n## 第一节　处理原则\n\nIST智能实验室论坛作为 Flarum 产品及相关衍生知识的讨论社区，高度重视自由表达和个人、企业正当权利的平衡。依照法律规定删除违法信息是 IST智能实验室论坛社区的法定义务，IST智能实验室论坛社区亦未与任何中介机构合作开展此项业务。\n\n## 第二节　受理范围\n\n受理 IST智能实验室论坛社区内侵犯企业或个人合法权益的侵权举报，包括但不限于涉及个人隐私、造谣与诽谤、商业侵权：\n\n第一条　涉及个人隐私：发布内容中直接涉及身份信息，如个人姓名、家庭住址、身份证号码、工作单位、私人电话等详细个人隐私；\n\n第二条　造谣、诽谤：发布内容中指名道姓（包括自然人和企业）的直接谩骂、侮辱、虚构中伤、恶意诽谤等；\n\n第三条　商业侵权：泄露企业商业机密及其他根据保密协议不能公开讨论的内容。\n\n## 第三节　举报条件\n\n用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 及 Flarum中文社区的立场或观点。如果个人或企业发现 IST智能实验室论坛上存在侵犯自身合法权益的内容，可以先尝试与作者取得联系，通过沟通协商解决问题。如您无法联系到作者，或无法通过与作者沟通解决问题，您可通过点击内容下方的举报按钮来向 IST智能实验室论坛平台进行投诉。为了保证问题能够及时有效地处理，请务必提交真实有效、完整清晰的材料，否则投诉将无法受理。您需要向 IST智能实验室论坛提供的投诉材料包括：\n\n* 权利人对涉嫌侵权内容拥有商标权、著作权和 / 或其他依法可以行使权利的权属证明，权属证明通常是营业执照或组织机构代码证；\n\n* 举报人的身份证明，身份证明可以是身份证或护照；\n\n* 如果举报人非权利人，请举报人提供代表权利人进行举报的书面授权证明。\n\n为确保投诉材料的真实性，在侵权举报中，您还需要签署以下法律声明：\n\n* 我本人为所举报内容的合法权利人；\n\n* 我举报的发布在 IST智能实验室论坛社区中的内容侵犯了本人相应的合法权益；\n\n* 如果本侵权举报内容不完全属实，本人将承担由此产生的一切法律责任，并承担和赔偿 IST智能实验室论坛因根据投诉人的通知书对相关帐号的处理而造成的任何损失，包括但不限于 IST智能实验室论坛因向被投诉方赔偿而产生的损失及 IST智能实验室论坛名誉、商誉损害等。\n\n## 第四节　处理流程\n\n第一条　出于网络平台的监督属性，并非所有申请都必须受理。IST智能实验室论坛自收到举报的七个工作日内处理完毕并给出回复。处理期间，不提供任何电话、邮件及其他方式的查询服务。\n\n第二条　出现 IST智能实验室论坛已经删除或处理的内容，但是百度、谷歌等搜索引擎依然可以搜索到的现象，是因为百度、谷歌等搜索引擎自带缓存，此类问题 IST智能实验室论坛无权也无法处理，因此相关申请不予受理。您可以自行联系搜索引擎服务商进行处理。\n\n第三条　此为 IST智能实验室论坛社区唯一的官方侵权投诉渠道，暂不提供其他方式处理此业务。\n\n第四条　用户在 IST智能实验室论坛中的商业行为引发的法律纠纷，由交易双方自行处理，与 IST智能实验室论坛无关。\n\n## 第五章　免责申明\n\n第一条　IST智能实验室论坛不能对用户发表的回答或评论的正确性进行保证。\n\n第二条　用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 及 IST智能实验室论坛的立场或观点。作为内容的发表者，需自行对所发表内容负责，因所发表内容引发的一切纠纷，由该内容的发表者承担全部法律及连带责任。Flarum 及 IST智能实验室论坛不承担任何法律及连带责任。\n\n第三条　IST智能实验室论坛不保证网络服务一定能满足用户的要求，也不保证网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作保证。\n\n第四条　对于因不可抗力或 IST智能实验室论坛不能控制的原因造成的网络服务中断或其它缺陷，Flarum 及 IST智能实验室论坛不承担任何责任，但 IST智能实验室论坛将尽力减少因此而给用户造成的损失和影响。\n\n## 第六章　协议修改\n\n第一条　根据互联网的发展和有关法律、法规及规范性文件的变化，或者因业务发展需要，IST智能实验室论坛有权对本协议的条款作出修改或变更，一旦本协议的内容发生变动，IST智能实验室论坛将会直接在 IST智能实验室论坛网站上公布修改之后的协议内容，同时会通知用户协议内容发生变更，该通知行为视为用户已经知晓修改内容。IST智能实验室论坛也可采用额外的电子邮件或私信的传送方式，提示用户协议条款的修改、服务变更、或其它重要事项。\n\n第二条　如果不同意 IST智能实验室论坛对本协议相关条款所做的修改，用户有权并应当立即停止使用 IST智能实验室论坛。如果用户继续使用 IST智能实验室论坛，则视为用户接受 IST智能实验室论坛对本协议相关条款所做的修改。来到 IST智能实验室论坛。\n请您仔细阅读以下条款，如果您对本协议的任何条款表示异议，您可以选择不进入IST智能实验室论坛。当您注册成功，无论是进入IST智能实验室论坛，还是在IST智能实验室论坛上发布任何内容（以下简称「内容」），均意味着您（以下简称「用户」）完全接受本协议项下的全部条款。\n\\#第一章　使用规则\n第一条　用户注册成功后，IST智能实验室论坛将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管。用户应当对以其用户帐号进行的所有活动和事件负法律责任。\n第二条　用户须对在IST智能实验室论坛的注册信息的真实性、合法性、有效性承担全部责任，用户不得冒充他人；不得利用他人的名义发布任何信息；不得恶意使用注册帐号导致其他用户误认；否则IST智能实验室论坛有权立即停止提供服务，收回其帐号并由用户独自承担由此而产生的一切法律责任。\n第三条　用户直接或通过各类方式（如 RSS 源和站外 API 引用等）间接使用 IST智能实验室论坛服务和数据的行为，都将被视作已无条件接受本协议全部内容；若用户对本协议的任何条款存在异议，应当立即停止使用IST智能实验室论坛所提供的全部服务。\n第四条　IST智能实验室论坛是一个信息分享、传播及获取的平台，用户通过 IST智能实验室论坛发表的信息为公开的信息，其他第三方均可以通过 IST智能实验室论坛获取用户发表的信息，用户对任何信息的发表即认可该信息为公开的信息，并单独对此行为承担法律责任；任何用户不愿被其他第三人获知的信息都不应该在IST智能实验室论坛上进行发表。\n第五条　用户承诺不得以任何方式利用 IST智能实验室论坛直接或间接从事违反中华人民共和国法律以及社会公德的行为，IST智能实验室论坛有权对违反上述承诺的内容予以删除。\n第六条　用户不得利用 IST智能实验室论坛服务制作、上载、复制、发布、传播或者转载如下内容：\n•	反对宪法所确定的基本原则的；\n•	危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\n•	损害国家荣誉和利益的；\n•	煽动民族仇恨、民族歧视，破坏民族团结的；\n•	侮辱、滥用英烈形象，否定英烈事迹，美化粉饰侵略战争行为的；\n•	破坏国家宗教政策，宣扬邪教和封建迷信的；\n•	散布谣言，扰乱社会秩序，破坏社会稳定的；\n•	散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\n•	侮辱或者诽谤他人，侵害他人合法权益的；\n•	含有法律、行政法规禁止的其他内容的信息。\n第七条　所有用户均同意遵守 IST智能实验室论坛社区规范。\n第八条　IST智能实验室论坛有权对用户使用IST智能实验室论坛的情况进行审查和监督，如用户在使用 IST智能实验室论坛时违反任何上述规定，IST智能实验室论坛或其授权的人有权要求用户改正或直接采取一切必要的措施（包括但不限于更改或删除用户张贴的内容、暂停或终止用户使用 IST智能实验室论坛的权利）以减轻用户不当行为造成的影响。\n\\#第二章　知识产权\nIST智能实验室论坛是一个信息获取、分享及传播的平台，我们尊重 IST智能实验室论坛用户创作的内容，鼓励用户认识到保护知识产权对 IST智能实验室论坛生存与发展的重要性，承诺将保护知识产权作为 IST智能实验室论坛运营的基本原则之一。\n第一条　用户在 IST智能实验室论坛上发表的全部原创内容（包括但不仅限于回答、文章和评论），著作权均归用户本人所有。用户可授权第三方以任何方式使用，不需要得到 IST智能实验室论坛的同意。\n第二条　IST智能实验室论坛上可由多人参与翻译的内容，所有参与者均同意相关知识产权归 Flarum 及 IST智能实验室论坛所有。\n第三条　IST智能实验室论坛提供的网络服务中包含的标识、版面设计、排版方式、文本、图片、图形等均受著作权、商标权及其它法律保护，未经相关权利人（含 Flarum、IST智能实验室论坛及其他原始权利人）同意，上述内容均不得在任何平台被直接或间接发布、使用、出于发布或使用目的的改写或再发行，或被用于其他任何商业目的。\n第四条　为了促进知识的分享和传播，用户将其在 IST智能实验室论坛上发表的全部内容，授予 Flarum 和 IST智能实验室论坛免费的、不可撤销的、非独家使用许可，Flarum 和 IST智能实验室论坛有权将该内容用于 Flarum 或 IST智能实验室论坛各种形态的产品和服务上，包括但不限于网站以及发表的应用或其他互联网产品。\n第五条　第三方若出于非商业目的，将用户在 IST智能实验室论坛上发表的内容转载在 IST智能实验室论坛之外的地方，应当在作品的正文开头的显著位置注明原作者姓名（或原作者在 IST智能实验室论坛上使用的帐号名称），并给出原始链接，注明「发表于 IST智能实验室论坛」，并不得对作品进行修改演绎。若需要对作品进行修改，或用于商业目的，第三方应当联系用户获得单独授权，按照用户规定的方式使用该内容。\n第六条　IST智能实验室论坛为用户提供「保留所有权利，禁止转载」的选项。除非获得原作者的单独授权，任何第三方不得转载标注了「禁止转载」的内容，否则均视为侵权。\n第七条　在 IST智能实验室论坛上传或发表的内容，用户应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益。如果第三方提出关于著作权的异议，IST智能实验室论坛有权根据实际情况删除相关的内容，且有权追究用户的法律责任。给 Flarum 或 IST智能实验室论坛或任何第三方造成损失的，用户应负责全额赔偿。\n第八条　如果任何第三方侵犯了 IST智能实验室论坛用户相关的权利，用户同意授权 IST智能实验室论坛或其指定的代理人代表 IST智能实验室论坛自身或用户对该第三方提出警告、投诉、发起行政执法、诉讼、进行上诉，或谈判和解，并且用户同意在 IST智能实验室论坛认为必要的情况下参与共同维权。\n第九条　IST智能实验室论坛有权但无义务对用户发布的内容进行审核，有权根据相关证据结合《侵权责任法》、《信息网络传播权保护条例》等法律法规及 IST智能实验室论坛社区指导原则对侵权信息进行处理。\n\\#第三章　个人隐私\n尊重用户个人隐私信息的私有性是 IST智能实验室论坛的一贯原则，IST智能实验室论坛将通过技术手段、强化内部管理等办法充分保护用户的个人隐私信息，除法律或有法律赋予权限的政府部门要求或事先得到用户明确授权等原因外，IST智能实验室论坛保证不对外公开或向第三方透露用户个人隐私信息，或用户在使用服务时存储的非公开内容。同时，为了运营和改善 IST智能实验室论坛的技术与服务，IST智能实验室论坛将可能会自行收集使用或向第三方提供用户的非个人隐私信息，这将有助于 IST智能实验室论坛向用户提供更好的用户体验和服务质量。\n您使用或继续使用我们的服务，即意味着同意我们按照 IST智能实验室论坛《IST智能实验室论坛隐私保护指引》收集、使用、储存和分享您的相关信息。详情请参见\\*\\*《IST智能实验室论坛隐私政策》\\*\\*\n\\#第四章　侵权举报\n\\#第一节　处理原则\nIST智能实验室论坛作为 Flarum 产品及相关衍生知识的讨论社区，高度重视自由表达和个人、企业正当权利的平衡。依照法律规定删除违法信息是 IST智能实验室论坛社区的法定义务，IST智能实验室论坛社区亦未与任何中介机构合作开展此项业务。\n\\#第二节　受理范围\n受理 IST智能实验室论坛社区内侵犯企业或个人合法权益的侵权举报，包括但不限于涉及个人隐私、造谣与诽谤、商业侵权：\n第一条　涉及个人隐私：发布内容中直接涉及身份信息，如个人姓名、家庭住址、身份证号码、工作单位、私人电话等详细个人隐私；\n第二条　造谣、诽谤：发布内容中指名道姓（包括自然人和企业）的直接谩骂、侮辱、虚构中伤、恶意诽谤等；\n第三条　商业侵权：泄露企业商业机密及其他根据保密协议不能公开讨论的内容。\n\\#第三节　举报条件\n用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 及 Flarum中文社区的立场或观点。如果个人或企业发现 IST智能实验室论坛上存在侵犯自身合法权益的内容，可以先尝试与作者取得联系，通过沟通协商解决问题。如您无法联系到作者，或无法通过与作者沟通解决问题，您可通过点击内容下方的举报按钮来向 IST智能实验室论坛平台进行投诉。为了保证问题能够及时有效地处理，请务必提交真实有效、完整清晰的材料，否则投诉将无法受理。您需要向 IST智能实验室论坛提供的投诉材料包括：\n•	权利人对涉嫌侵权内容拥有商标权、著作权和 / 或其他依法可以行使权利的权属证明，权属证明通常是营业执照或组织机构代码证；\n•	举报人的身份证明，身份证明可以是身份证或护照；\n•	如果举报人非权利人，请举报人提供代表权利人进行举报的书面授权证明。\n为确保投诉材料的真实性，在侵权举报中，您还需要签署以下法律声明：\n•	我本人为所举报内容的合法权利人；\n•	我举报的发布在 IST智能实验室论坛社区中的内容侵犯了本人相应的合法权益；\n•	如果本侵权举报内容不完全属实，本人将承担由此产生的一切法律责任，并承担和赔偿 IST智能实验室论坛因根据投诉人的通知书对相关帐号的处理而造成的任何损失，包括但不限于 IST智能实验室论坛因向被投诉方赔偿而产生的损失及 IST智能实验室论坛名誉、商誉损害等。\n\\#第四节　处理流程\n第一条　出于网络平台的监督属性，并非所有申请都必须受理。IST智能实验室论坛自收到举报的七个工作日内处理完毕并给出回复。处理期间，不提供任何电话、邮件及其他方式的查询服务。\n第二条　出现 IST智能实验室论坛已经删除或处理的内容，但是百度、谷歌等搜索引擎依然可以搜索到的现象，是因为百度、谷歌等搜索引擎自带缓存，此类问题 IST智能实验室论坛无权也无法处理，因此相关申请不予受理。您可以自行联系搜索引擎服务商进行处理。\n第三条　此为 IST智能实验室论坛社区唯一的官方侵权投诉渠道，暂不提供其他方式处理此业务。\n第四条　用户在 IST智能实验室论坛中的商业行为引发的法律纠纷，由交易双方自行处理，与 IST智能实验室论坛无关。\n\\#第五章　免责申明\n第一条　IST智能实验室论坛不能对用户发表的回答或评论的正确性进行保证。\n第二条　用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 及 IST智能实验室论坛的立场或观点。作为内容的发表者，需自行对所发表内容负责，因所发表内容引发的一切纠纷，由该内容的发表者承担全部法律及连带责任。Flarum 及 IST智能实验室论坛不承担任何法律及连带责任。\n第三条　IST智能实验室论坛不保证网络服务一定能满足用户的要求，也不保证网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作保证。\n第四条　对于因不可抗力或 IST智能实验室论坛不能控制的原因造成的网络服务中断或其它缺陷，Flarum 及 IST智能实验室论坛不承担任何责任，但 IST智能实验室论坛将尽力减少因此而给用户造成的损失和影响。\n\\#第六章　协议修改\n第一条　根据互联网的发展和有关法律、法规及规范性文件的变化，或者因业务发展需要，IST智能实验室论坛有权对本协议的条款作出修改或变更，一旦本协议的内容发生变动，IST智能实验室论坛将会直接在 IST智能实验室论坛网站上公布修改之后的协议内容，同时会通知用户协议内容发生变更，该通知行为视为用户已经知晓修改内容。IST智能实验室论坛也可采用额外的电子邮件或私信的传送方式，提示用户协议条款的修改、服务变更、或其它重要事项。\n第二条　如果不同意 IST智能实验室论坛对本协议相关条款所做的修改，用户有权并应当立即停止使用 IST智能实验室论坛。如果用户继续使用 IST智能实验室论坛，则视为用户接受 IST智能实验室论坛对本协议相关条款所做的修改。',NULL,NULL,NULL,NULL,NULL,NULL),(10,21,1,1,'2022-08-10 15:59:19','## 欢迎来到IST智能实验室论坛。\n\n请您仔细阅读以下条款，如果您对本协议的任何条款表示异议，您可以选择不进入IST智能实验室论坛。当您注册成功，无论是进入IST智能实验室论坛，还是在IST智能实验室论坛上发布任何内容（以下简称「内容」），均意味着您（以下简称「用户」）完全接受本协议项下的全部条款。\n\n## 第一章　使用规则\n\n第一条　用户注册成功后，IST智能实验室论坛将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管。用户应当对以其用户帐号进行的所有活动和事件负法律责任。\n\n第二条　用户须对在IST智能实验室论坛的注册信息的真实性、合法性、有效性承担全部责任，用户不得冒充他人；不得利用他人的名义发布任何信息；不得恶意使用注册帐号导致其他用户误认；否则IST智能实验室论坛有权立即停止提供服务，收回其帐号并由用户独自承担由此而产生的一切法律责任。\n\n第三条　用户直接或通过各类方式（如 RSS 源和站外 API 引用等）间接使用 IST智能实验室论坛服务和数据的行为，都将被视作已无条件接受本协议全部内容；若用户对本协议的任何条款存在异议，应当立即停止使用IST智能实验室论坛所提供的全部服务。\n\n第四条　IST智能实验室论坛是一个信息分享、传播及获取的平台，用户通过 IST智能实验室论坛发表的信息为公开的信息，其他第三方均可以通过 IST智能实验室论坛获取用户发表的信息，用户对任何信息的发表即认可该信息为公开的信息，并单独对此行为承担法律责任；任何用户不愿被其他第三人获知的信息都不应该在IST智能实验室论坛上进行发表。\n\n第五条　用户承诺不得以任何方式利用 IST智能实验室论坛直接或间接从事违反中华人民共和国法律以及社会公德的行为，IST智能实验室论坛有权对违反上述承诺的内容予以删除。\n\n第六条　用户不得利用 IST智能实验室论坛服务制作、上载、复制、发布、传播或者转载如下内容：\n\n* 反对宪法所确定的基本原则的；\n\n* 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\n\n* 损害国家荣誉和利益的；\n\n* 煽动民族仇恨、民族歧视，破坏民族团结的；\n\n* 侮辱、滥用英烈形象，否定英烈事迹，美化粉饰侵略战争行为的；\n\n* 破坏国家宗教政策，宣扬邪教和封建迷信的；\n\n* 散布谣言，扰乱社会秩序，破坏社会稳定的；\n\n* 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\n\n* 侮辱或者诽谤他人，侵害他人合法权益的；\n\n* 含有法律、行政法规禁止的其他内容的信息。\n\n第七条　所有用户均同意遵守 IST智能实验室论坛社区规范。\n\n第八条　IST智能实验室论坛有权对用户使用IST智能实验室论坛的情况进行审查和监督，如用户在使用 IST智能实验室论坛时违反任何上述规定，IST智能实验室论坛或其授权的人有权要求用户改正或直接采取一切必要的措施（包括但不限于更改或删除用户张贴的内容、暂停或终止用户使用 IST智能实验室论坛的权利）以减轻用户不当行为造成的影响。\n\n## 第二章　知识产权\n\nIST智能实验室论坛是一个信息获取、分享及传播的平台，我们尊重 IST智能实验室论坛用户创作的内容，鼓励用户认识到保护知识产权对 IST智能实验室论坛生存与发展的重要性，承诺将保护知识产权作为 IST智能实验室论坛运营的基本原则之一。\n\n第一条　用户在 IST智能实验室论坛上发表的全部原创内容（包括但不仅限于回答、文章和评论），著作权均归用户本人所有。用户可授权第三方以任何方式使用，不需要得到 IST智能实验室论坛的同意。\n\n第二条　IST智能实验室论坛上可由多人参与翻译的内容，所有参与者均同意相关知识产权归 Flarum 及 IST智能实验室论坛所有。\n\n第三条　IST智能实验室论坛提供的网络服务中包含的标识、版面设计、排版方式、文本、图片、图形等均受著作权、商标权及其它法律保护，未经相关权利人（含 Flarum、IST智能实验室论坛及其他原始权利人）同意，上述内容均不得在任何平台被直接或间接发布、使用、出于发布或使用目的的改写或再发行，或被用于其他任何商业目的。\n\n第四条　为了促进知识的分享和传播，用户将其在 IST智能实验室论坛上发表的全部内容，授予 Flarum 和 IST智能实验室论坛免费的、不可撤销的、非独家使用许可，Flarum 和 IST智能实验室论坛有权将该内容用于 Flarum 或 IST智能实验室论坛各种形态的产品和服务上，包括但不限于网站以及发表的应用或其他互联网产品。\n\n第五条　第三方若出于非商业目的，将用户在 IST智能实验室论坛上发表的内容转载在 IST智能实验室论坛之外的地方，应当在作品的正文开头的显著位置注明原作者姓名（或原作者在 IST智能实验室论坛上使用的帐号名称），并给出原始链接，注明「发表于 IST智能实验室论坛」，并不得对作品进行修改演绎。若需要对作品进行修改，或用于商业目的，第三方应当联系用户获得单独授权，按照用户规定的方式使用该内容。\n\n第六条　IST智能实验室论坛为用户提供「保留所有权利，禁止转载」的选项。除非获得原作者的单独授权，任何第三方不得转载标注了「禁止转载」的内容，否则均视为侵权。\n\n第七条　在 IST智能实验室论坛上传或发表的内容，用户应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益。如果第三方提出关于著作权的异议，IST智能实验室论坛有权根据实际情况删除相关的内容，且有权追究用户的法律责任。给 Flarum 或 IST智能实验室论坛或任何第三方造成损失的，用户应负责全额赔偿。\n\n第八条　如果任何第三方侵犯了 IST智能实验室论坛用户相关的权利，用户同意授权 IST智能实验室论坛或其指定的代理人代表 IST智能实验室论坛自身或用户对该第三方提出警告、投诉、发起行政执法、诉讼、进行上诉，或谈判和解，并且用户同意在 IST智能实验室论坛认为必要的情况下参与共同维权。\n\n第九条　IST智能实验室论坛有权但无义务对用户发布的内容进行审核，有权根据相关证据结合《侵权责任法》、《信息网络传播权保护条例》等法律法规及 IST智能实验室论坛社区指导原则对侵权信息进行处理。\n\n## 第三章　个人隐私\n\n尊重用户个人隐私信息的私有性是 IST智能实验室论坛的一贯原则，IST智能实验室论坛将通过技术手段、强化内部管理等办法充分保护用户的个人隐私信息，除法律或有法律赋予权限的政府部门要求或事先得到用户明确授权等原因外，IST智能实验室论坛保证不对外公开或向第三方透露用户个人隐私信息，或用户在使用服务时存储的非公开内容。同时，为了运营和改善 IST智能实验室论坛的技术与服务，IST智能实验室论坛将可能会自行收集使用或向第三方提供用户的非个人隐私信息，这将有助于 IST智能实验室论坛向用户提供更好的用户体验和服务质量。\n\n您使用或继续使用我们的服务，即意味着同意我们按照 IST智能实验室论坛《IST智能实验室论坛隐私保护指引》收集、使用、储存和分享您的相关信息。详情请参见《IST智能实验室论坛隐私政策》\n\n## 第四章　侵权举报\n\n### 第一节　处理原则\n\nIST智能实验室论坛作为 Flarum 产品及相关衍生知识的讨论社区，高度重视自由表达和个人、企业正当权利的平衡。依照法律规定删除违法信息是 IST智能实验室论坛社区的法定义务，IST智能实验室论坛社区亦未与任何中介机构合作开展此项业务。\n\n### 第二节　受理范围\n\n受理 IST智能实验室论坛社区内侵犯企业或个人合法权益的侵权举报，包括但不限于涉及个人隐私、造谣与诽谤、商业侵权：\n\n第一条　涉及个人隐私：发布内容中直接涉及身份信息，如个人姓名、家庭住址、身份证号码、工作单位、私人电话等详细个人隐私；\n\n第二条　造谣、诽谤：发布内容中指名道姓（包括自然人和企业）的直接谩骂、侮辱、虚构中伤、恶意诽谤等；\n\n第三条　商业侵权：泄露企业商业机密及其他根据保密协议不能公开讨论的内容。\n\n### 第三节　举报条件\n\n用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 及 Flarum中文社区的立场或观点。如果个人或企业发现 IST智能实验室论坛上存在侵犯自身合法权益的内容，可以先尝试与作者取得联系，通过沟通协商解决问题。如您无法联系到作者，或无法通过与作者沟通解决问题，您可通过点击内容下方的举报按钮来向 IST智能实验室论坛平台进行投诉。为了保证问题能够及时有效地处理，请务必提交真实有效、完整清晰的材料，否则投诉将无法受理。您需要向 IST智能实验室论坛提供的投诉材料包括：\n\n* 权利人对涉嫌侵权内容拥有商标权、著作权和 / 或其他依法可以行使权利的权属证明，权属证明通常是营业执照或组织机构代码证；\n\n* 举报人的身份证明，身份证明可以是身份证或护照；\n\n* 如果举报人非权利人，请举报人提供代表权利人进行举报的书面授权证明。\n\n为确保投诉材料的真实性，在侵权举报中，您还需要签署以下法律声明：\n\n* 我本人为所举报内容的合法权利人；\n\n* 我举报的发布在 IST智能实验室论坛社区中的内容侵犯了本人相应的合法权益；\n\n* 如果本侵权举报内容不完全属实，本人将承担由此产生的一切法律责任，并承担和赔偿 IST智能实验室论坛因根据投诉人的通知书对相关帐号的处理而造成的任何损失，包括但不限于 IST智能实验室论坛因向被投诉方赔偿而产生的损失及 IST智能实验室论坛名誉、商誉损害等。\n\n### 第四节　处理流程\n\n第一条　出于网络平台的监督属性，并非所有申请都必须受理。IST智能实验室论坛自收到举报的七个工作日内处理完毕并给出回复。处理期间，不提供任何电话、邮件及其他方式的查询服务。\n\n第二条　出现 IST智能实验室论坛已经删除或处理的内容，但是百度、谷歌等搜索引擎依然可以搜索到的现象，是因为百度、谷歌等搜索引擎自带缓存，此类问题 IST智能实验室论坛无权也无法处理，因此相关申请不予受理。您可以自行联系搜索引擎服务商进行处理。\n\n第三条　此为 IST智能实验室论坛社区唯一的官方侵权投诉渠道，暂不提供其他方式处理此业务。\n\n第四条　用户在 IST智能实验室论坛中的商业行为引发的法律纠纷，由交易双方自行处理，与 IST智能实验室论坛无关。\n\n## 第五章　免责申明\n\n第一条　IST智能实验室论坛不能对用户发表的回答或评论的正确性进行保证。\n\n第二条　用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 及 IST智能实验室论坛的立场或观点。作为内容的发表者，需自行对所发表内容负责，因所发表内容引发的一切纠纷，由该内容的发表者承担全部法律及连带责任。Flarum 及 IST智能实验室论坛不承担任何法律及连带责任。\n\n第三条　IST智能实验室论坛不保证网络服务一定能满足用户的要求，也不保证网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作保证。\n\n第四条　对于因不可抗力或 IST智能实验室论坛不能控制的原因造成的网络服务中断或其它缺陷，Flarum 及 IST智能实验室论坛不承担任何责任，但 IST智能实验室论坛将尽力减少因此而给用户造成的损失和影响。\n\n## 第六章　协议修改\n\n第一条　根据互联网的发展和有关法律、法规及规范性文件的变化，或者因业务发展需要，IST智能实验室论坛有权对本协议的条款作出修改或变更，一旦本协议的内容发生变动，IST智能实验室论坛将会直接在 IST智能实验室论坛网站上公布修改之后的协议内容，同时会通知用户协议内容发生变更，该通知行为视为用户已经知晓修改内容。IST智能实验室论坛也可采用额外的电子邮件或私信的传送方式，提示用户协议条款的修改、服务变更、或其它重要事项。\n\n第二条　如果不同意 IST智能实验室论坛对本协议相关条款所做的修改，用户有权并应当立即停止使用 IST智能实验室论坛。如果用户继续使用 IST智能实验室论坛，则视为用户接受 IST智能实验室论坛对本协议相关条款所做的修改。来到 ',NULL,NULL,NULL,NULL,NULL,NULL),(11,21,1,2,'2022-08-10 15:59:54','## 欢迎来到IST智能实验室论坛。\n\n请您仔细阅读以下条款，如果您对本协议的任何条款表示异议，您可以选择不进入IST智能实验室论坛。当您注册成功，无论是进入IST智能实验室论坛，还是在IST智能实验室论坛上发布任何内容（以下简称「内容」），均意味着您（以下简称「用户」）完全接受本协议项下的全部条款。\n\n## 第一章　使用规则\n\n第一条　用户注册成功后，IST智能实验室论坛将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管。用户应当对以其用户帐号进行的所有活动和事件负法律责任。\n\n第二条　用户须对在IST智能实验室论坛的注册信息的真实性、合法性、有效性承担全部责任，用户不得冒充他人；不得利用他人的名义发布任何信息；不得恶意使用注册帐号导致其他用户误认；否则IST智能实验室论坛有权立即停止提供服务，收回其帐号并由用户独自承担由此而产生的一切法律责任。\n\n第三条　用户直接或通过各类方式（如 RSS 源和站外 API 引用等）间接使用 IST智能实验室论坛服务和数据的行为，都将被视作已无条件接受本协议全部内容；若用户对本协议的任何条款存在异议，应当立即停止使用IST智能实验室论坛所提供的全部服务。\n\n第四条　IST智能实验室论坛是一个信息分享、传播及获取的平台，用户通过 IST智能实验室论坛发表的信息为公开的信息，其他第三方均可以通过 IST智能实验室论坛获取用户发表的信息，用户对任何信息的发表即认可该信息为公开的信息，并单独对此行为承担法律责任；任何用户不愿被其他第三人获知的信息都不应该在IST智能实验室论坛上进行发表。\n\n第五条　用户承诺不得以任何方式利用 IST智能实验室论坛直接或间接从事违反中华人民共和国法律以及社会公德的行为，IST智能实验室论坛有权对违反上述承诺的内容予以删除。\n\n第六条　用户不得利用 IST智能实验室论坛服务制作、上载、复制、发布、传播或者转载如下内容：\n\n* 反对宪法所确定的基本原则的；\n\n* 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\n\n* 损害国家荣誉和利益的；\n\n* 煽动民族仇恨、民族歧视，破坏民族团结的；\n\n* 侮辱、滥用英烈形象，否定英烈事迹，美化粉饰侵略战争行为的；\n\n* 破坏国家宗教政策，宣扬邪教和封建迷信的；\n\n* 散布谣言，扰乱社会秩序，破坏社会稳定的；\n\n* 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\n\n* 侮辱或者诽谤他人，侵害他人合法权益的；\n\n* 含有法律、行政法规禁止的其他内容的信息。\n\n第七条　所有用户均同意遵守 IST智能实验室论坛社区规范。\n\n第八条　IST智能实验室论坛有权对用户使用IST智能实验室论坛的情况进行审查和监督，如用户在使用 IST智能实验室论坛时违反任何上述规定，IST智能实验室论坛或其授权的人有权要求用户改正或直接采取一切必要的措施（包括但不限于更改或删除用户张贴的内容、暂停或终止用户使用 IST智能实验室论坛的权利）以减轻用户不当行为造成的影响。\n\n## 第二章　知识产权\n\nIST智能实验室论坛是一个信息获取、分享及传播的平台，我们尊重 IST智能实验室论坛用户创作的内容，鼓励用户认识到保护知识产权对 IST智能实验室论坛生存与发展的重要性，承诺将保护知识产权作为 IST智能实验室论坛运营的基本原则之一。\n\n第一条　用户在 IST智能实验室论坛上发表的全部原创内容（包括但不仅限于回答、文章和评论），著作权均归用户本人所有。用户可授权第三方以任何方式使用，不需要得到 IST智能实验室论坛的同意。\n\n第二条　IST智能实验室论坛上可由多人参与翻译的内容，所有参与者均同意相关知识产权归 Flarum 及 IST智能实验室论坛所有。\n\n第三条　IST智能实验室论坛提供的网络服务中包含的标识、版面设计、排版方式、文本、图片、图形等均受著作权、商标权及其它法律保护，未经相关权利人（含 Flarum、IST智能实验室论坛及其他原始权利人）同意，上述内容均不得在任何平台被直接或间接发布、使用、出于发布或使用目的的改写或再发行，或被用于其他任何商业目的。\n\n第四条　为了促进知识的分享和传播，用户将其在 IST智能实验室论坛上发表的全部内容，授予 Flarum 和 IST智能实验室论坛免费的、不可撤销的、非独家使用许可，Flarum 和 IST智能实验室论坛有权将该内容用于 Flarum 或 IST智能实验室论坛各种形态的产品和服务上，包括但不限于网站以及发表的应用或其他互联网产品。\n\n第五条　第三方若出于非商业目的，将用户在 IST智能实验室论坛上发表的内容转载在 IST智能实验室论坛之外的地方，应当在作品的正文开头的显著位置注明原作者姓名（或原作者在 IST智能实验室论坛上使用的帐号名称），并给出原始链接，注明「发表于 IST智能实验室论坛」，并不得对作品进行修改演绎。若需要对作品进行修改，或用于商业目的，第三方应当联系用户获得单独授权，按照用户规定的方式使用该内容。\n\n第六条　IST智能实验室论坛为用户提供「保留所有权利，禁止转载」的选项。除非获得原作者的单独授权，任何第三方不得转载标注了「禁止转载」的内容，否则均视为侵权。\n\n第七条　在 IST智能实验室论坛上传或发表的内容，用户应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益。如果第三方提出关于著作权的异议，IST智能实验室论坛有权根据实际情况删除相关的内容，且有权追究用户的法律责任。给 Flarum 或 IST智能实验室论坛或任何第三方造成损失的，用户应负责全额赔偿。\n\n第八条　如果任何第三方侵犯了 IST智能实验室论坛用户相关的权利，用户同意授权 IST智能实验室论坛或其指定的代理人代表 IST智能实验室论坛自身或用户对该第三方提出警告、投诉、发起行政执法、诉讼、进行上诉，或谈判和解，并且用户同意在 IST智能实验室论坛认为必要的情况下参与共同维权。\n\n第九条　IST智能实验室论坛有权但无义务对用户发布的内容进行审核，有权根据相关证据结合《侵权责任法》、《信息网络传播权保护条例》等法律法规及 IST智能实验室论坛社区指导原则对侵权信息进行处理。\n\n## 第三章　个人隐私\n\n尊重用户个人隐私信息的私有性是 IST智能实验室论坛的一贯原则，IST智能实验室论坛将通过技术手段、强化内部管理等办法充分保护用户的个人隐私信息，除法律或有法律赋予权限的政府部门要求或事先得到用户明确授权等原因外，IST智能实验室论坛保证不对外公开或向第三方透露用户个人隐私信息，或用户在使用服务时存储的非公开内容。同时，为了运营和改善 IST智能实验室论坛的技术与服务，IST智能实验室论坛将可能会自行收集使用或向第三方提供用户的非个人隐私信息，这将有助于 IST智能实验室论坛向用户提供更好的用户体验和服务质量。\n\n您使用或继续使用我们的服务，即意味着同意我们按照 IST智能实验室论坛《IST智能实验室论坛隐私保护指引》收集、使用、储存和分享您的相关信息。详情请参见《IST智能实验室论坛隐私政策》\n\n## 第四章　侵权举报\n\n### 第一节　处理原则\n\nIST智能实验室论坛作为 Flarum 产品及相关衍生知识的讨论社区，高度重视自由表达和个人、企业正当权利的平衡。依照法律规定删除违法信息是 IST智能实验室论坛社区的法定义务，IST智能实验室论坛社区亦未与任何中介机构合作开展此项业务。\n\n### 第二节　受理范围\n\n受理 IST智能实验室论坛社区内侵犯企业或个人合法权益的侵权举报，包括但不限于涉及个人隐私、造谣与诽谤、商业侵权：\n\n第一条　涉及个人隐私：发布内容中直接涉及身份信息，如个人姓名、家庭住址、身份证号码、工作单位、私人电话等详细个人隐私；\n\n第二条　造谣、诽谤：发布内容中指名道姓（包括自然人和企业）的直接谩骂、侮辱、虚构中伤、恶意诽谤等；\n\n第三条　商业侵权：泄露企业商业机密及其他根据保密协议不能公开讨论的内容。\n\n### 第三节　举报条件\n\n用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 及 Flarum中文社区的立场或观点。如果个人或企业发现 IST智能实验室论坛上存在侵犯自身合法权益的内容，可以先尝试与作者取得联系，通过沟通协商解决问题。如您无法联系到作者，或无法通过与作者沟通解决问题，您可通过点击内容下方的举报按钮来向 IST智能实验室论坛平台进行投诉。为了保证问题能够及时有效地处理，请务必提交真实有效、完整清晰的材料，否则投诉将无法受理。您需要向 IST智能实验室论坛提供的投诉材料包括：\n\n* 权利人对涉嫌侵权内容拥有商标权、著作权和 / 或其他依法可以行使权利的权属证明，权属证明通常是营业执照或组织机构代码证；\n\n* 举报人的身份证明，身份证明可以是身份证或护照；\n\n* 如果举报人非权利人，请举报人提供代表权利人进行举报的书面授权证明。\n\n为确保投诉材料的真实性，在侵权举报中，您还需要签署以下法律声明：\n\n* 我本人为所举报内容的合法权利人；\n\n* 我举报的发布在 IST智能实验室论坛社区中的内容侵犯了本人相应的合法权益；\n\n* 如果本侵权举报内容不完全属实，本人将承担由此产生的一切法律责任，并承担和赔偿 IST智能实验室论坛因根据投诉人的通知书对相关帐号的处理而造成的任何损失，包括但不限于 IST智能实验室论坛因向被投诉方赔偿而产生的损失及 IST智能实验室论坛名誉、商誉损害等。\n\n### 第四节　处理流程\n\n第一条　出于网络平台的监督属性，并非所有申请都必须受理。IST智能实验室论坛自收到举报的七个工作日内处理完毕并给出回复。处理期间，不提供任何电话、邮件及其他方式的查询服务。\n\n第二条　出现 IST智能实验室论坛已经删除或处理的内容，但是百度、谷歌等搜索引擎依然可以搜索到的现象，是因为百度、谷歌等搜索引擎自带缓存，此类问题 IST智能实验室论坛无权也无法处理，因此相关申请不予受理。您可以自行联系搜索引擎服务商进行处理。\n\n第三条　此为 IST智能实验室论坛社区唯一的官方侵权投诉渠道，暂不提供其他方式处理此业务。\n\n第四条　用户在 IST智能实验室论坛中的商业行为引发的法律纠纷，由交易双方自行处理，与 IST智能实验室论坛无关。\n\n## 第五章　免责申明\n\n第一条　IST智能实验室论坛不能对用户发表的回答或评论的正确性进行保证。\n\n第二条　用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 及 IST智能实验室论坛的立场或观点。作为内容的发表者，需自行对所发表内容负责，因所发表内容引发的一切纠纷，由该内容的发表者承担全部法律及连带责任。Flarum 及 IST智能实验室论坛不承担任何法律及连带责任。\n\n第三条　IST智能实验室论坛不保证网络服务一定能满足用户的要求，也不保证网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作保证。\n\n第四条　对于因不可抗力或 IST智能实验室论坛不能控制的原因造成的网络服务中断或其它缺陷，Flarum 及 IST智能实验室论坛不承担任何责任，但 IST智能实验室论坛将尽力减少因此而给用户造成的损失和影响。\n\n## 第六章　协议修改\n\n第一条　根据互联网的发展和有关法律、法规及规范性文件的变化，或者因业务发展需要，IST智能实验室论坛有权对本协议的条款作出修改或变更，一旦本协议的内容发生变动，IST智能实验室论坛将会直接在 IST智能实验室论坛网站上公布修改之后的协议内容，同时会通知用户协议内容发生变更，该通知行为视为用户已经知晓修改内容。IST智能实验室论坛也可采用额外的电子邮件或私信的传送方式，提示用户协议条款的修改、服务变更、或其它重要事项。\n\n第二条　如果不同意 IST智能实验室论坛对本协议相关条款所做的修改，用户有权并应当立即停止使用 IST智能实验室论坛。如果用户继续使用 IST智能实验室论坛，则视为用户接受 IST智能实验室论坛对本协议相关条款所做的修改。',NULL,NULL,NULL,NULL,NULL,NULL),(12,37,1,0,'2022-08-10 17:24:47','# **社区规范**\n\n## **第一章　总则**\n\nIST智能实验室论坛（以下简称IST论坛）致力于提供一个由广大爱好者共同维护的高质量 IST智能实验室技术内容社区。为了保护用户创造的内容、维护良好的社区氛围，IST论坛团队、IST论坛授权的管理员和版主将依据IST论坛用户协议以及本规范中的条款对在IST论坛注册的用户和发布在IST论坛的内容进行管理。采取的措施包括但不限于更改或删除用户所发布的内容、暂停或终止用户使用IST论坛的权利。\n\n所有有意降低内容质量、破坏社区氛围的行为（以下统称「破坏」）都是不可容忍的。多数情况下，社区中的其他用户会优先选择对破坏行为进行劝诫、建议和引导，IST论坛团队也会事先发出警告并给予用户改正自己不当行为的机会，但这并不意味着IST论坛团队会在采取任何措施前必须首先发出警告。\n\n## **第二章　违规行为界定**\n\n### **第一节　违反法律法规**\n\nIST论坛严格遵守中华人民共和国政府颁布的\\*\\*[《互联网信息服务管理办法》](http://www.gov.cn/gongbao/content/2011/content_1860864.htm)**第十五条规定、**[「七条底线」](https://www.isc.org.cn/zxzx/xhdt/listinfo-27187.html)**及**[「九不准」](http://www.cac.gov.cn/2000-09/30/c_126193701.htm)\\*\\*等相关法律法规，并将此作为中文站运行的基本准则；\n\n**对于含有以下内容的信息，我们将采取最严格的管理办法，予以杜绝：**\n\n第一条　反对宪法所确定的基本原则的；\n\n第二条　危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\n\n第三条　损害国家荣誉和利益的；\n\n第四条　煽动民族仇恨、民族歧视，破坏民族团结的；\n\n第五条　侮辱、滥用英烈形象，否定英烈事迹，美化粉饰侵略战争行为的；\n\n第六条　破坏国家宗教政策，宣扬邪教和封建迷信的；\n\n第七条　散布谣言，扰乱社会秩序，破坏社会稳定的；\n\n第八条　散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\n\n第九条　煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的；\n\n第十条　侮辱或者诽谤他人，侵害他们合法权益的；\n\n第十一条　含有法律、行政法规禁止的其他内容的。\n\n### **第二节　不友善行为**\n\n**IST论坛维护每一位用户及其所贡献的内容，但不维护行为不友善的用户，因此，请您在做出包括但不限于以下行为前三思：**\n\n第一条　轻蔑：贬低、轻视他人及其劳动成果；\n\n第二条　诽谤：捏造、散布虚假事实，损害他人名誉；\n\n第三条　嘲讽：以比喻、夸张、侮辱性的手法对他人或其行为进行揭露或描述，以此来激怒他人；\n\n第四条　挑衅：以不友好的方式激怒他人，意图使对方对自己的言论作出回应，蓄意制造事端；\n\n第五条　羞辱：贬低他人的能力、行为、生理或身份特征，让对方难堪；\n\n第六条　谩骂：以不文明的语言对他人进行负面评价；\n\n第七条　歧视：针对他人的民族、种族、宗教、性取向、性别、年龄、地域、生理特征等身份或者归类的攻击；\n\n第八条　威胁：许诺以不良的后果来迫使他人服从自己的意志。\n\n### **第三节　垃圾广告**\n\n**多次发布包含售卖产品、提供服务、宣传推广内容的垃圾广告。包括但不限于以下几种形式：**\n\n第一条　使用同一个多次发布包含垃圾广告的内容的；\n\n第二条　使用多个账号互相配合发布包含垃圾广告的内容的；\n\n第三条　多次发布包含欺骗性外链的内容，如未注明的淘宝客链接、跳转网站等，诱骗用户点击链接的；\n\n第四条　发布大量包含 SEO 推广链接、产品、品牌等内容以获取搜索引擎中的不正当曝光的；\n\n**购买或出售帐号之间虚假地互动，发布干扰社区秩序的推广内容及相关交易。包括但不限于以下几种形式：**\n\n第五条　购买机器注册帐号，或人工操控帐号点赞，谋求回复的不正当曝光的；\n\n第六条　使用机器、恶意程序手段或人为有组织性地操控帐号进行点赞、回复等扰乱秩序的；\n\n使用严重影响用户体验的违规手段进行恶意营销。包括但不限于以下几种形式：\n\n第七条　不规范转载或大篇幅转载他人内容同时加入推广营销内容的；\n\n第八条　发布包含欺骗性的恶意营销内容，如通过伪造经历、冒充他人等方式进行恶意营销的；\n\n**其他情况：**\n\n第九条　使用特殊符号、图片等方式规避垃圾广告内容审核的广告内容的；\n\n第十条　恶意注册使用IST论坛账号，包括但不限于机器注册、频繁注册、批量注册、滥用多个IST论坛账号的。\n\n### **第四节　恶意行为**\n\n**请勿滥用社区功能，做出影响用户体验、危及平台安全及损害他人权益的行为。包括但不限于：**\n\n第一条　恶意编辑，指清空或删除有效内容，添加无关信息，破坏内容结构等降低公共编辑内容质量的编辑；\n\n第二条　冒充他人，通过头像、用户名等个人信息暗示自己与他人或机构相等同或有关联；\n\n第三条　诱导投票或关注，如通过点赞抽奖、集赞更新等形式诱导投票或者诱导关注；\n\n第四条　制作及传播外挂或者用于操作帐号功能的恶意程序或相关教程；\n\n第五条　发布含有潜在危险的内容，如钓鱼网站、木马、病毒网站等；\n\n第六条　发布含有暴力、血腥、以及一些含有害人成分的内容。\n\n请勿重复发布干扰正常用户体验的内容。包括但不限于：\n\n第七条　重复的回复内容或多次发布在不同主题下；\n\n第八条　频繁发布难以辨识涵义影响阅读体验的字符、数字等无意义乱码；\n\n第九条　骚扰他人，以回复、@ 他人、留言等方式对他人反复发送重复或者相似的诉求。\n\n### **第五节　色情低俗**\n\n**禁止在主题、回复、签名等用户可编辑发布的内容里，发送与色情内容有关的第三方网址、社交账号、网盘代码等信息，一经发现，我们将对发送此类信息的账号永久封禁。具体情况包括但不限于一下几种形式：**\n\n第一条　包含自己或他人性经验的细节描述或露骨的感受描述的；\n\n第二条　涉及色情段子、两性笑话的低俗内容；\n\n第三条　配图、头图中包含庸俗或挑逗性图片的。\n\n### **第六节　不实信息**\n\n**传播广泛的虚假信息将产生严重的社会影响，请勿发布不实信息，包括但不限于以下几种形式：**\n\n第一条　IST论坛帐号存在伪造身份、冒充他人等行为；\n\n第二条　可能存在事实性错误或者造谣等内容；\n\n第三条　内容中存在事实夸大、伪造虚假经历并存在误导他人。\n\n### **第七节　封建迷信**\n\n**封建迷信具有严重的社会危害，本着回归科学精神，拒绝封建迷信的精神，IST论坛坚决不允许此类信息传播：**\n\n**找人算命、测字、占卜、解梦、化解厄运、使用迷信方式治病的：**\n\n第一条　求推荐算命看相大师；\n\n第二条　针对具体风水等问题进行求助或咨询；\n\n第三条　问自己或他人的八字、六爻、星盘、首相、面相、五行缺失，包括通过占卜方法问婚姻、前程、运势，东西宠物丢了能不能找回、取名改名等；\n\n第四条　解梦类内容；\n\n**宣扬鼓励封建迷信等活动，推广算命等理论知识学习及讨论的：**\n\n第五条　询问某种算命结果、说法是否准确；\n\n第六条　在回答或文章中推荐关注算命、占卜等封建迷信活动。\n\n### **第八节　标题党**\n\n**IST论坛拒绝各种类型的「标题党」，一经发现此类违规标题，我们将予以屏蔽、替换、甚至删除。具体形式包括但不限于：**\n\n第一条　存在各种夸张、猎奇、不合常理的内容表现手法等行为来诱导用户；\n\n第二条　内容与标题之间存在严重不实或者原意扭曲。\n\n## **第三章　违规处理流程**\n\nIST论坛通过管理团队定期、不定期巡查主动发现或用户举报的方式发现违规行为。用户可以使用中文社区内的「举报」功能对涉嫌违规的行为和用户进行举报。违规的信息由管理团队根据本规定直接处理。\n\n### **第一节　违规处罚**\n\n当一个用户发布上述违规内容时，IST论坛将依据相关用户的违规情节严重程度，对帐号进行封禁 1 天、7 天、15 天直至永久封禁的处罚。对于使用IST论坛时间较长，并取得一定社区成就的用户，我们将视违规情节严重程度，酌情减轻处罚。当出现以下恶意行为时，将会收到加重处罚：\n\n第一条　本规定第一章第一节第一至九条所述任一或多个行为；\n\n第二条　通过作弊手段注册、使用的帐号；\n\n第三条　滥用多个IST论坛帐号；\n\n第四条　恶意冒充　实验室有关人员（官方管理团队、论坛开发者等）、IST智能实验室论坛管理团队或学校其他技术类社团。\n\n### **第二节　申诉**\n\nIST论坛站方可以随着社区管理经验的不断丰富，出于维护IST智能实验室论坛氛围和秩序的目的，不断完善本规定。 如果IST论坛用户对IST论坛基于本规范做出的处理有异议，可以通过联系管理员或在本公告下方回复。',NULL,NULL,NULL,NULL,NULL,NULL),(13,37,1,1,'2022-08-10 17:26:24','# **社区规范**\n\n## **第一章　总则**\n\nIST智能实验室论坛（以下简称IST论坛）致力于提供一个由广大爱好者共同维护的高质量 IST智能实验室技术内容社区。为了保护用户创造的内容、维护良好的社区氛围，IST论坛团队、IST论坛授权的管理员和版主将依据IST论坛用户协议以及本规范中的条款对在IST论坛注册的用户和发布在IST论坛的内容进行管理。采取的措施包括但不限于更改或删除用户所发布的内容、暂停或终止用户使用IST论坛的权利。\n\n所有有意降低内容质量、破坏社区氛围的行为（以下统称「破坏」）都是不可容忍的。多数情况下，社区中的其他用户会优先选择对破坏行为进行劝诫、建议和引导，IST论坛团队也会事先发出警告并给予用户改正自己不当行为的机会，但这并不意味着IST论坛团队会在采取任何措施前必须首先发出警告。\n\n## **第二章　违规行为界定**\n\n### **第一节　违反法律法规**\n\nIST论坛严格遵守中华人民共和国政府颁布的[《互联网信息服务管理办法》](http://www.gov.cn/gongbao/content/2011/content_1860864.htm)第十五条规定、**[「七条底线」](https://www.isc.org.cn/zxzx/xhdt/listinfo-27187.html)及[「九不准」](http://www.cac.gov.cn/2000-09/30/c_126193701.htm)等相关法律法规，并将此作为中文站运行的基本准则；\n\n**对于含有以下内容的信息，我们将采取最严格的管理办法，予以杜绝：**\n\n第一条　反对宪法所确定的基本原则的；\n\n第二条　危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\n\n第三条　损害国家荣誉和利益的；\n\n第四条　煽动民族仇恨、民族歧视，破坏民族团结的；\n\n第五条　侮辱、滥用英烈形象，否定英烈事迹，美化粉饰侵略战争行为的；\n\n第六条　破坏国家宗教政策，宣扬邪教和封建迷信的；\n\n第七条　散布谣言，扰乱社会秩序，破坏社会稳定的；\n\n第八条　散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\n\n第九条　煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的；\n\n第十条　侮辱或者诽谤他人，侵害他们合法权益的；\n\n第十一条　含有法律、行政法规禁止的其他内容的。\n\n### **第二节　不友善行为**\n\n**IST论坛维护每一位用户及其所贡献的内容，但不维护行为不友善的用户，因此，请您在做出包括但不限于以下行为前三思：**\n\n第一条　轻蔑：贬低、轻视他人及其劳动成果；\n\n第二条　诽谤：捏造、散布虚假事实，损害他人名誉；\n\n第三条　嘲讽：以比喻、夸张、侮辱性的手法对他人或其行为进行揭露或描述，以此来激怒他人；\n\n第四条　挑衅：以不友好的方式激怒他人，意图使对方对自己的言论作出回应，蓄意制造事端；\n\n第五条　羞辱：贬低他人的能力、行为、生理或身份特征，让对方难堪；\n\n第六条　谩骂：以不文明的语言对他人进行负面评价；\n\n第七条　歧视：针对他人的民族、种族、宗教、性取向、性别、年龄、地域、生理特征等身份或者归类的攻击；\n\n第八条　威胁：许诺以不良的后果来迫使他人服从自己的意志。\n\n### **第三节　垃圾广告**\n\n**多次发布包含售卖产品、提供服务、宣传推广内容的垃圾广告。包括但不限于以下几种形式：**\n\n第一条　使用同一个多次发布包含垃圾广告的内容的；\n\n第二条　使用多个账号互相配合发布包含垃圾广告的内容的；\n\n第三条　多次发布包含欺骗性外链的内容，如未注明的淘宝客链接、跳转网站等，诱骗用户点击链接的；\n\n第四条　发布大量包含 SEO 推广链接、产品、品牌等内容以获取搜索引擎中的不正当曝光的；\n\n**购买或出售帐号之间虚假地互动，发布干扰社区秩序的推广内容及相关交易。包括但不限于以下几种形式：**\n\n第五条　购买机器注册帐号，或人工操控帐号点赞，谋求回复的不正当曝光的；\n\n第六条　使用机器、恶意程序手段或人为有组织性地操控帐号进行点赞、回复等扰乱秩序的；\n\n使用严重影响用户体验的违规手段进行恶意营销。包括但不限于以下几种形式：\n\n第七条　不规范转载或大篇幅转载他人内容同时加入推广营销内容的；\n\n第八条　发布包含欺骗性的恶意营销内容，如通过伪造经历、冒充他人等方式进行恶意营销的；\n\n**其他情况：**\n\n第九条　使用特殊符号、图片等方式规避垃圾广告内容审核的广告内容的；\n\n第十条　恶意注册使用IST论坛账号，包括但不限于机器注册、频繁注册、批量注册、滥用多个IST论坛账号的。\n\n### **第四节　恶意行为**\n\n**请勿滥用社区功能，做出影响用户体验、危及平台安全及损害他人权益的行为。包括但不限于：**\n\n第一条　恶意编辑，指清空或删除有效内容，添加无关信息，破坏内容结构等降低公共编辑内容质量的编辑；\n\n第二条　冒充他人，通过头像、用户名等个人信息暗示自己与他人或机构相等同或有关联；\n\n第三条　诱导投票或关注，如通过点赞抽奖、集赞更新等形式诱导投票或者诱导关注；\n\n第四条　制作及传播外挂或者用于操作帐号功能的恶意程序或相关教程；\n\n第五条　发布含有潜在危险的内容，如钓鱼网站、木马、病毒网站等；\n\n第六条　发布含有暴力、血腥、以及一些含有害人成分的内容。\n\n请勿重复发布干扰正常用户体验的内容。包括但不限于：\n\n第七条　重复的回复内容或多次发布在不同主题下；\n\n第八条　频繁发布难以辨识涵义影响阅读体验的字符、数字等无意义乱码；\n\n第九条　骚扰他人，以回复、@ 他人、留言等方式对他人反复发送重复或者相似的诉求。\n\n### **第五节　色情低俗**\n\n**禁止在主题、回复、签名等用户可编辑发布的内容里，发送与色情内容有关的第三方网址、社交账号、网盘代码等信息，一经发现，我们将对发送此类信息的账号永久封禁。具体情况包括但不限于一下几种形式：**\n\n第一条　包含自己或他人性经验的细节描述或露骨的感受描述的；\n\n第二条　涉及色情段子、两性笑话的低俗内容；\n\n第三条　配图、头图中包含庸俗或挑逗性图片的。\n\n### **第六节　不实信息**\n\n**传播广泛的虚假信息将产生严重的社会影响，请勿发布不实信息，包括但不限于以下几种形式：**\n\n第一条　IST论坛帐号存在伪造身份、冒充他人等行为；\n\n第二条　可能存在事实性错误或者造谣等内容；\n\n第三条　内容中存在事实夸大、伪造虚假经历并存在误导他人。\n\n### **第七节　封建迷信**\n\n**封建迷信具有严重的社会危害，本着回归科学精神，拒绝封建迷信的精神，IST论坛坚决不允许此类信息传播：**\n\n**找人算命、测字、占卜、解梦、化解厄运、使用迷信方式治病的：**\n\n第一条　求推荐算命看相大师；\n\n第二条　针对具体风水等问题进行求助或咨询；\n\n第三条　问自己或他人的八字、六爻、星盘、首相、面相、五行缺失，包括通过占卜方法问婚姻、前程、运势，东西宠物丢了能不能找回、取名改名等；\n\n第四条　解梦类内容；\n\n**宣扬鼓励封建迷信等活动，推广算命等理论知识学习及讨论的：**\n\n第五条　询问某种算命结果、说法是否准确；\n\n第六条　在回答或文章中推荐关注算命、占卜等封建迷信活动。\n\n### **第八节　标题党**\n\n**IST论坛拒绝各种类型的「标题党」，一经发现此类违规标题，我们将予以屏蔽、替换、甚至删除。具体形式包括但不限于：**\n\n第一条　存在各种夸张、猎奇、不合常理的内容表现手法等行为来诱导用户；\n\n第二条　内容与标题之间存在严重不实或者原意扭曲。\n\n## **第三章　违规处理流程**\n\nIST论坛通过管理团队定期、不定期巡查主动发现或用户举报的方式发现违规行为。用户可以使用中文社区内的「举报」功能对涉嫌违规的行为和用户进行举报。违规的信息由管理团队根据本规定直接处理。\n\n### **第一节　违规处罚**\n\n当一个用户发布上述违规内容时，IST论坛将依据相关用户的违规情节严重程度，对帐号进行封禁 1 天、7 天、15 天直至永久封禁的处罚。对于使用IST论坛时间较长，并取得一定社区成就的用户，我们将视违规情节严重程度，酌情减轻处罚。当出现以下恶意行为时，将会收到加重处罚：\n\n第一条　本规定第一章第一节第一至九条所述任一或多个行为；\n\n第二条　通过作弊手段注册、使用的帐号；\n\n第三条　滥用多个IST论坛帐号；\n\n第四条　恶意冒充　实验室有关人员（官方管理团队、论坛开发者等）、IST智能实验室论坛管理团队或学校其他技术类社团。\n\n### **第二节　申诉**\n\nIST论坛站方可以随着社区管理经验的不断丰富，出于维护IST智能实验室论坛氛围和秩序的目的，不断完善本规定。 如果IST论坛用户对IST论坛基于本规范做出的处理有异议，可以通过联系管理员或在本公告下方回复。',NULL,NULL,NULL,NULL,NULL,NULL),(14,37,1,2,'2022-08-10 17:26:50','# **社区规范**\n\n## **第一章　总则**\n\nIST智能实验室论坛（以下简称IST论坛）致力于提供一个由广大爱好者共同维护的高质量 IST智能实验室技术内容社区。为了保护用户创造的内容、维护良好的社区氛围，IST论坛团队、IST论坛授权的管理员和版主将依据IST论坛用户协议以及本规范中的条款对在IST论坛注册的用户和发布在IST论坛的内容进行管理。采取的措施包括但不限于更改或删除用户所发布的内容、暂停或终止用户使用IST论坛的权利。\n\n所有有意降低内容质量、破坏社区氛围的行为（以下统称「破坏」）都是不可容忍的。多数情况下，社区中的其他用户会优先选择对破坏行为进行劝诫、建议和引导，IST论坛团队也会事先发出警告并给予用户改正自己不当行为的机会，但这并不意味着IST论坛团队会在采取任何措施前必须首先发出警告。\n\n## **第二章　违规行为界定**\n\n### **第一节　违反法律法规**\n\nIST论坛严格遵守中华人民共和国政府颁布的[《互联网信息服务管理办法》](http://www.gov.cn/gongbao/content/2011/content_1860864.htm)第十五条规定、[「七条底线」](https://www.isc.org.cn/zxzx/xhdt/listinfo-27187.html)及[「九不准」](http://www.cac.gov.cn/2000-09/30/c_126193701.htm)等相关法律法规，并将此作为中文站运行的基本准则；\n\n**对于含有以下内容的信息，我们将采取最严格的管理办法，予以杜绝：**\n\n第一条　反对宪法所确定的基本原则的；\n\n第二条　危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\n\n第三条　损害国家荣誉和利益的；\n\n第四条　煽动民族仇恨、民族歧视，破坏民族团结的；\n\n第五条　侮辱、滥用英烈形象，否定英烈事迹，美化粉饰侵略战争行为的；\n\n第六条　破坏国家宗教政策，宣扬邪教和封建迷信的；\n\n第七条　散布谣言，扰乱社会秩序，破坏社会稳定的；\n\n第八条　散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\n\n第九条　煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的；\n\n第十条　侮辱或者诽谤他人，侵害他们合法权益的；\n\n第十一条　含有法律、行政法规禁止的其他内容的。\n\n### **第二节　不友善行为**\n\n**IST论坛维护每一位用户及其所贡献的内容，但不维护行为不友善的用户，因此，请您在做出包括但不限于以下行为前三思：**\n\n第一条　轻蔑：贬低、轻视他人及其劳动成果；\n\n第二条　诽谤：捏造、散布虚假事实，损害他人名誉；\n\n第三条　嘲讽：以比喻、夸张、侮辱性的手法对他人或其行为进行揭露或描述，以此来激怒他人；\n\n第四条　挑衅：以不友好的方式激怒他人，意图使对方对自己的言论作出回应，蓄意制造事端；\n\n第五条　羞辱：贬低他人的能力、行为、生理或身份特征，让对方难堪；\n\n第六条　谩骂：以不文明的语言对他人进行负面评价；\n\n第七条　歧视：针对他人的民族、种族、宗教、性取向、性别、年龄、地域、生理特征等身份或者归类的攻击；\n\n第八条　威胁：许诺以不良的后果来迫使他人服从自己的意志。\n\n### **第三节　垃圾广告**\n\n**多次发布包含售卖产品、提供服务、宣传推广内容的垃圾广告。包括但不限于以下几种形式：**\n\n第一条　使用同一个多次发布包含垃圾广告的内容的；\n\n第二条　使用多个账号互相配合发布包含垃圾广告的内容的；\n\n第三条　多次发布包含欺骗性外链的内容，如未注明的淘宝客链接、跳转网站等，诱骗用户点击链接的；\n\n第四条　发布大量包含 SEO 推广链接、产品、品牌等内容以获取搜索引擎中的不正当曝光的；\n\n**购买或出售帐号之间虚假地互动，发布干扰社区秩序的推广内容及相关交易。包括但不限于以下几种形式：**\n\n第五条　购买机器注册帐号，或人工操控帐号点赞，谋求回复的不正当曝光的；\n\n第六条　使用机器、恶意程序手段或人为有组织性地操控帐号进行点赞、回复等扰乱秩序的；\n\n使用严重影响用户体验的违规手段进行恶意营销。包括但不限于以下几种形式：\n\n第七条　不规范转载或大篇幅转载他人内容同时加入推广营销内容的；\n\n第八条　发布包含欺骗性的恶意营销内容，如通过伪造经历、冒充他人等方式进行恶意营销的；\n\n**其他情况：**\n\n第九条　使用特殊符号、图片等方式规避垃圾广告内容审核的广告内容的；\n\n第十条　恶意注册使用IST论坛账号，包括但不限于机器注册、频繁注册、批量注册、滥用多个IST论坛账号的。\n\n### **第四节　恶意行为**\n\n**请勿滥用社区功能，做出影响用户体验、危及平台安全及损害他人权益的行为。包括但不限于：**\n\n第一条　恶意编辑，指清空或删除有效内容，添加无关信息，破坏内容结构等降低公共编辑内容质量的编辑；\n\n第二条　冒充他人，通过头像、用户名等个人信息暗示自己与他人或机构相等同或有关联；\n\n第三条　诱导投票或关注，如通过点赞抽奖、集赞更新等形式诱导投票或者诱导关注；\n\n第四条　制作及传播外挂或者用于操作帐号功能的恶意程序或相关教程；\n\n第五条　发布含有潜在危险的内容，如钓鱼网站、木马、病毒网站等；\n\n第六条　发布含有暴力、血腥、以及一些含有害人成分的内容。\n\n请勿重复发布干扰正常用户体验的内容。包括但不限于：\n\n第七条　重复的回复内容或多次发布在不同主题下；\n\n第八条　频繁发布难以辨识涵义影响阅读体验的字符、数字等无意义乱码；\n\n第九条　骚扰他人，以回复、@ 他人、留言等方式对他人反复发送重复或者相似的诉求。\n\n### **第五节　色情低俗**\n\n**禁止在主题、回复、签名等用户可编辑发布的内容里，发送与色情内容有关的第三方网址、社交账号、网盘代码等信息，一经发现，我们将对发送此类信息的账号永久封禁。具体情况包括但不限于一下几种形式：**\n\n第一条　包含自己或他人性经验的细节描述或露骨的感受描述的；\n\n第二条　涉及色情段子、两性笑话的低俗内容；\n\n第三条　配图、头图中包含庸俗或挑逗性图片的。\n\n### **第六节　不实信息**\n\n**传播广泛的虚假信息将产生严重的社会影响，请勿发布不实信息，包括但不限于以下几种形式：**\n\n第一条　IST论坛帐号存在伪造身份、冒充他人等行为；\n\n第二条　可能存在事实性错误或者造谣等内容；\n\n第三条　内容中存在事实夸大、伪造虚假经历并存在误导他人。\n\n### **第七节　封建迷信**\n\n**封建迷信具有严重的社会危害，本着回归科学精神，拒绝封建迷信的精神，IST论坛坚决不允许此类信息传播：**\n\n**找人算命、测字、占卜、解梦、化解厄运、使用迷信方式治病的：**\n\n第一条　求推荐算命看相大师；\n\n第二条　针对具体风水等问题进行求助或咨询；\n\n第三条　问自己或他人的八字、六爻、星盘、首相、面相、五行缺失，包括通过占卜方法问婚姻、前程、运势，东西宠物丢了能不能找回、取名改名等；\n\n第四条　解梦类内容；\n\n**宣扬鼓励封建迷信等活动，推广算命等理论知识学习及讨论的：**\n\n第五条　询问某种算命结果、说法是否准确；\n\n第六条　在回答或文章中推荐关注算命、占卜等封建迷信活动。\n\n### **第八节　标题党**\n\n**IST论坛拒绝各种类型的「标题党」，一经发现此类违规标题，我们将予以屏蔽、替换、甚至删除。具体形式包括但不限于：**\n\n第一条　存在各种夸张、猎奇、不合常理的内容表现手法等行为来诱导用户；\n\n第二条　内容与标题之间存在严重不实或者原意扭曲。\n\n## **第三章　违规处理流程**\n\nIST论坛通过管理团队定期、不定期巡查主动发现或用户举报的方式发现违规行为。用户可以使用中文社区内的「举报」功能对涉嫌违规的行为和用户进行举报。违规的信息由管理团队根据本规定直接处理。\n\n### **第一节　违规处罚**\n\n当一个用户发布上述违规内容时，IST论坛将依据相关用户的违规情节严重程度，对帐号进行封禁 1 天、7 天、15 天直至永久封禁的处罚。对于使用IST论坛时间较长，并取得一定社区成就的用户，我们将视违规情节严重程度，酌情减轻处罚。当出现以下恶意行为时，将会收到加重处罚：\n\n第一条　本规定第一章第一节第一至九条所述任一或多个行为；\n\n第二条　通过作弊手段注册、使用的帐号；\n\n第三条　滥用多个IST论坛帐号；\n\n第四条　恶意冒充　实验室有关人员（官方管理团队、论坛开发者等）、IST智能实验室论坛管理团队或学校其他技术类社团。\n\n### **第二节　申诉**\n\nIST论坛站方可以随着社区管理经验的不断丰富，出于维护IST智能实验室论坛氛围和秩序的目的，不断完善本规定。 如果IST论坛用户对IST论坛基于本规范做出的处理有异议，可以通过联系管理员或在本公告下方回复。',NULL,NULL,NULL,NULL,NULL,NULL),(15,37,1,3,'2022-08-10 17:27:35','# **IST智能实验室社区规范**\n\n## **第一章　总则**\n\nIST智能实验室论坛（以下简称IST论坛）致力于提供一个由广大爱好者共同维护的高质量 IST智能实验室技术内容社区。为了保护用户创造的内容、维护良好的社区氛围，IST论坛团队、IST论坛授权的管理员和版主将依据IST论坛用户协议以及本规范中的条款对在IST论坛注册的用户和发布在IST论坛的内容进行管理。采取的措施包括但不限于更改或删除用户所发布的内容、暂停或终止用户使用IST论坛的权利。\n\n所有有意降低内容质量、破坏社区氛围的行为（以下统称「破坏」）都是不可容忍的。多数情况下，社区中的其他用户会优先选择对破坏行为进行劝诫、建议和引导，IST论坛团队也会事先发出警告并给予用户改正自己不当行为的机会，但这并不意味着IST论坛团队会在采取任何措施前必须首先发出警告。\n\n## **第二章　违规行为界定**\n\n### **第一节　违反法律法规**\n\nIST论坛严格遵守中华人民共和国政府颁布的[《互联网信息服务管理办法》](http://www.gov.cn/gongbao/content/2011/content_1860864.htm)第十五条规定、[「七条底线」](https://www.isc.org.cn/zxzx/xhdt/listinfo-27187.html)及[「九不准」](http://www.cac.gov.cn/2000-09/30/c_126193701.htm)等相关法律法规，并将此作为中文站运行的基本准则；\n\n**对于含有以下内容的信息，我们将采取最严格的管理办法，予以杜绝：**\n\n第一条　反对宪法所确定的基本原则的；\n\n第二条　危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\n\n第三条　损害国家荣誉和利益的；\n\n第四条　煽动民族仇恨、民族歧视，破坏民族团结的；\n\n第五条　侮辱、滥用英烈形象，否定英烈事迹，美化粉饰侵略战争行为的；\n\n第六条　破坏国家宗教政策，宣扬邪教和封建迷信的；\n\n第七条　散布谣言，扰乱社会秩序，破坏社会稳定的；\n\n第八条　散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\n\n第九条　煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的；\n\n第十条　侮辱或者诽谤他人，侵害他们合法权益的；\n\n第十一条　含有法律、行政法规禁止的其他内容的。\n\n### **第二节　不友善行为**\n\n**IST论坛维护每一位用户及其所贡献的内容，但不维护行为不友善的用户，因此，请您在做出包括但不限于以下行为前三思：**\n\n第一条　轻蔑：贬低、轻视他人及其劳动成果；\n\n第二条　诽谤：捏造、散布虚假事实，损害他人名誉；\n\n第三条　嘲讽：以比喻、夸张、侮辱性的手法对他人或其行为进行揭露或描述，以此来激怒他人；\n\n第四条　挑衅：以不友好的方式激怒他人，意图使对方对自己的言论作出回应，蓄意制造事端；\n\n第五条　羞辱：贬低他人的能力、行为、生理或身份特征，让对方难堪；\n\n第六条　谩骂：以不文明的语言对他人进行负面评价；\n\n第七条　歧视：针对他人的民族、种族、宗教、性取向、性别、年龄、地域、生理特征等身份或者归类的攻击；\n\n第八条　威胁：许诺以不良的后果来迫使他人服从自己的意志。\n\n### **第三节　垃圾广告**\n\n**多次发布包含售卖产品、提供服务、宣传推广内容的垃圾广告。包括但不限于以下几种形式：**\n\n第一条　使用同一个多次发布包含垃圾广告的内容的；\n\n第二条　使用多个账号互相配合发布包含垃圾广告的内容的；\n\n第三条　多次发布包含欺骗性外链的内容，如未注明的淘宝客链接、跳转网站等，诱骗用户点击链接的；\n\n第四条　发布大量包含 SEO 推广链接、产品、品牌等内容以获取搜索引擎中的不正当曝光的；\n\n**购买或出售帐号之间虚假地互动，发布干扰社区秩序的推广内容及相关交易。包括但不限于以下几种形式：**\n\n第五条　购买机器注册帐号，或人工操控帐号点赞，谋求回复的不正当曝光的；\n\n第六条　使用机器、恶意程序手段或人为有组织性地操控帐号进行点赞、回复等扰乱秩序的；\n\n使用严重影响用户体验的违规手段进行恶意营销。包括但不限于以下几种形式：\n\n第七条　不规范转载或大篇幅转载他人内容同时加入推广营销内容的；\n\n第八条　发布包含欺骗性的恶意营销内容，如通过伪造经历、冒充他人等方式进行恶意营销的；\n\n**其他情况：**\n\n第九条　使用特殊符号、图片等方式规避垃圾广告内容审核的广告内容的；\n\n第十条　恶意注册使用IST论坛账号，包括但不限于机器注册、频繁注册、批量注册、滥用多个IST论坛账号的。\n\n### **第四节　恶意行为**\n\n**请勿滥用社区功能，做出影响用户体验、危及平台安全及损害他人权益的行为。包括但不限于：**\n\n第一条　恶意编辑，指清空或删除有效内容，添加无关信息，破坏内容结构等降低公共编辑内容质量的编辑；\n\n第二条　冒充他人，通过头像、用户名等个人信息暗示自己与他人或机构相等同或有关联；\n\n第三条　诱导投票或关注，如通过点赞抽奖、集赞更新等形式诱导投票或者诱导关注；\n\n第四条　制作及传播外挂或者用于操作帐号功能的恶意程序或相关教程；\n\n第五条　发布含有潜在危险的内容，如钓鱼网站、木马、病毒网站等；\n\n第六条　发布含有暴力、血腥、以及一些含有害人成分的内容。\n\n请勿重复发布干扰正常用户体验的内容。包括但不限于：\n\n第七条　重复的回复内容或多次发布在不同主题下；\n\n第八条　频繁发布难以辨识涵义影响阅读体验的字符、数字等无意义乱码；\n\n第九条　骚扰他人，以回复、@ 他人、留言等方式对他人反复发送重复或者相似的诉求。\n\n### **第五节　色情低俗**\n\n**禁止在主题、回复、签名等用户可编辑发布的内容里，发送与色情内容有关的第三方网址、社交账号、网盘代码等信息，一经发现，我们将对发送此类信息的账号永久封禁。具体情况包括但不限于一下几种形式：**\n\n第一条　包含自己或他人性经验的细节描述或露骨的感受描述的；\n\n第二条　涉及色情段子、两性笑话的低俗内容；\n\n第三条　配图、头图中包含庸俗或挑逗性图片的。\n\n### **第六节　不实信息**\n\n**传播广泛的虚假信息将产生严重的社会影响，请勿发布不实信息，包括但不限于以下几种形式：**\n\n第一条　IST论坛帐号存在伪造身份、冒充他人等行为；\n\n第二条　可能存在事实性错误或者造谣等内容；\n\n第三条　内容中存在事实夸大、伪造虚假经历并存在误导他人。\n\n### **第七节　封建迷信**\n\n**封建迷信具有严重的社会危害，本着回归科学精神，拒绝封建迷信的精神，IST论坛坚决不允许此类信息传播：**\n\n**找人算命、测字、占卜、解梦、化解厄运、使用迷信方式治病的：**\n\n第一条　求推荐算命看相大师；\n\n第二条　针对具体风水等问题进行求助或咨询；\n\n第三条　问自己或他人的八字、六爻、星盘、首相、面相、五行缺失，包括通过占卜方法问婚姻、前程、运势，东西宠物丢了能不能找回、取名改名等；\n\n第四条　解梦类内容；\n\n**宣扬鼓励封建迷信等活动，推广算命等理论知识学习及讨论的：**\n\n第五条　询问某种算命结果、说法是否准确；\n\n第六条　在回答或文章中推荐关注算命、占卜等封建迷信活动。\n\n### **第八节　标题党**\n\n**IST论坛拒绝各种类型的「标题党」，一经发现此类违规标题，我们将予以屏蔽、替换、甚至删除。具体形式包括但不限于：**\n\n第一条　存在各种夸张、猎奇、不合常理的内容表现手法等行为来诱导用户；\n\n第二条　内容与标题之间存在严重不实或者原意扭曲。\n\n## **第三章　违规处理流程**\n\nIST论坛通过管理团队定期、不定期巡查主动发现或用户举报的方式发现违规行为。用户可以使用中文社区内的「举报」功能对涉嫌违规的行为和用户进行举报。违规的信息由管理团队根据本规定直接处理。\n\n### **第一节　违规处罚**\n\n当一个用户发布上述违规内容时，IST论坛将依据相关用户的违规情节严重程度，对帐号进行封禁 1 天、7 天、15 天直至永久封禁的处罚。对于使用IST论坛时间较长，并取得一定社区成就的用户，我们将视违规情节严重程度，酌情减轻处罚。当出现以下恶意行为时，将会收到加重处罚：\n\n第一条　本规定第一章第一节第一至九条所述任一或多个行为；\n\n第二条　通过作弊手段注册、使用的帐号；\n\n第三条　滥用多个IST论坛帐号；\n\n第四条　恶意冒充　实验室有关人员（官方管理团队、论坛开发者等）、IST智能实验室论坛管理团队或学校其他技术类社团。\n\n### **第二节　申诉**\n\nIST论坛站方可以随着社区管理经验的不断丰富，出于维护IST智能实验室论坛氛围和秩序的目的，不断完善本规定。 如果IST论坛用户对IST论坛基于本规范做出的处理有异议，可以通过联系管理员或在本公告下方回复。',NULL,NULL,NULL,NULL,NULL,NULL),(16,37,1,4,'2022-08-10 17:27:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,21,1,3,'2022-08-10 17:29:19','请您仔细阅读以下条款，如果您对本协议的任何条款表示异议，您可以选择不进入IST智能实验室论坛。当您注册成功，无论是进入IST智能实验室论坛，还是在IST智能实验室论坛上发布任何内容（以下简称「内容」），均意味着您（以下简称「用户」）完全接受本协议项下的全部条款。\n\n## 第一章　使用规则\n\n第一条　用户注册成功后，IST智能实验室论坛将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管。用户应当对以其用户帐号进行的所有活动和事件负法律责任。\n\n第二条　用户须对在IST智能实验室论坛的注册信息的真实性、合法性、有效性承担全部责任，用户不得冒充他人；不得利用他人的名义发布任何信息；不得恶意使用注册帐号导致其他用户误认；否则IST智能实验室论坛有权立即停止提供服务，收回其帐号并由用户独自承担由此而产生的一切法律责任。\n\n第三条　用户直接或通过各类方式（如 RSS 源和站外 API 引用等）间接使用 IST智能实验室论坛服务和数据的行为，都将被视作已无条件接受本协议全部内容；若用户对本协议的任何条款存在异议，应当立即停止使用IST智能实验室论坛所提供的全部服务。\n\n第四条　IST智能实验室论坛是一个信息分享、传播及获取的平台，用户通过 IST智能实验室论坛发表的信息为公开的信息，其他第三方均可以通过 IST智能实验室论坛获取用户发表的信息，用户对任何信息的发表即认可该信息为公开的信息，并单独对此行为承担法律责任；任何用户不愿被其他第三人获知的信息都不应该在IST智能实验室论坛上进行发表。\n\n第五条　用户承诺不得以任何方式利用 IST智能实验室论坛直接或间接从事违反中华人民共和国法律以及社会公德的行为，IST智能实验室论坛有权对违反上述承诺的内容予以删除。\n\n第六条　用户不得利用 IST智能实验室论坛服务制作、上载、复制、发布、传播或者转载如下内容：\n\n* 反对宪法所确定的基本原则的；\n\n* 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；\n\n* 损害国家荣誉和利益的；\n\n* 煽动民族仇恨、民族歧视，破坏民族团结的；\n\n* 侮辱、滥用英烈形象，否定英烈事迹，美化粉饰侵略战争行为的；\n\n* 破坏国家宗教政策，宣扬邪教和封建迷信的；\n\n* 散布谣言，扰乱社会秩序，破坏社会稳定的；\n\n* 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；\n\n* 侮辱或者诽谤他人，侵害他人合法权益的；\n\n* 含有法律、行政法规禁止的其他内容的信息。\n\n第七条　所有用户均同意遵守 IST智能实验室论坛社区规范。\n\n第八条　IST智能实验室论坛有权对用户使用IST智能实验室论坛的情况进行审查和监督，如用户在使用 IST智能实验室论坛时违反任何上述规定，IST智能实验室论坛或其授权的人有权要求用户改正或直接采取一切必要的措施（包括但不限于更改或删除用户张贴的内容、暂停或终止用户使用 IST智能实验室论坛的权利）以减轻用户不当行为造成的影响。\n\n## 第二章　知识产权\n\nIST智能实验室论坛是一个信息获取、分享及传播的平台，我们尊重 IST智能实验室论坛用户创作的内容，鼓励用户认识到保护知识产权对 IST智能实验室论坛生存与发展的重要性，承诺将保护知识产权作为 IST智能实验室论坛运营的基本原则之一。\n\n第一条　用户在 IST智能实验室论坛上发表的全部原创内容（包括但不仅限于回答、文章和评论），著作权均归用户本人所有。用户可授权第三方以任何方式使用，不需要得到 IST智能实验室论坛的同意。\n\n第二条　IST智能实验室论坛上可由多人参与翻译的内容，所有参与者均同意相关知识产权归 Flarum 及 IST智能实验室论坛所有。\n\n第三条　IST智能实验室论坛提供的网络服务中包含的标识、版面设计、排版方式、文本、图片、图形等均受著作权、商标权及其它法律保护，未经相关权利人（含 Flarum、IST智能实验室论坛及其他原始权利人）同意，上述内容均不得在任何平台被直接或间接发布、使用、出于发布或使用目的的改写或再发行，或被用于其他任何商业目的。\n\n第四条　为了促进知识的分享和传播，用户将其在 IST智能实验室论坛上发表的全部内容，授予 Flarum 和 IST智能实验室论坛免费的、不可撤销的、非独家使用许可，Flarum 和 IST智能实验室论坛有权将该内容用于 Flarum 或 IST智能实验室论坛各种形态的产品和服务上，包括但不限于网站以及发表的应用或其他互联网产品。\n\n第五条　第三方若出于非商业目的，将用户在 IST智能实验室论坛上发表的内容转载在 IST智能实验室论坛之外的地方，应当在作品的正文开头的显著位置注明原作者姓名（或原作者在 IST智能实验室论坛上使用的帐号名称），并给出原始链接，注明「发表于 IST智能实验室论坛」，并不得对作品进行修改演绎。若需要对作品进行修改，或用于商业目的，第三方应当联系用户获得单独授权，按照用户规定的方式使用该内容。\n\n第六条　IST智能实验室论坛为用户提供「保留所有权利，禁止转载」的选项。除非获得原作者的单独授权，任何第三方不得转载标注了「禁止转载」的内容，否则均视为侵权。\n\n第七条　在 IST智能实验室论坛上传或发表的内容，用户应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益。如果第三方提出关于著作权的异议，IST智能实验室论坛有权根据实际情况删除相关的内容，且有权追究用户的法律责任。给 Flarum 或 IST智能实验室论坛或任何第三方造成损失的，用户应负责全额赔偿。\n\n第八条　如果任何第三方侵犯了 IST智能实验室论坛用户相关的权利，用户同意授权 IST智能实验室论坛或其指定的代理人代表 IST智能实验室论坛自身或用户对该第三方提出警告、投诉、发起行政执法、诉讼、进行上诉，或谈判和解，并且用户同意在 IST智能实验室论坛认为必要的情况下参与共同维权。\n\n第九条　IST智能实验室论坛有权但无义务对用户发布的内容进行审核，有权根据相关证据结合《侵权责任法》、《信息网络传播权保护条例》等法律法规及 IST智能实验室论坛社区指导原则对侵权信息进行处理。\n\n## 第三章　个人隐私\n\n尊重用户个人隐私信息的私有性是 IST智能实验室论坛的一贯原则，IST智能实验室论坛将通过技术手段、强化内部管理等办法充分保护用户的个人隐私信息，除法律或有法律赋予权限的政府部门要求或事先得到用户明确授权等原因外，IST智能实验室论坛保证不对外公开或向第三方透露用户个人隐私信息，或用户在使用服务时存储的非公开内容。同时，为了运营和改善 IST智能实验室论坛的技术与服务，IST智能实验室论坛将可能会自行收集使用或向第三方提供用户的非个人隐私信息，这将有助于 IST智能实验室论坛向用户提供更好的用户体验和服务质量。\n\n您使用或继续使用我们的服务，即意味着同意我们按照 IST智能实验室论坛《IST智能实验室论坛隐私保护指引》收集、使用、储存和分享您的相关信息。详情请参见《IST智能实验室论坛隐私政策》\n\n## 第四章　侵权举报\n\n### 第一节　处理原则\n\nIST智能实验室论坛作为 Flarum 产品及相关衍生知识的讨论社区，高度重视自由表达和个人、企业正当权利的平衡。依照法律规定删除违法信息是 IST智能实验室论坛社区的法定义务，IST智能实验室论坛社区亦未与任何中介机构合作开展此项业务。\n\n### 第二节　受理范围\n\n受理 IST智能实验室论坛社区内侵犯企业或个人合法权益的侵权举报，包括但不限于涉及个人隐私、造谣与诽谤、商业侵权：\n\n第一条　涉及个人隐私：发布内容中直接涉及身份信息，如个人姓名、家庭住址、身份证号码、工作单位、私人电话等详细个人隐私；\n\n第二条　造谣、诽谤：发布内容中指名道姓（包括自然人和企业）的直接谩骂、侮辱、虚构中伤、恶意诽谤等；\n\n第三条　商业侵权：泄露企业商业机密及其他根据保密协议不能公开讨论的内容。\n\n### 第三节　举报条件\n\n用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 及 Flarum中文社区的立场或观点。如果个人或企业发现 IST智能实验室论坛上存在侵犯自身合法权益的内容，可以先尝试与作者取得联系，通过沟通协商解决问题。如您无法联系到作者，或无法通过与作者沟通解决问题，您可通过点击内容下方的举报按钮来向 IST智能实验室论坛平台进行投诉。为了保证问题能够及时有效地处理，请务必提交真实有效、完整清晰的材料，否则投诉将无法受理。您需要向 IST智能实验室论坛提供的投诉材料包括：\n\n* 权利人对涉嫌侵权内容拥有商标权、著作权和 / 或其他依法可以行使权利的权属证明，权属证明通常是营业执照或组织机构代码证；\n\n* 举报人的身份证明，身份证明可以是身份证或护照；\n\n* 如果举报人非权利人，请举报人提供代表权利人进行举报的书面授权证明。\n\n为确保投诉材料的真实性，在侵权举报中，您还需要签署以下法律声明：\n\n* 我本人为所举报内容的合法权利人；\n\n* 我举报的发布在 IST智能实验室论坛社区中的内容侵犯了本人相应的合法权益；\n\n* 如果本侵权举报内容不完全属实，本人将承担由此产生的一切法律责任，并承担和赔偿 IST智能实验室论坛因根据投诉人的通知书对相关帐号的处理而造成的任何损失，包括但不限于 IST智能实验室论坛因向被投诉方赔偿而产生的损失及 IST智能实验室论坛名誉、商誉损害等。\n\n### 第四节　处理流程\n\n第一条　出于网络平台的监督属性，并非所有申请都必须受理。IST智能实验室论坛自收到举报的七个工作日内处理完毕并给出回复。处理期间，不提供任何电话、邮件及其他方式的查询服务。\n\n第二条　出现 IST智能实验室论坛已经删除或处理的内容，但是百度、谷歌等搜索引擎依然可以搜索到的现象，是因为百度、谷歌等搜索引擎自带缓存，此类问题 IST智能实验室论坛无权也无法处理，因此相关申请不予受理。您可以自行联系搜索引擎服务商进行处理。\n\n第三条　此为 IST智能实验室论坛社区唯一的官方侵权投诉渠道，暂不提供其他方式处理此业务。\n\n第四条　用户在 IST智能实验室论坛中的商业行为引发的法律纠纷，由交易双方自行处理，与 IST智能实验室论坛无关。\n\n## 第五章　免责申明\n\n第一条　IST智能实验室论坛不能对用户发表的回答或评论的正确性进行保证。\n\n第二条　用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 及 IST智能实验室论坛的立场或观点。作为内容的发表者，需自行对所发表内容负责，因所发表内容引发的一切纠纷，由该内容的发表者承担全部法律及连带责任。Flarum 及 IST智能实验室论坛不承担任何法律及连带责任。\n\n第三条　IST智能实验室论坛不保证网络服务一定能满足用户的要求，也不保证网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作保证。\n\n第四条　对于因不可抗力或 IST智能实验室论坛不能控制的原因造成的网络服务中断或其它缺陷，Flarum 及 IST智能实验室论坛不承担任何责任，但 IST智能实验室论坛将尽力减少因此而给用户造成的损失和影响。\n\n## 第六章　协议修改\n\n第一条　根据互联网的发展和有关法律、法规及规范性文件的变化，或者因业务发展需要，IST智能实验室论坛有权对本协议的条款作出修改或变更，一旦本协议的内容发生变动，IST智能实验室论坛将会直接在 IST智能实验室论坛网站上公布修改之后的协议内容，同时会通知用户协议内容发生变更，该通知行为视为用户已经知晓修改内容。IST智能实验室论坛也可采用额外的电子邮件或私信的传送方式，提示用户协议条款的修改、服务变更、或其它重要事项。\n\n第二条　如果不同意 IST智能实验室论坛对本协议相关条款所做的修改，用户有权并应当立即停止使用 IST智能实验室论坛。如果用户继续使用 IST智能实验室论坛，则视为用户接受 IST智能实验室论坛对本协议相关条款所做的修改。',NULL,NULL,NULL,NULL,NULL,NULL),(18,21,1,4,'2022-08-10 17:35:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,20,1,0,'2022-08-10 11:08:24','在之前默认的帖子的slug是id+标题，\n举例 `http://exmaple.com/d/123-hello-world`\n\n在本次回复之后统一改成只使用id去展示URL，例如 `/d/123`减少网站URL长度',NULL,NULL,NULL,NULL,NULL,NULL),(20,20,2,1,'2022-08-10 19:15:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `post_edit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_edit_histories_archive`
--

DROP TABLE IF EXISTS `post_edit_histories_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_edit_histories_archive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `archive_no` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `revision_count` smallint(5) unsigned NOT NULL DEFAULT '1',
  `contents` mediumblob,
  PRIMARY KEY (`id`),
  KEY `post_edit_histories_archive_post_id_foreign` (`post_id`),
  CONSTRAINT `post_edit_histories_archive_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_edit_histories_archive`
--

LOCK TABLES `post_edit_histories_archive` WRITE;
/*!40000 ALTER TABLE `post_edit_histories_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_edit_histories_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_likes`
--

DROP TABLE IF EXISTS `post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_likes` (
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `post_likes_user_id_foreign` (`user_id`),
  CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_likes`
--

LOCK TABLES `post_likes` WRITE;
/*!40000 ALTER TABLE `post_likes` DISABLE KEYS */;
INSERT INTO `post_likes` VALUES (17,2,'2022-08-10 08:15:06'),(21,1,'2022-08-10 16:50:39'),(26,2,'2022-08-10 17:04:28');
/*!40000 ALTER TABLE `post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_mentions_post`
--

DROP TABLE IF EXISTS `post_mentions_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_mentions_post` (
  `post_id` int(10) unsigned NOT NULL,
  `mentions_post_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`,`mentions_post_id`),
  KEY `post_mentions_post_mentions_post_id_foreign` (`mentions_post_id`),
  CONSTRAINT `post_mentions_post_mentions_post_id_foreign` FOREIGN KEY (`mentions_post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_mentions_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_mentions_post`
--

LOCK TABLES `post_mentions_post` WRITE;
/*!40000 ALTER TABLE `post_mentions_post` DISABLE KEYS */;
INSERT INTO `post_mentions_post` VALUES (2,1,'2022-08-09 02:44:27'),(8,7,'2022-08-09 07:27:43');
/*!40000 ALTER TABLE `post_mentions_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_mentions_user`
--

DROP TABLE IF EXISTS `post_mentions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_mentions_user` (
  `post_id` int(10) unsigned NOT NULL,
  `mentions_user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`,`mentions_user_id`),
  KEY `post_mentions_user_mentions_user_id_foreign` (`mentions_user_id`),
  CONSTRAINT `post_mentions_user_mentions_user_id_foreign` FOREIGN KEY (`mentions_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_mentions_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_mentions_user`
--

LOCK TABLES `post_mentions_user` WRITE;
/*!40000 ALTER TABLE `post_mentions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_mentions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_reactions`
--

DROP TABLE IF EXISTS `post_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `reaction_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_reactions_post_id_foreign` (`post_id`),
  KEY `post_reactions_user_id_foreign` (`user_id`),
  KEY `post_reactions_reaction_id_foreign` (`reaction_id`),
  CONSTRAINT `post_reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_reactions_reaction_id_foreign` FOREIGN KEY (`reaction_id`) REFERENCES `reactions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_reactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_reactions`
--

LOCK TABLES `post_reactions` WRITE;
/*!40000 ALTER TABLE `post_reactions` DISABLE KEYS */;
INSERT INTO `post_reactions` VALUES (1,2,1,1,NULL,NULL),(2,7,2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `post_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_user`
--

DROP TABLE IF EXISTS `post_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_user` (
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `post_user_user_id_foreign` (`user_id`),
  CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_user`
--

LOCK TABLES `post_user` WRITE;
/*!40000 ALTER TABLE `post_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) unsigned NOT NULL,
  `number` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT ' ',
  `edited_at` datetime DEFAULT NULL,
  `edited_user_id` int(10) unsigned DEFAULT NULL,
  `hidden_at` datetime DEFAULT NULL,
  `hidden_user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `emailed` tinyint(1) NOT NULL DEFAULT '0',
  `auto_mod` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_discussion_id_number_unique` (`discussion_id`,`number`),
  KEY `posts_edited_user_id_foreign` (`edited_user_id`),
  KEY `posts_hidden_user_id_foreign` (`hidden_user_id`),
  KEY `posts_discussion_id_number_index` (`discussion_id`,`number`),
  KEY `posts_discussion_id_created_at_index` (`discussion_id`,`created_at`),
  KEY `posts_user_id_created_at_index` (`user_id`,`created_at`),
  FULLTEXT KEY `content` (`content`) /*!50100 WITH PARSER `ngram` */ ,
  CONSTRAINT `posts_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_edited_user_id_foreign` FOREIGN KEY (`edited_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_hidden_user_id_foreign` FOREIGN KEY (`hidden_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,2,3,'2022-08-09 02:31:06',1,'comment','<r><p><UPL-IMAGE-PREVIEW url=\"https://bbs.ist4102.cloud/assets/files/2022-08-09/1660012251-758539-qq20220809075913.jpg\">[upl-image-preview url=https://bbs.ist4102.cloud/assets/files/2022-08-09/1660012251-758539-qq20220809075913.jpg]</UPL-IMAGE-PREVIEW><br/>\n欢迎来到IST智能实验室论坛&#129321;</p></r>',NULL,NULL,NULL,NULL,'117.140.154.153',0,1,0,0),(2,2,4,'2022-08-09 02:44:27',2,'comment','<r><p>测试回复&#128523; <POSTMENTION discussionid=\"1\" displayname=\"管理员\" id=\"1\" number=\"1\">@\"管理员\"#p1</POSTMENTION></p> </r>',NULL,NULL,NULL,NULL,'117.140.154.153',0,1,0,0),(3,2,1,'2022-08-09 02:50:13',2,'comment','<t><p>大家在使用论坛过程中有问题出现bug的，请在下面留言噢&#128515;</p></t>',NULL,NULL,NULL,NULL,'117.140.154.153',0,1,0,0),(4,2,2,'2022-08-09 02:51:18',2,'discussionStickied','{\"sticky\":true}',NULL,NULL,NULL,NULL,NULL,0,1,0,0),(5,2,5,'2022-08-09 07:06:14',2,'discussionMerged','{\"count\":2,\"titles\":[\"\\u6d4b\\u8bd5\\u53d1\\u5e16\\u5b50\"]}',NULL,NULL,NULL,NULL,NULL,0,1,0,0),(6,3,1,'2022-08-09 07:11:02',2,'comment','<r><p><URL url=\"https://ist4102.cloud\"><s>[</s>实验室导航&#128663;<e>](https://ist4102.cloud)</e></URL><br/>\n<URL url=\"https://guet.ist4102.cloud\"><s>[</s>实验室校园网内导航&#128661;<e>](https://guet.ist4102.cloud)</e></URL><br/>\n<URL url=\"https://guet.ist4102.cloud/drive\"><s>[</s>实验室校园网云盘☁<e>](https://guet.ist4102.cloud/drive)</e></URL></p></r>',NULL,NULL,NULL,NULL,'117.140.154.153',0,1,0,0),(7,4,1,'2022-08-09 07:24:04',5,'comment','<t><p>我要来考实验室</p>\n</t>',NULL,NULL,NULL,NULL,'117.140.153.192',0,1,0,0),(8,4,2,'2022-08-09 07:27:43',2,'comment','<r><p><POSTMENTION discussionid=\"4\" displayname=\"摆烂小冬\" id=\"7\" number=\"1\">@\"摆烂小冬\"#p7</POSTMENTION> 我也要来考实验室</p></r>',NULL,NULL,NULL,NULL,'117.140.154.153',0,1,0,0),(9,2,6,'2022-08-09 07:30:10',2,'discussionStickied','{\"sticky\":false}',NULL,NULL,NULL,NULL,NULL,0,1,0,0),(10,4,3,'2022-08-09 08:03:29',6,'comment','<t><p>我要加入ist</p></t>',NULL,NULL,NULL,NULL,'39.149.153.57',0,1,0,0),(11,4,4,'2022-08-09 08:20:00',2,'discussionMerged','{\"count\":1,\"titles\":[\"\\u62db\\u65b0\\u62db\\u65b0\"]}',NULL,NULL,NULL,NULL,NULL,0,1,0,0),(12,4,5,'2022-08-09 09:59:40',7,'comment','<t><p>我想学人工智能可以吗</p></t>',NULL,NULL,NULL,NULL,'180.136.64.173',0,1,0,0),(14,5,1,'2022-08-09 16:24:47',2,'comment','<r><p><URL title=\"在线评测入口\" url=\"https://oj.ist4102.cloud\"><s>[</s>ISTOJ<e>](https://oj.ist4102.cloud \"在线评测入口\")</e></URL>致力于为在校同学们提供安全、完善、开放的在线评测及题目交流等服务。</p>\n\n<p>点击<URL title=\"在线评测入口\" url=\"https://oj.ist4102.cloud\"><s>[</s>ISTOJ<e>](https://oj.ist4102.cloud \"在线评测入口\")</e></URL>开启你的刷题之旅吧！&#128640;</p>\n\n<p><UPL-IMAGE-PREVIEW url=\"https://bbs.ist4102.cloud/assets/files/2022-08-09/1660062736-17316-image.png\">[upl-image-preview url=https://bbs.ist4102.cloud/assets/files/2022-08-09/1660062736-17316-image.png]</UPL-IMAGE-PREVIEW></p></r>','2022-08-10 05:59:42',2,NULL,NULL,'182.239.102.200',0,1,0,0),(15,5,2,'2022-08-09 16:25:07',2,'discussionStickied','{\"sticky\":true}',NULL,NULL,NULL,NULL,NULL,0,1,0,0),(16,5,3,'2022-08-09 16:47:43',2,'comment','<r><p><UPL-IMAGE-PREVIEW url=\"https://bbs.ist4102.cloud/assets/files/2022-08-09/1660063567-50638-image.png\">[upl-image-preview url=https://bbs.ist4102.cloud/assets/files/2022-08-09/1660063567-50638-image.png]</UPL-IMAGE-PREVIEW></p>\n\n<p>题库持续更新中&#128583;</p></r>',NULL,NULL,NULL,NULL,'117.140.154.153',0,1,0,0),(17,2,7,'2022-08-10 07:37:49',2,'comment','<t><p>测试网页地图生成情况</p></t>',NULL,NULL,NULL,NULL,'117.140.154.153',0,1,0,0),(20,2,8,'2022-08-10 11:08:24',1,'comment','<r><p>在之前默认的帖子的slug是id+标题，<br/>\n举例 <C><s>`</s>http://exmaple.com/d/123-hello-world<e>`</e></C></p>\n\n<p>在本次回复更新统一改成只使用id去展示URL，例如 <C><s>`</s>/d/123<e>`</e></C>减少网站URL长度</p></r>','2022-08-10 19:15:32',2,NULL,NULL,'210.0.158.37',0,1,0,0),(21,8,1,'2022-08-10 15:51:40',1,'comment','<r><p>请您仔细阅读以下条款，如果您对本协议的任何条款表示异议，您可以选择不进入IST智能实验室论坛。当您注册成功，无论是进入IST智能实验室论坛，还是在IST智能实验室论坛上发布任何内容（以下简称「内容」），均意味着您（以下简称「用户」）完全接受本协议项下的全部条款。</p>\n\n<H2><s>## </s>第一章　使用规则</H2>\n\n<p>第一条　用户注册成功后，IST智能实验室论坛将给予每个用户一个用户帐号及相应的密码，该用户帐号和密码由用户负责保管。用户应当对以其用户帐号进行的所有活动和事件负法律责任。</p>\n\n<p>第二条　用户须对在IST智能实验室论坛的注册信息的真实性、合法性、有效性承担全部责任，用户不得冒充他人；不得利用他人的名义发布任何信息；不得恶意使用注册帐号导致其他用户误认；否则IST智能实验室论坛有权立即停止提供服务，收回其帐号并由用户独自承担由此而产生的一切法律责任。</p>\n\n<p>第三条　用户直接或通过各类方式（如 RSS 源和站外 API 引用等）间接使用 IST智能实验室论坛服务和数据的行为，都将被视作已无条件接受本协议全部内容；若用户对本协议的任何条款存在异议，应当立即停止使用IST智能实验室论坛所提供的全部服务。</p>\n\n<p>第四条　IST智能实验室论坛是一个信息分享、传播及获取的平台，用户通过 IST智能实验室论坛发表的信息为公开的信息，其他第三方均可以通过 IST智能实验室论坛获取用户发表的信息，用户对任何信息的发表即认可该信息为公开的信息，并单独对此行为承担法律责任；任何用户不愿被其他第三人获知的信息都不应该在IST智能实验室论坛上进行发表。</p>\n\n<p>第五条　用户承诺不得以任何方式利用 IST智能实验室论坛直接或间接从事违反中华人民共和国法律以及社会公德的行为，IST智能实验室论坛有权对违反上述承诺的内容予以删除。</p>\n\n<p>第六条　用户不得利用 IST智能实验室论坛服务制作、上载、复制、发布、传播或者转载如下内容：</p>\n\n<LIST><LI><s>* </s><p>反对宪法所确定的基本原则的；</p></LI>\n\n<LI><s>* </s><p>危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；</p></LI>\n\n<LI><s>* </s><p>损害国家荣誉和利益的；</p></LI>\n\n<LI><s>* </s><p>煽动民族仇恨、民族歧视，破坏民族团结的；</p></LI>\n\n<LI><s>* </s><p>侮辱、滥用英烈形象，否定英烈事迹，美化粉饰侵略战争行为的；</p></LI>\n\n<LI><s>* </s><p>破坏国家宗教政策，宣扬邪教和封建迷信的；</p></LI>\n\n<LI><s>* </s><p>散布谣言，扰乱社会秩序，破坏社会稳定的；</p></LI>\n\n<LI><s>* </s><p>散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；</p></LI>\n\n<LI><s>* </s><p>侮辱或者诽谤他人，侵害他人合法权益的；</p></LI>\n\n<LI><s>* </s><p>含有法律、行政法规禁止的其他内容的信息。</p></LI></LIST>\n\n<p>第七条　所有用户均同意遵守 IST智能实验室论坛社区规范。</p>\n\n<p>第八条　IST智能实验室论坛有权对用户使用IST智能实验室论坛的情况进行审查和监督，如用户在使用 IST智能实验室论坛时违反任何上述规定，IST智能实验室论坛或其授权的人有权要求用户改正或直接采取一切必要的措施（包括但不限于更改或删除用户张贴的内容、暂停或终止用户使用 IST智能实验室论坛的权利）以减轻用户不当行为造成的影响。</p>\n\n<H2><s>## </s>第二章　知识产权</H2>\n\n<p>IST智能实验室论坛是一个信息获取、分享及传播的平台，我们尊重 IST智能实验室论坛用户创作的内容，鼓励用户认识到保护知识产权对 IST智能实验室论坛生存与发展的重要性，承诺将保护知识产权作为 IST智能实验室论坛运营的基本原则之一。</p>\n\n<p>第一条　用户在 IST智能实验室论坛上发表的全部原创内容（包括但不仅限于回答、文章和评论），著作权均归用户本人所有。用户可授权第三方以任何方式使用，不需要得到 IST智能实验室论坛的同意。</p>\n\n<p>第二条　IST智能实验室论坛上可由多人参与翻译的内容，所有参与者均同意相关知识产权归 Flarum 及 IST智能实验室论坛所有。</p>\n\n<p>第三条　IST智能实验室论坛提供的网络服务中包含的标识、版面设计、排版方式、文本、图片、图形等均受著作权、商标权及其它法律保护，未经相关权利人（含IST智能实验室论坛及其他原始权利人）同意，上述内容均不得在任何平台被直接或间接发布、使用、出于发布或使用目的的改写或再发行，或被用于其他任何商业目的。</p>\n\n<p>第四条　为了促进知识的分享和传播，用户将其在 IST智能实验室论坛上发表的全部内容，授予IST智能实验室论坛免费的、不可撤销的、非独家使用许可， IST智能实验室论坛有权将该内容用于IST智能实验室论坛各种形态的产品和服务上，包括但不限于网站以及发表的应用或其他互联网产品。</p>\n\n<p>第五条　第三方若出于非商业目的，将用户在 IST智能实验室论坛上发表的内容转载在 IST智能实验室论坛之外的地方，应当在作品的正文开头的显著位置注明原作者姓名（或原作者在 IST智能实验室论坛上使用的帐号名称），并给出原始链接，注明「发表于 IST智能实验室论坛」，并不得对作品进行修改演绎。若需要对作品进行修改，或用于商业目的，第三方应当联系用户获得单独授权，按照用户规定的方式使用该内容。</p>\n\n<p>第六条　IST智能实验室论坛为用户提供「保留所有权利，禁止转载」的选项。除非获得原作者的单独授权，任何第三方不得转载标注了「禁止转载」的内容，否则均视为侵权。</p>\n\n<p>第七条　在 IST智能实验室论坛上传或发表的内容，用户应保证其为著作权人或已取得合法授权，并且该内容不会侵犯任何第三方的合法权益。如果第三方提出关于著作权的异议，IST智能实验室论坛有权根据实际情况删除相关的内容，且有权追究用户的法律责任。给IST智能实验室论坛或任何第三方造成损失的，用户应负责全额赔偿。</p>\n\n<p>第八条　如果任何第三方侵犯了IST智能实验室论坛用户相关的权利，用户同意授权 IST智能实验室论坛或其指定的代理人代表IST智能实验室论坛自身或用户对该第三方提出警告、投诉、发起行政执法、诉讼、进行上诉，或谈判和解，并且用户同意在IST智能实验室论坛认为必要的情况下参与共同维权。</p>\n\n<p>第九条    IST智能实验室论坛有权但无义务对用户发布的内容进行审核，有权根据相关证据结合《侵权责任法》、《信息网络传播权保护条例》等法律法规及 IST智能实验室论坛社区指导原则对侵权信息进行处理。</p>\n\n<H2><s>## </s>第三章　个人隐私</H2>\n\n<p>尊重用户个人隐私信息的私有性是 IST智能实验室论坛的一贯原则，IST智能实验室论坛将通过技术手段、强化内部管理等办法充分保护用户的个人隐私信息，除法律或有法律赋予权限的政府部门要求或事先得到用户明确授权等原因外，IST智能实验室论坛保证不对外公开或向第三方透露用户个人隐私信息，或用户在使用服务时存储的非公开内容。同时，为了运营和改善 IST智能实验室论坛的技术与服务，IST智能实验室论坛将可能会自行收集使用或向第三方提供用户的非个人隐私信息，这将有助于 IST智能实验室论坛向用户提供更好的用户体验和服务质量。</p>\n\n<p>您使用或继续使用我们的服务，即意味着同意我们按照 IST智能实验室论坛《IST智能实验室论坛隐私保护指引》收集、使用、储存和分享您的相关信息。详情请参见《IST智能实验室论坛隐私政策》</p>\n\n<H2><s>## </s>第四章　侵权举报</H2>\n\n<H3><s>### </s>第一节　处理原则</H3>\n\n<p>IST智能实验室论坛作为 Flarum 产品及相关衍生知识的讨论社区，高度重视自由表达和个人、企业正当权利的平衡。依照法律规定删除违法信息是 IST智能实验室论坛社区的法定义务，IST智能实验室论坛社区亦未与任何中介机构合作开展此项业务。</p>\n\n<H3><s>### </s>第二节　受理范围</H3>\n\n<p>受理 IST智能实验室论坛社区内侵犯企业或个人合法权益的侵权举报，包括但不限于涉及个人隐私、造谣与诽谤、商业侵权：</p>\n\n<p>第一条　涉及个人隐私：发布内容中直接涉及身份信息，如个人姓名、家庭住址、身份证号码、工作单位、私人电话等详细个人隐私；</p>\n\n<p>第二条　造谣、诽谤：发布内容中指名道姓（包括自然人和企业）的直接谩骂、侮辱、虚构中伤、恶意诽谤等；</p>\n\n<p>第三条　商业侵权：泄露企业商业机密及其他根据保密协议不能公开讨论的内容。</p>\n\n<H3><s>### </s>第三节　举报条件</H3>\n\n<p>用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 技术提供方及IST智能实验室论坛的立场或观点。如果个人或企业发现 IST智能实验室论坛上存在侵犯自身合法权益的内容，可以先尝试与作者取得联系，通过沟通协商解决问题。如您无法联系到作者，或无法通过与作者沟通解决问题，您可通过点击内容下方的举报按钮来向 IST智能实验室论坛平台进行投诉。为了保证问题能够及时有效地处理，请务必提交真实有效、完整清晰的材料，否则投诉将无法受理。您需要向 IST智能实验室论坛提供的投诉材料包括：</p>\n\n<LIST><LI><s>* </s><p>权利人对涉嫌侵权内容拥有商标权、著作权或其他依法可以行使权利的权属证明，权属证明通常是营业执照或组织机构代码证；</p></LI>\n\n<LI><s>* </s><p>举报人的身份证明，身份证明可以是身份证或护照；</p></LI>\n\n<LI><s>* </s><p>如果举报人非权利人，请举报人提供代表权利人进行举报的书面授权证明。</p></LI></LIST>\n\n<p>为确保投诉材料的真实性，在侵权举报中，您还需要签署以下法律声明：</p>\n\n<LIST><LI><s>* </s><p>我本人为所举报内容的合法权利人；</p></LI>\n\n<LI><s>* </s><p>我举报的发布在 IST智能实验室论坛社区中的内容侵犯了本人相应的合法权益；</p></LI>\n\n<LI><s>* </s><p>如果本侵权举报内容不完全属实，本人将承担由此产生的一切法律责任，并承担和赔偿 IST智能实验室论坛因根据投诉人的通知书对相关帐号的处理而造成的任何损失，包括但不限于 IST智能实验室论坛因向被投诉方赔偿而产生的损失及 IST智能实验室论坛名誉、商誉损害等。</p></LI></LIST>\n\n<H3><s>### </s>第四节　处理流程</H3>\n\n<p>第一条　出于网络平台的监督属性，并非所有申请都必须受理。IST智能实验室论坛自收到举报的七个工作日内处理完毕并给出回复。处理期间，不提供任何电话、邮件及其他方式的查询服务。</p>\n\n<p>第二条　出现 IST智能实验室论坛已经删除或处理的内容，但是百度、谷歌等搜索引擎依然可以搜索到的现象，是因为百度、谷歌等搜索引擎自带缓存，此类问题 IST智能实验室论坛无权也无法处理，因此相关申请不予受理。您可以自行联系搜索引擎服务商进行处理。</p>\n\n<p>第三条　此为 IST智能实验室论坛社区唯一的官方侵权投诉渠道，暂不提供其他方式处理此业务。</p>\n\n<p>第四条　用户在 IST智能实验室论坛中的商业行为引发的法律纠纷，由交易双方自行处理，与 IST智能实验室论坛无关。</p>\n\n<H2><s>## </s>第五章　免责申明</H2>\n\n<p>第一条　IST智能实验室论坛不能对用户发表的回答或评论的正确性进行保证。</p>\n\n<p>第二条　用户在 IST智能实验室论坛发表的内容仅表明其个人的立场和观点，并不代表 Flarum 技术提供方及IST智能实验室论坛的立场或观点。作为内容的发表者，需自行对所发表内容负责，因所发表内容引发的一切纠纷，由该内容的发表者承担全部法律及连带责任。Flarum 技术提供方及 IST智能实验室论坛不承担任何法律及连带责任。</p>\n\n<p>第三条　IST智能实验室论坛不保证网络服务一定能满足用户的要求，也不保证网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作保证。</p>\n\n<p>第四条　对于因不可抗力或 IST智能实验室论坛不能控制的原因造成的网络服务中断或其它缺陷，Flarum 技术提供方及 IST智能实验室论坛不承担任何责任，但 IST智能实验室论坛将尽力减少因此而给用户造成的损失和影响。</p>\n\n<H2><s>## </s>第六章　协议修改</H2>\n\n<p>第一条　根据互联网的发展和有关法律、法规及规范性文件的变化，或者因业务发展需要，IST智能实验室论坛有权对本协议的条款作出修改或变更，一旦本协议的内容发生变动，IST智能实验室论坛将会直接在 IST智能实验室论坛网站上公布修改之后的协议内容，同时会通知用户协议内容发生变更，该通知行为视为用户已经知晓修改内容。IST智能实验室论坛也可采用额外的电子邮件或私信的传送方式，提示用户协议条款的修改、服务变更、或其它重要事项。</p>\n\n<p>第二条　如果不同意 IST智能实验室论坛对本协议相关条款所做的修改，用户有权并应当立即停止使用 IST智能实验室论坛。如果用户继续使用 IST智能实验室论坛，则视为用户接受 IST智能实验室论坛对本协议相关条款所做的修改。</p></r>','2022-08-10 17:35:00',1,NULL,NULL,'182.91.38.53',0,1,0,0),(25,4,6,'2022-08-10 16:07:48',1,'discussionStickied','{\"sticky\":true}',NULL,NULL,NULL,NULL,NULL,0,1,0,0),(26,9,1,'2022-08-10 16:44:46',1,'comment','<r><p>图片水印<UPL-IMAGE-PREVIEW url=\"https://bbs.ist4102.cloud/assets/files/2022-08-10/1660149809-340019-v2-579a1137afd4fba5bdb6bdb7591e8400-r.jpg\">[upl-image-preview url=https://bbs.ist4102.cloud/assets/files/2022-08-10/1660149809-340019-v2-579a1137afd4fba5bdb6bdb7591e8400-r.jpg]</UPL-IMAGE-PREVIEW></p></r>',NULL,NULL,NULL,NULL,'182.91.38.53',0,1,0,0),(27,9,2,'2022-08-10 16:44:46',1,'recipientsModified','{\"new\":{\"users\":[1,2],\"groups\":[]},\"old\":{\"users\":[],\"groups\":[]}}',NULL,NULL,NULL,NULL,NULL,0,1,0,0),(28,5,4,'2022-08-10 16:51:17',1,'discussionTagged','[[2,8],[8]]',NULL,NULL,NULL,NULL,NULL,0,1,0,0),(29,9,3,'2022-08-10 17:04:01',2,'comment','<t><p>测试推送</p></t>',NULL,NULL,NULL,NULL,'182.91.38.53',0,1,0,0),(30,9,4,'2022-08-10 17:04:43',2,'comment','<t><p>测试推送2</p></t>',NULL,NULL,NULL,NULL,'182.91.38.53',0,1,0,0),(34,5,5,'2022-08-10 17:08:42',2,'comment','<t><p>测试推送</p></t>',NULL,NULL,'2022-08-10 17:08:49',2,'182.91.38.53',0,1,0,0),(35,2,9,'2022-08-10 17:10:38',2,'comment','<r><p><UPL-IMAGE-PREVIEW url=\"https://bbs.ist4102.cloud/assets/files/2022-08-10/1660151389-224295-image.png\">[upl-image-preview url=https://bbs.ist4102.cloud/assets/files/2022-08-10/1660151389-224295-image.png]</UPL-IMAGE-PREVIEW></p>\n\n<p>实时推送功能已发布</p></r>',NULL,NULL,NULL,NULL,'182.91.38.53',0,1,0,0),(36,2,10,'2022-08-10 17:11:17',2,'discussionRenamed','[\"\\u8bba\\u575bBUG\\u53cd\\u9988\",\"\\u8bba\\u575bBUG\\u53cd\\u9988\\u53ca\\u65b0\\u529f\\u80fd\\u53d1\\u5e03\"]',NULL,NULL,NULL,NULL,NULL,0,1,0,0),(37,11,1,'2022-08-10 17:24:47',1,'comment','<r><H2><s>## </s><STRONG><s>**</s>第一章　总则<e>**</e></STRONG></H2>\n\n<p>IST智能实验室论坛（以下简称IST论坛）致力于提供一个由广大爱好者共同维护的高质量 IST智能实验室技术内容社区。为了保护用户创造的内容、维护良好的社区氛围，IST论坛团队、IST论坛授权的管理员和版主将依据IST论坛用户协议以及本规范中的条款对在IST论坛注册的用户和发布在IST论坛的内容进行管理。采取的措施包括但不限于更改或删除用户所发布的内容、暂停或终止用户使用IST论坛的权利。</p>\n\n<p>所有有意降低内容质量、破坏社区氛围的行为（以下统称「破坏」）都是不可容忍的。多数情况下，社区中的其他用户会优先选择对破坏行为进行劝诫、建议和引导，IST论坛团队也会事先发出警告并给予用户改正自己不当行为的机会，但这并不意味着IST论坛团队会在采取任何措施前必须首先发出警告。</p>\n\n<H2><s>## </s><STRONG><s>**</s>第二章　违规行为界定<e>**</e></STRONG></H2>\n\n<H3><s>### </s><STRONG><s>**</s>第一节　违反法律法规<e>**</e></STRONG></H3>\n\n<p>IST论坛严格遵守中华人民共和国政府颁布的<URL url=\"http://www.gov.cn/gongbao/content/2011/content_1860864.htm\"><s>[</s>《互联网信息服务管理办法》<e>](http://www.gov.cn/gongbao/content/2011/content_1860864.htm)</e></URL>第十五条规定、<URL url=\"https://www.isc.org.cn/zxzx/xhdt/listinfo-27187.html\"><s>[</s>「七条底线」<e>](https://www.isc.org.cn/zxzx/xhdt/listinfo-27187.html)</e></URL>及<URL url=\"http://www.cac.gov.cn/2000-09/30/c_126193701.htm\"><s>[</s>「九不准」<e>](http://www.cac.gov.cn/2000-09/30/c_126193701.htm)</e></URL>等相关法律法规，并将此作为中文站运行的基本准则；</p>\n\n<p><STRONG><s>**</s>对于含有以下内容的信息，我们将采取最严格的管理办法，予以杜绝：<e>**</e></STRONG></p>\n\n<p>第一条　反对宪法所确定的基本原则的；</p>\n\n<p>第二条　危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；</p>\n\n<p>第三条　损害国家荣誉和利益的；</p>\n\n<p>第四条　煽动民族仇恨、民族歧视，破坏民族团结的；</p>\n\n<p>第五条　侮辱、滥用英烈形象，否定英烈事迹，美化粉饰侵略战争行为的；</p>\n\n<p>第六条　破坏国家宗教政策，宣扬邪教和封建迷信的；</p>\n\n<p>第七条　散布谣言，扰乱社会秩序，破坏社会稳定的；</p>\n\n<p>第八条　散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；</p>\n\n<p>第九条　煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的；</p>\n\n<p>第十条　侮辱或者诽谤他人，侵害他们合法权益的；</p>\n\n<p>第十一条　含有法律、行政法规禁止的其他内容的。</p>\n\n<H3><s>### </s><STRONG><s>**</s>第二节　不友善行为<e>**</e></STRONG></H3>\n\n<p><STRONG><s>**</s>IST论坛维护每一位用户及其所贡献的内容，但不维护行为不友善的用户，因此，请您在做出包括但不限于以下行为前三思：<e>**</e></STRONG></p>\n\n<p>第一条　轻蔑：贬低、轻视他人及其劳动成果；</p>\n\n<p>第二条　诽谤：捏造、散布虚假事实，损害他人名誉；</p>\n\n<p>第三条　嘲讽：以比喻、夸张、侮辱性的手法对他人或其行为进行揭露或描述，以此来激怒他人；</p>\n\n<p>第四条　挑衅：以不友好的方式激怒他人，意图使对方对自己的言论作出回应，蓄意制造事端；</p>\n\n<p>第五条　羞辱：贬低他人的能力、行为、生理或身份特征，让对方难堪；</p>\n\n<p>第六条　谩骂：以不文明的语言对他人进行负面评价；</p>\n\n<p>第七条　歧视：针对他人的民族、种族、宗教、性取向、性别、年龄、地域、生理特征等身份或者归类的攻击；</p>\n\n<p>第八条　威胁：许诺以不良的后果来迫使他人服从自己的意志。</p>\n\n<H3><s>### </s><STRONG><s>**</s>第三节　垃圾广告<e>**</e></STRONG></H3>\n\n<p><STRONG><s>**</s>多次发布包含售卖产品、提供服务、宣传推广内容的垃圾广告。包括但不限于以下几种形式：<e>**</e></STRONG></p>\n\n<p>第一条　使用同一个多次发布包含垃圾广告的内容的；</p>\n\n<p>第二条　使用多个账号互相配合发布包含垃圾广告的内容的；</p>\n\n<p>第三条　多次发布包含欺骗性外链的内容，如未注明的淘宝客链接、跳转网站等，诱骗用户点击链接的；</p>\n\n<p>第四条　发布大量包含 SEO 推广链接、产品、品牌等内容以获取搜索引擎中的不正当曝光的；</p>\n\n<p><STRONG><s>**</s>购买或出售帐号之间虚假地互动，发布干扰社区秩序的推广内容及相关交易。包括但不限于以下几种形式：<e>**</e></STRONG></p>\n\n<p>第五条　购买机器注册帐号，或人工操控帐号点赞，谋求回复的不正当曝光的；</p>\n\n<p>第六条　使用机器、恶意程序手段或人为有组织性地操控帐号进行点赞、回复等扰乱秩序的；</p>\n\n<p>使用严重影响用户体验的违规手段进行恶意营销。包括但不限于以下几种形式：</p>\n\n<p>第七条　不规范转载或大篇幅转载他人内容同时加入推广营销内容的；</p>\n\n<p>第八条　发布包含欺骗性的恶意营销内容，如通过伪造经历、冒充他人等方式进行恶意营销的；</p>\n\n<p><STRONG><s>**</s>其他情况：<e>**</e></STRONG></p>\n\n<p>第九条　使用特殊符号、图片等方式规避垃圾广告内容审核的广告内容的；</p>\n\n<p>第十条　恶意注册使用IST论坛账号，包括但不限于机器注册、频繁注册、批量注册、滥用多个IST论坛账号的。</p>\n\n<H3><s>### </s><STRONG><s>**</s>第四节　恶意行为<e>**</e></STRONG></H3>\n\n<p><STRONG><s>**</s>请勿滥用社区功能，做出影响用户体验、危及平台安全及损害他人权益的行为。包括但不限于：<e>**</e></STRONG></p>\n\n<p>第一条　恶意编辑，指清空或删除有效内容，添加无关信息，破坏内容结构等降低公共编辑内容质量的编辑；</p>\n\n<p>第二条　冒充他人，通过头像、用户名等个人信息暗示自己与他人或机构相等同或有关联；</p>\n\n<p>第三条　诱导投票或关注，如通过点赞抽奖、集赞更新等形式诱导投票或者诱导关注；</p>\n\n<p>第四条　制作及传播外挂或者用于操作帐号功能的恶意程序或相关教程；</p>\n\n<p>第五条　发布含有潜在危险的内容，如钓鱼网站、木马、病毒网站等；</p>\n\n<p>第六条　发布含有暴力、血腥、以及一些含有害人成分的内容。</p>\n\n<p>请勿重复发布干扰正常用户体验的内容。包括但不限于：</p>\n\n<p>第七条　重复的回复内容或多次发布在不同主题下；</p>\n\n<p>第八条　频繁发布难以辨识涵义影响阅读体验的字符、数字等无意义乱码；</p>\n\n<p>第九条　骚扰他人，以回复、@ 他人、留言等方式对他人反复发送重复或者相似的诉求。</p>\n\n<H3><s>### </s><STRONG><s>**</s>第五节　色情低俗<e>**</e></STRONG></H3>\n\n<p><STRONG><s>**</s>禁止在主题、回复、签名等用户可编辑发布的内容里，发送与色情内容有关的第三方网址、社交账号、网盘代码等信息，一经发现，我们将对发送此类信息的账号永久封禁。具体情况包括但不限于一下几种形式：<e>**</e></STRONG></p>\n\n<p>第一条　包含自己或他人性经验的细节描述或露骨的感受描述的；</p>\n\n<p>第二条　涉及色情段子、两性笑话的低俗内容；</p>\n\n<p>第三条　配图、头图中包含庸俗或挑逗性图片的。</p>\n\n<H3><s>### </s><STRONG><s>**</s>第六节　不实信息<e>**</e></STRONG></H3>\n\n<p><STRONG><s>**</s>传播广泛的虚假信息将产生严重的社会影响，请勿发布不实信息，包括但不限于以下几种形式：<e>**</e></STRONG></p>\n\n<p>第一条　IST论坛帐号存在伪造身份、冒充他人等行为；</p>\n\n<p>第二条　可能存在事实性错误或者造谣等内容；</p>\n\n<p>第三条　内容中存在事实夸大、伪造虚假经历并存在误导他人。</p>\n\n<H3><s>### </s><STRONG><s>**</s>第七节　封建迷信<e>**</e></STRONG></H3>\n\n<p><STRONG><s>**</s>封建迷信具有严重的社会危害，本着回归科学精神，拒绝封建迷信的精神，IST论坛坚决不允许此类信息传播：<e>**</e></STRONG></p>\n\n<p><STRONG><s>**</s>找人算命、测字、占卜、解梦、化解厄运、使用迷信方式治病的：<e>**</e></STRONG></p>\n\n<p>第一条　求推荐算命看相大师；</p>\n\n<p>第二条　针对具体风水等问题进行求助或咨询；</p>\n\n<p>第三条　问自己或他人的八字、六爻、星盘、首相、面相、五行缺失，包括通过占卜方法问婚姻、前程、运势，东西宠物丢了能不能找回、取名改名等；</p>\n\n<p>第四条　解梦类内容；</p>\n\n<p><STRONG><s>**</s>宣扬鼓励封建迷信等活动，推广算命等理论知识学习及讨论的：<e>**</e></STRONG></p>\n\n<p>第五条　询问某种算命结果、说法是否准确；</p>\n\n<p>第六条　在回答或文章中推荐关注算命、占卜等封建迷信活动。</p>\n\n<H3><s>### </s><STRONG><s>**</s>第八节　标题党<e>**</e></STRONG></H3>\n\n<p><STRONG><s>**</s>IST论坛拒绝各种类型的「标题党」，一经发现此类违规标题，我们将予以屏蔽、替换、甚至删除。具体形式包括但不限于：<e>**</e></STRONG></p>\n\n<p>第一条　存在各种夸张、猎奇、不合常理的内容表现手法等行为来诱导用户；</p>\n\n<p>第二条　内容与标题之间存在严重不实或者原意扭曲。</p>\n\n<H2><s>## </s><STRONG><s>**</s>第三章　违规处理流程<e>**</e></STRONG></H2>\n\n<p>IST论坛通过管理团队定期、不定期巡查主动发现或用户举报的方式发现违规行为。用户可以使用中文社区内的「举报」功能对涉嫌违规的行为和用户进行举报。违规的信息由管理团队根据本规定直接处理。</p>\n\n<H3><s>### </s><STRONG><s>**</s>第一节　违规处罚<e>**</e></STRONG></H3>\n\n<p>当一个用户发布上述违规内容时，IST论坛将依据相关用户的违规情节严重程度，对帐号进行封禁 1 天、7 天、15 天直至永久封禁的处罚。对于使用IST论坛时间较长，并取得一定社区成就的用户，我们将视违规情节严重程度，酌情减轻处罚。当出现以下恶意行为时，将会收到加重处罚：</p>\n\n<p>第一条　本规定第一章第一节第一至九条所述任一或多个行为；</p>\n\n<p>第二条　通过作弊手段注册、使用的帐号；</p>\n\n<p>第三条　滥用多个IST论坛帐号；</p>\n\n<p>第四条　恶意冒充　实验室有关人员（官方管理团队、论坛开发者等）、IST智能实验室论坛管理团队或学校其他技术类社团。</p>\n\n<H3><s>### </s><STRONG><s>**</s>第二节　申诉<e>**</e></STRONG></H3>\n\n<p>IST论坛站方可以随着社区管理经验的不断丰富，出于维护IST智能实验室论坛氛围和秩序的目的，不断完善本规定。 如果IST论坛用户对IST论坛基于本规范做出的处理有异议，可以通过联系管理员或在本公告下方回复。</p></r>','2022-08-10 17:27:57',1,NULL,NULL,'182.91.38.53',0,1,0,0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reactions`
--

DROP TABLE IF EXISTS `reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `display` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reactions`
--

LOCK TABLES `reactions` WRITE;
/*!40000 ALTER TABLE `reactions` DISABLE KEYS */;
INSERT INTO `reactions` VALUES (1,'thumbsup','emoji',1,NULL),(2,'thumbsdown','emoji',1,NULL),(3,'laughing','emoji',1,NULL),(4,'confused','emoji',1,NULL),(5,'heart','emoji',1,NULL),(6,'tada','emoji',1,NULL);
/*!40000 ALTER TABLE `reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipients`
--

DROP TABLE IF EXISTS `recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `group_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `removed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipients_user_id_foreign` (`user_id`),
  KEY `recipients_group_id_foreign` (`group_id`),
  KEY `recipients_removed_at_index` (`removed_at`),
  KEY `recipients_discussion_id_user_id_index` (`discussion_id`,`user_id`),
  KEY `recipients_discussion_id_group_id_index` (`discussion_id`,`group_id`),
  CONSTRAINT `recipients_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recipients_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recipients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipients`
--

LOCK TABLES `recipients` WRITE;
/*!40000 ALTER TABLE `recipients` DISABLE KEYS */;
INSERT INTO `recipients` VALUES (1,9,1,NULL,NULL,NULL,NULL),(2,9,2,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_tokens`
--

DROP TABLE IF EXISTS `registration_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_tokens` (
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_attributes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_tokens`
--

LOCK TABLES `registration_tokens` WRITE;
/*!40000 ALTER TABLE `registration_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('afrux-forum-widgets-core.config','{\"instances\":[{\"id\":\"afrux-news-widget:news\",\"extension\":\"afrux-news-widget\",\"key\":\"news\",\"placement\":\"top\",\"position\":0},{\"id\":\"justoverclock-welcomebox:WelcomeBoxWdg\",\"extension\":\"justoverclock-welcomebox\",\"key\":\"WelcomeBoxWdg\",\"placement\":\"start_top\",\"position\":0},{\"id\":\"justoverclock-hot-discussions:discHot\",\"extension\":\"justoverclock-hot-discussions\",\"key\":\"discHot\",\"placement\":\"end\",\"position\":0},{\"id\":\"afrux-online-users-widget:onlineUsers\",\"extension\":\"afrux-online-users-widget\",\"key\":\"onlineUsers\",\"placement\":\"end\",\"position\":1},{\"id\":\"afrux-top-posters-widget:topPosters\",\"extension\":\"afrux-top-posters-widget\",\"key\":\"topPosters\",\"placement\":\"end\",\"position\":2}]}'),('afrux-forum-widgets-core.prefer_data_with_initial_load','0'),('afrux-news-widget.lines','[\"本论坛与8月9号正式上线，之后有关招新与技术交流都会发布在该论坛上，多多注册支持~\",\"论坛基于标签化分类，每个人都可以发布不同标签主题，并在主题下面发布你的内容噢\",\"偷偷告诉你，该论坛也有私人发布主题博客的功能噢(*^_^*)\"]'),('afrux-online-users-widget.max_users','15'),('afrux-theme-base.footer_bottom_line',''),('afrux-theme-base.footer_description',''),('afrux-theme-base.hero_banner','afrux_banner-lknoswuy.png'),('afrux-theme-base.hero_banner_position',''),('afrux-theme-base.illuminateVersion','{\"value\":\"v8.83.23\",\"lastComposerUpdate\":1660128793}'),('allow_post_editing','reply'),('allow_renaming','10'),('allow_sign_up','1'),('askvortsov-rich-text.toggle_on_editor','1'),('blog_add_hero','1'),('blog_add_sidebar_nav','1'),('blog_allow_comments','1'),('blog_category_hierarchy','1'),('blog_default_image_path','blog-default-kqjpmndv.png'),('blog_featured_count','4'),('blog_filter_discussion_list','0'),('blog_hide_tags','0'),('blog_redirects_enabled','both'),('blog_requires_review','0'),('blog_tags','9|2'),('blomstra.welcome-login.only-mobile','1'),('catch-the-fish.alertRound','1'),('catch-the-fish.animateFlip','1'),('catch-the-fish.autoPlacedAfterMinutes','5'),('catch-the-fish.discussionAgeDays','14'),('catch-the-fish.discussionTags',''),('catch-the-fish.postAgeDays','14'),('catch-the-fish.postProbability','50'),('catch-the-fish.userAgeDays','14'),('catch-the-fish.userProbability','100'),('clarkwinkelmann-emojionearea.enable-recent','1'),('clarkwinkelmann-emojionearea.enable-search','1'),('clarkwinkelmann-emojionearea.enable-tones','1'),('clarkwinkelmann-emojionearea.filters-position-bottom','1'),('clarkwinkelmann-emojionearea.hide-flarum-button','1'),('clarkwinkelmann-emojionearea.search-position-bottom','1'),('custom_footer','<!doctype html>\n<!-- 外链跳转 -->\n<script>\n    document.addEventListener(\'click\', event => {\n        let t = event.target;\n        if (t.matches(\'.Post-body a\')) {\n            let url = new URL(t.href);\n            if (url.origin == document.location.origin) {\n                t.removeAttribute(\'target\');\n                t.removeAttribute(\'rel\');\n            }else{\n                t.setAttribute(\'target\', \'_blank\');\n            }\n        }\n    }, false);\n</script>\n\n<!-- 百度站长 -->\n<script>\n    (function () {\n        var bp = document.createElement(\'script\');\n        var curProtocol = window.location.protocol.split(\':\')[0];\n        if (curProtocol === \'https\') {\n            bp.src = \'https://zz.bdstatic.com/linksubmit/push.js\';\n        } else {\n            bp.src = \'http://push.zhanzhang.baidu.com/push.js\';\n        }\n        var s = document.getElementsByTagName(\"script\")[0];\n        s.parentNode.insertBefore(bp, s);\n    })();\n</script>\n\n<script>\n    window.onload = function () {\n        $(\'.Afrux-NewsWidget-line\').each((i, item) => {\n            let match = item.innerHTML.match(\'[a-zA-z]+://[^\\s]*\');\n            if (math) {\n                $(item).html(`<a href=\"${match.input.substring(match.index)}\" style=\"display:flex;align-items:center;\">${match.input.substring(0, match.index).trim()} <svg xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" x=\"0px\" y=\"0px\" viewBox=\"0 0 100 100\" width=\"15\" height=\"15\" class=\"icon outbound\"><path fill=\"currentColor\" d=\"M18.8,85.1h56l0,0c2.2,0,4-1.8,4-4v-32h-8v28h-48v-48h28v-8h-32l0,0c-2.2,0-4,1.8-4,4v56C14.8,83.3,16.6,85.1,18.8,85.1z\"></path> <polygon fill=\"currentColor\" points=\"45.7,48.7 51.3,54.3 77.2,28.5 77.2,37.2 85.2,37.2 85.2,14.9 62.8,14.9 62.8,22.9 71.5,22.9\"></polygon></svg></a>`)\n            }\n        })\n    }\n</script>\n\n<!-- 页脚 -->\n<footer>\n    <div class=\"site-footer\">\n        <div style=\"color: rgb(137, 137, 140);font-size:0.9em;\" class=\"footer-container rm-link-color\">\n            <p>\n                <!-- 加载时间 -->\n                <script>\n                    var start_time = new Date();\n                    var end_time = \"\";\n                    var loadt = setInterval(function () {\n                        if (document.readyState == \"complete\") {\n                            showLoadTime();\n                        }\n                    }, 500)\n\n                    function showLoadTime() {\n                        end_time = new Date();\n                        loadtime_span.innerHTML = \"T \" + (end_time.getTime() - start_time.getTime()) + \" ms\";\n                        clearInterval(loadt);\n                    }\n                </script>\n                <!-- IP -->\n				<span id=\"ip_span\" align=center></span>\n                <script src=\"https://pv.sohu.com/cityjson?ie=utf-8\"></script>\n                <script type=\"text/javascript\">\n                    ip_span.innerHTML = returnCitySN[\"cname\"] + \" \" + returnCitySN[\"cip\"];\n                </script>\n\n                <span class=\"mx-2\">|</span>\n\n                <span id=\"loadtime_span\">T</span>\n\n                <span class=\"mx-2\">|</span>\n\n                <a id=\"stats\" href=\"https://stats.uptimerobot.com/QAL8xc6m8y\" target=\"_blank\"></a>\n\n            </p>\n            <p>\n                <a id=\"prot_span\" href=\"https://bbs.ist4102.cloud/blog/11\"></a>\n\n                <span class=\"mx-2\">|</span>\n\n                <a id=\"rept_span\" href=\"mailto:wrm244@qq.com\"></a>\n\n                <span class=\"mx-2\">|</span>\n\n                <span id=\"ver_span\"></span>\n				<p id=\"right_span\"></p>\n            </p>\n            <!-- 声明 -->\n            <script type=\"text/javascript\">\n                var site_version = \"1.1.0\";\n                var lang = document.getElementsByTagName(\"html\");\n                var userLang = lang[0].getAttribute(\"lang\");\n                if (userLang.includes(\"zh\")) {\n					stats.innerHTML = \"状态\";\n                    prot_span.innerHTML = \"社区规范\";\n                    rept_span.innerHTML = \"违法和不良信息举报\";\n                    ver_span.innerHTML = \"基于Flarum设计 \" + site_version;\n                    right_span.innerHTML = \"Copyright © ISTSMART 2022 <a href=\\\"https://beian.miit.gov.cn/\\\"><i class=\\\"fas fa-info-circle\\\"></i>闽ICP备2022007651号</a>\";\n                }\n                else {\n					stats.innerHTML = \"Status\";\n                    prot_span.innerHTML = \"Protocol\";\n                    rept_span.innerHTML = \"Report\";\n                    ver_span.innerHTML = \"Version \" + site_version;\n                   right_span.innerHTML = \"This site operates independently of the Flarum Foundation. Read more about <a href=\\\"https://flarum.org/verified-communities\\\"><i class=\\\"fas fa-info-circle\\\"></i> verified communities</a>.\";\n                }\n            </script>\n        </div>\n    </div>\n    <div id=\"flyfish\" class=\"fly-fish\" height=\"200\"></div>\n</footer>\n\n<script src=\"/fish.js\"></script>'),('custom_header',''),('custom_less','.site-footer {\n	margin:0;\n	/*margin-top:64px;*/\n	padding-top:30px;\n	padding-bottom:30px;\n	color:hsla(0,0%,100%,.9);\n	box-sizing:inherit;\n	text-align:center;\n	font-size:1em\n}\n@media (max-width:991px){\n    .site-footer {\n	padding-top:0px;\n    }\n}\n.site-footer p {\n	margin:0\n}\n.rm-link-color > p > a {\n	text-decoration:none;\n	color:#89898c\n}\n.rm-link-color > p > a:hover {\n	text-decoration:underline\n}\n\n.fly-fish{\n    z-index: -1;\n    line-height: 0px;\n    height: 350px;\n}\nfooter{\n    position: relative;\n}\n.site-footer{\n    position: absolute;\n    width: 100%;\n    top: calc(100% / 4 * 3);\n    transform: translateY(calc(-50% + 10%));\n    padding: 0;\n}\n\n.App{\n    padding-bottom: 0;\n}\n@media (max-width: 767px){\n    .App{\n        padding-bottom: 0;\n    }\n    .App-content {\n        padding-bottom: 0;\n    }\n}\n/* 背景 */\n/*@media (min-width: 992px) {\nbackground: url(\"https://api.yimian.xyz/img?type=moe&R18=true&?size=720-*x*\");\n\nbackground-repeat:no-repeat;\nbackground-attachment:fixed;\nbackground-position: center;\nbackground-size: cover;\n\n}\n*/\n\n\n/* 滚动条优化 */\n\n/* 滚动条高宽及背景 高宽分别对应横竖滚动条的尺寸 */\n::-webkit-scrollbar\n{\n    width: 5px;\n    height: 5px;\n    background-color: rgba(0,0,0,0.0);\n    backdrop-filter: blur(10px);\n}\n \n/* 滚动条轨道 */\n::-webkit-scrollbar-track\n{\n    /*-webkit-box-shadow: inset 0 0 6px rgb(0 0 0 / 30%);*/\n    background-color: rgba(0,0,0,0.3);\n    backdrop-filter: blur(10px);\n}\n \n/* 滑块 */\n::-webkit-scrollbar-thumb\n{\n    background-color: rgba(51, 102, 255, 1);\n}\n\n\n/* 取消横幅关闭 */\n/*.Hero-close {\n display:none;\n}*/\n\n/* 发帖按钮 */\n.IndexPage-newDiscussion {\n    background: linear-gradient(124deg, #35C0F0, #3366FF);\n    color: #fff;\n}\n.IndexPage-newDiscussion when (@config-dark-mode = true) {\n    background: linear-gradient(124deg, #00276e, #0007db);\n    color: #fff;\n}\n\n\n/* 搜索高亮 */\nmark {\n    background: #FFE300 !important;\n    padding: 2px 7px;\n    border-radius: 7px;\n    box-shadow: 0px 1px 5px rgba(0,0,0,0.2) !important;\n    margin: 3px;\n    /* margin-left: 2.5px; */\n    /* margin-right: 2.5px; */\n    color: black !important;\n}\nmark when (@config-dark-mode = true) {\n    background: #0072ff !important;\n    padding: 2px 7px;\n    border-radius: 7px;\n    box-shadow: 0px 1px 5px rgba(0,0,0,0.2) !important;\n    margin: 3px;\n    /* margin-left: 2.5px; */\n    /* margin-right: 2.5px; */\n    color: white !important;\n}\n\n/* 玄学优化 */\n.DiscussionListItem-title {line-height: 1.9;}\n\n\n/* 移动端隐藏 */\n@media screen and (max-width: 1200px) {\n.item-onlineUsers{display:none!important;}\n.item-forumStatisticsWidget{display:none!important;}\n.item-lastDiscussionViewers{display:none!important;}\n}\n\n\n/* Hero 优化 */\n.carousel__slide-title {\n    font-size: 35px!important;\n    line-height: 1!important;\n}\n.carousel__slide-description {\n    margin: 0.4rem auto 0!important;\n    line-height: 0.9!important;\n}\n.carousel__slide-button {\n    border: 3px solid #fff!important;\n    border-radius: 8px!important;\n    padding: 0.5rem 1rem!important;\n    text-decoration: none;\n    transition: all .8s cubic-bezier(0, -0.18, 0, 0.92)!important;\n    backdrop-filter: blur(10px);\n}\n.carousel {\n    min-height: 35vh!important;\n}\n.carousel__control {\n    border-radius: 38%!important;\n    width: 7px!important;\n    height: 7px!important;\n    margin: 0px 15px 0px 0px!important;\n    transition: all .8s cubic-bezier(0, -0.18, 0, 0.92)!important;\n}\n\n/* 顶栏修改 */\n\n/*header#header {background: #fff!important;\nbutton.Dropdown-toggle.Button.Button--flat {color: #222!important;}\na#home-link {color: #222!important;}\n.Search-input input {background: rgba(0,0,0,0.1)!important;}\n.Button:active, .Button.active, .open>.Dropdown-toggle.Button {background-color: rgba(0,0,0,0.2)!important;}\n.Button:hover, .Button:focus, .Button.focus {background-color: rgba(0,0,0,0.2)!important;}\n}*/\n@media (min-width: 768px){.scrolled .App-header {box-shadow: 0 0px 0px rgb(0,0,0,0.0);}}\n\n/* 手机端搜索框优化 */\n@media (max-width: 767px){ .item-search {\n    margin-top: 0px!important;\n    margin-bottom: 0px!important;\n}}\n\n/* 修改手机端点击反馈 */\n.DiscussionListItem a {\n    -webkit-tap-highlight-color: rgba(0,0,0,0.0);\n}\n\n/* 移除政治元素 */\ni[data-name=\":flag_tw:\"] {visibility:hidden!important;}\ni[data-name=\":flag_hk:\"] {visibility:hidden!important;} \n\n\n/* 编辑器高度100 */\n@media (max-width: 767px){\n.Composer:not(.minimized) {\n    height: auto !important;\n}}\n\n/* 黑暗模式隐藏一些东西 */\n.item-welcomeBox when (@config-dark-mode = true){\ndisplay:none!important;\n}\n\n/* 黑暗模式优化 */\n.DiscussionHero--colored when (@config-dark-mode = true){\n    color: #fff!important;\n}\n\n/* 滚动条优化 */\n/* 尝试修复一些滚动条的问题 */\n\nhtml {\n  overflow-y: overlay!important;\n}\n\nbody {\n  width: 100vw;\n  overflow: auto;\n}\n@media @phone {\n.welcomebox-widget .AfruxWidgets-Widget-content {\n    display: none !important;\n }\n}\n\n/* 公告条优化 */\n.AfruxWidgets-topWidgetSection {\n    margin: 12px;\n}\n@media (max-width: 767px){\n.AfruxWidgets-topWidgetSection {\n    margin: 4px;\n}\n}\n.DiscussionListItem-info {\ncolor: #647d98 !important;\n}\n.Post{\nbackground: #ffffff !important;\n}\n.Post when (@config-dark-mode = true){ \n background: #1b2128 !important;\n}\n\n.Asirem-TagTile-info when (@config-dark-mode = true){\n    color: #ffffff !important;\n}\n.Asirem-TagTile-lastPostedDiscussion when (@config-dark-mode = true){\n    color: #ffffff !important;\n    opacity: 0.7 !important;\n}'),('datlechin-scroll-buttons.scroll-to-bottom-button','1'),('datlechin-scroll-buttons.scroll-to-bottom-icon',''),('datlechin-scroll-buttons.scroll-to-top-icon',''),('default_locale','zh-Hans'),('default_route','/all'),('display_name_driver','nickname'),('extensions_enabled','[\"flarum-flags\",\"flarum-markdown\",\"flarum-subscriptions\",\"flarum-tags\",\"flarum-approval\",\"flarum-suspend\",\"askvortsov-rich-text\",\"flarum-lock\",\"afrux-forum-widgets-core\",\"fof-follow-tags\",\"flarum-nicknames\",\"fof-byobu\",\"v17development-blog\",\"sycho-advanced-extension-categories\",\"yannisme-acgembed\",\"v17development-seo\",\"the-turk-mathren\",\"the-turk-diff\",\"sycho-profile-cover\",\"pipecraft-id-slug\",\"nearata-tags-color-generator\",\"nearata-embed-video\",\"justoverclock-welcomebox\",\"justoverclock-thread-read-time\",\"justoverclock-hot-discussions\",\"itnt-uitab\",\"ianm-syndication\",\"ianm-follow-users\",\"fof-username-request\",\"fof-user-bio\",\"fof-upload\",\"fof-terms\",\"fof-sitemap\",\"fof-share-social\",\"fof-reactions\",\"fof-profile-image-crop\",\"fof-pretty-mail\",\"fof-polls\",\"fof-pages\",\"fof-nightmode\",\"fof-merge-discussions\",\"fof-links\",\"fof-github-autolink\",\"fof-forum-statistics-widget\",\"fof-formatting\",\"fof-drafts\",\"fof-cookie-consent\",\"fof-best-answer\",\"flarum-sticky\",\"flarum-statistics\",\"flarum-pusher\",\"flarum-mentions\",\"flarum-likes\",\"flarum-lang-english\",\"flarum-lang-chinese-simplified\",\"flarum-emoji\",\"flarum-bbcode\",\"ffans-clipboardjs\",\"datlechin-who-replied\",\"datlechin-scroll-buttons\",\"darkle-fancybox\",\"clarkwinkelmann-who-read\",\"clarkwinkelmann-predefined-avatars\",\"clarkwinkelmann-mailing\",\"clarkwinkelmann-emojionearea\",\"clarkwinkelmann-circle-groups\",\"clarkwinkelmann-bookmarks\",\"blomstra-welcome-login\",\"afrux-top-posters-widget\",\"afrux-online-users-widget\",\"afrux-news-widget\",\"afrux-asirem\"]'),('favicon_path','favicon-zak1wb9a.png'),('flarum-flags.can_flag_own',''),('flarum-flags.guidelines_url','https://bbs.ist4102.cloud/blog/11'),('flarum-markdown.mdarea','1'),('flarum-mentions.allow_username_format','1'),('flarum-nicknames.random_username',''),('flarum-nicknames.regex',''),('flarum-nicknames.unique','1'),('flarum-pusher.app_cluster','ap3'),('flarum-pusher.app_id','1461002'),('flarum-pusher.app_key','7354e331c42202951bb7'),('flarum-pusher.app_secret','defde1f3d4f76c9c1c38'),('flarum-tags.max_primary_tags','1'),('flarum-tags.max_secondary_tags','3'),('flarum-tags.min_primary_tags','1'),('flarum-tags.min_secondary_tags','0'),('fof-best-answer.allow_select_own_post','0'),('fof-best-answer.schedule_on_one_server',''),('fof-best-answer.select_best_answer_reminder_days',''),('fof-best-answer.show_filter_dropdown','1'),('fof-best-answer.stop_overnight',''),('fof-best-answer.store_log_output',''),('fof-best-answer.use_alternative_ui','1'),('fof-byobu.icon-badge',''),('fof-byobu.icon-postAction',''),('fof-byobu.makePublic','1'),('fof-cookie-consent.backgroundColor','#2b2b2b'),('fof-cookie-consent.buttonBackgroundColor','#447cfd'),('fof-cookie-consent.buttonText','同意'),('fof-cookie-consent.buttonTextColor','#ffffff'),('fof-cookie-consent.ccTheme','edgeless'),('fof-cookie-consent.consentText','本站使用 cookie 数据以确保网站正常运行，并帮助我们为您提供最佳用户体验。点击“同意”即表示您同意我们使用 cookie。'),('fof-cookie-consent.learnMoreLinkText','了解更多'),('fof-cookie-consent.learnMoreLinkUrl','https://baike.baidu.com/item/cookie/1119'),('fof-cookie-consent.textColor','#ffffff'),('fof-drafts.enable_scheduled_drafts','1'),('fof-formatting.plugin.autoimage','1'),('fof-formatting.plugin.autovideo','1'),('fof-formatting.plugin.fancypants','0'),('fof-formatting.plugin.htmlentities',''),('fof-formatting.plugin.mediaembed',''),('fof-formatting.plugin.pipetables','1'),('fof-formatting.plugin.tasklists','1'),('fof-forum-statistics-widget.ignore_private_discussions','1'),('fof-forum-statistics-widget.widget_order','0'),('fof-nightmode.default_theme','0'),('fof-pretty-mail.mailhtml','<html>\n    <head>\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n        <style type=\"text/css\">\n            body {\n                font-family: \'Open Sans\', sans-serif;\n                background: white;\n                color: #426799;\n                margin: 0;\n                padding: 0;\n            }\n            .content {\n                box-sizing: border-box;\n                width: 100%;\n                max-width: 500px;\n                margin: 0 auto;\n                padding: 10px 20px;\n            }\n            .header {\n                border-bottom: 1px solid #e8ecf3;\n             }\n             .header a {\n                color: {{ $settings->get(\'theme_primary_color\') }};\n                text-decoration: none;\n             }\n             .footer {\n                background: #e8ecf3;\n             }\n        </style>\n        @if ($forumStyle !== \'\')\n        <style>\n            {!! $forumStyle !!}\n        </style>\n        @endif\n    </head>\n    <body>\n    <div class=\"header\">\n        <div class=\"content\">\n            <a href=\"{{ $url->to(\'forum\')->base() }}\">{{ $settings->get(\'forum_title\') }}</a>\n        </div>\n    </div>\n    <div class=\"content\">\n        {!! $body !!}\n    </div>\n    <div class=\"footer\">\n        <div class=\"content\">\n            <p>Sent from {{ $settings->get(\'forum_title\') }} using FoF Pretty Mail</p>\n        </div>\n    </div>\n    </body>\n</html>\n'),('fof-pretty-mail.newPost','<html>\n    <head>\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n        <style type=\"text/css\">\n            body {\n                font-family: \'Open Sans\', sans-serif;\n                background: white;\n                color: #426799;\n                margin: 0;\n                padding: 0;\n            }\n            .content {\n                box-sizing: border-box;\n                width: 100%;\n                max-width: 500px;\n                margin: 0 auto;\n                padding: 10px 20px;\n            }\n            .header {\n                border-bottom: 1px solid #e8ecf3;\n            }\n            .header a {\n                color: {{ $settings->get(\'theme_primary_color\') }};\n                text-decoration: none;\n            }\n            .footer {\n                background: #e8ecf3;\n            }\n        </style>\n        <style>\n            {!! $forumStyle !!}\n        </style>\n    </head>\n    <body>\n    <div class=\"header\">\n        <div class=\"content\">\n            <a href=\"{{ $url->to(\'forum\')->base() }}\">{{ $settings->get(\'forum_title\') }}</a>\n        </div>\n    </div>\n    <div class=\"content\">\n        <div class=\"info\">\n            <p>Hey {!! $user->display_name !!}!</p>\n\n            <p><a href=\"{{ $url->to(\'forum\')->route(\'user\', [\'username\' => $blueprint->post->user->username]) }}\">{!! $blueprint->post->user->username !!}</a> made a post in a discussion you\'re following: <a href=\"{{ $url->to(\'forum\')->route(\'discussion\', [\'id\' => $blueprint->post->discussion_id, \'near\' => $blueprint->post->number]) }}\">{!! $blueprint->post->discussion->title !!}</a></p>\n\n            ---\n\n        </div>\n        <br/>\n        <div class=\"post-content\">\n            {!! $blueprint->post->formatContent() !!}\n        </div>\n        <br/>\n        <div class=\"info\">\n            ---\n\n            <p>You won\'t receive any more notifications about this discussion until you\'re up-to-date.</p>\n        </div>\n    </div>\n    <div class=\"footer\">\n        <div class=\"content\">\n            <p>Sent from {{ $settings->get(\'forum_title\') }} using FoF Pretty Mail</p>\n        </div>\n    </div>\n    </body>\n</html>\n'),('fof-pretty-mail.postMentioned','<html>\n    <head>\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n        <style type=\"text/css\">\n            body {\n                font-family: \'Open Sans\', sans-serif;\n                background: white;\n                color: #426799;\n                margin: 0;\n                padding: 0;\n            }\n            .content {\n                box-sizing: border-box;\n                width: 100%;\n                max-width: 500px;\n                margin: 0 auto;\n                padding: 10px 20px;\n            }\n            .header {\n                border-bottom: 1px solid #e8ecf3;\n            }\n            .header a {\n                color: {{ $settings->get(\'theme_primary_color\') }};\n                text-decoration: none;\n            }\n            .footer {\n                background: #e8ecf3;\n            }\n        </style>\n        <style>\n            {!! $forumStyle !!}\n        </style>\n    </head>\n    <body>\n    <div class=\"header\">\n        <div class=\"content\">\n            <a href=\"{{ $url->to(\'forum\')->base() }}\">{{ $settings->get(\'forum_title\') }}</a>\n        </div>\n    </div>\n    <div class=\"content\">\n        <div class=\"info\">\n            <p>Hey {!! $user->display_name !!}!</p>\n\n            <p><a href=\"{{ $url->to(\'forum\')->route(\'user\', [\'username\' => $blueprint->reply->user->username]) }}\">{!! $blueprint->reply->user->username !!}</a> replied to your post (#{!! $blueprint->post->number !!}) in <a href=\"{{ $url->to(\'forum\')->route(\'discussion\', [\'id\' => $blueprint->post->discussion_id, \'near\' => $blueprint->reply->number]) }}\">{!! $blueprint->post->discussion->title !!}</a>.</p>\n\n            ---\n\n        </div>\n        <br/>\n        <div class=\"post-content\">\n            {!! $blueprint->reply->formatContent() !!}\n        </div>\n        <br/>\n    </div>\n    <div class=\"footer\">\n        <div class=\"content\">\n            <p>Sent from {{ $settings->get(\'forum_title\') }} using FoF Pretty Mail</p>\n        </div>\n    </div>\n    </body>\n</html>'),('fof-pretty-mail.userMentioned','<html>\n    <head>\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n        <style type=\"text/css\">\n            body {\n                font-family: \'Open Sans\', sans-serif;\n                background: white;\n                color: #426799;\n                margin: 0;\n                padding: 0;\n            }\n            .content {\n                box-sizing: border-box;\n                width: 100%;\n                max-width: 500px;\n                margin: 0 auto;\n                padding: 10px 20px;\n            }\n            .header {\n                border-bottom: 1px solid #e8ecf3;\n            }\n            .header a {\n                color: {{ $settings->get(\'theme_primary_color\') }};\n                text-decoration: none;\n            }\n            .footer {\n                background: #e8ecf3;\n            }\n        </style>\n        <style>\n            {!! $forumStyle !!}\n        </style>\n    </head>\n    <body>\n    <div class=\"header\">\n        <div class=\"content\">\n            <a href=\"{{ $url->to(\'forum\')->base() }}\">{{ $settings->get(\'forum_title\') }}</a>\n        </div>\n    </div>\n    <div class=\"content\">\n        <div class=\"info\">\n            <p>Hey {!! $user->display_name !!}!</p>\n\n            <p><a href=\"{{ $url->to(\'forum\')->route(\'user\', [\'username\' => $blueprint->post->user->username]) }}\">{!! $blueprint->post->user->username !!}</a> mentioned you in a post in <a href=\"{{ $url->to(\'forum\')->route(\'discussion\', [\'id\' => $blueprint->post->discussion_id, \'near\' => $blueprint->post->number]) }}\">{!! $blueprint->post->discussion->title !!}</a>.</p>\n\n            ---\n\n        </div>\n        <br/>\n        <div class=\"post-content\">\n            {!! $blueprint->post->formatContent() !!}\n        </div>\n        <br/>\n    </div>\n    <div class=\"footer\">\n        <div class=\"content\">\n            <p>Sent from {{ $settings->get(\'forum_title\') }} using FoF Pretty Mail</p>\n        </div>\n    </div>\n    </body>\n</html>\n'),('fof-share-social.canonical-urls',''),('fof-share-social.networks.facebook','1'),('fof-share-social.networks.linkedin',''),('fof-share-social.networks.my_mail',''),('fof-share-social.networks.native',''),('fof-share-social.networks.odnoklassniki',''),('fof-share-social.networks.qq','1'),('fof-share-social.networks.qzone','1'),('fof-share-social.networks.reddit',''),('fof-share-social.networks.telegram','1'),('fof-share-social.networks.twitter','1'),('fof-share-social.networks.vkontakte',''),('fof-share-social.networks.whatsapp',''),('fof-sitemap.frequency','daily'),('fof-sitemap.mode','run'),('fof-terms.date-format',''),('fof-terms.hide-updated-at',''),('fof-terms.signup-legal-text',''),('fof-upload.addsWatermarks','0'),('fof-upload.awsS3UsePathStyleEndpoint','0'),('fof-upload.composerButtonVisiblity','media-btn'),('fof-upload.disableDownloadLogging','0'),('fof-upload.disableHotlinkProtection','1'),('fof-upload.maxFileSize','100000'),('fof-upload.mimeTypes','{\"^image\\\\/.*\":{\"adapter\":\"local\",\"template\":\"image-preview\"}}'),('fof-upload.mustResize','0'),('fof-upload.watermark','fof-upload-watermark-epvzpfai'),('fofNightMode.show_theme_toggle_on_header_always','1'),('forum_description','IST实验室技术论坛，收获你想要，分享你心得'),('forum_keywords','论坛,分享,技术,IST'),('forum_title','IST智能实验室论坛'),('ianm-syndication.plugin.forum-format','atom'),('ianm-syndication.plugin.forum-icons','0'),('ianm-syndication.plugin.full-text',''),('ianm-syndication.plugin.html',''),('itnt-uitab.composer_icon',''),('itnt-uitab.discussions_icon',''),('itnt-uitab.home_page','/'),('itnt-uitab.notifications_icon',''),('itnt-uitab.settings_icon',''),('itnt-uitab.tags_icon',''),('justoverclock-hot-discussions.discLimit','5'),('justoverclock-welcomebox.hide.guestbox','1'),('justoverclock-welcomebox.imgUrl',''),('justoverclock-welcomebox.UseWidget','1'),('logo_path',NULL),('mail_driver','smtp'),('mail_encryption','tls'),('mail_from','wrm244@qq.com'),('mail_host','smtp.qq.com'),('mail_password','yenqdvlqpfggbdfg'),('mail_port','587'),('mail_username','wrm244@qq.com'),('michaelbelgium-discussionviews.abbr_numbers','0'),('michaelbelgium-discussionviews.max_listcount','5'),('michaelbelgium-discussionviews.show_filter','1'),('michaelbelgium-discussionviews.show_footer_viewlist','0'),('michaelbelgium-discussionviews.show_viewlist','1'),('michaelbelgium-discussionviews.track_guests','1'),('michaelbelgium-discussionviews.track_unique','0'),('nearata-embed-video.admin.settings.options.airplay',''),('nearata-embed-video.admin.settings.options.hotkey',''),('nearata-embed-video.admin.settings.options.lang','zh-cn'),('nearata-embed-video.admin.settings.options.logo',''),('nearata-embed-video.admin.settings.options.quality_switching',''),('nearata-embed-video.admin.settings.options.theme',''),('nearata-embed-video.admin.settings.video_type.dash','1'),('nearata-embed-video.admin.settings.video_type.flv','1'),('nearata-embed-video.admin.settings.video_type.hls','1'),('nearata-embed-video.admin.settings.video_type.shaka','1'),('nearata-embed-video.admin.settings.video_type.webtorrent','1'),('predefinedAvatars',''),('predefinedAvatarsDefault',''),('predefinedAvatarsNoRemove',''),('predefinedAvatarsOnly',''),('seo_allow_all_bots',''),('seo_post_crawler','1'),('seo_review_settings','1664553600'),('seo_reviewed_post_crawler','1'),('seo_reviewed_search_engines','1'),('seo_social_media_image_path','site-image-c3ngmntq.png'),('seo_twitter_card_size','large'),('show_language_selector','1'),('slug_driver_Flarum\\Discussion\\Discussion','id'),('slug_driver_Flarum\\User\\User','default'),('the-turk-mathren.macros',''),('theme_colored_header','0'),('theme_dark_mode','0'),('theme_primary_color','#276bb0'),('theme_secondary_color','#458cd3'),('undefined',''),('version','1.4.1'),('welcome_message',''),('welcome_title','欢迎来到IST智能实验室论坛'),('xelson-chat.settings.charlimit','512'),('xelson-chat.settings.display.censor','1'),('xelson-chat.settings.display.minimize',''),('xelson-chat.settings.floodgate.number','3'),('xelson-chat.settings.floodgate.time','1 hour');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_user`
--

DROP TABLE IF EXISTS `tag_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_user` (
  `user_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `marked_as_read_at` datetime DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `subscription` enum('follow','lurk','ignore','hide') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`tag_id`),
  KEY `tag_user_tag_id_foreign` (`tag_id`),
  KEY `tag_user_user_id_subscription_index` (`user_id`,`subscription`),
  KEY `tag_user_subscription_index` (`subscription`),
  CONSTRAINT `tag_user_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tag_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_user`
--

LOCK TABLES `tag_user` WRITE;
/*!40000 ALTER TABLE `tag_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_mode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `default_sort` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `discussion_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_posted_at` datetime DEFAULT NULL,
  `last_posted_discussion_id` int(10) unsigned DEFAULT NULL,
  `last_posted_user_id` int(10) unsigned DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_qna` tinyint(1) NOT NULL DEFAULT '0',
  `qna_reminders` tinyint(1) NOT NULL DEFAULT '0',
  `text_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`),
  KEY `tags_parent_id_foreign` (`parent_id`),
  KEY `tags_last_posted_user_id_foreign` (`last_posted_user_id`),
  KEY `tags_last_posted_discussion_id_foreign` (`last_posted_discussion_id`),
  CONSTRAINT `tags_last_posted_discussion_id_foreign` FOREIGN KEY (`last_posted_discussion_id`) REFERENCES `discussions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tags_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tags_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `tags` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (2,'公告','announcement','实验室的公告以及组织和安排一些事件。','#d12e41',NULL,NULL,0,NULL,NULL,0,0,4,'2022-08-10 17:24:47',11,1,'fas fa-bullhorn','2022-08-09 02:29:46','2022-08-10 17:24:49',1,0,'#ffffff'),(3,'求助','help','获取论坛同学技术支持帮助','#3b0cd6',NULL,NULL,1,NULL,NULL,0,0,0,NULL,NULL,NULL,'fas fa-wrench','2022-08-09 02:35:42','2022-08-10 18:32:08',1,0,'#ffffff'),(4,'资源','source','分享学习质料','#38ad11',NULL,NULL,3,NULL,NULL,0,0,1,'2022-08-09 07:11:02',3,2,'fas fa-toolbox','2022-08-09 02:37:27','2022-08-10 15:57:19',1,0,'#ffffff'),(5,'开发','dev','实验室项目开发','#ad3df7',NULL,NULL,2,NULL,NULL,0,0,0,'2022-08-10 17:10:38',2,2,'fas fa-code','2022-08-09 02:38:37','2022-08-10 18:32:11',1,0,'#ffffff'),(6,'闲聊','chat','聊天专区','#d34789',NULL,NULL,7,NULL,NULL,0,0,0,NULL,NULL,NULL,'fa fa-icons','2022-08-09 02:40:26','2022-08-10 17:06:50',1,0,'#ffffff'),(7,'招新','rookie','有关实验室招新的发布','#e55909',NULL,NULL,4,NULL,NULL,0,0,2,'2022-08-09 09:59:40',4,7,'fas fa-bolt','2022-08-09 03:14:03','2022-08-10 15:57:19',1,0,'#ffffff'),(8,'OJ在线评测','oj','ISTOJ提供代码在线评测与比赛环境','#b50a51',NULL,NULL,5,NULL,NULL,0,0,1,'2022-08-09 16:47:43',5,2,'fas fa-water','2022-08-09 16:20:49','2022-08-10 17:08:49',1,0,'#ffffff'),(9,'博客','blog','在这里可以书写个人博客文章','#3c0799',NULL,NULL,6,NULL,NULL,0,0,0,NULL,NULL,NULL,'fas fa-blog','2022-08-10 15:46:55','2022-08-10 16:06:08',1,0,'#ffffff');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_followers`
--

DROP TABLE IF EXISTS `user_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_followers` (
  `user_id` int(10) unsigned NOT NULL,
  `followed_user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`followed_user_id`),
  KEY `user_followers_followed_user_id_foreign` (`followed_user_id`),
  CONSTRAINT `user_followers_followed_user_id_foreign` FOREIGN KEY (`followed_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_followers`
--

LOCK TABLES `user_followers` WRITE;
/*!40000 ALTER TABLE `user_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `username_requests`
--

DROP TABLE IF EXISTS `username_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `username_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `requested_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `for_nickname` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username_requests_user_id_foreign` (`user_id`),
  CONSTRAINT `username_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `username_requests`
--

LOCK TABLES `username_requests` WRITE;
/*!40000 ALTER TABLE `username_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `username_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_email_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` blob,
  `joined_at` datetime DEFAULT NULL,
  `last_seen_at` datetime DEFAULT NULL,
  `marked_all_as_read_at` datetime DEFAULT NULL,
  `read_notifications_at` datetime DEFAULT NULL,
  `discussion_count` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_count` int(10) unsigned NOT NULL DEFAULT '0',
  `read_flags_at` datetime DEFAULT NULL,
  `suspended_until` datetime DEFAULT NULL,
  `suspend_reason` text COLLATE utf8mb4_unicode_ci,
  `suspend_message` text COLLATE utf8mb4_unicode_ci,
  `username_history` blob NOT NULL,
  `best_answer_count` int(10) unsigned DEFAULT NULL,
  `cover` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `blocks_byobu_pd` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_joined_at_index` (`joined_at`),
  KEY `users_last_seen_at_index` (`last_seen_at`),
  KEY `users_discussion_count_index` (`discussion_count`),
  KEY `users_comment_count_index` (`comment_count`),
  KEY `users_nickname_index` (`nickname`),
  KEY `users_blocks_byobu_pd_index` (`blocks_byobu_pd`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'root','管理员','wrm244@qq.com',1,'$2y$10$ZFDv1JkswDB6oRXKDvEwyOxmBLgKcW0Dzkz9jJ2Jr9EISVibPgAR6','LFDzMWUr8g0Yan79.png',_binary '{\"followAfterReply\":false,\"useRichTextEditor\":false,\"richTextCompactParagraphs\":false,\"followTagsPageDefault\":null,\"diffRenderer\":\"sideBySide\",\"blocksFollow\":false,\"fofNightMode\":1,\"fofNightMode_perDevice\":false,\"draftAutosaveEnable\":false,\"draftAutosaveInterval\":6,\"notify_discussionRenamed_alert\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userSuspended_email\":true,\"notify_userUnsuspended_alert\":true,\"notify_userUnsuspended_email\":true,\"notify_discussionLocked_alert\":true,\"notify_newDiscussionInTag_alert\":true,\"notify_newDiscussionInTag_email\":true,\"notify_newPostInTag_alert\":true,\"notify_newPostInTag_email\":true,\"notify_newDiscussionTag_alert\":true,\"notify_newDiscussionTag_email\":true,\"notify_byobuPrivateDiscussionCreated_alert\":true,\"notify_byobuPrivateDiscussionCreated_email\":true,\"notify_byobuPrivateDiscussionReplied_alert\":true,\"notify_byobuPrivateDiscussionReplied_email\":true,\"notify_byobuRecipientRemoved_alert\":true,\"notify_byobuRecipientRemoved_email\":true,\"notify_byobuPrivateDiscussionAdded_alert\":true,\"notify_byobuPrivateDiscussionAdded_email\":true,\"notify_byobuMadePublic_alert\":true,\"notify_byobuMadePublic_email\":false,\"notify_newFollower_alert\":true,\"notify_newFollower_email\":false,\"notify_newUnfollower_alert\":true,\"notify_newDiscussionByUser_alert\":true,\"notify_newDiscussionByUser_email\":true,\"notify_newPostByUser_alert\":false,\"notify_newPostByUser_email\":false,\"notify_postReacted_alert\":true,\"notify_discussionMerged_alert\":true,\"notify_discussionMerged_email\":true,\"notify_selectBestAnswer_alert\":true,\"notify_selectBestAnswer_email\":true,\"notify_awardedBestAnswer_alert\":true,\"notify_awardedBestAnswer_email\":false,\"notify_bestAnswerInDiscussion_alert\":false,\"notify_bestAnswerInDiscussion_email\":false,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_postLiked_alert\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2022-08-09 01:20:45','2022-08-10 19:32:23','2022-08-10 16:53:21','2022-08-10 17:12:05',3,5,'2022-08-10 17:12:11',NULL,NULL,NULL,'',0,'eOJfNX64dDGkIh0Q.jpg','关于论坛有问题可以来联系我',0),(2,'wrm244','河山','wrm244@outlook.com',1,'$2y$10$pXFwIvkDoykHl0vZsrxfjupOX1sgdJTPNvlq1fmiAYF5TfpQ91EbS','EmEENUrX7rbJ7paz.png',_binary '{\"followAfterReply\":false,\"useRichTextEditor\":false,\"richTextCompactParagraphs\":false,\"followTagsPageDefault\":null,\"diffRenderer\":\"sideBySide\",\"blocksFollow\":false,\"fofNightMode\":2,\"fofNightMode_perDevice\":false,\"draftAutosaveEnable\":true,\"draftAutosaveInterval\":6,\"notify_discussionRenamed_alert\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userSuspended_email\":true,\"notify_userUnsuspended_alert\":true,\"notify_userUnsuspended_email\":true,\"notify_discussionLocked_alert\":true,\"notify_newDiscussionInTag_alert\":true,\"notify_newDiscussionInTag_email\":true,\"notify_newPostInTag_alert\":true,\"notify_newPostInTag_email\":true,\"notify_newDiscussionTag_alert\":true,\"notify_newDiscussionTag_email\":true,\"notify_byobuPrivateDiscussionCreated_alert\":true,\"notify_byobuPrivateDiscussionCreated_email\":true,\"notify_byobuPrivateDiscussionReplied_alert\":true,\"notify_byobuPrivateDiscussionReplied_email\":true,\"notify_byobuRecipientRemoved_alert\":true,\"notify_byobuRecipientRemoved_email\":true,\"notify_byobuPrivateDiscussionAdded_alert\":true,\"notify_byobuPrivateDiscussionAdded_email\":true,\"notify_byobuMadePublic_alert\":true,\"notify_byobuMadePublic_email\":false,\"notify_newFollower_alert\":true,\"notify_newFollower_email\":false,\"notify_newUnfollower_alert\":true,\"notify_newDiscussionByUser_alert\":true,\"notify_newDiscussionByUser_email\":true,\"notify_newPostByUser_alert\":false,\"notify_newPostByUser_email\":false,\"notify_postReacted_alert\":true,\"notify_discussionMerged_alert\":true,\"notify_discussionMerged_email\":true,\"notify_selectBestAnswer_alert\":true,\"notify_selectBestAnswer_email\":true,\"notify_awardedBestAnswer_alert\":true,\"notify_awardedBestAnswer_email\":false,\"notify_bestAnswerInDiscussion_alert\":false,\"notify_bestAnswerInDiscussion_email\":false,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_postLiked_alert\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":\"zh-Hans\"}','2022-08-09 01:48:22','2022-08-11 08:10:44','2022-08-10 09:35:56','2022-08-10 18:58:54',2,11,'2022-08-10 19:09:31',NULL,NULL,NULL,'',1,'wWqFzLhr34gqEJWl.jpg','',0),(4,'LHYZX',NULL,'2744732798@qq.com',1,'$2y$10$30dVPbvVpsbFMGEGpzWvE.vWHKqsVe0Oa6aZLuIJpIcRloTzmgHw.',NULL,NULL,'2022-08-09 05:14:02','2022-08-09 05:14:03',NULL,NULL,0,0,NULL,NULL,NULL,NULL,'',0,NULL,NULL,0),(5,'ELH','摆烂小冬','3367733253@qq.com',1,'$2y$10$agLGTqsPmxlAkktptPZaJ.2EfdPYa94vpkDdLd7F2A5q6LgfNbpey',NULL,_binary '{\"followAfterReply\":false,\"useRichTextEditor\":false,\"richTextCompactParagraphs\":false,\"followTagsPageDefault\":null,\"diffRenderer\":\"sideBySide\",\"blocksFollow\":false,\"fofNightMode\":0,\"fofNightMode_perDevice\":false,\"draftAutosaveEnable\":false,\"draftAutosaveInterval\":6,\"notify_discussionRenamed_alert\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userSuspended_email\":true,\"notify_userUnsuspended_alert\":true,\"notify_userUnsuspended_email\":true,\"notify_discussionLocked_alert\":true,\"notify_newDiscussionInTag_alert\":true,\"notify_newDiscussionInTag_email\":true,\"notify_newPostInTag_alert\":true,\"notify_newPostInTag_email\":true,\"notify_newDiscussionTag_alert\":true,\"notify_newDiscussionTag_email\":true,\"notify_byobuPrivateDiscussionCreated_alert\":true,\"notify_byobuPrivateDiscussionCreated_email\":true,\"notify_byobuPrivateDiscussionReplied_alert\":true,\"notify_byobuPrivateDiscussionReplied_email\":true,\"notify_byobuRecipientRemoved_alert\":true,\"notify_byobuRecipientRemoved_email\":true,\"notify_byobuPrivateDiscussionAdded_alert\":true,\"notify_byobuPrivateDiscussionAdded_email\":true,\"notify_byobuMadePublic_alert\":true,\"notify_byobuMadePublic_email\":false,\"notify_newFollower_alert\":true,\"notify_newFollower_email\":false,\"notify_newUnfollower_alert\":true,\"notify_newDiscussionByUser_alert\":true,\"notify_newDiscussionByUser_email\":true,\"notify_newPostByUser_alert\":false,\"notify_newPostByUser_email\":false,\"notify_postReacted_alert\":true,\"notify_discussionMerged_alert\":true,\"notify_discussionMerged_email\":true,\"notify_selectBestAnswer_alert\":true,\"notify_selectBestAnswer_email\":true,\"notify_awardedBestAnswer_alert\":true,\"notify_awardedBestAnswer_email\":false,\"notify_bestAnswerInDiscussion_alert\":false,\"notify_bestAnswerInDiscussion_email\":false,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_postLiked_alert\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2022-08-09 07:19:34','2022-08-09 07:26:48',NULL,'2022-08-09 07:28:23',1,1,NULL,NULL,NULL,NULL,'',0,NULL,'',0),(6,'XHBB','冬哥小弟','3030247083@qq.com',1,'$2y$10$sHSelFfl/mZEArcVqJf.COjgbbgf6ctGrN4aWUfjsDKCY72lhdECG',NULL,NULL,'2022-08-09 08:02:26','2022-08-09 08:02:27',NULL,NULL,1,1,NULL,NULL,NULL,NULL,'',0,NULL,NULL,0),(7,'Aukeen','叫我升哥','2217562719@qq.com',1,'$2y$10$7xgtLCr2Uilv5Qx8ePYRH.ZS7jB5t4spTnTguwt/GYo9lXUAeFS92',NULL,_binary '{\"followAfterReply\":false,\"useRichTextEditor\":true,\"richTextCompactParagraphs\":false,\"followTagsPageDefault\":null,\"diffRenderer\":\"sideBySide\",\"blocksFollow\":false,\"fofNightMode\":1,\"fofNightMode_perDevice\":false,\"draftAutosaveEnable\":false,\"draftAutosaveInterval\":6,\"notify_discussionRenamed_alert\":true,\"notify_newPost_alert\":true,\"notify_newPost_email\":true,\"notify_userSuspended_alert\":true,\"notify_userSuspended_email\":true,\"notify_userUnsuspended_alert\":true,\"notify_userUnsuspended_email\":true,\"notify_discussionLocked_alert\":true,\"notify_newDiscussionInTag_alert\":true,\"notify_newDiscussionInTag_email\":true,\"notify_newPostInTag_alert\":true,\"notify_newPostInTag_email\":true,\"notify_newDiscussionTag_alert\":true,\"notify_newDiscussionTag_email\":true,\"notify_byobuPrivateDiscussionCreated_alert\":true,\"notify_byobuPrivateDiscussionCreated_email\":true,\"notify_byobuPrivateDiscussionReplied_alert\":true,\"notify_byobuPrivateDiscussionReplied_email\":true,\"notify_byobuRecipientRemoved_alert\":true,\"notify_byobuRecipientRemoved_email\":true,\"notify_byobuPrivateDiscussionAdded_alert\":true,\"notify_byobuPrivateDiscussionAdded_email\":true,\"notify_byobuMadePublic_alert\":true,\"notify_byobuMadePublic_email\":false,\"notify_newFollower_alert\":true,\"notify_newFollower_email\":false,\"notify_newUnfollower_alert\":true,\"notify_newDiscussionByUser_alert\":true,\"notify_newDiscussionByUser_email\":true,\"notify_newPostByUser_alert\":false,\"notify_newPostByUser_email\":false,\"notify_postReacted_alert\":true,\"notify_discussionMerged_alert\":true,\"notify_discussionMerged_email\":true,\"notify_selectBestAnswer_alert\":true,\"notify_selectBestAnswer_email\":true,\"notify_awardedBestAnswer_alert\":true,\"notify_awardedBestAnswer_email\":false,\"notify_bestAnswerInDiscussion_alert\":false,\"notify_bestAnswerInDiscussion_email\":false,\"notify_postMentioned_alert\":true,\"notify_postMentioned_email\":false,\"notify_userMentioned_alert\":true,\"notify_userMentioned_email\":false,\"notify_postLiked_alert\":true,\"discloseOnline\":true,\"indexProfile\":true,\"locale\":null}','2022-08-09 09:58:02','2022-08-09 10:01:16',NULL,NULL,0,1,NULL,NULL,NULL,NULL,'',0,NULL,NULL,0),(8,'test','测试员','iwrm244@gmail.com',1,'$2y$10$fG3omcfDUiGjnWJVM1huDelCIjmqcbeMINTkOHbgxx1alHdpiMFiS',NULL,NULL,'2022-08-10 18:48:57','2022-08-10 19:06:55',NULL,NULL,0,0,NULL,NULL,NULL,NULL,'',0,NULL,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bbs'
--

--
-- Dumping routines for database 'bbs'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-11 16:30:00
