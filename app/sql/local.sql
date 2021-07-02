-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (113,'action_scheduler/migration_hook','complete','2021-06-28 23:41:51','2021-06-28 23:41:51','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1624923711;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1624923711;}',1,1,'2021-06-28 23:42:07','2021-06-28 23:42:07',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (114,'wpforms_process_entry_emails_meta_cleanup','complete','2021-06-29 00:00:00','2021-06-29 00:00:00','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1624924800;s:18:\"\0*\0first_timestamp\";i:1624924800;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1624924800;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2021-06-29 00:01:25','2021-06-29 00:01:25',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (115,'wpforms_email_summaries_fetch_info_blocks','complete','2021-06-27 23:38:49','2021-06-27 23:38:49','{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1624837129;s:18:\"\0*\0first_timestamp\";i:1624837129;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1624837129;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,1,'2021-06-28 23:43:07','2021-06-28 23:43:07',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (116,'wpforms_email_summaries_fetch_info_blocks','pending','2021-07-05 23:43:07','2021-07-05 23:43:07','{\"tasks_meta_id\":null}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1625528587;s:18:\"\0*\0first_timestamp\";i:1624837129;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1625528587;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (117,'wpforms_admin_addons_cache_update','pending','2021-07-05 23:43:08','2021-07-05 23:43:08','{\"tasks_meta_id\":2}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1625528588;s:18:\"\0*\0first_timestamp\";i:1625528588;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1625528588;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (118,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":3}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2021-06-28 23:44:17','2021-06-28 23:44:17',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (119,'wpforms_process_entry_emails_meta_cleanup','complete','2021-06-30 00:01:25','2021-06-30 00:01:25','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1625011285;s:18:\"\0*\0first_timestamp\";i:1624924800;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1625011285;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2021-06-30 00:02:52','2021-06-30 00:02:52',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (120,'wpforms_process_entry_emails_meta_cleanup','complete','2021-07-01 00:02:52','2021-07-01 00:02:52','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1625097772;s:18:\"\0*\0first_timestamp\";i:1624924800;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1625097772;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2021-07-01 03:06:52','2021-07-01 03:06:52',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (121,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":4}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2021-06-30 00:12:22','2021-06-30 00:12:22',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (122,'wpforms_builder_help_cache_update','pending','2021-07-07 00:12:02','2021-07-07 00:12:02','{\"tasks_meta_id\":5}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1625616722;s:18:\"\0*\0first_timestamp\";i:1625616722;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1625616722;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (123,'wpforms_process_entry_emails_meta_cleanup','complete','2021-07-02 03:06:52','2021-07-02 03:06:52','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1625195212;s:18:\"\0*\0first_timestamp\";i:1624924800;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1625195212;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,1,'2021-07-02 16:02:36','2021-07-02 16:02:36',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (124,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":6}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2021-07-01 03:09:06','2021-07-01 03:09:06',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (125,'wpforms_process_entry_emails_meta_cleanup','pending','2021-07-03 16:02:36','2021-07-03 16:02:36','{\"tasks_meta_id\":1}','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1625328156;s:18:\"\0*\0first_timestamp\";i:1624924800;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1625328156;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (126,'wpforms_admin_notifications_update','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','{\"tasks_meta_id\":7}','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2021-07-02 16:11:54','2021-07-02 16:11:54',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'wpforms');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,113,'action created','2021-06-28 23:40:51','2021-06-28 23:40:51');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,113,'action started via WP Cron','2021-06-28 23:42:07','2021-06-28 23:42:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,113,'action complete via WP Cron','2021-06-28 23:42:07','2021-06-28 23:42:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,114,'action created','2021-06-28 23:43:07','2021-06-28 23:43:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,115,'action created','2021-06-28 23:43:07','2021-06-28 23:43:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,115,'action started via WP Cron','2021-06-28 23:43:07','2021-06-28 23:43:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (7,115,'action complete via WP Cron','2021-06-28 23:43:07','2021-06-28 23:43:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (8,116,'action created','2021-06-28 23:43:08','2021-06-28 23:43:08');
INSERT INTO `wp_actionscheduler_logs` VALUES (9,117,'action created','2021-06-28 23:43:08','2021-06-28 23:43:08');
INSERT INTO `wp_actionscheduler_logs` VALUES (10,118,'action created','2021-06-28 23:43:36','2021-06-28 23:43:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (11,118,'action started via WP Cron','2021-06-28 23:44:17','2021-06-28 23:44:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (12,118,'action complete via WP Cron','2021-06-28 23:44:17','2021-06-28 23:44:17');
INSERT INTO `wp_actionscheduler_logs` VALUES (13,114,'action started via WP Cron','2021-06-29 00:01:25','2021-06-29 00:01:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (14,114,'action complete via WP Cron','2021-06-29 00:01:25','2021-06-29 00:01:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (15,119,'action created','2021-06-29 00:01:25','2021-06-29 00:01:25');
INSERT INTO `wp_actionscheduler_logs` VALUES (16,119,'action started via WP Cron','2021-06-30 00:02:52','2021-06-30 00:02:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (17,119,'action complete via WP Cron','2021-06-30 00:02:52','2021-06-30 00:02:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (18,120,'action created','2021-06-30 00:02:52','2021-06-30 00:02:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (19,121,'action created','2021-06-30 00:11:56','2021-06-30 00:11:56');
INSERT INTO `wp_actionscheduler_logs` VALUES (20,122,'action created','2021-06-30 00:12:02','2021-06-30 00:12:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (21,121,'action started via Async Request','2021-06-30 00:12:22','2021-06-30 00:12:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (22,121,'action complete via Async Request','2021-06-30 00:12:22','2021-06-30 00:12:22');
INSERT INTO `wp_actionscheduler_logs` VALUES (23,120,'action started via WP Cron','2021-07-01 03:06:52','2021-07-01 03:06:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (24,120,'action complete via WP Cron','2021-07-01 03:06:52','2021-07-01 03:06:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (25,123,'action created','2021-07-01 03:06:52','2021-07-01 03:06:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (26,124,'action created','2021-07-01 03:06:54','2021-07-01 03:06:54');
INSERT INTO `wp_actionscheduler_logs` VALUES (27,124,'action started via WP Cron','2021-07-01 03:09:06','2021-07-01 03:09:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (28,124,'action complete via WP Cron','2021-07-01 03:09:06','2021-07-01 03:09:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (29,123,'action started via Async Request','2021-07-02 16:02:36','2021-07-02 16:02:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (30,123,'action complete via Async Request','2021-07-02 16:02:36','2021-07-02 16:02:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (31,125,'action created','2021-07-02 16:02:36','2021-07-02 16:02:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (32,126,'action created','2021-07-02 16:10:40','2021-07-02 16:10:40');
INSERT INTO `wp_actionscheduler_logs` VALUES (33,126,'action started via WP Cron','2021-07-02 16:11:54','2021-07-02 16:11:54');
INSERT INTO `wp_actionscheduler_logs` VALUES (34,126,'action complete via WP Cron','2021-07-02 16:11:54','2021-07-02 16:11:54');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-05-26 00:12:34','2021-05-26 00:12:34','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_duplicator_packages`
--

DROP TABLE IF EXISTS `wp_duplicator_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_duplicator_packages`
--

LOCK TABLES `wp_duplicator_packages` WRITE;
/*!40000 ALTER TABLE `wp_duplicator_packages` DISABLE KEYS */;
INSERT INTO `wp_duplicator_packages` VALUES (1,'20210701_byronhitchcock','5719a8b5985de8ac8265_20210701234553',-1,'2021-07-01 23:46:23','unknown','O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-07-01 23:45:53\";s:7:\"Version\";s:5:\"1.4.1\";s:9:\"VersionWP\";s:5:\"5.7.2\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:23:\"20210701_byronhitchcock\";s:4:\"Hash\";s:35:\"5719a8b5985de8ac8265_20210701234553\";s:8:\"NameHash\";s:59:\"20210701_byronhitchcock_5719a8b5985de8ac8265_20210701234553\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:69:\"20210701_byronhitchcock_5719a8b5985de8ac8265_20210701234553_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";s:4:\"-1.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:71:\"20210701_byronhitchcock_5719a8b5985de8ac8265_20210701234553_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:53:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-07-01 23:45:53\";s:7:\"Version\";s:5:\"1.4.1\";s:9:\"VersionWP\";s:5:\"5.7.2\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:23:\"20210701_byronhitchcock\";s:4:\"Hash\";s:35:\"5719a8b5985de8ac8265_20210701234553\";s:8:\"NameHash\";s:59:\"20210701_byronhitchcock_5719a8b5985de8ac8265_20210701234553\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";s:73:\"20210701_byronhitchcock_5719a8b5985de8ac8265_20210701234553_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:63;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:72:\"20210701_byronhitchcock_5719a8b5985de8ac8265_20210701234553_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server - GPL\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":16:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:51:{s:26:\"wp_actionscheduler_actions\";s:2:\"12\";s:25:\"wp_actionscheduler_claims\";s:1:\"0\";s:25:\"wp_actionscheduler_groups\";s:1:\"2\";s:23:\"wp_actionscheduler_logs\";s:2:\"28\";s:14:\"wp_commentmeta\";s:1:\"0\";s:11:\"wp_comments\";s:1:\"1\";s:22:\"wp_duplicator_packages\";s:1:\"1\";s:8:\"wp_links\";s:1:\"0\";s:25:\"wp_nextend2_image_storage\";s:1:\"7\";s:27:\"wp_nextend2_section_storage\";s:1:\"1\";s:35:\"wp_nextend2_smartslider3_generators\";s:1:\"0\";s:32:\"wp_nextend2_smartslider3_sliders\";s:1:\"2\";s:37:\"wp_nextend2_smartslider3_sliders_xref\";s:1:\"1\";s:31:\"wp_nextend2_smartslider3_slides\";s:1:\"9\";s:10:\"wp_options\";s:3:\"175\";s:11:\"wp_postmeta\";s:3:\"365\";s:8:\"wp_posts\";s:3:\"102\";s:37:\"wp_rich_web_video_slider_effects_data\";s:1:\"7\";s:36:\"wp_rich_web_video_slider_font_family\";s:3:\"125\";s:27:\"wp_rich_web_video_slider_id\";s:1:\"1\";s:32:\"wp_rich_web_video_slider_manager\";s:1:\"1\";s:31:\"wp_rich_web_video_slider_videos\";s:1:\"4\";s:23:\"wp_rich_web_vs_effect_1\";s:1:\"1\";s:24:\"wp_rich_web_vs_effect_10\";s:1:\"0\";s:31:\"wp_rich_web_vs_effect_10_loader\";s:1:\"0\";s:24:\"wp_rich_web_vs_effect_11\";s:1:\"0\";s:31:\"wp_rich_web_vs_effect_11_loader\";s:1:\"0\";s:30:\"wp_rich_web_vs_effect_1_loader\";s:1:\"1\";s:23:\"wp_rich_web_vs_effect_2\";s:1:\"0\";s:30:\"wp_rich_web_vs_effect_2_loader\";s:1:\"0\";s:23:\"wp_rich_web_vs_effect_3\";s:1:\"1\";s:30:\"wp_rich_web_vs_effect_3_loader\";s:1:\"1\";s:23:\"wp_rich_web_vs_effect_4\";s:1:\"1\";s:30:\"wp_rich_web_vs_effect_4_loader\";s:1:\"1\";s:23:\"wp_rich_web_vs_effect_5\";s:1:\"0\";s:30:\"wp_rich_web_vs_effect_5_loader\";s:1:\"0\";s:23:\"wp_rich_web_vs_effect_6\";s:1:\"1\";s:30:\"wp_rich_web_vs_effect_6_loader\";s:1:\"1\";s:23:\"wp_rich_web_vs_effect_7\";s:1:\"1\";s:30:\"wp_rich_web_vs_effect_7_loader\";s:1:\"1\";s:23:\"wp_rich_web_vs_effect_8\";s:1:\"1\";s:30:\"wp_rich_web_vs_effect_8_loader\";s:1:\"1\";s:23:\"wp_rich_web_vs_effect_9\";s:1:\"1\";s:30:\"wp_rich_web_vs_effect_9_loader\";s:1:\"1\";s:21:\"wp_term_relationships\";s:1:\"5\";s:16:\"wp_term_taxonomy\";s:1:\"1\";s:11:\"wp_termmeta\";s:1:\"0\";s:8:\"wp_terms\";s:1:\"1\";s:11:\"wp_usermeta\";s:2:\"23\";s:8:\"wp_users\";s:1:\"1\";s:21:\"wp_wpforms_tasks_meta\";s:1:\"6\";}s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:158:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-content/backups-dup-lite/tmp/20210701_byronhitchcock_5719a8b5985de8ac8265_20210701234553_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:63;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:62:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-admin\";i:1;s:72:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-content/uploads\";i:2;s:74:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-content/languages\";i:3;s:71:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-content/themes\";i:4;s:65:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:53:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public\";i:1;s:64:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-content\";}}s:9:\"Installer\";r:84;s:8:\"Database\";r:98;s:13:\"BuildProgress\";r:181;}');
/*!40000 ALTER TABLE `wp_duplicator_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_image_storage`
--

DROP TABLE IF EXISTS `wp_nextend2_image_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_image_storage`
--

LOCK TABLES `wp_nextend2_image_storage` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_image_storage` DISABLE KEYS */;
INSERT INTO `wp_nextend2_image_storage` VALUES (1,'e2001a247429dddde01488ec997a9edd','$upload$/2021/06/IMG_4938_silhouette-carousel.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES (2,'3b53bab767ab19a752752cd9a0fe9538','$upload$/2021/06/IMG_4967-carousel.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES (3,'05a8530cc75f3fa583849130abb47548','$upload$/2021/06/IMG_4981-carousel.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES (4,'d9edcfc134f18c421dbf571c03838e5b','$upload$/2021/06/P1090260-1-carousel.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES (5,'af489287f9b568d88585da194bd44251','$upload$/2021/06/P1090261-1-carousel.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES (6,'a59b3e7e1be805b053bcb014a19be39f','$upload$/2021/06/P1090266-carousel.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
INSERT INTO `wp_nextend2_image_storage` VALUES (7,'04268eccee3e7294aba524ad9d9982fb','$upload$/2021/06/P1090266-2-carousel.jpg','eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');
/*!40000 ALTER TABLE `wp_nextend2_image_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_section_storage`
--

DROP TABLE IF EXISTS `wp_nextend2_section_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `section` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `referencekey` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  `editable` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `system` (`system`),
  KEY `editable` (`editable`),
  KEY `application` (`application`,`section`(50),`referencekey`(50)),
  KEY `application_2` (`application`,`section`(50))
) ENGINE=InnoDB AUTO_INCREMENT=10111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_section_storage`
--

LOCK TABLES `wp_nextend2_section_storage` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_section_storage` DISABLE KEYS */;
INSERT INTO `wp_nextend2_section_storage` VALUES (10000,'smartslider','settings','','{\"n2_ss3_version\":\"3.5.0.8\\/b:release-3.5.0.8\\/r:5f3aa2e631ad14196de2771bfdd7e9407117872f\"}',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10106,'smartslider','sliderChanged','2','0',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10107,'cache','notweb/n2-ss-2','data.manifest','{\"generator\":[]}',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10108,'cache','notweb/n2-ss-2','variations.manifest','1',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10109,'cache','notweb/n2-ss-2','slideren_US1.manifest','{\"hash\":\"\",\"nextCacheRefresh\":2145916800,\"currentPath\":\"457a86134c6b2ec088fec51327530294\",\"version\":\"3.5.0.8\"}',0,1);
INSERT INTO `wp_nextend2_section_storage` VALUES (10110,'cache','notweb/n2-ss-2','slideren_US1','{\"html\":\"<div><ss3-force-full-width data-overflow-x=\\\"body\\\" data-horizontal-selector=\\\"body\\\"><div class=\\\"n2-section-smartslider fitvidsignore  n2_clear\\\" data-ssid=\\\"2\\\"><div id=\\\"n2-ss-2-align\\\" class=\\\"n2-ss-align\\\"><div class=\\\"n2-padding\\\"><div id=\\\"n2-ss-2\\\" data-creator=\\\"Smart Slider 3\\\" data-responsive=\\\"fullwidth\\\" class=\\\"n2-ss-slider n2-ow n2-has-hover n2notransition  \\\"><div class=\\\"n2-ss-slider-wrapper-inside\\\">\\n        <div class=\\\"n2-ss-slider-1 n2_ss__touch_element n2-ow\\\" style=\\\"\\\">\\n            <div class=\\\"n2-ss-slider-2 n2-ow\\\">\\n                                                <div class=\\\"n2-ss-slider-3 n2-ow\\\" style=\\\"\\\">\\n\\n                    <div class=\\\"n2-ss-slide-backgrounds n2-ow-all\\\"><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"1\\\" data-mode=\\\"fit\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/IMG_4967-carousel.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"2\\\" data-mode=\\\"fit\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/P1090266-carousel.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"3\\\" data-mode=\\\"fit\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/IMG_4938_silhouette-carousel.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"4\\\" data-mode=\\\"fit\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/P1090261-1-carousel.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"5\\\" data-mode=\\\"fit\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/IMG_4981-carousel.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"6\\\" data-mode=\\\"fit\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/P1090260-1-carousel.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"7\\\" data-mode=\\\"fit\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/P1090266-2-carousel.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><\\/div>                    <div class=\\\"n2-ss-slider-4 n2-ow\\\">\\n                        <svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" viewBox=\\\"0 0 600 600\\\" data-related-device=\\\"desktopPortrait\\\" class=\\\"n2-ow n2-ss-preserve-size n2-ss-preserve-size--slider n2-ss-slide-limiter\\\"><\\/svg><div data-first=\\\"1\\\" data-slide-duration=\\\"0\\\" data-id=\\\"4\\\" data-slide-public-id=\\\"1\\\" data-title=\\\"IMG_4967- carousel\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-4\\\"><div tabindex=\\\"-1\\\" class=\\\"n2-ss-slide--focus\\\" role=\\\"note\\\">IMG_4967- carousel<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-Gy0aDwVTQ5Qc\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"8\\\" data-slide-public-id=\\\"2\\\" data-title=\\\"P1090266- carousel\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-8\\\"><div tabindex=\\\"-1\\\" class=\\\"n2-ss-slide--focus\\\" role=\\\"note\\\">P1090266- carousel<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-u4p1NzD0DSuT\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"3\\\" data-slide-public-id=\\\"3\\\" data-title=\\\"IMG_4938_silhouette- carousel\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-3\\\"><div tabindex=\\\"-1\\\" class=\\\"n2-ss-slide--focus\\\" role=\\\"note\\\">IMG_4938_silhouette- carousel<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-jp1bUgYZWDIj\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"7\\\" data-slide-public-id=\\\"4\\\" data-title=\\\"P1090261 (1)- carousel\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-7\\\"><div tabindex=\\\"-1\\\" class=\\\"n2-ss-slide--focus\\\" role=\\\"note\\\">P1090261 (1)- carousel<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-ewsAEcDnk8uY\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"5\\\" data-slide-public-id=\\\"5\\\" data-title=\\\"IMG_4981- carousel\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-5\\\"><div tabindex=\\\"-1\\\" class=\\\"n2-ss-slide--focus\\\" role=\\\"note\\\">IMG_4981- carousel<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-ZAJNPCVZ8z09\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"6\\\" data-slide-public-id=\\\"6\\\" data-title=\\\"P1090260 (1)- carousel\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-6\\\"><div tabindex=\\\"-1\\\" class=\\\"n2-ss-slide--focus\\\" role=\\\"note\\\">P1090260 (1)- carousel<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-FPZyfBb9AQQm\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"9\\\" data-slide-public-id=\\\"7\\\" data-title=\\\"P1090266-2- carousel\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-9\\\"><div tabindex=\\\"-1\\\" class=\\\"n2-ss-slide--focus\\\" role=\\\"note\\\">P1090266-2- carousel<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-oExCIcM4cRHX\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div>                    <\\/div>\\n\\n                                    <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"n2-ss-slider-controls n2-ss-slider-controls-absolute-left-center\\\"><div style=\\\"--widget-offset:15px;\\\" class=\\\"n2-ss-widget nextend-arrow n2-ow-all nextend-arrow-previous  nextend-arrow-animated-fade\\\" data-hide-mobileportrait=\\\"1\\\" id=\\\"n2-ss-2-arrow-previous\\\" role=\\\"button\\\" aria-label=\\\"previous arrow\\\" tabindex=\\\"0\\\"><img width=\\\"32\\\" height=\\\"32\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xMS40MzMgMTUuOTkyTDIyLjY5IDUuNzEyYy4zOTMtLjM5LjM5My0xLjAzIDAtMS40Mi0uMzkzLS4zOS0xLjAzLS4zOS0xLjQyMyAwbC0xMS45OCAxMC45NGMtLjIxLjIxLS4zLjQ5LS4yODUuNzYtLjAxNS4yOC4wNzUuNTYuMjg0Ljc3bDExLjk4IDEwLjk0Yy4zOTMuMzkgMS4wMy4zOSAxLjQyNCAwIC4zOTMtLjQuMzkzLTEuMDMgMC0xLjQybC0xMS4yNTctMTAuMjkiCiAgICAgICAgICBmaWxsPSIjZmZmZmZmIiBvcGFjaXR5PSIwLjgiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4=\\\" alt=\\\"previous arrow\\\"><\\/div><\\/div><div class=\\\"n2-ss-slider-controls n2-ss-slider-controls-absolute-right-center\\\"><div style=\\\"--widget-offset:15px;\\\" class=\\\"n2-ss-widget nextend-arrow n2-ow-all nextend-arrow-next  nextend-arrow-animated-fade\\\" data-hide-mobileportrait=\\\"1\\\" id=\\\"n2-ss-2-arrow-next\\\" role=\\\"button\\\" aria-label=\\\"next arrow\\\" tabindex=\\\"0\\\"><img width=\\\"32\\\" height=\\\"32\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xMC43MjIgNC4yOTNjLS4zOTQtLjM5LTEuMDMyLS4zOS0xLjQyNyAwLS4zOTMuMzktLjM5MyAxLjAzIDAgMS40MmwxMS4yODMgMTAuMjgtMTEuMjgzIDEwLjI5Yy0uMzkzLjM5LS4zOTMgMS4wMiAwIDEuNDIuMzk1LjM5IDEuMDMzLjM5IDEuNDI3IDBsMTIuMDA3LTEwLjk0Yy4yMS0uMjEuMy0uNDkuMjg0LS43Ny4wMTQtLjI3LS4wNzYtLjU1LS4yODYtLjc2TDEwLjcyIDQuMjkzeiIKICAgICAgICAgIGZpbGw9IiNmZmZmZmYiIG9wYWNpdHk9IjAuOCIgZmlsbC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPg==\\\" alt=\\\"next arrow\\\"><\\/div><\\/div><\\/div><\\/div><ss3-loader><\\/ss3-loader><\\/div><\\/div><div class=\\\"n2_clear\\\"><\\/div><\\/div><\\/ss3-force-full-width><\\/div>\",\"assets\":{\"css\":{\"staticGroupPreload\":{\"smartslider\":\"\\/Users\\/teresaloafman\\/Local Sites\\/byron-hitchcock\\/app\\/public\\/wp-content\\/plugins\\/smart-slider-3\\/Public\\/SmartSlider3\\/Application\\/Frontend\\/Assets\\/dist\\/smartslider.min.css\"},\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":{\"n2-ss-2\":\"div#n2-ss-2 .n2-ss-slider-1{display:grid;position:relative;}div#n2-ss-2 .n2-ss-slider-2{display:grid;position:relative;overflow:hidden;padding:0px 0px 0px 0px;border:0px solid RGBA(62,62,62,1);border-radius:0px;background-clip:padding-box;background-repeat:repeat;background-position:50% 50%;background-size:cover;background-attachment:scroll;z-index:1;}div#n2-ss-2:not(.n2-ss-loaded) .n2-ss-slider-2{background-image:none !important;}div#n2-ss-2 .n2-ss-slider-3{display:grid;grid-template-areas:\'cover\';position:relative;overflow:hidden;z-index:10;}div#n2-ss-2 .n2-ss-slider-3 > *{grid-area:cover;}div#n2-ss-2 .n2-ss-slide-backgrounds,div#n2-ss-2 .n2-ss-slider-3 > .n2-ss-divider{position:relative;}div#n2-ss-2 .n2-ss-slide-backgrounds{z-index:10;}div#n2-ss-2 .n2-ss-slide-backgrounds > *{overflow:hidden;}div#n2-ss-2 .n2-ss-slide-background{transform:translateX(-100000px);}div#n2-ss-2 .n2-ss-slider-4{place-self:center;position:relative;width:100%;height:100%;display:grid;grid-template-areas:\'slide\';}div#n2-ss-2 .n2-ss-slider-4 > *{grid-area:slide;}div#n2-ss-2.n2-ss-full-page--constrain-ratio .n2-ss-slider-4{height:auto;}div#n2-ss-2 .n2-ss-slide{display:grid;place-items:center;grid-auto-columns:100%;position:relative;z-index:20;-webkit-backface-visibility:hidden;transform:translateX(-100000px);}div#n2-ss-2 .n2-ss-slide{perspective:1500px;}div#n2-ss-2 .n2-ss-slide-active{z-index:21;}.n2-ss-background-animation{position:absolute;top:0;left:0;width:100%;height:100%;z-index:3;}div#n2-ss-2 .nextend-arrow{cursor:pointer;overflow:hidden;line-height:0 !important;z-index:18;}div#n2-ss-2 .nextend-arrow img{position:relative;display:block;}div#n2-ss-2 .nextend-arrow img.n2-arrow-hover-img{display:none;}div#n2-ss-2 .nextend-arrow:HOVER img.n2-arrow-hover-img{display:inline;}div#n2-ss-2 .nextend-arrow:HOVER img.n2-arrow-normal-img{display:none;}div#n2-ss-2 .nextend-arrow-animated{overflow:hidden;}div#n2-ss-2 .nextend-arrow-animated > div{position:relative;}div#n2-ss-2 .nextend-arrow-animated .n2-active{position:absolute;}div#n2-ss-2 .nextend-arrow-animated-fade{transition:background 0.3s, opacity 0.4s;}div#n2-ss-2 .nextend-arrow-animated-horizontal > div{transition:all 0.4s;transform:none;}div#n2-ss-2 .nextend-arrow-animated-horizontal .n2-active{top:0;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-horizontal .n2-active{left:100%;}div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-horizontal .n2-active{right:100%;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-horizontal:HOVER > div,div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-horizontal:FOCUS > div{transform:translateX(-100%);}div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-horizontal:HOVER > div,div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-horizontal:FOCUS > div{transform:translateX(100%);}div#n2-ss-2 .nextend-arrow-animated-vertical > div{transition:all 0.4s;transform:none;}div#n2-ss-2 .nextend-arrow-animated-vertical .n2-active{left:0;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-vertical .n2-active{top:100%;}div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-vertical .n2-active{bottom:100%;}div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-vertical:HOVER > div,div#n2-ss-2 .nextend-arrow-previous.nextend-arrow-animated-vertical:FOCUS > div{transform:translateY(-100%);}div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-vertical:HOVER > div,div#n2-ss-2 .nextend-arrow-next.nextend-arrow-animated-vertical:FOCUS > div{transform:translateY(100%);}div#n2-ss-2 .n2-ss-slide-limiter{max-width:600px;}div#n2-ss-2 .nextend-arrow img{width: 32px}@media (min-width: 1200px){div#n2-ss-2 [data-hide-desktopportrait=\\\"1\\\"]{display: none !important;}}@media (orientation: landscape) and (max-width: 1199px) and (min-width: 901px),(orientation: portrait) and (max-width: 1199px) and (min-width: 701px){div#n2-ss-2 [data-hide-tabletportrait=\\\"1\\\"]{display: none !important;}}@media (orientation: landscape) and (max-width: 900px),(orientation: portrait) and (max-width: 700px){div#n2-ss-2 [data-hide-mobileportrait=\\\"1\\\"]{display: none !important;}div#n2-ss-2 .nextend-arrow img{width: 16px}}\"},\"globalInline\":[]},\"less\":{\"staticGroupPreload\":[],\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"js\":{\"staticGroupPreload\":[],\"staticGroup\":{\"smartslider-frontend\":\"\\/Users\\/teresaloafman\\/Local Sites\\/byron-hitchcock\\/app\\/public\\/wp-content\\/plugins\\/smart-slider-3\\/Public\\/SmartSlider3\\/Application\\/Frontend\\/Assets\\/dist\\/smartslider-frontend.min.js\",\"ss-simple\":\"\\/Users\\/teresaloafman\\/Local Sites\\/byron-hitchcock\\/app\\/public\\/wp-content\\/plugins\\/smart-slider-3\\/Public\\/SmartSlider3\\/Slider\\/SliderType\\/Simple\\/Assets\\/dist\\/ss-simple.min.js\",\"w-arrow-image\":\"\\/Users\\/teresaloafman\\/Local Sites\\/byron-hitchcock\\/app\\/public\\/wp-content\\/plugins\\/smart-slider-3\\/Public\\/SmartSlider3\\/Widget\\/Arrow\\/ArrowImage\\/Assets\\/dist\\/w-arrow-image.min.js\"},\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[\"_N2.r([\\\"documentReady\\\",\\\"smartslider-frontend\\\",\\\"SmartSliderWidgetArrowImage\\\",\\\"ss-simple\\\"],function(){new _N2.SmartSliderSimple(\'n2-ss-2\', {\\\"admin\\\":false,\\\"callbacks\\\":\\\"\\\",\\\"background.video.mobile\\\":1,\\\"alias\\\":{\\\"id\\\":0,\\\"smoothScroll\\\":0,\\\"slideSwitch\\\":0,\\\"scroll\\\":1},\\\"align\\\":\\\"normal\\\",\\\"isDelayed\\\":0,\\\"responsive\\\":{\\\"mediaQueries\\\":{\\\"all\\\":false,\\\"desktopportrait\\\":[\\\"(min-width: 1200px)\\\"],\\\"tabletportrait\\\":[\\\"(orientation: landscape) and (max-width: 1199px) and (min-width: 901px)\\\",\\\"(orientation: portrait) and (max-width: 1199px) and (min-width: 701px)\\\"],\\\"mobileportrait\\\":[\\\"(orientation: landscape) and (max-width: 900px)\\\",\\\"(orientation: portrait) and (max-width: 700px)\\\"]},\\\"base\\\":{\\\"slideOuterWidth\\\":600,\\\"slideOuterHeight\\\":600,\\\"sliderWidth\\\":600,\\\"sliderHeight\\\":600,\\\"slideWidth\\\":600,\\\"slideHeight\\\":600},\\\"hideOn\\\":{\\\"desktopLandscape\\\":false,\\\"desktopPortrait\\\":false,\\\"tabletLandscape\\\":false,\\\"tabletPortrait\\\":false,\\\"mobileLandscape\\\":false,\\\"mobilePortrait\\\":false},\\\"onResizeEnabled\\\":true,\\\"type\\\":\\\"fullwidth\\\",\\\"sliderHeightBasedOn\\\":\\\"real\\\",\\\"focusUser\\\":1,\\\"focusEdge\\\":\\\"auto\\\",\\\"breakpoints\\\":[{\\\"device\\\":\\\"tabletPortrait\\\",\\\"type\\\":\\\"max-screen-width\\\",\\\"portraitWidth\\\":1199,\\\"landscapeWidth\\\":1199},{\\\"device\\\":\\\"mobilePortrait\\\",\\\"type\\\":\\\"max-screen-width\\\",\\\"portraitWidth\\\":700,\\\"landscapeWidth\\\":900}],\\\"enabledDevices\\\":{\\\"desktopLandscape\\\":0,\\\"desktopPortrait\\\":1,\\\"tabletLandscape\\\":0,\\\"tabletPortrait\\\":1,\\\"mobileLandscape\\\":0,\\\"mobilePortrait\\\":1},\\\"sizes\\\":{\\\"desktopPortrait\\\":{\\\"width\\\":600,\\\"height\\\":600,\\\"max\\\":3000,\\\"min\\\":600},\\\"tabletPortrait\\\":{\\\"width\\\":600,\\\"height\\\":600,\\\"customHeight\\\":false,\\\"max\\\":1199,\\\"min\\\":600},\\\"mobilePortrait\\\":{\\\"width\\\":320,\\\"height\\\":320,\\\"customHeight\\\":false,\\\"max\\\":900,\\\"min\\\":320}},\\\"overflowHiddenPage\\\":0,\\\"focus\\\":{\\\"offsetTop\\\":\\\"#wpadminbar\\\",\\\"offsetBottom\\\":\\\"\\\"}},\\\"controls\\\":{\\\"mousewheel\\\":0,\\\"touch\\\":\\\"horizontal\\\",\\\"keyboard\\\":1,\\\"blockCarouselInteraction\\\":1},\\\"playWhenVisible\\\":1,\\\"playWhenVisibleAt\\\":0.5,\\\"lazyLoad\\\":0,\\\"lazyLoadNeighbor\\\":0,\\\"blockrightclick\\\":0,\\\"maintainSession\\\":0,\\\"autoplay\\\":{\\\"enabled\\\":1,\\\"start\\\":1,\\\"duration\\\":8000,\\\"autoplayLoop\\\":1,\\\"allowReStart\\\":0,\\\"pause\\\":{\\\"click\\\":1,\\\"mouse\\\":\\\"0\\\",\\\"mediaStarted\\\":1},\\\"resume\\\":{\\\"click\\\":0,\\\"mouse\\\":\\\"0\\\",\\\"mediaEnded\\\":1,\\\"slidechanged\\\":0},\\\"interval\\\":1,\\\"intervalModifier\\\":\\\"loop\\\",\\\"intervalSlide\\\":\\\"current\\\"},\\\"perspective\\\":1500,\\\"layerMode\\\":{\\\"playOnce\\\":0,\\\"playFirstLayer\\\":1,\\\"mode\\\":\\\"skippable\\\",\\\"inAnimation\\\":\\\"mainInEnd\\\"},\\\"bgAnimations\\\":0,\\\"mainanimation\\\":{\\\"type\\\":\\\"horizontal\\\",\\\"duration\\\":800,\\\"delay\\\":0,\\\"ease\\\":\\\"easeOutQuad\\\",\\\"shiftedBackgroundAnimation\\\":0},\\\"carousel\\\":1,\\\"initCallbacks\\\":function(){new _N2.SmartSliderWidgetArrowImage(this);}});});\"],\"globalInline\":[]},\"googleFonts\":{\"staticGroupPreload\":[],\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"image\":{\"images\":[\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/IMG_4967-carousel.jpg\",\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/P1090266-carousel.jpg\",\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/IMG_4938_silhouette-carousel.jpg\",\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/P1090261-1-carousel.jpg\",\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/IMG_4981-carousel.jpg\",\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/P1090260-1-carousel.jpg\",\"\\/\\/byron-hitchcock.local\\/wp-content\\/uploads\\/2021\\/06\\/P1090266-2-carousel.jpg\"]}}}',0,1);
/*!40000 ALTER TABLE `wp_nextend2_section_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_generators`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_generators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_generators`
--

LOCK TABLES `wp_nextend2_smartslider3_generators` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_generators` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_generators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_sliders`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'published',
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders`
--

LOCK TABLES `wp_nextend2_smartslider3_sliders` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders` DISABLE KEYS */;
INSERT INTO `wp_nextend2_smartslider3_sliders` VALUES (1,NULL,'Tutorial Slider','simple','{\"aria-label\":\"Slider\",\"alias-id\":\"\",\"alias-smoothscroll\":\"\",\"alias-slideswitch\":\"\",\"background\":\"\",\"background-fixed\":\"0\",\"background-size\":\"cover\",\"background-color\":\"FFFFFF00\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"backgroundVideoMode\":\"fill\",\"align\":\"normal\",\"margin\":\"0|*|0|*|0|*|0\",\"padding\":\"0|*|0|*|0|*|0\",\"perspective\":\"1000\",\"border-width\":\"0\",\"border-color\":\"3E3E3Eff\",\"border-radius\":\"0\",\"slider-preset\":\"\",\"slider-css\":\"\",\"width\":\"1200\",\"height\":\"600\",\"mobileportrait\":\"1\",\"mobilelandscape\":\"1\",\"tabletportrait\":\"1\",\"tabletlandscape\":\"1\",\"desktopportrait\":\"1\",\"desktoplandscape\":\"1\",\"responsiveLimitSlideWidth\":\"1\",\"responsiveSlideWidthDesktopLandscape\":\"0\",\"responsiveSlideWidthMaxDesktopLandscape\":\"1600\",\"responsiveSlideWidth\":\"0\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthTabletLandscape\":\"0\",\"responsiveSlideWidthMaxTabletLandscape\":\"1200\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"3000\",\"responsiveSlideWidthMobileLandscape\":\"0\",\"responsiveSlideWidthMaxMobileLandscape\":\"740\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsive-breakpoint-desktop-portrait\":\"1440\",\"responsive-breakpoint-desktop-portrait-landscape\":\"1440\",\"responsive-breakpoint-tablet-landscape\":\"1300\",\"responsive-breakpoint-tablet-landscape-landscape\":\"1300\",\"responsive-breakpoint-tablet-portrait\":\"1199\",\"responsive-breakpoint-tablet-portrait-landscape\":\"1199\",\"responsive-breakpoint-mobile-landscape\":\"900\",\"responsive-breakpoint-mobile-landscape-landscape\":\"1050\",\"responsive-breakpoint-mobile-portrait\":\"700\",\"responsive-breakpoint-mobile-portrait-landscape\":\"900\",\"responsive-breakpoint-desktop-landscape-enabled\":\"0\",\"responsive-breakpoint-tablet-landscape-enabled\":\"0\",\"responsive-breakpoint-tablet-portrait-enabled\":\"1\",\"responsive-breakpoint-mobile-landscape-enabled\":\"0\",\"responsive-breakpoint-mobile-portrait-enabled\":\"1\",\"responsive-breakpoint-global\":\"0\",\"breakpoints-orientation\":\"portrait\",\"responsive-mode\":\"fullwidth\",\"responsiveSliderHeightMin\":\"0\",\"responsiveForceFull\":\"1\",\"responsiveForceFullOverflowX\":\"body\",\"responsiveForceFullHorizontalSelector\":\"body\",\"slider-size-override\":\"0\",\"slider-size-override-mobile-portrait\":\"0\",\"mobile-portrait-width\":\"320\",\"mobile-portrait-height\":\"568\",\"slider-size-override-mobile-landscape\":\"0\",\"mobile-landscape-width\":\"568\",\"mobile-landscape-height\":\"320\",\"slider-size-override-tablet-portrait\":\"0\",\"tablet-portrait-width\":\"768\",\"tablet-portrait-height\":\"1024\",\"slider-size-override-tablet-landscape\":\"0\",\"tablet-landscape-width\":\"1024\",\"tablet-landscape-height\":\"768\",\"slider-size-override-desktop-landscape\":\"0\",\"desktop-landscape-width\":\"1440\",\"desktop-landscape-height\":\"900\",\"controlsTouch\":\"horizontal\",\"controlsScroll\":\"0\",\"controlsKeyboard\":\"1\",\"widget-arrow-enabled\":\"0\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-previous\":\"thin-horizontal.svg\",\"widget-arrow-previous-image\":\"\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"1\",\"widget-arrow-previous-hover-color\":\"ffffffff\",\"widget-arrow-mirror\":\"1\",\"widget-arrow-next\":\"thin-horizontal.svg\",\"widget-arrow-next-image\":\"\",\"widget-arrow-next-color\":\"ffffffcc\",\"widget-arrow-next-hover\":\"0\",\"widget-arrow-next-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-animation\":\"fade\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widget-arrow-base64\":\"1\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-display-mobileportrait\":\"0\",\"widget-arrow-display-mobilelandscape\":\"0\",\"widget-arrow-display-tabletportrait\":\"1\",\"widget-arrow-display-tabletlandscape\":\"1\",\"widget-arrow-display-desktopportrait\":\"1\",\"widget-arrow-display-desktoplandscape\":\"1\",\"widget-arrow-exclude-slides\":\"\",\"widget-bullet-enabled\":\"1\",\"widgetbullet\":\"transition\",\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"10\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"5\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widget-bullet-action\":\"click\",\"widget-bullet-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"5|*|5|*|5|*|5|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"2|*|solid|*|ffffffcc\\\",\\\"borderradius\\\":\\\"50\\\",\\\"extra\\\":\\\"margin: 4px;\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffcc\\\",\\\"border\\\":\\\"2|*|solid|*|ffffffcc\\\"}]}\",\"widget-bullet-bar\":\"\",\"widget-bullet-bar-full-size\":\"0\",\"widget-bullet-align\":\"center\",\"widget-bullet-orientation\":\"auto\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"60\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000080\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"margin: 5px;\\\"}]}\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-display-mobileportrait\":\"1\",\"widget-bullet-display-mobilelandscape\":\"1\",\"widget-bullet-display-tabletportrait\":\"1\",\"widget-bullet-display-tabletlandscape\":\"1\",\"widget-bullet-display-desktopportrait\":\"1\",\"widget-bullet-display-desktoplandscape\":\"1\",\"widget-bullet-exclude-slides\":\"\",\"widget-bar-enabled\":\"0\",\"widgetbar\":\"horizontal\",\"widget-bar-position-mode\":\"simple\",\"widget-bar-position-area\":\"10\",\"widget-bar-position-stack\":\"1\",\"widget-bar-position-offset\":\"30\",\"widget-bar-position-horizontal\":\"left\",\"widget-bar-position-horizontal-position\":\"0\",\"widget-bar-position-horizontal-unit\":\"px\",\"widget-bar-position-vertical\":\"top\",\"widget-bar-position-vertical-position\":\"0\",\"widget-bar-position-vertical-unit\":\"px\",\"widget-bar-animate\":\"0\",\"widget-bar-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"5|*|20|*|5|*|20|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"40\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-bar-show-title\":\"1\",\"widget-bar-font-title\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http://fonts.googleapis.com/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-show-description\":\"1\",\"widget-bar-font-description\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":1,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-slide-count\":\"0\",\"widget-bar-width\":\"100%\",\"widget-bar-full-width\":\"0\",\"widget-bar-separator\":\" - \",\"widget-bar-align\":\"center\",\"widget-bar-display-hover\":\"0\",\"widget-bar-display-mobileportrait\":\"1\",\"widget-bar-display-mobilelandscape\":\"1\",\"widget-bar-display-tabletportrait\":\"1\",\"widget-bar-display-tabletlandscape\":\"1\",\"widget-bar-display-desktopportrait\":\"1\",\"widget-bar-display-desktoplandscape\":\"1\",\"widget-bar-exclude-slides\":\"\",\"widget-thumbnail-enabled\":\"0\",\"widgetthumbnail\":\"default\",\"widget-thumbnail-show-image\":\"1\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widget-thumbnail-position-mode\":\"simple\",\"widget-thumbnail-position-area\":\"12\",\"widget-thumbnail-position-stack\":\"1\",\"widget-thumbnail-position-offset\":\"0\",\"widget-thumbnail-position-horizontal\":\"left\",\"widget-thumbnail-position-horizontal-position\":\"0\",\"widget-thumbnail-position-horizontal-unit\":\"px\",\"widget-thumbnail-position-vertical\":\"top\",\"widget-thumbnail-position-vertical-position\":\"0\",\"widget-thumbnail-position-vertical-unit\":\"px\",\"widget-thumbnail-action\":\"click\",\"widget-thumbnail-align-content\":\"start\",\"widget-thumbnail-style-bar\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"242424ff\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-style-slides\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"padding\\\":\\\"0|*|0|*|0|*|0|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|ffffff00\\\",\\\"borderradius\\\":\\\"0\\\",\\\"opacity\\\":\\\"40\\\",\\\"extra\\\":\\\"margin: 3px;\\ntransition: all 0.4s;\\nbackground-size: cover;\\\"},{\\\"border\\\":\\\"0|*|solid|*|ffffffcc\\\",\\\"opacity\\\":\\\"100\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-title-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"3|*|10|*|3|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"bottom: 0;\\nleft: 0;\\\"}]}\",\"widget-thumbnail-title\":\"0\",\"widget-thumbnail-title-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http://fonts.googleapis.com/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-description\":\"0\",\"widget-thumbnail-description-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http://fonts.googleapis.com/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-caption-placement\":\"overlay\",\"widget-thumbnail-caption-size\":\"100\",\"widget-thumbnail-arrow\":\"1\",\"widget-thumbnail-arrow-width\":\"26\",\"widget-thumbnail-arrow-offset\":\"0\",\"widget-thumbnail-arrow-prev-alt\":\"previous arrow\",\"widget-thumbnail-arrow-next-alt\":\"next arrow\",\"widget-thumbnail-arrow-image\":\"\",\"widget-thumbnail-group\":\"1\",\"widget-thumbnail-invert-group-direction\":\"0\",\"widget-thumbnail-orientation\":\"auto\",\"widget-thumbnail-size\":\"100%\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-display-mobileportrait\":\"1\",\"widget-thumbnail-display-mobilelandscape\":\"1\",\"widget-thumbnail-display-tabletportrait\":\"1\",\"widget-thumbnail-display-tabletlandscape\":\"1\",\"widget-thumbnail-display-desktopportrait\":\"1\",\"widget-thumbnail-display-desktoplandscape\":\"1\",\"widget-thumbnail-exclude-slides\":\"\",\"widget-shadow-enabled\":\"0\",\"widgetshadow\":\"shadow\",\"widget-shadow-shadow\":\"dark.png\",\"widget-shadow-shadow-image\":\"\",\"widget-shadow-width\":\"100%\",\"widget-shadow-display-mobileportrait\":\"1\",\"widget-shadow-display-mobilelandscape\":\"1\",\"widget-shadow-display-tabletportrait\":\"1\",\"widget-shadow-display-tabletlandscape\":\"1\",\"widget-shadow-display-desktopportrait\":\"1\",\"widget-shadow-display-desktoplandscape\":\"1\",\"widget-shadow-exclude-slides\":\"\",\"widget-fullscreen-enabled\":\"0\",\"widgetfullscreen\":\"image\",\"widget-fullscreen-tonormal\":\"full1.svg\",\"widget-fullscreen-tonormal-image\":\"\",\"widget-fullscreen-tonormal-color\":\"ffffffcc\",\"widget-fullscreen-mirror\":\"1\",\"widget-fullscreen-tofull\":\"full1.svg\",\"widget-fullscreen-tofull-image\":\"\",\"widget-fullscreen-tofull-color\":\"ffffffcc\",\"widget-fullscreen-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"10|*|10|*|10|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"backgroundcolor\\\":\\\"000000ab\\\"}]}\",\"widget-fullscreen-position-mode\":\"simple\",\"widget-fullscreen-position-area\":\"4\",\"widget-fullscreen-position-stack\":\"1\",\"widget-fullscreen-position-offset\":\"15\",\"widget-fullscreen-position-horizontal\":\"left\",\"widget-fullscreen-position-horizontal-position\":\"0\",\"widget-fullscreen-position-horizontal-unit\":\"px\",\"widget-fullscreen-position-vertical\":\"top\",\"widget-fullscreen-position-vertical-position\":\"0\",\"widget-fullscreen-position-vertical-unit\":\"px\",\"widget-fullscreen-responsive-desktop\":\"1\",\"widget-fullscreen-responsive-tablet\":\"0.7\",\"widget-fullscreen-responsive-mobile\":\"0.5\",\"widget-fullscreen-display-hover\":\"0\",\"widget-fullscreen-display-mobileportrait\":\"1\",\"widget-fullscreen-display-mobilelandscape\":\"1\",\"widget-fullscreen-display-tabletportrait\":\"1\",\"widget-fullscreen-display-tabletlandscape\":\"1\",\"widget-fullscreen-display-desktopportrait\":\"1\",\"widget-fullscreen-display-desktoplandscape\":\"1\",\"widget-fullscreen-exclude-slides\":\"\",\"widget-html-enabled\":\"0\",\"widgethtml\":\"html\",\"widget-html-position-mode\":\"simple\",\"widget-html-position-area\":\"2\",\"widget-html-position-stack\":\"1\",\"widget-html-position-offset\":\"0\",\"widget-html-position-horizontal\":\"left\",\"widget-html-position-horizontal-position\":\"0\",\"widget-html-position-horizontal-unit\":\"px\",\"widget-html-position-vertical\":\"top\",\"widget-html-position-vertical-position\":\"0\",\"widget-html-position-vertical-unit\":\"px\",\"widget-html-code\":\"\",\"widget-html-display-hover\":\"0\",\"widget-html-display-mobileportrait\":\"1\",\"widget-html-display-mobilelandscape\":\"1\",\"widget-html-display-tabletportrait\":\"1\",\"widget-html-display-tabletlandscape\":\"1\",\"widget-html-display-desktopportrait\":\"1\",\"widget-html-display-desktoplandscape\":\"1\",\"widget-html-exclude-slides\":\"\",\"animation\":\"fade\",\"animation-duration\":\"500\",\"animation-delay\":\"0\",\"animation-easing\":\"easeOutQuad\",\"carousel\":\"1\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"normal\",\"animation-shifted-background-animation\":\"auto\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"shape-divider\":\"\",\"particle\":\"\",\"playfirstlayer\":\"1\",\"playonce\":\"0\",\"layer-animation-play-in\":\"end\",\"layer-animation-play-mode\":\"skippable\",\"parallax-enabled\":\"1\",\"parallax-enabled-mobile\":\"0\",\"parallax-3d\":\"0\",\"parallax-animate\":\"1\",\"parallax-horizontal\":\"mouse\",\"parallax-vertical\":\"mouse\",\"parallax-mouse-origin\":\"slider\",\"parallax-scroll-move\":\"both\",\"autoplay\":\"0\",\"autoplayDuration\":\"8000\",\"autoplayStart\":\"1\",\"autoplayAllowReStart\":\"0\",\"autoplayLoop\":\"1\",\"autoplayfinish\":\"1|*|loop|*|current\",\"loop-single-slide\":\"0\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"widget-autoplay-enabled\":\"0\",\"widgetautoplay\":\"image\",\"widget-autoplay-play\":\"small-light.svg\",\"widget-autoplay-play-image\":\"\",\"widget-autoplay-play-color\":\"ffffffcc\",\"widget-autoplay-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"10|*|10|*|10|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"backgroundcolor\\\":\\\"000000ab\\\"}]}\",\"widget-autoplay-mirror\":\"1\",\"widget-autoplay-pause\":\"small-light.svg\",\"widget-autoplay-pause-image\":\"\",\"widget-autoplay-pause-color\":\"ffffffcc\",\"widget-autoplay-responsive-desktop\":\"1\",\"widget-autoplay-responsive-tablet\":\"0.7\",\"widget-autoplay-responsive-mobile\":\"0.5\",\"widget-autoplay-position-mode\":\"simple\",\"widget-autoplay-position-area\":\"4\",\"widget-autoplay-position-stack\":\"1\",\"widget-autoplay-position-offset\":\"15\",\"widget-autoplay-position-horizontal\":\"left\",\"widget-autoplay-position-horizontal-position\":\"0\",\"widget-autoplay-position-horizontal-unit\":\"px\",\"widget-autoplay-position-vertical\":\"top\",\"widget-autoplay-position-vertical-position\":\"0\",\"widget-autoplay-position-vertical-unit\":\"px\",\"widget-autoplay-display-hover\":\"0\",\"widget-autoplay-display-mobileportrait\":\"1\",\"widget-autoplay-display-mobilelandscape\":\"1\",\"widget-autoplay-display-tabletportrait\":\"1\",\"widget-autoplay-display-tabletlandscape\":\"1\",\"widget-autoplay-display-desktopportrait\":\"1\",\"widget-autoplay-display-desktoplandscape\":\"1\",\"widget-autoplay-exclude-slides\":\"\",\"widget-indicator-enabled\":\"0\",\"widgetindicator\":\"pie\",\"widget-indicator-position-mode\":\"simple\",\"widget-indicator-position-area\":\"4\",\"widget-indicator-position-stack\":\"1\",\"widget-indicator-position-offset\":\"15\",\"widget-indicator-position-horizontal\":\"left\",\"widget-indicator-position-horizontal-position\":\"0\",\"widget-indicator-position-horizontal-unit\":\"px\",\"widget-indicator-position-vertical\":\"top\",\"widget-indicator-position-vertical-position\":\"0\",\"widget-indicator-position-vertical-unit\":\"px\",\"widget-indicator-size\":\"25\",\"widget-indicator-thickness\":\"30\",\"widget-indicator-track\":\"000000ab\",\"widget-indicator-bar\":\"ffffffff\",\"widget-indicator-style\":\"\",\"widget-indicator-display-hover\":\"0\",\"widget-indicator-display-mobileportrait\":\"1\",\"widget-indicator-display-mobilelandscape\":\"1\",\"widget-indicator-display-tabletportrait\":\"1\",\"widget-indicator-display-tabletlandscape\":\"1\",\"widget-indicator-display-desktopportrait\":\"1\",\"widget-indicator-display-desktoplandscape\":\"1\",\"widget-indicator-exclude-slides\":\"\",\"imageload\":\"0\",\"imageloadNeighborSlides\":\"0\",\"optimize-scale\":\"0\",\"optimize-quality\":\"70\",\"optimize-thumbnail-scale\":\"0\",\"optimize-thumbnail-quality\":\"70\",\"optimize-slide-width-normal\":\"1920\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"layer-image-optimize\":\"0\",\"layer-image-width-tablet\":\"800\",\"layer-image-width-mobile\":\"425\",\"layer-image-base64\":\"0\",\"layer-image-base64-size\":\"50\",\"slides-background-video-mobile\":\"1\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"backgroundMode\":\"fill\",\"slide-css\":\"\",\"randomize\":\"0\",\"randomizeFirst\":\"0\",\"randomize-cache\":\"1\",\"variations\":\"5\",\"reverse-slides\":\"0\",\"maximumslidecount\":\"1000\",\"maintain-session\":\"0\",\"global-lightbox\":\"0\",\"global-lightbox-label\":\"0\",\"slide-background-parallax\":\"0\",\"slide-background-parallax-strength\":\"50\",\"bg-parallax-tablet\":\"0\",\"bg-parallax-mobile\":\"0\",\"blockrightclick\":\"0\",\"controlsBlockCarouselInteraction\":\"1\",\"clear-both\":\"1\",\"clear-both-after\":\"1\",\"overflow-hidden-page\":\"0\",\"responsiveFocusUser\":\"1\",\"responsiveFocusEdge\":\"auto\",\"classes\":\"\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"related-posts\":\"\"}','published','2020-02-25 13:53:41','https://smartslider3.com/wp-content/uploads/slider404/tutorialsliderthumbnail-1.png',0);
INSERT INTO `wp_nextend2_smartslider3_sliders` VALUES (2,NULL,'Byron Home Page','simple','{\"thumbnail\":\"\",\"aria-label\":\"\",\"alias-id\":\"\",\"alias-smoothscroll\":\"\",\"alias-slideswitch\":\"\",\"alias-slideswitch-scroll\":\"1\",\"align\":\"normal\",\"margin\":\"0|*|0|*|0|*|0\",\"width\":\"600\",\"height\":\"600\",\"responsiveLimitSlideWidth\":\"1\",\"responsiveSlideWidth\":\"0\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"3000\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsive-breakpoint-tablet-portrait\":\"1199\",\"responsive-breakpoint-tablet-portrait-landscape\":\"1199\",\"responsive-breakpoint-mobile-portrait\":\"700\",\"responsive-breakpoint-mobile-portrait-landscape\":\"900\",\"responsive-breakpoint-tablet-portrait-enabled\":\"1\",\"responsive-breakpoint-mobile-portrait-enabled\":\"1\",\"responsive-breakpoint-global\":\"0\",\"breakpoints-orientation\":\"portrait\",\"responsive-mode\":\"fullwidth\",\"responsiveSliderHeightMin\":\"0\",\"responsiveForceFull\":\"1\",\"responsiveForceFullOverflowX\":\"body\",\"responsiveForceFullHorizontalSelector\":\"body\",\"controlsTouch\":\"horizontal\",\"controlsScroll\":\"0\",\"controlsKeyboard\":\"1\",\"widget-arrow-enabled\":\"1\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-previous\":\"thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widget-arrow-base64\":\"1\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-display-mobileportrait\":\"0\",\"widget-arrow-display-tabletportrait\":\"1\",\"widget-arrow-display-desktopportrait\":\"1\",\"widget-bullet-enabled\":\"0\",\"widgetbullet\":\"transition\",\"widget-bullet-position-area\":\"10\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"5|*|5|*|5|*|5|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"50\\\",\\\"extra\\\":\\\"margin: 4px;\\\"},{\\\"backgroundcolor\\\":\\\"1D81F9FF\\\"}]}\",\"widget-bullet-bar\":\"\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"60\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000080\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"margin: 5px;\\\"}]}\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-display-mobileportrait\":\"1\",\"widget-bullet-display-tabletportrait\":\"1\",\"widget-bullet-display-desktopportrait\":\"1\",\"widget-bar-enabled\":\"0\",\"widgetbar\":\"horizontal\",\"widget-bar-position-area\":\"10\",\"widget-bar-position-stack\":\"1\",\"widget-bar-position-offset\":\"30\",\"widget-bar-animate\":\"0\",\"widget-bar-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"5|*|20|*|5|*|20|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"40\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-bar-show-title\":\"1\",\"widget-bar-font-title\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-show-description\":\"1\",\"widget-bar-font-description\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":1,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-slide-count\":\"0\",\"widget-bar-full-width\":\"0\",\"widget-bar-separator\":\" - \",\"widget-bar-align\":\"center\",\"widget-bar-display-hover\":\"0\",\"widget-bar-display-mobileportrait\":\"1\",\"widget-bar-display-tabletportrait\":\"1\",\"widget-bar-display-desktopportrait\":\"1\",\"widget-thumbnail-enabled\":\"0\",\"widgetthumbnail\":\"default\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widget-thumbnail-tablet-width\":\"100\",\"widget-thumbnail-tablet-height\":\"60\",\"widget-thumbnail-mobile-width\":\"100\",\"widget-thumbnail-mobile-height\":\"60\",\"widget-thumbnail-position-area\":\"12\",\"widget-thumbnail-position-stack\":\"1\",\"widget-thumbnail-position-offset\":\"0\",\"widget-thumbnail-align-content\":\"start\",\"widget-thumbnail-style-bar\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"242424ff\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-style-slides\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"padding\\\":\\\"0|*|0|*|0|*|0|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|ffffff00\\\",\\\"borderradius\\\":\\\"0\\\",\\\"opacity\\\":\\\"40\\\",\\\"extra\\\":\\\"margin: 3px;\\\\ntransition: all 0.4s;\\\"},{\\\"border\\\":\\\"0|*|solid|*|ffffffcc\\\",\\\"opacity\\\":\\\"100\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-title-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"3|*|10|*|3|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"bottom: 0;\\\\nleft: 0;\\\"}]}\",\"widget-thumbnail-title\":\"0\",\"widget-thumbnail-title-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-description\":\"0\",\"widget-thumbnail-description-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-caption-placement\":\"overlay\",\"widget-thumbnail-caption-size\":\"100\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-display-mobileportrait\":\"0\",\"widget-thumbnail-display-tabletportrait\":\"1\",\"widget-thumbnail-display-desktopportrait\":\"1\",\"widget-shadow-enabled\":\"0\",\"widgetshadow\":\"shadow\",\"widget-shadow-shadow\":\"dark.png\",\"widget-shadow-display-mobileportrait\":\"0\",\"widget-shadow-display-tabletportrait\":\"1\",\"widget-shadow-display-desktopportrait\":\"1\",\"animation\":\"horizontal\",\"animation-duration\":\"800\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"normal\",\"autoplay\":\"1\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"widget-autoplay-enabled\":\"0\",\"widgetautoplay\":\"image\",\"widget-autoplay-play\":\"small-light.svg\",\"widget-autoplay-play-color\":\"ffffffcc\",\"widget-autoplay-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"10|*|10|*|10|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"backgroundcolor\\\":\\\"000000ab\\\"}]}\",\"widget-autoplay-position-area\":\"4\",\"widget-autoplay-position-stack\":\"1\",\"widget-autoplay-position-offset\":\"15\",\"widget-autoplay-display-hover\":\"0\",\"widget-autoplay-display-mobileportrait\":\"1\",\"widget-autoplay-display-tabletportrait\":\"1\",\"widget-autoplay-display-desktopportrait\":\"1\",\"loading-type\":\"\",\"delay\":\"0\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"optimize-scale\":\"0\",\"optimize-quality\":\"70\",\"optimize-slide-width-normal\":\"1920\",\"optimize-thumbnail-scale\":\"0\",\"optimize-thumbnail-quality\":\"70\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"backgroundMode\":\"fit\",\"clear-both\":\"1\",\"clear-both-after\":\"1\",\"overflow-hidden-page\":\"0\",\"responsiveFocusUser\":\"1\",\"responsiveFocusEdge\":\"auto\",\"is-delayed\":\"0\",\"legacy-font-scale\":\"0\",\"classes\":\"\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"related-posts\":\"\"}','published','2021-06-08 23:57:54','',1);
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_sliders_xref`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_sliders_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`,`slider_id`),
  KEY `ordering` (`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders_xref`
--

LOCK TABLES `wp_nextend2_smartslider3_sliders_xref` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders_xref` DISABLE KEYS */;
INSERT INTO `wp_nextend2_smartslider3_sliders_xref` VALUES (0,2,0);
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_slides`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `publish_up` (`publish_up`),
  KEY `publish_down` (`publish_down`),
  KEY `generator_id` (`generator_id`),
  KEY `ordering` (`ordering`),
  KEY `slider` (`slider`),
  KEY `thumbnail` (`thumbnail`(100))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_slides`
--

LOCK TABLES `wp_nextend2_smartslider3_slides` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_slides` DISABLE KEYS */;
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (1,'Slide Background',1,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":1120,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitselfalign\":\"center\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-IbNOabpfT5aE\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"row\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"desktopportraitgutter\":0,\"desktopportraitwrapafter\":0,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"tabletportraitgutter\":20,\"mobileportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"mobileportraitgutter\":20,\"mobileportraitwrapafter\":1,\"mobileportraitmaxwidth\":400,\"mobilelandscapewrapafter\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-dtwtw9DVCwgQ\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"ffffff00\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"borderwidth\":\"1|*|1|*|1|*|1\",\"borderstyle\":\"none\",\"bordercolor\":\"FFFFFFFF\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"fullwidth\":1,\"stretch\":0,\"name\":\"Row\",\"namesynced\":1,\"cols\":[{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px\",\"desktopportraitorder\":0,\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitinneralign\":\"left\",\"mobileportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitorder\":2,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-Fjvyu081qJeK\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"2/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":60,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Jeans Store Interior\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"36||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"01. Slide Background\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Lorem ipsum dolor sit amet, consect\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"24||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"weight\\\":300,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Every slide includes a background, which can be a picture or solid color.\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 1\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"To change the background click on the label bar and in the layer window select the style tab.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 2\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"Choose a source from the background top tab then upload an image or pick a background color.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Read More\",\"namesynced\":1,\"item\":{\"type\":\"button\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"center\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"0568f6ff\\\"}]}\",\"style\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"0568f6ff\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"1|*|2|*|1|*|2|*|em\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"5\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffff\\\"}]}\",\"content\":\"Next Slide\",\"nowrap\":\"1\",\"fullwidth\":\"0\",\"href\":\"NextSlide[]\",\"href-target\":\"_self\",\"href-rel\":\"\",\"class\":\"\",\"icon\":\"\",\"iconsize\":\"100\",\"iconspacing\":\"30\",\"iconplacement\":\"left\"}}}]},{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitorder\":0,\"mobileportraitinneralign\":\"center\",\"mobileportraitorder\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-LnImbm1HgUAv\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"3/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"mobileportraitmaxwidth\":300,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Image\",\"namesynced\":1,\"item\":{\"type\":\"image\",\"values\":{\"image\":\"https://smartslider3.com/wp-content/uploads/slider424/background.png\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"size\":\"auto|*|auto\",\"alt\":\"\",\"title\":\"\",\"href-class\":\"\"}}}]}]}]}]','','https://smartslider3.com/wp-content/uploads/slider424/slidebackground.jpg','{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"10|*|60|*|10|*|60\",\"tabletportraitpadding\":\"10|*|50|*|10|*|50\",\"mobileportraitpadding\":\"10|*|10|*|35|*|10\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"https://smartslider3.com/wp-content/uploads/slider424/slide1.png\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.0\"}',1,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (2,'Build & Design',1,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":1120,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitselfalign\":\"center\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-TPnUuKlAWVoC\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"row\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"desktopportraitgutter\":0,\"desktopportraitwrapafter\":0,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"tabletportraitgutter\":20,\"mobileportraitinneralign\":\"inherit\",\"mobileportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"mobileportraitgutter\":20,\"mobileportraitwrapafter\":1,\"mobileportraitmaxwidth\":400,\"mobileportraitselfalign\":\"inherit\",\"mobilelandscapewrapafter\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-NmnNQvKK01kO\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"ffffff00\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"borderwidth\":\"1|*|1|*|1|*|1\",\"borderstyle\":\"none\",\"bordercolor\":\"FFFFFFFF\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"fullwidth\":1,\"stretch\":0,\"name\":\"Row\",\"namesynced\":1,\"cols\":[{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px\",\"desktopportraitorder\":0,\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitmaxwidth\":0,\"mobileportraitinneralign\":\"left\",\"mobileportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitorder\":2,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-R5Jkk06Nmzr4\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"2/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":60,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Jeans Store Interior\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"36||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"02. Build & Design\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Lorem ipsum dolor sit amet, consect\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"24||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"weight\\\":300,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Build any layout with layers and customize your designs limitlessly.\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 1\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"To add a layer, click the green plus button in the left sidebar and select the type of layer.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":100,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffdb\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"uppercase\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Step 2\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":\"1\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":90,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Text\",\"namesynced\":1,\"item\":{\"type\":\"text\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffb0\\\",\\\"size\\\":\\\"18||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.6\\\",\\\"weight\\\":400,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"1890d7ff\\\"}]}\",\"style\":\"\",\"content\":\"Select any layer and you can edit its content and style properties in the layer window.\",\"content-tablet-enabled\":\"0\",\"contenttablet\":\"\",\"content-mobile-enabled\":\"0\",\"contentmobile\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Read More\",\"namesynced\":1,\"item\":{\"type\":\"button\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"center\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"0568f6ff\\\"}]}\",\"style\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"0568f6ff\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"1|*|2|*|1|*|2|*|em\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"5\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffff\\\"}]}\",\"content\":\"Next Slide\",\"nowrap\":\"1\",\"fullwidth\":\"0\",\"href\":\"NextSlide[]\",\"href-target\":\"_self\",\"href-rel\":\"\",\"class\":\"\",\"icon\":\"\",\"iconsize\":\"100\",\"iconspacing\":\"30\",\"iconplacement\":\"left\"}}}]},{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitorder\":0,\"mobileportraitinneralign\":\"center\",\"mobileportraitorder\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-iYi6ZKk8yeVp\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"colwidth\":\"3/5\",\"href\":\"\",\"href-target\":\"_self\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"mobileportraitmaxwidth\":300,\"id\":\"\",\"uniqueclass\":\"\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Image\",\"namesynced\":1,\"item\":{\"type\":\"image\",\"values\":{\"image\":\"https://smartslider3.com/wp-content/uploads/slider424/buildanddesign.png\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"size\":\"auto|*|auto\",\"alt\":\"\",\"title\":\"\",\"href-class\":\"\"}}}]}]}]}]','','https://smartslider3.com/wp-content/uploads/slider424/buildanddesign.jpg','{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"10|*|60|*|10|*|60\",\"tabletportraitpadding\":\"10|*|50|*|10|*|50\",\"mobileportraitpadding\":\"10|*|10|*|35|*|10\",\"record-slides\":0,\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"https://smartslider3.com/wp-content/uploads/slider424/slide2.png\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.4.0\"}',2,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (3,'IMG_4938_silhouette- carousel',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/06/IMG_4938_silhouette-carousel.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/06/IMG_4938_silhouette-carousel.jpg\",\"version\":\"3.5.0.8\"}',3,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (4,'IMG_4967- carousel',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/06/IMG_4967-carousel.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/06/IMG_4967-carousel.jpg\",\"version\":\"3.5.0.8\"}',1,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (5,'IMG_4981- carousel',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/06/IMG_4981-carousel.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/06/IMG_4981-carousel.jpg\",\"version\":\"3.5.0.8\"}',5,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (6,'P1090260 (1)- carousel',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/06/P1090260-1-carousel.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/06/P1090260-1-carousel.jpg\",\"version\":\"3.5.0.8\"}',6,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (7,'P1090261 (1)- carousel',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/06/P1090261-1-carousel.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/06/P1090261-1-carousel.jpg\",\"version\":\"3.5.0.8\"}',4,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (8,'P1090266- carousel',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/06/P1090266-carousel.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/06/P1090266-carousel.jpg\",\"version\":\"3.5.0.8\"}',2,0);
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (9,'P1090266-2- carousel',2,'1970-01-01 00:00:00','1970-01-01 00:00:00',1,0,'[]','','$upload$/2021/06/P1090266-2-carousel.jpg','{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/06/P1090266-2-carousel.jpg\",\"version\":\"3.5.0.8\"}',7,0);
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://byron-hitchcock.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://byron-hitchcock.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Byron Hitchcock','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Violinist','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=29&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','29','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','22','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1637539953','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:9:{i:1625244275;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1625245955;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1625269667;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625271155;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1625271176;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625271177;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625493600;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1625703155;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','we=%4h{}L?_tWo7y![ar_P.R0!OCuhi[4%lgOD8>0N$Ysv<]n;v2EI!Hdxl]%1S.','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','$:y}/ki3u2{P?xgc3]wQBwm`~U]4?A<@4te->]A{.85F0oBK1DB&](7pPqADt|/}','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621988977;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (149,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (150,'current_theme','Byron Hitchcock','yes');
INSERT INTO `wp_options` VALUES (151,'theme_mods_byron-hitchcock','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (152,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (220,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (227,'acf_version','5.9.6','yes');
INSERT INTO `wp_options` VALUES (230,'n2_ss3_version','3.5.0.8/b:release-3.5.0.8/r:5f3aa2e631ad14196de2771bfdd7e9407117872f','yes');
INSERT INTO `wp_options` VALUES (231,'widget_smartslider3','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (250,'widget_rich_web_video_slider','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (376,'action_scheduler_hybrid_store_demarkation','112','yes');
INSERT INTO `wp_options` VALUES (377,'schema-ActionScheduler_StoreSchema','3.0.1624923651','yes');
INSERT INTO `wp_options` VALUES (378,'schema-ActionScheduler_LoggerSchema','2.0.1624923651','yes');
INSERT INTO `wp_options` VALUES (379,'wpforms_version','1.6.7.2','yes');
INSERT INTO `wp_options` VALUES (380,'wpforms_version_lite','1.6.7.2','yes');
INSERT INTO `wp_options` VALUES (381,'wpforms_activated','a:1:{s:4:\"lite\";i:1624923651;}','yes');
INSERT INTO `wp_options` VALUES (386,'action_scheduler_lock_async-request-runner','1625243791','yes');
INSERT INTO `wp_options` VALUES (387,'widget_wpforms-widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (391,'wpforms_admin_notices','a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1624923652;s:9:\"dismissed\";b:0;}}','yes');
INSERT INTO `wp_options` VALUES (393,'wpforms_forms_first_created','1624923666','no');
INSERT INTO `wp_options` VALUES (395,'action_scheduler_migration_status','complete','yes');
INSERT INTO `wp_options` VALUES (397,'wpforms_email_summaries_fetch_info_blocks_last_run','1624923787','yes');
INSERT INTO `wp_options` VALUES (399,'wpforms_notifications','a:4:{s:6:\"update\";i:1625242314;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (400,'wpforms_crypto_secret_key','Ff9tvPIIraEowh1yeZwruIrzwT4dQUYemF0L17ni9ss=','yes');
INSERT INTO `wp_options` VALUES (530,'duplicator_settings','a:17:{s:7:\"version\";s:5:\"1.4.1\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (531,'duplicator_version_plugin','1.4.1','yes');
INSERT INTO `wp_options` VALUES (533,'duplicator_package_active','O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-07-01 23:45:53\";s:7:\"Version\";s:5:\"1.4.1\";s:9:\"VersionWP\";s:5:\"5.7.2\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:23:\"20210701_byronhitchcock\";s:4:\"Hash\";s:35:\"5719a8b5985de8ac8265_20210701234553\";s:8:\"NameHash\";s:59:\"20210701_byronhitchcock_5719a8b5985de8ac8265_20210701234553\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:69:\"20210701_byronhitchcock_5719a8b5985de8ac8265_20210701234553_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:53:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2021-07-01 23:45:53\";s:7:\"Version\";s:5:\"1.4.1\";s:9:\"VersionWP\";s:5:\"5.7.2\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:23:\"20210701_byronhitchcock\";s:4:\"Hash\";s:35:\"5719a8b5985de8ac8265_20210701234553\";s:8:\"NameHash\";s:59:\"20210701_byronhitchcock_5719a8b5985de8ac8265_20210701234553\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:63;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server - GPL\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":16:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:63;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:63;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:62:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-admin\";i:1;s:72:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-content/uploads\";i:2;s:74:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-content/languages\";i:3;s:71:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-content/themes\";i:4;s:65:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:53:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public\";i:1;s:64:\"C:/Users/teres/Local Sites/byron-hitchcock/app/public/wp-content\";}}s:9:\"Installer\";r:84;s:8:\"Database\";r:98;s:13:\"BuildProgress\";r:129;}','yes');
INSERT INTO `wp_options` VALUES (534,'duplicator_ui_view_state','a:4:{s:19:\"dup-pack-build-try2\";s:1:\"1\";s:22:\"dup-pack-storage-panel\";s:1:\"1\";s:22:\"dup-pack-archive-panel\";s:1:\"0\";s:24:\"dup-pack-installer-panel\";s:1:\"0\";}','yes');
INSERT INTO `wp_options` VALUES (545,'active_plugins','a:5:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:29:\"slider-video/Slider-Video.php\";i:3;s:33:\"smart-slider-3/smart-slider-3.php\";i:4;s:24:\"wpforms-lite/wpforms.php\";}','yes');
INSERT INTO `wp_options` VALUES (546,'ai1wm_secret_key','dwJOLELpSGaY','yes');
INSERT INTO `wp_options` VALUES (547,'ai1wm_backups_labels','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (548,'ai1wm_sites_links','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (550,'ai1wm_status','a:3:{s:4:\"type\";s:4:\"done\";s:5:\"title\";s:41:\"Your site has been imported successfully!\";s:7:\"message\";s:381:\"» <a class=\"ai1wm-no-underline\" href=\"http://byron-hitchcock.local/wp-admin/options-permalink.php#submit\" target=\"_blank\">Save permalinks structure</a>. (opens a new window)<br />» <a class=\"ai1wm-no-underline\" href=\"https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform\" target=\"_blank\">Optionally, review the plugin</a>. (opens a new window)\";}','yes');
INSERT INTO `wp_options` VALUES (551,'template','byron-hitchcock','yes');
INSERT INTO `wp_options` VALUES (552,'stylesheet','byron-hitchcock','yes');
INSERT INTO `wp_options` VALUES (553,'swift_performance_plugin_organizer','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (554,'jetpack_active_modules','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (555,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1625241754;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (556,'_transient_wpforms_htaccess_file','a:3:{s:4:\"size\";i:737;s:5:\"mtime\";i:1625242918;s:5:\"ctime\";i:1625242918;}','yes');
INSERT INTO `wp_options` VALUES (559,'_site_transient_timeout_theme_roots','1625243555','no');
INSERT INTO `wp_options` VALUES (560,'_site_transient_theme_roots','a:1:{s:15:\"byron-hitchcock\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (561,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625241755;s:7:\"checked\";a:1:{s:15:\"byron-hitchcock\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (562,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1625241755;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.6\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.44\";s:33:\"smart-slider-3/smart-slider-3.php\";s:7:\"3.5.0.8\";s:27:\"updraftplus/updraftplus.php\";s:7:\"1.16.56\";s:29:\"slider-video/Slider-Video.php\";s:5:\"1.3.6\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.6.7.2\";}s:8:\"response\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"smart-slider-3/smart-slider-3.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/smart-slider-3\";s:4:\"slug\";s:14:\"smart-slider-3\";s:6:\"plugin\";s:33:\"smart-slider-3/smart-slider-3.php\";s:11:\"new_version\";s:7:\"3.5.0.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/smart-slider-3/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/smart-slider-3.3.5.0.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-256x256.png?rev=2307688\";s:2:\"1x\";s:59:\"https://ps.w.org/smart-slider-3/assets/icon.svg?rev=2307688\";s:3:\"svg\";s:59:\"https://ps.w.org/smart-slider-3/assets/icon.svg?rev=2307688\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/smart-slider-3/assets/banner-1544x500.png?rev=2541018\";s:2:\"1x\";s:69:\"https://ps.w.org/smart-slider-3/assets/banner-772x250.png?rev=2541018\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"slider-video/Slider-Video.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/slider-video\";s:4:\"slug\";s:12:\"slider-video\";s:6:\"plugin\";s:29:\"slider-video/Slider-Video.php\";s:11:\"new_version\";s:5:\"1.3.7\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/slider-video/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/slider-video.1.3.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/slider-video/assets/icon-128x128.png?rev=1469218\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/slider-video/assets/banner-772x250.png?rev=1859022\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.6.7.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.6.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.7.2\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.44\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.44.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.jpg?rev=2538919\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2538919\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"updraftplus/updraftplus.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/updraftplus\";s:4:\"slug\";s:11:\"updraftplus\";s:6:\"plugin\";s:27:\"updraftplus/updraftplus.php\";s:11:\"new_version\";s:7:\"1.16.56\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/updraftplus/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/updraftplus.1.16.56.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-256x256.jpg?rev=1686200\";s:2:\"1x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-128x128.jpg?rev=1686200\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/updraftplus/assets/banner-1544x500.png?rev=1686200\";s:2:\"1x\";s:66:\"https://ps.w.org/updraftplus/assets/banner-772x250.png?rev=1686200\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (563,'ai1wm_updater','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (564,'_site_transient_ai1wm_last_check_for_updates','1625241755','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (10,7,'_edit_lock','1623108404:1');
INSERT INTO `wp_postmeta` VALUES (11,9,'_edit_lock','1623370288:1');
INSERT INTO `wp_postmeta` VALUES (12,9,'_wp_page_template','page-templates/about.php');
INSERT INTO `wp_postmeta` VALUES (13,11,'_edit_lock','1625183077:1');
INSERT INTO `wp_postmeta` VALUES (14,11,'_wp_page_template','page-templates/current-projects.php');
INSERT INTO `wp_postmeta` VALUES (15,13,'_edit_lock','1624925882:1');
INSERT INTO `wp_postmeta` VALUES (16,13,'_wp_page_template','page-templates/contact.php');
INSERT INTO `wp_postmeta` VALUES (18,16,'_edit_lock','1622160128:1');
INSERT INTO `wp_postmeta` VALUES (19,16,'_wp_page_template','page-templates/recommendations.php');
INSERT INTO `wp_postmeta` VALUES (20,18,'_edit_lock','1625242434:1');
INSERT INTO `wp_postmeta` VALUES (21,18,'_wp_page_template','page-templates/bach-project.php');
INSERT INTO `wp_postmeta` VALUES (22,20,'_wp_attached_file','2021/05/favicomatic.zip');
INSERT INTO `wp_postmeta` VALUES (23,21,'_wp_attached_file','2021/05/favicon-32x32-1.png');
INSERT INTO `wp_postmeta` VALUES (24,21,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:27:\"2021/05/favicon-32x32-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (25,22,'_wp_attached_file','2021/05/cropped-favicon-32x32-1.png');
INSERT INTO `wp_postmeta` VALUES (26,22,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (27,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:35:\"2021/05/cropped-favicon-32x32-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"cropped-favicon-32x32-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-favicon-32x32-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:35:\"cropped-favicon-32x32-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:35:\"cropped-favicon-32x32-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:35:\"cropped-favicon-32x32-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:33:\"cropped-favicon-32x32-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (32,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (33,1,'_wp_trash_meta_time','1623106130');
INSERT INTO `wp_postmeta` VALUES (34,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (35,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (36,7,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (37,7,'_wp_trash_meta_time','1623108552');
INSERT INTO `wp_postmeta` VALUES (38,7,'_wp_desired_post_slug','home');
INSERT INTO `wp_postmeta` VALUES (42,29,'_edit_lock','1623370313:1');
INSERT INTO `wp_postmeta` VALUES (43,29,'_wp_page_template','page-templates/home.php');
INSERT INTO `wp_postmeta` VALUES (44,31,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (45,31,'_wp_trash_meta_time','1623108855');
INSERT INTO `wp_postmeta` VALUES (46,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (47,33,'_edit_lock','1623974003:1');
INSERT INTO `wp_postmeta` VALUES (48,29,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (49,29,'text','<h2>A native of Wyoming, Byron Hitchcock has performed across the United States, Latin America, and Asia to critical acclaim.</h2>\r\nPraised by the Boston Globe for his “fearlessly expressive” playing and his “finely honed tone,” Mr. Hitchcock has established himself as a dynamic and versatile artist, appearing on the concert stage as a concertmaster, soloist, and chamber musician. In 2019, Mr. Hitchcock assumed the role of Concertmaster of both the Opera Colorado Orchestra in Denver, Colorado, and of the Central City Opera Orchestra in Central City, Colorado.');
INSERT INTO `wp_postmeta` VALUES (50,29,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (51,35,'text','<h2>A native of Wyoming, Byron Hitchcock has performed across the United States, Latin America, and Asia to critical acclaim.</h2>\r\nPraised by the Boston Globe for his “fearlessly expressive” playing and his “finely honed tone,” Mr. Hitchcock has established himself as a dynamic and versatile artist, appearing on the concert stage as a concertmaster, soloist, and chamber musician. In 2019, Mr. Hitchcock assumed the role of Concertmaster of both the Opera Colorado Orchestra in Denver, Colorado, and of the Central City Opera Orchestra in Central City, Colorado.');
INSERT INTO `wp_postmeta` VALUES (52,35,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (53,37,'_wp_attached_file','2021/06/IMG_4938_silhouette-carousel.jpg');
INSERT INTO `wp_postmeta` VALUES (54,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1165;s:6:\"height\";i:960;s:4:\"file\";s:40:\"2021/06/IMG_4938_silhouette-carousel.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"IMG_4938_silhouette-carousel-300x247.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:247;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"IMG_4938_silhouette-carousel-1024x844.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:844;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"IMG_4938_silhouette-carousel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"IMG_4938_silhouette-carousel-768x633.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:633;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"20\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1413060471\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"31\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (55,38,'_wp_attached_file','2021/06/IMG_4967-carousel.jpg');
INSERT INTO `wp_postmeta` VALUES (56,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:29:\"2021/06/IMG_4967-carousel.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"IMG_4967-carousel-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"IMG_4967-carousel-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"IMG_4967-carousel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"IMG_4967-carousel-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1413062024\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"48\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:3:\"0.3\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (57,39,'_wp_attached_file','2021/06/IMG_4981-carousel.jpg');
INSERT INTO `wp_postmeta` VALUES (58,39,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:29:\"2021/06/IMG_4981-carousel.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"IMG_4981-carousel-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"IMG_4981-carousel-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"IMG_4981-carousel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"IMG_4981-carousel-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:19:\"Canon EOS REBEL T2i\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1413062443\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"33\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:3:\"0.2\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (59,40,'_wp_attached_file','2021/06/P1090260-1-carousel.jpg');
INSERT INTO `wp_postmeta` VALUES (60,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:31:\"2021/06/P1090260-1-carousel.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"P1090260-1-carousel-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"P1090260-1-carousel-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"P1090260-1-carousel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"P1090260-1-carousel-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-GH4\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1393219123\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"20\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (61,41,'_wp_attached_file','2021/06/P1090261-1-carousel.jpg');
INSERT INTO `wp_postmeta` VALUES (62,41,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:31:\"2021/06/P1090261-1-carousel.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"P1090261-1-carousel-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"P1090261-1-carousel-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"P1090261-1-carousel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"P1090261-1-carousel-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-GH4\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1393219144\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (63,42,'_wp_attached_file','2021/06/P1090266-carousel.jpg');
INSERT INTO `wp_postmeta` VALUES (64,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:29:\"2021/06/P1090266-carousel.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"P1090266-carousel-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"P1090266-carousel-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"P1090266-carousel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"P1090266-carousel-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-GH4\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1393219163\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"28\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (65,43,'_wp_attached_file','2021/06/P1090266-2-carousel.jpg');
INSERT INTO `wp_postmeta` VALUES (66,43,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:31:\"2021/06/P1090266-2-carousel.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"P1090266-2-carousel-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"P1090266-2-carousel-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"P1090266-2-carousel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"P1090266-2-carousel-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-GH4\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1393219163\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"28\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (67,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (68,44,'_edit_lock','1623365124:1');
INSERT INTO `wp_postmeta` VALUES (69,44,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (70,44,'_wp_trash_meta_time','1623365269');
INSERT INTO `wp_postmeta` VALUES (71,44,'_wp_desired_post_slug','group_60c2948ecf6c8');
INSERT INTO `wp_postmeta` VALUES (72,45,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (73,45,'_wp_trash_meta_time','1623365269');
INSERT INTO `wp_postmeta` VALUES (74,45,'_wp_desired_post_slug','field_60c294a3090bb');
INSERT INTO `wp_postmeta` VALUES (75,60,'_wp_attached_file','2021/06/Screenshot-9.png');
INSERT INTO `wp_postmeta` VALUES (76,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2021/06/Screenshot-9.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot-9-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Screenshot-9-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot-9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Screenshot-9-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"Screenshot-9-1536x864.png\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (77,61,'_wp_attached_file','2021/06/Screenshot-290.png');
INSERT INTO `wp_postmeta` VALUES (78,61,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1713;s:6:\"height\";i:925;s:4:\"file\";s:26:\"2021/06/Screenshot-290.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Screenshot-290-300x162.png\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"Screenshot-290-1024x553.png\";s:5:\"width\";i:1024;s:6:\"height\";i:553;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Screenshot-290-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Screenshot-290-768x415.png\";s:5:\"width\";i:768;s:6:\"height\";i:415;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"Screenshot-290-1536x829.png\";s:5:\"width\";i:1536;s:6:\"height\";i:829;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (79,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (80,62,'_edit_lock','1624923897:1');
INSERT INTO `wp_postmeta` VALUES (81,64,'_wp_attached_file','2021/06/About-me-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (82,64,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2021/06/About-me-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"About-me-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"About-me-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"About-me-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"About-me-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"About-me-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"About-me-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1489337904\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"135\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"About-me.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (83,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (84,9,'image','66');
INSERT INTO `wp_postmeta` VALUES (85,9,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (86,9,'text','A native of Wyoming, Byron Hitchcock has performed across the United States, Latin America, and Asia to critical acclaim. Praised by the Boston Globe for his “fearlessly expressive” playing and his “finely honed tone,” He has established himself as a dynamic and versatile artist, appearing on the concert stage as a concertmaster, soloist, and chamber musician.\r\n\r\nIn 2019, Hitchcock assumed the role of Concertmaster of both the Opera Colorado Orchestra in Denver, Colorado, and of the Central City Opera Orchestra in Central City, Colorado.\r\n\r\nHe has also served as Assistant Concertmaster of the Colorado Springs Philharmonic since 2016. Previously, Hitchcock acted as Concertmaster of the Brazilian Symphony Orchestra, the Wichita Symphony Orchestra, and the Spoleto USA Festival Orchestra. He has worked closely with such esteemed conductors as Lorin Maazel, Roberto Minczuk, Peter Oundjian, Semyon Bychkov, and Bramwell Tovey. He has appeared as a guest concertmaster with Opera in the Heights in Houston, Texas, and with the Arizona Opera Orchestra in Phoenix, Arizona.\r\n\r\nAs a soloist, Hitchcock’s “brilliant” and “uninhibited” playing has won him prizes in numerous competitions, including the Hudson Valley Philharmonic String Competition and the Boston Modern Orchestra Project Concerto Competition. He is an active recitalist, and recently completed recording Bach’s complete Sonatas and Partitas for Solo Violin, which is featured on his blog, Bachianas Americanas. Upcoming projects include Beethoven’s complete Sonatas for violin and piano, and recording Hans Gal’s Concertino for Violin and Chamber Orchestra. An enthusiastic chamber musician, Hitchcock recently enjoyed collaborating with principal players of the Vancouver Symphony as a member of the Koerner Quartet, both recording and performing live on Canadian Public Radio.\r\n\r\nHitchcock has studied with members of the Juilliard, Takacs, Cavani, Emerson, and Cleveland Quartets. He holds a Bachelor’s degree from the Cleveland Institute of Music, a Master’s degree from the New England Conservatory, and an Artist Diploma from SUNY Purchase. His teachers include David Updegraff, Lucy Chapman, and Laurie Smukler.\r\n\r\nByron Hitchcock performs on a 1998 Stanley Kiernosiak violin from Chicago.');
INSERT INTO `wp_postmeta` VALUES (87,9,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (88,65,'image','64');
INSERT INTO `wp_postmeta` VALUES (89,65,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (90,65,'text','A native of Wyoming, Byron Hitchcock has performed across the United States, Latin America, and Asia to critical acclaim. Praised by the Boston Globe for his “fearlessly expressive” playing and his “finely honed tone,” He has established himself as a dynamic and versatile artist, appearing on the concert stage as a concertmaster, soloist, and chamber musician.\r\n\r\nIn 2019, Hitchcock assumed the role of Concertmaster of both the Opera Colorado Orchestra in Denver, Colorado, and of the Central City Opera Orchestra in Central City, Colorado.\r\n\r\nHe has also served as Assistant Concertmaster of the Colorado Springs Philharmonic since 2016. Previously, Hitchcock acted as Concertmaster of the Brazilian Symphony Orchestra, the Wichita Symphony Orchestra, and the Spoleto USA Festival Orchestra. He has worked closely with such esteemed conductors as Lorin Maazel, Roberto Minczuk, Peter Oundjian, Semyon Bychkov, and Bramwell Tovey. He has appeared as a guest concertmaster with Opera in the Heights in Houston, Texas, and with the Arizona Opera Orchestra in Phoenix, Arizona.\r\n\r\nAs a soloist, Hitchcock’s “brilliant” and “uninhibited” playing has won him prizes in numerous competitions, including the Hudson Valley Philharmonic String Competition and the Boston Modern Orchestra Project Concerto Competition. He is an active recitalist, and recently completed recording Bach’s complete Sonatas and Partitas for Solo Violin, which is featured on his blog, Bachianas Americanas. Upcoming projects include Beethoven’s complete Sonatas for violin and piano, and recording Hans Gal’s Concertino for Violin and Chamber Orchestra. An enthusiastic chamber musician, Hitchcock recently enjoyed collaborating with principal players of the Vancouver Symphony as a member of the Koerner Quartet, both recording and performing live on Canadian Public Radio.\r\n\r\nHitchcock has studied with members of the Juilliard, Takacs, Cavani, Emerson, and Cleveland Quartets. He holds a Bachelor’s degree from the Cleveland Institute of Music, a Master’s degree from the New England Conservatory, and an Artist Diploma from SUNY Purchase. His teachers include David Updegraff, Lucy Chapman, and Laurie Smukler.\r\n\r\nByron Hitchcock performs on a 1998 Stanley Kiernosiak violin from Chicago.');
INSERT INTO `wp_postmeta` VALUES (91,65,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (92,66,'_wp_attached_file','2021/06/About-me-smaller.jpg');
INSERT INTO `wp_postmeta` VALUES (93,66,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:2250;s:4:\"file\";s:28:\"2021/06/About-me-smaller.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"About-me-smaller-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"About-me-smaller-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"About-me-smaller-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"About-me-smaller-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"About-me-smaller-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:30:\"About-me-smaller-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1489337904\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"135\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (94,67,'image','66');
INSERT INTO `wp_postmeta` VALUES (95,67,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (96,67,'text','A native of Wyoming, Byron Hitchcock has performed across the United States, Latin America, and Asia to critical acclaim. Praised by the Boston Globe for his “fearlessly expressive” playing and his “finely honed tone,” He has established himself as a dynamic and versatile artist, appearing on the concert stage as a concertmaster, soloist, and chamber musician.\r\n\r\nIn 2019, Hitchcock assumed the role of Concertmaster of both the Opera Colorado Orchestra in Denver, Colorado, and of the Central City Opera Orchestra in Central City, Colorado.\r\n\r\nHe has also served as Assistant Concertmaster of the Colorado Springs Philharmonic since 2016. Previously, Hitchcock acted as Concertmaster of the Brazilian Symphony Orchestra, the Wichita Symphony Orchestra, and the Spoleto USA Festival Orchestra. He has worked closely with such esteemed conductors as Lorin Maazel, Roberto Minczuk, Peter Oundjian, Semyon Bychkov, and Bramwell Tovey. He has appeared as a guest concertmaster with Opera in the Heights in Houston, Texas, and with the Arizona Opera Orchestra in Phoenix, Arizona.\r\n\r\nAs a soloist, Hitchcock’s “brilliant” and “uninhibited” playing has won him prizes in numerous competitions, including the Hudson Valley Philharmonic String Competition and the Boston Modern Orchestra Project Concerto Competition. He is an active recitalist, and recently completed recording Bach’s complete Sonatas and Partitas for Solo Violin, which is featured on his blog, Bachianas Americanas. Upcoming projects include Beethoven’s complete Sonatas for violin and piano, and recording Hans Gal’s Concertino for Violin and Chamber Orchestra. An enthusiastic chamber musician, Hitchcock recently enjoyed collaborating with principal players of the Vancouver Symphony as a member of the Koerner Quartet, both recording and performing live on Canadian Public Radio.\r\n\r\nHitchcock has studied with members of the Juilliard, Takacs, Cavani, Emerson, and Cleveland Quartets. He holds a Bachelor’s degree from the Cleveland Institute of Music, a Master’s degree from the New England Conservatory, and an Artist Diploma from SUNY Purchase. His teachers include David Updegraff, Lucy Chapman, and Laurie Smukler.\r\n\r\nByron Hitchcock performs on a 1998 Stanley Kiernosiak violin from Chicago.');
INSERT INTO `wp_postmeta` VALUES (97,67,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (98,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (99,11,'image','71');
INSERT INTO `wp_postmeta` VALUES (100,11,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (101,68,'image','41');
INSERT INTO `wp_postmeta` VALUES (102,68,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (103,69,'_wp_attached_file','2021/06/Current-projects.jpg');
INSERT INTO `wp_postmeta` VALUES (104,69,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:28:\"2021/06/Current-projects.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Current-projects-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Current-projects-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Current-projects-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Current-projects-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"Current-projects-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-GH4\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1393219144\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (105,70,'image','69');
INSERT INTO `wp_postmeta` VALUES (106,70,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (107,71,'_wp_attached_file','2021/06/Current-projects-banner.jpg');
INSERT INTO `wp_postmeta` VALUES (108,71,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1903;s:6:\"height\";i:626;s:4:\"file\";s:35:\"2021/06/Current-projects-banner.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Current-projects-banner-300x99.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:99;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"Current-projects-banner-1024x337.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:337;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Current-projects-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Current-projects-banner-768x253.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"Current-projects-banner-1536x505.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:505;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-GH4\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1393219144\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (109,72,'image','71');
INSERT INTO `wp_postmeta` VALUES (110,72,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (111,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (112,73,'_edit_lock','1623888535:1');
INSERT INTO `wp_postmeta` VALUES (113,75,'_wp_attached_file','2021/06/Current-projects-banner-desktop.jpg');
INSERT INTO `wp_postmeta` VALUES (114,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1903;s:6:\"height\";i:385;s:4:\"file\";s:43:\"2021/06/Current-projects-banner-desktop.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Current-projects-banner-desktop-300x61.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:61;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"Current-projects-banner-desktop-1024x207.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Current-projects-banner-desktop-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"Current-projects-banner-desktop-768x155.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:44:\"Current-projects-banner-desktop-1536x311.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:311;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"DMC-GH4\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1393219144\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (115,11,'image2','75');
INSERT INTO `wp_postmeta` VALUES (116,11,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (117,76,'image','71');
INSERT INTO `wp_postmeta` VALUES (118,76,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (119,76,'image2','75');
INSERT INTO `wp_postmeta` VALUES (120,76,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (121,78,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (122,78,'_edit_lock','1623974343:1');
INSERT INTO `wp_postmeta` VALUES (123,11,'text','<h2 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h2>\r\n<h4 style=\"color: white;\">(for Violin and String Orchestra)</h4>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (124,11,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (125,11,'text_2','<h2 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS\r\n1-10</h2>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (126,11,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (127,80,'image','71');
INSERT INTO `wp_postmeta` VALUES (128,80,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (129,80,'image2','75');
INSERT INTO `wp_postmeta` VALUES (130,80,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (131,80,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h2>(for Violin and String Orchestra)</h2>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (132,80,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (133,80,'text_2','');
INSERT INTO `wp_postmeta` VALUES (134,80,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (135,81,'image','71');
INSERT INTO `wp_postmeta` VALUES (136,81,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (137,81,'image2','75');
INSERT INTO `wp_postmeta` VALUES (138,81,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (139,81,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h6>(for Violin and String Orchestra)</h6>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (140,81,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (141,81,'text_2','');
INSERT INTO `wp_postmeta` VALUES (142,81,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (143,82,'image','71');
INSERT INTO `wp_postmeta` VALUES (144,82,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (145,82,'image2','75');
INSERT INTO `wp_postmeta` VALUES (146,82,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (147,82,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5>(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (148,82,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (149,82,'text_2','');
INSERT INTO `wp_postmeta` VALUES (150,82,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (151,83,'image','71');
INSERT INTO `wp_postmeta` VALUES (152,83,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (153,83,'image2','75');
INSERT INTO `wp_postmeta` VALUES (154,83,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (155,83,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5>(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (156,83,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (157,83,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS 1-10</h1>\r\n<h5 class=\"elementor-image-box-description\">Again, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.</h5>');
INSERT INTO `wp_postmeta` VALUES (158,83,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (159,84,'image','71');
INSERT INTO `wp_postmeta` VALUES (160,84,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (161,84,'image2','75');
INSERT INTO `wp_postmeta` VALUES (162,84,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (163,84,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5>(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (164,84,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (165,84,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS 1-10</h1>\r\n<h5 class=\"elementor-image-box-description\">Again, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.</h5>');
INSERT INTO `wp_postmeta` VALUES (166,84,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (167,85,'image','71');
INSERT INTO `wp_postmeta` VALUES (168,85,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (169,85,'image2','75');
INSERT INTO `wp_postmeta` VALUES (170,85,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (171,85,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5>(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (172,85,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (173,85,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS 1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (174,85,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (175,86,'image','71');
INSERT INTO `wp_postmeta` VALUES (176,86,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (177,86,'image2','75');
INSERT INTO `wp_postmeta` VALUES (178,86,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (179,86,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5>(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (180,86,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (181,86,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS <br />1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (182,86,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (183,87,'image','71');
INSERT INTO `wp_postmeta` VALUES (184,87,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (185,87,'image2','75');
INSERT INTO `wp_postmeta` VALUES (186,87,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (187,87,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5 style=\"color:white\">(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (188,87,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (189,87,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS <br />1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (190,87,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (191,88,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (192,88,'_edit_lock','1624813226:1');
INSERT INTO `wp_postmeta` VALUES (193,11,'text_3','<div class=\"bartok\">\r\n<h2 style=\"color: white;\">Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (194,11,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (195,90,'image','71');
INSERT INTO `wp_postmeta` VALUES (196,90,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (197,90,'image2','75');
INSERT INTO `wp_postmeta` VALUES (198,90,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (199,90,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5 style=\"color:white\">(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (200,90,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (201,90,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS <br />1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (202,90,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (203,90,'text_3','<h2>ENGELWOOD RECORDING SESSION</h2>\r\n<h3>Bartok Rhapsody #1</h3>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n\r\n<h3>Mozart Sonata, K. 377</h3>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.');
INSERT INTO `wp_postmeta` VALUES (204,90,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (205,91,'image','71');
INSERT INTO `wp_postmeta` VALUES (206,91,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (207,91,'image2','75');
INSERT INTO `wp_postmeta` VALUES (208,91,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (209,91,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5 style=\"color:white\">(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (210,91,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (211,91,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS <br />1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (212,91,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (213,91,'text_3','<h2 class=\"engelwood-title\">ENGELWOOD RECORDING SESSION</h2>\r\n<div class=\"bartok\">\r\n<h3>Bartok Rhapsody #1</h3>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n\r\n</div>\r\n<div class=\"mozart\">\r\n<h3>Mozart Sonata, K. 377</h3>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (214,91,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (215,92,'image','71');
INSERT INTO `wp_postmeta` VALUES (216,92,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (217,92,'image2','75');
INSERT INTO `wp_postmeta` VALUES (218,92,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (219,92,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5 style=\"color:white\">(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (220,92,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (221,92,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS <br />1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (222,92,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (223,92,'text_3','<h1 class=\"engelwood-title\">ENGELWOOD RECORDING SESSION</12>\r\n<div class=\"bartok\">\r\n<h2>Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n\r\n</div>\r\n<div class=\"mozart\">\r\n<h2>Mozart Sonata, K. 377</h2>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (224,92,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (225,93,'image','71');
INSERT INTO `wp_postmeta` VALUES (226,93,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (227,93,'image2','75');
INSERT INTO `wp_postmeta` VALUES (228,93,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (229,93,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5 style=\"color:white\">(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (230,93,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (231,93,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS <br />1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (232,93,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (233,93,'text_3','<h1 class=\"engelwood-title\">ENGELWOOD RECORDING SESSION</h1>\r\n<div class=\"bartok\">\r\n<h2>Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n\r\n</div>\r\n<div class=\"mozart\">\r\n<h2>Mozart Sonata, K. 377</h2>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (234,93,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (235,94,'image','71');
INSERT INTO `wp_postmeta` VALUES (236,94,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (237,94,'image2','75');
INSERT INTO `wp_postmeta` VALUES (238,94,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (239,94,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5 style=\"color:white\">(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (240,94,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (241,94,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS <br />1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (242,94,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (243,94,'text_3','<h1 class=\"engelwood-title\">ENGELWOOD RECORDING SESSION</h1>\r\n<div class=\"bartok\">\r\n<h2 style=\"color: white\">Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n\r\n</div>\r\n<div class=\"mozart\">\r\n<h2 style=\"color: white\">Mozart Sonata, K. 377</h2>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (244,94,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (245,96,'image','71');
INSERT INTO `wp_postmeta` VALUES (246,96,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (247,96,'image2','75');
INSERT INTO `wp_postmeta` VALUES (248,96,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (249,96,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5 style=\"color: white;\">(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (250,96,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (251,96,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS\r\n1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (252,96,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (253,96,'text_3','<div class=\"bartok\">\r\n<h2 style=\"color: white;\">Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n</div>\r\n');
INSERT INTO `wp_postmeta` VALUES (254,96,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (255,97,'_edit_lock','1624818085:1');
INSERT INTO `wp_postmeta` VALUES (256,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (257,11,'text_4','<div class=\"mozart\">\r\n<h2 style=\"color: white;\">Mozart Sonata, K. 377</h2>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (258,11,'_text_4','field_60d8af3d42097');
INSERT INTO `wp_postmeta` VALUES (259,99,'image','71');
INSERT INTO `wp_postmeta` VALUES (260,99,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (261,99,'image2','75');
INSERT INTO `wp_postmeta` VALUES (262,99,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (263,99,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h5 style=\"color: white;\">(for Violin and String Orchestra)</h5>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (264,99,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (265,99,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS\r\n1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (266,99,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (267,99,'text_3','<div class=\"bartok\">\r\n<h2 style=\"color: white;\">Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n</div>\r\n');
INSERT INTO `wp_postmeta` VALUES (268,99,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (269,99,'text_4','<div class=\"mozart\">\r\n<h2 style=\"color: white;\">Mozart Sonata, K. 377</h2>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (270,99,'_text_4','field_60d8af3d42097');
INSERT INTO `wp_postmeta` VALUES (271,100,'image','71');
INSERT INTO `wp_postmeta` VALUES (272,100,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (273,100,'image2','75');
INSERT INTO `wp_postmeta` VALUES (274,100,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (275,100,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h4 style=\"color: white;\">(for Violin and String Orchestra)</h4>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (276,100,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (277,100,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS\r\n1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (278,100,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (279,100,'text_3','<div class=\"bartok\">\r\n<h2 style=\"color: white;\">Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n</div>\r\n');
INSERT INTO `wp_postmeta` VALUES (280,100,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (281,100,'text_4','<div class=\"mozart\">\r\n<h2 style=\"color: white;\">Mozart Sonata, K. 377</h2>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (282,100,'_text_4','field_60d8af3d42097');
INSERT INTO `wp_postmeta` VALUES (283,101,'_edit_lock','1624820098:1');
INSERT INTO `wp_postmeta` VALUES (284,101,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (285,11,'text_5','<div class=\"recital-title\">\r\n<h2 style=\"color: white;\">Paganini Caprice #18</h2>\r\nNow that I\'ve completed my Bach project, it just made sense to jump to Paganini and see what that feels like. Let me tell you, it\'s a WHOLE different skill set to play these guys. It took me many months just to be able to run this at a very slow tempo. A great challenge, and lots of time to tackle it!​\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (286,11,'_text_5','field_60d8c238a7ef3');
INSERT INTO `wp_postmeta` VALUES (287,103,'image','71');
INSERT INTO `wp_postmeta` VALUES (288,103,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (289,103,'image2','75');
INSERT INTO `wp_postmeta` VALUES (290,103,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (291,103,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h4 style=\"color: white;\">(for Violin and String Orchestra)</h4>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (292,103,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (293,103,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS\r\n1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (294,103,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (295,103,'text_3','<div class=\"bartok\">\r\n<h2 style=\"color: white;\">Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n</div>\r\n');
INSERT INTO `wp_postmeta` VALUES (296,103,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (297,103,'text_4','<div class=\"mozart\">\r\n<h2 style=\"color: white;\">Mozart Sonata, K. 377</h2>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (298,103,'_text_4','field_60d8af3d42097');
INSERT INTO `wp_postmeta` VALUES (299,103,'text_5','<div class=\"recital-title\">\r\n<h1 style=\"color: white;\">RECITAL</h1>\r\nOriginally planned as a full recital for the public in Denver, at Englewood Arts Center, this has now morphed into a recording session to be shared online. The rep is now smaller, but I\'m looking forward to some high-quality recordings being made.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (300,103,'_text_5','field_60d8c238a7ef3');
INSERT INTO `wp_postmeta` VALUES (301,104,'image','71');
INSERT INTO `wp_postmeta` VALUES (302,104,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (303,104,'image2','75');
INSERT INTO `wp_postmeta` VALUES (304,104,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (305,104,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h4 style=\"color: white;\">(for Violin and String Orchestra)</h4>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (306,104,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (307,104,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS\r\n1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (308,104,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (309,104,'text_3','<div class=\"bartok\">\r\n<h2 style=\"color: white;\">Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n</div>\r\n');
INSERT INTO `wp_postmeta` VALUES (310,104,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (311,104,'text_4','<div class=\"mozart\">\r\n<h2 style=\"color: white;\">Mozart Sonata, K. 377</h2>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (312,104,'_text_4','field_60d8af3d42097');
INSERT INTO `wp_postmeta` VALUES (313,104,'text_5','<div class=\"recital-title\">\r\n<h1 style=\"color: white;\">Paganini Caprice #18</h1>\r\nNow that I\'ve completed my Bach project, it just made sense to jump to Paganini and see what that feels like. Let me tell you, it\'s a WHOLE different skill set to play these guys. It took me many months just to be able to run this at a very slow tempo. A great challenge, and lots of  time to tackle  it!​\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (314,104,'_text_5','field_60d8c238a7ef3');
INSERT INTO `wp_postmeta` VALUES (315,106,'_edit_lock','1624820233:1');
INSERT INTO `wp_postmeta` VALUES (316,106,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (317,11,'text_6','<div class=\"recital-title\">\r\n<h2 style=\"color: white;\">Bach Solo Sonata #2 - Andante\r\nBach Partita #2 - Chaconne</h2>\r\nThese two Bach selections were put on the original recital to celebrate being done with the project. They are possibly my favorite two movements out of all six of his solo violin works, and absolutely enjoyable to work on again even though I recorded them less than a year ago!​\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (318,11,'_text_6','field_60d8ca1b27366');
INSERT INTO `wp_postmeta` VALUES (319,108,'image','71');
INSERT INTO `wp_postmeta` VALUES (320,108,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (321,108,'image2','75');
INSERT INTO `wp_postmeta` VALUES (322,108,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (323,108,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h4 style=\"color: white;\">(for Violin and String Orchestra)</h4>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (324,108,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (325,108,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS\r\n1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (326,108,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (327,108,'text_3','<div class=\"bartok\">\r\n<h2 style=\"color: white;\">Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n</div>\r\n');
INSERT INTO `wp_postmeta` VALUES (328,108,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (329,108,'text_4','<div class=\"mozart\">\r\n<h2 style=\"color: white;\">Mozart Sonata, K. 377</h2>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (330,108,'_text_4','field_60d8af3d42097');
INSERT INTO `wp_postmeta` VALUES (331,108,'text_5','<div class=\"recital-title\">\r\n<h1 style=\"color: white;\">Paganini Caprice #18</h1>\r\nNow that I\'ve completed my Bach project, it just made sense to jump to Paganini and see what that feels like. Let me tell you, it\'s a WHOLE different skill set to play these guys. It took me many months just to be able to run this at a very slow tempo. A great challenge, and lots of  time to tackle  it!​\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (332,108,'_text_5','field_60d8c238a7ef3');
INSERT INTO `wp_postmeta` VALUES (333,108,'text_6','<div class=\"recital-title\">\r\n<h1 style=\"color: white;\">Bach Solo Sonata #2 - Andante<br/>\r\nBach Partita #2 - Chaconne</h1>\r\nThese two Bach selections were put on the original recital to celebrate being done with the project. They are possibly my favorite two movements out of all six of his solo violin works, and absolutely enjoyable to work on again even though I recorded them less than a year ago!​\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (334,108,'_text_6','field_60d8ca1b27366');
INSERT INTO `wp_postmeta` VALUES (335,109,'_edit_lock','1624922931:1');
INSERT INTO `wp_postmeta` VALUES (336,109,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (337,11,'text_7','<div class=\"recital-title\">\r\n<h2 style=\"color: white;\">Ravel Kaddish, arr. Garban</h2>\r\nRavel was interested in all kinds of different music. Jewish music was one strand he didn\'t follow frequently, but he did write 2 songs for voice and piano - \"2 Hebrew Melodies\". They were beautiful enough that Ravel eventually arranged them for voice and orchestra. And another French composer took interest by the name of Lucien Garban. He arranged the Kaddish for violin and piano, so that sort of gives you the history. Kaddish (or \"Kaddisch\" originally) means \"holy\", and it used as a mourning prayer at funeral services. Here is the text-\r\n\r\n<em>Glorified and sanctified be God’s great name throughout the world</em>\r\n<em>which He has created according to His will.</em>\r\n\r\n<em>May He establish His kingdom in your lifetime and during your days,</em>\r\n<em>and within the life of the entire House of Israel, speedily and soon;</em>\r\n<em>and say, Amen.</em>\r\n\r\n<em>May His great name be blessed forever and to all eternity.</em>\r\n\r\n<em>Blessed and praised, glorified and exalted, extolled and honored,</em>\r\n<em>adored and lauded be the name of the Holy One, blessed be He,</em>\r\n<em>beyond all the blessings and hymns, praises and consolations that</em>\r\n<em>are ever spoken in the world; and say, Amen.</em>\r\n\r\n<em>May there be abundant peace from heaven, and life, for us</em>\r\n<em>and for all Israel; and say, Amen.</em>\r\n\r\n<em>He who creates peace in His celestial heights,</em>\r\n<em>may He create peace for us and for all Israel;</em>\r\n<em>and say, Amen.</em>\r\n\r\nSo while the context is frequently sober and sad, the words themselves are full of hope and praise.  A fascinating juxtaposition.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (338,11,'_text_7','field_60d8ca9c7b93b');
INSERT INTO `wp_postmeta` VALUES (339,111,'image','71');
INSERT INTO `wp_postmeta` VALUES (340,111,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (341,111,'image2','75');
INSERT INTO `wp_postmeta` VALUES (342,111,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (343,111,'text','<h1 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h1>\r\n<h4 style=\"color: white;\">(for Violin and String Orchestra)</h4>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (344,111,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (345,111,'text_2','<h1 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS\r\n1-10</h1>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (346,111,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (347,111,'text_3','<div class=\"bartok\">\r\n<h2 style=\"color: white;\">Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n</div>\r\n');
INSERT INTO `wp_postmeta` VALUES (348,111,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (349,111,'text_4','<div class=\"mozart\">\r\n<h2 style=\"color: white;\">Mozart Sonata, K. 377</h2>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (350,111,'_text_4','field_60d8af3d42097');
INSERT INTO `wp_postmeta` VALUES (351,111,'text_5','<div class=\"recital-title\">\r\n<h1 style=\"color: white;\">Paganini Caprice #18</h1>\r\nNow that I\'ve completed my Bach project, it just made sense to jump to Paganini and see what that feels like. Let me tell you, it\'s a WHOLE different skill set to play these guys. It took me many months just to be able to run this at a very slow tempo. A great challenge, and lots of  time to tackle  it!​\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (352,111,'_text_5','field_60d8c238a7ef3');
INSERT INTO `wp_postmeta` VALUES (353,111,'text_6','<div class=\"recital-title\">\r\n<h1 style=\"color: white;\">Bach Solo Sonata #2 - Andante<br/>\r\nBach Partita #2 - Chaconne</h1>\r\nThese two Bach selections were put on the original recital to celebrate being done with the project. They are possibly my favorite two movements out of all six of his solo violin works, and absolutely enjoyable to work on again even though I recorded them less than a year ago!​\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (354,111,'_text_6','field_60d8ca1b27366');
INSERT INTO `wp_postmeta` VALUES (355,111,'text_7','<div class=\"recital-title\">\r\n<h1 style=\"color: white;\">Ravel Kaddish, arr. Garban</h1>\r\nRavel was interested in all kinds of different music. Jewish music was one strand he didn\'t follow frequently, but he did write 2 songs for voice and piano - \"2 Hebrew Melodies\". They were beautiful enough that Ravel eventually arranged them for voice and orchestra. And another French composer took interest by the name of Lucien Garban. He arranged the Kaddish for violin and piano, so that sort of gives you the history. Kaddish (or \"Kaddisch\" originally) means \"holy\", and it used as a mourning prayer at funeral services. Here is the text-\r\n\r\n<em>Glorified and sanctified be God’s great name throughout the world</em>\r\n<em>which He has created according to His will.</em>\r\n\r\n<em>May He establish His kingdom in your lifetime and during your days,</em>\r\n<em>and within the life of the entire House of Israel, speedily and soon;</em>\r\n<em>and say, Amen.</em>\r\n\r\n<em>May His great name be blessed forever and to all eternity.</em>\r\n\r\n<em>Blessed and praised, glorified and exalted, extolled and honored,</em>\r\n<em>adored and lauded be the name of the Holy One, blessed be He,</em>\r\n<em>beyond all the blessings and hymns, praises and consolations that</em>\r\n<em>are ever spoken in the world; and say, Amen.</em>\r\n\r\n<em>May there be abundant peace from heaven, and life, for us</em>\r\n<em>and for all Israel; and say, Amen.</em>\r\n\r\n<em>He who creates peace in His celestial heights,</em>\r\n<em>may He create peace for us and for all Israel;</em>\r\n<em>and say, Amen.</em>\r\n\r\nSo while the context is frequently sober and sad, the words themselves are full of hope and praise.  A fascinating juxtaposition.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (356,111,'_text_7','field_60d8ca9c7b93b');
INSERT INTO `wp_postmeta` VALUES (357,114,'_wp_attached_file','2021/06/contact.jpg');
INSERT INTO `wp_postmeta` VALUES (358,114,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2021/06/contact.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"contact-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"contact-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (359,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (360,13,'image','114');
INSERT INTO `wp_postmeta` VALUES (361,13,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (362,115,'image','114');
INSERT INTO `wp_postmeta` VALUES (363,115,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (364,112,'wpforms_entries_count','1');
INSERT INTO `wp_postmeta` VALUES (365,116,'image','71');
INSERT INTO `wp_postmeta` VALUES (366,116,'_image','field_60c2a39b78b98');
INSERT INTO `wp_postmeta` VALUES (367,116,'image2','75');
INSERT INTO `wp_postmeta` VALUES (368,116,'_image2','field_60ca90de71e15');
INSERT INTO `wp_postmeta` VALUES (369,116,'text','<h2 class=\"elementor-image-box-title\">HANS GAL CONCERTINO</h2>\r\n<h4 style=\"color: white;\">(for Violin and String Orchestra)</h4>\r\nA truly wonderful piece by a brilliant composer during World War 2. It sounds like Brahms! I haven\'t played a concerted work with orchestra in quite a while, and it is proving very fun to come back to the genre. High, soaring sounds on the violin....exactly what got me hooked in the first place! Also all kinds of ricochet, and huge leaps, and harmonics, etc.');
INSERT INTO `wp_postmeta` VALUES (370,116,'_text','field_60c00075ea3a5');
INSERT INTO `wp_postmeta` VALUES (371,116,'text_2','<h2 class=\"elementor-image-box-title\">BEETHOVEN VIOLIN SONATAS\r\n1-10</h2>\r\nAgain, at the end of my Bach project, it seemed natural to play with someone rather than myself. So I set to work with Michael Finlay, a great duo partner friend from Chicago, to organize this project. Our last big project together was all 3 Brahms Sonatas. This is a bit bigger. And so far, COVID has stymied 2 trips to begin rehearsals. SAD! But we\'ll keep at it, and eventually I hope to be able to share the fruits of our labor with you.');
INSERT INTO `wp_postmeta` VALUES (372,116,'_text_2','field_60cbe0397c034');
INSERT INTO `wp_postmeta` VALUES (373,116,'text_3','<div class=\"bartok\">\r\n<h2 style=\"color: white;\">Bartok Rhapsody #1</h2>\r\nThis piece was unfamiliar to me, the 2nd Rhapsody is played much more often. But boy is it fun, and HARD. I\'ve had a great time challenging myself with this one, all kinds of crazy double and triple-stops, left-hand pizzicato, harmonics, and racing fast insect-like passages. It really is a virtuoso piece, and I\'m pushing myself to learn more of these. They take more time than other pieces, like the accompanying Mozart Sonata, but it\'s wonderfully satisfying once you\'ve put the time in.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (374,116,'_text_3','field_60cbe25e4cf25');
INSERT INTO `wp_postmeta` VALUES (375,116,'text_4','<div class=\"mozart\">\r\n<h2 style=\"color: white;\">Mozart Sonata, K. 377</h2>\r\nThis is another rarity. There are a few Mozart Sonatas that are played over and over again, but this one proves the point that they are all high quality and worthy of consideration. I\'ve done only a few Mozart sonatas in my life, and that\'s a travesty.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (376,116,'_text_4','field_60d8af3d42097');
INSERT INTO `wp_postmeta` VALUES (377,116,'text_5','<div class=\"recital-title\">\r\n<h2 style=\"color: white;\">Paganini Caprice #18</h2>\r\nNow that I\'ve completed my Bach project, it just made sense to jump to Paganini and see what that feels like. Let me tell you, it\'s a WHOLE different skill set to play these guys. It took me many months just to be able to run this at a very slow tempo. A great challenge, and lots of time to tackle it!​\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (378,116,'_text_5','field_60d8c238a7ef3');
INSERT INTO `wp_postmeta` VALUES (379,116,'text_6','<div class=\"recital-title\">\r\n<h2 style=\"color: white;\">Bach Solo Sonata #2 - Andante\r\nBach Partita #2 - Chaconne</h2>\r\nThese two Bach selections were put on the original recital to celebrate being done with the project. They are possibly my favorite two movements out of all six of his solo violin works, and absolutely enjoyable to work on again even though I recorded them less than a year ago!​\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (380,116,'_text_6','field_60d8ca1b27366');
INSERT INTO `wp_postmeta` VALUES (381,116,'text_7','<div class=\"recital-title\">\r\n<h2 style=\"color: white;\">Ravel Kaddish, arr. Garban</h2>\r\nRavel was interested in all kinds of different music. Jewish music was one strand he didn\'t follow frequently, but he did write 2 songs for voice and piano - \"2 Hebrew Melodies\". They were beautiful enough that Ravel eventually arranged them for voice and orchestra. And another French composer took interest by the name of Lucien Garban. He arranged the Kaddish for violin and piano, so that sort of gives you the history. Kaddish (or \"Kaddisch\" originally) means \"holy\", and it used as a mourning prayer at funeral services. Here is the text-\r\n\r\n<em>Glorified and sanctified be God’s great name throughout the world</em>\r\n<em>which He has created according to His will.</em>\r\n\r\n<em>May He establish His kingdom in your lifetime and during your days,</em>\r\n<em>and within the life of the entire House of Israel, speedily and soon;</em>\r\n<em>and say, Amen.</em>\r\n\r\n<em>May His great name be blessed forever and to all eternity.</em>\r\n\r\n<em>Blessed and praised, glorified and exalted, extolled and honored,</em>\r\n<em>adored and lauded be the name of the Holy One, blessed be He,</em>\r\n<em>beyond all the blessings and hymns, praises and consolations that</em>\r\n<em>are ever spoken in the world; and say, Amen.</em>\r\n\r\n<em>May there be abundant peace from heaven, and life, for us</em>\r\n<em>and for all Israel; and say, Amen.</em>\r\n\r\n<em>He who creates peace in His celestial heights,</em>\r\n<em>may He create peace for us and for all Israel;</em>\r\n<em>and say, Amen.</em>\r\n\r\nSo while the context is frequently sober and sad, the words themselves are full of hope and praise.  A fascinating juxtaposition.\r\n\r\n</div>');
INSERT INTO `wp_postmeta` VALUES (382,116,'_text_7','field_60d8ca9c7b93b');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-05-26 00:12:34','2021-05-26 00:12:34','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2021-06-07 22:48:50','2021-06-07 22:48:50','',0,'http://byron-hitchcock.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (7,1,'2021-05-26 00:37:59','2021-05-26 00:37:59','<!-- wp:paragraph -->\n<p>This is a test</p>\n<!-- /wp:paragraph -->','Home','','trash','closed','closed','','home__trashed','','','2021-06-07 23:29:12','2021-06-07 23:29:12','',0,'http://byron-hitchcock.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-05-26 00:37:59','2021-05-26 00:37:59','<!-- wp:paragraph -->\n<p>This is a test</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-05-26 00:37:59','2021-05-26 00:37:59','',7,'http://byron-hitchcock.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-05-27 23:57:42','2021-05-27 23:57:42','','About','','publish','closed','closed','','about','','','2021-06-10 23:44:51','2021-06-10 23:44:51','',0,'http://byron-hitchcock.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-05-27 23:57:42','2021-05-27 23:57:42','','About','','inherit','closed','closed','','9-revision-v1','','','2021-05-27 23:57:42','2021-05-27 23:57:42','',9,'http://byron-hitchcock.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-05-28 00:00:58','2021-05-28 00:00:58','','Current Projects','','publish','closed','closed','','current-projects','','','2021-07-01 23:34:15','2021-07-01 23:34:15','',0,'http://byron-hitchcock.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-05-28 00:00:58','2021-05-28 00:00:58','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-05-28 00:00:58','2021-05-28 00:00:58','',11,'http://byron-hitchcock.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-05-28 00:02:25','2021-05-28 00:02:25','<!-- wp:wpforms/form-selector {\"formId\":\"112\"} /-->','Contact','','publish','closed','closed','','contact','','','2021-06-28 23:47:42','2021-06-28 23:47:42','',0,'http://byron-hitchcock.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-05-28 00:02:25','2021-05-28 00:02:25','','Contact','','inherit','closed','closed','','13-revision-v1','','','2021-05-28 00:02:25','2021-05-28 00:02:25','',13,'http://byron-hitchcock.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-05-28 00:03:56','2021-05-28 00:03:56','','Recommendations','','publish','closed','closed','','recommendations','','','2021-05-28 00:03:56','2021-05-28 00:03:56','',0,'http://byron-hitchcock.local/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-05-28 00:03:56','2021-05-28 00:03:56','','Recommendations','','inherit','closed','closed','','16-revision-v1','','','2021-05-28 00:03:56','2021-05-28 00:03:56','',16,'http://byron-hitchcock.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-05-28 00:04:48','2021-05-28 00:04:48','','The Bach Project','','publish','closed','closed','','bach-project','','','2021-05-28 00:04:48','2021-05-28 00:04:48','',0,'http://byron-hitchcock.local/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-05-28 00:04:48','2021-05-28 00:04:48','','The Bach Project','','inherit','closed','closed','','18-revision-v1','','','2021-05-28 00:04:48','2021-05-28 00:04:48','',18,'http://byron-hitchcock.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-05-28 00:08:33','2021-05-28 00:08:33','','favicomatic','','inherit','open','closed','','favicomatic','','','2021-05-28 00:08:33','2021-05-28 00:08:33','',0,'http://byron-hitchcock.local/wp-content/uploads/2021/05/favicomatic.zip',0,'attachment','application/zip',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-05-28 00:08:56','2021-05-28 00:08:56','','favicon-32x32','','inherit','open','closed','','favicon-32x32','','','2021-05-28 00:08:56','2021-05-28 00:08:56','',0,'http://byron-hitchcock.local/wp-content/uploads/2021/05/favicon-32x32-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-05-28 00:09:07','2021-05-28 00:09:07','http://byron-hitchcock.local/wp-content/uploads/2021/05/cropped-favicon-32x32-1.png','cropped-favicon-32x32-1.png','','inherit','open','closed','','cropped-favicon-32x32-1-png','','','2021-05-28 00:09:07','2021-05-28 00:09:07','',0,'http://byron-hitchcock.local/wp-content/uploads/2021/05/cropped-favicon-32x32-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-06-07 22:48:50','2021-06-07 22:48:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-06-07 22:48:50','2021-06-07 22:48:50','',1,'http://byron-hitchcock.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-06-07 23:33:59','2021-06-07 23:33:59','','Home','','publish','closed','closed','','home','','','2021-06-08 23:44:38','2021-06-08 23:44:38','',0,'http://byron-hitchcock.local/?page_id=29',0,'page','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-06-07 23:33:59','2021-06-07 23:33:59','','Home','','inherit','closed','closed','','29-revision-v1','','','2021-06-07 23:33:59','2021-06-07 23:33:59','',29,'http://byron-hitchcock.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-06-07 23:34:15','2021-06-07 23:34:15','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-07 23:34:15\"\n    },\n    \"page_on_front\": {\n        \"value\": \"29\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-07 23:34:15\"\n    }\n}','','','trash','closed','closed','','ff0d7dd4-ac99-4244-8162-c533b347c132','','','2021-06-07 23:34:15','2021-06-07 23:34:15','',0,'http://byron-hitchcock.local/ff0d7dd4-ac99-4244-8162-c533b347c132/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-06-08 23:43:06','2021-06-08 23:43:06','a:7:{s:8:\"location\";a:3:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-templates/home.php\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:24:\"page-templates/about.php\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:35:\"page-templates/current-projects.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Text','text','publish','closed','closed','','group_60c00056e6725','','','2021-06-17 23:55:45','2021-06-17 23:55:45','',0,'http://byron-hitchcock.local/?post_type=acf-field-group&#038;p=33',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-06-08 23:43:06','2021-06-08 23:43:06','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Text','text','publish','closed','closed','','field_60c00075ea3a5','','','2021-06-08 23:43:06','2021-06-08 23:43:06','',33,'http://byron-hitchcock.local/?post_type=acf-field&p=34',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-06-08 23:44:38','2021-06-08 23:44:38','','Home','','inherit','closed','closed','','29-revision-v1','','','2021-06-08 23:44:38','2021-06-08 23:44:38','',29,'http://byron-hitchcock.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-06-08 23:59:16','2021-06-08 23:59:16','','IMG_4938_silhouette- carousel','','inherit','open','closed','','img_4938_silhouette-carousel','','','2021-06-08 23:59:16','2021-06-08 23:59:16','',0,'http://byron-hitchcock.local/wp-content/uploads/2021/06/IMG_4938_silhouette-carousel.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-06-08 23:59:16','2021-06-08 23:59:16','','IMG_4967- carousel','','inherit','open','closed','','img_4967-carousel','','','2021-06-08 23:59:16','2021-06-08 23:59:16','',0,'http://byron-hitchcock.local/wp-content/uploads/2021/06/IMG_4967-carousel.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-06-08 23:59:17','2021-06-08 23:59:17','','IMG_4981- carousel','','inherit','open','closed','','img_4981-carousel','','','2021-06-08 23:59:17','2021-06-08 23:59:17','',0,'http://byron-hitchcock.local/wp-content/uploads/2021/06/IMG_4981-carousel.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-06-08 23:59:17','2021-06-08 23:59:17','','P1090260 (1)- carousel','','inherit','open','closed','','p1090260-1-carousel','','','2021-06-08 23:59:17','2021-06-08 23:59:17','',0,'http://byron-hitchcock.local/wp-content/uploads/2021/06/P1090260-1-carousel.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-06-08 23:59:18','2021-06-08 23:59:18','','P1090261 (1)- carousel','','inherit','open','closed','','p1090261-1-carousel','','','2021-06-15 23:30:44','2021-06-15 23:30:44','',11,'http://byron-hitchcock.local/wp-content/uploads/2021/06/P1090261-1-carousel.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-06-08 23:59:18','2021-06-08 23:59:18','','P1090266- carousel','','inherit','open','closed','','p1090266-carousel','','','2021-06-08 23:59:18','2021-06-08 23:59:18','',0,'http://byron-hitchcock.local/wp-content/uploads/2021/06/P1090266-carousel.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-06-08 23:59:18','2021-06-08 23:59:18','','P1090266-2- carousel','','inherit','open','closed','','p1090266-2-carousel','','','2021-06-08 23:59:18','2021-06-08 23:59:18','',0,'http://byron-hitchcock.local/wp-content/uploads/2021/06/P1090266-2-carousel.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-06-10 22:39:58','2021-06-10 22:39:58','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-templates/home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','YouTube video player','youtube-video-player','trash','closed','closed','','group_60c2948ecf6c8__trashed','','','2021-06-10 22:47:49','2021-06-10 22:47:49','',0,'http://byron-hitchcock.local/?post_type=acf-field-group&#038;p=44',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-06-10 22:39:58','2021-06-10 22:39:58','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Videos','videos','trash','closed','closed','','field_60c294a3090bb__trashed','','','2021-06-10 22:47:49','2021-06-10 22:47:49','',44,'http://byron-hitchcock.local/?post_type=acf-field&#038;p=45',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-06-10 22:41:54','2021-06-10 22:41:54','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Video Url 1','video_url_1','publish','closed','closed','','field_60c2950ac367c','','','2021-06-10 22:41:54','2021-06-10 22:41:54','',45,'http://byron-hitchcock.local/?post_type=acf-field&p=46',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-06-10 22:41:54','2021-06-10 22:41:54','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Video Url 2','video_url_2','publish','closed','closed','','field_60c29515c367d','','','2021-06-10 22:41:54','2021-06-10 22:41:54','',45,'http://byron-hitchcock.local/?post_type=acf-field&p=47',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-06-10 22:41:54','2021-06-10 22:41:54','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Video Url 3','video_url_3','publish','closed','closed','','field_60c29517c367e','','','2021-06-10 22:41:54','2021-06-10 22:41:54','',45,'http://byron-hitchcock.local/?post_type=acf-field&p=48',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-06-10 22:41:54','2021-06-10 22:41:54','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Video Url 4','video_url_4','publish','closed','closed','','field_60c2951bc367f','','','2021-06-10 22:41:54','2021-06-10 22:41:54','',45,'http://byron-hitchcock.local/?post_type=acf-field&p=49',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-06-10 22:41:54','2021-06-10 22:41:54','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Video Url 5','video_url_5','publish','closed','closed','','field_60c2951ec3680','','','2021-06-10 22:41:54','2021-06-10 22:41:54','',45,'http://byron-hitchcock.local/?post_type=acf-field&p=50',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-06-10 22:41:54','2021-06-10 22:41:54','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Video Url 6','video_url_6','publish','closed','closed','','field_60c29520c3681','','','2021-06-10 22:41:54','2021-06-10 22:41:54','',45,'http://byron-hitchcock.local/?post_type=acf-field&p=51',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-06-10 22:41:54','2021-06-10 22:41:54','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Video Url 7','video_url_7','publish','closed','closed','','field_60c29524c3682','','','2021-06-10 22:41:54','2021-06-10 22:41:54','',45,'http://byron-hitchcock.local/?post_type=acf-field&p=52',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-06-10 22:41:54','2021-06-10 22:41:54','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Video Url 8','video_url_8','publish','closed','closed','','field_60c29526c3683','','','2021-06-10 22:41:54','2021-06-10 22:41:54','',45,'http://byron-hitchcock.local/?post_type=acf-field&p=53',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-06-10 22:41:54','2021-06-10 22:41:54','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Video Url 9','video_url_9','publish','closed','closed','','field_60c29528c3684','','','2021-06-10 22:41:54','2021-06-10 22:41:54','',45,'http://byron-hitchcock.local/?post_type=acf-field&p=54',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-06-10 22:41:54','2021-06-10 22:41:54','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Video Url 10','video_url_10','publish','closed','closed','','field_60c2952dc3685','','','2021-06-10 22:41:54','2021-06-10 22:41:54','',45,'http://byron-hitchcock.local/?post_type=acf-field&p=55',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-06-10 22:49:31','2021-06-10 22:49:31','<iframe title=\"Partita II in d minor, 5.Chaconne, BWV 1004\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/YRKm3ppDopk?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','','','publish','closed','closed','','f46d9a083dc3c08832349d1660242043','','','2021-06-10 22:49:31','2021-06-10 22:49:31','',0,'http://byron-hitchcock.local/f46d9a083dc3c08832349d1660242043/',0,'oembed_cache','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-06-10 22:50:31','2021-06-10 22:50:31','<iframe title=\"Sonata II in a minor, 3.Andante, BWV 1003\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/FJL6DFSZ1XQ?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','','','publish','closed','closed','','63502798402f519dd0ee5848294741ee','','','2021-06-10 22:50:31','2021-06-10 22:50:31','',0,'http://byron-hitchcock.local/63502798402f519dd0ee5848294741ee/',0,'oembed_cache','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-06-10 22:51:02','2021-06-10 22:51:02','<iframe title=\"Schoenberg: Phantasy, Op. 47\" width=\"500\" height=\"375\" src=\"https://www.youtube.com/embed/lAJi5iC_7N4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','','','publish','closed','closed','','a1a5d6a896adcc22962e274f81404eea','','','2021-06-10 22:51:02','2021-06-10 22:51:02','',0,'http://byron-hitchcock.local/a1a5d6a896adcc22962e274f81404eea/',0,'oembed_cache','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-06-10 22:51:30','2021-06-10 22:51:30','<iframe title=\"Brahms Sonata No. 2 in A Major for Violin and Piano, Op. 100\" width=\"500\" height=\"375\" src=\"https://www.youtube.com/embed/iDOaHa5Z3dQ?start=1&feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','','','publish','closed','closed','','55d5721d6738d0403f39a783eb427cb9','','','2021-06-10 22:51:30','2021-06-10 22:51:30','',0,'http://byron-hitchcock.local/55d5721d6738d0403f39a783eb427cb9/',0,'oembed_cache','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-06-10 23:08:39','2021-06-10 23:08:39','','Screenshot (9)','','inherit','open','closed','','screenshot-9','','','2021-06-10 23:08:39','2021-06-10 23:08:39','',0,'http://byron-hitchcock.local/wp-content/uploads/2021/06/Screenshot-9.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-06-10 23:10:00','2021-06-10 23:10:00','','Screenshot (290)','','inherit','open','closed','','screenshot-290','','','2021-06-10 23:10:00','2021-06-10 23:10:00','',0,'http://byron-hitchcock.local/wp-content/uploads/2021/06/Screenshot-290.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-06-10 23:43:35','2021-06-10 23:43:35','a:7:{s:8:\"location\";a:3:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:24:\"page-templates/about.php\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:35:\"page-templates/current-projects.php\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:26:\"page-templates/contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Image','image','publish','closed','closed','','group_60c2a3922a194','','','2021-06-28 23:47:20','2021-06-28 23:47:20','',0,'http://byron-hitchcock.local/?post_type=acf-field-group&#038;p=62',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-06-10 23:43:35','2021-06-10 23:43:35','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Image','image','publish','closed','closed','','field_60c2a39b78b98','','','2021-06-10 23:43:35','2021-06-10 23:43:35','',62,'http://byron-hitchcock.local/?post_type=acf-field&p=63',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-06-10 23:43:57','2021-06-10 23:43:57','','About me','','inherit','open','closed','','about-me','','','2021-06-10 23:43:57','2021-06-10 23:43:57','',9,'http://byron-hitchcock.local/wp-content/uploads/2021/06/About-me.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-06-10 23:44:24','2021-06-10 23:44:24','','About','','inherit','closed','closed','','9-revision-v1','','','2021-06-10 23:44:24','2021-06-10 23:44:24','',9,'http://byron-hitchcock.local/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-06-10 23:44:48','2021-06-10 23:44:48','','About me- smaller','','inherit','open','closed','','about-me-smaller','','','2021-06-10 23:44:48','2021-06-10 23:44:48','',9,'http://byron-hitchcock.local/wp-content/uploads/2021/06/About-me-smaller.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-06-10 23:44:51','2021-06-10 23:44:51','','About','','inherit','closed','closed','','9-revision-v1','','','2021-06-10 23:44:51','2021-06-10 23:44:51','',9,'http://byron-hitchcock.local/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-06-15 23:30:44','2021-06-15 23:30:44','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-15 23:30:44','2021-06-15 23:30:44','',11,'http://byron-hitchcock.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-06-15 23:37:21','2021-06-15 23:37:21','','Current-projects','','inherit','open','closed','','current-projects-2','','','2021-06-15 23:37:21','2021-06-15 23:37:21','',11,'http://byron-hitchcock.local/wp-content/uploads/2021/06/Current-projects.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-06-15 23:37:25','2021-06-15 23:37:25','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-15 23:37:25','2021-06-15 23:37:25','',11,'http://byron-hitchcock.local/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-06-16 00:05:49','2021-06-16 00:05:49','','Current-projects- banner','','inherit','open','closed','','current-projects-banner','','','2021-06-16 00:05:49','2021-06-16 00:05:49','',11,'http://byron-hitchcock.local/wp-content/uploads/2021/06/Current-projects-banner.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-06-16 00:05:53','2021-06-16 00:05:53','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-16 00:05:53','2021-06-16 00:05:53','',11,'http://byron-hitchcock.local/?p=72',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-06-17 00:02:02','2021-06-17 00:02:02','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:35:\"page-templates/current-projects.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Image2','image2','publish','closed','closed','','group_60ca90d796f3b','','','2021-06-17 00:04:04','2021-06-17 00:04:04','',0,'http://byron-hitchcock.local/?post_type=acf-field-group&#038;p=73',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-06-17 00:02:02','2021-06-17 00:02:02','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Image2','image2','publish','closed','closed','','field_60ca90de71e15','','','2021-06-17 00:04:04','2021-06-17 00:04:04','',73,'http://byron-hitchcock.local/?post_type=acf-field&#038;p=74',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-06-17 00:02:15','2021-06-17 00:02:15','','Current-projects- banner- desktop','','inherit','open','closed','','current-projects-banner-desktop','','','2021-06-17 00:02:15','2021-06-17 00:02:15','',11,'http://byron-hitchcock.local/wp-content/uploads/2021/06/Current-projects-banner-desktop.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-06-17 00:02:21','2021-06-17 00:02:21','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-17 00:02:21','2021-06-17 00:02:21','',11,'http://byron-hitchcock.local/?p=76',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-06-17 23:52:41','2021-06-17 23:52:41','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:35:\"page-templates/current-projects.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Text 2','text-2','publish','closed','closed','','group_60cbe0326b388','','','2021-06-17 23:52:51','2021-06-17 23:52:51','',0,'http://byron-hitchcock.local/?post_type=acf-field-group&#038;p=78',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-06-17 23:52:41','2021-06-17 23:52:41','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Text 2','text_2','publish','closed','closed','','field_60cbe0397c034','','','2021-06-17 23:52:41','2021-06-17 23:52:41','',78,'http://byron-hitchcock.local/?post_type=acf-field&p=79',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-06-17 23:56:19','2021-06-17 23:56:19','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-17 23:56:19','2021-06-17 23:56:19','',11,'http://byron-hitchcock.local/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-06-17 23:56:45','2021-06-17 23:56:45','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-17 23:56:45','2021-06-17 23:56:45','',11,'http://byron-hitchcock.local/?p=81',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-06-17 23:56:56','2021-06-17 23:56:56','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-17 23:56:56','2021-06-17 23:56:56','',11,'http://byron-hitchcock.local/?p=82',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-06-17 23:57:49','2021-06-17 23:57:49','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-17 23:57:49','2021-06-17 23:57:49','',11,'http://byron-hitchcock.local/?p=83',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-06-17 23:58:13','2021-06-17 23:58:13','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-17 23:58:13','2021-06-17 23:58:13','',11,'http://byron-hitchcock.local/?p=84',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-06-17 23:59:05','2021-06-17 23:59:05','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-17 23:59:05','2021-06-17 23:59:05','',11,'http://byron-hitchcock.local/?p=85',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-06-17 23:59:50','2021-06-17 23:59:50','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-17 23:59:50','2021-06-17 23:59:50','',11,'http://byron-hitchcock.local/?p=86',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-06-18 00:00:14','2021-06-18 00:00:14','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-18 00:00:14','2021-06-18 00:00:14','',11,'http://byron-hitchcock.local/?p=87',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-06-18 00:01:43','2021-06-18 00:01:43','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:35:\"page-templates/current-projects.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Text 3','text-3','publish','closed','closed','','group_60cbe2599a0fd','','','2021-06-18 00:01:49','2021-06-18 00:01:49','',0,'http://byron-hitchcock.local/?post_type=acf-field-group&#038;p=88',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-06-18 00:01:43','2021-06-18 00:01:43','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Text 3','text_3','publish','closed','closed','','field_60cbe25e4cf25','','','2021-06-18 00:01:43','2021-06-18 00:01:43','',88,'http://byron-hitchcock.local/?post_type=acf-field&p=89',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-06-18 00:05:24','2021-06-18 00:05:24','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-18 00:05:24','2021-06-18 00:05:24','',11,'http://byron-hitchcock.local/?p=90',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-06-18 00:08:05','2021-06-18 00:08:05','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-18 00:08:05','2021-06-18 00:08:05','',11,'http://byron-hitchcock.local/?p=91',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-06-18 00:18:36','2021-06-18 00:18:36','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-18 00:18:36','2021-06-18 00:18:36','',11,'http://byron-hitchcock.local/?p=92',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-06-18 00:19:05','2021-06-18 00:19:05','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-18 00:19:05','2021-06-18 00:19:05','',11,'http://byron-hitchcock.local/?p=93',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-06-18 00:19:53','2021-06-18 00:19:53','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-18 00:19:53','2021-06-18 00:19:53','',11,'http://byron-hitchcock.local/?p=94',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-06-27 17:01:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-06-27 17:01:18','0000-00-00 00:00:00','',0,'http://byron-hitchcock.local/?p=95',0,'post','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-06-27 17:02:11','2021-06-27 17:02:11','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-27 17:02:11','2021-06-27 17:02:11','',11,'http://byron-hitchcock.local/?p=96',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-06-27 17:02:53','2021-06-27 17:02:53','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:35:\"page-templates/current-projects.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Text 4','text-4','publish','closed','closed','','group_60d8af3d36397','','','2021-06-27 17:03:12','2021-06-27 17:03:12','',0,'http://byron-hitchcock.local/?p=97',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-06-27 17:02:53','2021-06-27 17:02:53','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Text 4','text_4','publish','closed','closed','','field_60d8af3d42097','','','2021-06-27 17:03:04','2021-06-27 17:03:04','',97,'http://byron-hitchcock.local/?post_type=acf-field&#038;p=98',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-06-27 17:03:26','2021-06-27 17:03:26','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-27 17:03:26','2021-06-27 17:03:26','',11,'http://byron-hitchcock.local/?p=99',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-06-27 18:11:42','2021-06-27 18:11:42','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-27 18:11:42','2021-06-27 18:11:42','',11,'http://byron-hitchcock.local/?p=100',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-06-27 18:23:52','2021-06-27 18:23:52','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:35:\"page-templates/current-projects.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Text 5','text-5','publish','closed','closed','','group_60d8c2389d870','','','2021-06-27 18:24:24','2021-06-27 18:24:24','',0,'http://byron-hitchcock.local/?p=101',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-06-27 18:23:52','2021-06-27 18:23:52','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Text 5','text_5','publish','closed','closed','','field_60d8c238a7ef3','','','2021-06-27 18:24:04','2021-06-27 18:24:04','',101,'http://byron-hitchcock.local/?post_type=acf-field&#038;p=102',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-06-27 18:25:53','2021-06-27 18:25:53','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-27 18:25:53','2021-06-27 18:25:53','',11,'http://byron-hitchcock.local/?p=103',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-06-27 18:51:23','2021-06-27 18:51:23','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-27 18:51:23','2021-06-27 18:51:23','',11,'http://byron-hitchcock.local/?p=104',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-06-27 18:57:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-06-27 18:57:27','0000-00-00 00:00:00','',0,'http://byron-hitchcock.local/?post_type=acf-field-group&p=105',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-06-27 18:57:31','2021-06-27 18:57:31','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:35:\"page-templates/current-projects.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Text 6','text-6','publish','closed','closed','','group_60d8ca1b1d5fb','','','2021-06-27 18:57:41','2021-06-27 18:57:41','',0,'http://byron-hitchcock.local/?p=106',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-06-27 18:57:31','2021-06-27 18:57:31','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Text 6','text_6','publish','closed','closed','','field_60d8ca1b27366','','','2021-06-27 18:57:41','2021-06-27 18:57:41','',106,'http://byron-hitchcock.local/?post_type=acf-field&#038;p=107',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2021-06-27 18:58:31','2021-06-27 18:58:31','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-27 18:58:31','2021-06-27 18:58:31','',11,'http://byron-hitchcock.local/?p=108',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2021-06-27 18:59:40','2021-06-27 18:59:40','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:35:\"page-templates/current-projects.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Text 7','text-7','publish','closed','closed','','group_60d8ca9c71506','','','2021-06-27 19:00:15','2021-06-27 19:00:15','',0,'http://byron-hitchcock.local/?p=109',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-06-27 18:59:40','2021-06-27 18:59:40','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Text 7','text_7','publish','closed','closed','','field_60d8ca9c7b93b','','','2021-06-27 18:59:56','2021-06-27 18:59:56','',109,'http://byron-hitchcock.local/?post_type=acf-field&#038;p=110',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2021-06-27 19:01:35','2021-06-27 19:01:35','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-06-27 19:01:35','2021-06-27 19:01:35','',11,'http://byron-hitchcock.local/?p=111',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-06-28 23:41:06','2021-06-28 23:41:06','{\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}],\"id\":\"112\",\"field_id\":3,\"settings\":{\"form_title\":\"Contact Me\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"\",\"antispam\":\"1\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"teresasanders77@gmail.com\",\"subject\":\"{subject}\",\"sender_name\":\"Byron Hitchcock Website\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting me! I will be in\\u00a0 touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"9\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"contact\"}}','Contact Me','','publish','closed','closed','','byron-contact-form','','','2021-06-28 23:43:27','2021-06-28 23:43:27','',0,'http://byron-hitchcock.local/?post_type=wpforms&#038;p=112',0,'wpforms','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-06-28 23:44:21','2021-06-28 23:44:21','<!-- wp:wpforms/form-selector {\"formId\":\"112\"} /-->','Contact','','inherit','closed','closed','','13-revision-v1','','','2021-06-28 23:44:21','2021-06-28 23:44:21','',13,'http://byron-hitchcock.local/?p=113',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2021-06-28 23:47:38','2021-06-28 23:47:38','','contact','','inherit','open','closed','','contact-2','','','2021-06-28 23:47:38','2021-06-28 23:47:38','',13,'http://byron-hitchcock.local/wp-content/uploads/2021/06/contact.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (115,1,'2021-06-28 23:47:42','2021-06-28 23:47:42','<!-- wp:wpforms/form-selector {\"formId\":\"112\"} /-->','Contact','','inherit','closed','closed','','13-revision-v1','','','2021-06-28 23:47:42','2021-06-28 23:47:42','',13,'http://byron-hitchcock.local/?p=115',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2021-07-01 23:34:15','2021-07-01 23:34:15','','Current Projects','','inherit','closed','closed','','11-revision-v1','','','2021-07-01 23:34:15','2021-07-01 23:34:15','',11,'http://byron-hitchcock.local/?p=116',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_video_slider_effects_data`
--

DROP TABLE IF EXISTS `wp_rich_web_video_slider_effects_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_video_slider_effects_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slider_vid_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_Vid_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_video_slider_effects_data`
--

LOCK TABLES `wp_rich_web_video_slider_effects_data` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_video_slider_effects_data` DISABLE KEYS */;
INSERT INTO `wp_rich_web_video_slider_effects_data` VALUES (1,'Content Slider','Content Slider');
INSERT INTO `wp_rich_web_video_slider_effects_data` VALUES (2,'Thumbnails Slider','Thumbnails Slider');
INSERT INTO `wp_rich_web_video_slider_effects_data` VALUES (3,'Video Carousel/Content Popup','Video Carousel/Content Popup');
INSERT INTO `wp_rich_web_video_slider_effects_data` VALUES (4,'Video Slider/Vertical Thumbnails','Video Slider/Vertical Thumbnails');
INSERT INTO `wp_rich_web_video_slider_effects_data` VALUES (5,'Horizontal Posts Slider','Horizontal Posts Slider');
INSERT INTO `wp_rich_web_video_slider_effects_data` VALUES (6,'Rich Slider','Rich Slider');
INSERT INTO `wp_rich_web_video_slider_effects_data` VALUES (7,'Timeline','TimeLine Slider');
/*!40000 ALTER TABLE `wp_rich_web_video_slider_effects_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_video_slider_font_family`
--

DROP TABLE IF EXISTS `wp_rich_web_video_slider_font_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_video_slider_font_family` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Font_family` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_video_slider_font_family`
--

LOCK TABLES `wp_rich_web_video_slider_font_family` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_video_slider_font_family` DISABLE KEYS */;
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (1,'Abadi MT Condensed Light');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (2,'Aharoni');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (3,'Aldhabi');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (4,'Andalus');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (5,'Angsana New');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (6,'AngsanaUPC');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (7,'Aparajita');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (8,'Arabic Typesetting');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (9,'Arial');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (10,'Arial Black');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (11,'Batang');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (12,'BatangChe');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (13,'Browallia New');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (14,'BrowalliaUPC');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (15,'Calibri');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (16,'Calibri Light');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (17,'Calisto MT');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (18,'Cambria');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (19,'Candara');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (20,'Century Gothic');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (21,'Comic Sans MS');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (22,'Consolas');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (23,'Constantia');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (24,'Copperplate Gothic');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (25,'Copperplate Gothic Light');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (26,'Corbel');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (27,'Cordia New');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (28,'CordiaUPC');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (29,'Courier New');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (30,'DaunPenh');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (31,'David');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (32,'DFKai-SB');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (33,'DilleniaUPC');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (34,'DokChampa');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (35,'Dotum');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (36,'DotumChe');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (37,'Ebrima');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (38,'Estrangelo Edessa');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (39,'EucrosiaUPC');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (40,'Euphemia');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (41,'FangSong');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (42,'Franklin Gothic Medium');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (43,'FrankRuehl');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (44,'FreesiaUPC');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (45,'Gabriola');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (46,'Gadugi');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (47,'Gautami');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (48,'Georgia');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (49,'Gisha');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (50,'Gulim');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (51,'GulimChe');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (52,'Gungsuh');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (53,'GungsuhChe');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (54,'Impact');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (55,'IrisUPC');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (56,'Iskoola Pota');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (57,'JasmineUPC');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (58,'KaiTi');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (59,'Kalinga');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (60,'Kartika');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (61,'Khmer UI');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (62,'KodchiangUPC');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (63,'Kokila');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (64,'Lao UI');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (65,'Latha');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (66,'Leelawadee');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (67,'Levenim MT');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (68,'LilyUPC');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (69,'Lucida Console');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (70,'Lucida Handwriting Italic');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (71,'Lucida Sans Unicode');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (72,'Malgun Gothic');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (73,'Mangal');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (74,'Manny ITC');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (75,'Marlett');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (76,'Meiryo');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (77,'Meiryo UI');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (78,'Microsoft Himalaya');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (79,'Microsoft JhengHei');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (80,'Microsoft JhengHei UI');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (81,'Microsoft New Tai Lue');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (82,'Microsoft PhagsPa');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (83,'Microsoft Sans Serif');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (84,'Microsoft Tai Le');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (85,'Microsoft Uighur');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (86,'Microsoft YaHei');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (87,'Microsoft YaHei UI');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (88,'Microsoft Yi Baiti');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (89,'MingLiU_HKSCS');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (90,'MingLiU_HKSCS-ExtB');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (91,'Miriam');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (92,'Mongolian Baiti');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (93,'MoolBoran');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (94,'MS UI Gothic');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (95,'MV Boli');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (96,'Myanmar Text');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (97,'Narkisim');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (98,'Nirmala UI');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (99,'News Gothic MT');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (100,'NSimSun');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (101,'Nyala');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (102,'Palatino Linotype');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (103,'Plantagenet Cherokee');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (104,'Raavi');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (105,'Rod');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (106,'Sakkal Majalla');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (107,'Segoe Print');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (108,'Segoe Script');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (109,'Segoe UI Symbol');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (110,'Shonar Bangla');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (111,'Shruti');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (112,'SimHei');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (113,'SimKai');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (114,'Simplified Arabic');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (115,'SimSun');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (116,'SimSun-ExtB');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (117,'Sylfaen');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (118,'Tahoma');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (119,'Times New Roman');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (120,'Traditional Arabic');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (121,'Trebuchet MS');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (122,'Tunga');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (123,'Utsaah');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (124,'Vani');
INSERT INTO `wp_rich_web_video_slider_font_family` VALUES (125,'Vijaya');
/*!40000 ALTER TABLE `wp_rich_web_video_slider_font_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_video_slider_id`
--

DROP TABLE IF EXISTS `wp_rich_web_video_slider_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_video_slider_id` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Slider_ID` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_video_slider_id`
--

LOCK TABLES `wp_rich_web_video_slider_id` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_video_slider_id` DISABLE KEYS */;
INSERT INTO `wp_rich_web_video_slider_id` VALUES (1,1);
/*!40000 ALTER TABLE `wp_rich_web_video_slider_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_video_slider_manager`
--

DROP TABLE IF EXISTS `wp_rich_web_video_slider_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_video_slider_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Slider_Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_Video_Quantity` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_video_slider_manager`
--

LOCK TABLES `wp_rich_web_video_slider_manager` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_video_slider_manager` DISABLE KEYS */;
INSERT INTO `wp_rich_web_video_slider_manager` VALUES (1,'Byron Videos','3',4);
/*!40000 ALTER TABLE `wp_rich_web_video_slider_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_video_slider_videos`
--

DROP TABLE IF EXISTS `wp_rich_web_video_slider_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_video_slider_videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Rich_Web_VSlider_Vid_Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Add_Desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSldier_Add_Img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSldier_Add_Vid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSldier_Add_Src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSldier_Add_Link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSldier_Add_ONT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_ID` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_video_slider_videos`
--

LOCK TABLES `wp_rich_web_video_slider_videos` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_video_slider_videos` DISABLE KEYS */;
INSERT INTO `wp_rich_web_video_slider_videos` VALUES (33,'Partita II in d minor, 5.Chaconne, BWV 1004','','https://img.youtube.com/vi/YRKm3ppDopk/hqdefault.jpg','https://www.youtube.com/watch?v=YRKm3ppDopk','https://www.youtube.com/embed/YRKm3ppDopk','','undefined',1);
INSERT INTO `wp_rich_web_video_slider_videos` VALUES (34,'Sonata II in a minor, 3.Andante, BWV 1003','','https://img.youtube.com/vi/FJL6DFSZ1XQ/hqdefault.jpg','https://www.youtube.com/watch?v=FJL6DFSZ1XQ','https://www.youtube.com/embed/FJL6DFSZ1XQ','','undefined',1);
INSERT INTO `wp_rich_web_video_slider_videos` VALUES (35,'Schoenberg: Phantasy, Op. 47','','https://img.youtube.com/vi/lAJi5iC_7N4/hqdefault.jpg','https://www.youtube.com/watch?v=lAJi5iC_7N4','https://www.youtube.com/embed/lAJi5iC_7N4','','undefined',1);
INSERT INTO `wp_rich_web_video_slider_videos` VALUES (36,'Brahms Sonata No. 2 in A Major for Violin and Piano, Op. 100','','http://byron-hitchcock.local/wp-content/uploads/2021/06/Screenshot-290-300x162.png','https://www.youtube.com/watch?v=iDOaHa5Z3dQ&t','https://www.youtube.com/embed/iDOaHa5Z3dQ&t','','',1);
/*!40000 ALTER TABLE `wp_rich_web_video_slider_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_1`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_CE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_EE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_BlC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_BlR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_AS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_PT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_SS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_AP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_HP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_RS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_BSC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_BR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_CN` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_NPB` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_NO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_NT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_NT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_AT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_CapS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_CapEs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_CapO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_CapE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_TFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_TFF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_TBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_TC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_DFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_DFF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_DBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_DC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_TiT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_TiBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CS_TiC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_TiO` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_TiD` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_TiP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_TiS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_TiBS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_TiBC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_TiBSt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_CP_TiPos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SL_Width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SL_Height` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TitDesc_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_1`
--

LOCK TABLES `wp_rich_web_vs_effect_1` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_1` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_1` VALUES (1,'1','Content Slider','Content Slider','random','swing','10','20','16','800','8','10','on','on','on','#666666','0','solid','#ffffff','1','on','on','50','on','1','1','500','swing','50','expanddown','18','Aldhabi','#000000','#ffffff','18','Aldhabi','rgba(221,51,51,0.9)','#ffffff','360bar','#ffffff','#000000','50','16','5','6','6','#dd3333','solid','top-left','700','400','type1');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_10`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_10` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_GO_NS1_Width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_GO_NS1_Height` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_GO_NS1_Autoplay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_GO_NS1_PTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_GO_NS1_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_GO_NS1_BType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_GO_NS1_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_GO_NS1_BSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_GO_NS1_BSh_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_GO_NS1_BSh_Col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TO_NS1_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TO_NS1_FSize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TO_NS1_FFamily` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TO_NS1_Col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TO_NS1_Num_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TO_NS1_Num_FSize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TO_NS1_Num_FFamily` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TO_NS1_Num_Col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_PO_NS1_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_PO_NS1_Width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_PO_NS1_Height` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_PO_NS1_PB` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_PO_NS1_Col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_PO_NS1_Cur_Col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_IO_NS1_FSize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_IO_NS1_Col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_PO_NS1_Hov_Col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_IO_NS1_Cur_Col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_IO_NS1_BgCol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_IO_NS1_Icon_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DO_NS1_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DO_NS1_FSize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DO_NS1_FFamily` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DO_NS1_Col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_PIO_NS1_BgCol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_PIO_NS1_Col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_PIO_NS1_HovBgCol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_PIO_NS1_HovCol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_IO_NS1_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_IO_NS1_HovBgCol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_IO_NS1_Arrow_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_IO_NS1_Width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_IO_NS1_Height` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_IO_NS1_Image_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_GO_NS1_Align` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_10`
--

LOCK TABLES `wp_rich_web_vs_effect_10` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_10_loader`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_10_loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_10_loader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_L_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_LT_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_LT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_L_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_L_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_LT_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_LT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_LT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_LT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_L_T1_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_L_T2_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_L_T3_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_LT_T2_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_L_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_LT_T2_AnC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_LT_T3_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_L_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ASSl_Loading_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_10_loader`
--

LOCK TABLES `wp_rich_web_vs_effect_10_loader` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_10_loader` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_10_loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_11`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_11` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_GO_CC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_GO_Autoplay_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_GO_C_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_GO_C_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_GO_C_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_GO_C_BShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_GO_C_BShT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_GO_C_IHBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_IO_PI_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_IO_PI_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_IO_PI_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_IO_VI_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_IO_VI_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_IO_VI_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_IO_VI_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_IO_VI_RShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_IO_LI_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_IO_LI_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_TO_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_TO_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_TO_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_TO_TA` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LO_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LO_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LO_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LO_P` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LO_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LO_HBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LO_HC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LO_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LO_HT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_Option7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_Option8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_Option9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_Option10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_Option11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_Option12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_11`
--

LOCK TABLES `wp_rich_web_vs_effect_11` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_11_loader`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_11_loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_11_loader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_L_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LT_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_L_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_L_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LT_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_L_T1_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_L_T2_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_L_T3_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LT_T2_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_L_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LT_T2_AnC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_LT_T3_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_L_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_Loading_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_NP_P` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_NP_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_NP_HBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_NP_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_NP_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_NP_HBC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_NP_IcT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_NP_IcS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_NP_IcC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_NP_HT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_N_P` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_N_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_N_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_N_HC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_N_CC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_P_CBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_P_VW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_P_VShT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_P_VShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_Option1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NewSl_Option2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_11_loader`
--

LOCK TABLES `wp_rich_web_vs_effect_11_loader` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_11_loader` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_11_loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_1_loader`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_1_loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_1_loader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_L_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_LT_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_LT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_L_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_L_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_LT_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_LT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_LT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_LT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_L_T1_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_L_T2_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_L_T3_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_LT_T2_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_L_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_LT_T2_AnC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_LT_T3_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_L_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_ContSl_Loading_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_1_loader`
--

LOCK TABLES `wp_rich_web_vs_effect_1_loader` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_1_loader` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_1_loader` VALUES (1,'1','on','on','Loading','rgba(255,255,255,0)','Type 3','Type 2','13','Abadi MT Condensed Light','#dd0000','#dd9933','#dd9933','#dd3333','rgba(30,115,190,0.54)','#dd3333','#dd3333','#dd3333','middle','on');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_1_loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_2`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_ED` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_AP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_Eff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_W` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_H` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_TShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_TFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_TFF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_TC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_TBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_TPos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_NShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_NC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_NBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_NS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_NPos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagH` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagPB` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagBW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagBS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagBC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagBR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagHC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagCC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PagPos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PIBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PIC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PIHBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_PIHC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_CIBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_CIC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_CIHBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_SS_CIHC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_2`
--

LOCK TABLES `wp_rich_web_vs_effect_2` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_2_loader`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_2_loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_2_loader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_L_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_LT_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_LT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_L_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_L_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_LT_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_LT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_LT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_LT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_L_T1_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_L_T2_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_L_T3_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_LT_T2_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_L_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_LT_T2_AnC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_LT_T3_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_L_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SlickSl_Loading_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_2_loader`
--

LOCK TABLES `wp_rich_web_vs_effect_2_loader` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_2_loader` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_2_loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_3`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_W` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_H` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_BoxShShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_BoxShType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_BoxSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_BoxShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_IBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_IBW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_IBS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_IBC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_IBR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TPos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TBW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TBS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TBC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIH` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIPB` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIBW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIBS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIBC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIBR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIBoxShShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIBoxShType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIBoxSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIBoxShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TICBC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TICBS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TICBoxShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIHBC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIHBS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_TIHBoxShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_CS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_PT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_AP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_PIBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_PIC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_PIHBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_TS_PIHC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_3`
--

LOCK TABLES `wp_rich_web_vs_effect_3` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_3` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_3` VALUES (1,'2','Thumbnails Slider','Thumbnails Slider','700','350','2','solid','#ffffff','on','on','30','#a3a3a3','rgba(255,255,255,0.7)','2','solid','rgba(255,255,255,0.7)','6','bottom','#000000','1','solid','#ffffff','60','5','1','solid','#ffffff','3','on','','10','#ffffff','#707070','solid','#ffffff','#ffffff','solid','#ffffff','400','5','','rgba(255,255,255,0.7)','#dd3333','rgba(221,51,51,0.7)','#ffffff');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_3_loader`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_3_loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_3_loader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_L_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_LT_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_LT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_L_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_L_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_LT_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_LT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_LT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_LT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_L_T1_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_L_T2_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_L_T3_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_LT_T2_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_L_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_LT_T2_AnC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_LT_T3_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_L_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThumbSl_Loading_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_3_loader`
--

LOCK TABLES `wp_rich_web_vs_effect_3_loader` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_3_loader` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_3_loader` VALUES (1,'2','on','on','Loading','rgba(255,255,255,0.03)','Type 2','Type 4','13','Abadi MT Condensed Light','#841e1e','#dd9933','#dd9933','#dd3333','rgba(30,115,190,0.54)','#841e1e','#ffffff','#dd3333','small','on');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_3_loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_4`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Car_Bg_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Car_Border_Width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Car_Border_Style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Car_Border_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Car_Box_Shadow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Car_Shadow_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Car_Count_Imgs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Car_Imgs_Hover_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Car_PBImgs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Car_Icons_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Car_Icons_Size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Overlay_Bg_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Popup_Bg_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Popup_Border_Width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Popup_Border_Style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Popup_Border_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Popup_Box_Shadow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Popup_Shadow_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Title_Font_Size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Title_Font_Family` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Title_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Title_Text_Align` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Desc_Bg_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Desc_Font_Size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Desc_Font_Family` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Desc_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Desc_Text_Align` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Font_Size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Font_Family` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Bg_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Border_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Border_Width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Border_Style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Hov_Bg_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Hov_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Hov_Border_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Popup_Icons_Size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Popup_Icons_Color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Popup_Icons_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VC_Link_Border_Radius` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_4`
--

LOCK TABLES `wp_rich_web_vs_effect_4` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_4` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_4` VALUES (1,'3','Video Carousel/Content Popup','Video Carousel/Content Popup','#ffffff','0','solid','#ffffff','25','#009491','4','fImgH1','5','10','25','rgba(255,255,255,0)','rgba(0,0,0,0.7)','0','solid','#ffffff','25','#000000','24','Vijaya','#ffffff','center','rgba(0,148,145,0)','16','Aldhabi','#ffffff','left','15','Vijaya','#000000','rgba(255,255,255,0.8)','#ffffff','1','solid','rgba(0,0,0,0.8)','#ffffff','#000000','25','#ffffff','rich_web-times-circle','View More','0');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_4_loader`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_4_loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_4_loader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_L_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_LT_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_LT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_L_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_L_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_LT_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_LT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_LT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_LT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_L_T1_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_L_T2_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_L_T3_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_LT_T2_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_L_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_LT_T2_AnC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_LT_T3_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_L_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VCCP_Loading_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_4_loader`
--

LOCK TABLES `wp_rich_web_vs_effect_4_loader` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_4_loader` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_4_loader` VALUES (1,'3','','on','Loading','#ffffff','Type 2','Type 1','15','Arial Black','#540a1c','#dd9933','#dd9933','#dd3333','rgba(0,0,0,0.3)','#0084aa','#ffffff','#dd3333','small','on');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_4_loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_5`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_W` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_PT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_CS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_BoxShShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_BoxShType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_BoxSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_BoxShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_W` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_H` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_BR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_PB` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_CC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_HC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Nav_Pos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_T_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_TBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_TC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_TFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_TFF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_D_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_DC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_DFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_DFF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_LC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_LFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_LFF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_LHC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Arr_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Arr_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Arr_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Arr_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Arr_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Arr_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Arr_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Arr_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Arr_BR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_PIC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_PIBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_PIBR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_PIHC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_PIHBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_Eff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_LText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SVS_AP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_5`
--

LOCK TABLES `wp_rich_web_vs_effect_5` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_5_loader`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_5_loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_5_loader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_L_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_LT_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_LT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_L_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_L_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_LT_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_LT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_LT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_LT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_L_T1_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_L_T2_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_L_T3_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_LT_T2_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_L_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_LT_T2_AnC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_LT_T3_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_L_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_SimpleVS_Loading_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_5_loader`
--

LOCK TABLES `wp_rich_web_vs_effect_5_loader` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_5_loader` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_5_loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_6`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_AP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_APS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_APEff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_CS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_PT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_ArrSt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_H` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_BoxShShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_BoxShType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_BoxSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_BoxShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_TShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_TFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_TFF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_TC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_TBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_TPos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_Th_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_Th_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_Th_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_Th_BR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_Th_HBC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_LC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_LBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_LFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_LHC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_LHBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_LPos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_LType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_PC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_PBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_PFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_PHC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_PHBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_PPos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_PType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_ArrShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_ArrType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_ArrFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_ArrPos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VTVS_ArrC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_6`
--

LOCK TABLES `wp_rich_web_vs_effect_6` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_6` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_6` VALUES (1,'4','Video Slider/Vertical Thumbnails','Video Slider/Vertical Thumbnails','on','1','fade slideshow','700','2','1','#000000','350','0','solid','#ffffff','on','on','50','#6b6b6b','on','22','Aldhabi','#ffffff','rgba(0,0,0,0.6)','top','2','solid','#ffffff','0','#545454','#000000','rgba(255,255,255,0.7)','23','#ffffff','rgba(0,0,0,0.7)','bottom-right','link','rgba(0,0,0,0.7)','rgba(255,255,255,0.7)','23','#ffffff','rgba(0,0,0,0.7)','bottom-left','play-circle','on','chevron-circle','25','center','#ffffff');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_6_loader`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_6_loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_6_loader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_L_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_LT_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_LT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_L_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_L_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_LT_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_LT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_LT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_LT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_L_T1_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_L_T2_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_L_T3_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_LT_T2_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_L_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_LT_T2_AnC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_LT_T3_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_L_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSVT_Loading_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_6_loader`
--

LOCK TABLES `wp_rich_web_vs_effect_6_loader` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_6_loader` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_6_loader` VALUES (1,'4','on','on','Loading','#ffffff','Type 4','Type 4','13','Abadi MT Condensed Light','#59d600','#dd9933','#dd9933','#dd3333','rgba(30,115,190,0.54)','#59d600','#ffffff','#dd3333','small','on');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_6_loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_7`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Loop` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Cols` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Speed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_AP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_EH` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_PB` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Car` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_NText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_PText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_BR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_HC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_NP_HBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Cols_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Cols_BoxShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Cols_VSEff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Cols_StShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Cols_VHEff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Cols_HShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_TC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_TFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_TFF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_DShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_DC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_DFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_DFF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_LText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_LC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_LFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_LFF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_LHC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_PText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_PBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_PC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_PFS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_PFF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_PHC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_PHBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Pop_OvC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Pop_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Pop_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Pop_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Pop_BoxShShow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Pop_BoxShType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Pop_BoxSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Pop_BoxShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Pop_CIType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Pop_CIS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VS_HPS_Pop_CIC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_7`
--

LOCK TABLES `wp_rich_web_vs_effect_7` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_7` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_7` VALUES (1,'5','Horizontal Posts Slider','Horizontal Posts Slider','on','3','3','','on','20','on','on','Next','Prev','#6d6d6d','#ffffff','20','Gabriola','1','solid','#6d6d6d','3','#000000','#ffffff','#ffffff','#6d6d6d','none','#ffffff','drop-shadow','#9e9e9e','#000000','24','Vijaya','on','#6d6d6d','14','Aldhabi','View More ...','#000000','18','Vijaya','#6d6d6d','Watch Video ...','#000000','#ffffff','13','Arial','#ffffff','#383838','rgba(0,0,0,0.5)','none','solid','rgba(0,144,170,0.5)','on','on','19','rgba(0,0,0,0.59)','rich_web-times','35','rgba(255,255,255,0.8)');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_7_loader`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_7_loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_7_loader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_L_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_LT_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_LT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_L_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_L_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_LT_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_LT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_LT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_LT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_L_T1_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_L_T2_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_L_T3_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_LT_T2_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_L_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_LT_T2_AnC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_LT_T3_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_L_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_HSL_Loading_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_7_loader`
--

LOCK TABLES `wp_rich_web_vs_effect_7_loader` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_7_loader` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_7_loader` VALUES (1,'5','on','on','Loading','#ffffff','Type 4','Type 4','23','Calibri','#000000','#dd9933','#dd9933','#dd3333','rgba(30,115,190,0.54)','#b1ba09','#ffffff','#dd3333','small','on');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_7_loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_8`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_Sh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_ShT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_ShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NI_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NI_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NI_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NI_HBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NI_HBC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NI_CBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NI_CBC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_ND_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_ND_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NImg_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NImg_BR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NImg_BSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NImg_ShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NImg_ShT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NScroll_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NScroll_HBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NScroll_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_IT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_IT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_ID_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_ID_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_PlIc_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_PlIc_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_PlIc_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_PlIc_HBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_DelIc_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_DelIc_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_DelIc_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_DelIc_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_DelIc_HBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_ND_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_IT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_ID_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NT_HC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_NT_CC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_ND_HC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RVVS_ND_CC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_8`
--

LOCK TABLES `wp_rich_web_vs_effect_8` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_8` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_8` VALUES (1,'6','Rich Slider','Rich Slider','10','Type 1','#000000','0','#bcbcbc','#ffffff','#bcbcbc','#ffffff','#bcbcbc','#ffffff','Abadi MT Condensed Light','#000000','Abadi MT Condensed Light','#686868','0','0','8','#000000','Type 1','rgba(0,0,0,0.6)','#ffffff','#ffffff','Aldhabi','#ffffff','Abadi MT Condensed Light','#dd9933','29','#ffffff','rgba(0,0,0,0.5)','rgba(0,0,0,0.7)','#ffffff','rich_web-times','25','rgba(0,0,0,0.5)','rgba(0,0,0,0.7)','15','13','20','16','#ffffff','#ffffff','#eaeaea','#eaeaea');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_8_loader`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_8_loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_8_loader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_L_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_LT_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_LT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_L_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_L_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_LT_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_LT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_LT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_LT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_L_T1_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_L_T2_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_L_T3_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_LT_T2_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_L_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_LT_T2_AnC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_LT_T3_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_L_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_RichSl_Loading_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_8_loader`
--

LOCK TABLES `wp_rich_web_vs_effect_8_loader` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_8_loader` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_8_loader` VALUES (1,'6','','on','Loading','rgba(255,255,255,0.09)','Type 4','Type 3','13','Abadi MT Condensed Light','#ffffff','#dd9933','#dd9933','#dd3333','rgba(30,115,190,0.54)','#0084aa','#ffffff','#dd3333','small','on');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_8_loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_9`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_VSlider_Option_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_W` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_SSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_SShChT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_BSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_ShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_ShT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Autoplay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_N_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_N_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_N_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_NI_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_NI_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_NI_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_NI_HC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_NI_CC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_NIC_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Img_BW` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Img_BS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Img_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Img_BSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Img_ShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Img_ShT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_T_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_T_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_T_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_T_TA` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_T_TSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_T_TShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_D_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_D_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_D_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_D_TA` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_D_TSh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_D_TShC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Ic_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Ic_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Ic_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_startAt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_Sl1EfT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_NI_CCC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_PlIc_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_PlIc_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_PlIc_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_PlIc_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_PlIc_HBgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_MS_PlIc_HC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_9`
--

LOCK TABLES `wp_rich_web_vs_effect_9` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_9` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_9` VALUES (1,'7','Timeline','TimeLine Slider','800','','1694','10','#000000','Type 1','rgba(255,255,255,0.51)','horizontal','','1','solid','#dbdbdb','13','Abadi MT Condensed Light','#1e73be','#0066bf','#144e91','#000000','3','solid','#ffffff','10','#919191','Type 2','16','Abadi MT Condensed Light','#1e73be','center','1','#afafaf','14','Abadi MT Condensed Light','#595959','justify','0','#000000','rich_web rich_web-long-arrow','20','#1e73be','1','2','','rich_web rich_web-play-circle','28','rgba(221,0,0,0.45)','#ffffff','rgba(221,51,51,0.45)','#ffffff');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rich_web_vs_effect_9_loader`
--

DROP TABLE IF EXISTS `wp_rich_web_vs_effect_9_loader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_rich_web_vs_effect_9_loader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RW_VS_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_L_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_LT_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_LT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_L_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_L_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_LT_T` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_LT_FS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_LT_FF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_LT_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_L_T1_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_L_T2_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_L_T3_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_LT_T2_BC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_L_C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_LT_T2_AnC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_LT_T3_BgC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_L_S` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_TSL_Loading_Show` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rich_web_vs_effect_9_loader`
--

LOCK TABLES `wp_rich_web_vs_effect_9_loader` WRITE;
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_9_loader` DISABLE KEYS */;
INSERT INTO `wp_rich_web_vs_effect_9_loader` VALUES (1,'7','on','on','Loading','#ffffff','Type 4','Type 4','13','Abadi MT Condensed Light','#dd3333','#dd9933','#dd9933','#dd3333','rgba(30,115,190,0.54)','#0084aa','#ffffff','#dd3333','small','on');
/*!40000 ALTER TABLE `wp_rich_web_vs_effect_9_loader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (97,1,0);
INSERT INTO `wp_term_relationships` VALUES (101,1,0);
INSERT INTO `wp_term_relationships` VALUES (106,1,0);
INSERT INTO `wp_term_relationships` VALUES (109,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','teresasanders77');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"595ba426429e03af07a1709a83ad44c7d0e7ab01057d5299b6ef8d3a3152f926\";a:4:{s:10:\"expiration\";i:1625415040;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36\";s:5:\"login\";i:1625242240;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','95');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','libraryContent=browse&editor=html');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1625182450');
INSERT INTO `wp_usermeta` VALUES (20,1,'closedpostboxes_','a:5:{i:0;s:23:\"acf-group_60c00056e6725\";i:1;s:23:\"acf-group_60cbe0326b388\";i:2;s:23:\"acf-group_60cbe2599a0fd\";i:3;s:23:\"acf-group_60d8af3d36397\";i:4;s:23:\"acf-group_60d8c2389d870\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'closedpostboxes_acf-field-group','a:1:{i:0;s:23:\"acf-field-group-options\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'teresasanders77','$P$Bdu3xk3ZtndIuxnO15CKv.Ml9M83Il.','teresasanders77','dev-email@flywheel.local','http://byron-hitchcock.local','2021-05-26 00:12:34','',0,'teresasanders77');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpforms_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

LOCK TABLES `wp_wpforms_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` DISABLE KEYS */;
INSERT INTO `wp_wpforms_tasks_meta` VALUES (1,'wpforms_process_entry_emails_meta_cleanup','Wzg2NDAwXQ==','2021-06-28 23:43:07');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (2,'wpforms_admin_addons_cache_update','W10=','2021-06-28 23:43:08');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (3,'wpforms_admin_notifications_update','W10=','2021-06-28 23:43:36');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (4,'wpforms_admin_notifications_update','W10=','2021-06-30 00:11:56');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (5,'wpforms_builder_help_cache_update','W10=','2021-06-30 00:12:02');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (6,'wpforms_admin_notifications_update','W10=','2021-07-01 03:06:54');
INSERT INTO `wp_wpforms_tasks_meta` VALUES (7,'wpforms_admin_notifications_update','W10=','2021-07-02 16:10:40');
/*!40000 ALTER TABLE `wp_wpforms_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-02 10:50:03
