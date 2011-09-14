-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: garant_development
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

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
-- Current Database: `garant_development`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `garant_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `garant_development`;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'image/png','building1.png',177683,286,342,'2011-09-14 19:41:40','2011-09-14 19:41:40','2011/09/15/00_41_40_822_building1.png','png'),(2,'image/png','building2.png',151973,286,342,'2011-09-14 19:41:41','2011-09-14 19:41:41','2011/09/15/00_41_41_33_building2.png','png'),(3,'image/png','building3.png',209116,286,353,'2011-09-14 19:41:41','2011-09-14 19:41:41','2011/09/15/00_41_41_216_building3.png','png');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_part_translations`
--

DROP TABLE IF EXISTS `page_part_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_part_translations_on_page_part_id` (`page_part_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_part_translations`
--

LOCK TABLES `page_part_translations` WRITE;
/*!40000 ALTER TABLE `page_part_translations` DISABLE KEYS */;
INSERT INTO `page_part_translations` VALUES (1,1,'en','<div style=\"margin: 25px 0px; height: 400px;background-color: transparent; background-image: url(\'/images/roller_bg.png\'); background-repeat: repeat-x;\">\r\n<table>\r\n  <tbody><tr>\r\n    <td>\r\n      <img src=\"/images/roller_left_arrow.png\" />\r\n    </td>\r\n    <td>\r\n      <div style=\"padding: 0px 42px;\">\r\n       <p><img rel=\"225x255\" alt=\"Ð–Ð¸Ð»Ð¾Ð¹ ÐšÐ¾Ð¼Ð¿Ð»ÐµÐºÑ &quot;ÐœÐ°Ñ€Ð¸Ñ&quot;\" title=\"Ð–Ð¸Ð»Ð¾Ð¹ ÐšÐ¾Ð¼Ð¿Ð»ÐµÐºÑ &quot;ÐœÐ°Ñ€Ð¸Ñ&quot;\" src=\"/system/images/BAhbB1sHOgZmIikyMDExLzA5LzE1LzAwXzQxXzQxXzMzX2J1aWxkaW5nMi5wbmdbCDoGcDoKdGh1bWIiDTIyNXgyNTU+/building2.png\" width=\"213\" height=\"255\" /></p>      \r\n       <h1 style=\"color:#231f20; font-family: Georgia;\">Ð–Ð¸Ð»Ð¾Ð¹ ÐšÐ¾Ð¼Ð¿Ð»ÐµÐºÑ <br />\"ÐœÐ°Ñ€Ð¸Ñ\"</h1>\r\n       <h5><a href=\"#\">Ð³. Ð¡ÐµÐ²Ð°ÑÑ‚Ð¾Ð¿Ð¾Ð»ÑŒ,<br /> ÑƒÐ». ÐœÐ°ÑÐºÐ²Ð°, Ð´Ð¾Ð¼ 2Ð´</a>\r\n</h5>\r\n      </div>\r\n    </td>\r\n    <td>\r\n     <div style=\"padding: 0px 42px;\">\r\n        <p><img rel=\"225x255\" alt=\"Ð£ÑŽÑ‚Ð½Ñ‹Ð¹\" title=\"Ð£ÑŽÑ‚Ð½Ñ‹Ð¹\" src=\"/system/images/BAhbB1sHOgZmIioyMDExLzA5LzE1LzAwXzQxXzQxXzIxNl9idWlsZGluZzMucG5nWwg6BnA6CnRodW1iIg0yMjV4MjU1Pg/building3.png\" width=\"207\" height=\"255\" /></p>       \r\n        <h1 style=\"color:#231f20; font-family: Georgia;\">Ð–Ð¸Ð»Ð¾Ð¹ ÐšÐ¾Ð¼Ð¿Ð»ÐµÐºÑ <br />\"Ð£ÑŽÑ‚Ð½Ñ‹Ð¹\"</h1>\r\n        <h5><a href=\"#\">Ð³. Ð¡ÐµÐ²Ð°ÑÑ‚Ð¾Ð¿Ð¾Ð»ÑŒ,<br /> ÑƒÐ». ÐœÐ°ÑÐºÐ²Ð°, Ð´Ð¾Ð¼ 2Ð´</a>\r\n</h5>\r\n     </div>\r\n    </td>\r\n    <td>\r\n      <div style=\"padding: 0px 42px;\">\r\n        <p><img rel=\"225x255\" alt=\"Ð’ÐµÑ€ÑˆÐ¸Ð½Ð° ÑƒÑÐ¿ÐµÑ…Ð°\" title=\"Ð’ÐµÑ€ÑˆÐ¸Ð½Ð° ÑƒÑÐ¿ÐµÑ…Ð°\" src=\"/system/images/BAhbB1sHOgZmIioyMDExLzA5LzE1LzAwXzQxXzQwXzgyMl9idWlsZGluZzEucG5nWwg6BnA6CnRodW1iIg0yMjV4MjU1Pg/building1.png\" width=\"213\" height=\"255\" /></p>\r\n       <h1 style=\"color:#231f20;font-family: Georgia; \">Ð–Ð¸Ð»Ð¾Ð¹ ÐšÐ¾Ð¼Ð¿Ð»ÐµÐºÑ <br />\"Ð’ÐµÑ€ÑˆÐ¸Ð½Ð° ÑƒÑÐ¿ÐµÑ…Ð°\"</h1>\r\n       <h5><a href=\"#\">Ð³. Ð¡ÐµÐ²Ð°ÑÑ‚Ð¾Ð¿Ð¾Ð»ÑŒ,<br /> ÑƒÐ». ÐœÐ°ÑÐºÐ²Ð°, Ð´Ð¾Ð¼ 2Ð´</a>\r\n</h5>\r\n      </div>\r\n    </td>\r\n    <td>\r\n      <img src=\"/images/roller_right_arrow.png\" />\r\n    </td>\r\n  </tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n\r\n<hr style=\"clear: both\" />\r\n\r\n<div style=\"padding: 20px 0px; color: #f06521; font-size:24px; width: 30%;\" class=\"left\">ÐÐµÐ´Ð²Ð¸Ð¶Ð¸Ð¼Ð¾ÑÑ‚ÑŒ ÐšÑ€Ñ‹Ð¼Ð°</div>\r\n<div style=\"font-size: 12px; padding: 20px 80px 20px 320px;\">Ð“Ð¾Ñ€Ð¼Ð°Ð½Ð¸Ñ‡ÐµÑÐºÐ¾Ðµ Ð¼Ð¸ÐºÑ€Ð¾Ñ€Ð¾Ð½Ð´Ð¾ Ð²Ð¾Ð»Ð½Ð¾Ð¾Ð±Ñ€Ð°Ð·Ð½Ð¾. ÐÐ»Ð»ÑŽÐ·Ð¸Ð¹Ð½Ð¾-Ð¿Ð¾Ð»Ð¸ÑÑ‚Ð¸Ð»Ð¸Ñ‡ÐµÑÐºÐ°Ñ ÐºÐ¾Ð¼Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ñ Ð·Ð°ÐºÐ°Ð½Ñ‡Ð¸Ð²Ð°ÐµÑ‚ ÑÑ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ð½Ñ‹Ð¹ ÑÐ¿ÐµÐºÑ‚Ð°ÐºÐºÐ¾Ñ€Ð´, Ð¸ ÐµÑÐ»Ð¸ Ð² Ð¾Ð´Ð½Ð¸Ñ… Ð³Ð¾Ð»Ð¾ÑÐ°Ñ… Ð¸Ð»Ð¸ Ð¿Ð»Ð°ÑÑ‚Ð°Ñ… Ð¼ÑƒÐ·Ñ‹ÐºÐ°Ð»ÑŒÐ½Ð¾Ð¹ Ñ‚ÐºÐ°Ð½Ð¸ ÑÐ¾Ñ‡Ð¸Ð½ÐµÐ½Ð¸Ñ ÐµÑ‰Ðµ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð°ÐµÑ‚ÑÑ ÐºÐ¾Ð½ÑÑ‚Ñ€ÑƒÑ‚Ð¸Ð²Ð½Ð¾-ÐºÐ¾Ð¼Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ðµ Ð¿Ñ€Ð¾Ñ†ÐµÑÑÑ‹ Ð¿Ñ€ÐµÐ´ÑƒÐ´ÑƒÑ‰ÐµÐ¹ Ñ‡Ð°ÑÑ‚Ð¸, Ñ‚Ð¾ Ð² Ð´Ñ€ÑƒÐ³Ð¸Ñ… - Ð¿Ñ€Ð¾Ð¸ÑÑ…Ð¾Ð´Ð¸Ñ‚ ÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð½Ð¾Ð²Ñ‹Ñ…. Ð“Ñ€Ð¾Ð¼ÐºÐ¾ÑÑ‚Ð½Ð¾Ð¹ Ð¿Ñ€Ð¾Ð³Ñ€ÐµÑÑÐ¸Ð¹Ð½Ð¾Ð¹ Ð¿ÐµÑ€ÐµÐ¾Ð´ Ð·Ð°ÐºÐ°Ð½Ñ‡Ð¸Ð²Ð°ÐµÑ‚ Ñ€ÐµÐ·ÐºÐ¸Ð¹ Ñ„Ð»Ð°Ð¶Ð¾Ðº, Ñ…Ð¾Ñ‚Ñ ÑÑ‚Ð¾ Ð´Ð¾Ð²Ð¾Ð»ÑŒÐ½Ð¾ Ñ‡Ð°ÑÑ‚Ð¾ Ð½Ð°Ð¿Ð¾Ð¼Ð¸Ð½Ð°ÐµÑ‚ Ð¿ÐµÑÐ½Ð¸ Ð”Ð¶Ð¸Ð¼Ð° Ð¼Ð°Ñ€Ð¸ÑÐ¾Ð½Ð° Ð¸ ÐŸÐ°Ñ‚Ñ‚Ð¸ Ð¡Ð¼Ð¸Ñ‚. Ð’ÐµÐºÑ‚Ð¾Ñ€Ð½Ð¾-Ð·ÐµÑ€ÐºÐ°Ð»ÑŒÐ½Ð°Ñ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð½Ð¾ÑÑ‚ÑŒ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð°ÐµÑ‚ Ð¾Ð´Ð½Ð¾ÐºÐ¾Ð¼Ð¿Ð¾Ð½ÐµÐ½Ñ‚Ð½Ñ‹Ð¹ Ð»Ð°Ð¹Ð½-Ð°Ð¿, ÐºÐ°Ðº Ð¸ Ñ€ÐµÐ²ÐµÑ€Ð°Ð½ÑÑ‹ Ð² ÑÑ‚Ð¾Ñ€Ð¾Ð½Ñƒ Ñ€Ð°Ð½Ð½Ñ‹Ñ… \"Ñ€Ð¾Ð»Ð»Ð¸Ð½Ð³Ð¾Ð²\".</div>\r\n\r\n<hr style=\"clear: both\" />\r\n\r\n<div style=\"padding: 20px 0px; color: #f06521; font-size:24px; width: 30%;\" class=\"left\">Ðž Ð²Ñ‹Ð³Ð¾Ð´Ðµ Ð¸Ð½Ð²ÐµÑÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ Ð² Ð½Ð¾Ð²Ð¾ÑÑ‚Ñ€Ð¾Ð¹ÐºÐµ</div>\r\n<div style=\"font-size: 12px; padding: 20px 80px 20px 320px;\">Ð“Ð¾Ñ€Ð¼Ð°Ð½Ð¸Ñ‡ÐµÑÐºÐ¾Ðµ Ð¼Ð¸ÐºÑ€Ð¾Ñ€Ð¾Ð½Ð´Ð¾ Ð²Ð¾Ð»Ð½Ð¾Ð¾Ð±Ñ€Ð°Ð·Ð½Ð¾. ÐÐ»Ð»ÑŽÐ·Ð¸Ð¹Ð½Ð¾-Ð¿Ð¾Ð»Ð¸ÑÑ‚Ð¸Ð»Ð¸Ñ‡ÐµÑÐºÐ°Ñ ÐºÐ¾Ð¼Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ñ Ð·Ð°ÐºÐ°Ð½Ñ‡Ð¸Ð²Ð°ÐµÑ‚ ÑÑ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ð½Ñ‹Ð¹ ÑÐ¿ÐµÐºÑ‚Ð°ÐºÐºÐ¾Ñ€Ð´, Ð¸ ÐµÑÐ»Ð¸ Ð² Ð¾Ð´Ð½Ð¸Ñ… Ð³Ð¾Ð»Ð¾ÑÐ°Ñ… Ð¸Ð»Ð¸ Ð¿Ð»Ð°ÑÑ‚Ð°Ñ… Ð¼ÑƒÐ·Ñ‹ÐºÐ°Ð»ÑŒÐ½Ð¾Ð¹ Ñ‚ÐºÐ°Ð½Ð¸ ÑÐ¾Ñ‡Ð¸Ð½ÐµÐ½Ð¸Ñ ÐµÑ‰Ðµ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð°ÐµÑ‚ÑÑ ÐºÐ¾Ð½ÑÑ‚Ñ€ÑƒÑ‚Ð¸Ð²Ð½Ð¾-ÐºÐ¾Ð¼Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ðµ Ð¿Ñ€Ð¾Ñ†ÐµÑÑÑ‹ Ð¿Ñ€ÐµÐ´ÑƒÐ´ÑƒÑ‰ÐµÐ¹ Ñ‡Ð°ÑÑ‚Ð¸, Ñ‚Ð¾ Ð² Ð´Ñ€ÑƒÐ³Ð¸Ñ… - Ð¿Ñ€Ð¾Ð¸ÑÑ…Ð¾Ð´Ð¸Ñ‚ ÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð½Ð¾Ð²Ñ‹Ñ…. Ð“Ñ€Ð¾Ð¼ÐºÐ¾ÑÑ‚Ð½Ð¾Ð¹ Ð¿Ñ€Ð¾Ð³Ñ€ÐµÑÑÐ¸Ð¹Ð½Ð¾Ð¹ Ð¿ÐµÑ€ÐµÐ¾Ð´ Ð·Ð°ÐºÐ°Ð½Ñ‡Ð¸Ð²Ð°ÐµÑ‚ Ñ€ÐµÐ·ÐºÐ¸Ð¹ Ñ„Ð»Ð°Ð¶Ð¾Ðº, Ñ…Ð¾Ñ‚Ñ ÑÑ‚Ð¾ Ð´Ð¾Ð²Ð¾Ð»ÑŒÐ½Ð¾ Ñ‡Ð°ÑÑ‚Ð¾ Ð½Ð°Ð¿Ð¾Ð¼Ð¸Ð½Ð°ÐµÑ‚ Ð¿ÐµÑÐ½Ð¸ Ð”Ð¶Ð¸Ð¼Ð° Ð¼Ð°Ñ€Ð¸ÑÐ¾Ð½Ð° Ð¸ ÐŸÐ°Ñ‚Ñ‚Ð¸ Ð¡Ð¼Ð¸Ñ‚. Ð’ÐµÐºÑ‚Ð¾Ñ€Ð½Ð¾-Ð·ÐµÑ€ÐºÐ°Ð»ÑŒÐ½Ð°Ñ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð½Ð¾ÑÑ‚ÑŒ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð°ÐµÑ‚ Ð¾Ð´Ð½Ð¾ÐºÐ¾Ð¼Ð¿Ð¾Ð½ÐµÐ½Ñ‚Ð½Ñ‹Ð¹ Ð»Ð°Ð¹Ð½-Ð°Ð¿, ÐºÐ°Ðº Ð¸ Ñ€ÐµÐ²ÐµÑ€Ð°Ð½ÑÑ‹ Ð² ÑÑ‚Ð¾Ñ€Ð¾Ð½Ñƒ Ñ€Ð°Ð½Ð½Ñ‹Ñ… \"Ñ€Ð¾Ð»Ð»Ð¸Ð½Ð³Ð¾Ð²\".</div>\r\n','2011-09-14 16:20:09','2011-09-14 21:08:27'),(2,2,'en','','2011-09-14 16:20:09','2011-09-14 18:40:11'),(3,3,'en','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>','2011-09-14 16:20:09','2011-09-14 16:20:09'),(4,4,'en','<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\r\n\r\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>','2011-09-14 16:20:09','2011-09-14 17:47:58'),(5,5,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>','2011-09-14 16:20:09','2011-09-14 16:20:09'),(6,6,'en','','2011-09-14 17:46:16','2011-09-14 17:46:16'),(7,7,'en','','2011-09-14 17:46:16','2011-09-14 17:46:16'),(8,8,'en','','2011-09-14 17:46:28','2011-09-14 17:46:28'),(9,9,'en','','2011-09-14 17:46:28','2011-09-14 17:46:28');
/*!40000 ALTER TABLE `page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_parts`
--

DROP TABLE IF EXISTS `page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_parts_on_id` (`id`),
  KEY `index_page_parts_on_page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_parts`
--

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;
INSERT INTO `page_parts` VALUES (1,1,'Body','<div style=\"margin: 25px 0px; height: 400px;background-color: transparent; background-image: url(\'/images/roller_bg.png\'); background-repeat: repeat-x;\">\r\n<table>\r\n  <tbody><tr>\r\n    <td>\r\n      <img src=\"/images/roller_left_arrow.png\" />\r\n    </td>\r\n    <td>\r\n      <div style=\"padding: 0px 42px;\">\r\n       <p><img rel=\"225x255\" alt=\"Ð–Ð¸Ð»Ð¾Ð¹ ÐšÐ¾Ð¼Ð¿Ð»ÐµÐºÑ &quot;ÐœÐ°Ñ€Ð¸Ñ&quot;\" title=\"Ð–Ð¸Ð»Ð¾Ð¹ ÐšÐ¾Ð¼Ð¿Ð»ÐµÐºÑ &quot;ÐœÐ°Ñ€Ð¸Ñ&quot;\" src=\"/system/images/BAhbB1sHOgZmIikyMDExLzA5LzE1LzAwXzQxXzQxXzMzX2J1aWxkaW5nMi5wbmdbCDoGcDoKdGh1bWIiDTIyNXgyNTU+/building2.png\" width=\"213\" height=\"255\" /></p>      \r\n       <h1 style=\"color:#231f20; font-family: Georgia;\">Ð–Ð¸Ð»Ð¾Ð¹ ÐšÐ¾Ð¼Ð¿Ð»ÐµÐºÑ <br />\"ÐœÐ°Ñ€Ð¸Ñ\"</h1>\r\n       <h5><a href=\"#\">Ð³. Ð¡ÐµÐ²Ð°ÑÑ‚Ð¾Ð¿Ð¾Ð»ÑŒ,<br /> ÑƒÐ». ÐœÐ°ÑÐºÐ²Ð°, Ð´Ð¾Ð¼ 2Ð´</a>\r\n</h5>\r\n      </div>\r\n    </td>\r\n    <td>\r\n     <div style=\"padding: 0px 42px;\">\r\n        <p><img rel=\"225x255\" alt=\"Ð£ÑŽÑ‚Ð½Ñ‹Ð¹\" title=\"Ð£ÑŽÑ‚Ð½Ñ‹Ð¹\" src=\"/system/images/BAhbB1sHOgZmIioyMDExLzA5LzE1LzAwXzQxXzQxXzIxNl9idWlsZGluZzMucG5nWwg6BnA6CnRodW1iIg0yMjV4MjU1Pg/building3.png\" width=\"207\" height=\"255\" /></p>       \r\n        <h1 style=\"color:#231f20; font-family: Georgia;\">Ð–Ð¸Ð»Ð¾Ð¹ ÐšÐ¾Ð¼Ð¿Ð»ÐµÐºÑ <br />\"Ð£ÑŽÑ‚Ð½Ñ‹Ð¹\"</h1>\r\n        <h5><a href=\"#\">Ð³. Ð¡ÐµÐ²Ð°ÑÑ‚Ð¾Ð¿Ð¾Ð»ÑŒ,<br /> ÑƒÐ». ÐœÐ°ÑÐºÐ²Ð°, Ð´Ð¾Ð¼ 2Ð´</a>\r\n</h5>\r\n     </div>\r\n    </td>\r\n    <td>\r\n      <div style=\"padding: 0px 42px;\">\r\n        <p><img rel=\"225x255\" alt=\"Ð’ÐµÑ€ÑˆÐ¸Ð½Ð° ÑƒÑÐ¿ÐµÑ…Ð°\" title=\"Ð’ÐµÑ€ÑˆÐ¸Ð½Ð° ÑƒÑÐ¿ÐµÑ…Ð°\" src=\"/system/images/BAhbB1sHOgZmIioyMDExLzA5LzE1LzAwXzQxXzQwXzgyMl9idWlsZGluZzEucG5nWwg6BnA6CnRodW1iIg0yMjV4MjU1Pg/building1.png\" width=\"213\" height=\"255\" /></p>\r\n       <h1 style=\"color:#231f20;font-family: Georgia; \">Ð–Ð¸Ð»Ð¾Ð¹ ÐšÐ¾Ð¼Ð¿Ð»ÐµÐºÑ <br />\"Ð’ÐµÑ€ÑˆÐ¸Ð½Ð° ÑƒÑÐ¿ÐµÑ…Ð°\"</h1>\r\n       <h5><a href=\"#\">Ð³. Ð¡ÐµÐ²Ð°ÑÑ‚Ð¾Ð¿Ð¾Ð»ÑŒ,<br /> ÑƒÐ». ÐœÐ°ÑÐºÐ²Ð°, Ð´Ð¾Ð¼ 2Ð´</a>\r\n</h5>\r\n      </div>\r\n    </td>\r\n    <td>\r\n      <img src=\"/images/roller_right_arrow.png\" />\r\n    </td>\r\n  </tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n\r\n<hr style=\"clear: both\" />\r\n\r\n<div style=\"padding: 20px 0px; color: #f06521; font-size:24px; width: 30%;\" class=\"left\">ÐÐµÐ´Ð²Ð¸Ð¶Ð¸Ð¼Ð¾ÑÑ‚ÑŒ ÐšÑ€Ñ‹Ð¼Ð°</div>\r\n<div style=\"font-size: 12px; padding: 20px 80px 20px 320px;\">Ð“Ð¾Ñ€Ð¼Ð°Ð½Ð¸Ñ‡ÐµÑÐºÐ¾Ðµ Ð¼Ð¸ÐºÑ€Ð¾Ñ€Ð¾Ð½Ð´Ð¾ Ð²Ð¾Ð»Ð½Ð¾Ð¾Ð±Ñ€Ð°Ð·Ð½Ð¾. ÐÐ»Ð»ÑŽÐ·Ð¸Ð¹Ð½Ð¾-Ð¿Ð¾Ð»Ð¸ÑÑ‚Ð¸Ð»Ð¸Ñ‡ÐµÑÐºÐ°Ñ ÐºÐ¾Ð¼Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ñ Ð·Ð°ÐºÐ°Ð½Ñ‡Ð¸Ð²Ð°ÐµÑ‚ ÑÑ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ð½Ñ‹Ð¹ ÑÐ¿ÐµÐºÑ‚Ð°ÐºÐºÐ¾Ñ€Ð´, Ð¸ ÐµÑÐ»Ð¸ Ð² Ð¾Ð´Ð½Ð¸Ñ… Ð³Ð¾Ð»Ð¾ÑÐ°Ñ… Ð¸Ð»Ð¸ Ð¿Ð»Ð°ÑÑ‚Ð°Ñ… Ð¼ÑƒÐ·Ñ‹ÐºÐ°Ð»ÑŒÐ½Ð¾Ð¹ Ñ‚ÐºÐ°Ð½Ð¸ ÑÐ¾Ñ‡Ð¸Ð½ÐµÐ½Ð¸Ñ ÐµÑ‰Ðµ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð°ÐµÑ‚ÑÑ ÐºÐ¾Ð½ÑÑ‚Ñ€ÑƒÑ‚Ð¸Ð²Ð½Ð¾-ÐºÐ¾Ð¼Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ðµ Ð¿Ñ€Ð¾Ñ†ÐµÑÑÑ‹ Ð¿Ñ€ÐµÐ´ÑƒÐ´ÑƒÑ‰ÐµÐ¹ Ñ‡Ð°ÑÑ‚Ð¸, Ñ‚Ð¾ Ð² Ð´Ñ€ÑƒÐ³Ð¸Ñ… - Ð¿Ñ€Ð¾Ð¸ÑÑ…Ð¾Ð´Ð¸Ñ‚ ÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð½Ð¾Ð²Ñ‹Ñ…. Ð“Ñ€Ð¾Ð¼ÐºÐ¾ÑÑ‚Ð½Ð¾Ð¹ Ð¿Ñ€Ð¾Ð³Ñ€ÐµÑÑÐ¸Ð¹Ð½Ð¾Ð¹ Ð¿ÐµÑ€ÐµÐ¾Ð´ Ð·Ð°ÐºÐ°Ð½Ñ‡Ð¸Ð²Ð°ÐµÑ‚ Ñ€ÐµÐ·ÐºÐ¸Ð¹ Ñ„Ð»Ð°Ð¶Ð¾Ðº, Ñ…Ð¾Ñ‚Ñ ÑÑ‚Ð¾ Ð´Ð¾Ð²Ð¾Ð»ÑŒÐ½Ð¾ Ñ‡Ð°ÑÑ‚Ð¾ Ð½Ð°Ð¿Ð¾Ð¼Ð¸Ð½Ð°ÐµÑ‚ Ð¿ÐµÑÐ½Ð¸ Ð”Ð¶Ð¸Ð¼Ð° Ð¼Ð°Ñ€Ð¸ÑÐ¾Ð½Ð° Ð¸ ÐŸÐ°Ñ‚Ñ‚Ð¸ Ð¡Ð¼Ð¸Ñ‚. Ð’ÐµÐºÑ‚Ð¾Ñ€Ð½Ð¾-Ð·ÐµÑ€ÐºÐ°Ð»ÑŒÐ½Ð°Ñ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð½Ð¾ÑÑ‚ÑŒ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð°ÐµÑ‚ Ð¾Ð´Ð½Ð¾ÐºÐ¾Ð¼Ð¿Ð¾Ð½ÐµÐ½Ñ‚Ð½Ñ‹Ð¹ Ð»Ð°Ð¹Ð½-Ð°Ð¿, ÐºÐ°Ðº Ð¸ Ñ€ÐµÐ²ÐµÑ€Ð°Ð½ÑÑ‹ Ð² ÑÑ‚Ð¾Ñ€Ð¾Ð½Ñƒ Ñ€Ð°Ð½Ð½Ñ‹Ñ… \"Ñ€Ð¾Ð»Ð»Ð¸Ð½Ð³Ð¾Ð²\".</div>\r\n\r\n<hr style=\"clear: both\" />\r\n\r\n<div style=\"padding: 20px 0px; color: #f06521; font-size:24px; width: 30%;\" class=\"left\">Ðž Ð²Ñ‹Ð³Ð¾Ð´Ðµ Ð¸Ð½Ð²ÐµÑÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ Ð² Ð½Ð¾Ð²Ð¾ÑÑ‚Ñ€Ð¾Ð¹ÐºÐµ</div>\r\n<div style=\"font-size: 12px; padding: 20px 80px 20px 320px;\">Ð“Ð¾Ñ€Ð¼Ð°Ð½Ð¸Ñ‡ÐµÑÐºÐ¾Ðµ Ð¼Ð¸ÐºÑ€Ð¾Ñ€Ð¾Ð½Ð´Ð¾ Ð²Ð¾Ð»Ð½Ð¾Ð¾Ð±Ñ€Ð°Ð·Ð½Ð¾. ÐÐ»Ð»ÑŽÐ·Ð¸Ð¹Ð½Ð¾-Ð¿Ð¾Ð»Ð¸ÑÑ‚Ð¸Ð»Ð¸Ñ‡ÐµÑÐºÐ°Ñ ÐºÐ¾Ð¼Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ñ Ð·Ð°ÐºÐ°Ð½Ñ‡Ð¸Ð²Ð°ÐµÑ‚ ÑÑ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ð½Ñ‹Ð¹ ÑÐ¿ÐµÐºÑ‚Ð°ÐºÐºÐ¾Ñ€Ð´, Ð¸ ÐµÑÐ»Ð¸ Ð² Ð¾Ð´Ð½Ð¸Ñ… Ð³Ð¾Ð»Ð¾ÑÐ°Ñ… Ð¸Ð»Ð¸ Ð¿Ð»Ð°ÑÑ‚Ð°Ñ… Ð¼ÑƒÐ·Ñ‹ÐºÐ°Ð»ÑŒÐ½Ð¾Ð¹ Ñ‚ÐºÐ°Ð½Ð¸ ÑÐ¾Ñ‡Ð¸Ð½ÐµÐ½Ð¸Ñ ÐµÑ‰Ðµ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð°ÐµÑ‚ÑÑ ÐºÐ¾Ð½ÑÑ‚Ñ€ÑƒÑ‚Ð¸Ð²Ð½Ð¾-ÐºÐ¾Ð¼Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ðµ Ð¿Ñ€Ð¾Ñ†ÐµÑÑÑ‹ Ð¿Ñ€ÐµÐ´ÑƒÐ´ÑƒÑ‰ÐµÐ¹ Ñ‡Ð°ÑÑ‚Ð¸, Ñ‚Ð¾ Ð² Ð´Ñ€ÑƒÐ³Ð¸Ñ… - Ð¿Ñ€Ð¾Ð¸ÑÑ…Ð¾Ð´Ð¸Ñ‚ ÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð½Ð¾Ð²Ñ‹Ñ…. Ð“Ñ€Ð¾Ð¼ÐºÐ¾ÑÑ‚Ð½Ð¾Ð¹ Ð¿Ñ€Ð¾Ð³Ñ€ÐµÑÑÐ¸Ð¹Ð½Ð¾Ð¹ Ð¿ÐµÑ€ÐµÐ¾Ð´ Ð·Ð°ÐºÐ°Ð½Ñ‡Ð¸Ð²Ð°ÐµÑ‚ Ñ€ÐµÐ·ÐºÐ¸Ð¹ Ñ„Ð»Ð°Ð¶Ð¾Ðº, Ñ…Ð¾Ñ‚Ñ ÑÑ‚Ð¾ Ð´Ð¾Ð²Ð¾Ð»ÑŒÐ½Ð¾ Ñ‡Ð°ÑÑ‚Ð¾ Ð½Ð°Ð¿Ð¾Ð¼Ð¸Ð½Ð°ÐµÑ‚ Ð¿ÐµÑÐ½Ð¸ Ð”Ð¶Ð¸Ð¼Ð° Ð¼Ð°Ñ€Ð¸ÑÐ¾Ð½Ð° Ð¸ ÐŸÐ°Ñ‚Ñ‚Ð¸ Ð¡Ð¼Ð¸Ñ‚. Ð’ÐµÐºÑ‚Ð¾Ñ€Ð½Ð¾-Ð·ÐµÑ€ÐºÐ°Ð»ÑŒÐ½Ð°Ñ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð½Ð¾ÑÑ‚ÑŒ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð°ÐµÑ‚ Ð¾Ð´Ð½Ð¾ÐºÐ¾Ð¼Ð¿Ð¾Ð½ÐµÐ½Ñ‚Ð½Ñ‹Ð¹ Ð»Ð°Ð¹Ð½-Ð°Ð¿, ÐºÐ°Ðº Ð¸ Ñ€ÐµÐ²ÐµÑ€Ð°Ð½ÑÑ‹ Ð² ÑÑ‚Ð¾Ñ€Ð¾Ð½Ñƒ Ñ€Ð°Ð½Ð½Ñ‹Ñ… \"Ñ€Ð¾Ð»Ð»Ð¸Ð½Ð³Ð¾Ð²\".</div>\r\n',0,'2011-09-14 16:20:08','2011-09-14 21:08:27'),(2,1,'Side Body','',1,'2011-09-14 16:20:09','2011-09-14 21:08:27'),(3,2,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2011-09-14 16:20:09','2011-09-14 16:20:09'),(4,3,'Body','<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\r\n\r\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>',0,'2011-09-14 16:20:09','2011-09-14 17:47:58'),(5,3,'Side Body','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>',1,'2011-09-14 16:20:09','2011-09-14 17:47:58'),(6,4,'Body','',0,'2011-09-14 17:46:15','2011-09-14 17:46:15'),(7,4,'Side Body','',1,'2011-09-14 17:46:16','2011-09-14 17:46:16'),(8,5,'Body','',0,'2011-09-14 17:46:28','2011-09-14 17:46:28'),(9,5,'Side Body','',1,'2011-09-14 17:46:28','2011-09-14 17:46:28');
/*!40000 ALTER TABLE `page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_translations`
--

DROP TABLE IF EXISTS `page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_translations_on_page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_translations`
--

LOCK TABLES `page_translations` WRITE;
/*!40000 ALTER TABLE `page_translations` DISABLE KEYS */;
INSERT INTO `page_translations` VALUES (1,1,'en','','Ðž ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸','2011-09-14 16:20:08','2011-09-14 17:34:55'),(2,2,'en',NULL,'Page not found','2011-09-14 16:20:09','2011-09-14 16:20:09'),(3,3,'en','','ÐšÐ¾Ð½Ñ‚Ð°ÐºÑ‚Ñ‹','2011-09-14 16:20:09','2011-09-14 17:47:58'),(4,4,'en','','ÐÐ°ÑˆÐ¸ Ð¾Ð±ÑŠÐµÐºÑ‚Ñ‹','2011-09-14 17:46:15','2011-09-14 17:46:15'),(5,5,'en','','Ð¤Ð¾Ñ€ÑƒÐ¼','2011-09-14 17:46:28','2011-09-14 17:46:28');
/*!40000 ALTER TABLE `page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_match` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `custom_title_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_depth` (`depth`),
  KEY `index_pages_on_id` (`id`),
  KEY `index_pages_on_lft` (`lft`),
  KEY `index_pages_on_parent_id` (`parent_id`),
  KEY `index_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,NULL,0,NULL,'2011-09-14 16:20:08','2011-09-14 21:08:27',1,'/',NULL,0,'none',0,0,1,4,NULL),(2,1,0,NULL,'2011-09-14 16:20:09','2011-09-14 16:20:09',0,NULL,'^/404$',0,'none',0,0,2,3,NULL),(3,NULL,1,NULL,'2011-09-14 16:20:09','2011-09-14 17:47:58',1,'',NULL,1,'none',0,0,9,10,NULL),(4,NULL,2,NULL,'2011-09-14 17:46:15','2011-09-14 17:46:15',1,'',NULL,1,'none',0,0,5,6,NULL),(5,NULL,3,NULL,'2011-09-14 17:46:28','2011-09-14 17:46:28',1,'',NULL,1,'none',0,0,7,8,NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_settings`
--

DROP TABLE IF EXISTS `refinery_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `destroyable` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `scoping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `callback_proc_as_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_settings`
--

LOCK TABLES `refinery_settings` WRITE;
/*!40000 ALTER TABLE `refinery_settings` DISABLE KEYS */;
INSERT INTO `refinery_settings` VALUES (1,'use_marketable_urls','--- \"true\"\n',1,'2011-09-14 16:20:08','2011-09-14 16:20:08','pages',0,NULL,'text_area'),(2,'i18n_translation_enabled','--- \"true\"\n',1,'2011-09-14 16:20:08','2011-09-14 16:20:08','refinery',0,NULL,'text_area'),(3,'i18n_translation_default_frontend_locale','--- :en\n',1,'2011-09-14 16:20:08','2011-09-14 16:20:08','refinery',0,NULL,'text_area'),(4,'dragonfly_secret','--- fe9abe5676fbeb471e1ab36136e51477e18a30ce84a4456d\n',1,'2011-09-14 16:20:30','2011-09-14 16:20:30',NULL,0,NULL,'text_area'),(5,'approximate_ascii','--- \"false\"\n',1,'2011-09-14 16:20:30','2011-09-14 16:20:30','pages',0,NULL,'text_area'),(6,'strip_non_ascii','--- \"false\"\n',1,'2011-09-14 16:20:30','2011-09-14 16:20:30','pages',0,NULL,'text_area'),(7,'i18n_translation_locales','--- \n:\"zh-CN\": Simplified Chinese\n:sv: Svenska\n:fr: \"Fran\\xC3\\xA7ais\"\n:jp: !binary |\n  5pel5pys6Kqe\n\n:es: \"Espa\\xC3\\xB1ol\"\n:da: Dansk\n:\"zh-TW\": Traditional Chinese\n:pl: Polski\n:\"pt-BR\": \"Portugu\\xC3\\xAAs\"\n:it: Italiano\n:cs: !binary |\n  xIxlc2t5\n\n:nl: Nederlands\n:en: English\n:de: Deutsch\n:lv: Latviski\n:rs: Srpski\n:el: !binary |\n  zpXOu867zrfOvc65zrrOrA==\n\n:nb: \"Norsk Bokm\\xC3\\xA5l\"\n:ru: !binary |\n  0KDRg9GB0YHQutC40Lk=\n\n:sk: \"Slovensk\\xC3\\xBD\"\n:sl: Slovenian\n',1,'2011-09-14 16:21:01','2011-09-14 16:30:09','refinery',0,NULL,'text_area'),(8,'i18n_translation_default_locale','--- :en\n',1,'2011-09-14 16:21:01','2011-09-14 16:21:01','refinery',0,NULL,'text_area'),(9,'i18n_translation_current_locale','--- :ru\n',1,'2011-09-14 16:21:01','2011-09-14 16:21:42','refinery',0,NULL,'text_area'),(10,'i18n_translation_frontend_locales','--- \n- :en\n',1,'2011-09-14 16:21:01','2011-09-14 16:21:01','refinery',0,NULL,'text_area'),(11,'site_name','--- !binary |\n0JPQkNCg0JDQndCi0JjQndCS0JXQodCi\n\n',1,'2011-09-14 16:21:02','2011-09-14 16:30:32',NULL,0,NULL,'text_area'),(12,'use_resource_caching','--- \"true\"\n',1,'2011-09-14 16:21:02','2011-09-14 16:21:02',NULL,0,NULL,'text_area'),(13,'use_google_ajax_libraries','--- \"false\"\n',1,'2011-09-14 16:21:02','2011-09-14 16:21:02',NULL,0,NULL,'text_area'),(14,'cache_pages_backend','--- \"false\"\n',1,'2011-09-14 16:21:14','2011-09-14 16:21:14',NULL,0,NULL,'text_area'),(15,'page_title','--- \n:page_title: \n  :wrap_if_not_chained: false\n  :class: \n  :tag: \n:ancestors: \n  :class: ancestors\n  :tag: span\n  :separator: \" | \"\n:chain_page_title: false\n',1,'2011-09-14 16:22:01','2011-09-14 16:22:01',NULL,0,NULL,'text_area'),(16,'authenticity_token_on_frontend','--- \"true\"\n',1,'2011-09-14 16:22:01','2011-09-14 16:22:01',NULL,0,NULL,'text_area'),(17,'frontend_refinery_stylesheets_enabled','--- \"true\"\n',1,'2011-09-14 16:22:01','2011-09-14 16:22:01',NULL,0,NULL,'text_area'),(18,'menu_hide_children','--- \"false\"\n',1,'2011-09-14 16:22:01','2011-09-14 16:22:01',NULL,0,NULL,'text_area'),(19,'new_page_parts','--- \"false\"\n',1,'2011-09-14 17:34:39','2011-09-14 17:34:39',NULL,0,NULL,'text_area'),(20,'default_page_parts','--- \n- Body\n',1,'2011-09-14 17:46:05','2011-09-14 18:39:38',NULL,0,NULL,'text_area'),(21,'image_views','--- \n- :grid\n- :list\n',1,'2011-09-14 19:41:20','2011-09-14 19:41:20',NULL,0,NULL,'text_area'),(22,'preferred_image_view','--- :grid\n',1,'2011-09-14 19:41:20','2011-09-14 19:41:20',NULL,0,NULL,'text_area'),(23,'user_image_sizes','--- \n:small: 110x110>\n:medium: 225x255>\n:large: 450x450>\n',0,'2011-09-14 19:42:41','2011-09-14 19:42:41',NULL,0,NULL,'text_area'),(24,'activity_show_limit','--- 7\n',1,'2011-09-14 20:45:10','2011-09-14 20:45:10',NULL,0,NULL,'text_area');
/*!40000 ALTER TABLE `refinery_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Refinery'),(2,'Superuser');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110913181210'),('20110913181211'),('20110913181212'),('20110913181213'),('20110913181214'),('20110913181215'),('20110913181216'),('20110913181217'),('20110913181218'),('20110913181219'),('20110913181220'),('20110913181221'),('20110913181222'),('20110913181223'),('20110913181224'),('20110913181225'),('20110913181226');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--

DROP TABLE IF EXISTS `seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta`
--

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;
INSERT INTO `seo_meta` VALUES (1,1,'Page::Translation','','','','2011-09-14 16:20:12','2011-09-14 17:34:55'),(2,2,'Page::Translation',NULL,NULL,NULL,'2011-09-14 16:20:12','2011-09-14 16:20:12'),(3,3,'Page::Translation','','','','2011-09-14 16:20:12','2011-09-14 17:47:58'),(4,4,'Page::Translation','','','','2011-09-14 17:46:15','2011-09-14 17:46:15'),(5,5,'Page::Translation','','','','2011-09-14 17:46:28','2011-09-14 17:46:28');
/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sluggable_id` int(11) DEFAULT NULL,
  `sequence` int(11) NOT NULL DEFAULT '1',
  `sluggable_type` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_slugs_on_n_s_s_and_s` (`name`,`sluggable_type`,`scope`,`sequence`),
  KEY `index_slugs_on_sluggable_id` (`sluggable_id`),
  KEY `index_slugs_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'home',1,1,'Page',NULL,'2011-09-14 16:20:08','en'),(2,'page-not-found',2,1,'Page',NULL,'2011-09-14 16:20:09','en'),(3,'about',3,1,'Page',NULL,'2011-09-14 16:20:09','en'),(4,'admin',1,1,'User',NULL,'2011-09-14 16:21:13','en'),(5,'Ð¾-ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸',1,1,'Page',NULL,'2011-09-14 17:34:55','en'),(6,'Ð½Ð°ÑˆÐ¸-Ð¾Ð±ÑŠÐµÐºÑ‚Ñ‹',4,1,'Page',NULL,'2011-09-14 17:46:15','en'),(7,'Ñ„Ð¾Ñ€ÑƒÐ¼',5,1,'Page',NULL,'2011-09-14 17:46:28','en'),(9,'ÐºÐ¾Ð½Ñ‚Ð°ÐºÑ‚Ñ‹',3,2,'Page',NULL,'2011-09-14 17:47:58','en'),(10,'admin',1,1,'User',NULL,'2011-09-14 20:45:17','ru');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plugins`
--

DROP TABLE IF EXISTS `user_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_unique_user_plugins` (`user_id`,`name`),
  KEY `index_user_plugins_on_title` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plugins`
--

LOCK TABLES `user_plugins` WRITE;
/*!40000 ALTER TABLE `user_plugins` DISABLE KEYS */;
INSERT INTO `user_plugins` VALUES (7,1,'refinery_dashboard',0),(8,1,'refinery_files',1),(9,1,'refinery_images',2),(10,1,'refinery_pages',3),(11,1,'refinery_settings',4),(12,1,'refinery_users',5),(13,1,'refinerycms_base',6),(14,1,'refinery_core',7),(15,1,'refinery_dialogs',8),(16,1,'refinery_i18n',9),(17,1,'refinery_generators',10);
/*!40000 ALTER TABLE `user_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@gmail.com','$2a$10$4pIl55yuTr05K1w1VjYPKubcBH8HZlHeYRAovESZSaRQblcBT3pHi',NULL,'2011-09-14 16:21:13','2011-09-14 21:05:30',NULL,'2011-09-14 21:05:30','2011-09-14 20:55:25','127.0.0.1','127.0.0.1',5,NULL,NULL,NULL);
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

-- Dump completed on 2011-09-15  2:16:28
