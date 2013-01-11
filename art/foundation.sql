-- MySQL dump 10.13  Distrib 5.5.24, for Win32 (x86)
--
-- Host: localhost    Database: hxwiki
-- ------------------------------------------------------
-- Server version	5.5.24-log

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `userName` tinytext NOT NULL,
  `userMail` tinytext NOT NULL,
  `url` tinytext,
  `content` mediumtext NOT NULL,
  `htmlContent` mediumtext NOT NULL,
  `eid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependency`
--

DROP TABLE IF EXISTS `dependency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` tinytext NOT NULL,
  `title` tinytext,
  `subs` varchar(32) DEFAULT NULL,
  `eid` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependency`
--

LOCK TABLES `dependency` WRITE;
/*!40000 ALTER TABLE `dependency` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry`
--

DROP TABLE IF EXISTS `entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `title` tinytext,
  `vid` int(11) DEFAULT NULL,
  `lid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry`
--

LOCK TABLES `entry` WRITE;
/*!40000 ALTER TABLE `entry` DISABLE KEYS */;
INSERT INTO `entry` VALUES (1,'index',NULL,'Home',NULL,1),(2,'about',NULL,'About',NULL,1),(3,'why_haxe',NULL,'Why Haxe',NULL,1),(4,'projects',NULL,'Projects',NULL,1),(5,'donate',NULL,'Donate',NULL,1),(6,'promote',NULL,'Promote',NULL,1),(7,'support',NULL,'Support',NULL,1);
/*!40000 ALTER TABLE `entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entryconfig`
--

DROP TABLE IF EXISTS `entryconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entryconfig` (
  `path` varchar(200) NOT NULL,
  `isBlog` tinyint(1) NOT NULL,
  `isForum` tinyint(1) NOT NULL,
  `cssClass` tinytext,
  `designMTT` tinytext,
  `layout` mediumtext,
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entryconfig`
--

LOCK TABLES `entryconfig` WRITE;
/*!40000 ALTER TABLE `entryconfig` DISABLE KEYS */;
INSERT INTO `entryconfig` VALUES ('about',0,0,NULL,'foundation_about.mtt',NULL),('contact',0,0,NULL,'foundation_contact.mtt',NULL),('donate',0,0,NULL,'foundation_donate.mtt',NULL),('index',0,0,NULL,'home.mtt',NULL),('projects',0,0,NULL,'foundation_projects.mtt',NULL),('promote',0,0,NULL,'foundation_promote.mtt',NULL),('support',0,0,NULL,'foundation_support.mtt',NULL),('why_haxe',0,0,NULL,'foundation_why_haxe.mtt',NULL);
/*!40000 ALTER TABLE `entryconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `content` mediumblob NOT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forumbrowsing`
--

DROP TABLE IF EXISTS `forumbrowsing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forumbrowsing` (
  `date` datetime NOT NULL,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forumbrowsing`
--

LOCK TABLES `forumbrowsing` WRITE;
/*!40000 ALTER TABLE `forumbrowsing` DISABLE KEYS */;
/*!40000 ALTER TABLE `forumbrowsing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forummessage`
--

DROP TABLE IF EXISTS `forummessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forummessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `mdate` datetime NOT NULL,
  `title` varchar(35) NOT NULL,
  `content` mediumtext NOT NULL,
  `htmlContent` mediumtext NOT NULL,
  `isLock` tinyint(1) NOT NULL,
  `isSticky` tinyint(1) NOT NULL,
  `replyCount` int(11) NOT NULL,
  `lastUid` int(11) DEFAULT NULL,
  `lastLogin` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forummessage`
--

LOCK TABLES `forummessage` WRITE;
/*!40000 ALTER TABLE `forummessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `forummessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forumtheme`
--

DROP TABLE IF EXISTS `forumtheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forumtheme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forumtheme`
--

LOCK TABLES `forumtheme` WRITE;
/*!40000 ALTER TABLE `forumtheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `forumtheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `canRegister` tinyint(1) NOT NULL,
  `canUploadImage` tinyint(1) NOT NULL,
  `canUploadSWF` tinyint(1) NOT NULL,
  `canUploadOverwrite` tinyint(1) NOT NULL,
  `canAccessDB` tinyint(1) NOT NULL,
  `canModerateForum` tinyint(1) NOT NULL,
  `canInsertHTML` tinyint(1) NOT NULL,
  `maxUploadSize` int(11) NOT NULL,
  `allowedFiles` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'admin',1,1,1,1,1,0,0,10000000,'zip|gz|tgz|dmg|exe|swf|txt|xml|pdf'),(2,'user',1,0,0,0,0,0,0,0,''),(3,'offline',1,0,0,0,0,0,0,0,'');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouprights`
--

DROP TABLE IF EXISTS `grouprights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grouprights` (
  `gid` int(11) NOT NULL,
  `path` varchar(200) NOT NULL,
  `canView` tinyint(1) NOT NULL,
  `canEdit` tinyint(1) NOT NULL,
  `canCreate` tinyint(1) NOT NULL,
  `canDelete` tinyint(1) NOT NULL,
  `canComment` tinyint(1) NOT NULL,
  `canReadComments` tinyint(1) NOT NULL,
  `canDeleteComments` tinyint(1) NOT NULL,
  `canViewChanges` tinyint(1) NOT NULL,
  PRIMARY KEY (`gid`,`path`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouprights`
--

LOCK TABLES `grouprights` WRITE;
/*!40000 ALTER TABLE `grouprights` DISABLE KEYS */;
INSERT INTO `grouprights` VALUES (1,'',1,1,1,1,0,0,0,0),(2,'',1,1,0,0,0,0,0,0),(3,'',1,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `grouprights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang`
--

DROP TABLE IF EXISTS `lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang`
--

LOCK TABLES `lang` WRITE;
/*!40000 ALTER TABLE `lang` DISABLE KEYS */;
INSERT INTO `lang` VALUES (1,'en','Default');
/*!40000 ALTER TABLE `lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `url` tinytext NOT NULL,
  `kind` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search` (
  `id` int(11) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `Search_data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search`
--

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `sid` varchar(32) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `data` mediumblob NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('uAduTaW2VMUZVUtFNyePCSMYq6LTGp9W',1,'2013-01-11 02:55:05','2013-01-10 19:43:34','oî­Çi\0\0\0ëö\nÜN6²ÄoSiH\0s\0\0\0\0æ”i\0\0\0\0\0\0\0\0pxs=\0\0\0Y:\\Projects\\Active\\HaxeFoundation-Site\\hxWiki-dev\\www/index.na\0\0\0s\0\0\0String¸:N\0\0\0\0z');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gid` int(11) NOT NULL,
  `banEnding` datetime DEFAULT NULL,
  `pass` varchar(32) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `realName` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin',1,NULL,'79c2b9172f4ae86109b07591c0a41ee5',NULL,'Admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `code` int(11) NOT NULL,
  `content` mediumtext,
  `htmlContent` mediumtext,
  `eid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES (1,'2013-01-06 21:07:20',3,NULL,'Home',1,1),(2,'2013-01-06 21:23:30',3,NULL,'Home',1,1),(3,'2013-01-06 22:23:10',3,NULL,'About',2,1),(4,'2013-01-06 22:27:18',3,NULL,'Why Haxe',3,1),(5,'2013-01-06 22:31:53',3,NULL,'Projects',4,1),(6,'2013-01-06 23:29:52',3,NULL,'Donate',5,1),(7,'2013-01-06 23:33:29',3,NULL,'Promote',6,1),(8,'2013-01-06 23:34:32',3,'Promote','Promote Haxe',6,1),(9,'2013-01-09 22:50:04',3,NULL,'Support',7,1),(10,'2013-01-10 19:45:37',0,'6+262+6+2\n\n\njk\njkjk\n\nkj','<p>6+262+6+2</p>\n<p>jk<br/>jkjk</p>\n<p>kj</p>\n',8,1),(11,'2013-01-11 02:50:34',1,'','',8,1),(12,'2013-01-11 02:52:02',3,NULL,'Home',1,1),(13,'2013-01-11 02:52:14',3,NULL,'Support',7,1),(14,'2013-01-11 02:52:39',3,NULL,'Promote',6,1);
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-11  3:06:40
