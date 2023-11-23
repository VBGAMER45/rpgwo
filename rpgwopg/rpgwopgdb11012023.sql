CREATE DATABASE  IF NOT EXISTS `vbgamer4_rpgwo2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vbgamer4_rpgwo2`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: vbgamer4_rpgwo2
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `articlepost`
--

DROP TABLE IF EXISTS `articlepost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articlepost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(32) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Category` int(2) DEFAULT NULL,
  `Description` blob,
  `Body` blob,
  `Url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articlepost`
--

LOCK TABLES `articlepost` WRITE;
/*!40000 ALTER TABLE `articlepost` DISABLE KEYS */;
/*!40000 ALTER TABLE `articlepost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankrecord`
--

DROP TABLE IF EXISTS `bankrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bankrecord` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(32) DEFAULT NULL,
  `LoanAmount` int(10) DEFAULT NULL,
  `Date` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankrecord`
--

LOCK TABLES `bankrecord` WRITE;
/*!40000 ALTER TABLE `bankrecord` DISABLE KEYS */;
INSERT INTO `bankrecord` VALUES (1,'Jon The Great',1000,'11.13.03'),(2,'Jon The Great',10000,'11.13.03'),(3,'Tiso',1000,'11.13.03');
/*!40000 ALTER TABLE `bankrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbsmessage`
--

DROP TABLE IF EXISTS `bbsmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bbsmessage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(64) DEFAULT NULL,
  `Poster` varchar(64) DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Parent` int(11) DEFAULT NULL,
  `Body` blob,
  `Category` int(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbsmessage`
--

LOCK TABLES `bbsmessage` WRITE;
/*!40000 ALTER TABLE `bbsmessage` DISABLE KEYS */;
INSERT INTO `bbsmessage` VALUES (1,' Welcome back','','0000-00-00 00:00:00',0,_binary 'Test Post',2),(3,' W00T!','JTG2003','0000-00-00 00:00:00',0,_binary 'Hey hey hey! Im the first to post! I feel special. Anyway, I was wondering something about land plots. Over a period of time, if a player does not log on or go to their land, will the land be \\\'taken\\\' from them? Like, will they have to buy it all over again? o.O Just a random question.',1),(4,' Hello!','Gorbulas','0000-00-00 00:00:00',0,_binary 'Hello to whomever reads this!',3),(5,' Hello!','Tima','0000-00-00 00:00:00',4,_binary 'Hi gorbie!',3),(7,' Rune Combos','Faran','0000-00-00 00:00:00',0,_binary 'Steeltide rune combos are different from those on the rune list.  Please post all your rune combos for spells on steeltide, So we can begin to make full rune translations.',5);
/*!40000 ALTER TABLE `bbsmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadpost`
--

DROP TABLE IF EXISTS `downloadpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `downloadpost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(32) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Description` blob,
  `Category` int(2) DEFAULT NULL,
  `Url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadpost`
--

LOCK TABLES `downloadpost` WRITE;
/*!40000 ALTER TABLE `downloadpost` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guildpost`
--

DROP TABLE IF EXISTS `guildpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guildpost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(32) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Category` int(2) DEFAULT NULL,
  `Description` blob,
  `Members` int(2) DEFAULT NULL,
  `Url` varchar(100) DEFAULT NULL,
  `Leader` varchar(35) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guildpost`
--

LOCK TABLES `guildpost` WRITE;
/*!40000 ALTER TABLE `guildpost` DISABLE KEYS */;
INSERT INTO `guildpost` VALUES (1,'Vix',NULL,'The Ashen Knight',3,_binary 'This Master Guild will lead you into the toughest hardships, but if you prevail, you\\\'ll be known as the Elites.',0,'','William Wallace',NULL),(2,'King Prince',NULL,'The Huns',1,_binary 'Good guild contact Warlord for details and ill ask him if i can post his Email for info.',12,'none','Warlord',NULL),(4,'Teru',NULL,'Darks Malice',2,_binary 'Low level guild (1-20 on mainland) that holds events (Lotteries, Tame fights, drawings, participation in guild wars, PvP fights, giveaways ect.) Contact Teru or Elestria for more information. Say /guildrequest Darks Malice (In game) if you want to join.',0,'','Teru',NULL),(3,'King Prince',NULL,'The Huns',1,_binary 'Owned by Warlord Members are of following:Warlord, Atila, King Prince, Riku, Chilli, Your name, Steel, and Neo the Swordsman      Good guild very helpful to its members and has very many tradesman of skills.',8,'None','Warlord',NULL),(5,'Auron',NULL,'PYR8',4,_binary 'Bad ass guild!',0,'','Tilur',NULL),(6,'Tima',NULL,'Keepers Of The Shadows',3,_binary 'Pretty active guild',14,'www.sarynx-tender.tk','Tima',NULL),(7,'tdp86',NULL,'Homeland Defense',5,_binary 'One of the newest guilds, just made July 1, 2004.',3,'','tdp123',NULL),(8,'blue death',NULL,'The Gold Death Hunter',5,_binary 'We have the Largest guild',36,'','The Death hunter',NULL),(9,'eternalwinds',NULL,'Seraphs Coal',5,_binary 'We are a new guild that is just starting out we have 5 members but are always looking for more.',5,'','globals screamer',NULL),(10,'haynsy',NULL,'The Shadow Of The Moon',2,_binary 'uf tyfrrg',7,'','Clement',NULL);
/*!40000 ALTER TABLE `guildpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linkpost`
--

DROP TABLE IF EXISTS `linkpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linkpost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(32) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Category` int(2) DEFAULT NULL,
  `Description` blob,
  `Url` varchar(100) DEFAULT NULL,
  `Author` varchar(35) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linkpost`
--

LOCK TABLES `linkpost` WRITE;
/*!40000 ALTER TABLE `linkpost` DISABLE KEYS */;
INSERT INTO `linkpost` VALUES (1,'Rav',NULL,'Rav\\\'s RPGWO Stuff',NULL,_binary 'Things Ravyn has drawn for rpgwo.','http://www.projectxonline.net/ravsrpgwo',NULL,NULL),(2,'jon the collecto',NULL,'Jons RPGWO fan site',NULL,_binary 'Self-descriptive','http://computergaming.bravehost.com',NULL,NULL),(3,'Tima',NULL,'Saryn X-tender.tk',NULL,_binary 'Pretty miscelainious website.','http://www.sarynx-tender.tk',NULL,NULL),(4,'duskblade6',NULL,'RPGWO Fansite',NULL,_binary 'Duskblade6\'s fan site with player guides','http://rpgwofan.no-ip.org/',NULL,NULL);
/*!40000 ALTER TABLE `linkpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newspost`
--

DROP TABLE IF EXISTS `newspost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newspost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(32) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `News` blob,
  `Subject` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newspost`
--

LOCK TABLES `newspost` WRITE;
/*!40000 ALTER TABLE `newspost` DISABLE KEYS */;
/*!40000 ALTER TABLE `newspost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storepost`
--

DROP TABLE IF EXISTS `storepost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storepost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(32) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Category` int(2) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Description` blob,
  `Url` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storepost`
--

LOCK TABLES `storepost` WRITE;
/*!40000 ALTER TABLE `storepost` DISABLE KEYS */;
/*!40000 ALTER TABLE `storepost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(32) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Realname` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `AdminLevel` int(2) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Avater` int(2) DEFAULT NULL,
  `Banned` int(2) DEFAULT NULL,
  `IP` varchar(32) DEFAULT NULL,
  `SessionID` varchar(32) DEFAULT NULL,
  `Totalposts` int(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`


--
-- Table structure for table `wantedpost`
--

DROP TABLE IF EXISTS `wantedpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wantedpost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(32) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Reward` varchar(100) DEFAULT NULL,
  `Category` int(2) DEFAULT NULL,
  `Description` blob,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wantedpost`
--

LOCK TABLES `wantedpost` WRITE;
/*!40000 ALTER TABLE `wantedpost` DISABLE KEYS */;
INSERT INTO `wantedpost` VALUES (1,'Admin','Sir Tom','5000',2,_binary 'Sir Tom is wanted.  Get me his cords and where he lives.  Tell Jon The Great.  I just want my bitch back.'),(2,'King Prince','Liniak','Not none',1,_binary 'I belive i have heard info on a bounty on Liniaks head '),(3,'Tima','Bounty on Cerbeus','5 zirc ore and 2000 gold',3,_binary 'I WANT TO SEE HIM DIE'),(4,'Komodo Monster','damn coniving bastard....','magma and 5K',5,_binary 'if anyone can find a way to kill smoke enough times to get his vitae down to about oh say..... 70 ill give ya 2 magma ores and 5K');
/*!40000 ALTER TABLE `wantedpost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23  9:56:12
