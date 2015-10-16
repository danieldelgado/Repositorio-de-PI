-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.40-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema portal_db_prdh
--

CREATE DATABASE IF NOT EXISTS portal_db_prdh;
USE portal_db_prdh;

--
-- Definition of table `account_`
--

DROP TABLE IF EXISTS `account_`;
CREATE TABLE `account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_`
--

/*!40000 ALTER TABLE `account_` DISABLE KEYS */;
INSERT INTO `account_` (`accountId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`parentAccountId`,`name`,`legalName`,`legalId`,`legalType`,`sicCode`,`tickerSymbol`,`industry`,`type_`,`size_`) VALUES 
 (10156,10154,0,'','2015-10-14 15:11:29','2015-10-14 15:11:29',0,'Portal Reclutamiento','','','','','','','','');
/*!40000 ALTER TABLE `account_` ENABLE KEYS */;


--
-- Definition of table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `IX_93D5AD4E` (`companyId`),
  KEY `IX_ABD7DAC0` (`companyId`,`classNameId`),
  KEY `IX_71CB1123` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_923BD178` (`companyId`,`classNameId`,`classPK`,`mailing`),
  KEY `IX_9226DBB4` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_5BC8B0D4` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;


--
-- Definition of table `announcementsdelivery`
--

DROP TABLE IF EXISTS `announcementsdelivery`;
CREATE TABLE `announcementsdelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  UNIQUE KEY `IX_BA4413D5` (`userId`,`type_`),
  KEY `IX_6EDB9600` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcementsdelivery`
--

/*!40000 ALTER TABLE `announcementsdelivery` DISABLE KEYS */;
INSERT INTO `announcementsdelivery` (`deliveryId`,`companyId`,`userId`,`type_`,`email`,`sms`,`website`) VALUES 
 (10407,10154,10196,'general',0,0,1),
 (10408,10154,10196,'news',0,0,1),
 (10409,10154,10196,'test',0,0,1),
 (10907,10154,10901,'general',0,0,0),
 (10908,10154,10901,'news',0,0,0),
 (10909,10154,10901,'test',0,0,0),
 (10937,10154,10931,'general',0,0,0),
 (10938,10154,10931,'news',0,0,0),
 (10939,10154,10931,'test',0,0,0),
 (10959,10154,10953,'general',0,0,0),
 (10960,10154,10953,'news',0,0,0),
 (10961,10154,10953,'test',0,0,0),
 (10982,10154,10976,'general',0,0,0),
 (10983,10154,10976,'news',0,0,0),
 (10984,10154,10976,'test',0,0,0),
 (10994,10154,10988,'general',0,0,0),
 (10995,10154,10988,'news',0,0,0),
 (10996,10154,10988,'test',0,0,0),
 (11005,10154,10999,'general',0,0,0),
 (11006,10154,10999,'news',0,0,0),
 (11007,10154,10999,'test',0,0,0);
/*!40000 ALTER TABLE `announcementsdelivery` ENABLE KEYS */;


--
-- Definition of table `announcementsentry`
--

DROP TABLE IF EXISTS `announcementsentry`;
CREATE TABLE `announcementsentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  KEY `IX_A6EF0B81` (`classNameId`,`classPK`),
  KEY `IX_14F06A6B` (`classNameId`,`classPK`,`alert`),
  KEY `IX_D49C2E66` (`userId`),
  KEY `IX_1AFBDE08` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcementsentry`
--

/*!40000 ALTER TABLE `announcementsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsentry` ENABLE KEYS */;


--
-- Definition of table `announcementsflag`
--

DROP TABLE IF EXISTS `announcementsflag`;
CREATE TABLE `announcementsflag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`),
  UNIQUE KEY `IX_4539A99C` (`userId`,`entryId`,`value`),
  KEY `IX_9C7EB9F` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcementsflag`
--

/*!40000 ALTER TABLE `announcementsflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsflag` ENABLE KEYS */;


--
-- Definition of table `assetcategory`
--

DROP TABLE IF EXISTS `assetcategory`;
CREATE TABLE `assetcategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_BE4DF2BF` (`parentCategoryId`,`name`,`vocabularyId`),
  UNIQUE KEY `IX_E8D019AA` (`uuid_`,`groupId`),
  KEY `IX_E639E2F6` (`groupId`),
  KEY `IX_510B46AC` (`groupId`,`parentCategoryId`,`name`),
  KEY `IX_2008FACB` (`groupId`,`vocabularyId`),
  KEY `IX_D61ABE08` (`name`,`vocabularyId`),
  KEY `IX_7BB1826B` (`parentCategoryId`),
  KEY `IX_9DDD15EA` (`parentCategoryId`,`name`),
  KEY `IX_B185E980` (`parentCategoryId`,`vocabularyId`),
  KEY `IX_4D37BB00` (`uuid_`),
  KEY `IX_287B1F89` (`vocabularyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assetcategory`
--

/*!40000 ALTER TABLE `assetcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetcategory` ENABLE KEYS */;


--
-- Definition of table `assetcategoryproperty`
--

DROP TABLE IF EXISTS `assetcategoryproperty`;
CREATE TABLE `assetcategoryproperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`categoryPropertyId`),
  UNIQUE KEY `IX_DBD111AA` (`categoryId`,`key_`),
  KEY `IX_99DA856` (`categoryId`),
  KEY `IX_8654719F` (`companyId`),
  KEY `IX_52340033` (`companyId`,`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assetcategoryproperty`
--

/*!40000 ALTER TABLE `assetcategoryproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetcategoryproperty` ENABLE KEYS */;


--
-- Definition of table `assetentries_assetcategories`
--

DROP TABLE IF EXISTS `assetentries_assetcategories`;
CREATE TABLE `assetentries_assetcategories` (
  `entryId` bigint(20) NOT NULL,
  `categoryId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`categoryId`),
  KEY `IX_A188F560` (`categoryId`),
  KEY `IX_E119938A` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assetentries_assetcategories`
--

/*!40000 ALTER TABLE `assetentries_assetcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetentries_assetcategories` ENABLE KEYS */;


--
-- Definition of table `assetentries_assettags`
--

DROP TABLE IF EXISTS `assetentries_assettags`;
CREATE TABLE `assetentries_assettags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`),
  KEY `IX_2ED82CAD` (`entryId`),
  KEY `IX_B2A61B55` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assetentries_assettags`
--

/*!40000 ALTER TABLE `assetentries_assettags` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetentries_assettags` ENABLE KEYS */;


--
-- Definition of table `assetentry`
--

DROP TABLE IF EXISTS `assetentry`;
CREATE TABLE `assetentry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_1E9D371D` (`classNameId`,`classPK`),
  KEY `IX_FC1F9C7B` (`classUuid`),
  KEY `IX_7306C60` (`companyId`),
  KEY `IX_75D42FF9` (`expirationDate`),
  KEY `IX_1EBA6821` (`groupId`,`classUuid`),
  KEY `IX_2E4E3885` (`publishDate`),
  KEY `IX_9029E15A` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assetentry`
--

/*!40000 ALTER TABLE `assetentry` DISABLE KEYS */;
INSERT INTO `assetentry` (`entryId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`classUuid`,`classTypeId`,`visible`,`startDate`,`endDate`,`publishDate`,`expirationDate`,`mimeType`,`title`,`description`,`summary`,`url`,`layoutUuid`,`height`,`width`,`priority`,`viewCount`) VALUES 
 (10178,10172,10154,10158,'','2015-10-14 15:11:31','2015-10-14 15:11:31',10117,10176,'da90f4c8-783e-426d-a2ec-bba7f788f366',0,0,NULL,NULL,NULL,NULL,'text/html','10175','','','','',0,0,0,0),
 (10186,10180,10154,10158,'','2015-10-14 15:11:31','2015-10-14 15:11:31',10117,10184,'7261723f-6575-473f-82a3-d8a3ec9c5784',0,0,NULL,NULL,NULL,NULL,'text/html','10183','','','','',0,0,0,0),
 (10201,10192,10154,10196,'Test Test','2015-10-14 15:11:32','2015-10-16 20:27:57',10005,10196,'b1314919-4b48-4bc5-9303-7cd25d5bd9ba',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),
 (10317,10310,10154,10158,'','2015-10-14 15:11:36','2015-10-14 15:11:36',10117,10314,'c136205b-34f8-4451-8aca-663e15eaa83f',0,0,NULL,NULL,NULL,NULL,'text/html','10313','','','','',0,0,0,0),
 (10326,10320,10154,10158,'','2015-10-14 15:11:37','2015-10-14 15:11:37',10117,10324,'fef5a644-cc10-4b30-b4bd-abe817438913',0,0,NULL,NULL,NULL,NULL,'text/html','10323','','','','',0,0,0,0),
 (10335,10329,10154,10158,'','2015-10-14 15:11:38','2015-10-14 15:11:38',10117,10333,'644c4631-3b78-484f-af7c-8fe795c6a78b',0,0,NULL,NULL,NULL,NULL,'text/html','10332','','','','',0,0,0,0),
 (10349,10338,10154,10158,'','2015-10-14 15:11:41','2015-10-14 15:11:41',10117,10347,'069da9d3-56ad-4983-a714-c8742ea20659',0,0,NULL,NULL,NULL,NULL,'text/html','10346','','','','',0,0,0,0),
 (10355,10338,10154,10158,'','2015-10-14 15:11:42','2015-10-14 15:11:42',10117,10353,'79e78baa-665b-496b-b63f-31ef9e22371d',0,0,NULL,NULL,NULL,NULL,'text/html','10352','','','','',0,0,0,0),
 (10361,10338,10154,10158,'','2015-10-14 15:11:43','2015-10-14 15:11:43',10117,10359,'a70e60b6-e144-4790-bb1b-819a94bc0ca2',0,0,NULL,NULL,NULL,NULL,'text/html','10358','','','','',0,0,0,0),
 (10375,10364,10154,10158,'','2015-10-14 15:11:44','2015-10-14 15:11:44',10117,10373,'1a686181-30da-49c5-8517-e2065d415930',0,0,NULL,NULL,NULL,NULL,'text/html','10372','','','','',0,0,0,0),
 (10383,10364,10154,10158,'','2015-10-14 15:11:45','2015-10-14 15:11:45',10117,10381,'1fb7078f-afe3-440a-aecb-4b15e5668e12',0,0,NULL,NULL,NULL,NULL,'text/html','10380','','','','',0,0,0,0),
 (10389,10364,10154,10158,'','2015-10-14 15:11:46','2015-10-14 15:11:46',10117,10387,'22768231-049b-4e5d-8791-491e1af418c4',0,0,NULL,NULL,NULL,NULL,'text/html','10386','','','','',0,0,0,0),
 (10395,10364,10154,10158,'','2015-10-14 15:11:46','2015-10-14 15:11:46',10117,10393,'2d517d94-9ddd-4c88-917b-b9514370c151',0,0,NULL,NULL,NULL,NULL,'text/html','10392','','','','',0,0,0,0),
 (10418,10180,10154,10158,'','2015-10-14 15:18:01','2015-10-14 15:18:01',10010,10416,'6d6952d8-7838-4a27-b21c-168ffbfc4e14',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_3.jpg','','','','',0,0,0,0),
 (10421,10180,10154,10158,'','2015-10-14 15:18:01','2015-10-14 15:18:01',10117,10419,'99e88877-9d69-42e0-8ac0-15e089cba798',0,0,NULL,NULL,NULL,NULL,'text/html','10416','','','','',0,0,0,0),
 (10428,10180,10154,10158,'','2015-10-14 15:18:01','2015-10-14 15:18:01',10010,10425,'17ced9aa-cb94-412a-9029-030236c5ecbf',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_11.jpg','','','','',0,0,0,0),
 (10431,10180,10154,10158,'','2015-10-14 15:18:01','2015-10-14 15:18:01',10117,10429,'056e628d-b289-4c15-b5fa-eac1b7824189',0,0,NULL,NULL,NULL,NULL,'text/html','10425','','','','',0,0,0,0),
 (10439,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10010,10437,'667cbefe-e590-4b63-a90d-0496a7d13f86',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_12.jpg','','','','',0,0,0,0),
 (10442,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10117,10440,'c5eb5b3f-7001-432d-8708-17d018e70c4e',0,0,NULL,NULL,NULL,NULL,'text/html','10437','','','','',0,0,0,0),
 (10453,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10010,10449,'ff006508-33bd-4ea9-b801-0384d44a95b8',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_bg_10.png','','','','',0,0,0,0),
 (10458,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10117,10455,'60b16356-4f23-4208-9156-b06399f6c571',0,0,NULL,NULL,NULL,NULL,'text/html','10449','','','','',0,0,0,0),
 (10467,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10010,10461,'9c78abce-9e3a-4b5e-9565-900d7ef90d75',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_2.jpg','','','','',0,0,0,0),
 (10470,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10117,10468,'5bb3bdad-5ced-40b2-ade7-497dca4d3b0e',0,0,NULL,NULL,NULL,NULL,'text/html','10461','','','','',0,0,0,0),
 (10479,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10010,10474,'10d528c0-3e2c-40fe-b3e3-5238f00705f3',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_9.jpg','','','','',0,0,0,0),
 (10482,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10117,10480,'22e21931-8ac6-4bc0-9fcb-0afce5c4a623',0,0,NULL,NULL,NULL,NULL,'text/html','10474','','','','',0,0,0,0),
 (10491,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10010,10486,'e69b9dc8-97b5-4fd7-8b7a-365e9aaf2657',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_4.jpg','','','','',0,0,0,0),
 (10494,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10117,10492,'cd50fb7c-c32c-48d9-8866-f636b2a5caff',0,0,NULL,NULL,NULL,NULL,'text/html','10486','','','','',0,0,0,0),
 (10502,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10010,10497,'f17d9618-8414-4732-a2c2-b9b41ba93886',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_6.jpg','','','','',0,0,0,0),
 (10506,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10117,10504,'037c1e81-1e54-4170-a288-027d47db80a0',0,0,NULL,NULL,NULL,NULL,'text/html','10497','','','','',0,0,0,0),
 (10515,10198,10154,10196,'Admin admin','2015-10-14 15:18:04','2015-10-14 15:18:04',10117,10513,'55dfd962-c02b-44ac-84e4-538b3467f9f0',0,0,NULL,NULL,NULL,NULL,'text/html','10510','','','','',0,0,0,0),
 (10520,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10010,10511,'b46057a3-2dd5-4a5f-972f-48d11bc683ed',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_7.jpg','','','','',0,0,0,0),
 (10523,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10117,10521,'b1fb4e72-6513-44df-9b57-f7b9a87a52ef',0,0,NULL,NULL,NULL,NULL,'text/html','10511','','','','',0,0,0,0),
 (10532,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10010,10527,'e05c1b76-e18b-448f-a73c-da77289c33b2',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_5.jpg','','','','',0,0,0,0),
 (10535,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10117,10533,'c9c78167-1935-43a8-90c0-93fe69f12225',0,0,NULL,NULL,NULL,NULL,'text/html','10527','','','','',0,0,0,0),
 (10540,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10010,10538,'5d505645-2b48-4e24-9816-16331aabbe6f',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_13.jpg','','','','',0,0,0,0),
 (10543,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10117,10541,'112959cb-1ed5-4c77-885e-bdfdf92425d6',0,0,NULL,NULL,NULL,NULL,'text/html','10538','','','','',0,0,0,0),
 (10561,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05',10010,10555,'00e303f4-9044-471e-9258-e06652eb8081',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_1.jpg','','','','',0,0,0,0),
 (10564,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05',10117,10562,'838e8a9b-3b99-4f8b-bb02-a73be3a637b2',0,0,NULL,NULL,NULL,NULL,'text/html','10555','','','','',0,0,0,0),
 (10571,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05',10010,10568,'49dfd33c-3221-486e-943b-84c8563383a3',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_8.jpg','','','','',0,0,0,0),
 (10576,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05',10117,10574,'f71d02a8-68a4-409d-a93a-e3b418c3ee41',0,0,NULL,NULL,NULL,NULL,'text/html','10568','','','','',0,0,0,0),
 (10587,10180,10154,10158,'','2015-10-14 15:18:06','2015-10-14 15:18:06',10108,10585,'d6cae800-8039-4c76-9cda-300cb2e06b6c',0,1,NULL,NULL,'2010-02-01 00:00:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Who Is Using Liferay</Title></root>','','','','',0,0,0,0),
 (10590,10180,10154,10158,'','2015-10-14 15:18:06','2015-10-14 15:18:06',10117,10588,'3d9e9273-100c-4426-ac7e-5bc45bb68585',0,0,NULL,NULL,NULL,NULL,'text/html','10585','','','','',0,0,0,0),
 (10610,10599,10154,10158,'','2015-10-14 15:18:09','2015-10-14 15:18:09',10117,10608,'c82a1c8b-b77f-44e5-868e-6830c0d1c4b1',0,0,NULL,NULL,NULL,NULL,'text/html','10607','','','','',0,0,0,0),
 (10906,10192,10154,10196,'Admin admin','2015-10-14 21:48:48','2015-10-14 21:58:15',10005,10901,'a7f5bf88-9c0c-44a9-8b7e-9a02c77907c8',0,0,NULL,NULL,NULL,NULL,'','Ivan Quiroz','','','','',0,0,0,0),
 (10917,10903,10154,10901,'Ivan Quiroz','2015-10-14 21:54:17','2015-10-14 21:54:17',10117,10915,'6251560a-e751-414c-857b-5cf1917bad5e',0,0,NULL,NULL,NULL,NULL,'text/html','10914','','','','',0,0,0,0),
 (10936,10192,10154,10196,'Admin admin','2015-10-14 22:07:11','2015-10-14 22:07:49',10005,10931,'fda8a32d-c885-4da9-8121-d6b404197a82',0,0,NULL,NULL,NULL,NULL,'','Katheryn Katheryn','','','','',0,0,0,0),
 (10945,10933,10154,10931,'Katheryn Katheryn','2015-10-14 22:10:31','2015-10-14 22:10:31',10117,10943,'30ab9229-1505-4dfc-b563-530cf599e0ca',0,0,NULL,NULL,NULL,NULL,'text/html','10942','','','','',0,0,0,0),
 (10950,10933,10154,10931,'Katheryn Katheryn','2015-10-14 22:10:31','2015-10-14 22:10:31',10117,10948,'6a2e46c0-140e-4fd1-9944-ccb584272257',0,0,NULL,NULL,NULL,NULL,'text/html','10947','','','','',0,0,0,0),
 (10958,10192,10154,10901,'Ivan Quiroz','2015-10-14 22:21:01','2015-10-14 22:24:28',10005,10953,'cb595c56-e236-4738-b5a2-ad30aa6d01ad',0,0,NULL,NULL,NULL,NULL,'','Monica Lopera','','','','',0,0,0,0),
 (10967,10955,10154,10953,'Monica Lopera','2015-10-14 22:24:35','2015-10-14 22:24:35',10117,10965,'71916a43-83f7-44ed-88f6-5ae31a7382aa',0,0,NULL,NULL,NULL,NULL,'text/html','10964','','','','',0,0,0,0),
 (10972,10955,10154,10953,'Monica Lopera','2015-10-14 22:24:35','2015-10-14 22:24:35',10117,10970,'bd46cae6-2956-4799-bd64-962abe3fe3fe',0,0,NULL,NULL,NULL,NULL,'text/html','10969','','','','',0,0,0,0),
 (10981,10192,10154,10196,'Admin admin','2015-10-14 22:29:44','2015-10-14 22:30:51',10005,10976,'41920309-11b0-47b0-9adc-10d90dc0ac53',0,0,NULL,NULL,NULL,NULL,'','Arturo Varas','','','','',0,0,0,0),
 (10993,10192,10154,10901,'Ivan Quiroz','2015-10-14 22:33:53','2015-10-14 22:34:39',10005,10988,'e7c42471-56f4-4258-95b0-701fb291fab4',0,0,NULL,NULL,NULL,NULL,'','Danielle Delgado','','','','',0,0,0,0),
 (11004,10192,10154,10901,'Ivan Quiroz','2015-10-14 22:37:36','2015-10-14 22:39:11',10005,10999,'3687a2b5-9780-4f6f-a5c2-26c1e3f7f34d',0,0,NULL,NULL,NULL,NULL,'','Randiel Melgarejo','','','','',0,0,0,0);
/*!40000 ALTER TABLE `assetentry` ENABLE KEYS */;


--
-- Definition of table `assetlink`
--

DROP TABLE IF EXISTS `assetlink`;
CREATE TABLE `assetlink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`),
  UNIQUE KEY `IX_8F542794` (`entryId1`,`entryId2`,`type_`),
  KEY `IX_128516C8` (`entryId1`),
  KEY `IX_56E0AB21` (`entryId1`,`entryId2`),
  KEY `IX_14D5A20D` (`entryId1`,`type_`),
  KEY `IX_12851A89` (`entryId2`),
  KEY `IX_91F132C` (`entryId2`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assetlink`
--

/*!40000 ALTER TABLE `assetlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetlink` ENABLE KEYS */;


--
-- Definition of table `assettag`
--

DROP TABLE IF EXISTS `assettag`;
CREATE TABLE `assettag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagId`),
  KEY `IX_7C9E46BA` (`groupId`),
  KEY `IX_D63322F9` (`groupId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assettag`
--

/*!40000 ALTER TABLE `assettag` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettag` ENABLE KEYS */;


--
-- Definition of table `assettagproperty`
--

DROP TABLE IF EXISTS `assettagproperty`;
CREATE TABLE `assettagproperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagPropertyId`),
  UNIQUE KEY `IX_2C944354` (`tagId`,`key_`),
  KEY `IX_DFF1F063` (`companyId`),
  KEY `IX_13805BF7` (`companyId`,`key_`),
  KEY `IX_3269E180` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assettagproperty`
--

/*!40000 ALTER TABLE `assettagproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettagproperty` ENABLE KEYS */;


--
-- Definition of table `assettagstats`
--

DROP TABLE IF EXISTS `assettagstats`;
CREATE TABLE `assettagstats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`),
  UNIQUE KEY `IX_56682CC4` (`tagId`,`classNameId`),
  KEY `IX_50702693` (`classNameId`),
  KEY `IX_9464CA` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assettagstats`
--

/*!40000 ALTER TABLE `assettagstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettagstats` ENABLE KEYS */;


--
-- Definition of table `assetvocabulary`
--

DROP TABLE IF EXISTS `assetvocabulary`;
CREATE TABLE `assetvocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext,
  PRIMARY KEY (`vocabularyId`),
  UNIQUE KEY `IX_C0AAD74D` (`groupId`,`name`),
  UNIQUE KEY `IX_1B2B8792` (`uuid_`,`groupId`),
  KEY `IX_B22D908C` (`companyId`),
  KEY `IX_B6B8CA0E` (`groupId`),
  KEY `IX_55F58818` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assetvocabulary`
--

/*!40000 ALTER TABLE `assetvocabulary` DISABLE KEYS */;
INSERT INTO `assetvocabulary` (`uuid_`,`vocabularyId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`title`,`description`,`settings_`) VALUES 
 ('a72507fc-9aa0-40ab-9088-712cca48f29f',10316,10192,10154,10158,'','2015-10-14 15:11:36','2015-10-14 15:11:36','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');
/*!40000 ALTER TABLE `assetvocabulary` ENABLE KEYS */;


--
-- Definition of table `blogsentry`
--

DROP TABLE IF EXISTS `blogsentry`;
CREATE TABLE `blogsentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_DB780A20` (`groupId`,`urlTitle`),
  UNIQUE KEY `IX_1B1040FD` (`uuid_`,`groupId`),
  KEY `IX_72EF6041` (`companyId`),
  KEY `IX_430D791F` (`companyId`,`displayDate`),
  KEY `IX_BB0C2905` (`companyId`,`displayDate`,`status`),
  KEY `IX_EB2DCE27` (`companyId`,`status`),
  KEY `IX_8CACE77B` (`companyId`,`userId`),
  KEY `IX_A5F57B61` (`companyId`,`userId`,`status`),
  KEY `IX_2672F77F` (`displayDate`,`status`),
  KEY `IX_81A50303` (`groupId`),
  KEY `IX_621E19D` (`groupId`,`displayDate`),
  KEY `IX_F0E73383` (`groupId`,`displayDate`,`status`),
  KEY `IX_1EFD8EE9` (`groupId`,`status`),
  KEY `IX_FBDE0AA3` (`groupId`,`userId`,`displayDate`),
  KEY `IX_DA04F689` (`groupId`,`userId`,`displayDate`,`status`),
  KEY `IX_49E15A23` (`groupId`,`userId`,`status`),
  KEY `IX_69157A4D` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogsentry`
--

/*!40000 ALTER TABLE `blogsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsentry` ENABLE KEYS */;


--
-- Definition of table `blogsstatsuser`
--

DROP TABLE IF EXISTS `blogsstatsuser`;
CREATE TABLE `blogsstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_82254C25` (`groupId`,`userId`),
  KEY `IX_90CDA39A` (`companyId`,`entryCount`),
  KEY `IX_43840EEB` (`groupId`),
  KEY `IX_28C78D5C` (`groupId`,`entryCount`),
  KEY `IX_BB51F1D9` (`userId`),
  KEY `IX_507BA031` (`userId`,`lastPostDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogsstatsuser`
--

/*!40000 ALTER TABLE `blogsstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsstatsuser` ENABLE KEYS */;


--
-- Definition of table `bookmarksentry`
--

DROP TABLE IF EXISTS `bookmarksentry`;
CREATE TABLE `bookmarksentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_EAA02A91` (`uuid_`,`groupId`),
  KEY `IX_E52FF7EF` (`groupId`),
  KEY `IX_5200100C` (`groupId`,`folderId`),
  KEY `IX_E2E9F129` (`groupId`,`userId`),
  KEY `IX_E848278F` (`resourceBlockId`),
  KEY `IX_B670BA39` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookmarksentry`
--

/*!40000 ALTER TABLE `bookmarksentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksentry` ENABLE KEYS */;


--
-- Definition of table `bookmarksfolder`
--

DROP TABLE IF EXISTS `bookmarksfolder`;
CREATE TABLE `bookmarksfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_DC2F8927` (`uuid_`,`groupId`),
  KEY `IX_2ABA25D7` (`companyId`),
  KEY `IX_7F703619` (`groupId`),
  KEY `IX_967799C0` (`groupId`,`parentFolderId`),
  KEY `IX_28A49BB9` (`resourceBlockId`),
  KEY `IX_451E7AE3` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookmarksfolder`
--

/*!40000 ALTER TABLE `bookmarksfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksfolder` ENABLE KEYS */;


--
-- Definition of table `browsertracker`
--

DROP TABLE IF EXISTS `browsertracker`;
CREATE TABLE `browsertracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`),
  UNIQUE KEY `IX_E7B95510` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `browsertracker`
--

/*!40000 ALTER TABLE `browsertracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `browsertracker` ENABLE KEYS */;


--
-- Definition of table `calevent`
--

DROP TABLE IF EXISTS `calevent`;
CREATE TABLE `calevent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `IX_5CCE79C8` (`uuid_`,`groupId`),
  KEY `IX_D6FD9496` (`companyId`),
  KEY `IX_12EE4898` (`groupId`),
  KEY `IX_4FDDD2BF` (`groupId`,`repeating`),
  KEY `IX_FCD7C63D` (`groupId`,`type_`),
  KEY `IX_FD93CBFA` (`groupId`,`type_`,`repeating`),
  KEY `IX_F6006202` (`remindBy`),
  KEY `IX_C1AD2122` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calevent`
--

/*!40000 ALTER TABLE `calevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `calevent` ENABLE KEYS */;


--
-- Definition of table `classname_`
--

DROP TABLE IF EXISTS `classname_`;
CREATE TABLE `classname_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`),
  UNIQUE KEY `IX_B27A301F` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classname_`
--

/*!40000 ALTER TABLE `classname_` DISABLE KEYS */;
INSERT INTO `classname_` (`classNameId`,`value`) VALUES 
 (10014,'com.liferay.counter.model.Counter'),
 (10410,'com.liferay.marketplace.model.App'),
 (10411,'com.liferay.marketplace.model.Module'),
 (10015,'com.liferay.portal.kernel.workflow.WorkflowTask'),
 (10016,'com.liferay.portal.model.Account'),
 (10017,'com.liferay.portal.model.Address'),
 (10018,'com.liferay.portal.model.BrowserTracker'),
 (10019,'com.liferay.portal.model.ClassName'),
 (10020,'com.liferay.portal.model.ClusterGroup'),
 (10021,'com.liferay.portal.model.Company'),
 (10022,'com.liferay.portal.model.Contact'),
 (10023,'com.liferay.portal.model.Country'),
 (10024,'com.liferay.portal.model.EmailAddress'),
 (10001,'com.liferay.portal.model.Group'),
 (10025,'com.liferay.portal.model.Image'),
 (10002,'com.liferay.portal.model.Layout'),
 (10026,'com.liferay.portal.model.LayoutBranch'),
 (10027,'com.liferay.portal.model.LayoutPrototype'),
 (10028,'com.liferay.portal.model.LayoutRevision'),
 (10029,'com.liferay.portal.model.LayoutSet'),
 (10030,'com.liferay.portal.model.LayoutSetBranch'),
 (10031,'com.liferay.portal.model.LayoutSetPrototype'),
 (10032,'com.liferay.portal.model.ListType'),
 (10033,'com.liferay.portal.model.Lock'),
 (10034,'com.liferay.portal.model.MembershipRequest'),
 (10003,'com.liferay.portal.model.Organization'),
 (10035,'com.liferay.portal.model.OrgGroupPermission'),
 (10036,'com.liferay.portal.model.OrgGroupRole'),
 (10037,'com.liferay.portal.model.OrgLabor'),
 (10038,'com.liferay.portal.model.PasswordPolicy'),
 (10039,'com.liferay.portal.model.PasswordPolicyRel'),
 (10040,'com.liferay.portal.model.PasswordTracker'),
 (10041,'com.liferay.portal.model.Permission'),
 (10042,'com.liferay.portal.model.Phone'),
 (10043,'com.liferay.portal.model.PluginSetting'),
 (10044,'com.liferay.portal.model.PortalPreferences'),
 (10045,'com.liferay.portal.model.Portlet'),
 (10046,'com.liferay.portal.model.PortletItem'),
 (10047,'com.liferay.portal.model.PortletPreferences'),
 (10048,'com.liferay.portal.model.Region'),
 (10049,'com.liferay.portal.model.Release'),
 (10050,'com.liferay.portal.model.Repository'),
 (10051,'com.liferay.portal.model.RepositoryEntry'),
 (10052,'com.liferay.portal.model.Resource'),
 (10053,'com.liferay.portal.model.ResourceAction'),
 (10054,'com.liferay.portal.model.ResourceBlock'),
 (10055,'com.liferay.portal.model.ResourceBlockPermission'),
 (10056,'com.liferay.portal.model.ResourceCode'),
 (10057,'com.liferay.portal.model.ResourcePermission'),
 (10058,'com.liferay.portal.model.ResourceTypePermission'),
 (10004,'com.liferay.portal.model.Role'),
 (10059,'com.liferay.portal.model.ServiceComponent'),
 (10060,'com.liferay.portal.model.Shard'),
 (10061,'com.liferay.portal.model.Subscription'),
 (10062,'com.liferay.portal.model.Team'),
 (10063,'com.liferay.portal.model.Ticket'),
 (10005,'com.liferay.portal.model.User'),
 (10006,'com.liferay.portal.model.UserGroup'),
 (10064,'com.liferay.portal.model.UserGroupGroupRole'),
 (10065,'com.liferay.portal.model.UserGroupRole'),
 (10066,'com.liferay.portal.model.UserIdMapper'),
 (10067,'com.liferay.portal.model.UserNotificationEvent'),
 (10188,'com.liferay.portal.model.UserPersonalSite'),
 (10068,'com.liferay.portal.model.UserTracker'),
 (10069,'com.liferay.portal.model.UserTrackerPath'),
 (10070,'com.liferay.portal.model.VirtualHost'),
 (10071,'com.liferay.portal.model.WebDAVProps'),
 (10072,'com.liferay.portal.model.Website'),
 (10073,'com.liferay.portal.model.WorkflowDefinitionLink'),
 (10074,'com.liferay.portal.model.WorkflowInstanceLink'),
 (10415,'com.liferay.portal.repository.liferayrepository.LiferayRepository'),
 (10075,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),
 (10076,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),
 (10077,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),
 (10078,'com.liferay.portlet.asset.model.AssetCategory'),
 (10079,'com.liferay.portlet.asset.model.AssetCategoryProperty'),
 (10080,'com.liferay.portlet.asset.model.AssetEntry'),
 (10081,'com.liferay.portlet.asset.model.AssetLink'),
 (10082,'com.liferay.portlet.asset.model.AssetTag'),
 (10083,'com.liferay.portlet.asset.model.AssetTagProperty'),
 (10084,'com.liferay.portlet.asset.model.AssetTagStats'),
 (10085,'com.liferay.portlet.asset.model.AssetVocabulary'),
 (10007,'com.liferay.portlet.blogs.model.BlogsEntry'),
 (10086,'com.liferay.portlet.blogs.model.BlogsStatsUser'),
 (10008,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),
 (10087,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),
 (10009,'com.liferay.portlet.calendar.model.CalEvent'),
 (10088,'com.liferay.portlet.documentlibrary.model.DLContent'),
 (10010,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),
 (10089,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),
 (10090,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),
 (10091,'com.liferay.portlet.documentlibrary.model.DLFileRank'),
 (10092,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),
 (10093,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),
 (10094,'com.liferay.portlet.documentlibrary.model.DLFolder'),
 (10095,'com.liferay.portlet.documentlibrary.model.DLSync'),
 (10096,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),
 (10097,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),
 (10098,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),
 (10099,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),
 (10100,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),
 (10101,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),
 (10102,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),
 (10103,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),
 (10104,'com.liferay.portlet.expando.model.ExpandoColumn'),
 (10105,'com.liferay.portlet.expando.model.ExpandoRow'),
 (10106,'com.liferay.portlet.expando.model.ExpandoTable'),
 (10107,'com.liferay.portlet.expando.model.ExpandoValue'),
 (10108,'com.liferay.portlet.journal.model.JournalArticle'),
 (10109,'com.liferay.portlet.journal.model.JournalArticleImage'),
 (10110,'com.liferay.portlet.journal.model.JournalArticleResource'),
 (10111,'com.liferay.portlet.journal.model.JournalContentSearch'),
 (10112,'com.liferay.portlet.journal.model.JournalFeed'),
 (10113,'com.liferay.portlet.journal.model.JournalStructure'),
 (10114,'com.liferay.portlet.journal.model.JournalTemplate'),
 (10115,'com.liferay.portlet.messageboards.model.MBBan'),
 (10116,'com.liferay.portlet.messageboards.model.MBCategory'),
 (10117,'com.liferay.portlet.messageboards.model.MBDiscussion'),
 (10118,'com.liferay.portlet.messageboards.model.MBMailingList'),
 (10011,'com.liferay.portlet.messageboards.model.MBMessage'),
 (10119,'com.liferay.portlet.messageboards.model.MBStatsUser'),
 (10012,'com.liferay.portlet.messageboards.model.MBThread'),
 (10120,'com.liferay.portlet.messageboards.model.MBThreadFlag'),
 (10121,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),
 (10122,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),
 (10123,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),
 (10124,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),
 (10125,'com.liferay.portlet.polls.model.PollsChoice'),
 (10126,'com.liferay.portlet.polls.model.PollsQuestion'),
 (10127,'com.liferay.portlet.polls.model.PollsVote'),
 (10128,'com.liferay.portlet.ratings.model.RatingsEntry'),
 (10129,'com.liferay.portlet.ratings.model.RatingsStats'),
 (10130,'com.liferay.portlet.shopping.model.ShoppingCart'),
 (10131,'com.liferay.portlet.shopping.model.ShoppingCategory'),
 (10132,'com.liferay.portlet.shopping.model.ShoppingCoupon'),
 (10133,'com.liferay.portlet.shopping.model.ShoppingItem'),
 (10134,'com.liferay.portlet.shopping.model.ShoppingItemField'),
 (10135,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),
 (10136,'com.liferay.portlet.shopping.model.ShoppingOrder'),
 (10137,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),
 (10138,'com.liferay.portlet.social.model.SocialActivity'),
 (10139,'com.liferay.portlet.social.model.SocialActivityAchievement'),
 (10140,'com.liferay.portlet.social.model.SocialActivityCounter'),
 (10141,'com.liferay.portlet.social.model.SocialActivityLimit'),
 (10142,'com.liferay.portlet.social.model.SocialActivitySetting'),
 (10143,'com.liferay.portlet.social.model.SocialRelation'),
 (10144,'com.liferay.portlet.social.model.SocialRequest'),
 (10145,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),
 (10146,'com.liferay.portlet.softwarecatalog.model.SCLicense'),
 (10147,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),
 (10148,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),
 (10149,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),
 (10150,'com.liferay.portlet.usernotifications.model.UserNotificationEvent'),
 (10151,'com.liferay.portlet.wiki.model.WikiNode'),
 (10013,'com.liferay.portlet.wiki.model.WikiPage'),
 (10152,'com.liferay.portlet.wiki.model.WikiPageResource');
/*!40000 ALTER TABLE `classname_` ENABLE KEYS */;


--
-- Definition of table `clustergroup`
--

DROP TABLE IF EXISTS `clustergroup`;
CREATE TABLE `clustergroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clustergroup`
--

/*!40000 ALTER TABLE `clustergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `clustergroup` ENABLE KEYS */;


--
-- Definition of table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`companyId`),
  UNIQUE KEY `IX_EC00543C` (`webId`),
  KEY `IX_38EFE3FD` (`logoId`),
  KEY `IX_12566EC2` (`mx`),
  KEY `IX_35E3E7C6` (`system`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`companyId`,`accountId`,`webId`,`key_`,`mx`,`homeURL`,`logoId`,`system`,`maxUsers`,`active_`) VALUES 
 (10154,10156,'liferay.com','rO0ABXNyABRqYXZhLnNlY3VyaXR5LktleVJlcL35T7OImqVDAgAETAAJYWxnb3JpdGhtdAASTGphdmEvbGFuZy9TdHJpbmc7WwAHZW5jb2RlZHQAAltCTAAGZm9ybWF0cQB+AAFMAAR0eXBldAAbTGphdmEvc2VjdXJpdHkvS2V5UmVwJFR5cGU7eHB0AANERVN1cgACW0Ks8xf4BghU4AIAAHhwAAAACFhDLFJP6WvmdAADUkFXfnIAGWphdmEuc2VjdXJpdHkuS2V5UmVwJFR5cGUAAAAAAAAAABIAAHhyAA5qYXZhLmxhbmcuRW51bQAAAAAAAAAAEgAAeHB0AAZTRUNSRVQ=','liferay.com','',0,0,0,1);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;


--
-- Definition of table `contact_`
--

DROP TABLE IF EXISTS `contact_`;
CREATE TABLE `contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `IX_66D496A3` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_`
--

/*!40000 ALTER TABLE `contact_` DISABLE KEYS */;
INSERT INTO `contact_` (`contactId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`accountId`,`parentContactId`,`firstName`,`middleName`,`lastName`,`prefixId`,`suffixId`,`male`,`birthday`,`smsSn`,`aimSn`,`facebookSn`,`icqSn`,`jabberSn`,`msnSn`,`mySpaceSn`,`skypeSn`,`twitterSn`,`ymSn`,`employeeStatusId`,`employeeNumber`,`jobTitle`,`jobClass`,`hoursOfOperation`) VALUES 
 (10159,10154,10158,'','2015-10-14 15:11:29','2015-10-14 15:11:29',10156,0,'','','',0,0,1,'2015-10-14 15:11:29','','','','','','','','','','','','','','',''),
 (10197,10154,10196,'','2015-10-14 15:11:31','2015-10-16 20:27:57',10156,0,'Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),
 (10902,10154,10196,'Admin admin','2015-10-14 21:48:47','2015-10-14 21:58:15',10156,0,'Ivan','','Quiroz',11015,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Ivan Quiroz','',''),
 (10932,10154,10196,'Admin admin','2015-10-14 22:07:11','2015-10-14 22:07:49',10156,0,'Katheryn','','Katheryn',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Katheryn Dextre Llontop','',''),
 (10954,10154,10901,'Ivan Quiroz','2015-10-14 22:21:00','2015-10-14 22:24:28',10156,0,'Monica','','Lopera',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Monica Lopera','',''),
 (10977,10154,10196,'Admin admin','2015-10-14 22:29:44','2015-10-14 22:30:51',10156,0,'Arturo','','Varas',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Arturo Varas','',''),
 (10989,10154,10901,'Ivan Quiroz','2015-10-14 22:33:53','2015-10-14 22:34:39',10156,0,'Danielle','','Delgado',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Danielle Delgado','',''),
 (11000,10154,10901,'Ivan Quiroz','2015-10-14 22:37:36','2015-10-14 22:39:11',10156,0,'Randiel','','Melgarejo',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Randiel Melgarejo','','');
/*!40000 ALTER TABLE `contact_` ENABLE KEYS */;


--
-- Definition of table `counter`
--

DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` (`name`,`currentId`) VALUES 
 ('com.liferay.counter.model.Counter',11300),
 ('com.liferay.portal.model.Layout#10172#true',1),
 ('com.liferay.portal.model.Layout#10180#false',1),
 ('com.liferay.portal.model.Layout#10198#true',1),
 ('com.liferay.portal.model.Layout#10310#true',1),
 ('com.liferay.portal.model.Layout#10320#true',1),
 ('com.liferay.portal.model.Layout#10329#true',1),
 ('com.liferay.portal.model.Layout#10338#true',3),
 ('com.liferay.portal.model.Layout#10364#true',4),
 ('com.liferay.portal.model.Layout#10599#true',1),
 ('com.liferay.portal.model.Layout#10903#true',1),
 ('com.liferay.portal.model.Layout#10933#false',1),
 ('com.liferay.portal.model.Layout#10933#true',1),
 ('com.liferay.portal.model.Layout#10955#false',1),
 ('com.liferay.portal.model.Layout#10955#true',1),
 ('com.liferay.portal.model.Permission',100),
 ('com.liferay.portal.model.Resource',100),
 ('com.liferay.portal.model.ResourceAction',1000),
 ('com.liferay.portal.model.ResourcePermission',1000),
 ('com.liferay.portlet.documentlibrary.model.DLFileEntry',500),
 ('com.liferay.portlet.social.model.SocialActivity',100);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;


--
-- Definition of table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`countryId`),
  UNIQUE KEY `IX_717B97E1` (`a2`),
  UNIQUE KEY `IX_717B9BA2` (`a3`),
  UNIQUE KEY `IX_19DA007B` (`name`),
  KEY `IX_25D734CD` (`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`countryId`,`name`,`a2`,`a3`,`number_`,`idd_`,`zipRequired`,`active_`) VALUES 
 (1,'Canada','CA','CAN','124','001',1,1),
 (2,'China','CN','CHN','156','086',1,1),
 (3,'France','FR','FRA','250','033',1,1),
 (4,'Germany','DE','DEU','276','049',1,1),
 (5,'Hong Kong','HK','HKG','344','852',1,1),
 (6,'Hungary','HU','HUN','348','036',1,1),
 (7,'Israel','IL','ISR','376','972',1,1),
 (8,'Italy','IT','ITA','380','039',1,1),
 (9,'Japan','JP','JPN','392','081',1,1),
 (10,'South Korea','KR','KOR','410','082',1,1),
 (11,'Netherlands','NL','NLD','528','031',1,1),
 (12,'Portugal','PT','PRT','620','351',1,1),
 (13,'Russia','RU','RUS','643','007',1,1),
 (14,'Singapore','SG','SGP','702','065',1,1),
 (15,'Spain','ES','ESP','724','034',1,1),
 (16,'Turkey','TR','TUR','792','090',1,1),
 (17,'Vietnam','VN','VNM','704','084',1,1),
 (18,'United Kingdom','GB','GBR','826','044',1,1),
 (19,'United States','US','USA','840','001',1,1),
 (20,'Afghanistan','AF','AFG','4','093',1,1),
 (21,'Albania','AL','ALB','8','355',1,1),
 (22,'Algeria','DZ','DZA','12','213',1,1),
 (23,'American Samoa','AS','ASM','16','684',1,1),
 (24,'Andorra','AD','AND','20','376',1,1),
 (25,'Angola','AO','AGO','24','244',0,1),
 (26,'Anguilla','AI','AIA','660','264',1,1),
 (27,'Antarctica','AQ','ATA','10','672',1,1),
 (28,'Antigua','AG','ATG','28','268',0,1),
 (29,'Argentina','AR','ARG','32','054',1,1),
 (30,'Armenia','AM','ARM','51','374',1,1),
 (31,'Aruba','AW','ABW','533','297',0,1),
 (32,'Australia','AU','AUS','36','061',1,1),
 (33,'Austria','AT','AUT','40','043',1,1),
 (34,'Azerbaijan','AZ','AZE','31','994',1,1),
 (35,'Bahamas','BS','BHS','44','242',0,1),
 (36,'Bahrain','BH','BHR','48','973',1,1),
 (37,'Bangladesh','BD','BGD','50','880',1,1),
 (38,'Barbados','BB','BRB','52','246',1,1),
 (39,'Belarus','BY','BLR','112','375',1,1),
 (40,'Belgium','BE','BEL','56','032',1,1),
 (41,'Belize','BZ','BLZ','84','501',0,1),
 (42,'Benin','BJ','BEN','204','229',0,1),
 (43,'Bermuda','BM','BMU','60','441',1,1),
 (44,'Bhutan','BT','BTN','64','975',1,1),
 (45,'Bolivia','BO','BOL','68','591',1,1),
 (46,'Bosnia-Herzegovina','BA','BIH','70','387',1,1),
 (47,'Botswana','BW','BWA','72','267',0,1),
 (48,'Brazil','BR','BRA','76','055',1,1),
 (49,'British Virgin Islands','VG','VGB','92','284',1,1),
 (50,'Brunei','BN','BRN','96','673',1,1),
 (51,'Bulgaria','BG','BGR','100','359',1,1),
 (52,'Burkina Faso','BF','BFA','854','226',0,1),
 (53,'Burma (Myanmar)','MM','MMR','104','095',1,1),
 (54,'Burundi','BI','BDI','108','257',0,1),
 (55,'Cambodia','KH','KHM','116','855',1,1),
 (56,'Cameroon','CM','CMR','120','237',1,1),
 (57,'Cape Verde Island','CV','CPV','132','238',1,1),
 (58,'Cayman Islands','KY','CYM','136','345',1,1),
 (59,'Central African Republic','CF','CAF','140','236',0,1),
 (60,'Chad','TD','TCD','148','235',1,1),
 (61,'Chile','CL','CHL','152','056',1,1),
 (62,'Christmas Island','CX','CXR','162','061',1,1),
 (63,'Cocos Islands','CC','CCK','166','061',1,1),
 (64,'Colombia','CO','COL','170','057',1,1),
 (65,'Comoros','KM','COM','174','269',0,1),
 (66,'Republic of Congo','CD','COD','180','242',0,1),
 (67,'Democratic Republic of Congo','CG','COG','178','243',0,1),
 (68,'Cook Islands','CK','COK','184','682',0,1),
 (69,'Costa Rica','CR','CRI','188','506',1,1),
 (70,'Croatia','HR','HRV','191','385',1,1),
 (71,'Cuba','CU','CUB','192','053',1,1),
 (72,'Cyprus','CY','CYP','196','357',1,1),
 (73,'Czech Republic','CZ','CZE','203','420',1,1),
 (74,'Denmark','DK','DNK','208','045',1,1),
 (75,'Djibouti','DJ','DJI','262','253',0,1),
 (76,'Dominica','DM','DMA','212','767',0,1),
 (77,'Dominican Republic','DO','DOM','214','809',1,1),
 (78,'Ecuador','EC','ECU','218','593',1,1),
 (79,'Egypt','EG','EGY','818','020',1,1),
 (80,'El Salvador','SV','SLV','222','503',1,1),
 (81,'Equatorial Guinea','GQ','GNQ','226','240',0,1),
 (82,'Eritrea','ER','ERI','232','291',0,1),
 (83,'Estonia','EE','EST','233','372',1,1),
 (84,'Ethiopia','ET','ETH','231','251',1,1),
 (85,'Faeroe Islands','FO','FRO','234','298',1,1),
 (86,'Falkland Islands','FK','FLK','238','500',1,1),
 (87,'Fiji Islands','FJ','FJI','242','679',0,1),
 (88,'Finland','FI','FIN','246','358',1,1),
 (89,'French Guiana','GF','GUF','254','594',1,1),
 (90,'French Polynesia','PF','PYF','258','689',1,1),
 (91,'Gabon','GA','GAB','266','241',1,1),
 (92,'Gambia','GM','GMB','270','220',0,1),
 (93,'Georgia','GE','GEO','268','995',1,1),
 (94,'Ghana','GH','GHA','288','233',0,1),
 (95,'Gibraltar','GI','GIB','292','350',1,1),
 (96,'Greece','GR','GRC','300','030',1,1),
 (97,'Greenland','GL','GRL','304','299',1,1),
 (98,'Grenada','GD','GRD','308','473',0,1),
 (99,'Guadeloupe','GP','GLP','312','590',1,1),
 (100,'Guam','GU','GUM','316','671',1,1),
 (101,'Guatemala','GT','GTM','320','502',1,1),
 (102,'Guinea','GN','GIN','324','224',0,1),
 (103,'Guinea-Bissau','GW','GNB','624','245',1,1),
 (104,'Guyana','GY','GUY','328','592',0,1),
 (105,'Haiti','HT','HTI','332','509',1,1),
 (106,'Honduras','HN','HND','340','504',1,1),
 (107,'Iceland','IS','ISL','352','354',1,1),
 (108,'India','IN','IND','356','091',1,1),
 (109,'Indonesia','ID','IDN','360','062',1,1),
 (110,'Iran','IR','IRN','364','098',1,1),
 (111,'Iraq','IQ','IRQ','368','964',1,1),
 (112,'Ireland','IE','IRL','372','353',0,1),
 (113,'Ivory Coast','CI','CIV','384','225',1,1),
 (114,'Jamaica','JM','JAM','388','876',1,1),
 (115,'Jordan','JO','JOR','400','962',1,1),
 (116,'Kazakhstan','KZ','KAZ','398','007',1,1),
 (117,'Kenya','KE','KEN','404','254',1,1),
 (118,'Kiribati','KI','KIR','408','686',0,1),
 (119,'Kuwait','KW','KWT','414','965',1,1),
 (120,'North Korea','KP','PRK','408','850',0,1),
 (121,'Kyrgyzstan','KG','KGZ','471','996',1,1),
 (122,'Laos','LA','LAO','418','856',1,1),
 (123,'Latvia','LV','LVA','428','371',1,1),
 (124,'Lebanon','LB','LBN','422','961',1,1),
 (125,'Lesotho','LS','LSO','426','266',1,1),
 (126,'Liberia','LR','LBR','430','231',1,1),
 (127,'Libya','LY','LBY','434','218',1,1),
 (128,'Liechtenstein','LI','LIE','438','423',1,1),
 (129,'Lithuania','LT','LTU','440','370',1,1),
 (130,'Luxembourg','LU','LUX','442','352',1,1),
 (131,'Macau','MO','MAC','446','853',0,1),
 (132,'Macedonia','MK','MKD','807','389',1,1),
 (133,'Madagascar','MG','MDG','450','261',1,1),
 (134,'Malawi','MW','MWI','454','265',0,1),
 (135,'Malaysia','MY','MYS','458','060',1,1),
 (136,'Maldives','MV','MDV','462','960',1,1),
 (137,'Mali','ML','MLI','466','223',0,1),
 (138,'Malta','MT','MLT','470','356',1,1),
 (139,'Marshall Islands','MH','MHL','584','692',1,1),
 (140,'Martinique','MQ','MTQ','474','596',1,1),
 (141,'Mauritania','MR','MRT','478','222',0,1),
 (142,'Mauritius','MU','MUS','480','230',0,1),
 (143,'Mayotte Island','YT','MYT','175','269',1,1),
 (144,'Mexico','MX','MEX','484','052',1,1),
 (145,'Micronesia','FM','FSM','583','691',1,1),
 (146,'Moldova','MD','MDA','498','373',1,1),
 (147,'Monaco','MC','MCO','492','377',1,1),
 (148,'Mongolia','MN','MNG','496','976',1,1),
 (149,'Montenegro','ME','MNE','499','382',1,1),
 (150,'Montserrat','MS','MSR','500','664',0,1),
 (151,'Morocco','MA','MAR','504','212',1,1),
 (152,'Mozambique','MZ','MOZ','508','258',1,1),
 (153,'Namibia','NA','NAM','516','264',1,1),
 (154,'Nauru','NR','NRU','520','674',0,1),
 (155,'Nepal','NP','NPL','524','977',1,1),
 (156,'Netherlands Antilles','AN','ANT','530','599',1,1),
 (157,'New Caledonia','NC','NCL','540','687',1,1),
 (158,'New Zealand','NZ','NZL','554','064',1,1),
 (159,'Nicaragua','NI','NIC','558','505',1,1),
 (160,'Niger','NE','NER','562','227',1,1),
 (161,'Nigeria','NG','NGA','566','234',1,1),
 (162,'Niue','NU','NIU','570','683',0,1),
 (163,'Norfolk Island','NF','NFK','574','672',1,1),
 (164,'Norway','NO','NOR','578','047',1,1),
 (165,'Oman','OM','OMN','512','968',1,1),
 (166,'Pakistan','PK','PAK','586','092',1,1),
 (167,'Palau','PW','PLW','585','680',1,1),
 (168,'Palestine','PS','PSE','275','970',1,1),
 (169,'Panama','PA','PAN','591','507',1,1),
 (170,'Papua New Guinea','PG','PNG','598','675',1,1),
 (171,'Paraguay','PY','PRY','600','595',1,1),
 (172,'Peru','PE','PER','604','051',1,1),
 (173,'Philippines','PH','PHL','608','063',1,1),
 (174,'Poland','PL','POL','616','048',1,1),
 (175,'Puerto Rico','PR','PRI','630','787',1,1),
 (176,'Qatar','QA','QAT','634','974',0,1),
 (177,'Reunion Island','RE','REU','638','262',1,1),
 (178,'Romania','RO','ROU','642','040',1,1),
 (179,'Rwanda','RW','RWA','646','250',0,1),
 (180,'St. Helena','SH','SHN','654','290',1,1),
 (181,'St. Kitts','KN','KNA','659','869',0,1),
 (182,'St. Lucia','LC','LCA','662','758',0,1),
 (183,'St. Pierre & Miquelon','PM','SPM','666','508',1,1),
 (184,'St. Vincent','VC','VCT','670','784',1,1),
 (185,'San Marino','SM','SMR','674','378',1,1),
 (186,'Sao Tome & Principe','ST','STP','678','239',0,1),
 (187,'Saudi Arabia','SA','SAU','682','966',1,1),
 (188,'Senegal','SN','SEN','686','221',1,1),
 (189,'Serbia','RS','SRB','688','381',1,1),
 (190,'Seychelles','SC','SYC','690','248',0,1),
 (191,'Sierra Leone','SL','SLE','694','249',0,1),
 (192,'Slovakia','SK','SVK','703','421',1,1),
 (193,'Slovenia','SI','SVN','705','386',1,1),
 (194,'Solomon Islands','SB','SLB','90','677',0,1),
 (195,'Somalia','SO','SOM','706','252',0,1),
 (196,'South Africa','ZA','ZAF','710','027',1,1),
 (197,'Sri Lanka','LK','LKA','144','094',1,1),
 (198,'Sudan','SD','SDN','736','095',1,1),
 (199,'Suriname','SR','SUR','740','597',0,1),
 (200,'Swaziland','SZ','SWZ','748','268',1,1),
 (201,'Sweden','SE','SWE','752','046',1,1),
 (202,'Switzerland','CH','CHE','756','041',1,1),
 (203,'Syria','SY','SYR','760','963',0,1),
 (204,'Taiwan','TW','TWN','158','886',1,1),
 (205,'Tajikistan','TJ','TJK','762','992',1,1),
 (206,'Tanzania','TZ','TZA','834','255',0,1),
 (207,'Thailand','TH','THA','764','066',1,1),
 (208,'Togo','TG','TGO','768','228',1,1),
 (209,'Tonga','TO','TON','776','676',0,1),
 (210,'Trinidad & Tobago','TT','TTO','780','868',0,1),
 (211,'Tunisia','TN','TUN','788','216',1,1),
 (212,'Turkmenistan','TM','TKM','795','993',1,1),
 (213,'Turks & Caicos','TC','TCA','796','649',1,1),
 (214,'Tuvalu','TV','TUV','798','688',0,1),
 (215,'Uganda','UG','UGA','800','256',0,1),
 (216,'Ukraine','UA','UKR','804','380',1,1),
 (217,'United Arab Emirates','AE','ARE','784','971',0,1),
 (218,'Uruguay','UY','URY','858','598',1,1),
 (219,'Uzbekistan','UZ','UZB','860','998',1,1),
 (220,'Vanuatu','VU','VUT','548','678',0,1),
 (221,'Vatican City','VA','VAT','336','039',1,1),
 (222,'Venezuela','VE','VEN','862','058',1,1),
 (223,'Wallis & Futuna','WF','WLF','876','681',1,1),
 (224,'Western Samoa','EH','ESH','732','685',1,1),
 (225,'Yemen','YE','YEM','887','967',0,1),
 (226,'Zambia','ZM','ZMB','894','260',1,1),
 (227,'Zimbabwe','ZW','ZWE','716','263',0,1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


--
-- Definition of table `cyrususer`
--

DROP TABLE IF EXISTS `cyrususer`;
CREATE TABLE `cyrususer` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cyrususer`
--

/*!40000 ALTER TABLE `cyrususer` DISABLE KEYS */;
/*!40000 ALTER TABLE `cyrususer` ENABLE KEYS */;


--
-- Definition of table `cyrusvirtual`
--

DROP TABLE IF EXISTS `cyrusvirtual`;
CREATE TABLE `cyrusvirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cyrusvirtual`
--

/*!40000 ALTER TABLE `cyrusvirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `cyrusvirtual` ENABLE KEYS */;


--
-- Definition of table `ddlrecord`
--

DROP TABLE IF EXISTS `ddlrecord`;
CREATE TABLE `ddlrecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordId`),
  UNIQUE KEY `IX_B4328F39` (`uuid_`,`groupId`),
  KEY `IX_87A6B599` (`recordSetId`),
  KEY `IX_AAC564D3` (`recordSetId`,`userId`),
  KEY `IX_8BC2F891` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ddlrecord`
--

/*!40000 ALTER TABLE `ddlrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecord` ENABLE KEYS */;


--
-- Definition of table `ddlrecordset`
--

DROP TABLE IF EXISTS `ddlrecordset`;
CREATE TABLE `ddlrecordset` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordSetId`),
  UNIQUE KEY `IX_56DAB121` (`groupId`,`recordSetKey`),
  UNIQUE KEY `IX_270BA5E1` (`uuid_`,`groupId`),
  KEY `IX_4FA5969F` (`groupId`),
  KEY `IX_561E44E9` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ddlrecordset`
--

/*!40000 ALTER TABLE `ddlrecordset` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecordset` ENABLE KEYS */;


--
-- Definition of table `ddlrecordversion`
--

DROP TABLE IF EXISTS `ddlrecordversion`;
CREATE TABLE `ddlrecordversion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordVersionId`),
  UNIQUE KEY `IX_C79E347` (`recordId`,`version`),
  KEY `IX_2F4DDFE1` (`recordId`),
  KEY `IX_762ADC7` (`recordId`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ddlrecordversion`
--

/*!40000 ALTER TABLE `ddlrecordversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecordversion` ENABLE KEYS */;


--
-- Definition of table `ddmcontent`
--

DROP TABLE IF EXISTS `ddmcontent`;
CREATE TABLE `ddmcontent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_EB9BDE28` (`uuid_`,`groupId`),
  KEY `IX_E3BAF436` (`companyId`),
  KEY `IX_50BF1038` (`groupId`),
  KEY `IX_AE4B50C2` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ddmcontent`
--

/*!40000 ALTER TABLE `ddmcontent` DISABLE KEYS */;
INSERT INTO `ddmcontent` (`uuid_`,`contentId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`description`,`xml`) VALUES 
 ('5c5e4bc5-1bc7-4661-af2b-d31666997f48',10433,10180,10154,10158,'','2015-10-14 15:18:01','2015-10-14 15:18:01','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('b44c8073-147e-4864-b844-f073a8d807c3',10446,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('29e68f00-ae78-41e7-b4b9-d25b386e511b',10452,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('0b2da8b6-eeeb-413b-9a85-062f0954c1ba',10464,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[700]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[304]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8 8 8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('d097bf73-830e-4e7f-bcda-0bfc9933128c',10476,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('e7cca7f8-f48b-4dd9-9ae4-22c9f0aad5e5',10488,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('dc10d057-384e-4835-b126-a34f194565c6',10500,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('e9a760f9-4355-49f7-917a-ae4a88152e3a',10516,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('95b7eb4d-26bc-4f95-ab53-fb6d3e44e862',10529,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('71ba7214-e78f-45db-9245-9c107122bcd9',10547,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('c437e344-5f20-4ad8-8083-56ad5998b997',10557,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('e02f6eba-344f-4ab6-b731-29445aa25ec0',10570,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('205d7e5f-ae7e-40cf-8b4f-90c49fd6aed7',10581,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>');
/*!40000 ALTER TABLE `ddmcontent` ENABLE KEYS */;


--
-- Definition of table `ddmstoragelink`
--

DROP TABLE IF EXISTS `ddmstoragelink`;
CREATE TABLE `ddmstoragelink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`),
  UNIQUE KEY `IX_702D1AD5` (`classPK`),
  KEY `IX_81776090` (`structureId`),
  KEY `IX_32A18526` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ddmstoragelink`
--

/*!40000 ALTER TABLE `ddmstoragelink` DISABLE KEYS */;
INSERT INTO `ddmstoragelink` (`uuid_`,`storageLinkId`,`classNameId`,`classPK`,`structureId`) VALUES 
 ('3e87ffce-e221-4a70-9005-087e26d819db',10435,10099,10433,10308),
 ('bbd1738e-5afd-40a1-aacc-f5248c492c6b',10447,10099,10446,10308),
 ('04c5e1f4-aaf4-425f-9c55-75271dcec307',10454,10099,10452,10308),
 ('c2073921-9b9f-4e29-8a00-47f126345b68',10465,10099,10464,10308),
 ('d7357c21-bfbe-4402-a555-d343eb98ddf2',10477,10099,10476,10308),
 ('5f0e4b16-77ab-459e-8fdc-231cbbfe8cfc',10489,10099,10488,10308),
 ('8cf92ba8-2859-42f3-8274-6c03a6df9c92',10501,10099,10500,10308),
 ('309c3087-f244-45f3-9502-7821ccb86e1c',10518,10099,10516,10308),
 ('90690262-bdec-418b-833d-ff9a926ea85b',10530,10099,10529,10308),
 ('26dd4f95-0f80-481e-a285-157079cbc3c2',10548,10099,10547,10308),
 ('3c3ce983-ecfe-4fec-8c7e-1ef987d11920',10558,10099,10557,10308),
 ('84e2b2c0-6b91-4e29-b2f2-522f5b891723',10572,10099,10570,10308),
 ('f450ae8f-e071-4e9f-98c4-2002f8e81014',10583,10099,10581,10308);
/*!40000 ALTER TABLE `ddmstoragelink` ENABLE KEYS */;


--
-- Definition of table `ddmstructure`
--

DROP TABLE IF EXISTS `ddmstructure`;
CREATE TABLE `ddmstructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`),
  UNIQUE KEY `IX_490E7A1E` (`groupId`,`structureKey`),
  UNIQUE KEY `IX_85C7EBE2` (`uuid_`,`groupId`),
  KEY `IX_31817A62` (`classNameId`),
  KEY `IX_C8419FBE` (`groupId`),
  KEY `IX_E61809C8` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ddmstructure`
--

/*!40000 ALTER TABLE `ddmstructure` DISABLE KEYS */;
INSERT INTO `ddmstructure` (`uuid_`,`structureId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`structureKey`,`name`,`description`,`xsd`,`storageType`,`type_`) VALUES 
 ('a2d47073-d9fb-4d99-a501-ecdd44a346c4',10297,10192,10154,10158,'','2015-10-14 15:11:35','2015-10-14 15:11:35',10089,'Learning Module Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2235\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3212\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4115\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5069\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('aba2c060-e20e-4859-a143-11f5fda1228e',10298,10192,10154,10158,'','2015-10-14 15:11:35','2015-10-14 15:11:35',10089,'Marketing Campaign Theme Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2305\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3229\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4282\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('fc59a45c-2684-41b6-a27e-2b1baa722ed4',10299,10192,10154,10158,'','2015-10-14 15:11:35','2015-10-14 15:11:35',10089,'Meeting Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date3054\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2217\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text4569\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text5638\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea6584\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea7502\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('80b1b421-c6b9-48ec-a34e-1af8824892ba',10301,10192,10154,10158,'','2015-10-14 15:11:35','2015-10-14 15:11:35',10089,'auto_c0240b18-2902-4e40-822f-025c341e3d7f','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Legal Contracts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date18949\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date20127\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select10264\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4893\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text14822\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text17700\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2087\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('40a7c0e9-3b72-4476-9cff-6cd701dc64ec',10303,10192,10154,10158,'','2015-10-14 15:11:35','2015-10-14 15:11:35',10089,'auto_50c4e12f-2662-469a-819d-5b757b6b1150','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"radio5547\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2033\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea2873\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('1349a459-014f-4fdc-9f47-e6caade09669',10305,10192,10154,10158,'','2015-10-14 15:11:36','2015-10-14 15:11:36',10089,'auto_9ff7aecf-d8ea-4222-bc6e-d73e4f90032d','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"text2082\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2979\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('d124ae56-5464-436e-8b02-78e6b2b0312d',10307,10192,10154,10158,'','2015-10-14 15:11:36','2015-10-14 15:11:36',10089,'auto_7991bf84-c89c-49d1-81ce-97bdf446a7ac','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2890\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3864\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4831\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5929\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text1993\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('531ced5d-173d-428d-ae18-67456f7fb534',10308,10192,10154,10158,'','2015-10-14 15:11:36','2015-10-14 15:11:36',10010,'TikaRawMetadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TikaRawMetadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TikaRawMetadata</Description></root>','<root available-locales=\"en_US\" default-locale=\"en_US\"><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element></root>','xml',0),
 ('78e8f6b3-4ebb-46d2-a67e-fd4d3e779f44',10399,10180,10154,10158,'','2015-10-14 15:11:47','2015-10-14 15:11:47',10097,'Contacts','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imService\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
INSERT INTO `ddmstructure` (`uuid_`,`structureId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`structureKey`,`name`,`description`,`xsd`,`storageType`,`type_`) VALUES 
 ('a246553b-9fb5-4356-84a0-4fe36ddeadc8',10400,10180,10154,10158,'','2015-10-14 15:11:47','2015-10-14 15:11:47',10097,'Events','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"name\"><![CDATA[cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"name\"><![CDATA[description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[textarea]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"name\"><![CDATA[eventDate]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-date]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"name\"><![CDATA[eventName]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"name\"><![CDATA[eventTime]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"name\"><![CDATA[location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('7cfddbf7-f6cc-4e0e-85c3-2ff2f8f2ac2f',10401,10180,10154,10158,'','2015-10-14 15:11:48','2015-10-14 15:11:48',10097,'Inventory','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"name\"><![CDATA[purchasePrice]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"name\"><![CDATA[quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('60fce535-c504-455f-ba57-4cdff2e3bc66',10402,10180,10154,10158,'','2015-10-14 15:11:48','2015-10-14 15:11:48',10097,'Issues Tracking','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('c291ff94-a8cc-4def-aa2f-9b08aadac10c',10403,10180,10154,10158,'','2015-10-14 15:11:48','2015-10-14 15:11:48',10097,'Meeting Minutes','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('11b2c8bd-f488-46ee-9801-aff097cea096',10404,10180,10154,10158,'','2015-10-14 15:11:48','2015-10-14 15:11:48',10097,'To Do','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" type=\"ddm-integer\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"name\"><![CDATA[percentComplete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-integer]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
/*!40000 ALTER TABLE `ddmstructure` ENABLE KEYS */;


--
-- Definition of table `ddmstructurelink`
--

DROP TABLE IF EXISTS `ddmstructurelink`;
CREATE TABLE `ddmstructurelink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`),
  UNIQUE KEY `IX_C803899D` (`classPK`),
  KEY `IX_D43E4208` (`classNameId`),
  KEY `IX_17692B58` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ddmstructurelink`
--

/*!40000 ALTER TABLE `ddmstructurelink` DISABLE KEYS */;
INSERT INTO `ddmstructurelink` (`structureLinkId`,`classNameId`,`classPK`,`structureId`) VALUES 
 (10436,10089,10427,10308),
 (10448,10089,10445,10308),
 (10457,10089,10450,10308),
 (10466,10089,10463,10308),
 (10478,10089,10473,10308),
 (10490,10089,10485,10308),
 (10503,10089,10499,10308),
 (10519,10089,10509,10308),
 (10531,10089,10526,10308),
 (10549,10089,10546,10308),
 (10559,10089,10556,10308),
 (10573,10089,10567,10308),
 (10584,10089,10580,10308);
/*!40000 ALTER TABLE `ddmstructurelink` ENABLE KEYS */;


--
-- Definition of table `ddmtemplate`
--

DROP TABLE IF EXISTS `ddmtemplate`;
CREATE TABLE `ddmtemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  PRIMARY KEY (`templateId`),
  UNIQUE KEY `IX_1AA75CE3` (`uuid_`,`groupId`),
  KEY `IX_DB24DDDD` (`groupId`),
  KEY `IX_33BEF579` (`language`),
  KEY `IX_C9757A51` (`structureId`),
  KEY `IX_5BC0E264` (`structureId`,`type_`),
  KEY `IX_5B019FE8` (`structureId`,`type_`,`mode_`),
  KEY `IX_C4F283C8` (`type_`),
  KEY `IX_F2A243A7` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ddmtemplate`
--

/*!40000 ALTER TABLE `ddmtemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddmtemplate` ENABLE KEYS */;


--
-- Definition of table `dlcontent`
--

DROP TABLE IF EXISTS `dlcontent`;
CREATE TABLE `dlcontent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_FDD1AAA8` (`companyId`,`repositoryId`,`path_`,`version`),
  KEY `IX_6A83A66A` (`companyId`,`repositoryId`),
  KEY `IX_EB531760` (`companyId`,`repositoryId`,`path_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlcontent`
--

/*!40000 ALTER TABLE `dlcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlcontent` ENABLE KEYS */;


--
-- Definition of table `dlfileentry`
--

DROP TABLE IF EXISTS `dlfileentry`;
CREATE TABLE `dlfileentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`),
  UNIQUE KEY `IX_5391712` (`groupId`,`folderId`,`name`),
  UNIQUE KEY `IX_ED5CA615` (`groupId`,`folderId`,`title`),
  UNIQUE KEY `IX_BC2E7E6A` (`uuid_`,`groupId`),
  KEY `IX_4CB1B2B4` (`companyId`),
  KEY `IX_F4AF5636` (`groupId`),
  KEY `IX_93CF8193` (`groupId`,`folderId`),
  KEY `IX_29D0AF28` (`groupId`,`folderId`,`fileEntryTypeId`),
  KEY `IX_43261870` (`groupId`,`userId`),
  KEY `IX_D20C434D` (`groupId`,`userId`,`folderId`),
  KEY `IX_64F0FE40` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlfileentry`
--

/*!40000 ALTER TABLE `dlfileentry` DISABLE KEYS */;
INSERT INTO `dlfileentry` (`uuid_`,`fileEntryId`,`groupId`,`companyId`,`userId`,`userName`,`versionUserId`,`versionUserName`,`createDate`,`modifiedDate`,`repositoryId`,`folderId`,`name`,`extension`,`mimeType`,`title`,`description`,`extraSettings`,`fileEntryTypeId`,`version`,`size_`,`readCount`,`smallImageId`,`largeImageId`,`custom1ImageId`,`custom2ImageId`) VALUES 
 ('6d6952d8-7838-4a27-b21c-168ffbfc4e14',10416,10180,10154,10158,'',10158,'','2015-10-14 15:18:01','2015-10-14 15:18:01',10180,0,'1','jpg','image/jpeg','welcome_bg_3.jpg','','',0,'1.0',65684,0,0,0,0,0),
 ('17ced9aa-cb94-412a-9029-030236c5ecbf',10425,10180,10154,10158,'',10158,'','2015-10-14 15:18:01','2015-10-14 15:18:01',10180,0,'2','jpg','image/jpeg','welcome_bg_11.jpg','','',0,'1.0',43583,0,0,0,0,0),
 ('667cbefe-e590-4b63-a90d-0496a7d13f86',10437,10180,10154,10158,'',10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10180,0,'3','jpg','image/jpeg','welcome_bg_12.jpg','','',0,'1.0',46446,0,0,0,0,0),
 ('ff006508-33bd-4ea9-b801-0384d44a95b8',10449,10180,10154,10158,'',10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10180,0,'4','png','image/png','welcome_bg_10.png','','',0,'1.0',27139,0,0,0,0,0),
 ('9c78abce-9e3a-4b5e-9565-900d7ef90d75',10461,10180,10154,10158,'',10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10180,0,'5','jpg','image/jpeg','welcome_bg_2.jpg','','',0,'1.0',72911,0,0,0,0,0),
 ('10d528c0-3e2c-40fe-b3e3-5238f00705f3',10474,10180,10154,10158,'',10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10180,0,'6','jpg','image/jpeg','welcome_bg_9.jpg','','',0,'1.0',50215,0,0,0,0,0),
 ('e69b9dc8-97b5-4fd7-8b7a-365e9aaf2657',10486,10180,10154,10158,'',10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10180,0,'7','jpg','image/jpeg','welcome_bg_4.jpg','','',0,'1.0',62483,0,0,0,0,0),
 ('f17d9618-8414-4732-a2c2-b9b41ba93886',10497,10180,10154,10158,'',10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10180,0,'8','jpg','image/jpeg','welcome_bg_6.jpg','','',0,'1.0',45456,0,0,0,0,0),
 ('b46057a3-2dd5-4a5f-972f-48d11bc683ed',10511,10180,10154,10158,'',10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10180,0,'9','jpg','image/jpeg','welcome_bg_7.jpg','','',0,'1.0',68705,0,0,0,0,0),
 ('e05c1b76-e18b-448f-a73c-da77289c33b2',10527,10180,10154,10158,'',10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10180,0,'10','jpg','image/jpeg','welcome_bg_5.jpg','','',0,'1.0',40022,0,0,0,0,0),
 ('5d505645-2b48-4e24-9816-16331aabbe6f',10538,10180,10154,10158,'',10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10180,0,'11','jpg','image/jpeg','welcome_bg_13.jpg','','',0,'1.0',33632,0,0,0,0,0),
 ('00e303f4-9044-471e-9258-e06652eb8081',10555,10180,10154,10158,'',10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05',10180,0,'12','jpg','image/jpeg','welcome_bg_1.jpg','','',0,'1.0',54277,0,0,0,0,0),
 ('49dfd33c-3221-486e-943b-84c8563383a3',10568,10180,10154,10158,'',10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05',10180,0,'13','jpg','image/jpeg','welcome_bg_8.jpg','','',0,'1.0',43664,0,0,0,0,0);
/*!40000 ALTER TABLE `dlfileentry` ENABLE KEYS */;


--
-- Definition of table `dlfileentrymetadata`
--

DROP TABLE IF EXISTS `dlfileentrymetadata`;
CREATE TABLE `dlfileentrymetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryMetadataId`),
  UNIQUE KEY `IX_7332B44F` (`DDMStructureId`,`fileVersionId`),
  KEY `IX_4F40FE5E` (`fileEntryId`),
  KEY `IX_A44636C9` (`fileEntryId`,`fileVersionId`),
  KEY `IX_F8E90438` (`fileEntryTypeId`),
  KEY `IX_1FE9C04` (`fileVersionId`),
  KEY `IX_D49AB5D1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlfileentrymetadata`
--

/*!40000 ALTER TABLE `dlfileentrymetadata` DISABLE KEYS */;
INSERT INTO `dlfileentrymetadata` (`uuid_`,`fileEntryMetadataId`,`DDMStorageId`,`DDMStructureId`,`fileEntryTypeId`,`fileEntryId`,`fileVersionId`) VALUES 
 ('2d3d182e-1b4d-4dd9-b5e9-b65edf6bdf08',10427,10433,10308,0,10416,10417),
 ('333283fd-6f1c-40f4-98dd-e5a17fd9a896',10445,10446,10308,0,10425,10426),
 ('eaf7ba7c-e545-4251-b93a-8bc2cafcee55',10450,10452,10308,0,10437,10438),
 ('5b851494-239c-4528-ade2-88a9ffdc2063',10463,10464,10308,0,10449,10451),
 ('96a6b8d4-a686-44d0-8f76-cc3376311b41',10473,10476,10308,0,10461,10462),
 ('f16debc1-9090-43eb-9852-6bc85e11c1c1',10485,10488,10308,0,10474,10475),
 ('4c4c5ca3-d1fd-4e1b-901a-c9bb7b7f0e93',10499,10500,10308,0,10486,10487),
 ('2d8f60bf-ecda-4e0b-8679-c41c589be122',10509,10516,10308,0,10497,10498),
 ('eecfe3e3-dffc-48ed-8cdc-ff6f5c86f095',10526,10529,10308,0,10511,10512),
 ('77aae625-ba91-4ad7-882f-44912e51d76b',10546,10547,10308,0,10527,10528),
 ('34b353b2-a9ae-4529-9aa1-a5cd6a72c28f',10556,10557,10308,0,10538,10539),
 ('1b2aefd3-d236-4423-a08d-53d180bc20d9',10567,10570,10308,0,10555,10560),
 ('9e2dd4ba-3a4b-4ccd-82f2-77037e1e825f',10580,10581,10308,0,10568,10569);
/*!40000 ALTER TABLE `dlfileentrymetadata` ENABLE KEYS */;


--
-- Definition of table `dlfileentrytype`
--

DROP TABLE IF EXISTS `dlfileentrytype`;
CREATE TABLE `dlfileentrytype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`),
  UNIQUE KEY `IX_E9B6A85B` (`groupId`,`name`),
  UNIQUE KEY `IX_1399D844` (`uuid_`,`groupId`),
  KEY `IX_4501FD9C` (`groupId`),
  KEY `IX_90724726` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlfileentrytype`
--

/*!40000 ALTER TABLE `dlfileentrytype` DISABLE KEYS */;
INSERT INTO `dlfileentrytype` (`uuid_`,`fileEntryTypeId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`description`) VALUES 
 ('2428c7f4-dab1-4258-8244-f9e909c2fe2a',0,0,0,0,'','2015-10-14 15:11:14','2015-10-14 15:11:14','Basic Document',''),
 ('c0240b18-2902-4e40-822f-025c341e3d7f',10300,10192,10154,10158,'','2015-10-14 15:11:35','2015-10-14 15:11:35','Contract','Legal Contracts'),
 ('50c4e12f-2662-469a-819d-5b757b6b1150',10302,10192,10154,10158,'','2015-10-14 15:11:35','2015-10-14 15:11:35','Marketing Banner','Marketing Banner'),
 ('9ff7aecf-d8ea-4222-bc6e-d73e4f90032d',10304,10192,10154,10158,'','2015-10-14 15:11:36','2015-10-14 15:11:36','Online Training','Online Training'),
 ('7991bf84-c89c-49d1-81ce-97bdf446a7ac',10306,10192,10154,10158,'','2015-10-14 15:11:36','2015-10-14 15:11:36','Sales Presentation','Sales Presentation');
/*!40000 ALTER TABLE `dlfileentrytype` ENABLE KEYS */;


--
-- Definition of table `dlfileentrytypes_ddmstructures`
--

DROP TABLE IF EXISTS `dlfileentrytypes_ddmstructures`;
CREATE TABLE `dlfileentrytypes_ddmstructures` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `structureId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`structureId`),
  KEY `IX_8373EC7C` (`fileEntryTypeId`),
  KEY `IX_F147CF3F` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlfileentrytypes_ddmstructures`
--

/*!40000 ALTER TABLE `dlfileentrytypes_ddmstructures` DISABLE KEYS */;
INSERT INTO `dlfileentrytypes_ddmstructures` (`fileEntryTypeId`,`structureId`) VALUES 
 (10300,10301),
 (10302,10298),
 (10302,10303),
 (10304,10297),
 (10304,10305),
 (10306,10299),
 (10306,10307);
/*!40000 ALTER TABLE `dlfileentrytypes_ddmstructures` ENABLE KEYS */;


--
-- Definition of table `dlfileentrytypes_dlfolders`
--

DROP TABLE IF EXISTS `dlfileentrytypes_dlfolders`;
CREATE TABLE `dlfileentrytypes_dlfolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`),
  KEY `IX_5BB6AD6C` (`fileEntryTypeId`),
  KEY `IX_6E00A2EC` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlfileentrytypes_dlfolders`
--

/*!40000 ALTER TABLE `dlfileentrytypes_dlfolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileentrytypes_dlfolders` ENABLE KEYS */;


--
-- Definition of table `dlfilerank`
--

DROP TABLE IF EXISTS `dlfilerank`;
CREATE TABLE `dlfilerank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`),
  UNIQUE KEY `IX_38F0315` (`companyId`,`userId`,`fileEntryId`),
  KEY `IX_A65A1F8B` (`fileEntryId`),
  KEY `IX_BAFB116E` (`groupId`,`userId`),
  KEY `IX_EED06670` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlfilerank`
--

/*!40000 ALTER TABLE `dlfilerank` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfilerank` ENABLE KEYS */;


--
-- Definition of table `dlfileshortcut`
--

DROP TABLE IF EXISTS `dlfileshortcut`;
CREATE TABLE `dlfileshortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`),
  UNIQUE KEY `IX_FDB4A946` (`uuid_`,`groupId`),
  KEY `IX_B0051937` (`groupId`,`folderId`),
  KEY `IX_ECCE311D` (`groupId`,`folderId`,`status`),
  KEY `IX_4B7247F6` (`toFileEntryId`),
  KEY `IX_4831EBE4` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlfileshortcut`
--

/*!40000 ALTER TABLE `dlfileshortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileshortcut` ENABLE KEYS */;


--
-- Definition of table `dlfileversion`
--

DROP TABLE IF EXISTS `dlfileversion`;
CREATE TABLE `dlfileversion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`),
  UNIQUE KEY `IX_E2815081` (`fileEntryId`,`version`),
  UNIQUE KEY `IX_C99B2650` (`uuid_`,`groupId`),
  KEY `IX_C68DC967` (`fileEntryId`),
  KEY `IX_D47BB14D` (`fileEntryId`,`status`),
  KEY `IX_DFD809D3` (`groupId`,`folderId`,`status`),
  KEY `IX_9BE769ED` (`groupId`,`folderId`,`title`,`version`),
  KEY `IX_4BFABB9A` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlfileversion`
--

/*!40000 ALTER TABLE `dlfileversion` DISABLE KEYS */;
INSERT INTO `dlfileversion` (`uuid_`,`fileVersionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`repositoryId`,`folderId`,`fileEntryId`,`extension`,`mimeType`,`title`,`description`,`changeLog`,`extraSettings`,`fileEntryTypeId`,`version`,`size_`,`status`,`statusByUserId`,`statusByUserName`,`statusDate`) VALUES 
 ('49783a7f-d504-402f-9fad-40b0f12134e6',10417,10180,10154,10158,'','2015-10-14 15:18:01','2015-10-14 15:18:01',10180,0,10416,'jpg','image/jpeg','welcome_bg_3.jpg','','','',0,'1.0',65684,0,10158,'','2015-10-14 15:18:01'),
 ('21bef0bd-95fc-4ba5-b0a8-cceed1778f3d',10426,10180,10154,10158,'','2015-10-14 15:18:01','2015-10-14 15:18:01',10180,0,10425,'jpg','image/jpeg','welcome_bg_11.jpg','','','',0,'1.0',43583,0,10158,'','2015-10-14 15:18:01'),
 ('3473b4f2-abe6-4236-9d58-4e9cd104c8b4',10438,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10180,0,10437,'jpg','image/jpeg','welcome_bg_12.jpg','','','',0,'1.0',46446,0,10158,'','2015-10-14 15:18:02'),
 ('6dc4a9c4-8410-4c11-8dbb-52611e4616b8',10451,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10180,0,10449,'png','image/png','welcome_bg_10.png','','','',0,'1.0',27139,0,10158,'','2015-10-14 15:18:02'),
 ('0ccb89e8-741b-48d1-b8b4-4584a211c520',10462,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10180,0,10461,'jpg','image/jpeg','welcome_bg_2.jpg','','','',0,'1.0',72911,0,10158,'','2015-10-14 15:18:02'),
 ('f58da77f-deac-4a4e-9fc3-dbc5752ff8a3',10475,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10180,0,10474,'jpg','image/jpeg','welcome_bg_9.jpg','','','',0,'1.0',50215,0,10158,'','2015-10-14 15:18:03'),
 ('cd8876e7-6b62-4b7e-b0ef-7f19f389231d',10487,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10180,0,10486,'jpg','image/jpeg','welcome_bg_4.jpg','','','',0,'1.0',62483,0,10158,'','2015-10-14 15:18:03'),
 ('401467c9-0ca5-422c-9928-99b74adb568b',10498,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10180,0,10497,'jpg','image/jpeg','welcome_bg_6.jpg','','','',0,'1.0',45456,0,10158,'','2015-10-14 15:18:04'),
 ('1ea7da42-4738-41ab-abcb-b099bb41f53e',10512,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10180,0,10511,'jpg','image/jpeg','welcome_bg_7.jpg','','','',0,'1.0',68705,0,10158,'','2015-10-14 15:18:04'),
 ('7062e2fc-ac6a-4fe4-91dc-416bd4ed8a20',10528,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10180,0,10527,'jpg','image/jpeg','welcome_bg_5.jpg','','','',0,'1.0',40022,0,10158,'','2015-10-14 15:18:04'),
 ('5b9f8e5c-71f6-4d93-b361-1439762503b6',10539,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10180,0,10538,'jpg','image/jpeg','welcome_bg_13.jpg','','','',0,'1.0',33632,0,10158,'','2015-10-14 15:18:04'),
 ('1f3b2e39-ba9b-44a2-b7c9-531a516cbf9c',10560,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05',10180,0,10555,'jpg','image/jpeg','welcome_bg_1.jpg','','','',0,'1.0',54277,0,10158,'','2015-10-14 15:18:05'),
 ('276f3b3f-0511-4da8-8b14-8eb670a9f3e2',10569,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05',10180,0,10568,'jpg','image/jpeg','welcome_bg_8.jpg','','','',0,'1.0',43664,0,10158,'','2015-10-14 15:18:05');
/*!40000 ALTER TABLE `dlfileversion` ENABLE KEYS */;


--
-- Definition of table `dlfolder`
--

DROP TABLE IF EXISTS `dlfolder`;
CREATE TABLE `dlfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_3CC1DED2` (`uuid_`,`groupId`),
  KEY `IX_A74DB14C` (`companyId`),
  KEY `IX_F2EA1ACE` (`groupId`),
  KEY `IX_49C37475` (`groupId`,`parentFolderId`),
  KEY `IX_2A048EA0` (`groupId`,`parentFolderId`,`mountPoint`),
  KEY `IX_51556082` (`parentFolderId`,`name`),
  KEY `IX_EE29C715` (`repositoryId`),
  KEY `IX_CBC408D8` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlfolder`
--

/*!40000 ALTER TABLE `dlfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfolder` ENABLE KEYS */;


--
-- Definition of table `dlsync`
--

DROP TABLE IF EXISTS `dlsync`;
CREATE TABLE `dlsync` (
  `syncId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileId` bigint(20) DEFAULT NULL,
  `fileUuid` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`syncId`),
  UNIQUE KEY `IX_F9821AB4` (`fileId`),
  KEY `IX_B53EC783` (`companyId`,`modifiedDate`,`repositoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dlsync`
--

/*!40000 ALTER TABLE `dlsync` DISABLE KEYS */;
INSERT INTO `dlsync` (`syncId`,`companyId`,`createDate`,`modifiedDate`,`fileId`,`fileUuid`,`repositoryId`,`parentFolderId`,`name`,`description`,`event`,`type_`,`version`) VALUES 
 (10423,10154,'2015-10-14 15:18:01','2015-10-14 15:18:01',10416,'6d6952d8-7838-4a27-b21c-168ffbfc4e14',10180,0,'welcome_bg_3.jpg','','add','file','1.0'),
 (10434,10154,'2015-10-14 15:18:01','2015-10-14 15:18:01',10425,'17ced9aa-cb94-412a-9029-030236c5ecbf',10180,0,'welcome_bg_11.jpg','','add','file','1.0'),
 (10444,10154,'2015-10-14 15:18:02','2015-10-14 15:18:02',10437,'667cbefe-e590-4b63-a90d-0496a7d13f86',10180,0,'welcome_bg_12.jpg','','add','file','1.0'),
 (10460,10154,'2015-10-14 15:18:02','2015-10-14 15:18:02',10449,'ff006508-33bd-4ea9-b801-0384d44a95b8',10180,0,'welcome_bg_10.png','','add','file','1.0'),
 (10472,10154,'2015-10-14 15:18:02','2015-10-14 15:18:02',10461,'9c78abce-9e3a-4b5e-9565-900d7ef90d75',10180,0,'welcome_bg_2.jpg','','add','file','1.0'),
 (10484,10154,'2015-10-14 15:18:03','2015-10-14 15:18:03',10474,'10d528c0-3e2c-40fe-b3e3-5238f00705f3',10180,0,'welcome_bg_9.jpg','','add','file','1.0'),
 (10496,10154,'2015-10-14 15:18:03','2015-10-14 15:18:03',10486,'e69b9dc8-97b5-4fd7-8b7a-365e9aaf2657',10180,0,'welcome_bg_4.jpg','','add','file','1.0'),
 (10508,10154,'2015-10-14 15:18:04','2015-10-14 15:18:04',10497,'f17d9618-8414-4732-a2c2-b9b41ba93886',10180,0,'welcome_bg_6.jpg','','add','file','1.0'),
 (10525,10154,'2015-10-14 15:18:04','2015-10-14 15:18:04',10511,'b46057a3-2dd5-4a5f-972f-48d11bc683ed',10180,0,'welcome_bg_7.jpg','','add','file','1.0'),
 (10537,10154,'2015-10-14 15:18:04','2015-10-14 15:18:04',10527,'e05c1b76-e18b-448f-a73c-da77289c33b2',10180,0,'welcome_bg_5.jpg','','add','file','1.0'),
 (10545,10154,'2015-10-14 15:18:04','2015-10-14 15:18:04',10538,'5d505645-2b48-4e24-9816-16331aabbe6f',10180,0,'welcome_bg_13.jpg','','add','file','1.0'),
 (10566,10154,'2015-10-14 15:18:05','2015-10-14 15:18:05',10555,'00e303f4-9044-471e-9258-e06652eb8081',10180,0,'welcome_bg_1.jpg','','add','file','1.0'),
 (10579,10154,'2015-10-14 15:18:05','2015-10-14 15:18:05',10568,'49dfd33c-3221-486e-943b-84c8563383a3',10180,0,'welcome_bg_8.jpg','','add','file','1.0');
/*!40000 ALTER TABLE `dlsync` ENABLE KEYS */;


--
-- Definition of table `emailaddress`
--

DROP TABLE IF EXISTS `emailaddress`;
CREATE TABLE `emailaddress` (
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`emailAddressId`),
  KEY `IX_1BB072CA` (`companyId`),
  KEY `IX_49D2DEC4` (`companyId`,`classNameId`),
  KEY `IX_551A519F` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_2A2CB130` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_7B43CD8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailaddress`
--

/*!40000 ALTER TABLE `emailaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailaddress` ENABLE KEYS */;


--
-- Definition of table `expandocolumn`
--

DROP TABLE IF EXISTS `expandocolumn`;
CREATE TABLE `expandocolumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext,
  PRIMARY KEY (`columnId`),
  UNIQUE KEY `IX_FEFC8DA7` (`tableId`,`name`),
  KEY `IX_A8C0CBE8` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expandocolumn`
--

/*!40000 ALTER TABLE `expandocolumn` DISABLE KEYS */;
INSERT INTO `expandocolumn` (`columnId`,`companyId`,`tableId`,`name`,`type_`,`defaultData`,`typeSettings`) VALUES 
 (10414,10154,10413,'client-id',15,'',''),
 (10912,10154,10802,'DNI',16,'','index-type=0\ndisplay-type=text-box\nhidden=0\nvisible-with-update-permission=0\n');
/*!40000 ALTER TABLE `expandocolumn` ENABLE KEYS */;


--
-- Definition of table `expandorow`
--

DROP TABLE IF EXISTS `expandorow`;
CREATE TABLE `expandorow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`),
  UNIQUE KEY `IX_81EFBFF5` (`tableId`,`classPK`),
  KEY `IX_D3F5D7AE` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expandorow`
--

/*!40000 ALTER TABLE `expandorow` DISABLE KEYS */;
INSERT INTO `expandorow` (`rowId_`,`companyId`,`tableId`,`classPK`) VALUES 
 (10910,10154,10802,10901),
 (10940,10154,10802,10931),
 (10962,10154,10802,10953),
 (10985,10154,10802,10976),
 (10997,10154,10802,10988),
 (11008,10154,10802,10999);
/*!40000 ALTER TABLE `expandorow` ENABLE KEYS */;


--
-- Definition of table `expandotable`
--

DROP TABLE IF EXISTS `expandotable`;
CREATE TABLE `expandotable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`),
  UNIQUE KEY `IX_37562284` (`companyId`,`classNameId`,`name`),
  KEY `IX_B5AE8A85` (`companyId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expandotable`
--

/*!40000 ALTER TABLE `expandotable` DISABLE KEYS */;
INSERT INTO `expandotable` (`tableId`,`companyId`,`classNameId`,`name`) VALUES 
 (10802,10154,10005,'CUSTOM_FIELDS'),
 (10413,10154,10005,'MP');
/*!40000 ALTER TABLE `expandotable` ENABLE KEYS */;


--
-- Definition of table `expandovalue`
--

DROP TABLE IF EXISTS `expandovalue`;
CREATE TABLE `expandovalue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`valueId`),
  UNIQUE KEY `IX_9DDD21E5` (`columnId`,`rowId_`),
  UNIQUE KEY `IX_D27B03E7` (`tableId`,`columnId`,`classPK`),
  KEY `IX_B29FEF17` (`classNameId`,`classPK`),
  KEY `IX_F7DD0987` (`columnId`),
  KEY `IX_9112A7A0` (`rowId_`),
  KEY `IX_F0566A77` (`tableId`),
  KEY `IX_1BD3F4C` (`tableId`,`classPK`),
  KEY `IX_CA9AFB7C` (`tableId`,`columnId`),
  KEY `IX_B71E92D5` (`tableId`,`rowId_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expandovalue`
--

/*!40000 ALTER TABLE `expandovalue` DISABLE KEYS */;
INSERT INTO `expandovalue` (`valueId`,`companyId`,`tableId`,`columnId`,`rowId_`,`classNameId`,`classPK`,`data_`) VALUES 
 (10913,10154,10802,10912,10910,10005,10901,'12345678'),
 (10941,10154,10802,10912,10940,10005,10931,'12345679'),
 (10963,10154,10802,10912,10962,10005,10953,'123456787'),
 (10986,10154,10802,10912,10985,10005,10976,'98765432'),
 (10998,10154,10802,10912,10997,10005,10988,'12341234'),
 (11009,10154,10802,10912,11008,10005,10999,'45672345');
/*!40000 ALTER TABLE `expandovalue` ENABLE KEYS */;


--
-- Definition of table `group_`
--

DROP TABLE IF EXISTS `group_`;
CREATE TABLE `group_` (
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `friendlyURL` varchar(100) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `IX_D0D5E397` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_5DE0BE11` (`companyId`,`classNameId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5BDDB872` (`companyId`,`friendlyURL`),
  UNIQUE KEY `IX_BBCA55B` (`companyId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5AA68501` (`companyId`,`name`),
  KEY `IX_ABA5CEC2` (`companyId`),
  KEY `IX_16218A38` (`liveGroupId`),
  KEY `IX_7B590A7A` (`type_`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_`
--

/*!40000 ALTER TABLE `group_` DISABLE KEYS */;
INSERT INTO `group_` (`groupId`,`companyId`,`creatorUserId`,`classNameId`,`classPK`,`parentGroupId`,`liveGroupId`,`name`,`description`,`type_`,`typeSettings`,`friendlyURL`,`site`,`active_`) VALUES 
 (10172,10154,10158,10001,10172,0,0,'Control Panel','',3,'','/control_panel',1,1),
 (10180,10154,10158,10001,10180,0,0,'Guest','',1,'mergeGuestPublicPages=false\n','/guest',1,1),
 (10189,10154,10158,10188,10158,0,0,'User Personal Site','',3,'','/personal_site',0,1),
 (10192,10154,10158,10021,10154,0,0,'10154','',0,'','/null',0,1),
 (10198,10154,10196,10005,10196,0,0,'10196','',0,'','/test',0,1),
 (10310,10154,10158,10027,10309,0,0,'10309','',0,'','/template-10309',0,1),
 (10320,10154,10158,10027,10319,0,0,'10319','',0,'','/template-10319',0,1),
 (10329,10154,10158,10027,10328,0,0,'10328','',0,'','/template-10328',0,1),
 (10338,10154,10158,10031,10337,0,0,'10337','',0,'','/template-10337',0,1),
 (10364,10154,10158,10031,10363,0,0,'10363','',0,'','/template-10363',0,1),
 (10599,10154,10158,10031,10598,0,0,'10598','',0,'','/template-10598',0,1),
 (10820,10154,10196,10006,10819,0,0,'10819','',0,'','/10819',0,1),
 (10824,10154,10196,10006,10823,0,0,'10823','',0,'','/10823',0,1),
 (10828,10154,10196,10006,10827,0,0,'10827','',0,'','/10827',0,1),
 (10832,10154,10196,10006,10831,0,0,'10831','',0,'','/10831',0,1),
 (10903,10154,10901,10005,10901,0,0,'10901','',0,'','/iquiroz',0,1),
 (10933,10154,10931,10005,10931,0,0,'10931','',0,'','/kdextre',0,1),
 (10955,10154,10953,10005,10953,0,0,'10953','',0,'','/mlopera',0,1),
 (10978,10154,10976,10005,10976,0,0,'10976','',0,'','/avaras',0,1),
 (10990,10154,10988,10005,10988,0,0,'10988','',0,'','/ddelgado',0,1),
 (11001,10154,10999,10005,10999,0,0,'10999','',0,'','/rmelgarejo',0,1);
/*!40000 ALTER TABLE `group_` ENABLE KEYS */;


--
-- Definition of table `groups_orgs`
--

DROP TABLE IF EXISTS `groups_orgs`;
CREATE TABLE `groups_orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`),
  KEY `IX_75267DCA` (`groupId`),
  KEY `IX_6BBB7682` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups_orgs`
--

/*!40000 ALTER TABLE `groups_orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_orgs` ENABLE KEYS */;


--
-- Definition of table `groups_permissions`
--

DROP TABLE IF EXISTS `groups_permissions`;
CREATE TABLE `groups_permissions` (
  `groupId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`permissionId`),
  KEY `IX_C48736B` (`groupId`),
  KEY `IX_EC97689D` (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups_permissions`
--

/*!40000 ALTER TABLE `groups_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_permissions` ENABLE KEYS */;


--
-- Definition of table `groups_roles`
--

DROP TABLE IF EXISTS `groups_roles`;
CREATE TABLE `groups_roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`),
  KEY `IX_84471FD2` (`groupId`),
  KEY `IX_3103EF3D` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups_roles`
--

/*!40000 ALTER TABLE `groups_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_roles` ENABLE KEYS */;


--
-- Definition of table `groups_usergroups`
--

DROP TABLE IF EXISTS `groups_usergroups`;
CREATE TABLE `groups_usergroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`),
  KEY `IX_31FB749A` (`groupId`),
  KEY `IX_3B69160F` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups_usergroups`
--

/*!40000 ALTER TABLE `groups_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_usergroups` ENABLE KEYS */;


--
-- Definition of table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `text_` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `IX_6A925A4D` (`size_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;


--
-- Definition of table `journalarticle`
--

DROP TABLE IF EXISTS `journalarticle`;
CREATE TABLE `journalarticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_85C52EEC` (`groupId`,`articleId`,`version`),
  UNIQUE KEY `IX_3463D95B` (`uuid_`,`groupId`),
  KEY `IX_DFF98523` (`companyId`),
  KEY `IX_323DF109` (`companyId`,`status`),
  KEY `IX_3D070845` (`companyId`,`version`),
  KEY `IX_E82F322B` (`companyId`,`version`,`status`),
  KEY `IX_9356F865` (`groupId`),
  KEY `IX_68C0F69C` (`groupId`,`articleId`),
  KEY `IX_4D5CD982` (`groupId`,`articleId`,`status`),
  KEY `IX_9CE6E0FA` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_A2534AC2` (`groupId`,`classNameId`,`layoutUuid`),
  KEY `IX_91E78C35` (`groupId`,`classNameId`,`structureId`),
  KEY `IX_F43B9FF2` (`groupId`,`classNameId`,`templateId`),
  KEY `IX_3C028C1E` (`groupId`,`layoutUuid`),
  KEY `IX_301D024B` (`groupId`,`status`),
  KEY `IX_2E207659` (`groupId`,`structureId`),
  KEY `IX_8DEAE14E` (`groupId`,`templateId`),
  KEY `IX_22882D02` (`groupId`,`urlTitle`),
  KEY `IX_D2D249E8` (`groupId`,`urlTitle`,`status`),
  KEY `IX_F0A26B29` (`groupId`,`version`,`status`),
  KEY `IX_33F49D16` (`resourcePrimKey`),
  KEY `IX_3E2765FC` (`resourcePrimKey`,`status`),
  KEY `IX_EF9B7028` (`smallImageId`),
  KEY `IX_8E8710D9` (`structureId`),
  KEY `IX_9106F6CE` (`templateId`),
  KEY `IX_F029602F` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journalarticle`
--

/*!40000 ALTER TABLE `journalarticle` DISABLE KEYS */;
INSERT INTO `journalarticle` (`uuid_`,`id_`,`resourcePrimKey`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`articleId`,`version`,`title`,`urlTitle`,`description`,`content`,`type_`,`structureId`,`templateId`,`layoutUuid`,`displayDate`,`expirationDate`,`reviewDate`,`indexable`,`smallImage`,`smallImageId`,`smallImageURL`,`status`,`statusByUserId`,`statusByUserName`,`statusDate`) VALUES 
 ('98f064ec-436b-4dac-9bf2-cf8ba63ba091',10582,10585,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:07',0,0,'WHO-IS-USING-LIFERAY',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Who Is Using Liferay</Title></root>','who-is-using-liferay','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<static-content language-id=\"es_ES\"><![CDATA[<style type=\"text/css\">\n	.content-area.selected {\n		background: url(/documents/10180/0/welcome_bg_8.jpg/49dfd33c-3221-486e-943b-84c8563383a3?version=1.0&t=1444835885424) 100% 0 no-repeat;\n	}\n</style>\n\n<div class=\"navigation-wrapper\">\n	<header class=\"content-head content-head-liferay-portal\">\n		<hgroup>\n			<h1>\n				Liferay helps you build feature-rich, easy-to-use web applications quickly.\n			</h1>\n\n			<hr />\n		</hgroup>\n\n		<p>\n			Here are some of our customers from around the globe:\n		</p>\n\n		<ul class=\"left\">\n			<li><span>Rolex</span></li>\n			<li><span>Bugaboo</span></li>\n			<li><span>Deluxe Corporation</span></li>\n			<li><span>Domino\'s Pizza</span></li>\n			<li><span>BASF</span></li>\n		</ul>\n\n		<ul class=\"right\">\n			<li><span>Honda</span></li>\n			<li><span>GE Capital</span></li>\n			<li><span>Sesame Street</span></li>\n			<li><span>China Mobile</span></li>\n			<li><span>York University</span></li>\n		</ul>\n	</header>\n\n	<div class=\"content-area selected\">\n		<a href=\"//www.liferay.com/users?wh=8\" id=\"marketplace\">&nbsp;</a>\n	</div>\n</div>]]></static-content>\n</root>','general','','','','2010-02-01 00:00:00',NULL,NULL,1,0,10586,'',0,10158,'','2015-10-14 15:18:07');
/*!40000 ALTER TABLE `journalarticle` ENABLE KEYS */;


--
-- Definition of table `journalarticleimage`
--

DROP TABLE IF EXISTS `journalarticleimage`;
CREATE TABLE `journalarticleimage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`articleImageId`),
  UNIQUE KEY `IX_103D6207` (`groupId`,`articleId`,`version`,`elInstanceId`,`elName`,`languageId`),
  KEY `IX_3B51BB68` (`groupId`),
  KEY `IX_158B526F` (`groupId`,`articleId`,`version`),
  KEY `IX_D4121315` (`tempImage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journalarticleimage`
--

/*!40000 ALTER TABLE `journalarticleimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalarticleimage` ENABLE KEYS */;


--
-- Definition of table `journalarticleresource`
--

DROP TABLE IF EXISTS `journalarticleresource`;
CREATE TABLE `journalarticleresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_88DF994A` (`groupId`,`articleId`),
  UNIQUE KEY `IX_84AB0309` (`uuid_`,`groupId`),
  KEY `IX_F8433677` (`groupId`),
  KEY `IX_DCD1FAC1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journalarticleresource`
--

/*!40000 ALTER TABLE `journalarticleresource` DISABLE KEYS */;
INSERT INTO `journalarticleresource` (`uuid_`,`resourcePrimKey`,`groupId`,`articleId`) VALUES 
 ('d6cae800-8039-4c76-9cda-300cb2e06b6c',10585,10180,'WHO-IS-USING-LIFERAY');
/*!40000 ALTER TABLE `journalarticleresource` ENABLE KEYS */;


--
-- Definition of table `journalcontentsearch`
--

DROP TABLE IF EXISTS `journalcontentsearch`;
CREATE TABLE `journalcontentsearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contentSearchId`),
  UNIQUE KEY `IX_C3AA93B8` (`groupId`,`privateLayout`,`layoutId`,`portletId`,`articleId`),
  KEY `IX_9207CB31` (`articleId`),
  KEY `IX_6838E427` (`groupId`,`articleId`),
  KEY `IX_20962903` (`groupId`,`privateLayout`),
  KEY `IX_7CC7D73E` (`groupId`,`privateLayout`,`articleId`),
  KEY `IX_B3B318DC` (`groupId`,`privateLayout`,`layoutId`),
  KEY `IX_7ACC74C9` (`groupId`,`privateLayout`,`layoutId`,`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journalcontentsearch`
--

/*!40000 ALTER TABLE `journalcontentsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalcontentsearch` ENABLE KEYS */;


--
-- Definition of table `journalfeed`
--

DROP TABLE IF EXISTS `journalfeed`;
CREATE TABLE `journalfeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedType` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_65576CBC` (`groupId`,`feedId`),
  UNIQUE KEY `IX_39031F51` (`uuid_`,`groupId`),
  KEY `IX_35A2DB2F` (`groupId`),
  KEY `IX_50C36D79` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journalfeed`
--

/*!40000 ALTER TABLE `journalfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalfeed` ENABLE KEYS */;


--
-- Definition of table `journalstructure`
--

DROP TABLE IF EXISTS `journalstructure`;
CREATE TABLE `journalstructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `parentStructureId` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_AB6E9996` (`groupId`,`structureId`),
  UNIQUE KEY `IX_42E86E58` (`uuid_`,`groupId`),
  KEY `IX_B97F5608` (`groupId`),
  KEY `IX_CA0BD48C` (`groupId`,`parentStructureId`),
  KEY `IX_4FA67B72` (`parentStructureId`),
  KEY `IX_8831E4FC` (`structureId`),
  KEY `IX_6702CA92` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journalstructure`
--

/*!40000 ALTER TABLE `journalstructure` DISABLE KEYS */;
INSERT INTO `journalstructure` (`uuid_`,`id_`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`structureId`,`parentStructureId`,`name`,`description`,`xsd`) VALUES 
 ('8f954c26-6004-4676-860e-95fcbe564a72',10594,10180,10154,10158,'','2015-10-14 15:18:07','2015-10-14 15:18:07','10593','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome Content Structure</Name></root>','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"page-title\" type=\"text\" index-type=\"\" repeatable=\"false\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Sub Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element name=\"links\" type=\"text\" index-type=\"\" repeatable=\"true\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Link Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n		<dynamic-element name=\"bg-image\" type=\"document_library\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Background Image]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"action-link-url\" type=\"text\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Call to Action URL]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n	</dynamic-element>\n</root>');
/*!40000 ALTER TABLE `journalstructure` ENABLE KEYS */;


--
-- Definition of table `journaltemplate`
--

DROP TABLE IF EXISTS `journaltemplate`;
CREATE TABLE `journaltemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsl` longtext,
  `langType` varchar(75) DEFAULT NULL,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_E802AA3C` (`groupId`,`templateId`),
  UNIQUE KEY `IX_62D1B3AD` (`uuid_`,`groupId`),
  KEY `IX_77923653` (`groupId`),
  KEY `IX_1701CB2B` (`groupId`,`structureId`),
  KEY `IX_25FFB6FA` (`smallImageId`),
  KEY `IX_45F5A7C7` (`structureId`),
  KEY `IX_1B12CA20` (`templateId`),
  KEY `IX_2857419D` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journaltemplate`
--

/*!40000 ALTER TABLE `journaltemplate` DISABLE KEYS */;
INSERT INTO `journaltemplate` (`uuid_`,`id_`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`templateId`,`structureId`,`name`,`description`,`xsl`,`langType`,`cacheable`,`smallImage`,`smallImageId`,`smallImageURL`) VALUES 
 ('50165b1f-024d-4ef7-82d3-d22c96122de8',10596,10180,10154,10158,'','2015-10-14 15:18:07','2015-10-14 15:18:07','10595','10593','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome Content Template</Name></root>','','<div class=\"navigation-wrapper\">\n	<header class=\"content-head content-head-liferay-portal\">\n		<hgroup>\n			<h1>$page-title.data</h1>\n\n			<hr />\n		</hgroup>\n\n		<nav>\n			<ul id=\"contentNav\">\n				#foreach($link in $links.siblings)\n					#if($velocityCount == 1)\n						<li class=\"selected\"><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#else\n						<li><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#end\n				#end\n			</ul>\n		</nav>\n	</header>\n\n	<div class=\"content-area-wrapper\">\n		#foreach($link in $links.siblings)\n			#if($velocityCount == 1)\n				<style type=\"text/css\">\n					.content-area {\n						background: url($link.bg-image.data) 100% 0 no-repeat;\n					}\n				</style>\n\n				<div class=\"content-area selected\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#else\n				<div class=\"content-area\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#end\n		#end\n	</div>\n</div>\n\n<script charset=\"utf-8\" type=\"text/javascript\">\n	AUI().ready(\n		\'aui-base\',\n		function(A) {\n			var hash = null;\n\n			var selectContent = function(href) {\n				var div = A.one(href);\n\n				if (div) {\n					div.radioClass(\'selected\');\n\n					div.setStyle(\'background\', \'url(\' + div.attr(\'data-bannerImage\')+\') 100% 0 no-repeat\');\n\n					hash = href;\n				}\n			};\n\n			var selectNavItem = function(hash) {\n				if (hash) {\n					A.one(\'#contentNav a[href$=\"\'+ hash +\'\"]\').ancestor().radioClass(\'selected\');\n				}\n			};\n\n			var select = function(hash) {\n				selectContent(hash);\n				selectNavItem(hash);\n			};\n\n			var currentHash = location.hash;\n\n			if (currentHash) {\n				select(currentHash);\n			}\n\n			setInterval(\n				function() {\n					var currentHash = location.hash;\n\n					if (currentHash != hash) {\n						select(currentHash);\n					}\n				},\n				200\n			);\n\n			A.one(\'#contentNav\').delegate(\n				\'click\',\n				function(event) {\n					var a = event.currentTarget;\n\n					a.ancestor().radioClass(\'selected\');\n\n					selectContent(a.attr(\'hash\'));\n				},\n				\'a\'\n			);\n		}\n	);\n</script>','vm',0,0,10597,'');
/*!40000 ALTER TABLE `journaltemplate` ENABLE KEYS */;


--
-- Definition of table `layout`
--

DROP TABLE IF EXISTS `layout`;
CREATE TABLE `layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`plid`),
  UNIQUE KEY `IX_BC2C4231` (`groupId`,`privateLayout`,`friendlyURL`),
  UNIQUE KEY `IX_7162C27C` (`groupId`,`privateLayout`,`layoutId`),
  UNIQUE KEY `IX_CED31606` (`uuid_`,`groupId`),
  KEY `IX_C7FBC998` (`companyId`),
  KEY `IX_C099D61A` (`groupId`),
  KEY `IX_705F5AA3` (`groupId`,`privateLayout`),
  KEY `IX_6DE88B06` (`groupId`,`privateLayout`,`parentLayoutId`),
  KEY `IX_8CE8C0D9` (`groupId`,`privateLayout`,`sourcePrototypeLayoutUuid`),
  KEY `IX_1A1B61D2` (`groupId`,`privateLayout`,`type_`),
  KEY `IX_23922F7D` (`iconImageId`),
  KEY `IX_B529BFD3` (`layoutPrototypeUuid`),
  KEY `IX_D0822724` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layout`
--

/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` (`uuid_`,`plid`,`groupId`,`companyId`,`createDate`,`modifiedDate`,`privateLayout`,`layoutId`,`parentLayoutId`,`name`,`title`,`description`,`keywords`,`robots`,`type_`,`typeSettings`,`hidden_`,`friendlyURL`,`iconImage`,`iconImageId`,`themeId`,`colorSchemeId`,`wapThemeId`,`wapColorSchemeId`,`css`,`priority`,`layoutPrototypeUuid`,`layoutPrototypeLinkEnabled`,`sourcePrototypeLayoutUuid`) VALUES 
 ('930e0196-c8ce-4b07-a5de-a3ab6bf73b49',10175,10172,10154,'2015-10-14 15:11:30','2015-10-14 15:11:30',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','',0,'/manage',0,0,'','','','','',0,'',0,''),
 ('af6f4759-ae87-4442-82d3-2450f2717016',10183,10180,10154,'2015-10-14 15:11:31','2015-10-16 20:28:23',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,es_ES,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">Welcome</Name><Name language-id=\"es_ES\">Inicio</Name></root>','','','','','portlet','column-3-customizable=false\nsitemap-changefreq=daily\nshow-alternate-links=true\nlayout-template-id=1_2_columns_i\nsitemap-include=1\ncolumn-3=58\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-4-customizable=false\ncolumn-1-customizable=false\ncolumn-1=47,\n',0,'/inicio',0,0,'classic','','classic','','',0,'',0,''),
 ('b6878bd7-2ab1-4309-9eec-abcaca19085c',10313,10310,10154,'2015-10-14 15:11:36','2015-10-14 15:11:37',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=148_INSTANCE_2IL2TR3qoXrh,114,\ncolumn-1=33,\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('8ffc8b93-b571-423c-adc3-1761b5e34659',10323,10320,10154,'2015-10-14 15:11:37','2015-10-14 15:11:38',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','default-asset-publisher-portlet-id=101_INSTANCE_XcvsWDoVD0O3\nlayout-template-id=2_columns_ii\ncolumn-2=3,101_INSTANCE_XcvsWDoVD0O3,\ncolumn-1=141_INSTANCE_w0QU5p7BDqDf,122_INSTANCE_dkKboHn2hQ5j,\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('bff8e31c-67f0-43ed-8dd1-366d7f42436d',10332,10329,10154,'2015-10-14 15:11:38','2015-10-14 15:11:39',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_wOEve7RHSXZr,141_INSTANCE_gUyp94hiLmPZ,\ncolumn-1=36,\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('2d7fd2d4-60a8-4bed-8ecd-741abc3d8ea0',10346,10338,10154,'2015-10-14 15:11:41','2015-10-14 15:11:41',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=3,59_INSTANCE_rJ7sv4CrpQ5Y,180,\ncolumn-1=19,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('e7a6abb3-6d74-4fbc-8311-1f64f4fc75ba',10352,10338,10154,'2015-10-14 15:11:41','2015-10-14 15:11:42',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_LxJxMDBkhxw0,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',1,'',0,''),
 ('39db81ec-0931-4999-9898-bfeeeff32b52',10358,10338,10154,'2015-10-14 15:11:43','2015-10-14 15:11:43',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_sajdUTRJn6eO,148_INSTANCE_Nwxek6JCjZpr,\ncolumn-1=36,\n',0,'/wiki',0,0,'','','','','',2,'',0,''),
 ('ac8eeb6b-8b88-4df5-b118-418cfa033cd8',10372,10364,10154,'2015-10-14 15:11:44','2015-10-14 15:11:45',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_i\ncolumn-2=3,82,101_INSTANCE_ZRuCZ4qCrf5Y,\ncolumn-1=116,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('fec922c1-0264-4b27-8887-209f62c96539',10380,10364,10154,'2015-10-14 15:11:45','2015-10-14 15:11:45',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',1,'',0,''),
 ('c268abb4-54a5-41a2-a3ff-4e28d33f2f97',10386,10364,10154,'2015-10-14 15:11:46','2015-10-14 15:11:46',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_h7qJxIsD0dvs,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',2,'',0,''),
 ('89634847-e1f2-426e-8a6e-76000f4981b0',10392,10364,10154,'2015-10-14 15:11:46','2015-10-14 15:11:47',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=39_INSTANCE_1pN3d5jBwHgF,\ncolumn-1=39_INSTANCE_UU6mQpkw3Gqc,\n',0,'/news',0,0,'','','','','',3,'',0,''),
 ('15b0b285-5339-4b4b-8c19-274f87a6998d',10510,10198,10154,'2015-10-14 15:18:04','2015-10-14 15:18:04',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('8df92b98-cef5-4027-b54f-7de201505929',10607,10599,10154,'2015-10-14 15:18:09','2015-10-14 15:18:09',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=47,\ncolumn-1=58,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('37a3d24d-3d9c-47e6-9ff5-f935be91bce4',10914,10903,10154,'2015-10-14 21:54:17','2015-10-14 21:54:17',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('79aab62e-148c-4b7f-afaf-76e34322cb22',10942,10933,10154,'2015-10-14 22:10:31','2015-10-14 22:10:31',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('f4ff9acf-0eae-4bde-b907-30abea3e6baa',10947,10933,10154,'2015-10-14 22:10:31','2015-10-14 22:10:31',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=33,\ncolumn-1=82,3,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('ca3f60fa-a16d-40c8-b405-d55ad77d9409',10964,10955,10154,'2015-10-14 22:24:35','2015-10-14 22:24:35',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('d4218bf4-f1ab-4964-affc-cd5cc99eee6a',10969,10955,10154,'2015-10-14 22:24:35','2015-10-14 22:24:35',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=33,\ncolumn-1=82,3,\n',0,'/home',0,0,'','','','','',0,'',0,'');
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;


--
-- Definition of table `layoutbranch`
--

DROP TABLE IF EXISTS `layoutbranch`;
CREATE TABLE `layoutbranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LayoutBranchId`),
  UNIQUE KEY `IX_FD57097D` (`layoutSetBranchId`,`plid`,`name`),
  KEY `IX_6C226433` (`layoutSetBranchId`),
  KEY `IX_2C42603E` (`layoutSetBranchId`,`plid`),
  KEY `IX_A705FF94` (`layoutSetBranchId`,`plid`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layoutbranch`
--

/*!40000 ALTER TABLE `layoutbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutbranch` ENABLE KEYS */;


--
-- Definition of table `layoutprototype`
--

DROP TABLE IF EXISTS `layoutprototype`;
CREATE TABLE `layoutprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`),
  KEY `IX_30616AAA` (`companyId`),
  KEY `IX_557A639F` (`companyId`,`active_`),
  KEY `IX_CEF72136` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layoutprototype`
--

/*!40000 ALTER TABLE `layoutprototype` DISABLE KEYS */;
INSERT INTO `layoutprototype` (`uuid_`,`layoutPrototypeId`,`companyId`,`name`,`description`,`settings_`,`active_`) VALUES 
 ('c93fcc40-7685-4fea-a6df-e5c4ca0bc6f6',10309,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),
 ('498fdc1c-9326-4081-8641-69a017e158e4',10319,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),
 ('57d9e4c9-d804-4ed7-bdd5-3f86fd9a0ac1',10328,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1);
/*!40000 ALTER TABLE `layoutprototype` ENABLE KEYS */;


--
-- Definition of table `layoutrevision`
--

DROP TABLE IF EXISTS `layoutrevision`;
CREATE TABLE `layoutrevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`layoutRevisionId`),
  KEY `IX_43E8286A` (`head`,`plid`),
  KEY `IX_314B621A` (`layoutSetBranchId`),
  KEY `IX_A9AC086E` (`layoutSetBranchId`,`head`),
  KEY `IX_E10AC39` (`layoutSetBranchId`,`head`,`plid`),
  KEY `IX_13984800` (`layoutSetBranchId`,`layoutBranchId`,`plid`),
  KEY `IX_4A84AF43` (`layoutSetBranchId`,`parentLayoutRevisionId`,`plid`),
  KEY `IX_B7B914E5` (`layoutSetBranchId`,`plid`),
  KEY `IX_70DA9ECB` (`layoutSetBranchId`,`plid`,`status`),
  KEY `IX_7FFAE700` (`layoutSetBranchId`,`status`),
  KEY `IX_9329C9D6` (`plid`),
  KEY `IX_8EC3D2BC` (`plid`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layoutrevision`
--

/*!40000 ALTER TABLE `layoutrevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutrevision` ENABLE KEYS */;


--
-- Definition of table `layoutset`
--

DROP TABLE IF EXISTS `layoutset`;
CREATE TABLE `layoutset` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetId`),
  UNIQUE KEY `IX_48550691` (`groupId`,`privateLayout`),
  KEY `IX_A40B8BEC` (`groupId`),
  KEY `IX_72BBA8B7` (`layoutSetPrototypeUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layoutset`
--

/*!40000 ALTER TABLE `layoutset` DISABLE KEYS */;
INSERT INTO `layoutset` (`layoutSetId`,`groupId`,`companyId`,`createDate`,`modifiedDate`,`privateLayout`,`logo`,`logoId`,`themeId`,`colorSchemeId`,`wapThemeId`,`wapColorSchemeId`,`css`,`pageCount`,`settings_`,`layoutSetPrototypeUuid`,`layoutSetPrototypeLinkEnabled`) VALUES 
 (10173,10172,10154,'2015-10-14 15:11:30','2015-10-14 15:11:31',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10174,10172,10154,'2015-10-14 15:11:30','2015-10-14 15:11:30',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10181,10180,10154,'2015-10-14 15:11:31','2015-10-14 15:11:31',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10182,10180,10154,'2015-10-14 15:11:31','2015-10-16 19:30:09',0,0,0,'classic','01','mobile','01','',1,'lfr-theme:regular:portlet-setup-show-borders-default=false\n','',0),
 (10190,10189,10154,'2015-10-14 15:11:31','2015-10-14 15:11:31',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10191,10189,10154,'2015-10-14 15:11:31','2015-10-14 15:11:31',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10193,10192,10154,'2015-10-14 15:11:31','2015-10-14 15:11:31',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10194,10192,10154,'2015-10-14 15:11:31','2015-10-14 15:11:31',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10199,10198,10154,'2015-10-14 15:11:31','2015-10-14 15:18:04',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10200,10198,10154,'2015-10-14 15:11:31','2015-10-16 14:59:29',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10311,10310,10154,'2015-10-14 15:11:36','2015-10-14 15:11:36',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10312,10310,10154,'2015-10-14 15:11:36','2015-10-14 15:11:36',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10321,10320,10154,'2015-10-14 15:11:37','2015-10-14 15:11:37',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10322,10320,10154,'2015-10-14 15:11:37','2015-10-14 15:11:37',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10330,10329,10154,'2015-10-14 15:11:38','2015-10-14 15:11:38',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10331,10329,10154,'2015-10-14 15:11:38','2015-10-14 15:11:38',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10339,10338,10154,'2015-10-14 15:11:39','2015-10-14 15:11:43',1,0,0,'classic','01','mobile','01','',3,'','',0),
 (10340,10338,10154,'2015-10-14 15:11:39','2015-10-14 15:11:39',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10365,10364,10154,'2015-10-14 15:11:43','2015-10-14 15:11:47',1,0,0,'classic','01','mobile','01','',4,'','',0),
 (10366,10364,10154,'2015-10-14 15:11:43','2015-10-14 15:11:43',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10600,10599,10154,'2015-10-14 15:18:07','2015-10-14 15:18:09',1,0,0,'REC_WAR_RECtheme','01','mobile','01','',1,'','',0),
 (10601,10599,10154,'2015-10-14 15:18:07','2015-10-14 15:18:07',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10821,10820,10154,'2015-10-14 21:37:30','2015-10-14 21:37:30',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10822,10820,10154,'2015-10-14 21:37:30','2015-10-14 21:37:30',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10825,10824,10154,'2015-10-14 21:37:46','2015-10-14 21:37:46',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10826,10824,10154,'2015-10-14 21:37:46','2015-10-14 21:37:46',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10829,10828,10154,'2015-10-14 21:37:55','2015-10-14 21:37:55',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10830,10828,10154,'2015-10-14 21:37:55','2015-10-14 21:37:55',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10833,10832,10154,'2015-10-14 21:38:08','2015-10-14 21:38:08',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10834,10832,10154,'2015-10-14 21:38:08','2015-10-14 21:38:08',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10904,10903,10154,'2015-10-14 21:48:47','2015-10-14 21:54:17',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10905,10903,10154,'2015-10-14 21:48:47','2015-10-16 14:57:30',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10934,10933,10154,'2015-10-14 22:07:11','2015-10-14 22:10:31',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10935,10933,10154,'2015-10-14 22:07:11','2015-10-14 22:10:31',0,0,0,'classic','01','mobile','01','',1,'','',0),
 (10956,10955,10154,'2015-10-14 22:21:01','2015-10-14 22:24:35',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10957,10955,10154,'2015-10-14 22:21:01','2015-10-14 22:24:35',0,0,0,'classic','01','mobile','01','',1,'','',0),
 (10979,10978,10154,'2015-10-14 22:29:44','2015-10-14 22:29:44',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10980,10978,10154,'2015-10-14 22:29:44','2015-10-14 22:29:44',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10991,10990,10154,'2015-10-14 22:33:53','2015-10-14 22:33:53',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10992,10990,10154,'2015-10-14 22:33:53','2015-10-14 22:33:53',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (11002,11001,10154,'2015-10-14 22:37:36','2015-10-14 22:37:36',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (11003,11001,10154,'2015-10-14 22:37:36','2015-10-14 22:37:36',0,0,0,'classic','01','mobile','01','',0,'','',0);
/*!40000 ALTER TABLE `layoutset` ENABLE KEYS */;


--
-- Definition of table `layoutsetbranch`
--

DROP TABLE IF EXISTS `layoutsetbranch`;
CREATE TABLE `layoutsetbranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetBranchId`),
  UNIQUE KEY `IX_5FF18552` (`groupId`,`privateLayout`,`name`),
  KEY `IX_8FF5D6EA` (`groupId`),
  KEY `IX_C4079FD3` (`groupId`,`privateLayout`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layoutsetbranch`
--

/*!40000 ALTER TABLE `layoutsetbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutsetbranch` ENABLE KEYS */;


--
-- Definition of table `layoutsetprototype`
--

DROP TABLE IF EXISTS `layoutsetprototype`;
CREATE TABLE `layoutsetprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`),
  KEY `IX_55F63D98` (`companyId`),
  KEY `IX_9178FC71` (`companyId`,`active_`),
  KEY `IX_C5D69B24` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layoutsetprototype`
--

/*!40000 ALTER TABLE `layoutsetprototype` DISABLE KEYS */;
INSERT INTO `layoutsetprototype` (`uuid_`,`layoutSetPrototypeId`,`companyId`,`createDate`,`modifiedDate`,`name`,`description`,`settings_`,`active_`) VALUES 
 ('c23a118d-f9ea-4014-aea0-0dc5bbdac1b4',10337,10154,'2015-10-14 15:11:39','2015-10-14 15:11:43','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums, Calendar and Wiki','layoutsUpdateable=true\n',1),
 ('47c106f7-f00f-495f-b86c-057f7e6d8547',10363,10154,'2015-10-14 15:11:43','2015-10-14 15:11:47','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents, Calendar and News','layoutsUpdateable=true\n',1),
 ('6b015260-44d8-4111-ae68-04e947e99b56',10598,10154,'2015-10-14 15:18:07','2015-10-14 15:18:09','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Rec Theme</Name></root>','','layoutsUpdateable=true\n',1);
/*!40000 ALTER TABLE `layoutsetprototype` ENABLE KEYS */;


--
-- Definition of table `listtype`
--

DROP TABLE IF EXISTS `listtype`;
CREATE TABLE `listtype` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`),
  KEY `IX_2932DD37` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listtype`
--

/*!40000 ALTER TABLE `listtype` DISABLE KEYS */;
INSERT INTO `listtype` (`listTypeId`,`name`,`type_`) VALUES 
 (10000,'billing','com.liferay.portal.model.Account.address'),
 (10001,'other','com.liferay.portal.model.Account.address'),
 (10002,'p-o-box','com.liferay.portal.model.Account.address'),
 (10003,'shipping','com.liferay.portal.model.Account.address'),
 (10004,'email-address','com.liferay.portal.model.Account.emailAddress'),
 (10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),
 (10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),
 (10007,'fax','com.liferay.portal.model.Account.phone'),
 (10008,'local','com.liferay.portal.model.Account.phone'),
 (10009,'other','com.liferay.portal.model.Account.phone'),
 (10010,'toll-free','com.liferay.portal.model.Account.phone'),
 (10011,'tty','com.liferay.portal.model.Account.phone'),
 (10012,'intranet','com.liferay.portal.model.Account.website'),
 (10013,'public','com.liferay.portal.model.Account.website'),
 (11000,'business','com.liferay.portal.model.Contact.address'),
 (11001,'other','com.liferay.portal.model.Contact.address'),
 (11002,'personal','com.liferay.portal.model.Contact.address'),
 (11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),
 (11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),
 (11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),
 (11006,'business','com.liferay.portal.model.Contact.phone'),
 (11007,'business-fax','com.liferay.portal.model.Contact.phone'),
 (11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),
 (11009,'other','com.liferay.portal.model.Contact.phone'),
 (11010,'pager','com.liferay.portal.model.Contact.phone'),
 (11011,'personal','com.liferay.portal.model.Contact.phone'),
 (11012,'personal-fax','com.liferay.portal.model.Contact.phone'),
 (11013,'tty','com.liferay.portal.model.Contact.phone'),
 (11014,'dr','com.liferay.portal.model.Contact.prefix'),
 (11015,'mr','com.liferay.portal.model.Contact.prefix'),
 (11016,'mrs','com.liferay.portal.model.Contact.prefix'),
 (11017,'ms','com.liferay.portal.model.Contact.prefix'),
 (11020,'ii','com.liferay.portal.model.Contact.suffix'),
 (11021,'iii','com.liferay.portal.model.Contact.suffix'),
 (11022,'iv','com.liferay.portal.model.Contact.suffix'),
 (11023,'jr','com.liferay.portal.model.Contact.suffix'),
 (11024,'phd','com.liferay.portal.model.Contact.suffix'),
 (11025,'sr','com.liferay.portal.model.Contact.suffix'),
 (11026,'blog','com.liferay.portal.model.Contact.website'),
 (11027,'business','com.liferay.portal.model.Contact.website'),
 (11028,'other','com.liferay.portal.model.Contact.website'),
 (11029,'personal','com.liferay.portal.model.Contact.website'),
 (12000,'billing','com.liferay.portal.model.Organization.address'),
 (12001,'other','com.liferay.portal.model.Organization.address'),
 (12002,'p-o-box','com.liferay.portal.model.Organization.address'),
 (12003,'shipping','com.liferay.portal.model.Organization.address'),
 (12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),
 (12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),
 (12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),
 (12007,'fax','com.liferay.portal.model.Organization.phone'),
 (12008,'local','com.liferay.portal.model.Organization.phone'),
 (12009,'other','com.liferay.portal.model.Organization.phone'),
 (12010,'toll-free','com.liferay.portal.model.Organization.phone'),
 (12011,'tty','com.liferay.portal.model.Organization.phone'),
 (12012,'administrative','com.liferay.portal.model.Organization.service'),
 (12013,'contracts','com.liferay.portal.model.Organization.service'),
 (12014,'donation','com.liferay.portal.model.Organization.service'),
 (12015,'retail','com.liferay.portal.model.Organization.service'),
 (12016,'training','com.liferay.portal.model.Organization.service'),
 (12017,'full-member','com.liferay.portal.model.Organization.status'),
 (12018,'provisional-member','com.liferay.portal.model.Organization.status'),
 (12019,'intranet','com.liferay.portal.model.Organization.website'),
 (12020,'public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `listtype` ENABLE KEYS */;


--
-- Definition of table `lock_`
--

DROP TABLE IF EXISTS `lock_`;
CREATE TABLE `lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`lockId`),
  UNIQUE KEY `IX_DD635956` (`className`,`key_`,`owner`),
  KEY `IX_228562AD` (`className`,`key_`),
  KEY `IX_E3F1286B` (`expirationDate`),
  KEY `IX_13C5CD3A` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lock_`
--

/*!40000 ALTER TABLE `lock_` DISABLE KEYS */;
/*!40000 ALTER TABLE `lock_` ENABLE KEYS */;


--
-- Definition of table `marketplace_app`
--

DROP TABLE IF EXISTS `marketplace_app`;
CREATE TABLE `marketplace_app` (
  `uuid_` varchar(75) DEFAULT NULL,
  `appId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remoteAppId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `IX_865B7BD5` (`companyId`),
  KEY `IX_20F14D93` (`remoteAppId`),
  KEY `IX_3E667FE1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketplace_app`
--

/*!40000 ALTER TABLE `marketplace_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_app` ENABLE KEYS */;


--
-- Definition of table `marketplace_module`
--

DROP TABLE IF EXISTS `marketplace_module`;
CREATE TABLE `marketplace_module` (
  `uuid_` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) NOT NULL,
  `appId` bigint(20) DEFAULT NULL,
  `contextName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `IX_7DC16D26` (`appId`),
  KEY `IX_C6938724` (`appId`,`contextName`),
  KEY `IX_F2F1E964` (`contextName`),
  KEY `IX_A7EFD80E` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketplace_module`
--

/*!40000 ALTER TABLE `marketplace_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_module` ENABLE KEYS */;


--
-- Definition of table `mbban`
--

DROP TABLE IF EXISTS `mbban`;
CREATE TABLE `mbban` (
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`banId`),
  UNIQUE KEY `IX_8ABC4E3B` (`groupId`,`banUserId`),
  KEY `IX_69951A25` (`banUserId`),
  KEY `IX_5C3FF12A` (`groupId`),
  KEY `IX_48814BBA` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbban`
--

/*!40000 ALTER TABLE `mbban` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbban` ENABLE KEYS */;


--
-- Definition of table `mbcategory`
--

DROP TABLE IF EXISTS `mbcategory`;
CREATE TABLE `mbcategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_F7D28C2F` (`uuid_`,`groupId`),
  KEY `IX_BC735DCF` (`companyId`),
  KEY `IX_BB870C11` (`groupId`),
  KEY `IX_ED292508` (`groupId`,`parentCategoryId`),
  KEY `IX_C2626EDB` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbcategory`
--

/*!40000 ALTER TABLE `mbcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbcategory` ENABLE KEYS */;


--
-- Definition of table `mbdiscussion`
--

DROP TABLE IF EXISTS `mbdiscussion`;
CREATE TABLE `mbdiscussion` (
  `discussionId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`),
  UNIQUE KEY `IX_33A4DE38` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_B5CA2DC` (`threadId`),
  KEY `IX_79D0120B` (`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbdiscussion`
--

/*!40000 ALTER TABLE `mbdiscussion` DISABLE KEYS */;
INSERT INTO `mbdiscussion` (`discussionId`,`classNameId`,`classPK`,`threadId`) VALUES 
 (10179,10002,10175,10177),
 (10187,10002,10183,10185),
 (10318,10002,10313,10315),
 (10327,10002,10323,10325),
 (10336,10002,10332,10334),
 (10350,10002,10346,10348),
 (10356,10002,10352,10354),
 (10362,10002,10358,10360),
 (10376,10002,10372,10374),
 (10384,10002,10380,10382),
 (10390,10002,10386,10388),
 (10396,10002,10392,10394),
 (10422,10010,10416,10420),
 (10432,10010,10425,10430),
 (10443,10010,10437,10441),
 (10459,10010,10449,10456),
 (10471,10010,10461,10469),
 (10483,10010,10474,10481),
 (10495,10010,10486,10493),
 (10507,10010,10497,10505),
 (10517,10002,10510,10514),
 (10524,10010,10511,10522),
 (10536,10010,10527,10534),
 (10544,10010,10538,10542),
 (10565,10010,10555,10563),
 (10577,10010,10568,10575),
 (10591,10108,10585,10589),
 (10611,10002,10607,10609),
 (10918,10002,10914,10916),
 (10946,10002,10942,10944),
 (10951,10002,10947,10949),
 (10968,10002,10964,10966),
 (10973,10002,10969,10971);
/*!40000 ALTER TABLE `mbdiscussion` ENABLE KEYS */;


--
-- Definition of table `mbmailinglist`
--

DROP TABLE IF EXISTS `mbmailinglist`;
CREATE TABLE `mbmailinglist` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mailingListId`),
  UNIQUE KEY `IX_76CE9CDD` (`groupId`,`categoryId`),
  UNIQUE KEY `IX_E858F170` (`uuid_`,`groupId`),
  KEY `IX_BFEB984F` (`active_`),
  KEY `IX_4115EC7A` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbmailinglist`
--

/*!40000 ALTER TABLE `mbmailinglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbmailinglist` ENABLE KEYS */;


--
-- Definition of table `mbmessage`
--

DROP TABLE IF EXISTS `mbmessage`;
CREATE TABLE `mbmessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `attachments` tinyint(4) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  UNIQUE KEY `IX_8D12316E` (`uuid_`,`groupId`),
  KEY `IX_51A8D44D` (`classNameId`,`classPK`),
  KEY `IX_F6687633` (`classNameId`,`classPK`,`status`),
  KEY `IX_B1432D30` (`companyId`),
  KEY `IX_1AD93C16` (`companyId`,`status`),
  KEY `IX_5B153FB2` (`groupId`),
  KEY `IX_1073AB9F` (`groupId`,`categoryId`),
  KEY `IX_4257DB85` (`groupId`,`categoryId`,`status`),
  KEY `IX_B674AB58` (`groupId`,`categoryId`,`threadId`),
  KEY `IX_CBFDBF0A` (`groupId`,`categoryId`,`threadId`,`answer`),
  KEY `IX_385E123E` (`groupId`,`categoryId`,`threadId`,`status`),
  KEY `IX_ED39AC98` (`groupId`,`status`),
  KEY `IX_8EB8C5EC` (`groupId`,`userId`),
  KEY `IX_377858D2` (`groupId`,`userId`,`status`),
  KEY `IX_75B95071` (`threadId`),
  KEY `IX_9D7C3B23` (`threadId`,`answer`),
  KEY `IX_A7038CD7` (`threadId`,`parentMessageId`),
  KEY `IX_9DC8E57` (`threadId`,`status`),
  KEY `IX_7A040C32` (`userId`),
  KEY `IX_59F9CE5C` (`userId`,`classNameId`),
  KEY `IX_ABEB6D07` (`userId`,`classNameId`,`classPK`),
  KEY `IX_4A4BB4ED` (`userId`,`classNameId`,`classPK`,`status`),
  KEY `IX_3321F142` (`userId`,`classNameId`,`status`),
  KEY `IX_C57B16BC` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbmessage`
--

/*!40000 ALTER TABLE `mbmessage` DISABLE KEYS */;
INSERT INTO `mbmessage` (`uuid_`,`messageId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`classPK`,`categoryId`,`threadId`,`rootMessageId`,`parentMessageId`,`subject`,`body`,`format`,`attachments`,`anonymous`,`priority`,`allowPingbacks`,`answer`,`status`,`statusByUserId`,`statusByUserName`,`statusDate`) VALUES 
 ('da90f4c8-783e-426d-a2ec-bba7f788f366',10176,10172,10154,10158,'','2015-10-14 15:11:31','2015-10-14 15:11:31',10002,10175,-1,10177,10176,0,'10175','10175','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:31'),
 ('7261723f-6575-473f-82a3-d8a3ec9c5784',10184,10180,10154,10158,'','2015-10-14 15:11:31','2015-10-14 15:11:31',10002,10183,-1,10185,10184,0,'10183','10183','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:31'),
 ('c136205b-34f8-4451-8aca-663e15eaa83f',10314,10310,10154,10158,'','2015-10-14 15:11:36','2015-10-14 15:11:36',10002,10313,-1,10315,10314,0,'10313','10313','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:36'),
 ('fef5a644-cc10-4b30-b4bd-abe817438913',10324,10320,10154,10158,'','2015-10-14 15:11:37','2015-10-14 15:11:37',10002,10323,-1,10325,10324,0,'10323','10323','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:37'),
 ('644c4631-3b78-484f-af7c-8fe795c6a78b',10333,10329,10154,10158,'','2015-10-14 15:11:38','2015-10-14 15:11:38',10002,10332,-1,10334,10333,0,'10332','10332','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:38'),
 ('069da9d3-56ad-4983-a714-c8742ea20659',10347,10338,10154,10158,'','2015-10-14 15:11:41','2015-10-14 15:11:41',10002,10346,-1,10348,10347,0,'10346','10346','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:41'),
 ('79e78baa-665b-496b-b63f-31ef9e22371d',10353,10338,10154,10158,'','2015-10-14 15:11:42','2015-10-14 15:11:42',10002,10352,-1,10354,10353,0,'10352','10352','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:42'),
 ('a70e60b6-e144-4790-bb1b-819a94bc0ca2',10359,10338,10154,10158,'','2015-10-14 15:11:43','2015-10-14 15:11:43',10002,10358,-1,10360,10359,0,'10358','10358','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:43'),
 ('1a686181-30da-49c5-8517-e2065d415930',10373,10364,10154,10158,'','2015-10-14 15:11:44','2015-10-14 15:11:44',10002,10372,-1,10374,10373,0,'10372','10372','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:44'),
 ('1fb7078f-afe3-440a-aecb-4b15e5668e12',10381,10364,10154,10158,'','2015-10-14 15:11:45','2015-10-14 15:11:45',10002,10380,-1,10382,10381,0,'10380','10380','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:45'),
 ('22768231-049b-4e5d-8791-491e1af418c4',10387,10364,10154,10158,'','2015-10-14 15:11:46','2015-10-14 15:11:46',10002,10386,-1,10388,10387,0,'10386','10386','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:46'),
 ('2d517d94-9ddd-4c88-917b-b9514370c151',10393,10364,10154,10158,'','2015-10-14 15:11:46','2015-10-14 15:11:46',10002,10392,-1,10394,10393,0,'10392','10392','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:11:46'),
 ('99e88877-9d69-42e0-8ac0-15e089cba798',10419,10180,10154,10158,'','2015-10-14 15:18:01','2015-10-14 15:18:01',10010,10416,-1,10420,10419,0,'10416','10416','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:01'),
 ('056e628d-b289-4c15-b5fa-eac1b7824189',10429,10180,10154,10158,'','2015-10-14 15:18:01','2015-10-14 15:18:01',10010,10425,-1,10430,10429,0,'10425','10425','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:01'),
 ('c5eb5b3f-7001-432d-8708-17d018e70c4e',10440,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10010,10437,-1,10441,10440,0,'10437','10437','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:02'),
 ('60b16356-4f23-4208-9156-b06399f6c571',10455,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10010,10449,-1,10456,10455,0,'10449','10449','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:02'),
 ('5bb3bdad-5ced-40b2-ade7-497dca4d3b0e',10468,10180,10154,10158,'','2015-10-14 15:18:02','2015-10-14 15:18:02',10010,10461,-1,10469,10468,0,'10461','10461','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:02'),
 ('22e21931-8ac6-4bc0-9fcb-0afce5c4a623',10480,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10010,10474,-1,10481,10480,0,'10474','10474','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:03'),
 ('cd50fb7c-c32c-48d9-8866-f636b2a5caff',10492,10180,10154,10158,'','2015-10-14 15:18:03','2015-10-14 15:18:03',10010,10486,-1,10493,10492,0,'10486','10486','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:03'),
 ('037c1e81-1e54-4170-a288-027d47db80a0',10504,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10010,10497,-1,10505,10504,0,'10497','10497','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:04'),
 ('55dfd962-c02b-44ac-84e4-538b3467f9f0',10513,10198,10154,10196,'Admin admin','2015-10-14 15:18:04','2015-10-14 15:18:04',10002,10510,-1,10514,10513,0,'10510','10510','bbcode',0,0,0,0,0,0,10196,'Admin admin','2015-10-14 15:18:04'),
 ('b1fb4e72-6513-44df-9b57-f7b9a87a52ef',10521,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10010,10511,-1,10522,10521,0,'10511','10511','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:04'),
 ('c9c78167-1935-43a8-90c0-93fe69f12225',10533,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10010,10527,-1,10534,10533,0,'10527','10527','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:04'),
 ('112959cb-1ed5-4c77-885e-bdfdf92425d6',10541,10180,10154,10158,'','2015-10-14 15:18:04','2015-10-14 15:18:04',10010,10538,-1,10542,10541,0,'10538','10538','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:04'),
 ('838e8a9b-3b99-4f8b-bb02-a73be3a637b2',10562,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05',10010,10555,-1,10563,10562,0,'10555','10555','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:05'),
 ('f71d02a8-68a4-409d-a93a-e3b418c3ee41',10574,10180,10154,10158,'','2015-10-14 15:18:05','2015-10-14 15:18:05',10010,10568,-1,10575,10574,0,'10568','10568','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:05'),
 ('3d9e9273-100c-4426-ac7e-5bc45bb68585',10588,10180,10154,10158,'','2015-10-14 15:18:06','2015-10-14 15:18:06',10108,10585,-1,10589,10588,0,'10585','10585','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:06'),
 ('c82a1c8b-b77f-44e5-868e-6830c0d1c4b1',10608,10599,10154,10158,'','2015-10-14 15:18:09','2015-10-14 15:18:09',10002,10607,-1,10609,10608,0,'10607','10607','bbcode',0,1,0,0,0,0,10158,'','2015-10-14 15:18:09'),
 ('6251560a-e751-414c-857b-5cf1917bad5e',10915,10903,10154,10901,'Ivan Quiroz','2015-10-14 21:54:17','2015-10-14 21:54:17',10002,10914,-1,10916,10915,0,'10914','10914','bbcode',0,0,0,0,0,0,10901,'Ivan Quiroz','2015-10-14 21:54:17'),
 ('30ab9229-1505-4dfc-b563-530cf599e0ca',10943,10933,10154,10931,'Katheryn Katheryn','2015-10-14 22:10:31','2015-10-14 22:10:31',10002,10942,-1,10944,10943,0,'10942','10942','bbcode',0,0,0,0,0,0,10931,'Katheryn Katheryn','2015-10-14 22:10:31'),
 ('6a2e46c0-140e-4fd1-9944-ccb584272257',10948,10933,10154,10931,'Katheryn Katheryn','2015-10-14 22:10:31','2015-10-14 22:10:31',10002,10947,-1,10949,10948,0,'10947','10947','bbcode',0,0,0,0,0,0,10931,'Katheryn Katheryn','2015-10-14 22:10:31'),
 ('71916a43-83f7-44ed-88f6-5ae31a7382aa',10965,10955,10154,10953,'Monica Lopera','2015-10-14 22:24:35','2015-10-14 22:24:35',10002,10964,-1,10966,10965,0,'10964','10964','bbcode',0,0,0,0,0,0,10953,'Monica Lopera','2015-10-14 22:24:35'),
 ('bd46cae6-2956-4799-bd64-962abe3fe3fe',10970,10955,10154,10953,'Monica Lopera','2015-10-14 22:24:35','2015-10-14 22:24:35',10002,10969,-1,10971,10970,0,'10969','10969','bbcode',0,0,0,0,0,0,10953,'Monica Lopera','2015-10-14 22:24:35');
/*!40000 ALTER TABLE `mbmessage` ENABLE KEYS */;


--
-- Definition of table `mbstatsuser`
--

DROP TABLE IF EXISTS `mbstatsuser`;
CREATE TABLE `mbstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_9168E2C9` (`groupId`,`userId`),
  KEY `IX_A00A898F` (`groupId`),
  KEY `IX_D33A5445` (`groupId`,`userId`,`messageCount`),
  KEY `IX_847F92B5` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbstatsuser`
--

/*!40000 ALTER TABLE `mbstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbstatsuser` ENABLE KEYS */;


--
-- Definition of table `mbthread`
--

DROP TABLE IF EXISTS `mbthread`;
CREATE TABLE `mbthread` (
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`threadId`),
  KEY `IX_41F6DC8A` (`categoryId`,`priority`),
  KEY `IX_95C0EA45` (`groupId`),
  KEY `IX_9A2D11B2` (`groupId`,`categoryId`),
  KEY `IX_50F1904A` (`groupId`,`categoryId`,`lastPostDate`),
  KEY `IX_485F7E98` (`groupId`,`categoryId`,`status`),
  KEY `IX_E1E7142B` (`groupId`,`status`),
  KEY `IX_AEDD9CB5` (`lastPostDate`,`priority`),
  KEY `IX_CC993ECB` (`rootMessageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbthread`
--

/*!40000 ALTER TABLE `mbthread` DISABLE KEYS */;
INSERT INTO `mbthread` (`threadId`,`groupId`,`companyId`,`categoryId`,`rootMessageId`,`rootMessageUserId`,`messageCount`,`viewCount`,`lastPostByUserId`,`lastPostDate`,`priority`,`question`,`status`,`statusByUserId`,`statusByUserName`,`statusDate`) VALUES 
 (10177,10172,10154,-1,10176,10158,1,0,0,'2015-10-14 15:11:31',0,0,0,10158,'','2015-10-14 15:11:31'),
 (10185,10180,10154,-1,10184,10158,1,0,0,'2015-10-14 15:11:31',0,0,0,10158,'','2015-10-14 15:11:31'),
 (10315,10310,10154,-1,10314,10158,1,0,0,'2015-10-14 15:11:36',0,0,0,10158,'','2015-10-14 15:11:36'),
 (10325,10320,10154,-1,10324,10158,1,0,0,'2015-10-14 15:11:37',0,0,0,10158,'','2015-10-14 15:11:37'),
 (10334,10329,10154,-1,10333,10158,1,0,0,'2015-10-14 15:11:38',0,0,0,10158,'','2015-10-14 15:11:38'),
 (10348,10338,10154,-1,10347,10158,1,0,0,'2015-10-14 15:11:41',0,0,0,10158,'','2015-10-14 15:11:41'),
 (10354,10338,10154,-1,10353,10158,1,0,0,'2015-10-14 15:11:42',0,0,0,10158,'','2015-10-14 15:11:42'),
 (10360,10338,10154,-1,10359,10158,1,0,0,'2015-10-14 15:11:43',0,0,0,10158,'','2015-10-14 15:11:43'),
 (10374,10364,10154,-1,10373,10158,1,0,0,'2015-10-14 15:11:44',0,0,0,10158,'','2015-10-14 15:11:44'),
 (10382,10364,10154,-1,10381,10158,1,0,0,'2015-10-14 15:11:45',0,0,0,10158,'','2015-10-14 15:11:45'),
 (10388,10364,10154,-1,10387,10158,1,0,0,'2015-10-14 15:11:46',0,0,0,10158,'','2015-10-14 15:11:46'),
 (10394,10364,10154,-1,10393,10158,1,0,0,'2015-10-14 15:11:46',0,0,0,10158,'','2015-10-14 15:11:46'),
 (10420,10180,10154,-1,10419,10158,1,0,0,'2015-10-14 15:18:01',0,0,0,10158,'','2015-10-14 15:18:01'),
 (10430,10180,10154,-1,10429,10158,1,0,0,'2015-10-14 15:18:01',0,0,0,10158,'','2015-10-14 15:18:01'),
 (10441,10180,10154,-1,10440,10158,1,0,0,'2015-10-14 15:18:02',0,0,0,10158,'','2015-10-14 15:18:02'),
 (10456,10180,10154,-1,10455,10158,1,0,0,'2015-10-14 15:18:02',0,0,0,10158,'','2015-10-14 15:18:02'),
 (10469,10180,10154,-1,10468,10158,1,0,0,'2015-10-14 15:18:02',0,0,0,10158,'','2015-10-14 15:18:02'),
 (10481,10180,10154,-1,10480,10158,1,0,0,'2015-10-14 15:18:03',0,0,0,10158,'','2015-10-14 15:18:03'),
 (10493,10180,10154,-1,10492,10158,1,0,0,'2015-10-14 15:18:03',0,0,0,10158,'','2015-10-14 15:18:03'),
 (10505,10180,10154,-1,10504,10158,1,0,0,'2015-10-14 15:18:04',0,0,0,10158,'','2015-10-14 15:18:04'),
 (10514,10198,10154,-1,10513,10196,1,0,10196,'2015-10-14 15:18:04',0,0,0,10196,'Admin admin','2015-10-14 15:18:04'),
 (10522,10180,10154,-1,10521,10158,1,0,0,'2015-10-14 15:18:04',0,0,0,10158,'','2015-10-14 15:18:04'),
 (10534,10180,10154,-1,10533,10158,1,0,0,'2015-10-14 15:18:04',0,0,0,10158,'','2015-10-14 15:18:04'),
 (10542,10180,10154,-1,10541,10158,1,0,0,'2015-10-14 15:18:04',0,0,0,10158,'','2015-10-14 15:18:04'),
 (10563,10180,10154,-1,10562,10158,1,0,0,'2015-10-14 15:18:05',0,0,0,10158,'','2015-10-14 15:18:05'),
 (10575,10180,10154,-1,10574,10158,1,0,0,'2015-10-14 15:18:05',0,0,0,10158,'','2015-10-14 15:18:05'),
 (10589,10180,10154,-1,10588,10158,1,0,0,'2015-10-14 15:18:06',0,0,0,10158,'','2015-10-14 15:18:06'),
 (10609,10599,10154,-1,10608,10158,1,0,0,'2015-10-14 15:18:09',0,0,0,10158,'','2015-10-14 15:18:09'),
 (10916,10903,10154,-1,10915,10901,1,0,10901,'2015-10-14 21:54:17',0,0,0,10901,'Ivan Quiroz','2015-10-14 21:54:17'),
 (10944,10933,10154,-1,10943,10931,1,0,10931,'2015-10-14 22:10:31',0,0,0,10931,'Katheryn Katheryn','2015-10-14 22:10:31'),
 (10949,10933,10154,-1,10948,10931,1,0,10931,'2015-10-14 22:10:31',0,0,0,10931,'Katheryn Katheryn','2015-10-14 22:10:31'),
 (10966,10955,10154,-1,10965,10953,1,0,10953,'2015-10-14 22:24:35',0,0,0,10953,'Monica Lopera','2015-10-14 22:24:35'),
 (10971,10955,10154,-1,10970,10953,1,0,10953,'2015-10-14 22:24:35',0,0,0,10953,'Monica Lopera','2015-10-14 22:24:35');
/*!40000 ALTER TABLE `mbthread` ENABLE KEYS */;


--
-- Definition of table `mbthreadflag`
--

DROP TABLE IF EXISTS `mbthreadflag`;
CREATE TABLE `mbthreadflag` (
  `threadFlagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`),
  KEY `IX_8CB0A24A` (`threadId`),
  KEY `IX_A28004B` (`userId`),
  KEY `IX_33781904` (`userId`,`threadId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbthreadflag`
--

/*!40000 ALTER TABLE `mbthreadflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbthreadflag` ENABLE KEYS */;


--
-- Definition of table `mdraction`
--

DROP TABLE IF EXISTS `mdraction`;
CREATE TABLE `mdraction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`actionId`),
  UNIQUE KEY `IX_75BE36AD` (`uuid_`,`groupId`),
  KEY `IX_FD90786C` (`ruleGroupInstanceId`),
  KEY `IX_77BB5E9D` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdraction`
--

/*!40000 ALTER TABLE `mdraction` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdraction` ENABLE KEYS */;


--
-- Definition of table `mdrrule`
--

DROP TABLE IF EXISTS `mdrrule`;
CREATE TABLE `mdrrule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`ruleId`),
  UNIQUE KEY `IX_F3EFDCB3` (`uuid_`,`groupId`),
  KEY `IX_4F4293F1` (`ruleGroupId`),
  KEY `IX_EA63B9D7` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdrrule`
--

/*!40000 ALTER TABLE `mdrrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrule` ENABLE KEYS */;


--
-- Definition of table `mdrrulegroup`
--

DROP TABLE IF EXISTS `mdrrulegroup`;
CREATE TABLE `mdrrulegroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`ruleGroupId`),
  UNIQUE KEY `IX_46665CC4` (`uuid_`,`groupId`),
  KEY `IX_5849891C` (`groupId`),
  KEY `IX_7F26B2A6` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdrrulegroup`
--

/*!40000 ALTER TABLE `mdrrulegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrulegroup` ENABLE KEYS */;


--
-- Definition of table `mdrrulegroupinstance`
--

DROP TABLE IF EXISTS `mdrrulegroupinstance`;
CREATE TABLE `mdrrulegroupinstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleGroupInstanceId`),
  UNIQUE KEY `IX_808A0036` (`classNameId`,`classPK`,`ruleGroupId`),
  UNIQUE KEY `IX_9CBC6A39` (`uuid_`,`groupId`),
  KEY `IX_C95A08D8` (`classNameId`,`classPK`),
  KEY `IX_AFF28547` (`groupId`),
  KEY `IX_22DAB85C` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_BF3E642B` (`ruleGroupId`),
  KEY `IX_B6A6BD91` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdrrulegroupinstance`
--

/*!40000 ALTER TABLE `mdrrulegroupinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrulegroupinstance` ENABLE KEYS */;


--
-- Definition of table `membershiprequest`
--

DROP TABLE IF EXISTS `membershiprequest`;
CREATE TABLE `membershiprequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`membershipRequestId`),
  KEY `IX_8A1CC4B` (`groupId`),
  KEY `IX_C28C72EC` (`groupId`,`statusId`),
  KEY `IX_35AA8FA6` (`groupId`,`userId`,`statusId`),
  KEY `IX_66D70879` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membershiprequest`
--

/*!40000 ALTER TABLE `membershiprequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `membershiprequest` ENABLE KEYS */;


--
-- Definition of table `organization_`
--

DROP TABLE IF EXISTS `organization_`;
CREATE TABLE `organization_` (
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`organizationId`),
  UNIQUE KEY `IX_E301BDF5` (`companyId`,`name`),
  KEY `IX_834BCEB6` (`companyId`),
  KEY `IX_418E4522` (`companyId`,`parentOrganizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization_`
--

/*!40000 ALTER TABLE `organization_` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization_` ENABLE KEYS */;


--
-- Definition of table `orggrouppermission`
--

DROP TABLE IF EXISTS `orggrouppermission`;
CREATE TABLE `orggrouppermission` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`permissionId`),
  KEY `IX_A425F71A` (`groupId`),
  KEY `IX_6C53DA4E` (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orggrouppermission`
--

/*!40000 ALTER TABLE `orggrouppermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `orggrouppermission` ENABLE KEYS */;


--
-- Definition of table `orggrouprole`
--

DROP TABLE IF EXISTS `orggrouprole`;
CREATE TABLE `orggrouprole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`),
  KEY `IX_4A527DD3` (`groupId`),
  KEY `IX_AB044D1C` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orggrouprole`
--

/*!40000 ALTER TABLE `orggrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `orggrouprole` ENABLE KEYS */;


--
-- Definition of table `orglabor`
--

DROP TABLE IF EXISTS `orglabor`;
CREATE TABLE `orglabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgLaborId`),
  KEY `IX_6AF0D434` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orglabor`
--

/*!40000 ALTER TABLE `orglabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `orglabor` ENABLE KEYS */;


--
-- Definition of table `passwordpolicy`
--

DROP TABLE IF EXISTS `passwordpolicy`;
CREATE TABLE `passwordpolicy` (
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyId`),
  UNIQUE KEY `IX_3FBFA9F4` (`companyId`,`name`),
  KEY `IX_2C1142E` (`companyId`,`defaultPolicy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passwordpolicy`
--

/*!40000 ALTER TABLE `passwordpolicy` DISABLE KEYS */;
INSERT INTO `passwordpolicy` (`passwordPolicyId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`defaultPolicy`,`name`,`description`,`changeable`,`changeRequired`,`minAge`,`checkSyntax`,`allowDictionaryWords`,`minAlphanumeric`,`minLength`,`minLowerCase`,`minNumbers`,`minSymbols`,`minUpperCase`,`history`,`historyCount`,`expireable`,`maxAge`,`warningTime`,`graceLimit`,`lockout`,`maxFailure`,`lockoutDuration`,`requireUnlock`,`resetFailureCount`,`resetTicketMaxAge`) VALUES 
 (10195,10154,10158,'','2015-10-14 15:11:31','2015-10-14 21:49:27',1,'Default Password Policy','Default Password Policy',1,0,0,0,1,0,6,0,1,0,1,0,6,0,1209600,86400,0,0,3,0,1,600,86400),
 (10622,10154,10196,'Admin admin','2015-10-14 15:21:11','2015-10-14 15:21:11',0,'Política para los empleados','Política para los empleados',1,0,0,0,0,0,0,0,0,0,0,0,2,0,1209600,43200,0,0,0,0,1,300,0);
/*!40000 ALTER TABLE `passwordpolicy` ENABLE KEYS */;


--
-- Definition of table `passwordpolicyrel`
--

DROP TABLE IF EXISTS `passwordpolicyrel`;
CREATE TABLE `passwordpolicyrel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`),
  KEY `IX_C3A17327` (`classNameId`,`classPK`),
  KEY `IX_CD25266E` (`passwordPolicyId`),
  KEY `IX_ED7CF243` (`passwordPolicyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passwordpolicyrel`
--

/*!40000 ALTER TABLE `passwordpolicyrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwordpolicyrel` ENABLE KEYS */;


--
-- Definition of table `passwordtracker`
--

DROP TABLE IF EXISTS `passwordtracker`;
CREATE TABLE `passwordtracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`),
  KEY `IX_326F75BD` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passwordtracker`
--

/*!40000 ALTER TABLE `passwordtracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwordtracker` ENABLE KEYS */;


--
-- Definition of table `permission_`
--

DROP TABLE IF EXISTS `permission_`;
CREATE TABLE `permission_` (
  `permissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `resourceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`permissionId`),
  UNIQUE KEY `IX_4D19C2B8` (`actionId`,`resourceId`),
  KEY `IX_F090C113` (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission_`
--

/*!40000 ALTER TABLE `permission_` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_` ENABLE KEYS */;


--
-- Definition of table `phone`
--

DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phoneId`),
  KEY `IX_9F704A14` (`companyId`),
  KEY `IX_A2E4AFBA` (`companyId`,`classNameId`),
  KEY `IX_9A53569` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_812CE07A` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F202B9CE` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;


--
-- Definition of table `pluginsetting`
--

DROP TABLE IF EXISTS `pluginsetting`;
CREATE TABLE `pluginsetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`),
  UNIQUE KEY `IX_7171B2E8` (`companyId`,`pluginId`,`pluginType`),
  KEY `IX_B9746445` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pluginsetting`
--

/*!40000 ALTER TABLE `pluginsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluginsetting` ENABLE KEYS */;


--
-- Definition of table `pollschoice`
--

DROP TABLE IF EXISTS `pollschoice`;
CREATE TABLE `pollschoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`),
  UNIQUE KEY `IX_D76DD2CF` (`questionId`,`name`),
  KEY `IX_EC370F10` (`questionId`),
  KEY `IX_6660B399` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pollschoice`
--

/*!40000 ALTER TABLE `pollschoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollschoice` ENABLE KEYS */;


--
-- Definition of table `pollsquestion`
--

DROP TABLE IF EXISTS `pollsquestion`;
CREATE TABLE `pollsquestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`),
  UNIQUE KEY `IX_F3C9F36` (`uuid_`,`groupId`),
  KEY `IX_9FF342EA` (`groupId`),
  KEY `IX_51F087F4` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pollsquestion`
--

/*!40000 ALTER TABLE `pollsquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsquestion` ENABLE KEYS */;


--
-- Definition of table `pollsvote`
--

DROP TABLE IF EXISTS `pollsvote`;
CREATE TABLE `pollsvote` (
  `voteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voteId`),
  UNIQUE KEY `IX_1BBFD4D3` (`questionId`,`userId`),
  KEY `IX_D5DF7B54` (`choiceId`),
  KEY `IX_12112599` (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pollsvote`
--

/*!40000 ALTER TABLE `pollsvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsvote` ENABLE KEYS */;


--
-- Definition of table `portalpreferences`
--

DROP TABLE IF EXISTS `portalpreferences`;
CREATE TABLE `portalpreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`),
  KEY `IX_D1F795F1` (`ownerId`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portalpreferences`
--

/*!40000 ALTER TABLE `portalpreferences` DISABLE KEYS */;
INSERT INTO `portalpreferences` (`portalPreferencesId`,`ownerId`,`ownerType`,`preferences`) VALUES 
 (10153,0,1,'<portlet-preferences />'),
 (10160,10154,1,'<portlet-preferences />'),
 (10405,10158,4,'<portlet-preferences />'),
 (10406,10158,4,'<portlet-preferences />'),
 (10578,10196,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-portal</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-content</name><value>closed</value></preference><preference><name>129#password-policies-order-by-col</name><value>name</value></preference><preference><name>129#password-policies-order-by-type</name><value>asc</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-server</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-my</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_toggle_controls</name><value>visible</value></preference><preference><name>125#user-groups-order-by-col</name><value>name</value></preference><preference><name>125#user-groups-order-by-type</name><value>asc</value></preference></portlet-preferences>'),
 (10924,10901,4,'<portlet-preferences><preference><name>125#users-order-by-col</name><value>last-name</value></preference><preference><name>128#roles-order-by-col</name><value>name</value></preference><preference><name>128#roles-order-by-type</name><value>asc</value></preference><preference><name>125#users-order-by-type</name><value>asc</value></preference></portlet-preferences>'),
 (10952,10931,4,'<portlet-preferences />'),
 (10974,10953,4,'<portlet-preferences />');
/*!40000 ALTER TABLE `portalpreferences` ENABLE KEYS */;


--
-- Definition of table `portlet`
--

DROP TABLE IF EXISTS `portlet`;
CREATE TABLE `portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_12B5E51D` (`companyId`,`portletId`),
  KEY `IX_80CC9508` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portlet`
--

/*!40000 ALTER TABLE `portlet` DISABLE KEYS */;
INSERT INTO `portlet` (`id_`,`companyId`,`portletId`,`roles`,`active_`) VALUES 
 (10202,10154,'98','',1),
 (10203,10154,'66','',1),
 (10204,10154,'180','',1),
 (10205,10154,'27','',1),
 (10206,10154,'152','',1),
 (10207,10154,'134','',1),
 (10208,10154,'130','',1),
 (10209,10154,'122','',1),
 (10210,10154,'36','',1),
 (10211,10154,'26','',1),
 (10212,10154,'104','',1),
 (10213,10154,'175','',1),
 (10214,10154,'153','',1),
 (10215,10154,'64','',1),
 (10216,10154,'129','',1),
 (10217,10154,'179','',1),
 (10218,10154,'173','',1),
 (10219,10154,'100','',1),
 (10220,10154,'19','',1),
 (10221,10154,'157','',1),
 (10222,10154,'128','',1),
 (10223,10154,'181','',1),
 (10224,10154,'154','',1),
 (10225,10154,'148','',1),
 (10226,10154,'11','',1),
 (10227,10154,'29','',1),
 (10228,10154,'158','',1),
 (10229,10154,'178','',1),
 (10230,10154,'8','',1),
 (10231,10154,'58','',1),
 (10232,10154,'71','',1),
 (10233,10154,'97','',1),
 (10234,10154,'39','',1),
 (10235,10154,'177','',1),
 (10236,10154,'85','',1),
 (10237,10154,'118','',1),
 (10238,10154,'107','',1),
 (10239,10154,'30','',1),
 (10240,10154,'147','',1),
 (10241,10154,'48','',1),
 (10242,10154,'125','',1),
 (10243,10154,'161','',1),
 (10244,10154,'146','',1),
 (10245,10154,'62','',1),
 (10246,10154,'162','',1),
 (10247,10154,'176','',1),
 (10248,10154,'108','',1),
 (10249,10154,'84','',1),
 (10250,10154,'101','',1),
 (10251,10154,'121','',1),
 (10252,10154,'143','',1),
 (10253,10154,'77','',1),
 (10254,10154,'167','',1),
 (10255,10154,'115','',1),
 (10256,10154,'56','',1),
 (10257,10154,'16','',1),
 (10258,10154,'111','',1),
 (10259,10154,'3','',1),
 (10260,10154,'23','',1),
 (10261,10154,'20','',1),
 (10262,10154,'83','',1),
 (10263,10154,'164','',1),
 (10264,10154,'99','',1),
 (10265,10154,'70','',1),
 (10266,10154,'141','',1),
 (10267,10154,'9','',1),
 (10268,10154,'28','',1),
 (10269,10154,'137','',1),
 (10270,10154,'47','',1),
 (10271,10154,'15','',1),
 (10272,10154,'116','',1),
 (10273,10154,'82','',1),
 (10274,10154,'151','',1),
 (10275,10154,'54','',1),
 (10276,10154,'34','',1),
 (10277,10154,'169','',1),
 (10278,10154,'132','',1),
 (10279,10154,'61','',1),
 (10280,10154,'73','',1),
 (10281,10154,'31','',1),
 (10282,10154,'136','',1),
 (10283,10154,'50','',1),
 (10284,10154,'127','',1),
 (10285,10154,'25','',1),
 (10286,10154,'166','',1),
 (10287,10154,'33','',1),
 (10288,10154,'150','',1),
 (10289,10154,'114','',1),
 (10290,10154,'149','',1),
 (10291,10154,'67','',1),
 (10292,10154,'110','',1),
 (10293,10154,'59','',1),
 (10294,10154,'135','',1),
 (10295,10154,'131','',1),
 (10296,10154,'102','',1),
 (10424,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet','',1),
 (10701,10154,'Complemento_WAR_Complementoportlet','',1);
/*!40000 ALTER TABLE `portlet` ENABLE KEYS */;


--
-- Definition of table `portletitem`
--

DROP TABLE IF EXISTS `portletitem`;
CREATE TABLE `portletitem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(75) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`),
  KEY `IX_96BDD537` (`groupId`,`classNameId`),
  KEY `IX_D699243F` (`groupId`,`name`,`portletId`,`classNameId`),
  KEY `IX_2C61314E` (`groupId`,`portletId`),
  KEY `IX_E922D6C0` (`groupId`,`portletId`,`classNameId`),
  KEY `IX_8E71167F` (`groupId`,`portletId`,`classNameId`,`name`),
  KEY `IX_33B8CE8D` (`groupId`,`portletId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portletitem`
--

/*!40000 ALTER TABLE `portletitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `portletitem` ENABLE KEYS */;


--
-- Definition of table `portletpreferences`
--

DROP TABLE IF EXISTS `portletpreferences`;
CREATE TABLE `portletpreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`),
  UNIQUE KEY `IX_C7057FF7` (`ownerId`,`ownerType`,`plid`,`portletId`),
  KEY `IX_E4F13E6E` (`ownerId`,`ownerType`,`plid`),
  KEY `IX_D5EDA3A1` (`ownerType`,`plid`,`portletId`),
  KEY `IX_F15C1C4F` (`plid`),
  KEY `IX_D340DB76` (`plid`,`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portletpreferences`
--

/*!40000 ALTER TABLE `portletpreferences` DISABLE KEYS */;
INSERT INTO `portletpreferences` (`portletPreferencesId`,`ownerId`,`ownerType`,`plid`,`portletId`,`preferences`) VALUES 
 (10351,0,3,10346,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
 (10357,0,3,10352,'101_INSTANCE_LxJxMDBkhxw0','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10009</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),
 (10377,0,3,10372,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
 (10378,0,3,10372,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),
 (10379,0,3,10372,'101_INSTANCE_ZRuCZ4qCrf5Y','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),
 (10385,0,3,10380,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
 (10391,0,3,10386,'101_INSTANCE_h7qJxIsD0dvs','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10009</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),
 (10397,0,3,10392,'39_INSTANCE_UU6mQpkw3Gqc','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),
 (10398,0,3,10392,'39_INSTANCE_1pN3d5jBwHgF','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),
 (10592,10180,2,0,'15','<portlet-preferences />'),
 (10612,0,3,10183,'145','<portlet-preferences />'),
 (10613,0,3,10183,'new-password','<portlet-preferences />'),
 (10615,0,3,10183,'103','<portlet-preferences />'),
 (10616,0,3,10183,'47','<portlet-preferences />'),
 (10617,0,3,10183,'87','<portlet-preferences />'),
 (10618,0,3,10175,'160','<portlet-preferences />'),
 (10619,0,3,10175,'145','<portlet-preferences />'),
 (10620,0,3,10175,'128','<portlet-preferences />'),
 (10621,0,3,10175,'129','<portlet-preferences />'),
 (10623,0,3,10175,'86','<portlet-preferences />'),
 (10702,0,3,10175,'156','<portlet-preferences />'),
 (10704,0,3,10175,'2','<portlet-preferences />'),
 (10801,0,3,10175,'139','<portlet-preferences />'),
 (10804,0,3,10175,'125','<portlet-preferences />'),
 (10817,0,3,10183,'status','<portlet-preferences />'),
 (10818,0,3,10175,'127','<portlet-preferences />'),
 (10835,0,3,10175,'131','<portlet-preferences />'),
 (10925,10903,2,0,'15','<portlet-preferences />'),
 (10926,0,3,10175,'15','<portlet-preferences />'),
 (10927,0,3,10175,'134','<portlet-preferences />'),
 (10928,0,3,10175,'173','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\">\n			<preference>\n				<name>assetVocabularyId</name>\n				<value>-1</value>\n			</preference>\n			<preference>\n				<name>delta</name>\n				<value>5</value>\n			</preference>\n			<preference>\n				<name>displayStyle</name>\n				<value>title-list</value>\n			</preference>\n		</portlet-preferences>'),
 (10929,0,3,10175,'20','<portlet-preferences />'),
 (10930,0,3,10175,'130','<portlet-preferences />'),
 (10975,0,3,10175,'140','<portlet-preferences />'),
 (11101,0,3,10175,'88','<portlet-preferences />'),
 (11102,0,3,10175,'165','<portlet-preferences />'),
 (11103,0,3,10183,'49','<portlet-preferences />'),
 (11104,0,3,10183,'58','<portlet-preferences />'),
 (11105,0,3,10175,'137','<portlet-preferences />'),
 (11201,0,3,10175,'146','<portlet-preferences />');
/*!40000 ALTER TABLE `portletpreferences` ENABLE KEYS */;


--
-- Definition of table `quartz_blob_triggers`
--

DROP TABLE IF EXISTS `quartz_blob_triggers`;
CREATE TABLE `quartz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quartz_blob_triggers`
--

/*!40000 ALTER TABLE `quartz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_blob_triggers` ENABLE KEYS */;


--
-- Definition of table `quartz_calendars`
--

DROP TABLE IF EXISTS `quartz_calendars`;
CREATE TABLE `quartz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quartz_calendars`
--

/*!40000 ALTER TABLE `quartz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_calendars` ENABLE KEYS */;


--
-- Definition of table `quartz_cron_triggers`
--

DROP TABLE IF EXISTS `quartz_cron_triggers`;
CREATE TABLE `quartz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quartz_cron_triggers`
--

/*!40000 ALTER TABLE `quartz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_cron_triggers` ENABLE KEYS */;


--
-- Definition of table `quartz_fired_triggers`
--

DROP TABLE IF EXISTS `quartz_fired_triggers`;
CREATE TABLE `quartz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quartz_fired_triggers`
--

/*!40000 ALTER TABLE `quartz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_fired_triggers` ENABLE KEYS */;


--
-- Definition of table `quartz_job_details`
--

DROP TABLE IF EXISTS `quartz_job_details`;
CREATE TABLE `quartz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quartz_job_details`
--

/*!40000 ALTER TABLE `quartz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_job_details` ENABLE KEYS */;


--
-- Definition of table `quartz_locks`
--

DROP TABLE IF EXISTS `quartz_locks`;
CREATE TABLE `quartz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quartz_locks`
--

/*!40000 ALTER TABLE `quartz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_locks` ENABLE KEYS */;


--
-- Definition of table `quartz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `quartz_paused_trigger_grps`;
CREATE TABLE `quartz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quartz_paused_trigger_grps`
--

/*!40000 ALTER TABLE `quartz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_paused_trigger_grps` ENABLE KEYS */;


--
-- Definition of table `quartz_scheduler_state`
--

DROP TABLE IF EXISTS `quartz_scheduler_state`;
CREATE TABLE `quartz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quartz_scheduler_state`
--

/*!40000 ALTER TABLE `quartz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_scheduler_state` ENABLE KEYS */;


--
-- Definition of table `quartz_simple_triggers`
--

DROP TABLE IF EXISTS `quartz_simple_triggers`;
CREATE TABLE `quartz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quartz_simple_triggers`
--

/*!40000 ALTER TABLE `quartz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_simple_triggers` ENABLE KEYS */;


--
-- Definition of table `quartz_simprop_triggers`
--

DROP TABLE IF EXISTS `quartz_simprop_triggers`;
CREATE TABLE `quartz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quartz_simprop_triggers`
--

/*!40000 ALTER TABLE `quartz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_simprop_triggers` ENABLE KEYS */;


--
-- Definition of table `quartz_triggers`
--

DROP TABLE IF EXISTS `quartz_triggers`;
CREATE TABLE `quartz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`),
  KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quartz_triggers`
--

/*!40000 ALTER TABLE `quartz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_triggers` ENABLE KEYS */;


--
-- Definition of table `ratingsentry`
--

DROP TABLE IF EXISTS `ratingsentry`;
CREATE TABLE `ratingsentry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B47E3C11` (`userId`,`classNameId`,`classPK`),
  KEY `IX_16184D57` (`classNameId`,`classPK`),
  KEY `IX_A1A8CB8B` (`classNameId`,`classPK`,`score`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratingsentry`
--

/*!40000 ALTER TABLE `ratingsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsentry` ENABLE KEYS */;


--
-- Definition of table `ratingsstats`
--

DROP TABLE IF EXISTS `ratingsstats`;
CREATE TABLE `ratingsstats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`),
  UNIQUE KEY `IX_A6E99284` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratingsstats`
--

/*!40000 ALTER TABLE `ratingsstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsstats` ENABLE KEYS */;


--
-- Definition of table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regionId`),
  UNIQUE KEY `IX_A2635F5C` (`countryId`,`regionCode`),
  KEY `IX_2D9A426F` (`active_`),
  KEY `IX_16D87CA7` (`countryId`),
  KEY `IX_11FB3E42` (`countryId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` (`regionId`,`countryId`,`regionCode`,`name`,`active_`) VALUES 
 (1001,1,'AB','Alberta',1),
 (1002,1,'BC','British Columbia',1),
 (1003,1,'MB','Manitoba',1),
 (1004,1,'NB','New Brunswick',1),
 (1005,1,'NL','Newfoundland and Labrador',1),
 (1006,1,'NT','Northwest Territories',1),
 (1007,1,'NS','Nova Scotia',1),
 (1008,1,'NU','Nunavut',1),
 (1009,1,'ON','Ontario',1),
 (1010,1,'PE','Prince Edward Island',1),
 (1011,1,'QC','Quebec',1),
 (1012,1,'SK','Saskatchewan',1),
 (1013,1,'YT','Yukon',1),
 (2001,2,'CN-34','Anhui',1),
 (2002,2,'CN-92','Aomen',1),
 (2003,2,'CN-11','Beijing',1),
 (2004,2,'CN-50','Chongqing',1),
 (2005,2,'CN-35','Fujian',1),
 (2006,2,'CN-62','Gansu',1),
 (2007,2,'CN-44','Guangdong',1),
 (2008,2,'CN-45','Guangxi',1),
 (2009,2,'CN-52','Guizhou',1),
 (2010,2,'CN-46','Hainan',1),
 (2011,2,'CN-13','Hebei',1),
 (2012,2,'CN-23','Heilongjiang',1),
 (2013,2,'CN-41','Henan',1),
 (2014,2,'CN-42','Hubei',1),
 (2015,2,'CN-43','Hunan',1),
 (2016,2,'CN-32','Jiangsu',1),
 (2017,2,'CN-36','Jiangxi',1),
 (2018,2,'CN-22','Jilin',1),
 (2019,2,'CN-21','Liaoning',1),
 (2020,2,'CN-15','Nei Mongol',1),
 (2021,2,'CN-64','Ningxia',1),
 (2022,2,'CN-63','Qinghai',1),
 (2023,2,'CN-61','Shaanxi',1),
 (2024,2,'CN-37','Shandong',1),
 (2025,2,'CN-31','Shanghai',1),
 (2026,2,'CN-14','Shanxi',1),
 (2027,2,'CN-51','Sichuan',1),
 (2028,2,'CN-71','Taiwan',1),
 (2029,2,'CN-12','Tianjin',1),
 (2030,2,'CN-91','Xianggang',1),
 (2031,2,'CN-65','Xinjiang',1),
 (2032,2,'CN-54','Xizang',1),
 (2033,2,'CN-53','Yunnan',1),
 (2034,2,'CN-33','Zhejiang',1),
 (3001,3,'A','Alsace',1),
 (3002,3,'B','Aquitaine',1),
 (3003,3,'C','Auvergne',1),
 (3004,3,'P','Basse-Normandie',1),
 (3005,3,'D','Bourgogne',1),
 (3006,3,'E','Bretagne',1),
 (3007,3,'F','Centre',1),
 (3008,3,'G','Champagne-Ardenne',1),
 (3009,3,'H','Corse',1),
 (3010,3,'GF','Guyane',1),
 (3011,3,'I','Franche Comté',1),
 (3012,3,'GP','Guadeloupe',1),
 (3013,3,'Q','Haute-Normandie',1),
 (3014,3,'J','Île-de-France',1),
 (3015,3,'K','Languedoc-Roussillon',1),
 (3016,3,'L','Limousin',1),
 (3017,3,'M','Lorraine',1),
 (3018,3,'MQ','Martinique',1),
 (3019,3,'N','Midi-Pyrénées',1),
 (3020,3,'O','Nord Pas de Calais',1),
 (3021,3,'R','Pays de la Loire',1),
 (3022,3,'S','Picardie',1),
 (3023,3,'T','Poitou-Charentes',1),
 (3024,3,'U','Provence-Alpes-Côte-d\'Azur',1),
 (3025,3,'RE','Réunion',1),
 (3026,3,'V','Rhône-Alpes',1),
 (4001,4,'BW','Baden-Württemberg',1),
 (4002,4,'BY','Bayern',1),
 (4003,4,'BE','Berlin',1),
 (4004,4,'BR','Brandenburg',1),
 (4005,4,'HB','Bremen',1),
 (4006,4,'HH','Hamburg',1),
 (4007,4,'HE','Hessen',1),
 (4008,4,'MV','Mecklenburg-Vorpommern',1),
 (4009,4,'NI','Niedersachsen',1),
 (4010,4,'NW','Nordrhein-Westfalen',1),
 (4011,4,'RP','Rheinland-Pfalz',1),
 (4012,4,'SL','Saarland',1),
 (4013,4,'SN','Sachsen',1),
 (4014,4,'ST','Sachsen-Anhalt',1),
 (4015,4,'SH','Schleswig-Holstein',1),
 (4016,4,'TH','Thüringen',1),
 (8001,8,'AG','Agrigento',1),
 (8002,8,'AL','Alessandria',1),
 (8003,8,'AN','Ancona',1),
 (8004,8,'AO','Aosta',1),
 (8005,8,'AR','Arezzo',1),
 (8006,8,'AP','Ascoli Piceno',1),
 (8007,8,'AT','Asti',1),
 (8008,8,'AV','Avellino',1),
 (8009,8,'BA','Bari',1),
 (8010,8,'BT','Barletta-Andria-Trani',1),
 (8011,8,'BL','Belluno',1),
 (8012,8,'BN','Benevento',1),
 (8013,8,'BG','Bergamo',1),
 (8014,8,'BI','Biella',1),
 (8015,8,'BO','Bologna',1),
 (8016,8,'BZ','Bolzano',1),
 (8017,8,'BS','Brescia',1),
 (8018,8,'BR','Brindisi',1),
 (8019,8,'CA','Cagliari',1),
 (8020,8,'CL','Caltanissetta',1),
 (8021,8,'CB','Campobasso',1),
 (8022,8,'CI','Carbonia-Iglesias',1),
 (8023,8,'CE','Caserta',1),
 (8024,8,'CT','Catania',1),
 (8025,8,'CZ','Catanzaro',1),
 (8026,8,'CH','Chieti',1),
 (8027,8,'CO','Como',1),
 (8028,8,'CS','Cosenza',1),
 (8029,8,'CR','Cremona',1),
 (8030,8,'KR','Crotone',1),
 (8031,8,'CN','Cuneo',1),
 (8032,8,'EN','Enna',1),
 (8033,8,'FM','Fermo',1),
 (8034,8,'FE','Ferrara',1),
 (8035,8,'FI','Firenze',1),
 (8036,8,'FG','Foggia',1),
 (8037,8,'FC','Forli-Cesena',1),
 (8038,8,'FR','Frosinone',1),
 (8039,8,'GE','Genova',1),
 (8040,8,'GO','Gorizia',1),
 (8041,8,'GR','Grosseto',1),
 (8042,8,'IM','Imperia',1),
 (8043,8,'IS','Isernia',1),
 (8044,8,'AQ','L\'Aquila',1),
 (8045,8,'SP','La Spezia',1),
 (8046,8,'LT','Latina',1),
 (8047,8,'LE','Lecce',1),
 (8048,8,'LC','Lecco',1),
 (8049,8,'LI','Livorno',1),
 (8050,8,'LO','Lodi',1),
 (8051,8,'LU','Lucca',1),
 (8052,8,'MC','Macerata',1),
 (8053,8,'MN','Mantova',1),
 (8054,8,'MS','Massa-Carrara',1),
 (8055,8,'MT','Matera',1),
 (8056,8,'MA','Medio Campidano',1),
 (8057,8,'ME','Messina',1),
 (8058,8,'MI','Milano',1),
 (8059,8,'MO','Modena',1),
 (8060,8,'MZ','Monza',1),
 (8061,8,'NA','Napoli',1),
 (8062,8,'NO','Novara',1),
 (8063,8,'NU','Nuoro',1),
 (8064,8,'OG','Ogliastra',1),
 (8065,8,'OT','Olbia-Tempio',1),
 (8066,8,'OR','Oristano',1),
 (8067,8,'PD','Padova',1),
 (8068,8,'PA','Palermo',1),
 (8069,8,'PR','Parma',1),
 (8070,8,'PV','Pavia',1),
 (8071,8,'PG','Perugia',1),
 (8072,8,'PU','Pesaro e Urbino',1),
 (8073,8,'PE','Pescara',1),
 (8074,8,'PC','Piacenza',1),
 (8075,8,'PI','Pisa',1),
 (8076,8,'PT','Pistoia',1),
 (8077,8,'PN','Pordenone',1),
 (8078,8,'PZ','Potenza',1),
 (8079,8,'PO','Prato',1),
 (8080,8,'RG','Ragusa',1),
 (8081,8,'RA','Ravenna',1),
 (8082,8,'RC','Reggio Calabria',1),
 (8083,8,'RE','Reggio Emilia',1),
 (8084,8,'RI','Rieti',1),
 (8085,8,'RN','Rimini',1),
 (8086,8,'RM','Roma',1),
 (8087,8,'RO','Rovigo',1),
 (8088,8,'SA','Salerno',1),
 (8089,8,'SS','Sassari',1),
 (8090,8,'SV','Savona',1),
 (8091,8,'SI','Siena',1),
 (8092,8,'SR','Siracusa',1),
 (8093,8,'SO','Sondrio',1),
 (8094,8,'TA','Taranto',1),
 (8095,8,'TE','Teramo',1),
 (8096,8,'TR','Terni',1),
 (8097,8,'TO','Torino',1),
 (8098,8,'TP','Trapani',1),
 (8099,8,'TN','Trento',1),
 (8100,8,'TV','Treviso',1),
 (8101,8,'TS','Trieste',1),
 (8102,8,'UD','Udine',1),
 (8103,8,'VA','Varese',1),
 (8104,8,'VE','Venezia',1),
 (8105,8,'VB','Verbano-Cusio-Ossola',1),
 (8106,8,'VC','Vercelli',1),
 (8107,8,'VR','Verona',1),
 (8108,8,'VV','Vibo Valentia',1),
 (8109,8,'VI','Vicenza',1),
 (8110,8,'VT','Viterbo',1),
 (11001,11,'DR','Drenthe',1),
 (11002,11,'FL','Flevoland',1),
 (11003,11,'FR','Friesland',1),
 (11004,11,'GE','Gelderland',1),
 (11005,11,'GR','Groningen',1),
 (11006,11,'LI','Limburg',1),
 (11007,11,'NB','Noord-Brabant',1),
 (11008,11,'NH','Noord-Holland',1),
 (11009,11,'OV','Overijssel',1),
 (11010,11,'UT','Utrecht',1),
 (11011,11,'ZE','Zeeland',1),
 (11012,11,'ZH','Zuid-Holland',1),
 (15001,15,'AN','Andalusia',1),
 (15002,15,'AR','Aragon',1),
 (15003,15,'AS','Asturias',1),
 (15004,15,'IB','Balearic Islands',1),
 (15005,15,'PV','Basque Country',1),
 (15006,15,'CN','Canary Islands',1),
 (15007,15,'CB','Cantabria',1),
 (15008,15,'CL','Castile and Leon',1),
 (15009,15,'CM','Castile-La Mancha',1),
 (15010,15,'CT','Catalonia',1),
 (15011,15,'CE','Ceuta',1),
 (15012,15,'EX','Extremadura',1),
 (15013,15,'GA','Galicia',1),
 (15014,15,'LO','La Rioja',1),
 (15015,15,'M','Madrid',1),
 (15016,15,'ML','Melilla',1),
 (15017,15,'MU','Murcia',1),
 (15018,15,'NA','Navarra',1),
 (15019,15,'VC','Valencia',1),
 (19001,19,'AL','Alabama',1),
 (19002,19,'AK','Alaska',1),
 (19003,19,'AZ','Arizona',1),
 (19004,19,'AR','Arkansas',1),
 (19005,19,'CA','California',1),
 (19006,19,'CO','Colorado',1),
 (19007,19,'CT','Connecticut',1),
 (19008,19,'DC','District of Columbia',1),
 (19009,19,'DE','Delaware',1),
 (19010,19,'FL','Florida',1),
 (19011,19,'GA','Georgia',1),
 (19012,19,'HI','Hawaii',1),
 (19013,19,'ID','Idaho',1),
 (19014,19,'IL','Illinois',1),
 (19015,19,'IN','Indiana',1),
 (19016,19,'IA','Iowa',1),
 (19017,19,'KS','Kansas',1),
 (19018,19,'KY','Kentucky ',1),
 (19019,19,'LA','Louisiana ',1),
 (19020,19,'ME','Maine',1),
 (19021,19,'MD','Maryland',1),
 (19022,19,'MA','Massachusetts',1),
 (19023,19,'MI','Michigan',1),
 (19024,19,'MN','Minnesota',1),
 (19025,19,'MS','Mississippi',1),
 (19026,19,'MO','Missouri',1),
 (19027,19,'MT','Montana',1),
 (19028,19,'NE','Nebraska',1),
 (19029,19,'NV','Nevada',1),
 (19030,19,'NH','New Hampshire',1),
 (19031,19,'NJ','New Jersey',1),
 (19032,19,'NM','New Mexico',1),
 (19033,19,'NY','New York',1),
 (19034,19,'NC','North Carolina',1),
 (19035,19,'ND','North Dakota',1),
 (19036,19,'OH','Ohio',1),
 (19037,19,'OK','Oklahoma ',1),
 (19038,19,'OR','Oregon',1),
 (19039,19,'PA','Pennsylvania',1),
 (19040,19,'PR','Puerto Rico',1),
 (19041,19,'RI','Rhode Island',1),
 (19042,19,'SC','South Carolina',1),
 (19043,19,'SD','South Dakota',1),
 (19044,19,'TN','Tennessee',1),
 (19045,19,'TX','Texas',1),
 (19046,19,'UT','Utah',1),
 (19047,19,'VT','Vermont',1),
 (19048,19,'VA','Virginia',1),
 (19049,19,'WA','Washington',1),
 (19050,19,'WV','West Virginia',1),
 (19051,19,'WI','Wisconsin',1),
 (19052,19,'WY','Wyoming',1),
 (32001,32,'ACT','Australian Capital Territory',1),
 (32002,32,'NSW','New South Wales',1),
 (32003,32,'NT','Northern Territory',1),
 (32004,32,'QLD','Queensland',1),
 (32005,32,'SA','South Australia',1),
 (32006,32,'TAS','Tasmania',1),
 (32007,32,'VIC','Victoria',1),
 (32008,32,'WA','Western Australia',1),
 (144001,144,'MX-AGS','Aguascalientes',1),
 (144002,144,'MX-BCN','Baja California',1),
 (144003,144,'MX-BCS','Baja California Sur',1),
 (144004,144,'MX-CAM','Campeche',1),
 (144005,144,'MX-CHP','Chiapas',1),
 (144006,144,'MX-CHI','Chihuahua',1),
 (144007,144,'MX-COA','Coahuila',1),
 (144008,144,'MX-COL','Colima',1),
 (144009,144,'MX-DUR','Durango',1),
 (144010,144,'MX-GTO','Guanajuato',1),
 (144011,144,'MX-GRO','Guerrero',1),
 (144012,144,'MX-HGO','Hidalgo',1),
 (144013,144,'MX-JAL','Jalisco',1),
 (144014,144,'MX-MEX','Mexico',1),
 (144015,144,'MX-MIC','Michoacan',1),
 (144016,144,'MX-MOR','Morelos',1),
 (144017,144,'MX-NAY','Nayarit',1),
 (144018,144,'MX-NLE','Nuevo Leon',1),
 (144019,144,'MX-OAX','Oaxaca',1),
 (144020,144,'MX-PUE','Puebla',1),
 (144021,144,'MX-QRO','Queretaro',1),
 (144023,144,'MX-ROO','Quintana Roo',1),
 (144024,144,'MX-SLP','San Luis Potosí',1),
 (144025,144,'MX-SIN','Sinaloa',1),
 (144026,144,'MX-SON','Sonora',1),
 (144027,144,'MX-TAB','Tabasco',1),
 (144028,144,'MX-TAM','Tamaulipas',1),
 (144029,144,'MX-TLX','Tlaxcala',1),
 (144030,144,'MX-VER','Veracruz',1),
 (144031,144,'MX-YUC','Yucatan',1),
 (144032,144,'MX-ZAC','Zacatecas',1),
 (164001,164,'01','Østfold',1),
 (164002,164,'02','Akershus',1),
 (164003,164,'03','Oslo',1),
 (164004,164,'04','Hedmark',1),
 (164005,164,'05','Oppland',1),
 (164006,164,'06','Buskerud',1),
 (164007,164,'07','Vestfold',1),
 (164008,164,'08','Telemark',1),
 (164009,164,'09','Aust-Agder',1),
 (164010,164,'10','Vest-Agder',1),
 (164011,164,'11','Rogaland',1),
 (164012,164,'12','Hordaland',1),
 (164013,164,'14','Sogn og Fjordane',1),
 (164014,164,'15','Møre of Romsdal',1),
 (164015,164,'16','Sør-Trøndelag',1),
 (164016,164,'17','Nord-Trøndelag',1),
 (164017,164,'18','Nordland',1),
 (164018,164,'19','Troms',1),
 (164019,164,'20','Finnmark',1),
 (202001,202,'AG','Aargau',1),
 (202002,202,'AR','Appenzell Ausserrhoden',1),
 (202003,202,'AI','Appenzell Innerrhoden',1),
 (202004,202,'BL','Basel-Landschaft',1),
 (202005,202,'BS','Basel-Stadt',1),
 (202006,202,'BE','Bern',1),
 (202007,202,'FR','Fribourg',1),
 (202008,202,'GE','Geneva',1),
 (202009,202,'GL','Glarus',1),
 (202010,202,'GR','Graubünden',1),
 (202011,202,'JU','Jura',1),
 (202012,202,'LU','Lucerne',1),
 (202013,202,'NE','Neuchâtel',1),
 (202014,202,'NW','Nidwalden',1),
 (202015,202,'OW','Obwalden',1),
 (202016,202,'SH','Schaffhausen',1),
 (202017,202,'SZ','Schwyz',1),
 (202018,202,'SO','Solothurn',1),
 (202019,202,'SG','St. Gallen',1),
 (202020,202,'TG','Thurgau',1),
 (202021,202,'TI','Ticino',1),
 (202022,202,'UR','Uri',1),
 (202023,202,'VS','Valais',1),
 (202024,202,'VD','Vaud',1),
 (202025,202,'ZG','Zug',1),
 (202026,202,'ZH','Zürich',1);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;


--
-- Definition of table `release_`
--

DROP TABLE IF EXISTS `release_`;
CREATE TABLE `release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `state_` int(11) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`releaseId`),
  KEY `IX_8BD6BCA7` (`servletContextName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `release_`
--

/*!40000 ALTER TABLE `release_` DISABLE KEYS */;
INSERT INTO `release_` (`releaseId`,`createDate`,`modifiedDate`,`servletContextName`,`buildNumber`,`buildDate`,`verified`,`state_`,`testString`) VALUES 
 (1,'2015-10-14 10:07:03','2015-10-16 20:26:56','portal',6101,'2015-10-16 20:26:56',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.');
/*!40000 ALTER TABLE `release_` ENABLE KEYS */;


--
-- Definition of table `repository`
--

DROP TABLE IF EXISTS `repository`;
CREATE TABLE `repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`),
  UNIQUE KEY `IX_11641E26` (`uuid_`,`groupId`),
  KEY `IX_5253B1FA` (`groupId`),
  KEY `IX_74C17B04` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repository`
--

/*!40000 ALTER TABLE `repository` DISABLE KEYS */;
/*!40000 ALTER TABLE `repository` ENABLE KEYS */;


--
-- Definition of table `repositoryentry`
--

DROP TABLE IF EXISTS `repositoryentry`;
CREATE TABLE `repositoryentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`),
  UNIQUE KEY `IX_9BDCF489` (`repositoryId`,`mappedId`),
  UNIQUE KEY `IX_354AA664` (`uuid_`,`groupId`),
  KEY `IX_B7034B27` (`repositoryId`),
  KEY `IX_B9B1506` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repositoryentry`
--

/*!40000 ALTER TABLE `repositoryentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositoryentry` ENABLE KEYS */;


--
-- Definition of table `resource_`
--

DROP TABLE IF EXISTS `resource_`;
CREATE TABLE `resource_` (
  `resourceId` bigint(20) NOT NULL,
  `codeId` bigint(20) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourceId`),
  UNIQUE KEY `IX_67DE7856` (`codeId`,`primKey`),
  KEY `IX_2578FBD3` (`codeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resource_`
--

/*!40000 ALTER TABLE `resource_` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource_` ENABLE KEYS */;


--
-- Definition of table `resourceaction`
--

DROP TABLE IF EXISTS `resourceaction`;
CREATE TABLE `resourceaction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`),
  UNIQUE KEY `IX_EDB9986E` (`name`,`actionId`),
  KEY `IX_81F2DB09` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resourceaction`
--

/*!40000 ALTER TABLE `resourceaction` DISABLE KEYS */;
INSERT INTO `resourceaction` (`resourceActionId`,`name`,`actionId`,`bitwiseValue`) VALUES 
 (1,'com.liferay.portlet.softwarecatalog','ADD_FRAMEWORK_VERSION',2),
 (2,'com.liferay.portlet.softwarecatalog','ADD_PRODUCT_ENTRY',4),
 (3,'com.liferay.portlet.softwarecatalog','PERMISSIONS',8),
 (4,'com.liferay.portal.model.Team','ASSIGN_MEMBERS',2),
 (5,'com.liferay.portal.model.Team','DELETE',4),
 (6,'com.liferay.portal.model.Team','PERMISSIONS',8),
 (7,'com.liferay.portal.model.Team','UPDATE',16),
 (8,'com.liferay.portal.model.Team','VIEW',1),
 (9,'com.liferay.portal.model.PasswordPolicy','ASSIGN_MEMBERS',2),
 (10,'com.liferay.portal.model.PasswordPolicy','DELETE',4),
 (11,'com.liferay.portal.model.PasswordPolicy','PERMISSIONS',8),
 (12,'com.liferay.portal.model.PasswordPolicy','UPDATE',16),
 (13,'com.liferay.portal.model.PasswordPolicy','VIEW',1),
 (14,'com.liferay.portlet.blogs.model.BlogsEntry','ADD_DISCUSSION',2),
 (15,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE',4),
 (16,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE_DISCUSSION',8),
 (17,'com.liferay.portlet.blogs.model.BlogsEntry','PERMISSIONS',16),
 (18,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE',32),
 (19,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE_DISCUSSION',64),
 (20,'com.liferay.portlet.blogs.model.BlogsEntry','VIEW',1),
 (21,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','DELETE',2),
 (22,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','PERMISSIONS',4),
 (23,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','UPDATE',8),
 (24,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','VIEW',1),
 (25,'com.liferay.portlet.journal.model.JournalFeed','DELETE',2),
 (26,'com.liferay.portlet.journal.model.JournalFeed','PERMISSIONS',4),
 (27,'com.liferay.portlet.journal.model.JournalFeed','UPDATE',8),
 (28,'com.liferay.portlet.journal.model.JournalFeed','VIEW',1),
 (29,'com.liferay.portlet.wiki.model.WikiNode','ADD_ATTACHMENT',2),
 (30,'com.liferay.portlet.wiki.model.WikiNode','ADD_PAGE',4),
 (31,'com.liferay.portlet.wiki.model.WikiNode','DELETE',8),
 (32,'com.liferay.portlet.wiki.model.WikiNode','IMPORT',16),
 (33,'com.liferay.portlet.wiki.model.WikiNode','PERMISSIONS',32),
 (34,'com.liferay.portlet.wiki.model.WikiNode','SUBSCRIBE',64),
 (35,'com.liferay.portlet.wiki.model.WikiNode','UPDATE',128),
 (36,'com.liferay.portlet.wiki.model.WikiNode','VIEW',1),
 (37,'com.liferay.portlet.announcements.model.AnnouncementsEntry','DELETE',2),
 (38,'com.liferay.portlet.announcements.model.AnnouncementsEntry','UPDATE',4),
 (39,'com.liferay.portlet.announcements.model.AnnouncementsEntry','VIEW',1),
 (40,'com.liferay.portlet.announcements.model.AnnouncementsEntry','PERMISSIONS',8),
 (41,'com.liferay.portlet.bookmarks','ADD_ENTRY',2),
 (42,'com.liferay.portlet.bookmarks','ADD_FOLDER',4),
 (43,'com.liferay.portlet.bookmarks','PERMISSIONS',8),
 (44,'com.liferay.portlet.bookmarks','VIEW',1),
 (45,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','DELETE',2),
 (46,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','PERMISSIONS',4),
 (47,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','UPDATE',8),
 (48,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','VIEW',1),
 (49,'com.liferay.portlet.asset.model.AssetVocabulary','DELETE',2),
 (50,'com.liferay.portlet.asset.model.AssetVocabulary','PERMISSIONS',4),
 (51,'com.liferay.portlet.asset.model.AssetVocabulary','UPDATE',8),
 (52,'com.liferay.portlet.asset.model.AssetVocabulary','VIEW',1),
 (53,'com.liferay.portlet.documentlibrary.model.DLFolder','ACCESS',2),
 (54,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_DOCUMENT',4),
 (55,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SHORTCUT',8),
 (56,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SUBFOLDER',16),
 (57,'com.liferay.portlet.documentlibrary.model.DLFolder','DELETE',32),
 (58,'com.liferay.portlet.documentlibrary.model.DLFolder','PERMISSIONS',64),
 (59,'com.liferay.portlet.documentlibrary.model.DLFolder','UPDATE',128),
 (60,'com.liferay.portlet.documentlibrary.model.DLFolder','VIEW',1),
 (61,'com.liferay.portlet.expando.model.ExpandoColumn','DELETE',2),
 (62,'com.liferay.portlet.expando.model.ExpandoColumn','PERMISSIONS',4),
 (63,'com.liferay.portlet.expando.model.ExpandoColumn','UPDATE',8),
 (64,'com.liferay.portlet.expando.model.ExpandoColumn','VIEW',1),
 (65,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT',2),
 (66,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT_TYPE',4),
 (67,'com.liferay.portlet.documentlibrary','ADD_FOLDER',8),
 (68,'com.liferay.portlet.documentlibrary','ADD_REPOSITORY',16),
 (69,'com.liferay.portlet.documentlibrary','ADD_STRUCTURE',32),
 (70,'com.liferay.portlet.documentlibrary','ADD_SHORTCUT',64),
 (71,'com.liferay.portlet.documentlibrary','PERMISSIONS',128),
 (72,'com.liferay.portlet.documentlibrary','UPDATE',256),
 (73,'com.liferay.portlet.documentlibrary','VIEW',1),
 (74,'com.liferay.portlet.calendar.model.CalEvent','ADD_DISCUSSION',2),
 (75,'com.liferay.portlet.calendar.model.CalEvent','DELETE',4),
 (76,'com.liferay.portlet.calendar.model.CalEvent','DELETE_DISCUSSION',8),
 (77,'com.liferay.portlet.calendar.model.CalEvent','PERMISSIONS',16),
 (78,'com.liferay.portlet.calendar.model.CalEvent','UPDATE',32),
 (79,'com.liferay.portlet.calendar.model.CalEvent','UPDATE_DISCUSSION',64),
 (80,'com.liferay.portlet.calendar.model.CalEvent','VIEW',1),
 (81,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_ITEM',2),
 (82,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_SUBCATEGORY',4),
 (83,'com.liferay.portlet.shopping.model.ShoppingCategory','DELETE',8),
 (84,'com.liferay.portlet.shopping.model.ShoppingCategory','PERMISSIONS',16),
 (85,'com.liferay.portlet.shopping.model.ShoppingCategory','UPDATE',32),
 (86,'com.liferay.portlet.shopping.model.ShoppingCategory','VIEW',1),
 (87,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','ADD_DISCUSSION',2),
 (88,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE',4),
 (89,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE_DISCUSSION',8),
 (90,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','PERMISSIONS',16),
 (91,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE',32),
 (92,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE_DISCUSSION',64),
 (93,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','VIEW',1),
 (94,'com.liferay.portlet.journal','ADD_ARTICLE',2),
 (95,'com.liferay.portlet.journal','ADD_FEED',4),
 (96,'com.liferay.portlet.journal','ADD_STRUCTURE',8),
 (97,'com.liferay.portlet.journal','ADD_TEMPLATE',16),
 (98,'com.liferay.portlet.journal','SUBSCRIBE',32),
 (99,'com.liferay.portlet.journal','PERMISSIONS',64),
 (100,'com.liferay.portlet.calendar','ADD_EVENT',2),
 (101,'com.liferay.portlet.calendar','EXPORT_ALL_EVENTS',4),
 (102,'com.liferay.portlet.calendar','PERMISSIONS',8),
 (103,'com.liferay.portal.model.LayoutPrototype','DELETE',2),
 (104,'com.liferay.portal.model.LayoutPrototype','PERMISSIONS',4),
 (105,'com.liferay.portal.model.LayoutPrototype','UPDATE',8),
 (106,'com.liferay.portal.model.LayoutPrototype','VIEW',1),
 (107,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','ADD_RECORD',2),
 (108,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','DELETE',4),
 (109,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','PERMISSIONS',8),
 (110,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','UPDATE',16),
 (111,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','VIEW',1),
 (112,'com.liferay.portal.model.Organization','ASSIGN_MEMBERS',2),
 (113,'com.liferay.portal.model.Organization','ASSIGN_USER_ROLES',4),
 (114,'com.liferay.portal.model.Organization','DELETE',8),
 (115,'com.liferay.portal.model.Organization','MANAGE_ANNOUNCEMENTS',16),
 (116,'com.liferay.portal.model.Organization','MANAGE_SUBORGANIZATIONS',32),
 (117,'com.liferay.portal.model.Organization','MANAGE_USERS',64),
 (118,'com.liferay.portal.model.Organization','PERMISSIONS',128),
 (119,'com.liferay.portal.model.Organization','UPDATE',256),
 (120,'com.liferay.portal.model.Organization','VIEW',1),
 (121,'com.liferay.portlet.softwarecatalog.model.SCLicense','DELETE',2),
 (122,'com.liferay.portlet.softwarecatalog.model.SCLicense','PERMISSIONS',4),
 (123,'com.liferay.portlet.softwarecatalog.model.SCLicense','UPDATE',8),
 (124,'com.liferay.portlet.softwarecatalog.model.SCLicense','VIEW',1),
 (125,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','DELETE',2),
 (126,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','PERMISSIONS',4),
 (127,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','UPDATE',8),
 (128,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','VIEW',1),
 (129,'com.liferay.portlet.journal.model.JournalTemplate','DELETE',2),
 (130,'com.liferay.portlet.journal.model.JournalTemplate','PERMISSIONS',4),
 (131,'com.liferay.portlet.journal.model.JournalTemplate','UPDATE',8),
 (132,'com.liferay.portlet.journal.model.JournalTemplate','VIEW',1),
 (133,'com.liferay.portlet.journal.model.JournalArticle','ADD_DISCUSSION',2),
 (134,'com.liferay.portlet.journal.model.JournalArticle','DELETE',4),
 (135,'com.liferay.portlet.journal.model.JournalArticle','DELETE_DISCUSSION',8),
 (136,'com.liferay.portlet.journal.model.JournalArticle','EXPIRE',16),
 (137,'com.liferay.portlet.journal.model.JournalArticle','PERMISSIONS',32),
 (138,'com.liferay.portlet.journal.model.JournalArticle','UPDATE',64),
 (139,'com.liferay.portlet.journal.model.JournalArticle','UPDATE_DISCUSSION',128),
 (140,'com.liferay.portlet.journal.model.JournalArticle','VIEW',1),
 (141,'com.liferay.portlet.dynamicdatalists','ADD_RECORD_SET',2),
 (142,'com.liferay.portlet.dynamicdatalists','ADD_STRUCTURE',4),
 (143,'com.liferay.portlet.dynamicdatalists','ADD_TEMPLATE',8),
 (144,'com.liferay.portlet.dynamicdatalists','PERMISSIONS',16),
 (145,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ACCESS',2),
 (146,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_ENTRY',4),
 (147,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_SUBFOLDER',8),
 (148,'com.liferay.portlet.bookmarks.model.BookmarksFolder','DELETE',16),
 (149,'com.liferay.portlet.bookmarks.model.BookmarksFolder','PERMISSIONS',32),
 (150,'com.liferay.portlet.bookmarks.model.BookmarksFolder','UPDATE',64),
 (151,'com.liferay.portlet.bookmarks.model.BookmarksFolder','VIEW',1),
 (152,'com.liferay.portal.model.Group','ADD_LAYOUT',2),
 (153,'com.liferay.portal.model.Group','ADD_LAYOUT_BRANCH',4),
 (154,'com.liferay.portal.model.Group','ADD_LAYOUT_SET_BRANCH',8),
 (155,'com.liferay.portal.model.Group','ASSIGN_MEMBERS',16),
 (156,'com.liferay.portal.model.Group','ASSIGN_USER_ROLES',32),
 (157,'com.liferay.portal.model.Group','CONFIGURE_PORTLETS',64),
 (158,'com.liferay.portal.model.Group','DELETE',128),
 (159,'com.liferay.portal.model.Group','EXPORT_IMPORT_LAYOUTS',256),
 (160,'com.liferay.portal.model.Group','EXPORT_IMPORT_PORTLET_INFO',512),
 (161,'com.liferay.portal.model.Group','MANAGE_ANNOUNCEMENTS',1024),
 (162,'com.liferay.portal.model.Group','MANAGE_ARCHIVED_SETUPS',2048),
 (163,'com.liferay.portal.model.Group','MANAGE_LAYOUTS',4096),
 (164,'com.liferay.portal.model.Group','MANAGE_STAGING',8192),
 (165,'com.liferay.portal.model.Group','MANAGE_TEAMS',16384),
 (166,'com.liferay.portal.model.Group','PERMISSIONS',32768),
 (167,'com.liferay.portal.model.Group','PUBLISH_STAGING',65536),
 (168,'com.liferay.portal.model.Group','PUBLISH_TO_REMOTE',131072),
 (169,'com.liferay.portal.model.Group','UPDATE',262144),
 (170,'com.liferay.portal.model.Group','VIEW',1),
 (171,'com.liferay.portal.model.Group','VIEW_MEMBERS',524288),
 (172,'com.liferay.portal.model.Group','VIEW_STAGING',1048576),
 (173,'com.liferay.portlet.journal.model.JournalStructure','DELETE',2),
 (174,'com.liferay.portlet.journal.model.JournalStructure','PERMISSIONS',4),
 (175,'com.liferay.portlet.journal.model.JournalStructure','UPDATE',8),
 (176,'com.liferay.portlet.journal.model.JournalStructure','VIEW',1),
 (177,'com.liferay.portlet.asset.model.AssetTag','DELETE',2),
 (178,'com.liferay.portlet.asset.model.AssetTag','PERMISSIONS',4),
 (179,'com.liferay.portlet.asset.model.AssetTag','UPDATE',8),
 (180,'com.liferay.portlet.asset.model.AssetTag','VIEW',1),
 (181,'com.liferay.portal.model.Layout','ADD_DISCUSSION',2),
 (182,'com.liferay.portal.model.Layout','ADD_LAYOUT',4),
 (183,'com.liferay.portal.model.Layout','CONFIGURE_PORTLETS',8),
 (184,'com.liferay.portal.model.Layout','CUSTOMIZE',16),
 (185,'com.liferay.portal.model.Layout','DELETE',32),
 (186,'com.liferay.portal.model.Layout','DELETE_DISCUSSION',64),
 (187,'com.liferay.portal.model.Layout','PERMISSIONS',128),
 (188,'com.liferay.portal.model.Layout','UPDATE',256),
 (189,'com.liferay.portal.model.Layout','UPDATE_DISCUSSION',512),
 (190,'com.liferay.portal.model.Layout','VIEW',1),
 (191,'com.liferay.portlet.asset','ADD_TAG',2),
 (192,'com.liferay.portlet.asset','PERMISSIONS',4),
 (193,'com.liferay.portlet.asset','ADD_CATEGORY',8),
 (194,'com.liferay.portlet.asset','ADD_VOCABULARY',16),
 (195,'com.liferay.portal.model.LayoutBranch','DELETE',2),
 (196,'com.liferay.portal.model.LayoutBranch','PERMISSIONS',4),
 (197,'com.liferay.portal.model.LayoutBranch','UPDATE',8),
 (198,'com.liferay.portal.model.LayoutSetBranch','DELETE',2),
 (199,'com.liferay.portal.model.LayoutSetBranch','MERGE',4),
 (200,'com.liferay.portal.model.LayoutSetBranch','PERMISSIONS',8),
 (201,'com.liferay.portal.model.LayoutSetBranch','UPDATE',16),
 (202,'com.liferay.portlet.messageboards','ADD_CATEGORY',2),
 (203,'com.liferay.portlet.messageboards','ADD_FILE',4),
 (204,'com.liferay.portlet.messageboards','ADD_MESSAGE',8),
 (205,'com.liferay.portlet.messageboards','BAN_USER',16),
 (206,'com.liferay.portlet.messageboards','MOVE_THREAD',32),
 (207,'com.liferay.portlet.messageboards','LOCK_THREAD',64),
 (208,'com.liferay.portlet.messageboards','PERMISSIONS',128),
 (209,'com.liferay.portlet.messageboards','REPLY_TO_MESSAGE',256),
 (210,'com.liferay.portlet.messageboards','SUBSCRIBE',512),
 (211,'com.liferay.portlet.messageboards','UPDATE_THREAD_PRIORITY',1024),
 (212,'com.liferay.portlet.messageboards','VIEW',1),
 (213,'com.liferay.portlet.polls','ADD_QUESTION',2),
 (214,'com.liferay.portlet.polls','PERMISSIONS',4),
 (215,'com.liferay.portlet.shopping.model.ShoppingItem','DELETE',2),
 (216,'com.liferay.portlet.shopping.model.ShoppingItem','PERMISSIONS',4),
 (217,'com.liferay.portlet.shopping.model.ShoppingItem','UPDATE',8),
 (218,'com.liferay.portlet.shopping.model.ShoppingItem','VIEW',1),
 (219,'com.liferay.portlet.bookmarks.model.BookmarksEntry','DELETE',2),
 (220,'com.liferay.portlet.bookmarks.model.BookmarksEntry','PERMISSIONS',4),
 (221,'com.liferay.portlet.bookmarks.model.BookmarksEntry','UPDATE',8),
 (222,'com.liferay.portlet.bookmarks.model.BookmarksEntry','VIEW',1),
 (223,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','ADD_DISCUSSION',2),
 (224,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE',4),
 (225,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE_DISCUSSION',8),
 (226,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','PERMISSIONS',16),
 (227,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE',32),
 (228,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE_DISCUSSION',64),
 (229,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','VIEW',1),
 (230,'com.liferay.portal.model.User','DELETE',2),
 (231,'com.liferay.portal.model.User','IMPERSONATE',4),
 (232,'com.liferay.portal.model.User','PERMISSIONS',8),
 (233,'com.liferay.portal.model.User','UPDATE',16),
 (234,'com.liferay.portal.model.User','VIEW',1),
 (235,'com.liferay.portal.model.LayoutSetPrototype','DELETE',2),
 (236,'com.liferay.portal.model.LayoutSetPrototype','PERMISSIONS',4),
 (237,'com.liferay.portal.model.LayoutSetPrototype','UPDATE',8),
 (238,'com.liferay.portal.model.LayoutSetPrototype','VIEW',1),
 (239,'com.liferay.portlet.shopping','ADD_CATEGORY',2),
 (240,'com.liferay.portlet.shopping','ADD_ITEM',4),
 (241,'com.liferay.portlet.shopping','MANAGE_COUPONS',8),
 (242,'com.liferay.portlet.shopping','MANAGE_ORDERS',16),
 (243,'com.liferay.portlet.shopping','PERMISSIONS',32),
 (244,'com.liferay.portlet.shopping','VIEW',1),
 (245,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','DELETE',2),
 (246,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','PERMISSIONS',4),
 (247,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','UPDATE',8),
 (248,'com.liferay.portlet.wiki','ADD_NODE',2),
 (249,'com.liferay.portlet.wiki','PERMISSIONS',4),
 (250,'com.liferay.portlet.polls.model.PollsQuestion','ADD_VOTE',2),
 (251,'com.liferay.portlet.polls.model.PollsQuestion','DELETE',4),
 (252,'com.liferay.portlet.polls.model.PollsQuestion','PERMISSIONS',8),
 (253,'com.liferay.portlet.polls.model.PollsQuestion','UPDATE',16),
 (254,'com.liferay.portlet.polls.model.PollsQuestion','VIEW',1),
 (255,'com.liferay.portlet.shopping.model.ShoppingOrder','DELETE',2),
 (256,'com.liferay.portlet.shopping.model.ShoppingOrder','PERMISSIONS',4),
 (257,'com.liferay.portlet.shopping.model.ShoppingOrder','UPDATE',8),
 (258,'com.liferay.portlet.shopping.model.ShoppingOrder','VIEW',1),
 (259,'com.liferay.portal.model.UserGroup','ASSIGN_MEMBERS',2),
 (260,'com.liferay.portal.model.UserGroup','DELETE',4),
 (261,'com.liferay.portal.model.UserGroup','MANAGE_ANNOUNCEMENTS',8),
 (262,'com.liferay.portal.model.UserGroup','PERMISSIONS',16),
 (263,'com.liferay.portal.model.UserGroup','UPDATE',32),
 (264,'com.liferay.portal.model.UserGroup','VIEW',1),
 (265,'com.liferay.portal.model.Role','ASSIGN_MEMBERS',2),
 (266,'com.liferay.portal.model.Role','DEFINE_PERMISSIONS',4),
 (267,'com.liferay.portal.model.Role','DELETE',8),
 (268,'com.liferay.portal.model.Role','MANAGE_ANNOUNCEMENTS',16),
 (269,'com.liferay.portal.model.Role','PERMISSIONS',32),
 (270,'com.liferay.portal.model.Role','UPDATE',64),
 (271,'com.liferay.portal.model.Role','VIEW',1),
 (272,'com.liferay.portlet.messageboards.model.MBCategory','ADD_FILE',2),
 (273,'com.liferay.portlet.messageboards.model.MBCategory','ADD_MESSAGE',4),
 (274,'com.liferay.portlet.messageboards.model.MBCategory','ADD_SUBCATEGORY',8),
 (275,'com.liferay.portlet.messageboards.model.MBCategory','DELETE',16),
 (276,'com.liferay.portlet.messageboards.model.MBCategory','LOCK_THREAD',32),
 (277,'com.liferay.portlet.messageboards.model.MBCategory','MOVE_THREAD',64),
 (278,'com.liferay.portlet.messageboards.model.MBCategory','PERMISSIONS',128),
 (279,'com.liferay.portlet.messageboards.model.MBCategory','REPLY_TO_MESSAGE',256),
 (280,'com.liferay.portlet.messageboards.model.MBCategory','SUBSCRIBE',512),
 (281,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE',1024),
 (282,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE_THREAD_PRIORITY',2048),
 (283,'com.liferay.portlet.messageboards.model.MBCategory','VIEW',1),
 (284,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP',2),
 (285,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP_INSTANCE',4),
 (286,'com.liferay.portlet.mobiledevicerules','CONFIGURATION',8),
 (287,'com.liferay.portlet.mobiledevicerules','VIEW',1),
 (288,'com.liferay.portlet.mobiledevicerules','PERMISSIONS',16),
 (289,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','DELETE',2),
 (290,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','PERMISSIONS',4),
 (291,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','UPDATE',8),
 (292,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','VIEW',1),
 (293,'com.liferay.portlet.wiki.model.WikiPage','ADD_DISCUSSION',2),
 (294,'com.liferay.portlet.wiki.model.WikiPage','DELETE',4),
 (295,'com.liferay.portlet.wiki.model.WikiPage','DELETE_DISCUSSION',8),
 (296,'com.liferay.portlet.wiki.model.WikiPage','PERMISSIONS',16),
 (297,'com.liferay.portlet.wiki.model.WikiPage','SUBSCRIBE',32),
 (298,'com.liferay.portlet.wiki.model.WikiPage','UPDATE',64),
 (299,'com.liferay.portlet.wiki.model.WikiPage','UPDATE_DISCUSSION',128),
 (300,'com.liferay.portlet.wiki.model.WikiPage','VIEW',1),
 (301,'com.liferay.portlet.asset.model.AssetCategory','ADD_CATEGORY',2),
 (302,'com.liferay.portlet.asset.model.AssetCategory','DELETE',4),
 (303,'com.liferay.portlet.asset.model.AssetCategory','PERMISSIONS',8),
 (304,'com.liferay.portlet.asset.model.AssetCategory','UPDATE',16),
 (305,'com.liferay.portlet.asset.model.AssetCategory','VIEW',1),
 (306,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','DELETE',2),
 (307,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','PERMISSIONS',4),
 (308,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','UPDATE',8),
 (309,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','VIEW',1),
 (310,'com.liferay.portlet.messageboards.model.MBMessage','DELETE',2),
 (311,'com.liferay.portlet.messageboards.model.MBMessage','PERMISSIONS',4),
 (312,'com.liferay.portlet.messageboards.model.MBMessage','SUBSCRIBE',8),
 (313,'com.liferay.portlet.messageboards.model.MBMessage','UPDATE',16),
 (314,'com.liferay.portlet.messageboards.model.MBMessage','VIEW',1),
 (315,'com.liferay.portlet.messageboards.model.MBThread','SUBSCRIBE',2),
 (316,'com.liferay.portlet.messageboards.model.MBThread','PERMISSIONS',4),
 (317,'com.liferay.portlet.blogs','ADD_ENTRY',2),
 (318,'com.liferay.portlet.blogs','PERMISSIONS',4),
 (319,'com.liferay.portlet.blogs','SUBSCRIBE',8),
 (320,'com.liferay.portlet.documentlibrary.model.DLFileEntry','ADD_DISCUSSION',2),
 (321,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE',4),
 (322,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE_DISCUSSION',8),
 (323,'com.liferay.portlet.documentlibrary.model.DLFileEntry','PERMISSIONS',16),
 (324,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE',32),
 (325,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE_DISCUSSION',64),
 (326,'com.liferay.portlet.documentlibrary.model.DLFileEntry','VIEW',1),
 (327,'98','ACCESS_IN_CONTROL_PANEL',2),
 (328,'98','ADD_TO_PAGE',4),
 (329,'98','CONFIGURATION',8),
 (330,'98','VIEW',1),
 (331,'98','PERMISSIONS',16),
 (332,'66','VIEW',1),
 (333,'66','ADD_TO_PAGE',2),
 (334,'66','CONFIGURATION',4),
 (335,'66','PERMISSIONS',8),
 (336,'156','VIEW',1),
 (337,'156','ADD_TO_PAGE',2),
 (338,'156','ACCESS_IN_CONTROL_PANEL',4),
 (339,'156','CONFIGURATION',8),
 (340,'156','PERMISSIONS',16),
 (341,'180','VIEW',1),
 (342,'180','ADD_TO_PAGE',2),
 (343,'180','CONFIGURATION',4),
 (344,'180','PERMISSIONS',8),
 (345,'152','ACCESS_IN_CONTROL_PANEL',2),
 (346,'152','CONFIGURATION',4),
 (347,'152','VIEW',1),
 (348,'152','PERMISSIONS',8),
 (349,'27','VIEW',1),
 (350,'27','ADD_TO_PAGE',2),
 (351,'27','CONFIGURATION',4),
 (352,'27','PERMISSIONS',8),
 (353,'88','VIEW',1),
 (354,'88','ADD_TO_PAGE',2),
 (355,'88','CONFIGURATION',4),
 (356,'88','PERMISSIONS',8),
 (357,'87','VIEW',1),
 (358,'87','ADD_TO_PAGE',2),
 (359,'87','CONFIGURATION',4),
 (360,'87','PERMISSIONS',8),
 (361,'134','ACCESS_IN_CONTROL_PANEL',2),
 (362,'134','CONFIGURATION',4),
 (363,'134','VIEW',1),
 (364,'134','PERMISSIONS',8),
 (365,'130','ACCESS_IN_CONTROL_PANEL',2),
 (366,'130','CONFIGURATION',4),
 (367,'130','VIEW',1),
 (368,'130','PERMISSIONS',8),
 (369,'122','VIEW',1),
 (370,'122','ADD_TO_PAGE',2),
 (371,'122','CONFIGURATION',4),
 (372,'122','PERMISSIONS',8),
 (373,'36','ADD_TO_PAGE',2),
 (374,'36','CONFIGURATION',4),
 (375,'36','VIEW',1),
 (376,'36','PERMISSIONS',8),
 (377,'26','VIEW',1),
 (378,'26','ADD_TO_PAGE',2),
 (379,'26','CONFIGURATION',4),
 (380,'26','PERMISSIONS',8),
 (381,'104','VIEW',1),
 (382,'104','ADD_TO_PAGE',2),
 (383,'104','ACCESS_IN_CONTROL_PANEL',4),
 (384,'104','CONFIGURATION',8),
 (385,'104','PERMISSIONS',16),
 (386,'175','VIEW',1),
 (387,'175','ADD_TO_PAGE',2),
 (388,'175','CONFIGURATION',4),
 (389,'175','PERMISSIONS',8),
 (390,'64','VIEW',1),
 (391,'64','ADD_TO_PAGE',2),
 (392,'64','CONFIGURATION',4),
 (393,'64','PERMISSIONS',8),
 (394,'153','ACCESS_IN_CONTROL_PANEL',2),
 (395,'153','ADD_TO_PAGE',4),
 (396,'153','CONFIGURATION',8),
 (397,'153','VIEW',1),
 (398,'153','PERMISSIONS',16),
 (399,'129','ACCESS_IN_CONTROL_PANEL',2),
 (400,'129','CONFIGURATION',4),
 (401,'129','VIEW',1),
 (402,'129','PERMISSIONS',8),
 (403,'179','VIEW',1),
 (404,'179','ADD_TO_PAGE',2),
 (405,'179','ACCESS_IN_CONTROL_PANEL',4),
 (406,'179','CONFIGURATION',8),
 (407,'179','PERMISSIONS',16),
 (408,'173','VIEW',1),
 (409,'173','ADD_TO_PAGE',2),
 (410,'173','ACCESS_IN_CONTROL_PANEL',4),
 (411,'173','CONFIGURATION',8),
 (412,'173','PERMISSIONS',16),
 (413,'100','VIEW',1),
 (414,'100','ADD_TO_PAGE',2),
 (415,'100','CONFIGURATION',4),
 (416,'100','PERMISSIONS',8),
 (417,'157','ACCESS_IN_CONTROL_PANEL',2),
 (418,'157','CONFIGURATION',4),
 (419,'157','VIEW',1),
 (420,'157','PERMISSIONS',8),
 (421,'19','ADD_TO_PAGE',2),
 (422,'19','CONFIGURATION',4),
 (423,'19','VIEW',1),
 (424,'19','PERMISSIONS',8),
 (425,'160','VIEW',1),
 (426,'160','ADD_TO_PAGE',2),
 (427,'160','CONFIGURATION',4),
 (428,'160','PERMISSIONS',8),
 (429,'128','ACCESS_IN_CONTROL_PANEL',2),
 (430,'128','CONFIGURATION',4),
 (431,'128','VIEW',1),
 (432,'128','PERMISSIONS',8),
 (433,'181','VIEW',1),
 (434,'181','ADD_TO_PAGE',2),
 (435,'181','CONFIGURATION',4),
 (436,'181','PERMISSIONS',8),
 (437,'86','VIEW',1),
 (438,'86','ADD_TO_PAGE',2),
 (439,'86','CONFIGURATION',4),
 (440,'86','PERMISSIONS',8),
 (441,'154','ACCESS_IN_CONTROL_PANEL',2),
 (442,'154','CONFIGURATION',4),
 (443,'154','VIEW',1),
 (444,'154','PERMISSIONS',8),
 (445,'148','VIEW',1),
 (446,'148','ADD_TO_PAGE',2),
 (447,'148','CONFIGURATION',4),
 (448,'148','PERMISSIONS',8),
 (449,'11','ADD_TO_PAGE',2),
 (450,'11','CONFIGURATION',4),
 (451,'11','VIEW',1),
 (452,'11','PERMISSIONS',8),
 (453,'29','ADD_TO_PAGE',2),
 (454,'29','CONFIGURATION',4),
 (455,'29','VIEW',1),
 (456,'29','PERMISSIONS',8),
 (457,'174','VIEW',1),
 (458,'174','ADD_TO_PAGE',2),
 (459,'174','ACCESS_IN_CONTROL_PANEL',4),
 (460,'174','CONFIGURATION',8),
 (461,'174','PERMISSIONS',16),
 (462,'158','ACCESS_IN_CONTROL_PANEL',2),
 (463,'158','ADD_TO_PAGE',4),
 (464,'158','CONFIGURATION',8),
 (465,'158','VIEW',1),
 (466,'158','PERMISSIONS',16),
 (467,'178','VIEW',1),
 (468,'178','ADD_TO_PAGE',2),
 (469,'178','ACCESS_IN_CONTROL_PANEL',4),
 (470,'178','CONFIGURATION',8),
 (471,'178','PERMISSIONS',16),
 (472,'124','VIEW',1),
 (473,'124','ADD_TO_PAGE',2),
 (474,'124','CONFIGURATION',4),
 (475,'124','PERMISSIONS',8),
 (476,'8','ACCESS_IN_CONTROL_PANEL',2),
 (477,'8','ADD_TO_PAGE',4),
 (478,'8','CONFIGURATION',8),
 (479,'8','VIEW',1),
 (480,'8','PERMISSIONS',16),
 (481,'58','ADD_TO_PAGE',2),
 (482,'58','CONFIGURATION',4),
 (483,'58','VIEW',1),
 (484,'58','PERMISSIONS',8),
 (485,'97','VIEW',1),
 (486,'97','ADD_TO_PAGE',2),
 (487,'97','CONFIGURATION',4),
 (488,'97','PERMISSIONS',8),
 (489,'71','ADD_TO_PAGE',2),
 (490,'71','CONFIGURATION',4),
 (491,'71','VIEW',1),
 (492,'71','PERMISSIONS',8),
 (493,'39','VIEW',1),
 (494,'39','ADD_TO_PAGE',2),
 (495,'39','CONFIGURATION',4),
 (496,'39','PERMISSIONS',8),
 (497,'177','CONFIGURATION',2),
 (498,'177','VIEW',1),
 (499,'177','ADD_TO_PAGE',4),
 (500,'177','PERMISSIONS',8),
 (501,'177','ACCESS_IN_CONTROL_PANEL',16),
 (502,'170','VIEW',1),
 (503,'170','ADD_TO_PAGE',2),
 (504,'170','CONFIGURATION',4),
 (505,'170','PERMISSIONS',8),
 (506,'85','ADD_TO_PAGE',2),
 (507,'85','CONFIGURATION',4),
 (508,'85','VIEW',1),
 (509,'85','PERMISSIONS',8),
 (510,'118','VIEW',1),
 (511,'118','ADD_TO_PAGE',2),
 (512,'118','CONFIGURATION',4),
 (513,'118','PERMISSIONS',8),
 (514,'107','VIEW',1),
 (515,'107','ADD_TO_PAGE',2),
 (516,'107','CONFIGURATION',4),
 (517,'107','PERMISSIONS',8),
 (518,'30','VIEW',1),
 (519,'30','ADD_TO_PAGE',2),
 (520,'30','CONFIGURATION',4),
 (521,'30','PERMISSIONS',8),
 (522,'147','ACCESS_IN_CONTROL_PANEL',2),
 (523,'147','CONFIGURATION',4),
 (524,'147','VIEW',1),
 (525,'147','PERMISSIONS',8),
 (526,'48','VIEW',1),
 (527,'48','ADD_TO_PAGE',2),
 (528,'48','CONFIGURATION',4),
 (529,'48','PERMISSIONS',8),
 (530,'125','ACCESS_IN_CONTROL_PANEL',2),
 (531,'125','CONFIGURATION',4),
 (532,'125','EXPORT_USER',8),
 (533,'125','VIEW',1),
 (534,'125','PERMISSIONS',16),
 (535,'161','ACCESS_IN_CONTROL_PANEL',2),
 (536,'161','CONFIGURATION',4),
 (537,'161','VIEW',1),
 (538,'161','PERMISSIONS',8),
 (539,'144','VIEW',1),
 (540,'144','ADD_TO_PAGE',2),
 (541,'144','CONFIGURATION',4),
 (542,'144','PERMISSIONS',8),
 (543,'146','ACCESS_IN_CONTROL_PANEL',2),
 (544,'146','CONFIGURATION',4),
 (545,'146','VIEW',1),
 (546,'146','PERMISSIONS',8),
 (547,'62','VIEW',1),
 (548,'62','ADD_TO_PAGE',2),
 (549,'62','CONFIGURATION',4),
 (550,'62','PERMISSIONS',8),
 (551,'162','ACCESS_IN_CONTROL_PANEL',2),
 (552,'162','CONFIGURATION',4),
 (553,'162','VIEW',1),
 (554,'162','PERMISSIONS',8),
 (555,'176','VIEW',1),
 (556,'176','ADD_TO_PAGE',2),
 (557,'176','ACCESS_IN_CONTROL_PANEL',4),
 (558,'176','CONFIGURATION',8),
 (559,'176','PERMISSIONS',16),
 (560,'172','VIEW',1),
 (561,'172','ADD_TO_PAGE',2),
 (562,'172','CONFIGURATION',4),
 (563,'172','PERMISSIONS',8),
 (564,'108','VIEW',1),
 (565,'108','ADD_TO_PAGE',2),
 (566,'108','CONFIGURATION',4),
 (567,'108','PERMISSIONS',8),
 (568,'139','ACCESS_IN_CONTROL_PANEL',2),
 (569,'139','ADD_EXPANDO',4),
 (570,'139','CONFIGURATION',8),
 (571,'139','VIEW',1),
 (572,'139','PERMISSIONS',16),
 (573,'84','ADD_ENTRY',2),
 (574,'84','ADD_TO_PAGE',4),
 (575,'84','CONFIGURATION',8),
 (576,'84','VIEW',1),
 (577,'84','PERMISSIONS',16),
 (578,'101','VIEW',1),
 (579,'101','ADD_TO_PAGE',2),
 (580,'101','CONFIGURATION',4),
 (581,'101','PERMISSIONS',8),
 (582,'121','VIEW',1),
 (583,'121','ADD_TO_PAGE',2),
 (584,'121','CONFIGURATION',4),
 (585,'121','PERMISSIONS',8),
 (586,'49','VIEW',1),
 (587,'49','ADD_TO_PAGE',2),
 (588,'49','CONFIGURATION',4),
 (589,'49','PERMISSIONS',8),
 (590,'143','VIEW',1),
 (591,'143','ADD_TO_PAGE',2),
 (592,'143','CONFIGURATION',4),
 (593,'143','PERMISSIONS',8),
 (594,'167','ACCESS_IN_CONTROL_PANEL',2),
 (595,'167','ADD_TO_PAGE',4),
 (596,'167','CONFIGURATION',8),
 (597,'167','VIEW',1),
 (598,'167','PERMISSIONS',16),
 (599,'77','VIEW',1),
 (600,'77','ADD_TO_PAGE',2),
 (601,'77','CONFIGURATION',4),
 (602,'77','PERMISSIONS',8),
 (603,'115','VIEW',1),
 (604,'115','ADD_TO_PAGE',2),
 (605,'115','CONFIGURATION',4),
 (606,'115','PERMISSIONS',8),
 (607,'56','ADD_TO_PAGE',2),
 (608,'56','CONFIGURATION',4),
 (609,'56','VIEW',1),
 (610,'56','PERMISSIONS',8),
 (611,'142','VIEW',1),
 (612,'142','ADD_TO_PAGE',2),
 (613,'142','CONFIGURATION',4),
 (614,'142','PERMISSIONS',8),
 (615,'111','VIEW',1),
 (616,'111','ADD_TO_PAGE',2),
 (617,'111','CONFIGURATION',4),
 (618,'111','PERMISSIONS',8),
 (619,'16','PREFERENCES',2),
 (620,'16','GUEST_PREFERENCES',4),
 (621,'16','VIEW',1),
 (622,'16','ADD_TO_PAGE',8),
 (623,'16','CONFIGURATION',16),
 (624,'16','PERMISSIONS',32),
 (625,'3','VIEW',1),
 (626,'3','ADD_TO_PAGE',2),
 (627,'3','CONFIGURATION',4),
 (628,'3','PERMISSIONS',8),
 (629,'20','ACCESS_IN_CONTROL_PANEL',2),
 (630,'20','ADD_TO_PAGE',4),
 (631,'20','CONFIGURATION',8),
 (632,'20','VIEW',1),
 (633,'20','PERMISSIONS',16),
 (634,'23','VIEW',1),
 (635,'23','ADD_TO_PAGE',2),
 (636,'23','CONFIGURATION',4),
 (637,'23','PERMISSIONS',8),
 (638,'145','VIEW',1),
 (639,'145','ADD_TO_PAGE',2),
 (640,'145','CONFIGURATION',4),
 (641,'145','PERMISSIONS',8),
 (642,'83','ADD_ENTRY',2),
 (643,'83','ADD_TO_PAGE',4),
 (644,'83','CONFIGURATION',8),
 (645,'83','VIEW',1),
 (646,'83','PERMISSIONS',16),
 (647,'99','ACCESS_IN_CONTROL_PANEL',2),
 (648,'99','CONFIGURATION',4),
 (649,'99','VIEW',1),
 (650,'99','PERMISSIONS',8),
 (651,'70','VIEW',1),
 (652,'70','ADD_TO_PAGE',2),
 (653,'70','CONFIGURATION',4),
 (654,'70','PERMISSIONS',8),
 (655,'164','VIEW',1),
 (656,'164','ADD_TO_PAGE',2),
 (657,'164','CONFIGURATION',4),
 (658,'164','PERMISSIONS',8),
 (659,'141','VIEW',1),
 (660,'141','ADD_TO_PAGE',2),
 (661,'141','CONFIGURATION',4),
 (662,'141','PERMISSIONS',8),
 (663,'9','VIEW',1),
 (664,'9','ADD_TO_PAGE',2),
 (665,'9','CONFIGURATION',4),
 (666,'9','PERMISSIONS',8),
 (667,'137','ACCESS_IN_CONTROL_PANEL',2),
 (668,'137','CONFIGURATION',4),
 (669,'137','VIEW',1),
 (670,'137','PERMISSIONS',8),
 (671,'28','ACCESS_IN_CONTROL_PANEL',2),
 (672,'28','ADD_TO_PAGE',4),
 (673,'28','CONFIGURATION',8),
 (674,'28','VIEW',1),
 (675,'28','PERMISSIONS',16),
 (676,'133','VIEW',1),
 (677,'133','ADD_TO_PAGE',2),
 (678,'133','CONFIGURATION',4),
 (679,'133','PERMISSIONS',8),
 (680,'116','VIEW',1),
 (681,'116','ADD_TO_PAGE',2),
 (682,'116','CONFIGURATION',4),
 (683,'116','PERMISSIONS',8),
 (684,'15','ACCESS_IN_CONTROL_PANEL',2),
 (685,'15','ADD_TO_PAGE',4),
 (686,'15','CONFIGURATION',8),
 (687,'15','VIEW',1),
 (688,'15','PERMISSIONS',16),
 (689,'47','VIEW',1),
 (690,'47','ADD_TO_PAGE',2),
 (691,'47','CONFIGURATION',4),
 (692,'47','PERMISSIONS',8),
 (693,'82','VIEW',1),
 (694,'82','ADD_TO_PAGE',2),
 (695,'82','CONFIGURATION',4),
 (696,'82','PERMISSIONS',8),
 (697,'103','VIEW',1),
 (698,'103','ADD_TO_PAGE',2),
 (699,'103','CONFIGURATION',4),
 (700,'103','PERMISSIONS',8),
 (701,'151','ACCESS_IN_CONTROL_PANEL',2),
 (702,'151','CONFIGURATION',4),
 (703,'151','VIEW',1),
 (704,'151','PERMISSIONS',8),
 (705,'140','ACCESS_IN_CONTROL_PANEL',2),
 (706,'140','CONFIGURATION',4),
 (707,'140','VIEW',1),
 (708,'140','PERMISSIONS',8),
 (709,'54','VIEW',1),
 (710,'54','ADD_TO_PAGE',2),
 (711,'54','CONFIGURATION',4),
 (712,'54','PERMISSIONS',8),
 (713,'169','VIEW',1),
 (714,'169','ADD_TO_PAGE',2),
 (715,'169','CONFIGURATION',4),
 (716,'169','PERMISSIONS',8),
 (717,'132','ACCESS_IN_CONTROL_PANEL',2),
 (718,'132','CONFIGURATION',4),
 (719,'132','VIEW',1),
 (720,'132','PERMISSIONS',8),
 (721,'34','ADD_TO_PAGE',2),
 (722,'34','CONFIGURATION',4),
 (723,'34','VIEW',1),
 (724,'34','PERMISSIONS',8),
 (725,'61','VIEW',1),
 (726,'61','ADD_TO_PAGE',2),
 (727,'61','CONFIGURATION',4),
 (728,'61','PERMISSIONS',8),
 (729,'73','ADD_TO_PAGE',2),
 (730,'73','CONFIGURATION',4),
 (731,'73','VIEW',1),
 (732,'73','PERMISSIONS',8),
 (733,'31','VIEW',1),
 (734,'31','ADD_TO_PAGE',2),
 (735,'31','CONFIGURATION',4),
 (736,'31','PERMISSIONS',8),
 (737,'165','VIEW',1),
 (738,'165','ADD_TO_PAGE',2),
 (739,'165','ACCESS_IN_CONTROL_PANEL',4),
 (740,'165','CONFIGURATION',8),
 (741,'165','PERMISSIONS',16),
 (742,'136','ACCESS_IN_CONTROL_PANEL',2),
 (743,'136','CONFIGURATION',4),
 (744,'136','VIEW',1),
 (745,'136','PERMISSIONS',8),
 (746,'127','VIEW',1),
 (747,'127','ADD_TO_PAGE',2),
 (748,'127','ACCESS_IN_CONTROL_PANEL',4),
 (749,'127','CONFIGURATION',8),
 (750,'127','PERMISSIONS',16),
 (751,'50','VIEW',1),
 (752,'50','ADD_TO_PAGE',2),
 (753,'50','CONFIGURATION',4),
 (754,'50','PERMISSIONS',8),
 (755,'25','ACCESS_IN_CONTROL_PANEL',2),
 (756,'25','CONFIGURATION',4),
 (757,'25','VIEW',1),
 (758,'25','PERMISSIONS',8),
 (759,'166','ACCESS_IN_CONTROL_PANEL',2),
 (760,'166','ADD_TO_PAGE',4),
 (761,'166','CONFIGURATION',8),
 (762,'166','VIEW',1),
 (763,'166','PERMISSIONS',16),
 (764,'90','ADD_COMMUNITY',2),
 (765,'90','ADD_LAYOUT_PROTOTYPE',4),
 (766,'90','ADD_LAYOUT_SET_PROTOTYPE',8),
 (767,'90','ADD_LICENSE',16),
 (768,'90','ADD_ORGANIZATION',32),
 (769,'90','ADD_PASSWORD_POLICY',64),
 (770,'90','ADD_ROLE',128),
 (771,'90','ADD_USER',256),
 (772,'90','ADD_USER_GROUP',512),
 (773,'90','CONFIGURATION',1024),
 (774,'90','EXPORT_USER',2048),
 (775,'90','IMPERSONATE',4096),
 (776,'90','UNLINK_LAYOUT_SET_PROTOTYPE',8192),
 (777,'90','VIEW_CONTROL_PANEL',16384),
 (778,'90','ADD_TO_PAGE',32768),
 (779,'90','PERMISSIONS',65536),
 (780,'90','VIEW',1),
 (781,'150','ACCESS_IN_CONTROL_PANEL',2),
 (782,'150','CONFIGURATION',4),
 (783,'150','VIEW',1),
 (784,'150','PERMISSIONS',8),
 (785,'113','VIEW',1),
 (786,'113','ADD_TO_PAGE',2),
 (787,'113','CONFIGURATION',4),
 (788,'113','PERMISSIONS',8),
 (789,'33','ADD_TO_PAGE',2),
 (790,'33','CONFIGURATION',4),
 (791,'33','VIEW',1),
 (792,'33','PERMISSIONS',8),
 (793,'2','ACCESS_IN_CONTROL_PANEL',2),
 (794,'2','CONFIGURATION',4),
 (795,'2','VIEW',1),
 (796,'2','PERMISSIONS',8),
 (797,'119','VIEW',1),
 (798,'119','ADD_TO_PAGE',2),
 (799,'119','CONFIGURATION',4),
 (800,'119','PERMISSIONS',8),
 (801,'114','VIEW',1),
 (802,'114','ADD_TO_PAGE',2),
 (803,'114','CONFIGURATION',4),
 (804,'114','PERMISSIONS',8),
 (805,'149','ACCESS_IN_CONTROL_PANEL',2),
 (806,'149','CONFIGURATION',4),
 (807,'149','VIEW',1),
 (808,'149','PERMISSIONS',8),
 (809,'67','VIEW',1),
 (810,'67','ADD_TO_PAGE',2),
 (811,'67','CONFIGURATION',4),
 (812,'67','PERMISSIONS',8),
 (813,'110','VIEW',1),
 (814,'110','ADD_TO_PAGE',2),
 (815,'110','CONFIGURATION',4),
 (816,'110','PERMISSIONS',8),
 (817,'135','ACCESS_IN_CONTROL_PANEL',2),
 (818,'135','CONFIGURATION',4),
 (819,'135','VIEW',1),
 (820,'135','PERMISSIONS',8),
 (821,'59','VIEW',1),
 (822,'59','ADD_TO_PAGE',2),
 (823,'59','CONFIGURATION',4),
 (824,'59','PERMISSIONS',8),
 (825,'131','ACCESS_IN_CONTROL_PANEL',2),
 (826,'131','CONFIGURATION',4),
 (827,'131','VIEW',1),
 (828,'131','PERMISSIONS',8),
 (829,'102','VIEW',1),
 (830,'102','ADD_TO_PAGE',2),
 (831,'102','CONFIGURATION',4),
 (832,'102','PERMISSIONS',8),
 (833,'1_WAR_marketplaceportlet','VIEW',1),
 (834,'1_WAR_marketplaceportlet','ADD_TO_PAGE',2),
 (835,'1_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',4),
 (836,'1_WAR_marketplaceportlet','CONFIGURATION',8),
 (837,'1_WAR_marketplaceportlet','PERMISSIONS',16),
 (838,'2_WAR_marketplaceportlet','VIEW',1),
 (839,'2_WAR_marketplaceportlet','ADD_TO_PAGE',2),
 (840,'2_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',4),
 (841,'2_WAR_marketplaceportlet','CONFIGURATION',8),
 (842,'2_WAR_marketplaceportlet','PERMISSIONS',16),
 (843,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet','VIEW',1),
 (844,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet','ADD_TO_PAGE',2),
 (845,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet','CONFIGURATION',4),
 (846,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet','PERMISSIONS',8),
 (901,'Complemento_WAR_Complementoportlet','VIEW',1),
 (902,'Complemento_WAR_Complementoportlet','ADD_TO_PAGE',2),
 (903,'Complemento_WAR_Complementoportlet','CONFIGURATION',4),
 (904,'Complemento_WAR_Complementoportlet','PERMISSIONS',8);
/*!40000 ALTER TABLE `resourceaction` ENABLE KEYS */;


--
-- Definition of table `resourceblock`
--

DROP TABLE IF EXISTS `resourceblock`;
CREATE TABLE `resourceblock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockId`),
  UNIQUE KEY `IX_AEEA209C` (`companyId`,`groupId`,`name`,`permissionsHash`),
  KEY `IX_DA30B086` (`companyId`,`groupId`,`name`),
  KEY `IX_2D4CC782` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resourceblock`
--

/*!40000 ALTER TABLE `resourceblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourceblock` ENABLE KEYS */;


--
-- Definition of table `resourceblockpermission`
--

DROP TABLE IF EXISTS `resourceblockpermission`;
CREATE TABLE `resourceblockpermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`),
  UNIQUE KEY `IX_D63D20BB` (`resourceBlockId`,`roleId`),
  KEY `IX_4AB3756` (`resourceBlockId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resourceblockpermission`
--

/*!40000 ALTER TABLE `resourceblockpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourceblockpermission` ENABLE KEYS */;


--
-- Definition of table `resourcecode`
--

DROP TABLE IF EXISTS `resourcecode`;
CREATE TABLE `resourcecode` (
  `codeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`codeId`),
  UNIQUE KEY `IX_A32C097E` (`companyId`,`name`,`scope`),
  KEY `IX_717FDD47` (`companyId`),
  KEY `IX_AACAFF40` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resourcecode`
--

/*!40000 ALTER TABLE `resourcecode` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourcecode` ENABLE KEYS */;


--
-- Definition of table `resourcepermission`
--

DROP TABLE IF EXISTS `resourcepermission`;
CREATE TABLE `resourcepermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`),
  KEY `IX_88705859` (`companyId`,`name`,`primKey`,`ownerId`),
  KEY `IX_C94C7708` (`companyId`,`name`,`primKey`,`roleId`,`actionIds`),
  KEY `IX_60B99860` (`companyId`,`name`,`scope`),
  KEY `IX_2200AA69` (`companyId`,`name`,`scope`,`primKey`),
  KEY `IX_8D83D0CE` (`companyId`,`name`,`scope`,`primKey`,`roleId`),
  KEY `IX_D2E2B644` (`companyId`,`name`,`scope`,`primKey`,`roleId`,`actionIds`),
  KEY `IX_4A1F4402` (`companyId`,`name`,`scope`,`primKey`,`roleId`,`ownerId`,`actionIds`),
  KEY `IX_26284944` (`companyId`,`primKey`),
  KEY `IX_A37A0588` (`roleId`),
  KEY `IX_F4555981` (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resourcepermission`
--

/*!40000 ALTER TABLE `resourcepermission` DISABLE KEYS */;
INSERT INTO `resourcepermission` (`resourcePermissionId`,`companyId`,`name`,`scope`,`primKey`,`roleId`,`ownerId`,`actionIds`) VALUES 
 (164,10154,'100',1,'10154',10164,0,2),
 (165,10154,'100',1,'10154',10165,0,2),
 (29,10154,'100',2,'10189',10165,0,1),
 (214,10154,'101',1,'10154',10162,0,2),
 (215,10154,'101',1,'10154',10164,0,2),
 (216,10154,'101',1,'10154',10165,0,2),
 (60,10154,'101',2,'10189',10165,0,1),
 (344,10154,'101',4,'10323_LAYOUT_101_INSTANCE_XcvsWDoVD0O3',10162,0,1),
 (342,10154,'101',4,'10323_LAYOUT_101_INSTANCE_XcvsWDoVD0O3',10163,0,15),
 (343,10154,'101',4,'10323_LAYOUT_101_INSTANCE_XcvsWDoVD0O3',10170,0,1),
 (301,10154,'102',1,'10154',10162,0,2),
 (302,10154,'102',1,'10154',10164,0,2),
 (303,10154,'102',1,'10154',10165,0,2),
 (106,10154,'102',2,'10189',10165,0,1),
 (446,10154,'103',4,'10183_LAYOUT_103',10162,0,1),
 (444,10154,'103',4,'10183_LAYOUT_103',10163,0,15),
 (445,10154,'103',4,'10183_LAYOUT_103',10170,0,1),
 (152,10154,'104',1,'10154',10161,0,2),
 (22,10154,'104',2,'10189',10165,0,1),
 (201,10154,'107',1,'10154',10164,0,2),
 (202,10154,'107',1,'10154',10165,0,2),
 (48,10154,'107',2,'10189',10165,0,1),
 (210,10154,'108',1,'10154',10164,0,2),
 (211,10154,'108',1,'10154',10165,0,2),
 (58,10154,'108',2,'10189',10165,0,1),
 (174,10154,'11',1,'10154',10164,0,2),
 (175,10154,'11',1,'10154',10165,0,2),
 (36,10154,'11',2,'10189',10165,0,1),
 (297,10154,'110',1,'10154',10164,0,2),
 (298,10154,'110',1,'10154',10165,0,2),
 (102,10154,'110',2,'10189',10165,0,1),
 (236,10154,'111',1,'10154',10161,0,2),
 (68,10154,'111',2,'10189',10165,0,1),
 (292,10154,'114',1,'10154',10162,0,2),
 (293,10154,'114',1,'10154',10164,0,2),
 (294,10154,'114',1,'10154',10165,0,2),
 (99,10154,'114',2,'10189',10165,0,1),
 (329,10154,'114',4,'10313_LAYOUT_114',10162,0,1),
 (327,10154,'114',4,'10313_LAYOUT_114',10163,0,15),
 (328,10154,'114',4,'10313_LAYOUT_114',10170,0,1),
 (228,10154,'115',1,'10154',10162,0,2),
 (229,10154,'115',1,'10154',10164,0,2),
 (230,10154,'115',1,'10154',10165,0,2),
 (65,10154,'115',2,'10189',10165,0,1),
 (263,10154,'116',1,'10154',10162,0,2),
 (264,10154,'116',1,'10154',10164,0,2),
 (265,10154,'116',1,'10154',10165,0,2),
 (82,10154,'116',2,'10189',10165,0,1),
 (198,10154,'118',1,'10154',10162,0,2),
 (199,10154,'118',1,'10154',10164,0,2),
 (200,10154,'118',1,'10154',10165,0,2),
 (47,10154,'118',2,'10189',10165,0,1),
 (217,10154,'121',1,'10154',10162,0,2),
 (218,10154,'121',1,'10154',10164,0,2),
 (219,10154,'121',1,'10154',10165,0,2),
 (61,10154,'121',2,'10189',10165,0,1),
 (145,10154,'122',1,'10154',10162,0,2),
 (146,10154,'122',1,'10154',10164,0,2),
 (147,10154,'122',1,'10154',10165,0,2),
 (19,10154,'122',2,'10189',10165,0,1),
 (338,10154,'122',4,'10323_LAYOUT_122_INSTANCE_dkKboHn2hQ5j',10162,0,1),
 (336,10154,'122',4,'10323_LAYOUT_122_INSTANCE_dkKboHn2hQ5j',10163,0,15),
 (337,10154,'122',4,'10323_LAYOUT_122_INSTANCE_dkKboHn2hQ5j',10170,0,1),
 (354,10154,'122',4,'10332_LAYOUT_122_INSTANCE_wOEve7RHSXZr',10162,0,1),
 (352,10154,'122',4,'10332_LAYOUT_122_INSTANCE_wOEve7RHSXZr',10163,0,15),
 (353,10154,'122',4,'10332_LAYOUT_122_INSTANCE_wOEve7RHSXZr',10170,0,1),
 (631,10154,'125',1,'10154',10805,0,31),
 (646,10154,'125',1,'10154',10809,0,1),
 (735,10154,'125',1,'10154',10810,0,1),
 (52,10154,'125',2,'10189',10165,0,1),
 (605,10154,'125',4,'10175_LAYOUT_125',10162,0,1),
 (603,10154,'125',4,'10175_LAYOUT_125',10163,0,31),
 (604,10154,'125',4,'10175_LAYOUT_125',10170,0,1),
 (286,10154,'127',1,'10154',10161,0,2),
 (632,10154,'127',1,'10154',10805,0,31),
 (94,10154,'127',2,'10189',10165,0,1),
 (650,10154,'127',4,'10175_LAYOUT_127',10162,0,1),
 (648,10154,'127',4,'10175_LAYOUT_127',10163,0,31),
 (649,10154,'127',4,'10175_LAYOUT_127',10170,0,1),
 (737,10154,'128',1,'10154',10805,0,15),
 (736,10154,'128',1,'10154',10810,0,1),
 (32,10154,'128',2,'10189',10165,0,1),
 (464,10154,'128',4,'10175_LAYOUT_128',10162,0,1),
 (462,10154,'128',4,'10175_LAYOUT_128',10163,0,15),
 (463,10154,'128',4,'10175_LAYOUT_128',10170,0,1),
 (26,10154,'129',2,'10189',10165,0,1),
 (467,10154,'129',4,'10175_LAYOUT_129',10162,0,1),
 (465,10154,'129',4,'10175_LAYOUT_129',10163,0,15),
 (466,10154,'129',4,'10175_LAYOUT_129',10170,0,1),
 (744,10154,'130',1,'10154',10805,0,0),
 (18,10154,'130',2,'10189',10165,0,1),
 (748,10154,'130',4,'10175_LAYOUT_130',10162,0,1),
 (746,10154,'130',4,'10175_LAYOUT_130',10163,0,15),
 (747,10154,'130',4,'10175_LAYOUT_130',10164,0,1),
 (105,10154,'131',2,'10189',10165,0,1),
 (660,10154,'131',4,'10175_LAYOUT_131',10162,0,1),
 (658,10154,'131',4,'10175_LAYOUT_131',10163,0,15),
 (659,10154,'131',4,'10175_LAYOUT_131',10170,0,1),
 (88,10154,'132',2,'10189',10165,0,1),
 (17,10154,'134',2,'10189',10165,0,1),
 (713,10154,'134',4,'10175_LAYOUT_134',10162,0,1),
 (711,10154,'134',4,'10175_LAYOUT_134',10163,0,15),
 (712,10154,'134',4,'10175_LAYOUT_134',10170,0,1),
 (104,10154,'135',2,'10189',10165,0,1),
 (92,10154,'136',2,'10189',10165,0,1),
 (79,10154,'137',2,'10189',10165,0,1),
 (815,10154,'137',4,'10175_LAYOUT_137',10162,0,1),
 (813,10154,'137',4,'10175_LAYOUT_137',10163,0,15),
 (814,10154,'137',4,'10175_LAYOUT_137',10170,0,1),
 (601,10154,'139',4,'10175_LAYOUT_139',10163,0,31),
 (2,10154,'140',1,'10154',10165,0,2),
 (769,10154,'140',4,'10175_LAYOUT_140',10163,0,15),
 (252,10154,'141',1,'10154',10162,0,2),
 (253,10154,'141',1,'10154',10164,0,2),
 (254,10154,'141',1,'10154',10165,0,2),
 (76,10154,'141',2,'10189',10165,0,1),
 (335,10154,'141',4,'10323_LAYOUT_141_INSTANCE_w0QU5p7BDqDf',10162,0,1),
 (333,10154,'141',4,'10323_LAYOUT_141_INSTANCE_w0QU5p7BDqDf',10163,0,15),
 (334,10154,'141',4,'10323_LAYOUT_141_INSTANCE_w0QU5p7BDqDf',10170,0,1),
 (357,10154,'141',4,'10332_LAYOUT_141_INSTANCE_gUyp94hiLmPZ',10162,0,1),
 (355,10154,'141',4,'10332_LAYOUT_141_INSTANCE_gUyp94hiLmPZ',10163,0,15),
 (356,10154,'141',4,'10332_LAYOUT_141_INSTANCE_gUyp94hiLmPZ',10170,0,1),
 (220,10154,'143',1,'10154',10162,0,2),
 (221,10154,'143',1,'10154',10164,0,2),
 (222,10154,'143',1,'10154',10165,0,2),
 (62,10154,'143',2,'10189',10165,0,1),
 (461,10154,'145',4,'10175_LAYOUT_145',10162,0,1),
 (459,10154,'145',4,'10175_LAYOUT_145',10163,0,15),
 (460,10154,'145',4,'10175_LAYOUT_145',10170,0,1),
 (443,10154,'145',4,'10183_LAYOUT_145',10162,0,1),
 (441,10154,'145',4,'10183_LAYOUT_145',10163,0,15),
 (442,10154,'145',4,'10183_LAYOUT_145',10170,0,1),
 (54,10154,'146',2,'10189',10165,0,1),
 (903,10154,'146',4,'10175_LAYOUT_146',10162,0,1),
 (901,10154,'146',4,'10175_LAYOUT_146',10163,0,15),
 (902,10154,'146',4,'10175_LAYOUT_146',10170,0,1),
 (117,10154,'147',2,'10189',10164,0,2),
 (50,10154,'147',2,'10189',10165,0,1),
 (171,10154,'148',1,'10154',10162,0,2),
 (172,10154,'148',1,'10154',10164,0,2),
 (173,10154,'148',1,'10154',10165,0,2),
 (35,10154,'148',2,'10189',10165,0,1),
 (326,10154,'148',4,'10313_LAYOUT_148_INSTANCE_2IL2TR3qoXrh',10162,0,1),
 (324,10154,'148',4,'10313_LAYOUT_148_INSTANCE_2IL2TR3qoXrh',10163,0,15),
 (325,10154,'148',4,'10313_LAYOUT_148_INSTANCE_2IL2TR3qoXrh',10170,0,1),
 (100,10154,'149',2,'10189',10165,0,1),
 (261,10154,'15',1,'10154',10164,0,4),
 (262,10154,'15',1,'10154',10165,0,4),
 (633,10154,'15',1,'10154',10805,0,31),
 (733,10154,'15',1,'10154',10810,0,31),
 (124,10154,'15',2,'10189',10164,0,2),
 (81,10154,'15',2,'10189',10165,0,1),
 (709,10154,'15',4,'10175_LAYOUT_15',10162,0,1),
 (707,10154,'15',4,'10175_LAYOUT_15',10163,0,31),
 (708,10154,'15',4,'10175_LAYOUT_15',10164,0,1),
 (98,10154,'150',2,'10189',10165,0,1),
 (84,10154,'151',2,'10189',10165,0,1),
 (745,10154,'152',1,'10154',10805,0,15),
 (111,10154,'152',2,'10189',10164,0,2),
 (16,10154,'152',2,'10189',10165,0,1),
 (156,10154,'153',1,'10154',10164,0,4),
 (4,10154,'153',1,'10154',10165,0,2),
 (24,10154,'153',2,'10189',10165,0,1),
 (114,10154,'154',2,'10189',10164,0,2),
 (34,10154,'154',2,'10189',10165,0,1),
 (507,10154,'156',4,'10175_LAYOUT_156',10162,0,1),
 (505,10154,'156',4,'10175_LAYOUT_156',10163,0,31),
 (506,10154,'156',4,'10175_LAYOUT_156',10170,0,1),
 (31,10154,'157',2,'10189',10165,0,1),
 (178,10154,'158',1,'10154',10164,0,4),
 (3,10154,'158',1,'10154',10165,0,2),
 (38,10154,'158',2,'10189',10165,0,1),
 (234,10154,'16',1,'10154',10164,0,8),
 (235,10154,'16',1,'10154',10165,0,8),
 (67,10154,'16',2,'10189',10165,0,1),
 (458,10154,'160',4,'10175_LAYOUT_160',10162,0,1),
 (456,10154,'160',4,'10175_LAYOUT_160',10163,0,15),
 (457,10154,'160',4,'10175_LAYOUT_160',10170,0,1),
 (118,10154,'161',2,'10189',10164,0,2),
 (53,10154,'161',2,'10189',10165,0,1),
 (119,10154,'162',2,'10189',10164,0,2),
 (56,10154,'162',2,'10189',10165,0,1),
 (247,10154,'164',1,'10154',10162,0,2),
 (248,10154,'164',1,'10154',10164,0,2),
 (249,10154,'164',1,'10154',10165,0,2),
 (73,10154,'164',2,'10189',10165,0,1),
 (806,10154,'165',4,'10175_LAYOUT_165',10162,0,1),
 (804,10154,'165',4,'10175_LAYOUT_165',10163,0,31),
 (805,10154,'165',4,'10175_LAYOUT_165',10170,0,1),
 (287,10154,'166',1,'10154',10164,0,4),
 (288,10154,'166',1,'10154',10165,0,4),
 (96,10154,'166',2,'10189',10165,0,1),
 (226,10154,'167',1,'10154',10164,0,4),
 (227,10154,'167',1,'10154',10165,0,4),
 (120,10154,'167',2,'10189',10164,0,2),
 (64,10154,'167',2,'10189',10165,0,1),
 (273,10154,'169',1,'10154',10164,0,2),
 (274,10154,'169',1,'10154',10165,0,2),
 (87,10154,'169',2,'10189',10165,0,1),
 (161,10154,'173',1,'10154',10162,0,2),
 (162,10154,'173',1,'10154',10164,0,2),
 (163,10154,'173',1,'10154',10165,0,2),
 (113,10154,'173',2,'10189',10164,0,4),
 (28,10154,'173',2,'10189',10165,0,1),
 (716,10154,'173',4,'10175_LAYOUT_173',10162,0,1),
 (714,10154,'173',4,'10175_LAYOUT_173',10163,0,31),
 (715,10154,'173',4,'10175_LAYOUT_173',10164,0,1),
 (153,10154,'175',1,'10154',10162,0,2),
 (154,10154,'175',1,'10154',10164,0,2),
 (155,10154,'175',1,'10154',10165,0,2),
 (23,10154,'175',2,'10189',10165,0,1),
 (209,10154,'176',1,'10154',10161,0,2),
 (57,10154,'176',2,'10189',10165,0,1),
 (193,10154,'177',1,'10154',10164,0,4),
 (194,10154,'177',1,'10154',10165,0,4),
 (45,10154,'177',2,'10189',10165,0,1),
 (179,10154,'178',1,'10154',10164,0,2),
 (180,10154,'178',1,'10154',10165,0,2),
 (115,10154,'178',2,'10189',10164,0,4),
 (39,10154,'178',2,'10189',10165,0,1),
 (160,10154,'179',1,'10154',10161,0,2),
 (112,10154,'179',2,'10189',10164,0,4),
 (27,10154,'179',2,'10189',10165,0,1),
 (140,10154,'180',1,'10154',10162,0,2),
 (141,10154,'180',1,'10154',10164,0,2),
 (142,10154,'180',1,'10154',10165,0,2),
 (14,10154,'180',2,'10189',10165,0,1),
 (168,10154,'181',1,'10154',10162,0,2),
 (169,10154,'181',1,'10154',10164,0,2),
 (170,10154,'181',1,'10154',10165,0,2),
 (33,10154,'181',2,'10189',10165,0,1),
 (166,10154,'19',1,'10154',10164,0,2),
 (167,10154,'19',1,'10154',10165,0,2),
 (30,10154,'19',2,'10189',10165,0,1),
 (1,10154,'2',1,'10154',10165,0,2),
 (511,10154,'2',4,'10175_LAYOUT_2',10163,0,15),
 (242,10154,'20',1,'10154',10162,0,4),
 (243,10154,'20',1,'10154',10164,0,4),
 (244,10154,'20',1,'10154',10165,0,4),
 (634,10154,'20',1,'10154',10805,0,31),
 (734,10154,'20',1,'10154',10810,0,31),
 (121,10154,'20',2,'10189',10164,0,2),
 (71,10154,'20',2,'10189',10165,0,1),
 (740,10154,'20',4,'10175_LAYOUT_20',10162,0,1),
 (738,10154,'20',4,'10175_LAYOUT_20',10163,0,31),
 (739,10154,'20',4,'10175_LAYOUT_20',10164,0,1),
 (240,10154,'23',1,'10154',10164,0,2),
 (241,10154,'23',1,'10154',10165,0,2),
 (70,10154,'23',2,'10189',10165,0,1),
 (125,10154,'25',2,'10189',10164,0,2),
 (95,10154,'25',2,'10189',10165,0,1),
 (150,10154,'26',1,'10154',10164,0,2),
 (151,10154,'26',1,'10154',10165,0,2),
 (21,10154,'26',2,'10189',10165,0,1),
 (143,10154,'27',1,'10154',10164,0,2),
 (144,10154,'27',1,'10154',10165,0,2),
 (15,10154,'27',2,'10189',10165,0,1),
 (256,10154,'28',1,'10154',10164,0,4),
 (257,10154,'28',1,'10154',10165,0,4),
 (123,10154,'28',2,'10189',10164,0,2),
 (78,10154,'28',2,'10189',10165,0,1),
 (176,10154,'29',1,'10154',10164,0,2),
 (177,10154,'29',1,'10154',10165,0,2),
 (37,10154,'29',2,'10189',10165,0,1),
 (237,10154,'3',1,'10154',10162,0,2),
 (238,10154,'3',1,'10154',10164,0,2),
 (239,10154,'3',1,'10154',10165,0,2),
 (69,10154,'3',2,'10189',10165,0,1),
 (341,10154,'3',4,'10323_LAYOUT_3',10162,0,1),
 (339,10154,'3',4,'10323_LAYOUT_3',10163,0,15),
 (340,10154,'3',4,'10323_LAYOUT_3',10170,0,1),
 (203,10154,'30',1,'10154',10164,0,2),
 (204,10154,'30',1,'10154',10165,0,2),
 (49,10154,'30',2,'10189',10165,0,1),
 (280,10154,'31',1,'10154',10162,0,2),
 (281,10154,'31',1,'10154',10164,0,2),
 (282,10154,'31',1,'10154',10165,0,2),
 (91,10154,'31',2,'10189',10165,0,1),
 (289,10154,'33',1,'10154',10162,0,2),
 (290,10154,'33',1,'10154',10164,0,2),
 (291,10154,'33',1,'10154',10165,0,2),
 (97,10154,'33',2,'10189',10165,0,1),
 (322,10154,'33',4,'10313_LAYOUT_33',10162,0,1),
 (320,10154,'33',4,'10313_LAYOUT_33',10163,0,15),
 (321,10154,'33',4,'10313_LAYOUT_33',10170,0,1),
 (271,10154,'34',1,'10154',10164,0,2),
 (272,10154,'34',1,'10154',10165,0,2),
 (86,10154,'34',2,'10189',10165,0,1),
 (148,10154,'36',1,'10154',10164,0,2),
 (149,10154,'36',1,'10154',10165,0,2),
 (20,10154,'36',2,'10189',10165,0,1),
 (350,10154,'36',4,'10332_LAYOUT_36',10162,0,1),
 (348,10154,'36',4,'10332_LAYOUT_36',10163,0,15),
 (349,10154,'36',4,'10332_LAYOUT_36',10170,0,1),
 (191,10154,'39',1,'10154',10164,0,2),
 (192,10154,'39',1,'10154',10165,0,2),
 (44,10154,'39',2,'10189',10165,0,1),
 (258,10154,'47',1,'10154',10162,0,2),
 (259,10154,'47',1,'10154',10164,0,2),
 (260,10154,'47',1,'10154',10165,0,2),
 (80,10154,'47',2,'10189',10165,0,1),
 (449,10154,'47',4,'10183_LAYOUT_47',10162,0,1),
 (447,10154,'47',4,'10183_LAYOUT_47',10163,0,15),
 (448,10154,'47',4,'10183_LAYOUT_47',10170,0,1),
 (205,10154,'48',1,'10154',10164,0,2),
 (206,10154,'48',1,'10154',10165,0,2),
 (51,10154,'48',2,'10189',10165,0,1),
 (809,10154,'49',4,'10183_LAYOUT_49',10162,0,1),
 (807,10154,'49',4,'10183_LAYOUT_49',10163,0,15),
 (808,10154,'49',4,'10183_LAYOUT_49',10170,0,1),
 (283,10154,'50',1,'10154',10162,0,2),
 (284,10154,'50',1,'10154',10164,0,2),
 (285,10154,'50',1,'10154',10165,0,2),
 (93,10154,'50',2,'10189',10165,0,1),
 (269,10154,'54',1,'10154',10164,0,2),
 (270,10154,'54',1,'10154',10165,0,2),
 (85,10154,'54',2,'10189',10165,0,1),
 (231,10154,'56',1,'10154',10162,0,2),
 (232,10154,'56',1,'10154',10164,0,2),
 (233,10154,'56',1,'10154',10165,0,2),
 (66,10154,'56',2,'10189',10165,0,1),
 (183,10154,'58',1,'10154',10162,0,2),
 (184,10154,'58',1,'10154',10164,0,2),
 (185,10154,'58',1,'10154',10165,0,2),
 (41,10154,'58',2,'10189',10165,0,1),
 (812,10154,'58',4,'10183_LAYOUT_58',10162,0,1),
 (810,10154,'58',4,'10183_LAYOUT_58',10163,0,15),
 (811,10154,'58',4,'10183_LAYOUT_58',10170,0,1),
 (299,10154,'59',1,'10154',10164,0,2),
 (300,10154,'59',1,'10154',10165,0,2),
 (103,10154,'59',2,'10189',10165,0,1),
 (275,10154,'61',1,'10154',10164,0,2),
 (276,10154,'61',1,'10154',10165,0,2),
 (89,10154,'61',2,'10189',10165,0,1),
 (207,10154,'62',1,'10154',10164,0,2),
 (208,10154,'62',1,'10154',10165,0,2),
 (55,10154,'62',2,'10189',10165,0,1),
 (157,10154,'64',1,'10154',10162,0,2),
 (158,10154,'64',1,'10154',10164,0,2),
 (159,10154,'64',1,'10154',10165,0,2),
 (25,10154,'64',2,'10189',10165,0,1),
 (138,10154,'66',1,'10154',10164,0,2),
 (139,10154,'66',1,'10154',10165,0,2),
 (13,10154,'66',2,'10189',10165,0,1),
 (295,10154,'67',1,'10154',10164,0,2),
 (296,10154,'67',1,'10154',10165,0,2),
 (101,10154,'67',2,'10189',10165,0,1),
 (250,10154,'70',1,'10154',10164,0,2),
 (251,10154,'70',1,'10154',10165,0,2),
 (75,10154,'70',2,'10189',10165,0,1),
 (186,10154,'71',1,'10154',10162,0,2),
 (187,10154,'71',1,'10154',10164,0,2),
 (188,10154,'71',1,'10154',10165,0,2),
 (42,10154,'71',2,'10189',10165,0,1),
 (277,10154,'73',1,'10154',10162,0,2),
 (278,10154,'73',1,'10154',10164,0,2),
 (279,10154,'73',1,'10154',10165,0,2),
 (90,10154,'73',2,'10189',10165,0,1),
 (223,10154,'77',1,'10154',10162,0,2),
 (224,10154,'77',1,'10154',10164,0,2),
 (225,10154,'77',1,'10154',10165,0,2),
 (63,10154,'77',2,'10189',10165,0,1),
 (181,10154,'8',1,'10154',10164,0,4),
 (182,10154,'8',1,'10154',10165,0,4),
 (116,10154,'8',2,'10189',10164,0,2),
 (40,10154,'8',2,'10189',10165,0,1),
 (266,10154,'82',1,'10154',10162,0,2),
 (267,10154,'82',1,'10154',10164,0,2),
 (268,10154,'82',1,'10154',10165,0,2),
 (83,10154,'82',2,'10189',10165,0,1),
 (245,10154,'83',1,'10154',10164,0,4),
 (246,10154,'83',1,'10154',10165,0,4),
 (72,10154,'83',2,'10189',10165,0,1),
 (212,10154,'84',1,'10154',10164,0,4),
 (213,10154,'84',1,'10154',10165,0,4),
 (59,10154,'84',2,'10189',10165,0,1),
 (195,10154,'85',1,'10154',10162,0,2),
 (196,10154,'85',1,'10154',10164,0,2),
 (197,10154,'85',1,'10154',10165,0,2),
 (46,10154,'85',2,'10189',10165,0,1),
 (471,10154,'86',4,'10175_LAYOUT_86',10162,0,1),
 (469,10154,'86',4,'10175_LAYOUT_86',10163,0,15),
 (470,10154,'86',4,'10175_LAYOUT_86',10170,0,1),
 (455,10154,'87',4,'10183_LAYOUT_87',10162,0,1),
 (453,10154,'87',4,'10183_LAYOUT_87',10163,0,15),
 (454,10154,'87',4,'10183_LAYOUT_87',10170,0,1),
 (803,10154,'88',4,'10175_LAYOUT_88',10162,0,1),
 (801,10154,'88',4,'10175_LAYOUT_88',10163,0,15),
 (802,10154,'88',4,'10175_LAYOUT_88',10170,0,1),
 (255,10154,'9',1,'10154',10161,0,2),
 (77,10154,'9',2,'10189',10165,0,1),
 (11,10154,'90',1,'10154',10165,0,16384),
 (618,10154,'90',1,'10154',10805,0,86881),
 (647,10154,'90',1,'10154',10809,0,1),
 (718,10154,'90',1,'10154',10810,0,16641),
 (189,10154,'97',1,'10154',10164,0,2),
 (190,10154,'97',1,'10154',10165,0,2),
 (43,10154,'97',2,'10189',10165,0,1),
 (136,10154,'98',1,'10154',10164,0,4),
 (137,10154,'98',1,'10154',10165,0,4),
 (110,10154,'98',2,'10189',10164,0,2),
 (12,10154,'98',2,'10189',10165,0,1),
 (122,10154,'99',2,'10189',10164,0,2),
 (74,10154,'99',2,'10189',10165,0,1),
 (643,10154,'com.liferay.portal.model.Group',1,'10154',10809,0,1),
 (721,10154,'com.liferay.portal.model.Group',1,'10154',10810,0,32769),
 (126,10154,'com.liferay.portal.model.Group',2,'10189',10164,0,4096),
 (656,10154,'com.liferay.portal.model.Group',4,'10828',10163,0,2097151),
 (641,10154,'com.liferay.portal.model.Layout',1,'10154',10809,0,1),
 (107,10154,'com.liferay.portal.model.Layout',2,'10189',10165,0,1),
 (7,10154,'com.liferay.portal.model.Layout',4,'10175',10162,0,1),
 (5,10154,'com.liferay.portal.model.Layout',4,'10175',10163,10158,1023),
 (6,10154,'com.liferay.portal.model.Layout',4,'10175',10170,0,19),
 (10,10154,'com.liferay.portal.model.Layout',4,'10183',10162,0,1),
 (8,10154,'com.liferay.portal.model.Layout',4,'10183',10163,10158,1023),
 (9,10154,'com.liferay.portal.model.Layout',4,'10183',10170,0,19),
 (317,10154,'com.liferay.portal.model.Layout',4,'10313',10163,10158,1023),
 (318,10154,'com.liferay.portal.model.Layout',4,'10313',10170,0,19),
 (331,10154,'com.liferay.portal.model.Layout',4,'10323',10163,10158,1023),
 (332,10154,'com.liferay.portal.model.Layout',4,'10323',10170,0,19),
 (346,10154,'com.liferay.portal.model.Layout',4,'10332',10163,10158,1023),
 (347,10154,'com.liferay.portal.model.Layout',4,'10332',10170,0,19),
 (364,10154,'com.liferay.portal.model.Layout',4,'10346',10162,0,1),
 (362,10154,'com.liferay.portal.model.Layout',4,'10346',10163,10158,1023),
 (363,10154,'com.liferay.portal.model.Layout',4,'10346',10170,0,19),
 (367,10154,'com.liferay.portal.model.Layout',4,'10352',10162,0,1),
 (365,10154,'com.liferay.portal.model.Layout',4,'10352',10163,10158,1023),
 (366,10154,'com.liferay.portal.model.Layout',4,'10352',10170,0,19),
 (370,10154,'com.liferay.portal.model.Layout',4,'10358',10162,0,1),
 (368,10154,'com.liferay.portal.model.Layout',4,'10358',10163,10158,1023),
 (369,10154,'com.liferay.portal.model.Layout',4,'10358',10170,0,19),
 (377,10154,'com.liferay.portal.model.Layout',4,'10372',10162,0,1),
 (375,10154,'com.liferay.portal.model.Layout',4,'10372',10163,10158,1023),
 (376,10154,'com.liferay.portal.model.Layout',4,'10372',10170,0,19),
 (380,10154,'com.liferay.portal.model.Layout',4,'10380',10162,0,1),
 (378,10154,'com.liferay.portal.model.Layout',4,'10380',10163,10158,1023),
 (379,10154,'com.liferay.portal.model.Layout',4,'10380',10170,0,19),
 (383,10154,'com.liferay.portal.model.Layout',4,'10386',10162,0,1),
 (381,10154,'com.liferay.portal.model.Layout',4,'10386',10163,10158,1023),
 (382,10154,'com.liferay.portal.model.Layout',4,'10386',10170,0,19),
 (386,10154,'com.liferay.portal.model.Layout',4,'10392',10162,0,1),
 (384,10154,'com.liferay.portal.model.Layout',4,'10392',10163,10158,1023),
 (385,10154,'com.liferay.portal.model.Layout',4,'10392',10170,0,19),
 (414,10154,'com.liferay.portal.model.Layout',4,'10510',10163,10196,1023),
 (440,10154,'com.liferay.portal.model.Layout',4,'10607',10162,0,1),
 (438,10154,'com.liferay.portal.model.Layout',4,'10607',10163,10158,1023),
 (439,10154,'com.liferay.portal.model.Layout',4,'10607',10170,0,19),
 (703,10154,'com.liferay.portal.model.Layout',4,'10914',10163,10901,1023),
 (758,10154,'com.liferay.portal.model.Layout',4,'10942',10163,10931,1023),
 (761,10154,'com.liferay.portal.model.Layout',4,'10947',10162,0,1),
 (759,10154,'com.liferay.portal.model.Layout',4,'10947',10163,10931,1023),
 (760,10154,'com.liferay.portal.model.Layout',4,'10947',10164,0,19),
 (765,10154,'com.liferay.portal.model.Layout',4,'10964',10163,10953,1023),
 (768,10154,'com.liferay.portal.model.Layout',4,'10969',10162,0,1),
 (766,10154,'com.liferay.portal.model.Layout',4,'10969',10163,10953,1023),
 (767,10154,'com.liferay.portal.model.Layout',4,'10969',10164,0,19),
 (316,10154,'com.liferay.portal.model.LayoutPrototype',4,'10309',10163,10158,15),
 (330,10154,'com.liferay.portal.model.LayoutPrototype',4,'10319',10163,10158,15),
 (345,10154,'com.liferay.portal.model.LayoutPrototype',4,'10328',10163,10158,15),
 (358,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10337',10163,10158,15),
 (371,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10363',10163,10158,15),
 (434,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10598',10163,10158,15),
 (757,10154,'com.liferay.portal.model.Organization',1,'10154',10805,0,511),
 (645,10154,'com.liferay.portal.model.Organization',1,'10154',10809,0,1),
 (620,10154,'com.liferay.portal.model.PasswordPolicy',1,'10154',10805,0,31),
 (468,10154,'com.liferay.portal.model.PasswordPolicy',4,'10622',10163,10196,31),
 (619,10154,'com.liferay.portal.model.Role',1,'10154',10805,0,127),
 (606,10154,'com.liferay.portal.model.Role',4,'10805',10163,10196,127),
 (607,10154,'com.liferay.portal.model.Role',4,'10806',10163,10196,127),
 (608,10154,'com.liferay.portal.model.Role',4,'10807',10163,10196,127),
 (609,10154,'com.liferay.portal.model.Role',4,'10808',10163,10196,127),
 (610,10154,'com.liferay.portal.model.Role',4,'10809',10163,10196,127),
 (611,10154,'com.liferay.portal.model.Role',4,'10810',10163,10196,127),
 (612,10154,'com.liferay.portal.model.Role',4,'10811',10163,10196,127),
 (613,10154,'com.liferay.portal.model.Role',4,'10812',10163,10196,127),
 (614,10154,'com.liferay.portal.model.Role',4,'10813',10163,10196,127),
 (615,10154,'com.liferay.portal.model.Role',4,'10814',10163,10196,127),
 (616,10154,'com.liferay.portal.model.Role',4,'10815',10163,10196,127),
 (617,10154,'com.liferay.portal.model.Role',4,'10816',10163,10196,127),
 (771,10154,'com.liferay.portal.model.Role',4,'10987',10163,10196,127),
 (755,10154,'com.liferay.portal.model.Team',1,'10154',10805,0,31),
 (642,10154,'com.liferay.portal.model.Team',1,'10154',10809,0,1),
 (720,10154,'com.liferay.portal.model.Team',1,'10154',10810,0,27),
 (754,10154,'com.liferay.portal.model.User',1,'10154',10805,0,31),
 (640,10154,'com.liferay.portal.model.User',1,'10154',10809,0,1),
 (719,10154,'com.liferay.portal.model.User',1,'10154',10810,0,25),
 (135,10154,'com.liferay.portal.model.User',4,'10196',10163,10196,31),
 (701,10154,'com.liferay.portal.model.User',4,'10901',10163,10196,0),
 (717,10154,'com.liferay.portal.model.User',4,'10901',10805,0,31),
 (753,10154,'com.liferay.portal.model.User',4,'10931',10163,10196,0),
 (764,10154,'com.liferay.portal.model.User',4,'10953',10163,10901,31),
 (770,10154,'com.liferay.portal.model.User',4,'10976',10163,10196,31),
 (772,10154,'com.liferay.portal.model.User',4,'10988',10163,10901,31),
 (773,10154,'com.liferay.portal.model.User',4,'10999',10163,10901,31),
 (756,10154,'com.liferay.portal.model.UserGroup',1,'10154',10805,0,63),
 (644,10154,'com.liferay.portal.model.UserGroup',1,'10154',10809,0,1),
 (722,10154,'com.liferay.portal.model.UserGroup',1,'10154',10810,0,59),
 (651,10154,'com.liferay.portal.model.UserGroup',4,'10819',10163,10196,0),
 (655,10154,'com.liferay.portal.model.UserGroup',4,'10819',10811,0,59),
 (652,10154,'com.liferay.portal.model.UserGroup',4,'10823',10163,10196,63),
 (653,10154,'com.liferay.portal.model.UserGroup',4,'10827',10163,10196,1),
 (657,10154,'com.liferay.portal.model.UserGroup',4,'10827',10807,0,33),
 (654,10154,'com.liferay.portal.model.UserGroup',4,'10831',10163,10196,63),
 (127,10154,'com.liferay.portlet.asset',2,'10189',10164,0,30),
 (319,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10316',10163,10158,15),
 (128,10154,'com.liferay.portlet.blogs',2,'10189',10164,0,14),
 (108,10154,'com.liferay.portlet.blogs',2,'10189',10165,0,14),
 (323,10154,'com.liferay.portlet.blogs',4,'10310',10163,0,14),
 (129,10154,'com.liferay.portlet.bookmarks',2,'10189',10164,0,15),
 (130,10154,'com.liferay.portlet.calendar',2,'10189',10164,0,14),
 (109,10154,'com.liferay.portlet.calendar',2,'10189',10165,0,14),
 (627,10154,'com.liferay.portlet.documentlibrary',1,'10154',10805,0,511),
 (729,10154,'com.liferay.portlet.documentlibrary',1,'10154',10810,0,511),
 (131,10154,'com.liferay.portlet.documentlibrary',2,'10189',10164,0,511),
 (752,10154,'com.liferay.portlet.documentlibrary',4,'10180',10162,0,1),
 (750,10154,'com.liferay.portlet.documentlibrary',4,'10180',10163,0,511),
 (751,10154,'com.liferay.portlet.documentlibrary',4,'10180',10170,0,75),
 (743,10154,'com.liferay.portlet.documentlibrary',4,'10903',10162,0,1),
 (741,10154,'com.liferay.portlet.documentlibrary',4,'10903',10163,0,511),
 (742,10154,'com.liferay.portlet.documentlibrary',4,'10903',10164,0,75),
 (628,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',1,'10154',10805,0,127),
 (730,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',1,'10154',10810,0,123),
 (395,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10416',10162,0,3),
 (394,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10416',10163,10158,127),
 (401,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10425',10162,0,3),
 (400,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10425',10163,10158,127),
 (403,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10437',10162,0,3),
 (402,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10437',10163,10158,127),
 (405,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10449',10162,0,3),
 (404,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10449',10163,10158,127),
 (407,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10461',10162,0,3),
 (406,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10461',10163,10158,127),
 (409,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10474',10162,0,3),
 (408,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10474',10163,10158,127),
 (411,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10486',10162,0,3),
 (410,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10486',10163,10158,127),
 (413,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10497',10162,0,3),
 (412,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10497',10163,10158,127),
 (416,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10511',10162,0,3),
 (415,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10511',10163,10158,127),
 (418,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10527',10162,0,3),
 (417,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10527',10163,10158,127),
 (420,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10538',10162,0,3),
 (419,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10538',10163,10158,127),
 (425,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10555',10162,0,3),
 (424,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10555',10163,10158,127),
 (427,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10568',10162,0,3),
 (426,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10568',10163,10158,127),
 (630,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',1,'10154',10805,0,15),
 (732,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',1,'10154',10810,0,13),
 (308,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10300',10163,10158,15),
 (310,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10302',10163,10158,15),
 (312,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10304',10163,10158,15),
 (314,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10306',10163,10158,15),
 (629,10154,'com.liferay.portlet.documentlibrary.model.DLFileShortcut',1,'10154',10805,0,127),
 (731,10154,'com.liferay.portlet.documentlibrary.model.DLFileShortcut',1,'10154',10810,0,123),
 (626,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',1,'10154',10805,0,255),
 (728,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',1,'10154',10810,0,223),
 (304,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10297',10163,10158,15),
 (305,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10298',10163,10158,15),
 (306,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10299',10163,10158,15),
 (307,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10301',10163,10158,15),
 (309,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10303',10163,10158,15),
 (311,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10305',10163,10158,15),
 (313,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10307',10163,10158,15),
 (315,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10308',10163,10158,15),
 (387,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10399',10163,10158,15),
 (388,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10400',10163,10158,15),
 (389,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10401',10163,10158,15),
 (390,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10402',10163,10158,15),
 (391,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10403',10163,10158,15),
 (392,10154,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10404',10163,10158,15),
 (763,10154,'com.liferay.portlet.expando.model.ExpandoColumn',1,'10154',10805,0,9),
 (762,10154,'com.liferay.portlet.expando.model.ExpandoColumn',1,'10154',10810,0,9),
 (393,10154,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10414',10163,0,15),
 (602,10154,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10803',10163,0,15),
 (702,10154,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10912',10163,0,15),
 (621,10154,'com.liferay.portlet.journal',1,'10154',10805,0,126),
 (635,10154,'com.liferay.portlet.journal',1,'10154',10809,0,126),
 (723,10154,'com.liferay.portlet.journal',1,'10154',10810,0,126),
 (749,10154,'com.liferay.portlet.journal',4,'10180',10163,0,126),
 (710,10154,'com.liferay.portlet.journal',4,'10903',10163,0,126),
 (622,10154,'com.liferay.portlet.journal.model.JournalArticle',1,'10154',10805,0,255),
 (636,10154,'com.liferay.portlet.journal.model.JournalArticle',1,'10154',10809,0,255),
 (724,10154,'com.liferay.portlet.journal.model.JournalArticle',1,'10154',10810,0,251),
 (429,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'10585',10162,0,3),
 (428,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'10585',10163,10158,255),
 (623,10154,'com.liferay.portlet.journal.model.JournalFeed',1,'10154',10805,0,15),
 (637,10154,'com.liferay.portlet.journal.model.JournalFeed',1,'10154',10809,0,15),
 (725,10154,'com.liferay.portlet.journal.model.JournalFeed',1,'10154',10810,0,13),
 (624,10154,'com.liferay.portlet.journal.model.JournalStructure',1,'10154',10805,0,15),
 (638,10154,'com.liferay.portlet.journal.model.JournalStructure',1,'10154',10809,0,15),
 (726,10154,'com.liferay.portlet.journal.model.JournalStructure',1,'10154',10810,0,13),
 (431,10154,'com.liferay.portlet.journal.model.JournalStructure',4,'10594',10162,0,1),
 (430,10154,'com.liferay.portlet.journal.model.JournalStructure',4,'10594',10163,10158,15),
 (625,10154,'com.liferay.portlet.journal.model.JournalTemplate',1,'10154',10805,0,15),
 (639,10154,'com.liferay.portlet.journal.model.JournalTemplate',1,'10154',10809,0,15),
 (727,10154,'com.liferay.portlet.journal.model.JournalTemplate',1,'10154',10810,0,13),
 (433,10154,'com.liferay.portlet.journal.model.JournalTemplate',4,'10596',10162,0,1),
 (432,10154,'com.liferay.portlet.journal.model.JournalTemplate',4,'10596',10163,10158,15),
 (132,10154,'com.liferay.portlet.messageboards',2,'10189',10164,0,2047),
 (133,10154,'com.liferay.portlet.polls',2,'10189',10164,0,6),
 (134,10154,'com.liferay.portlet.wiki',2,'10189',10164,0,6),
 (351,10154,'com.liferay.portlet.wiki',4,'10329',10163,0,6),
 (501,10154,'Complemento_WAR_Complementoportlet',1,'10154',10161,0,2),
 (502,10154,'Complemento_WAR_Complementoportlet',1,'10154',10162,0,2),
 (503,10154,'Complemento_WAR_Complementoportlet',1,'10154',10164,0,2),
 (504,10154,'Complemento_WAR_Complementoportlet',1,'10154',10165,0,2),
 (396,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',1,'10154',10161,0,2),
 (397,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',1,'10154',10162,0,2),
 (398,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',1,'10154',10164,0,2),
 (399,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',1,'10154',10165,0,2);
/*!40000 ALTER TABLE `resourcepermission` ENABLE KEYS */;


--
-- Definition of table `resourcetypepermission`
--

DROP TABLE IF EXISTS `resourcetypepermission`;
CREATE TABLE `resourcetypepermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceTypePermissionId`),
  UNIQUE KEY `IX_BA497163` (`companyId`,`groupId`,`name`,`roleId`),
  KEY `IX_7D81F66F` (`companyId`,`name`,`roleId`),
  KEY `IX_A82690E2` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resourcetypepermission`
--

/*!40000 ALTER TABLE `resourcetypepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourcetypepermission` ENABLE KEYS */;


--
-- Definition of table `role_`
--

DROP TABLE IF EXISTS `role_`;
CREATE TABLE `role_` (
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `IX_A88E424E` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_EBC931B8` (`companyId`,`name`),
  KEY `IX_449A10B9` (`companyId`),
  KEY `IX_F436EC8E` (`name`),
  KEY `IX_5EB4E2FB` (`subtype`),
  KEY `IX_CBE204` (`type_`,`subtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_`
--

/*!40000 ALTER TABLE `role_` DISABLE KEYS */;
INSERT INTO `role_` (`roleId`,`companyId`,`classNameId`,`classPK`,`name`,`title`,`description`,`type_`,`subtype`) VALUES 
 (10161,10154,10004,10161,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),
 (10162,10154,10004,10162,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),
 (10163,10154,10004,10163,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),
 (10164,10154,10004,10164,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),
 (10165,10154,10004,10165,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),
 (10166,10154,10004,10166,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),
 (10167,10154,10004,10167,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),
 (10168,10154,10004,10168,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),
 (10169,10154,10004,10169,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),
 (10170,10154,10004,10170,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),
 (10171,10154,10004,10171,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,''),
 (10805,10154,10004,10805,'COORDINADOR DE RECURSOS HUMANOS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">COORDINADOR DE RRHH</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">COORDINADOR DE RECURSOS HUMANOS</Description></root>',1,''),
 (10806,10154,10004,10806,'GERENTE DE CAPITAL HUMANO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">GERENTE DE RRHH</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">GERENTE DE CAPITAL HUMANO</Description></root>',1,''),
 (10807,10154,10004,10807,'GERENTE DE ÁREA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">GERENTE DE ÁREA</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">GERENTE DE ÁREA</Description></root>',1,''),
 (10808,10154,10004,10808,'GERENTE DE OPERACIONES','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">GERENTE DE OPERACIONES</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">GERENTE DE OPERACIONES</Description></root>',1,''),
 (10809,10154,10004,10809,'PISCOLOGO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">PISCOLOGO</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">PISCOLOGO</Description></root>',1,''),
 (10810,10154,10004,10810,'ASISTENTE DE RECURSOS HUMANOS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">ASISTENTE DE RECURSOS HUMANOS</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">ASISTENTE DE RECURSOS HUMANOS</Description></root>',1,''),
 (10811,10154,10004,10811,'INTEGRANTE DE EQUIPO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">INTEGRANTE DE EQUIPO</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">INTEGRANTE DE EQUIPO</Description></root>',1,''),
 (10812,10154,10004,10812,'POSTULANTE DE RECLUTAMIENTO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">POSTULANTE DE RECLUTAMIENTO</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">POSTULANTE DE RECLUTAMIENTO</Description></root>',2,''),
 (10813,10154,10004,10813,'POSTULANTE INTERNO DE RECLUTAMIENTO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">POSTULANTE INTERNO DE RECLUTAMIENTO</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">POSTULANTE INTERNO DE RECLUTAMIENTO</Description></root>',2,''),
 (10814,10154,10004,10814,'EVALUADOR DE ÁREA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">EVALUADOR DE ÁREA</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">EVALUADOR DE ÁREA</Description></root>',1,''),
 (10815,10154,10004,10815,'APROBADOR DE ÁREA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">APROBADOR DE ÁREA</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">APROBADOR DE ÁREA</Description></root>',1,''),
 (10816,10154,10004,10816,'PMO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">PMO</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">PROJECT MANAGER OFFICE</Description></root>',1,''),
 (10987,10154,10004,10987,'LÍDER DE EQUIPO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">LÍDER DE EQUIPO</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">LÍDER DE EQUIPO</Description></root>',1,'');
/*!40000 ALTER TABLE `role_` ENABLE KEYS */;


--
-- Definition of table `roles_permissions`
--

DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE `roles_permissions` (
  `roleId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`permissionId`),
  KEY `IX_7A3619C6` (`permissionId`),
  KEY `IX_E04E486D` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_permissions`
--

/*!40000 ALTER TABLE `roles_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_permissions` ENABLE KEYS */;


--
-- Definition of table `scframeworkversi_scproductvers`
--

DROP TABLE IF EXISTS `scframeworkversi_scproductvers`;
CREATE TABLE `scframeworkversi_scproductvers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`),
  KEY `IX_3BB93ECA` (`frameworkVersionId`),
  KEY `IX_E8D33FF9` (`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scframeworkversi_scproductvers`
--

/*!40000 ALTER TABLE `scframeworkversi_scproductvers` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversi_scproductvers` ENABLE KEYS */;


--
-- Definition of table `scframeworkversion`
--

DROP TABLE IF EXISTS `scframeworkversion`;
CREATE TABLE `scframeworkversion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`frameworkVersionId`),
  KEY `IX_C98C0D78` (`companyId`),
  KEY `IX_272991FA` (`groupId`),
  KEY `IX_6E1764F` (`groupId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scframeworkversion`
--

/*!40000 ALTER TABLE `scframeworkversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversion` ENABLE KEYS */;


--
-- Definition of table `sclicense`
--

DROP TABLE IF EXISTS `sclicense`;
CREATE TABLE `sclicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`),
  KEY `IX_1C841592` (`active_`),
  KEY `IX_5327BB79` (`active_`,`recommended`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sclicense`
--

/*!40000 ALTER TABLE `sclicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicense` ENABLE KEYS */;


--
-- Definition of table `sclicenses_scproductentries`
--

DROP TABLE IF EXISTS `sclicenses_scproductentries`;
CREATE TABLE `sclicenses_scproductentries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`),
  KEY `IX_27006638` (`licenseId`),
  KEY `IX_D7710A66` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sclicenses_scproductentries`
--

/*!40000 ALTER TABLE `sclicenses_scproductentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicenses_scproductentries` ENABLE KEYS */;


--
-- Definition of table `scproductentry`
--

DROP TABLE IF EXISTS `scproductentry`;
CREATE TABLE `scproductentry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`productEntryId`),
  KEY `IX_5D25244F` (`companyId`),
  KEY `IX_72F87291` (`groupId`),
  KEY `IX_98E6A9CB` (`groupId`,`userId`),
  KEY `IX_7311E812` (`repoGroupId`,`repoArtifactId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scproductentry`
--

/*!40000 ALTER TABLE `scproductentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductentry` ENABLE KEYS */;


--
-- Definition of table `scproductscreenshot`
--

DROP TABLE IF EXISTS `scproductscreenshot`;
CREATE TABLE `scproductscreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`productScreenshotId`),
  KEY `IX_AE8224CC` (`fullImageId`),
  KEY `IX_467956FD` (`productEntryId`),
  KEY `IX_DA913A55` (`productEntryId`,`priority`),
  KEY `IX_6C572DAC` (`thumbnailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scproductscreenshot`
--

/*!40000 ALTER TABLE `scproductscreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductscreenshot` ENABLE KEYS */;


--
-- Definition of table `scproductversion`
--

DROP TABLE IF EXISTS `scproductversion`;
CREATE TABLE `scproductversion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`productVersionId`),
  KEY `IX_7020130F` (`directDownloadURL`(767)),
  KEY `IX_8377A211` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scproductversion`
--

/*!40000 ALTER TABLE `scproductversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductversion` ENABLE KEYS */;


--
-- Definition of table `servicecomponent`
--

DROP TABLE IF EXISTS `servicecomponent`;
CREATE TABLE `servicecomponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`),
  UNIQUE KEY `IX_4F0315B8` (`buildNamespace`,`buildNumber`),
  KEY `IX_7338606F` (`buildNamespace`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicecomponent`
--

/*!40000 ALTER TABLE `servicecomponent` DISABLE KEYS */;
INSERT INTO `servicecomponent` (`serviceComponentId`,`buildNamespace`,`buildNumber`,`buildDate`,`data_`) VALUES 
 (10412,'Marketplace',1,1312562779947,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Marketplace_App (\n	uuid_ VARCHAR(75) null,\n	appId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	remoteAppId LONG,\n	version VARCHAR(75) null\n);\n\ncreate table Marketplace_Module (\n	uuid_ VARCHAR(75) null,\n	moduleId LONG not null primary key,\n	appId LONG,\n	contextName VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_865B7BD5 on Marketplace_App (companyId);\ncreate index IX_20F14D93 on Marketplace_App (remoteAppId);\ncreate index IX_3E667FE1 on Marketplace_App (uuid_);\n\ncreate index IX_7DC16D26 on Marketplace_Module (appId);\ncreate index IX_C6938724 on Marketplace_Module (appId, contextName);\ncreate index IX_F2F1E964 on Marketplace_Module (contextName);\ncreate index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>\n</data>');
/*!40000 ALTER TABLE `servicecomponent` ENABLE KEYS */;


--
-- Definition of table `shard`
--

DROP TABLE IF EXISTS `shard`;
CREATE TABLE `shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`),
  KEY `IX_DA5F4359` (`classNameId`,`classPK`),
  KEY `IX_941BA8C3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shard`
--

/*!40000 ALTER TABLE `shard` DISABLE KEYS */;
INSERT INTO `shard` (`shardId`,`classNameId`,`classPK`,`name`) VALUES 
 (10155,10021,10154,'default');
/*!40000 ALTER TABLE `shard` ENABLE KEYS */;


--
-- Definition of table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  UNIQUE KEY `IX_FC46FE16` (`groupId`,`userId`),
  KEY `IX_C28B41DC` (`groupId`),
  KEY `IX_54101CC8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppingcart`
--

/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;


--
-- Definition of table `shoppingcategory`
--

DROP TABLE IF EXISTS `shoppingcategory`;
CREATE TABLE `shoppingcategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`categoryId`),
  KEY `IX_5F615D3E` (`groupId`),
  KEY `IX_1E6464F5` (`groupId`,`parentCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppingcategory`
--

/*!40000 ALTER TABLE `shoppingcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcategory` ENABLE KEYS */;


--
-- Definition of table `shoppingcoupon`
--

DROP TABLE IF EXISTS `shoppingcoupon`;
CREATE TABLE `shoppingcoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`couponId`),
  UNIQUE KEY `IX_DC60CFAE` (`code_`),
  KEY `IX_3251AF16` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppingcoupon`
--

/*!40000 ALTER TABLE `shoppingcoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcoupon` ENABLE KEYS */;


--
-- Definition of table `shoppingitem`
--

DROP TABLE IF EXISTS `shoppingitem`;
CREATE TABLE `shoppingitem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `IX_1C717CA6` (`companyId`,`sku`),
  KEY `IX_FEFE7D76` (`groupId`,`categoryId`),
  KEY `IX_903DC750` (`largeImageId`),
  KEY `IX_D217AB30` (`mediumImageId`),
  KEY `IX_FF203304` (`smallImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppingitem`
--

/*!40000 ALTER TABLE `shoppingitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitem` ENABLE KEYS */;


--
-- Definition of table `shoppingitemfield`
--

DROP TABLE IF EXISTS `shoppingitemfield`;
CREATE TABLE `shoppingitemfield` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`),
  KEY `IX_6D5F9B87` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppingitemfield`
--

/*!40000 ALTER TABLE `shoppingitemfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemfield` ENABLE KEYS */;


--
-- Definition of table `shoppingitemprice`
--

DROP TABLE IF EXISTS `shoppingitemprice`;
CREATE TABLE `shoppingitemprice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemPriceId`),
  KEY `IX_EA6FD516` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppingitemprice`
--

/*!40000 ALTER TABLE `shoppingitemprice` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemprice` ENABLE KEYS */;


--
-- Definition of table `shoppingorder`
--

DROP TABLE IF EXISTS `shoppingorder`;
CREATE TABLE `shoppingorder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  UNIQUE KEY `IX_D7D6E87A` (`number_`),
  KEY `IX_1D15553E` (`groupId`),
  KEY `IX_119B5630` (`groupId`,`userId`,`ppPaymentStatus`),
  KEY `IX_F474FD89` (`ppTxnId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppingorder`
--

/*!40000 ALTER TABLE `shoppingorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorder` ENABLE KEYS */;


--
-- Definition of table `shoppingorderitem`
--

DROP TABLE IF EXISTS `shoppingorderitem`;
CREATE TABLE `shoppingorderitem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `IX_B5F82C7A` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoppingorderitem`
--

/*!40000 ALTER TABLE `shoppingorderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorderitem` ENABLE KEYS */;


--
-- Definition of table `socialactivity`
--

DROP TABLE IF EXISTS `socialactivity`;
CREATE TABLE `socialactivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`),
  UNIQUE KEY `IX_8F32DEC9` (`groupId`,`userId`,`createDate`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_82E39A0C` (`classNameId`),
  KEY `IX_A853C757` (`classNameId`,`classPK`),
  KEY `IX_64B1BC66` (`companyId`),
  KEY `IX_2A2468` (`groupId`),
  KEY `IX_FB604DC7` (`groupId`,`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_1271F25F` (`mirrorActivityId`),
  KEY `IX_1F00C374` (`mirrorActivityId`,`classNameId`,`classPK`),
  KEY `IX_121CA3CB` (`receiverUserId`),
  KEY `IX_3504B8BC` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socialactivity`
--

/*!40000 ALTER TABLE `socialactivity` DISABLE KEYS */;
INSERT INTO `socialactivity` (`activityId`,`groupId`,`companyId`,`userId`,`createDate`,`mirrorActivityId`,`classNameId`,`classPK`,`type_`,`extraData`,`receiverUserId`) VALUES 
 (1,10180,10154,10158,1444835881164,0,10010,10416,1,'{\"title\":\"welcome_bg_3.jpg\"}',0),
 (2,10180,10154,10158,1444835881632,0,10010,10425,1,'{\"title\":\"welcome_bg_11.jpg\"}',0),
 (3,10180,10154,10158,1444835882000,0,10010,10437,1,'{\"title\":\"welcome_bg_12.jpg\"}',0),
 (4,10180,10154,10158,1444835882334,0,10010,10449,1,'{\"title\":\"welcome_bg_10.png\"}',0),
 (5,10180,10154,10158,1444835882811,0,10010,10461,1,'{\"title\":\"welcome_bg_2.jpg\"}',0),
 (6,10180,10154,10158,1444835883199,0,10010,10474,1,'{\"title\":\"welcome_bg_9.jpg\"}',0),
 (7,10180,10154,10158,1444835883736,0,10010,10486,1,'{\"title\":\"welcome_bg_4.jpg\"}',0),
 (8,10180,10154,10158,1444835883941,0,10010,10497,1,'{\"title\":\"welcome_bg_6.jpg\"}',0),
 (9,10180,10154,10158,1444835884269,0,10010,10511,1,'{\"title\":\"welcome_bg_7.jpg\"}',0),
 (10,10180,10154,10158,1444835884560,0,10010,10527,1,'{\"title\":\"welcome_bg_5.jpg\"}',0),
 (11,10180,10154,10158,1444835884917,0,10010,10538,1,'{\"title\":\"welcome_bg_13.jpg\"}',0),
 (12,10180,10154,10158,1444835885142,0,10010,10555,1,'{\"title\":\"welcome_bg_1.jpg\"}',0),
 (13,10180,10154,10158,1444835885424,0,10010,10568,1,'{\"title\":\"welcome_bg_8.jpg\"}',0);
/*!40000 ALTER TABLE `socialactivity` ENABLE KEYS */;


--
-- Definition of table `socialactivityachievement`
--

DROP TABLE IF EXISTS `socialactivityachievement`;
CREATE TABLE `socialactivityachievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityAchievementId`),
  UNIQUE KEY `IX_D4390CAA` (`groupId`,`userId`,`name`),
  KEY `IX_E14B1F1` (`groupId`),
  KEY `IX_83E16F2F` (`groupId`,`firstInGroup`),
  KEY `IX_8F6408F0` (`groupId`,`name`),
  KEY `IX_C8FD892B` (`groupId`,`userId`),
  KEY `IX_AABC18E9` (`groupId`,`userId`,`firstInGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socialactivityachievement`
--

/*!40000 ALTER TABLE `socialactivityachievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivityachievement` ENABLE KEYS */;


--
-- Definition of table `socialactivitycounter`
--

DROP TABLE IF EXISTS `socialactivitycounter`;
CREATE TABLE `socialactivitycounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  PRIMARY KEY (`activityCounterId`),
  UNIQUE KEY `IX_1B7E3B67` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`endPeriod`),
  UNIQUE KEY `IX_374B35AE` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`startPeriod`),
  KEY `IX_A4B9A23B` (`classNameId`,`classPK`),
  KEY `IX_926CDD04` (`groupId`,`classNameId`,`classPK`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socialactivitycounter`
--

/*!40000 ALTER TABLE `socialactivitycounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitycounter` ENABLE KEYS */;


--
-- Definition of table `socialactivitylimit`
--

DROP TABLE IF EXISTS `socialactivitylimit`;
CREATE TABLE `socialactivitylimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`activityLimitId`),
  UNIQUE KEY `IX_F1C1A617` (`groupId`,`userId`,`classNameId`,`classPK`,`activityType`,`activityCounterName`),
  KEY `IX_B15863FA` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socialactivitylimit`
--

/*!40000 ALTER TABLE `socialactivitylimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitylimit` ENABLE KEYS */;


--
-- Definition of table `socialactivitysetting`
--

DROP TABLE IF EXISTS `socialactivitysetting`;
CREATE TABLE `socialactivitysetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`),
  KEY `IX_384788CD` (`groupId`,`activityType`),
  KEY `IX_1E9CF33B` (`groupId`,`classNameId`,`activityType`),
  KEY `IX_D984AABA` (`groupId`,`classNameId`,`activityType`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socialactivitysetting`
--

/*!40000 ALTER TABLE `socialactivitysetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitysetting` ENABLE KEYS */;


--
-- Definition of table `socialrelation`
--

DROP TABLE IF EXISTS `socialrelation`;
CREATE TABLE `socialrelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`relationId`),
  UNIQUE KEY `IX_12A92145` (`userId1`,`userId2`,`type_`),
  KEY `IX_61171E99` (`companyId`),
  KEY `IX_95135D1C` (`companyId`,`type_`),
  KEY `IX_C31A64C6` (`type_`),
  KEY `IX_5A40CDCC` (`userId1`),
  KEY `IX_4B52BE89` (`userId1`,`type_`),
  KEY `IX_B5C9C690` (`userId1`,`userId2`),
  KEY `IX_5A40D18D` (`userId2`),
  KEY `IX_3F9C2FA8` (`userId2`,`type_`),
  KEY `IX_F0CA24A5` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socialrelation`
--

/*!40000 ALTER TABLE `socialrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrelation` ENABLE KEYS */;


--
-- Definition of table `socialrequest`
--

DROP TABLE IF EXISTS `socialrequest`;
CREATE TABLE `socialrequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestId`),
  UNIQUE KEY `IX_36A90CA7` (`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  UNIQUE KEY `IX_4F973EFE` (`uuid_`,`groupId`),
  KEY `IX_D3425487` (`classNameId`,`classPK`,`type_`,`receiverUserId`,`status`),
  KEY `IX_A90FE5A0` (`companyId`),
  KEY `IX_32292ED1` (`receiverUserId`),
  KEY `IX_D9380CB7` (`receiverUserId`,`status`),
  KEY `IX_80F7A9C2` (`userId`),
  KEY `IX_CC86A444` (`userId`,`classNameId`,`classPK`,`type_`,`status`),
  KEY `IX_AB5906A8` (`userId`,`status`),
  KEY `IX_49D5872C` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socialrequest`
--

/*!40000 ALTER TABLE `socialrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrequest` ENABLE KEYS */;


--
-- Definition of table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
CREATE TABLE `subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`),
  UNIQUE KEY `IX_2E1A92D4` (`companyId`,`userId`,`classNameId`,`classPK`),
  KEY `IX_786D171A` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_54243AFD` (`userId`),
  KEY `IX_E8F34171` (`userId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription`
--

/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;


--
-- Definition of table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`teamId`),
  UNIQUE KEY `IX_143DC786` (`groupId`,`name`),
  KEY `IX_AE6E9907` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;


--
-- Definition of table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ticketId`),
  KEY `IX_B2468446` (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;


--
-- Definition of table `user_`
--

DROP TABLE IF EXISTS `user_`;
CREATE TABLE `user_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `IX_615E9F7A` (`companyId`,`emailAddress`),
  UNIQUE KEY `IX_C5806019` (`companyId`,`screenName`),
  UNIQUE KEY `IX_9782AD88` (`companyId`,`userId`),
  UNIQUE KEY `IX_5ADBE171` (`contactId`),
  KEY `IX_3A1E834E` (`companyId`),
  KEY `IX_6EF03E4E` (`companyId`,`defaultUser`),
  KEY `IX_1D731F03` (`companyId`,`facebookId`),
  KEY `IX_89509087` (`companyId`,`openId`(767)),
  KEY `IX_F6039434` (`companyId`,`status`),
  KEY `IX_762F63C6` (`emailAddress`),
  KEY `IX_A18034A4` (`portraitId`),
  KEY `IX_E0422BDA` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_`
--

/*!40000 ALTER TABLE `user_` DISABLE KEYS */;
INSERT INTO `user_` (`uuid_`,`userId`,`companyId`,`createDate`,`modifiedDate`,`defaultUser`,`contactId`,`password_`,`passwordEncrypted`,`passwordReset`,`passwordModifiedDate`,`digest`,`reminderQueryQuestion`,`reminderQueryAnswer`,`graceLoginCount`,`screenName`,`emailAddress`,`facebookId`,`openId`,`portraitId`,`languageId`,`timeZoneId`,`greeting`,`comments`,`firstName`,`middleName`,`lastName`,`jobTitle`,`loginDate`,`loginIP`,`lastLoginDate`,`lastLoginIP`,`lastFailedLoginDate`,`failedLoginAttempts`,`lockout`,`lockoutDate`,`agreedToTermsOfUse`,`emailAddressVerified`,`status`) VALUES 
 ('4332c11b-071d-451b-8471-f5b5f433e03a',10158,10154,'2015-10-14 15:11:29','2015-10-14 15:11:29',1,10159,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,528f53719430814f22dbf509e0faa0c4,528f53719430814f22dbf509e0faa0c4','','',0,'10158','default@liferay.com',0,'',0,'es_ES','GMT','Welcome!','','','','','','2015-10-14 15:11:29','',NULL,'',NULL,0,0,NULL,1,0,0),
 ('b1314919-4b48-4bc5-9303-7cd25d5bd9ba',10196,10154,'2015-10-14 15:11:31','2015-10-16 20:27:57',0,10197,'qUqP5cyxm6YcTAhz05Hph5gvu9M=',1,0,'2015-10-16 20:28:16','e5d86c6f3672e52795891c3597f20de0,751da756639bc033b572ba2e7849b589,8f3d267131c99bf7ba6ade3481d748b4','','',0,'test','test@liferay.com',0,'',0,'es_ES','GMT','Bienvenido  Test Test!','','Test','','Test','','2015-10-16 20:32:03','127.0.0.1','2015-10-16 20:20:01','127.0.0.1',NULL,0,0,NULL,0,1,0),
 ('a7f5bf88-9c0c-44a9-8b7e-9a02c77907c8',10901,10154,'2015-10-14 21:48:47','2015-10-14 21:58:15',0,10902,'dyH9XnbG+3aJuJyDcz5f4KpR14w=',1,0,'2015-10-14 21:50:04','f8beba7b0a9de8e620c4b4993bb21c75,e577fc7f4c87c464cf3242421d79b194,185191280b5f909ddd816efe142db566','','',0,'iquiroz','iquiroz@gmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Ivan Quiroz!','','Ivan','','Quiroz','Ivan Quiroz','2015-10-16 20:20:53','127.0.0.1','2015-10-16 17:15:27','127.0.0.1',NULL,0,0,NULL,0,0,0),
 ('fda8a32d-c885-4da9-8121-d6b404197a82',10931,10154,'2015-10-14 22:07:11','2015-10-14 22:07:49',0,10932,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-10-14 22:07:20','0087a6b9309f37fe11ab47e1eba8e269,abca448eabe706b345d95d8cc2dd8ffe,a135f01105cbac0d283d631a9f334f7d','','',0,'kdextre','kdextre@gmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Katheryn Katheryn!','','Katheryn','','Katheryn','Katheryn Dextre Llontop','2015-10-14 22:10:31','127.0.0.1','2015-10-14 22:10:31','127.0.0.1',NULL,0,0,NULL,0,0,0),
 ('cb595c56-e236-4738-b5a2-ad30aa6d01ad',10953,10154,'2015-10-14 22:21:00','2015-10-14 22:24:28',0,10954,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-10-14 22:24:28','5da32e4c081b028be8a376e5fa4b6a96,66876555c493b1289dd232120779985a,892575d48e77470439b701cbec5fb14b','','',0,'mlopera','mlopera@gmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Monica Lopera!','','Monica','','Lopera','Monica Lopera','2015-10-14 22:24:34','127.0.0.1','2015-10-14 22:24:34','127.0.0.1',NULL,0,0,NULL,0,0,0),
 ('41920309-11b0-47b0-9adc-10d90dc0ac53',10976,10154,'2015-10-14 22:29:44','2015-10-14 22:30:51',0,10977,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-10-14 22:29:53','','','',0,'avaras','avaras@gmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Arturo Varas!','','Arturo','','Varas','Arturo Varas','2015-10-14 22:24:34','',NULL,'',NULL,0,0,NULL,0,0,0),
 ('e7c42471-56f4-4258-95b0-701fb291fab4',10988,10154,'2015-10-14 22:33:53','2015-10-14 22:34:39',0,10989,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-10-14 22:34:05','','','',0,'ddelgado','danieldelgado20g@gmail.clom',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Danielle Delgado!','','Danielle','','Delgado','Danielle Delgado','2015-10-14 22:24:34','',NULL,'',NULL,0,0,NULL,0,0,0),
 ('3687a2b5-9780-4f6f-a5c2-26c1e3f7f34d',10999,10154,'2015-10-14 22:37:36','2015-10-14 22:39:11',0,11000,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-10-14 22:37:46','','','',0,'rmelgarejo','rmelgarejo@gmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Randiel Melgarejo!','','Randiel','','Melgarejo','Randiel Melgarejo','2015-10-14 22:24:34','',NULL,'',NULL,0,0,NULL,0,0,0);
/*!40000 ALTER TABLE `user_` ENABLE KEYS */;


--
-- Definition of table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE `usergroup` (
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`),
  UNIQUE KEY `IX_23EAD0D` (`companyId`,`name`),
  KEY `IX_524FEFCE` (`companyId`),
  KEY `IX_69771487` (`companyId`,`parentUserGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usergroup`
--

/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
INSERT INTO `usergroup` (`userGroupId`,`companyId`,`parentUserGroupId`,`name`,`description`,`addedByLDAPImport`) VALUES 
 (10819,10154,0,'Fabrica de Software','',0),
 (10823,10154,0,'Reclutamiento','',0),
 (10827,10154,0,'Gerentes','',0),
 (10831,10154,0,'MAPFRE','',0);
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;


--
-- Definition of table `usergroupgrouprole`
--

DROP TABLE IF EXISTS `usergroupgrouprole`;
CREATE TABLE `usergroupgrouprole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`),
  KEY `IX_CCBE4063` (`groupId`),
  KEY `IX_CAB0CCC8` (`groupId`,`roleId`),
  KEY `IX_1CDF88C` (`roleId`),
  KEY `IX_DCDED558` (`userGroupId`),
  KEY `IX_73C52252` (`userGroupId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usergroupgrouprole`
--

/*!40000 ALTER TABLE `usergroupgrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroupgrouprole` ENABLE KEYS */;


--
-- Definition of table `usergrouprole`
--

DROP TABLE IF EXISTS `usergrouprole`;
CREATE TABLE `usergrouprole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`),
  KEY `IX_1B988D7A` (`groupId`),
  KEY `IX_871412DF` (`groupId`,`roleId`),
  KEY `IX_887A2C95` (`roleId`),
  KEY `IX_887BE56A` (`userId`),
  KEY `IX_4D040680` (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usergrouprole`
--

/*!40000 ALTER TABLE `usergrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergrouprole` ENABLE KEYS */;


--
-- Definition of table `usergroups_teams`
--

DROP TABLE IF EXISTS `usergroups_teams`;
CREATE TABLE `usergroups_teams` (
  `userGroupId` bigint(20) NOT NULL,
  `teamId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`teamId`),
  KEY `IX_31FB0B08` (`teamId`),
  KEY `IX_7F187E63` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usergroups_teams`
--

/*!40000 ALTER TABLE `usergroups_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups_teams` ENABLE KEYS */;


--
-- Definition of table `useridmapper`
--

DROP TABLE IF EXISTS `useridmapper`;
CREATE TABLE `useridmapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`),
  UNIQUE KEY `IX_41A32E0D` (`type_`,`externalUserId`),
  UNIQUE KEY `IX_D1C44A6E` (`userId`,`type_`),
  KEY `IX_E60EA987` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useridmapper`
--

/*!40000 ALTER TABLE `useridmapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `useridmapper` ENABLE KEYS */;


--
-- Definition of table `usernotificationevent`
--

DROP TABLE IF EXISTS `usernotificationevent`;
CREATE TABLE `usernotificationevent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`),
  KEY `IX_3E5D78C4` (`userId`),
  KEY `IX_3DBB361A` (`userId`,`archived`),
  KEY `IX_ECD8CFEA` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usernotificationevent`
--

/*!40000 ALTER TABLE `usernotificationevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `usernotificationevent` ENABLE KEYS */;


--
-- Definition of table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`),
  KEY `IX_C4F9E699` (`groupId`),
  KEY `IX_F10B6C6B` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_groups`
--

/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` (`userId`,`groupId`) VALUES 
 (10196,10180);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;


--
-- Definition of table `users_orgs`
--

DROP TABLE IF EXISTS `users_orgs`;
CREATE TABLE `users_orgs` (
  `userId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`organizationId`),
  KEY `IX_7EF4EC0E` (`organizationId`),
  KEY `IX_FB646CA6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orgs`
--

/*!40000 ALTER TABLE `users_orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_orgs` ENABLE KEYS */;


--
-- Definition of table `users_permissions`
--

DROP TABLE IF EXISTS `users_permissions`;
CREATE TABLE `users_permissions` (
  `userId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`permissionId`),
  KEY `IX_8AE58A91` (`permissionId`),
  KEY `IX_C26AA64D` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_permissions`
--

/*!40000 ALTER TABLE `users_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_permissions` ENABLE KEYS */;


--
-- Definition of table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `userId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`),
  KEY `IX_C19E5F31` (`roleId`),
  KEY `IX_C1A01806` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_roles`
--

/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` (`userId`,`roleId`) VALUES 
 (10196,10161),
 (10158,10162),
 (10196,10164),
 (10196,10165),
 (10901,10165),
 (10931,10165),
 (10953,10165),
 (10976,10165),
 (10988,10165),
 (10999,10165),
 (10901,10805),
 (10953,10806),
 (10953,10807),
 (10976,10807),
 (10999,10807),
 (10976,10808),
 (10901,10809),
 (10931,10810),
 (10988,10811),
 (10976,10814),
 (10953,10815),
 (10999,10987);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;


--
-- Definition of table `users_teams`
--

DROP TABLE IF EXISTS `users_teams`;
CREATE TABLE `users_teams` (
  `userId` bigint(20) NOT NULL,
  `teamId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`teamId`),
  KEY `IX_4D06AD51` (`teamId`),
  KEY `IX_A098EFBF` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_teams`
--

/*!40000 ALTER TABLE `users_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_teams` ENABLE KEYS */;


--
-- Definition of table `users_usergroups`
--

DROP TABLE IF EXISTS `users_usergroups`;
CREATE TABLE `users_usergroups` (
  `userGroupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`userId`),
  KEY `IX_66FF2503` (`userGroupId`),
  KEY `IX_BE8102D6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_usergroups`
--

/*!40000 ALTER TABLE `users_usergroups` DISABLE KEYS */;
INSERT INTO `users_usergroups` (`userGroupId`,`userId`) VALUES 
 (10819,10988),
 (10823,10901),
 (10823,10931),
 (10823,10953),
 (10827,10976),
 (10827,10999);
/*!40000 ALTER TABLE `users_usergroups` ENABLE KEYS */;


--
-- Definition of table `usertracker`
--

DROP TABLE IF EXISTS `usertracker`;
CREATE TABLE `usertracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userTrackerId`),
  KEY `IX_29BA1CF5` (`companyId`),
  KEY `IX_46B0AE8E` (`sessionId`),
  KEY `IX_E4EFBA8D` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertracker`
--

/*!40000 ALTER TABLE `usertracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertracker` ENABLE KEYS */;


--
-- Definition of table `usertrackerpath`
--

DROP TABLE IF EXISTS `usertrackerpath`;
CREATE TABLE `usertrackerpath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`),
  KEY `IX_14D8BCC0` (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertrackerpath`
--

/*!40000 ALTER TABLE `usertrackerpath` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertrackerpath` ENABLE KEYS */;


--
-- Definition of table `virtualhost`
--

DROP TABLE IF EXISTS `virtualhost`;
CREATE TABLE `virtualhost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`),
  UNIQUE KEY `IX_A083D394` (`companyId`,`layoutSetId`),
  UNIQUE KEY `IX_431A3960` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `virtualhost`
--

/*!40000 ALTER TABLE `virtualhost` DISABLE KEYS */;
INSERT INTO `virtualhost` (`virtualHostId`,`companyId`,`layoutSetId`,`hostname`) VALUES 
 (10157,10154,0,'localhost');
/*!40000 ALTER TABLE `virtualhost` ENABLE KEYS */;


--
-- Definition of table `webdavprops`
--

DROP TABLE IF EXISTS `webdavprops`;
CREATE TABLE `webdavprops` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`),
  UNIQUE KEY `IX_97DFA146` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webdavprops`
--

/*!40000 ALTER TABLE `webdavprops` DISABLE KEYS */;
/*!40000 ALTER TABLE `webdavprops` ENABLE KEYS */;


--
-- Definition of table `website`
--

DROP TABLE IF EXISTS `website`;
CREATE TABLE `website` (
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`websiteId`),
  KEY `IX_96F07007` (`companyId`),
  KEY `IX_4F0F0CA7` (`companyId`,`classNameId`),
  KEY `IX_F960131C` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_1AA07A6D` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F75690BB` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website`
--

/*!40000 ALTER TABLE `website` DISABLE KEYS */;
/*!40000 ALTER TABLE `website` ENABLE KEYS */;


--
-- Definition of table `wikinode`
--

DROP TABLE IF EXISTS `wikinode`;
CREATE TABLE `wikinode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`nodeId`),
  UNIQUE KEY `IX_920CD8B1` (`groupId`,`name`),
  UNIQUE KEY `IX_7609B2AE` (`uuid_`,`groupId`),
  KEY `IX_5D6FE3F0` (`companyId`),
  KEY `IX_B480A672` (`groupId`),
  KEY `IX_6C112D7C` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wikinode`
--

/*!40000 ALTER TABLE `wikinode` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikinode` ENABLE KEYS */;


--
-- Definition of table `wikipage`
--

DROP TABLE IF EXISTS `wikipage`;
CREATE TABLE `wikipage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pageId`),
  UNIQUE KEY `IX_3D4AF476` (`nodeId`,`title`,`version`),
  UNIQUE KEY `IX_2CD67C81` (`resourcePrimKey`,`nodeId`,`version`),
  UNIQUE KEY `IX_899D3DFB` (`uuid_`,`groupId`),
  KEY `IX_A2001730` (`format`),
  KEY `IX_C8A9C476` (`nodeId`),
  KEY `IX_E7F635CA` (`nodeId`,`head`),
  KEY `IX_65E84AF4` (`nodeId`,`head`,`parentTitle`),
  KEY `IX_9F7655DA` (`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_432F0AB0` (`nodeId`,`head`,`status`),
  KEY `IX_46EEF3C8` (`nodeId`,`parentTitle`),
  KEY `IX_1ECC7656` (`nodeId`,`redirectTitle`),
  KEY `IX_546F2D5C` (`nodeId`,`status`),
  KEY `IX_997EEDD2` (`nodeId`,`title`),
  KEY `IX_E745EA26` (`nodeId`,`title`,`head`),
  KEY `IX_BEA33AB8` (`nodeId`,`title`,`status`),
  KEY `IX_B771D67` (`resourcePrimKey`,`nodeId`),
  KEY `IX_94D1054D` (`resourcePrimKey`,`nodeId`,`status`),
  KEY `IX_FBBE7C96` (`userId`,`nodeId`,`status`),
  KEY `IX_9C0E478F` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wikipage`
--

/*!40000 ALTER TABLE `wikipage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipage` ENABLE KEYS */;


--
-- Definition of table `wikipageresource`
--

DROP TABLE IF EXISTS `wikipageresource`;
CREATE TABLE `wikipageresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_21277664` (`nodeId`,`title`),
  KEY `IX_BE898221` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wikipageresource`
--

/*!40000 ALTER TABLE `wikipageresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipageresource` ENABLE KEYS */;


--
-- Definition of table `workflowdefinitionlink`
--

DROP TABLE IF EXISTS `workflowdefinitionlink`;
CREATE TABLE `workflowdefinitionlink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`workflowDefinitionLinkId`),
  KEY `IX_A8B0D276` (`companyId`),
  KEY `IX_A4DB1F0F` (`companyId`,`workflowDefinitionName`,`workflowDefinitionVersion`),
  KEY `IX_B6EE8C9E` (`groupId`,`companyId`,`classNameId`),
  KEY `IX_1E5B9905` (`groupId`,`companyId`,`classNameId`,`classPK`),
  KEY `IX_705B40EE` (`groupId`,`companyId`,`classNameId`,`classPK`,`typePK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workflowdefinitionlink`
--

/*!40000 ALTER TABLE `workflowdefinitionlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowdefinitionlink` ENABLE KEYS */;


--
-- Definition of table `workflowinstancelink`
--

DROP TABLE IF EXISTS `workflowinstancelink`;
CREATE TABLE `workflowinstancelink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workflowInstanceLinkId`),
  KEY `IX_415A7007` (`groupId`,`companyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workflowinstancelink`
--

/*!40000 ALTER TABLE `workflowinstancelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowinstancelink` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
