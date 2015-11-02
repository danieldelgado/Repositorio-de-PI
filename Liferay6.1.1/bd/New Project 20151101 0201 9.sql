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
-- Create schema portal_db_prdh3
--

CREATE DATABASE IF NOT EXISTS portal_db_prdh3;
USE portal_db_prdh3;

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
 (10156,10154,0,'','2015-10-17 00:53:23','2015-10-30 16:40:01',0,'Reclutamiento Global Hitss','','','','','','','','');
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
 (10406,10154,10196,'general',0,0,1),
 (10407,10154,10196,'news',0,0,1),
 (10408,10154,10196,'test',0,0,1);
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
INSERT INTO `assetcategory` (`uuid_`,`categoryId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`parentCategoryId`,`leftCategoryId`,`rightCategoryId`,`name`,`title`,`description`,`vocabularyId`) VALUES 
 ('e5acae58-7911-4301-9fea-3b334ddf4b74',12241,10180,10154,10196,'Admin Admin','2015-10-30 21:31:31','2015-10-30 21:31:31',0,2,3,'Slide','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Slide</Title></root>','',12240),
 ('e2349b56-16be-40fc-9c67-4734356bea8f',12242,10180,10154,10196,'Admin Admin','2015-10-30 21:31:50','2015-10-30 21:31:50',0,4,5,'Equipo de Trabajo','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Equipo de Trabajo</Title></root>','',12240),
 ('c2372b6d-0e86-48cf-b2df-504aed4248ed',12243,10180,10154,10196,'Admin Admin','2015-10-30 21:32:19','2015-10-30 21:32:19',0,6,7,'Trabaja con Hitss','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Trabaja con Hitss</Title></root>','',12240);
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
INSERT INTO `assetentries_assetcategories` (`entryId`,`categoryId`) VALUES 
 (12232,12241),
 (12253,12241),
 (12266,12241);
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
INSERT INTO `assetentries_assettags` (`entryId`,`tagId`) VALUES 
 (11811,11814),
 (11819,11829),
 (11819,11831),
 (11836,11822),
 (11836,11824),
 (11836,11826),
 (11836,11831),
 (11843,11846),
 (11843,11847),
 (11843,11848),
 (11843,11849),
 (11843,11850),
 (12158,12159),
 (12168,12159),
 (12177,12159),
 (12187,12159),
 (12187,12215),
 (12187,12216),
 (12232,12159),
 (12253,12159),
 (12266,12159);
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
 (10178,10172,10154,10158,'','2015-10-17 00:53:24','2015-10-17 00:53:24',10117,10176,'a3a95ede-2985-4797-8fb1-4c891696b9e7',0,0,NULL,NULL,NULL,NULL,'text/html','10175','','','','',0,0,0,0),
 (10201,10192,10154,10196,'Test Test','2015-10-17 00:53:25','2015-10-28 20:37:59',10005,10196,'2bbf03e9-0788-4d9e-8ae1-03ee6f00956d',0,0,NULL,NULL,NULL,NULL,'','Admin Admin','','','','',0,0,0,0),
 (10317,10310,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10117,10314,'c751a7ed-6860-49b2-aea9-b98c9bcc3ae2',0,0,NULL,NULL,NULL,NULL,'text/html','10313','','','','',0,0,0,0),
 (10326,10320,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10117,10324,'55588e96-3ca7-45c3-96cd-5f8657765e22',0,0,NULL,NULL,NULL,NULL,'text/html','10323','','','','',0,0,0,0),
 (10335,10329,10154,10158,'','2015-10-17 00:53:29','2015-10-17 00:53:29',10117,10333,'33ffe477-4962-4357-87f5-354cb08369c6',0,0,NULL,NULL,NULL,NULL,'text/html','10332','','','','',0,0,0,0),
 (10349,10338,10154,10158,'','2015-10-17 00:53:29','2015-10-17 00:53:29',10117,10347,'b4e8bb24-42d0-4ec0-892a-5b08575decaa',0,0,NULL,NULL,NULL,NULL,'text/html','10346','','','','',0,0,0,0),
 (10355,10338,10154,10158,'','2015-10-17 00:53:30','2015-10-17 00:53:30',10117,10353,'580d4ce2-ca27-4d93-a91a-5ba6e035b9dd',0,0,NULL,NULL,NULL,NULL,'text/html','10352','','','','',0,0,0,0),
 (10361,10338,10154,10158,'','2015-10-17 00:53:30','2015-10-17 00:53:30',10117,10359,'3655e83a-0735-4670-a024-f04012ac18aa',0,0,NULL,NULL,NULL,NULL,'text/html','10358','','','','',0,0,0,0),
 (10375,10364,10154,10158,'','2015-10-17 00:53:31','2015-10-17 00:53:31',10117,10373,'54bc059b-44dd-4ae4-88be-8f830c0ddbfd',0,0,NULL,NULL,NULL,NULL,'text/html','10372','','','','',0,0,0,0),
 (10383,10364,10154,10158,'','2015-10-17 00:53:31','2015-10-17 00:53:31',10117,10381,'982528cf-1176-44b2-8520-2f3bef2ff5be',0,0,NULL,NULL,NULL,NULL,'text/html','10380','','','','',0,0,0,0),
 (10389,10364,10154,10158,'','2015-10-17 00:53:31','2015-10-17 00:53:31',10117,10387,'83130a39-dd4f-40bb-9167-c03adf9a697f',0,0,NULL,NULL,NULL,NULL,'text/html','10386','','','','',0,0,0,0),
 (10395,10364,10154,10158,'','2015-10-17 00:53:32','2015-10-17 00:53:32',10117,10393,'e42a2fa3-e8d5-412c-9dd1-116bd143afbf',0,0,NULL,NULL,NULL,NULL,'text/html','10392','','','','',0,0,0,0),
 (10803,10180,10154,10158,'','2015-10-17 02:51:05','2015-10-17 02:51:05',10010,10801,'464ac95f-7e83-4736-b805-a1d953c856cf',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_3.jpg','','','','',0,0,0,0),
 (10806,10180,10154,10158,'','2015-10-17 02:51:05','2015-10-17 02:51:05',10117,10804,'35b8687f-542b-456f-8b1c-581a0c77be42',0,0,NULL,NULL,NULL,NULL,'text/html','10801','','','','',0,0,0,0),
 (10811,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10010,10809,'1a176c36-2f0d-414f-b6b9-f16cb9a842c2',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_11.jpg','','','','',0,0,0,0),
 (10815,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10117,10812,'530031a0-4f26-4fe6-9323-12514de5bcdc',0,0,NULL,NULL,NULL,NULL,'text/html','10809','','','','',0,0,0,0),
 (10820,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10010,10818,'01f31f5e-7f1b-4032-a42f-b3587ba204d0',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_12.jpg','','','','',0,0,0,0),
 (10823,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10117,10821,'c018da58-a860-4ae2-94e6-94d01d6e584e',0,0,NULL,NULL,NULL,NULL,'text/html','10818','','','','',0,0,0,0),
 (10830,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10010,10826,'9b2b3a79-5209-4366-b0c6-59b231f7f1a8',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_bg_10.png','','','','',0,0,0,0),
 (10834,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10117,10831,'a7af6b7e-ab1e-4b5f-a167-6afde7c20a2c',0,0,NULL,NULL,NULL,NULL,'text/html','10826','','','','',0,0,0,0),
 (10839,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10837,'8c022275-0d47-4ba0-bb9f-fc7044c8aaf8',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_2.jpg','','','','',0,0,0,0),
 (10843,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10117,10840,'e5723525-e63e-4947-8ea0-a04507ef3889',0,0,NULL,NULL,NULL,NULL,'text/html','10837','','','','',0,0,0,0),
 (10852,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10849,'4c9b1230-26cb-4d59-b8fe-7072c08bc140',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_9.jpg','','','','',0,0,0,0),
 (10855,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10117,10853,'c360586c-1be8-4b4c-abfc-9cf91406c2f3',0,0,NULL,NULL,NULL,NULL,'text/html','10849','','','','',0,0,0,0),
 (10863,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10861,'d6e03c87-b2ef-4fcd-a2ff-3145b3a53966',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_4.jpg','','','','',0,0,0,0),
 (10867,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10117,10864,'53324614-d5a2-4a11-af04-20c5096b150e',0,0,NULL,NULL,NULL,NULL,'text/html','10861','','','','',0,0,0,0),
 (10875,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10873,'8f9fc194-1e53-4139-9382-932e2380a5c9',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_6.jpg','','','','',0,0,0,0),
 (10879,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10117,10876,'a7a9772e-66fd-403d-89d8-611ba6e6096c',0,0,NULL,NULL,NULL,NULL,'text/html','10873','','','','',0,0,0,0),
 (10888,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10885,'6c685d38-d4a4-436e-872e-37d52c7f3aef',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_7.jpg','','','','',0,0,0,0),
 (10893,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10117,10889,'18c224f6-685f-413b-8f1a-255cf24d20fe',0,0,NULL,NULL,NULL,NULL,'text/html','10885','','','','',0,0,0,0),
 (10903,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10897,'91d6c9e5-6a84-42f4-b232-f7de6c223792',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_5.jpg','','','','',0,0,0,0),
 (10906,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10117,10904,'43de5441-a520-4ce1-b434-58310dbcc0bf',0,0,NULL,NULL,NULL,NULL,'text/html','10897','','','','',0,0,0,0),
 (10915,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10910,'aa1bc47d-51f9-4327-8ee1-fa31e4073585',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_13.jpg','','','','',0,0,0,0),
 (10918,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10117,10916,'143ee74a-9ed8-4614-a15a-42d1f5e27900',0,0,NULL,NULL,NULL,NULL,'text/html','10910','','','','',0,0,0,0),
 (10927,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10922,'d13b586c-d260-4b0f-ab03-55256c2c4a5f',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_1.jpg','','','','',0,0,0,0),
 (10930,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10117,10928,'295402e8-6905-4933-8bd9-eb72d80d72a1',0,0,NULL,NULL,NULL,NULL,'text/html','10922','','','','',0,0,0,0),
 (10939,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10937,'49d118dc-ea10-47be-b78e-ea3e739ce20f',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_8.jpg','','','','',0,0,0,0),
 (10942,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10117,10940,'f54d79f0-2f8d-473a-90f2-15e83f36d648',0,0,NULL,NULL,NULL,NULL,'text/html','10937','','','','',0,0,0,0),
 (11205,10180,10154,10158,'','2015-10-17 21:48:58','2015-10-17 21:48:58',10013,11204,'48d97312-0450-49c5-94cc-c29e8022be15',0,1,NULL,NULL,NULL,NULL,'text/html','FrontPage','','','','',0,0,0,100),
 (11208,10180,10154,10158,'','2015-10-17 21:48:58','2015-10-17 21:48:58',10117,11206,'2b6a560a-64db-4ab7-9d9c-e71a9baa76b2',0,0,NULL,NULL,NULL,NULL,'text/html','11204','','','','',0,0,0,0),
 (11304,10180,10154,10196,'Aadmin Admin','2015-10-18 04:55:44','2015-10-18 04:55:44',10117,11302,'eb91dac3-aa5f-4e1c-8adf-bffa4382e6da',0,0,NULL,NULL,NULL,NULL,'text/html','11301','','','','',0,0,0,0),
 (11314,10180,10154,10196,'Aadmin Admin','2015-10-18 04:57:25','2015-10-18 04:57:25',10117,11312,'ca5cfe4a-467e-4376-842d-0b3be0c13dda',0,0,NULL,NULL,NULL,NULL,'text/html','11311','','','','',0,0,0,0),
 (11319,10180,10154,10196,'Aadmin Admin','2015-10-18 04:57:58','2015-10-18 04:57:58',10117,11317,'31f06e5f-da60-4c4b-ab01-c7339082ff02',0,0,NULL,NULL,NULL,NULL,'text/html','11316','','','','',0,0,0,0),
 (11325,10180,10154,10196,'Aadmin Admin','2015-10-18 04:58:10','2015-10-18 04:58:10',10117,11323,'d34c3390-dbe3-4ef9-9fd7-fd8152fc2216',0,0,NULL,NULL,NULL,NULL,'text/html','11322','','','','',0,0,0,0),
 (11330,10180,10154,10196,'Aadmin Admin','2015-10-18 04:58:47','2015-10-18 04:58:47',10117,11328,'351819fb-f28d-4266-8486-017e9ab96bd8',0,0,NULL,NULL,NULL,NULL,'text/html','11327','','','','',0,0,0,0),
 (11335,10180,10154,10196,'Aadmin Admin','2015-10-18 04:59:13','2015-10-18 04:59:13',10117,11333,'47cec8a8-ce54-4676-9c4e-ccf131391e16',0,0,NULL,NULL,NULL,NULL,'text/html','11332','','','','',0,0,0,0),
 (11340,10180,10154,10196,'Aadmin Admin','2015-10-18 05:00:05','2015-10-18 05:00:05',10117,11338,'b837c95d-36e3-46db-b6eb-fb8044fbac35',0,0,NULL,NULL,NULL,NULL,'text/html','11337','','','','',0,0,0,0),
 (11811,10192,10154,10196,'Aadmin Admin','2015-10-28 20:22:00','2015-10-28 20:28:26',10003,11807,'',0,0,NULL,NULL,NULL,NULL,'','Desarrollo Fabrica','','','','',0,0,0,0),
 (11819,10192,10154,10196,'Aadmin Admin','2015-10-28 20:30:16','2015-10-28 20:32:35',10003,11815,'',0,0,NULL,NULL,NULL,NULL,'','MAPFRE','','','','',0,0,0,0),
 (11836,10192,10154,10196,'Aadmin Admin','2015-10-28 20:33:15','2015-10-28 20:33:37',10003,11832,'',0,0,NULL,NULL,NULL,NULL,'','Desarrollo BBVA','','','','',0,0,0,0),
 (11843,10192,10154,10196,'Aadmin Admin','2015-10-28 20:34:51','2015-10-28 20:35:54',10003,11839,'',0,0,NULL,NULL,NULL,NULL,'','CLARO','','','','',0,0,0,0),
 (11856,10192,10154,10196,'Aadmin Admin','2015-10-28 20:36:26','2015-10-28 20:36:31',10003,11852,'',0,0,NULL,NULL,NULL,NULL,'','CLARO PERU','','','','',0,0,0,0),
 (11863,10192,10154,10196,'Aadmin Admin','2015-10-28 20:36:47','2015-10-28 20:36:47',10003,11859,'',0,0,NULL,NULL,NULL,NULL,'','GERENTES','','','','',0,0,0,0),
 (11869,10192,10154,10196,'Aadmin Admin','2015-10-28 20:37:05','2015-10-28 20:37:05',10003,11865,'',0,0,NULL,NULL,NULL,NULL,'','CAPITAL HUMANO','','','','',0,0,0,0),
 (11875,10192,10154,10196,'Aadmin Admin','2015-10-28 20:37:15','2015-10-28 20:37:15',10003,11871,'',0,0,NULL,NULL,NULL,NULL,'','SOPORTE TECNICO','','','','',0,0,0,0),
 (11905,10180,10154,10196,'Admin Admin','2015-10-29 22:20:42','2015-10-29 22:20:42',10117,11903,'70ecaaa3-950c-4fd7-8a75-122ba8ec4e63',0,0,NULL,NULL,NULL,NULL,'text/html','11902','','','','',0,0,0,0),
 (11910,10180,10154,10196,'Admin Admin','2015-10-29 22:21:19','2015-10-29 22:21:19',10117,11908,'a050627b-aa97-460c-90ab-e1ed0fd916f4',0,0,NULL,NULL,NULL,NULL,'text/html','11907','','','','',0,0,0,0),
 (12005,10192,10154,10196,'Admin Admin','2015-10-30 15:20:54','2015-10-30 16:36:33',10001,12002,'',0,0,NULL,NULL,NULL,NULL,'','Portal de Gerencia','Portal de Gerencia para gestionar las solicitudes de reclutamiento, evolución de desarrollo humano y capacitaciones.','','','',0,0,0,0),
 (12051,10180,10154,10196,'Admin Admin','2015-10-30 16:15:42','2015-10-30 16:15:42',10117,12049,'b42a0ec5-f5c0-48bc-912c-eddd7d5a41f6',0,0,NULL,NULL,NULL,NULL,'text/html','12048','','','','',0,0,0,0),
 (12057,10180,10154,10196,'Admin Admin','2015-10-30 16:16:03','2015-10-30 16:16:03',10117,12055,'c3601261-4369-40cd-aefe-90d4eac7483f',0,0,NULL,NULL,NULL,NULL,'text/html','12054','','','','',0,0,0,0),
 (12062,10180,10154,10196,'Admin Admin','2015-10-30 16:16:27','2015-10-30 16:16:27',10117,12060,'efd995c3-8ebf-4b4b-af3d-cebc739f6695',0,0,NULL,NULL,NULL,NULL,'text/html','12059','','','','',0,0,0,0),
 (12067,10180,10154,10196,'Admin Admin','2015-10-30 16:16:43','2015-10-30 16:16:43',10117,12065,'a107e9b1-8b1d-4d9c-ae7b-3e6df0236e06',0,0,NULL,NULL,NULL,NULL,'text/html','12064','','','','',0,0,0,0),
 (12106,10192,10154,10196,'Admin Admin','2015-10-30 19:10:33','2015-10-30 19:10:33',10001,12103,'',0,0,NULL,NULL,NULL,NULL,'','Portal del Recurso Humano','Portal para el trabajador o colaborador','','','',0,0,0,0),
 (12158,10180,10154,10196,'Admin Admin','2015-10-30 20:24:02','2015-10-30 22:12:00',10010,12156,'ed92877a-69a9-4565-b476-b759096e28a1',0,1,NULL,NULL,NULL,NULL,'image/jpeg','12153-NOC0JL.jpg','','','','',0,0,0,1),
 (12162,10180,10154,10196,'Admin Admin','2015-10-30 20:24:03','2015-10-30 20:24:03',10117,12160,'e07b828c-9bdb-4ad7-adaf-84364710abdf',0,0,NULL,NULL,NULL,NULL,'text/html','12156','','','','',0,0,0,0),
 (12168,10180,10154,10196,'Admin Admin','2015-10-30 20:24:06','2015-10-30 22:11:51',10010,12166,'7bbde696-ab10-4f6e-9c03-0547e2238fb1',0,1,NULL,NULL,NULL,NULL,'image/jpeg','meeting_09.jpg','','','','',0,0,0,15),
 (12172,10180,10154,10196,'Admin Admin','2015-10-30 20:24:06','2015-10-30 20:24:06',10117,12169,'57f25e6e-d32e-4f83-9006-ba332f88ce5c',0,0,NULL,NULL,NULL,NULL,'text/html','12166','','','','',0,0,0,0),
 (12177,10180,10154,10196,'Admin Admin','2015-10-30 20:24:07','2015-10-30 22:11:50',10010,12175,'40f97854-2859-466e-81c1-786cc13df97d',0,1,NULL,NULL,NULL,NULL,'image/jpeg','business silhouettes-150-01.jpg','','','','',0,0,0,16),
 (12180,10180,10154,10196,'Admin Admin','2015-10-30 20:24:07','2015-10-30 20:24:07',10117,12178,'03f675b7-8b47-413a-a3a0-f62eb9919d33',0,0,NULL,NULL,NULL,NULL,'text/html','12175','','','','',0,0,0,0),
 (12187,10180,10154,10196,'Admin Admin','2015-10-30 20:24:09','2015-10-30 22:11:50',10010,12185,'18393980-4f07-48b1-8e4b-9a5e44b0b05a',0,1,NULL,NULL,NULL,NULL,'image/jpeg','04 150p-01.jpg','','','','',0,0,0,14),
 (12190,10180,10154,10196,'Admin Admin','2015-10-30 20:24:09','2015-10-30 20:24:09',10117,12188,'7303687e-b295-47bf-bc3a-47168ccd4070',0,0,NULL,NULL,NULL,NULL,'text/html','12185','','','','',0,0,0,0),
 (12232,10180,10154,10196,'Admin Admin','2015-10-30 21:22:45','2015-10-31 00:59:11',10108,12228,'a9ddd391-5cb5-4cc1-b80f-fc2a487f611d',12220,1,NULL,NULL,'2015-10-30 21:22:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Trabajar en equipo</Title></root>','','','','',0,0,0,0),
 (12235,10180,10154,10196,'Admin Admin','2015-10-30 21:22:45','2015-10-30 21:22:45',10117,12233,'1ba6023e-bfad-47a3-9bad-58481090d689',0,0,NULL,NULL,NULL,NULL,'text/html','12228','','','','',0,0,0,0),
 (12253,10180,10154,10196,'Admin Admin','2015-10-30 21:57:05','2015-10-31 00:59:40',10108,12251,'79d1a133-fb57-4325-88aa-9bc23d07abbb',12220,1,NULL,NULL,'2015-10-30 21:55:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Personal Destacado</Title></root>','','','','',0,0,0,0),
 (12257,10180,10154,10196,'Admin Admin','2015-10-30 21:57:05','2015-10-30 21:57:05',10117,12255,'c50e7b47-1471-48ac-aa2f-9e85bb75459b',0,0,NULL,NULL,NULL,NULL,'text/html','12251','','','','',0,0,0,0),
 (12266,10180,10154,10196,'Admin Admin','2015-10-30 22:02:39','2015-10-31 01:00:06',10108,12264,'27d1a306-bc97-4ac9-a1e7-3dda95e9b968',12220,1,NULL,NULL,'2015-10-30 22:00:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Trabajos de Exigencia</Title></root>','','','','',0,0,0,0),
 (12272,10180,10154,10196,'Admin Admin','2015-10-30 22:02:39','2015-10-30 22:02:39',10117,12270,'6a32147a-b903-43de-9750-9ba5e27f54e6',0,0,NULL,NULL,NULL,NULL,'text/html','12264','','','','',0,0,0,0),
 (12342,12002,10154,10196,'Admin Admin','2015-10-31 03:01:37','2015-10-31 03:01:37',10117,12340,'bbcfe30f-50b4-498f-9e39-2bb49ccf3f69',0,0,NULL,NULL,NULL,NULL,'text/html','12339','','','','',0,0,0,0),
 (12347,12002,10154,10196,'Admin Admin','2015-10-31 03:01:48','2015-10-31 03:01:48',10117,12345,'4f054c10-a0c1-4a91-b8d2-4c9f08a43947',0,0,NULL,NULL,NULL,NULL,'text/html','12344','','','','',0,0,0,0),
 (12361,12002,10154,10196,'Admin Admin','2015-10-31 03:08:07','2015-10-31 03:08:07',10117,12359,'1c600d40-b419-48ca-a7cd-2fbb97ab91e2',0,0,NULL,NULL,NULL,NULL,'text/html','12358','','','','',0,0,0,0),
 (12506,10192,10154,12501,'Danielle Delgado Cabrera','2015-11-01 05:17:00','2015-11-01 05:17:00',10005,12501,'9bab6f79-293d-4735-9213-3ead1c08ce02',0,0,NULL,NULL,NULL,NULL,'','Danielle Delgado Cabrera','','','','',0,0,0,0),
 (12606,10192,10154,12601,'Danielle Delgado Cabrera','2015-11-01 05:52:43','2015-11-01 05:52:43',10005,12601,'22092c35-8e92-458e-87ed-2d70cf36c32d',0,0,NULL,NULL,NULL,NULL,'','Danielle Delgado Cabrera','','','','',0,0,0,0);
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
INSERT INTO `assettag` (`tagId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`assetCount`) VALUES 
 (11814,10192,10154,10196,'Aadmin Admin','2015-10-28 20:28:26','2015-10-28 20:28:26','fabrica de software java',0),
 (11822,10192,10154,10196,'Aadmin Admin','2015-10-28 20:32:19','2015-10-28 20:32:19','desarrollo',0),
 (11823,10192,10154,10196,'Aadmin Admin','2015-10-28 20:32:19','2015-10-28 20:32:19','fabrica de software',0),
 (11824,10192,10154,10196,'Aadmin Admin','2015-10-28 20:32:19','2015-10-28 20:32:19','tecnologia',0),
 (11825,10192,10154,10196,'Aadmin Admin','2015-10-28 20:32:19','2015-10-28 20:32:19','liferay',0),
 (11826,10192,10154,10196,'Aadmin Admin','2015-10-28 20:32:19','2015-10-28 20:32:19','spring mvc',0),
 (11827,10192,10154,10196,'Aadmin Admin','2015-10-28 20:32:19','2015-10-28 20:32:19','primefaces',0),
 (11828,10192,10154,10196,'Aadmin Admin','2015-10-28 20:32:19','2015-10-28 20:32:19','sqlserver 2008',0),
 (11829,10192,10154,10196,'Aadmin Admin','2015-10-28 20:32:19','2015-10-28 20:32:19','pl-sql',0),
 (11831,10192,10154,10196,'Aadmin Admin','2015-10-28 20:32:35','2015-10-28 20:32:35','java',0),
 (11846,10192,10154,10196,'Aadmin Admin','2015-10-28 20:35:32','2015-10-28 20:35:32','asp',0),
 (11847,10192,10154,10196,'Aadmin Admin','2015-10-28 20:35:32','2015-10-28 20:35:32','asp.net',0),
 (11848,10192,10154,10196,'Aadmin Admin','2015-10-28 20:35:32','2015-10-28 20:35:32','asp mvc',0),
 (11849,10192,10154,10196,'Aadmin Admin','2015-10-28 20:35:32','2015-10-28 20:35:32','.net',0),
 (11850,10192,10154,10196,'Aadmin Admin','2015-10-28 20:35:32','2015-10-28 20:35:32','sql server 2012',0),
 (12159,10180,10154,10196,'Admin Admin','2015-10-30 20:24:03','2015-10-30 20:24:03','slider',7),
 (12215,10180,10154,10196,'Admin Admin','2015-10-30 20:59:29','2015-10-30 20:59:29','equipo',1),
 (12216,10180,10154,10196,'Admin Admin','2015-10-30 20:59:29','2015-10-30 20:59:29','equipo de trabajo',1),
 (12254,10180,10154,10196,'Admin Admin','2015-10-30 21:57:05','2015-10-30 21:57:05','profesionales',0),
 (12267,10180,10154,10196,'Admin Admin','2015-10-30 22:02:39','2015-10-30 22:02:39','comodidad',0),
 (12268,10180,10154,10196,'Admin Admin','2015-10-30 22:02:39','2015-10-30 22:02:39','rendimiento',0),
 (12269,10180,10154,10196,'Admin Admin','2015-10-30 22:02:39','2015-10-30 22:02:39','desenvolvimiento',0);
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
INSERT INTO `assettagstats` (`tagStatsId`,`tagId`,`classNameId`,`assetCount`) VALUES 
 (12164,12159,10010,4),
 (12217,12215,10010,2),
 (12218,12216,10010,2),
 (12239,12216,10108,0),
 (12247,12159,10108,3),
 (12259,12215,10108,0),
 (12260,12254,10108,0),
 (12274,12267,10108,0),
 (12275,12269,10108,0),
 (12276,12268,10108,0);
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
 ('dc29d6a3-c579-4da2-a98b-74adc4eb3fa3',10316,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','',''),
 ('6f6267f9-7660-4c17-8195-a9eb840ee865',12023,10364,10154,10158,'','2015-10-30 15:20:58','2015-10-30 15:20:58','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Topic</Title></root>','',''),
 ('6f6267f9-7660-4c17-8195-a9eb840ee865',12024,12002,10154,10158,'','2015-10-30 15:20:59','2015-10-31 03:00:00','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Topic</Title></root>','',''),
 ('6f6267f9-7660-4c17-8195-a9eb840ee865',12108,12103,10154,10158,'','2015-10-30 19:10:34','2015-10-30 19:10:36','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Topic</Title></root>','',''),
 ('a2e18ff0-2f0e-47e0-9b34-80a90916ba2d',12207,10180,10154,10158,'','2015-10-30 20:26:55','2015-10-30 20:26:55','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Topic</Title></root>','',''),
 ('833a84d0-9dd7-4142-b2cb-04c5db74b730',12240,10180,10154,10196,'Admin Admin','2015-10-30 21:29:44','2015-10-30 21:29:44','Slide','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Slide</Title></root>','','multiValued=true\nselectedClassNameIds=0\n');
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
 (10409,'com.liferay.marketplace.model.App'),
 (10410,'com.liferay.marketplace.model.Module'),
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
 (10414,'com.liferay.portal.repository.liferayrepository.LiferayRepository'),
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
 (10152,'com.liferay.portlet.wiki.model.WikiPageResource'),
 (11801,'com.rec.hitss.service.model.Foo'),
 (11901,'com.rec.hitss.service.model.SolicitudReclutamiento');
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
 (10154,10156,'liferay.com','rO0ABXNyABRqYXZhLnNlY3VyaXR5LktleVJlcL35T7OImqVDAgAETAAJYWxnb3JpdGhtdAASTGphdmEvbGFuZy9TdHJpbmc7WwAHZW5jb2RlZHQAAltCTAAGZm9ybWF0cQB+AAFMAAR0eXBldAAbTGphdmEvc2VjdXJpdHkvS2V5UmVwJFR5cGU7eHB0AANERVN1cgACW0Ks8xf4BghU4AIAAHhwAAAACIOtOG7vg9nWdAADUkFXfnIAGWphdmEuc2VjdXJpdHkuS2V5UmVwJFR5cGUAAAAAAAAAABIAAHhyAA5qYXZhLmxhbmcuRW51bQAAAAAAAAAAEgAAeHB0AAZTRUNSRVQ=','liferay.com','',0,0,0,1);
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
 (10159,10154,10158,'','2015-10-17 00:53:23','2015-10-17 00:53:23',10156,0,'','','',0,0,1,'2015-10-17 00:53:23','','','','','','','','','','','','','','',''),
 (10197,10154,10196,'','2015-10-17 00:53:25','2015-10-28 20:37:58',10156,0,'Admin','','Admin',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),
 (12502,10154,12501,'','2015-11-01 05:16:59','2015-11-01 05:16:59',10156,0,'Danielle','','Delgado Cabrera',0,0,1,'0085-01-03 00:00:00','','','','','','','','','','','','','Desarrollador web','',''),
 (12602,10154,12601,'','2015-11-01 05:52:43','2015-11-01 05:52:43',10156,0,'Danielle','','Delgado Cabrera',0,0,1,'0085-01-03 00:00:00','','','','','','','','','','','','','Desarrollador web','','');
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
 ('com.liferay.counter.model.Counter',12700),
 ('com.liferay.portal.model.Layout#10172#true',1),
 ('com.liferay.portal.model.Layout#10180#false',12),
 ('com.liferay.portal.model.Layout#10180#true',5),
 ('com.liferay.portal.model.Layout#10310#true',1),
 ('com.liferay.portal.model.Layout#10320#true',1),
 ('com.liferay.portal.model.Layout#10329#true',1),
 ('com.liferay.portal.model.Layout#10338#true',3),
 ('com.liferay.portal.model.Layout#10364#true',4),
 ('com.liferay.portal.model.Layout#12002#false',8),
 ('com.liferay.portal.model.Layout#12103#false',4),
 ('com.liferay.portal.model.Permission',100),
 ('com.liferay.portal.model.Resource',100),
 ('com.liferay.portal.model.ResourceAction',1400),
 ('com.liferay.portal.model.ResourcePermission',2600),
 ('com.liferay.portlet.documentlibrary.model.DLFileEntry',700),
 ('com.liferay.portlet.social.model.SocialActivity',400);
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
 ('c3652704-2455-4d42-866e-1a153d58f40b',10828,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('c6e71b63-55bc-4062-b703-9576103d6bbd',10845,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('297a9d85-89c2-40db-bf01-7af88312bffd',10856,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('3dd05b01-5418-4001-8aef-a94b0f01fd6b',10868,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[700]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[304]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8 8 8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('757596a4-1331-45c5-b0e8-428ed1031027',10880,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('a41fe743-adf4-4811-a91d-4f0ae8d1475c',10891,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('b5d7c407-5fd7-4882-9902-57ae43728754',10900,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('abc620f1-4cc4-4d28-9d75-d9205e9fd32a',10912,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('cdeb1376-05ab-4269-81d6-f4c27ed3da90',10923,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('822f04b4-9d17-4fd0-b9fc-05334d4ee868',10934,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('c1755955-9248-4412-a11e-dbf0c40a1983',10946,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('52344f38-935f-45b2-8ef6-a008f49396ac',10953,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('5edb873d-5b38-475f-b3f2-ed67c9fb0241',10962,10180,10154,10158,'','2015-10-17 02:51:08','2015-10-17 02:51:08','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('e53bed1c-a4a4-4baa-a6da-79283e9ab844',12183,10180,10154,10196,'Admin Admin','2015-10-30 20:24:07','2015-10-30 22:12:00','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"DublinCore_DESCRIPTION\">\n		<dynamic-content><![CDATA[Web]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_SAMPLES_PER_PIXEL\">\n		<dynamic-content><![CDATA[3]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[1667]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[1210]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_LAST_MODIFIED\">\n		<dynamic-content><![CDATA[2015-05-14T15:49:11]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"DublinCore_DATE\">\n		<dynamic-content><![CDATA[2015-05-14T15:48:36]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_ORIGINAL_DATE\">\n		<dynamic-content><![CDATA[2015-05-14T15:48:36]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_ORIENTATION\">\n		<dynamic-content><![CDATA[1]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_SOFTWARE\">\n		<dynamic-content><![CDATA[Adobe Photoshop CS5.1 Macintosh]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('304d2555-5378-4de6-95a8-93a309cca39a',12195,10180,10154,10196,'Admin Admin','2015-10-30 20:24:10','2015-10-30 22:11:51','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"DublinCore_DESCRIPTION\">\n		<dynamic-content><![CDATA[01]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[1666]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[1105]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"DublinCore_DATE\">\n		<dynamic-content><![CDATA[2014-07-01T18:53:37]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_ORIGINAL_DATE\">\n		<dynamic-content><![CDATA[2014-07-01T18:53:37]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_SOFTWARE\">\n		<dynamic-content><![CDATA[Adobe Illustrator CS5.1]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('b41c3530-8441-4237-83ec-4309aca1a99b',12199,10180,10154,10196,'Admin Admin','2015-10-30 20:24:10','2015-10-30 22:11:51','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"DublinCore_DESCRIPTION\">\n		<dynamic-content><![CDATA[Imprimir]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[1667]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[1155]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"DublinCore_DATE\">\n		<dynamic-content><![CDATA[2015-03-04T12:16:52]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_ORIGINAL_DATE\">\n		<dynamic-content><![CDATA[2015-03-04T12:16:52]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_SOFTWARE\">\n		<dynamic-content><![CDATA[Adobe Illustrator CS6 (Windows)]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('50df049c-83f7-4ee0-8210-acff447e853d',12203,10180,10154,10196,'Admin Admin','2015-10-30 20:24:11','2015-10-30 20:24:11','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"DublinCore_DESCRIPTION\">\n		<dynamic-content><![CDATA[05_v1]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[1667]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[1219]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"DublinCore_DATE\">\n		<dynamic-content><![CDATA[2015-03-02T08:39:29]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_ORIGINAL_DATE\">\n		<dynamic-content><![CDATA[2015-03-02T08:39:29]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_SOFTWARE\">\n		<dynamic-content><![CDATA[Adobe Illustrator CS6 (Windows)]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('01ad54f7-9b41-4432-ad8a-b6b2c0675b57',12211,10180,10154,10196,'Admin Admin','2015-10-30 20:59:29','2015-10-30 22:11:50','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"DublinCore_DESCRIPTION\">\n		<dynamic-content><![CDATA[05_v1]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[1667]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[1219]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"DublinCore_DATE\">\n		<dynamic-content><![CDATA[2015-03-02T08:39:29]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_ORIGINAL_DATE\">\n		<dynamic-content><![CDATA[2015-03-02T08:39:29]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_SOFTWARE\">\n		<dynamic-content><![CDATA[Adobe Illustrator CS6 (Windows)]]></dynamic-content>\n	</dynamic-element>\n</root>');
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
 ('243d826c-0867-4219-9486-daf4772c326f',10829,10099,10828,10308),
 ('efb8c2f2-42a2-4a98-ac24-95b4d56b88c2',10846,10099,10845,10308),
 ('d8e2fc10-77ec-425d-b866-3270c729764d',10857,10099,10856,10308),
 ('88f6f832-c8d6-466d-a97c-c8a3f261d2d5',10870,10099,10868,10308),
 ('3f8fd8b7-cd3b-495c-ba12-291a1bb25d68',10882,10099,10880,10308),
 ('2905682a-6357-4bf3-a073-0ac649f28f54',10892,10099,10891,10308),
 ('45508585-9788-477d-a275-54912b58ff3d',10901,10099,10900,10308),
 ('02d5f732-bdbb-4dba-9ada-5e8455453961',10913,10099,10912,10308),
 ('7e192b11-91b7-4e36-9b62-400d5b37b516',10925,10099,10923,10308),
 ('e5c8eea2-a63c-4da6-aa15-7f66025bf6a2',10935,10099,10934,10308),
 ('294da922-85d6-4b5f-863c-31fc57bfdcdc',10947,10099,10946,10308),
 ('6a8de9c9-968b-44e0-95d7-ed1745d7992d',10954,10099,10953,10308),
 ('4634c199-bb14-4b71-9c61-5804cb1823e3',10963,10099,10962,10308),
 ('48bb0287-c212-4d82-a7d5-2875de76ae05',12184,10099,12183,10308),
 ('796ef503-d3af-40de-be39-cfb8c6780d21',12196,10099,12195,10308),
 ('a26f9831-0857-49a0-b11a-ea5ff8649732',12200,10099,12199,10308),
 ('df0b4745-6850-462e-a436-b12c725ab081',12204,10099,12203,10308),
 ('994620a3-0674-465b-9a5a-1020c9fc2f09',12212,10099,12211,10308);
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
 ('440ea5ab-705e-46ff-800d-ee5d05c1675b',10297,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10089,'Learning Module Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2235\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3212\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4115\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5069\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('e6592a07-496e-44f1-ba05-35abc6287957',10298,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10089,'Marketing Campaign Theme Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2305\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3229\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4282\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('2890e92d-ada6-4a1f-bed1-e82204f79e50',10299,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10089,'Meeting Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date3054\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2217\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text4569\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text5638\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea6584\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea7502\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('82c4fe13-dd4e-4b9c-a800-c0b336987d2c',10301,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10089,'auto_52da58d9-4934-41e9-b0c1-93a05eb787ac','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Legal Contracts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date18949\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date20127\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select10264\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4893\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text14822\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text17700\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2087\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('03f392df-a0c9-4f58-947a-ee5e1d9ab75a',10303,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10089,'auto_1a001654-b4ef-4b79-907d-d4deb584a187','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"radio5547\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2033\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea2873\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('6ac5143d-18c0-4740-a80b-f9836e17f0df',10305,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10089,'auto_d82a8502-a237-4562-ae39-87a7ff4f0cea','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"text2082\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2979\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('8a18ad44-33ae-49d3-a040-3e8fc7d59080',10307,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10089,'auto_1e072ba2-f379-498c-b243-55c51e68994b','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2890\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3864\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4831\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5929\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text1993\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('9e8e2ae8-4017-4a97-8826-d167d544da39',10308,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10010,'TikaRawMetadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TikaRawMetadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TikaRawMetadata</Description></root>','<root available-locales=\"en_US\" default-locale=\"en_US\"><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element></root>','xml',0),
 ('867f9041-2067-4550-850f-c3c717060776',10399,10180,10154,10158,'','2015-10-17 00:53:32','2015-10-17 00:53:32',10097,'Contacts','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imService\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
INSERT INTO `ddmstructure` (`uuid_`,`structureId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`structureKey`,`name`,`description`,`xsd`,`storageType`,`type_`) VALUES 
 ('1c8bd47c-0be1-4ec6-81a7-32c2cc3fd094',10400,10180,10154,10158,'','2015-10-17 00:53:32','2015-10-17 00:53:32',10097,'Events','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"name\"><![CDATA[cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"name\"><![CDATA[description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[textarea]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"name\"><![CDATA[eventDate]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-date]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"name\"><![CDATA[eventName]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"name\"><![CDATA[eventTime]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"name\"><![CDATA[location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('ba6eabfd-4019-4b4b-8f11-68795648f3a4',10401,10180,10154,10158,'','2015-10-17 00:53:32','2015-10-17 00:53:32',10097,'Inventory','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"name\"><![CDATA[purchasePrice]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"name\"><![CDATA[quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('1d015494-e1c9-4e30-b35a-e4113809c637',10402,10180,10154,10158,'','2015-10-17 00:53:32','2015-10-17 00:53:32',10097,'Issues Tracking','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('41debab2-b87f-48e5-b16b-23574a467d82',10403,10180,10154,10158,'','2015-10-17 00:53:32','2015-10-17 00:53:32',10097,'Meeting Minutes','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('d70fc183-6c03-4691-a7b4-3273683950ce',10404,10180,10154,10158,'','2015-10-17 00:53:32','2015-10-17 00:53:32',10097,'To Do','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" type=\"ddm-integer\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"name\"><![CDATA[percentComplete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-integer]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
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
 (10833,10089,10814,10308),
 (10847,10089,10841,10308),
 (10859,10089,10851,10308),
 (10871,10089,10866,10308),
 (10883,10089,10878,10308),
 (10894,10089,10887,10308),
 (10902,10089,10898,10308),
 (10914,10089,10909,10308),
 (10926,10089,10921,10308),
 (10936,10089,10933,10308),
 (10948,10089,10945,10308),
 (10955,10089,10951,10308),
 (10964,10089,10961,10308),
 (12193,10089,12171,10308),
 (12197,10089,12194,10308),
 (12201,10089,12198,10308),
 (12205,10089,12202,10308),
 (12213,10089,12210,10308);
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
 ('464ac95f-7e83-4736-b805-a1d953c856cf',10801,10180,10154,10158,'',10158,'','2015-10-17 02:51:05','2015-10-17 02:51:05',10180,0,'301','jpg','image/jpeg','welcome_bg_3.jpg','','',0,'1.0',65684,0,0,0,0,0),
 ('1a176c36-2f0d-414f-b6b9-f16cb9a842c2',10809,10180,10154,10158,'',10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10180,0,'302','jpg','image/jpeg','welcome_bg_11.jpg','','',0,'1.0',43583,0,0,0,0,0),
 ('01f31f5e-7f1b-4032-a42f-b3587ba204d0',10818,10180,10154,10158,'',10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10180,0,'303','jpg','image/jpeg','welcome_bg_12.jpg','','',0,'1.0',46446,0,0,0,0,0),
 ('9b2b3a79-5209-4366-b0c6-59b231f7f1a8',10826,10180,10154,10158,'',10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10180,0,'304','png','image/png','welcome_bg_10.png','','',0,'1.0',27139,0,0,0,0,0),
 ('8c022275-0d47-4ba0-bb9f-fc7044c8aaf8',10837,10180,10154,10158,'',10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10180,0,'305','jpg','image/jpeg','welcome_bg_2.jpg','','',0,'1.0',72911,0,0,0,0,0),
 ('4c9b1230-26cb-4d59-b8fe-7072c08bc140',10849,10180,10154,10158,'',10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,'306','jpg','image/jpeg','welcome_bg_9.jpg','','',0,'1.0',50215,0,0,0,0,0),
 ('d6e03c87-b2ef-4fcd-a2ff-3145b3a53966',10861,10180,10154,10158,'',10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,'307','jpg','image/jpeg','welcome_bg_4.jpg','','',0,'1.0',62483,0,0,0,0,0),
 ('8f9fc194-1e53-4139-9382-932e2380a5c9',10873,10180,10154,10158,'',10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,'308','jpg','image/jpeg','welcome_bg_6.jpg','','',0,'1.0',45456,0,0,0,0,0),
 ('6c685d38-d4a4-436e-872e-37d52c7f3aef',10885,10180,10154,10158,'',10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,'309','jpg','image/jpeg','welcome_bg_7.jpg','','',0,'1.0',68705,0,0,0,0,0),
 ('91d6c9e5-6a84-42f4-b232-f7de6c223792',10897,10180,10154,10158,'',10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,'310','jpg','image/jpeg','welcome_bg_5.jpg','','',0,'1.0',40022,0,0,0,0,0),
 ('aa1bc47d-51f9-4327-8ee1-fa31e4073585',10910,10180,10154,10158,'',10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,'311','jpg','image/jpeg','welcome_bg_13.jpg','','',0,'1.0',33632,0,0,0,0,0),
 ('d13b586c-d260-4b0f-ab03-55256c2c4a5f',10922,10180,10154,10158,'',10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,'312','jpg','image/jpeg','welcome_bg_1.jpg','','',0,'1.0',54277,0,0,0,0,0),
 ('49d118dc-ea10-47be-b78e-ea3e739ce20f',10937,10180,10154,10158,'',10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,'313','jpg','image/jpeg','welcome_bg_8.jpg','','',0,'1.0',43664,0,0,0,0,0),
 ('ed92877a-69a9-4565-b476-b759096e28a1',12156,10180,10154,10196,'Admin Admin',10196,'Admin Admin','2015-10-30 20:24:02','2015-10-30 20:24:02',10180,12153,'601','jpg','image/jpeg','12153-NOC0JL.jpg','','',0,'1.0',489672,0,0,0,0,0),
 ('7bbde696-ab10-4f6e-9c03-0547e2238fb1',12166,10180,10154,10196,'Admin Admin',10196,'Admin Admin','2015-10-30 20:24:06','2015-10-30 20:24:06',10180,12153,'602','jpg','image/jpeg','meeting_09.jpg','','',0,'1.0',333339,15,0,0,0,0),
 ('40f97854-2859-466e-81c1-786cc13df97d',12175,10180,10154,10196,'Admin Admin',10196,'Admin Admin','2015-10-30 20:24:06','2015-10-30 20:24:06',10180,12153,'603','jpg','image/jpeg','business silhouettes-150-01.jpg','','',0,'1.0',334178,16,0,0,0,0),
 ('18393980-4f07-48b1-8e4b-9a5e44b0b05a',12185,10180,10154,10196,'Admin Admin',10196,'Admin Admin','2015-10-30 20:24:09','2015-10-30 20:59:29',10180,12153,'604','jpg','image/jpeg','04 150p-01.jpg','','',0,'1.1',240267,12,0,0,0,0);
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
 ('bdcf16cf-e995-4526-95fc-716c6daf95ec',10814,10828,10308,0,10801,10802),
 ('bf3baf6c-33b8-4d8d-9ddb-9a96e13df5b8',10841,10845,10308,0,10809,10810),
 ('6eb3e6aa-c59b-4f22-a9a3-c4c267f2ec68',10851,10856,10308,0,10818,10819),
 ('2060e5c6-169b-4e5b-ad77-256ea2c9f00e',10866,10868,10308,0,10826,10827),
 ('29abcc19-f303-4993-b9b1-82de9e480652',10878,10880,10308,0,10837,10838),
 ('71865218-2c16-4afb-9817-e6da3a94417e',10887,10891,10308,0,10849,10850),
 ('cb1468fe-454c-4448-a231-10fa07442d49',10898,10900,10308,0,10861,10862),
 ('b1c05687-75aa-4a2f-a53c-f43bdd7ceeb1',10909,10912,10308,0,10873,10874),
 ('b377989b-9629-4c5c-826b-c204bb0960a7',10921,10923,10308,0,10885,10886),
 ('60224255-b224-4537-9674-7411ab10c964',10933,10934,10308,0,10897,10899),
 ('943e5cc3-e8bb-437c-8826-082ebc10831f',10945,10946,10308,0,10910,10911),
 ('59b712fa-e226-4d56-b160-85c4bf04df89',10951,10953,10308,0,10922,10924),
 ('23d0244b-1793-429e-83de-2a8027eb809e',10961,10962,10308,0,10937,10938),
 ('d62d0220-38cd-4b67-916e-bcabae10e0bb',12171,12183,10308,0,12156,12157),
 ('a6e78bba-7928-4e11-a333-a91c3b314d65',12194,12195,10308,0,12166,12167),
 ('9ebea491-235c-44ea-8cf4-6fde8e5b5227',12198,12199,10308,0,12175,12176),
 ('c45808f0-5d47-4e85-ba54-d1255ef6bf25',12202,12203,10308,0,12185,12186),
 ('136a2074-fb63-461b-96b2-b10e662600df',12210,12211,10308,0,12185,12209);
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
 ('d54e2b05-559a-4daf-a22d-60eb39d0cc0e',0,0,0,0,'','2015-10-17 00:53:12','2015-10-17 00:53:12','Basic Document',''),
 ('52da58d9-4934-41e9-b0c1-93a05eb787ac',10300,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28','Contract','Legal Contracts'),
 ('1a001654-b4ef-4b79-907d-d4deb584a187',10302,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28','Marketing Banner','Marketing Banner'),
 ('d82a8502-a237-4562-ae39-87a7ff4f0cea',10304,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28','Online Training','Online Training'),
 ('1e072ba2-f379-498c-b243-55c51e68994b',10306,10192,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28','Sales Presentation','Sales Presentation');
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
INSERT INTO `dlfilerank` (`fileRankId`,`groupId`,`companyId`,`userId`,`createDate`,`fileEntryId`) VALUES 
 (12248,10180,10154,10196,'2015-11-01 02:09:24',12185),
 (12261,10180,10154,10196,'2015-10-31 02:32:02',12175),
 (12277,10180,10154,10196,'2015-10-31 02:32:02',12166),
 (12286,10180,10154,10158,'2015-11-01 05:09:54',12166),
 (12287,10180,10154,10158,'2015-11-01 05:09:54',12175),
 (12288,10180,10154,10158,'2015-11-01 05:09:54',12185);
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
 ('73a5c0c3-d007-4e15-9bc0-730a3dce41f9',10802,10180,10154,10158,'','2015-10-17 02:51:05','2015-10-17 02:51:05',10180,0,10801,'jpg','image/jpeg','welcome_bg_3.jpg','','','',0,'1.0',65684,0,10158,'','2015-10-17 02:51:05'),
 ('3abc0bbb-9043-4fff-96ea-2dade2b6a020',10810,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10180,0,10809,'jpg','image/jpeg','welcome_bg_11.jpg','','','',0,'1.0',43583,0,10158,'','2015-10-17 02:51:06'),
 ('2f47dab1-944d-45a7-a37b-a1354ece2ed4',10819,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10180,0,10818,'jpg','image/jpeg','welcome_bg_12.jpg','','','',0,'1.0',46446,0,10158,'','2015-10-17 02:51:06'),
 ('b39f2ccf-65fa-4dd5-b707-859c01f1eed5',10827,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10180,0,10826,'png','image/png','welcome_bg_10.png','','','',0,'1.0',27139,0,10158,'','2015-10-17 02:51:06'),
 ('0088c58d-89d2-4d5d-8540-336f7f4e6738',10838,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10180,0,10837,'jpg','image/jpeg','welcome_bg_2.jpg','','','',0,'1.0',72911,0,10158,'','2015-10-17 02:51:07'),
 ('09d163e2-180e-4228-bba5-22de731d9f1e',10850,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,10849,'jpg','image/jpeg','welcome_bg_9.jpg','','','',0,'1.0',50215,0,10158,'','2015-10-17 02:51:07'),
 ('645a7018-a66a-4e88-8cbd-087044687712',10862,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,10861,'jpg','image/jpeg','welcome_bg_4.jpg','','','',0,'1.0',62483,0,10158,'','2015-10-17 02:51:07'),
 ('b3bcc7e9-c097-4680-90a1-a88afa1a0f52',10874,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,10873,'jpg','image/jpeg','welcome_bg_6.jpg','','','',0,'1.0',45456,0,10158,'','2015-10-17 02:51:07'),
 ('aa095c7b-650b-47e3-a75c-d96d1a098072',10886,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,10885,'jpg','image/jpeg','welcome_bg_7.jpg','','','',0,'1.0',68705,0,10158,'','2015-10-17 02:51:07'),
 ('819732fc-3541-4cc0-b28d-656fc5b3b40f',10899,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,10897,'jpg','image/jpeg','welcome_bg_5.jpg','','','',0,'1.0',40022,0,10158,'','2015-10-17 02:51:07'),
 ('59c8d1b1-989e-4342-8850-749aaef6e42a',10911,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,10910,'jpg','image/jpeg','welcome_bg_13.jpg','','','',0,'1.0',33632,0,10158,'','2015-10-17 02:51:07'),
 ('36ec8fa7-536a-4f78-9b12-452fd43233df',10924,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,10922,'jpg','image/jpeg','welcome_bg_1.jpg','','','',0,'1.0',54277,0,10158,'','2015-10-17 02:51:07'),
 ('3d39860a-8500-4946-9086-1a9f77c6a6b4',10938,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10180,0,10937,'jpg','image/jpeg','welcome_bg_8.jpg','','','',0,'1.0',43664,0,10158,'','2015-10-17 02:51:07'),
 ('746cb4b0-e3ae-47f5-ab56-ca8dfb071cfb',12157,10180,10154,10196,'Admin Admin','2015-10-30 20:24:02','2015-10-30 20:24:02',10180,12153,12156,'jpg','image/jpeg','12153-NOC0JL.jpg','','','',0,'1.0',489672,0,10196,'Admin Admin','2015-10-30 20:24:03'),
 ('2c51db69-02d5-4047-bc0b-3444b114f57f',12167,10180,10154,10196,'Admin Admin','2015-10-30 20:24:06','2015-10-30 20:24:06',10180,12153,12166,'jpg','image/jpeg','meeting_09.jpg','','','',0,'1.0',333339,0,10196,'Admin Admin','2015-10-30 20:24:06'),
 ('81427077-ab27-470a-a837-b10722731568',12176,10180,10154,10196,'Admin Admin','2015-10-30 20:24:06','2015-10-30 20:24:06',10180,12153,12175,'jpg','image/jpeg','business silhouettes-150-01.jpg','','','',0,'1.0',334178,0,10196,'Admin Admin','2015-10-30 20:24:07'),
 ('b99d6f91-30de-4ec4-8f8c-de9482040a55',12186,10180,10154,10196,'Admin Admin','2015-10-30 20:24:09','2015-10-30 20:24:09',10180,12153,12185,'jpg','image/jpeg','04 150p-01.jpg','','','',0,'1.0',240267,0,10196,'Admin Admin','2015-10-30 20:24:09'),
 ('653fb0bd-fdc4-4737-b91d-9c60d88c4856',12209,10180,10154,10196,'Admin Admin','2015-10-30 20:59:29','2015-10-30 20:59:29',10180,12153,12185,'jpg','image/jpeg','04 150p-01.jpg','','','',0,'1.1',240267,0,10196,'Admin Admin','2015-10-30 20:59:29');
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
INSERT INTO `dlfolder` (`uuid_`,`folderId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`repositoryId`,`mountPoint`,`parentFolderId`,`name`,`description`,`lastPostDate`,`defaultFileEntryTypeId`,`overrideFileEntryTypes`) VALUES 
 ('57845f9e-6aee-4de1-b6f0-1171d2f6095f',12149,10180,10154,10196,'','2015-10-30 19:40:51','2015-10-30 19:40:51',10180,0,0,'Oferta Laboral','','2015-10-30 19:41:05',0,0),
 ('1d0fb38c-73b0-4abb-afa3-25fe34f85873',12151,10180,10154,10196,'','2015-10-30 19:41:05','2015-10-30 19:41:05',10180,0,12149,'Puestos','',NULL,0,0),
 ('ee90786e-2c49-428f-93b7-226dda2cc265',12153,10180,10154,10196,'','2015-10-30 20:22:15','2015-10-30 20:22:15',10180,0,0,'Slider','','2015-10-30 20:24:09',0,0);
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
 (10426,10154,'2015-10-17 00:59:16','2015-10-17 02:24:07',10415,'e47b3303-2921-4089-8e69-96e7b0c1b747',10180,0,'welcome_bg_3.jpg','','delete','file','1.0'),
 (10437,10154,'2015-10-17 00:59:17','2015-10-17 02:24:07',10429,'f2bf2e18-ef57-4fea-80da-5c6e051153e7',10180,0,'welcome_bg_11.jpg','','delete','file','1.0'),
 (10445,10154,'2015-10-17 00:59:17','2015-10-17 02:24:07',10438,'c26fb54f-f1cf-45b9-9ed6-909a53fa47ad',10180,0,'welcome_bg_12.jpg','','delete','file','1.0'),
 (10456,10154,'2015-10-17 00:59:17','2015-10-17 02:24:07',10449,'9e9fef17-6883-47fa-b318-c4e101b0925e',10180,0,'welcome_bg_10.png','','delete','file','1.0'),
 (10468,10154,'2015-10-17 00:59:17','2015-10-17 02:24:07',10457,'d1c4b3b1-3742-4e19-9749-fd97ea720158',10180,0,'welcome_bg_2.jpg','','delete','file','1.0'),
 (10476,10154,'2015-10-17 00:59:17','2015-10-17 02:24:08',10469,'f66087be-cb64-4a4b-bd86-bfc677b8c812',10180,0,'welcome_bg_9.jpg','','delete','file','1.0'),
 (10488,10154,'2015-10-17 00:59:18','2015-10-17 02:24:07',10481,'bfe7fb02-77ac-4ae9-8343-39d875f0c816',10180,0,'welcome_bg_4.jpg','','delete','file','1.0'),
 (10500,10154,'2015-10-17 00:59:18','2015-10-17 02:24:07',10490,'cbad5a2d-ec61-4149-bf30-f0ee6ba7c3e7',10180,0,'welcome_bg_6.jpg','','delete','file','1.0'),
 (10512,10154,'2015-10-17 00:59:18','2015-10-17 02:24:07',10502,'6de33b25-7b59-41fe-9040-d9713f14e354',10180,0,'welcome_bg_7.jpg','','delete','file','1.0'),
 (10524,10154,'2015-10-17 00:59:18','2015-10-17 02:24:07',10517,'d7f5d124-0d67-4230-86e8-1b3be8c2b05c',10180,0,'welcome_bg_5.jpg','','delete','file','1.0'),
 (10536,10154,'2015-10-17 00:59:18','2015-10-17 02:24:07',10529,'6d6fcf82-981d-467d-870b-174014b6d6ae',10180,0,'welcome_bg_13.jpg','','delete','file','1.0'),
 (10548,10154,'2015-10-17 00:59:18','2015-10-17 02:23:24',10541,'8532a245-d9c2-49f6-bc42-18891d17dfe6',10180,0,'welcome_bg_1.jpg','','delete','file','1.0'),
 (10560,10154,'2015-10-17 00:59:18','2015-10-17 02:24:08',10553,'88acc179-4412-44ce-96d5-19df97245400',10180,0,'welcome_bg_8.jpg','','delete','file','1.0'),
 (10808,10154,'2015-10-17 02:51:05','2015-10-17 02:51:05',10801,'464ac95f-7e83-4736-b805-a1d953c856cf',10180,0,'welcome_bg_3.jpg','','add','file','1.0'),
 (10817,10154,'2015-10-17 02:51:06','2015-10-17 02:51:06',10809,'1a176c36-2f0d-414f-b6b9-f16cb9a842c2',10180,0,'welcome_bg_11.jpg','','add','file','1.0'),
 (10825,10154,'2015-10-17 02:51:06','2015-10-17 02:51:06',10818,'01f31f5e-7f1b-4032-a42f-b3587ba204d0',10180,0,'welcome_bg_12.jpg','','add','file','1.0'),
 (10836,10154,'2015-10-17 02:51:06','2015-10-17 02:51:06',10826,'9b2b3a79-5209-4366-b0c6-59b231f7f1a8',10180,0,'welcome_bg_10.png','','add','file','1.0'),
 (10848,10154,'2015-10-17 02:51:07','2015-10-17 02:51:07',10837,'8c022275-0d47-4ba0-bb9f-fc7044c8aaf8',10180,0,'welcome_bg_2.jpg','','add','file','1.0'),
 (10860,10154,'2015-10-17 02:51:07','2015-10-17 02:51:07',10849,'4c9b1230-26cb-4d59-b8fe-7072c08bc140',10180,0,'welcome_bg_9.jpg','','add','file','1.0'),
 (10872,10154,'2015-10-17 02:51:07','2015-10-17 02:51:07',10861,'d6e03c87-b2ef-4fcd-a2ff-3145b3a53966',10180,0,'welcome_bg_4.jpg','','add','file','1.0'),
 (10884,10154,'2015-10-17 02:51:07','2015-10-17 02:51:07',10873,'8f9fc194-1e53-4139-9382-932e2380a5c9',10180,0,'welcome_bg_6.jpg','','add','file','1.0'),
 (10896,10154,'2015-10-17 02:51:07','2015-10-17 02:51:07',10885,'6c685d38-d4a4-436e-872e-37d52c7f3aef',10180,0,'welcome_bg_7.jpg','','add','file','1.0'),
 (10908,10154,'2015-10-17 02:51:07','2015-10-17 02:51:07',10897,'91d6c9e5-6a84-42f4-b232-f7de6c223792',10180,0,'welcome_bg_5.jpg','','add','file','1.0'),
 (10920,10154,'2015-10-17 02:51:07','2015-10-17 02:51:07',10910,'aa1bc47d-51f9-4327-8ee1-fa31e4073585',10180,0,'welcome_bg_13.jpg','','add','file','1.0'),
 (10932,10154,'2015-10-17 02:51:07','2015-10-17 02:51:07',10922,'d13b586c-d260-4b0f-ab03-55256c2c4a5f',10180,0,'welcome_bg_1.jpg','','add','file','1.0'),
 (10944,10154,'2015-10-17 02:51:07','2015-10-17 02:51:07',10937,'49d118dc-ea10-47be-b78e-ea3e739ce20f',10180,0,'welcome_bg_8.jpg','','add','file','1.0'),
 (12150,10154,'2015-10-30 19:40:51','2015-10-30 19:40:51',12149,'57845f9e-6aee-4de1-b6f0-1171d2f6095f',10180,0,'Oferta Laboral','','add','folder','-1'),
 (12152,10154,'2015-10-30 19:41:05','2015-10-30 19:41:05',12151,'1d0fb38c-73b0-4abb-afa3-25fe34f85873',10180,12149,'Puestos','','add','folder','-1'),
 (12154,10154,'2015-10-30 20:22:15','2015-10-30 20:22:15',12153,'ee90786e-2c49-428f-93b7-226dda2cc265',10180,0,'Slider','','add','folder','-1'),
 (12165,10154,'2015-10-30 20:24:04','2015-10-30 20:24:04',12156,'ed92877a-69a9-4565-b476-b759096e28a1',10180,12153,'12153-NOC0JL.jpg','','add','file','1.0'),
 (12174,10154,'2015-10-30 20:24:06','2015-10-30 20:24:06',12166,'7bbde696-ab10-4f6e-9c03-0547e2238fb1',10180,12153,'meeting_09.jpg','','add','file','1.0'),
 (12182,10154,'2015-10-30 20:24:07','2015-10-30 20:24:07',12175,'40f97854-2859-466e-81c1-786cc13df97d',10180,12153,'business silhouettes-150-01.jpg','','add','file','1.0'),
 (12192,10154,'2015-10-30 20:24:09','2015-10-30 20:59:29',12185,'18393980-4f07-48b1-8e4b-9a5e44b0b05a',10180,12153,'04 150p-01.jpg','','update','file','1.1');
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
 (10413,10154,10412,'client-id',15,'',''),
 (11704,10154,11703,'DNI',15,'','height=105\nwidth=450\n');
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
 (11877,10154,11703,10196),
 (12507,10154,11703,12501),
 (12607,10154,11703,12601);
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
 (12025,10154,10002,'CUSTOM_FIELDS'),
 (11703,10154,10005,'CUSTOM_FIELDS'),
 (10412,10154,10005,'MP');
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
 (11878,10154,11703,11704,11877,10005,10196,''),
 (12508,10154,11703,11704,12507,10005,12501,'98765432'),
 (12608,10154,11703,11704,12607,10005,12601,'98765431');
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
 (11808,10154,10196,10003,11807,0,0,'Desarrollo Fabrica LFR_ORGANIZATION','',3,'','/desarrollo-fabrica',0,1),
 (11816,10154,10196,10003,11815,0,0,'MAPFRE LFR_ORGANIZATION','',3,'','/mapfre',0,1),
 (11833,10154,10196,10003,11832,0,0,'Desarrollo BBVA LFR_ORGANIZATION','',3,'','/desarrollo-bbva',0,1),
 (11840,10154,10196,10003,11839,0,0,'CLARO LFR_ORGANIZATION','',3,'','/claro-peru',0,1),
 (11853,10154,10196,10003,11852,0,0,'CLARO PERU LFR_ORGANIZATION','',3,'','/claro-peru1',0,1),
 (11860,10154,10196,10003,11859,0,0,'GERENTES LFR_ORGANIZATION','',3,'','/gerentes',0,1),
 (11866,10154,10196,10003,11865,0,0,'CAPITAL HUMANO LFR_ORGANIZATION','',3,'','/capital-humano',0,1),
 (11872,10154,10196,10003,11871,0,0,'SOPORTE TECNICO LFR_ORGANIZATION','',3,'','/soporte-tecnico',0,1),
 (12002,10154,10196,10001,12002,0,0,'Portal de Gerencia','Portal de Gerencia para gestionar las solicitudes de reclutamiento, evolución de desarrollo humano y capacitaciones.',1,'mergeGuestPublicPages=false\n','/portal-de-gerancia',1,1),
 (12103,10154,10196,10001,12103,0,0,'Portal del Recurso Humano','Portal para el trabajador o colaborador',1,'','/portal-del-recurso-humano',1,1),
 (12503,10154,12501,10005,12501,0,0,'12501','',0,'','/delgadodcp',0,1),
 (12603,10154,12601,10005,12601,0,0,'12601','',0,'','/delgadodcp2',0,1);
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
INSERT INTO `image` (`imageId`,`modifiedDate`,`text_`,`type_`,`height`,`width`,`size_`) VALUES 
 (11217,'2015-10-30 16:19:39','','jpg',38,200,16075);
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
 ('396f7ad0-c73c-446f-9841-dcf8ea53dea7',12227,12228,10180,10154,10196,'Admin Admin','2015-10-30 21:22:45','2015-10-30 21:24:50',0,0,'12226',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Trabajar en equipo</Title></root>','trabajar-en-equipo','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<dynamic-element instance-id=\"O10QdHSI\" name=\"imagen\" type=\"document_library\" index-type=\"\">\n		<dynamic-content><![CDATA[/documents/10180/12153/04+150p-01.jpg/18393980-4f07-48b1-8e4b-9a5e44b0b05a?t=1446238769000]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"QwG497eg\" name=\"titulo\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Trabajo en equipo</p>\n]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"RqtS6x6g\" name=\"descripcion\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	<span style=\"line-height: 16.8px;\">En Hitss se trabaj en equipo para que puedas alinear a tus objetivos profesionales.</span></p>\n]]></dynamic-content>\n	</dynamic-element>\n</root>','general','12219','12223','','2015-10-30 21:22:00',NULL,NULL,1,0,12231,'',0,10196,'Admin Admin','2015-10-30 21:24:50'),
 ('c36a1513-3988-4318-b444-688459db5a63',12237,12228,10180,10154,10196,'Admin Admin','2015-10-30 21:25:23','2015-10-30 21:25:23',0,0,'12226',1.1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Trabajar en equipo</Title></root>','trabajar-en-equipo','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<dynamic-element instance-id=\"O10QdHSI\" name=\"imagen\" type=\"document_library\" index-type=\"\">\n		<dynamic-content><![CDATA[/documents/10180/12153/04+150p-01.jpg/18393980-4f07-48b1-8e4b-9a5e44b0b05a?t=1446238769000]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"QwG497eg\" name=\"titulo\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Trabajo en equipo</p>\n]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"RqtS6x6g\" name=\"descripcion\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	<span style=\"line-height: 16.8px;\">En Hitss se trabaj en equipo para que puedas alinear a tus objetivos profesionales.</span></p>\n]]></dynamic-content>\n	</dynamic-element>\n</root>','general','12219','12223','','2015-10-30 21:22:00',NULL,NULL,1,0,12231,'',0,10196,'Admin Admin','2015-10-30 21:25:23'),
 ('d881962e-4e29-4202-a91d-1709287b2901',12244,12228,10180,10154,10196,'Admin Admin','2015-10-30 21:33:51','2015-10-30 21:42:35',0,0,'12226',1.2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Trabajar en equipo</Title></root>','trabajar-en-equipo','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<dynamic-element instance-id=\"O10QdHSI\" name=\"imagen\" type=\"document_library\" index-type=\"\">\n		<dynamic-content><![CDATA[/documents/10180/12153/04+150p-01.jpg/18393980-4f07-48b1-8e4b-9a5e44b0b05a?t=1446238769000]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"QwG497eg\" name=\"titulo\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Trabajo en equipo</p>\n]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"RqtS6x6g\" name=\"descripcion\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	<span style=\"line-height: 16.8px;\">En Hitss se trabaj en equipo para que puedas alinear a tus objetivos profesionales.</span></p>\n]]></dynamic-content>\n	</dynamic-element>\n</root>','general','12219','12223','','2015-10-30 21:22:00',NULL,NULL,1,0,12231,'',0,10196,'Admin Admin','2015-10-30 21:42:35'),
 ('601a3bc3-4d51-449c-8bb6-18f36f6052f4',12250,12251,10180,10154,10196,'Admin Admin','2015-10-30 21:57:05','2015-10-30 21:57:05',0,0,'12249',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Personal Destacado</Title></root>','personal-destacado','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<dynamic-element instance-id=\"9cAtrhA7\" name=\"imagen\" type=\"document_library\" index-type=\"\">\n		<dynamic-content><![CDATA[/documents/10180/12153/business+silhouettes-150-01.jpg/40f97854-2859-466e-81c1-786cc13df97d?t=1446236646000]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"EtyO9rnW\" name=\"titulo\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Personal Destacado</p>\n]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"DQbd7Ihs\" name=\"descripcion\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	El personal que trabaja Hitss es destacado para su vida profesional con las mayores exigencias en el munod empresarial.</p>\n]]></dynamic-content>\n	</dynamic-element>\n</root>','general','12219','12223','','2015-10-30 21:55:00',NULL,NULL,1,0,12252,'',0,10196,'Admin Admin','2015-10-30 21:57:05'),
 ('4483f0e5-401c-415c-bc29-bef31fcf3491',12263,12264,10180,10154,10196,'Admin Admin','2015-10-30 22:02:39','2015-10-30 22:02:39',0,0,'12262',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Trabajos de Exigencia</Title></root>','trabajos-de-exigencia','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<dynamic-element instance-id=\"ZzNl0Qxr\" name=\"imagen\" type=\"document_library\" index-type=\"\">\n		<dynamic-content><![CDATA[/documents/10180/12153/meeting_09.jpg/7bbde696-ab10-4f6e-9c03-0547e2238fb1?t=1446236646000]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"nMm1WKdz\" name=\"titulo\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Trabajos de Exigencia</p>\n]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"llglFiy3\" name=\"descripcion\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Nuestro personal trabaja en el mejor ambiente posible para el mejor desenvolvimiento&nbsp;para nuestro clientes.</p>\n]]></dynamic-content>\n	</dynamic-element>\n</root>','general','12219','12223','','2015-10-30 22:00:00',NULL,NULL,1,0,12265,'',0,10196,'Admin Admin','2015-10-30 22:02:39'),
 ('65324482-64ed-4186-bf34-ae5f8ff7a2dc',12279,12228,10180,10154,10196,'Admin Admin','2015-10-30 22:10:05','2015-10-30 22:10:05',0,0,'12226',1.3,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Trabajar en equipo</Title></root>','trabajar-en-equipo','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<dynamic-element instance-id=\"O10QdHSI\" name=\"imagen\" type=\"document_library\" index-type=\"\">\n		<dynamic-content><![CDATA[/documents/10180/12153/04+150p-01.jpg/18393980-4f07-48b1-8e4b-9a5e44b0b05a?t=1446238769000]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"QwG497eg\" name=\"titulo\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Trabajo en equipo</p>\n]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"RqtS6x6g\" name=\"descripcion\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	<span style=\"line-height: 16.8px;\">En Hitss se trabaj en equipo para que puedas alinear a tus objetivos profesionales.</span></p>\n]]></dynamic-content>\n	</dynamic-element>\n</root>','general','12219','12223','','2015-10-30 21:22:00',NULL,NULL,1,0,12231,'',0,10196,'Admin Admin','2015-10-30 22:10:05'),
 ('b1eed78e-8272-427c-a38b-dea429074f21',12281,12251,10180,10154,10196,'Admin Admin','2015-10-30 22:10:15','2015-10-30 22:10:15',0,0,'12249',1.1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Personal Destacado</Title></root>','personal-destacado','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<dynamic-element instance-id=\"9cAtrhA7\" name=\"imagen\" type=\"document_library\" index-type=\"\">\n		<dynamic-content><![CDATA[/documents/10180/12153/business+silhouettes-150-01.jpg/40f97854-2859-466e-81c1-786cc13df97d?t=1446236646000]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"EtyO9rnW\" name=\"titulo\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Personal Destacado</p>\n]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"DQbd7Ihs\" name=\"descripcion\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	El personal que trabaja Hitss es destacado para su vida profesional con las mayores exigencias en el munod empresarial.</p>\n]]></dynamic-content>\n	</dynamic-element>\n</root>','general','12219','12223','','2015-10-30 21:55:00',NULL,NULL,1,0,12252,'',0,10196,'Admin Admin','2015-10-30 22:10:15'),
 ('5713c3cc-26e6-41e1-bd71-9a7e569eb949',12283,12264,10180,10154,10196,'Admin Admin','2015-10-30 22:10:23','2015-10-30 22:10:23',0,0,'12262',1.1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Trabajos de Exigencia</Title></root>','trabajos-de-exigencia','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<dynamic-element instance-id=\"ZzNl0Qxr\" name=\"imagen\" type=\"document_library\" index-type=\"\">\n		<dynamic-content><![CDATA[/documents/10180/12153/meeting_09.jpg/7bbde696-ab10-4f6e-9c03-0547e2238fb1?t=1446236646000]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"nMm1WKdz\" name=\"titulo\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Trabajos de Exigencia</p>\n]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"llglFiy3\" name=\"descripcion\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Nuestro personal trabaja en el mejor ambiente posible para el mejor desenvolvimiento&nbsp;para nuestro clientes.</p>\n]]></dynamic-content>\n	</dynamic-element>\n</root>','general','12219','12223','','2015-10-30 22:00:00',NULL,NULL,1,0,12265,'',0,10196,'Admin Admin','2015-10-30 22:10:23'),
 ('e3038694-5888-4461-befb-cec2187d07e6',12301,12228,10180,10154,10196,'Admin Admin','2015-10-31 00:59:11','2015-10-31 00:59:11',0,0,'12226',1.4,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Trabajar en equipo</Title></root>','trabajar-en-equipo','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<dynamic-element instance-id=\"O10QdHSI\" name=\"imagen\" type=\"document_library\" index-type=\"\">\n		<dynamic-content><![CDATA[/documents/10180/12153/04+150p-01.jpg/18393980-4f07-48b1-8e4b-9a5e44b0b05a?t=1446238769000]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"QwG497eg\" name=\"titulo\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Trabajo en equipo</p>\n]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"RqtS6x6g\" name=\"descripcion\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	<span style=\"line-height: 16.8px;\">En Hitss se trabaj en equipo para que puedas alinear a tus objetivos profesionales.</span></p>\n]]></dynamic-content>\n	</dynamic-element>\n</root>','general','12219','12223','','2015-10-30 21:22:00',NULL,NULL,1,0,12231,'',0,10196,'Admin Admin','2015-10-31 00:59:11'),
 ('437f281d-8b02-4bcb-83bb-628c0ff9afef',12303,12251,10180,10154,10196,'Admin Admin','2015-10-31 00:59:40','2015-10-31 00:59:40',0,0,'12249',1.2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Personal Destacado</Title></root>','personal-destacado','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<dynamic-element instance-id=\"9cAtrhA7\" name=\"imagen\" type=\"document_library\" index-type=\"\">\n		<dynamic-content><![CDATA[/documents/10180/12153/business+silhouettes-150-01.jpg/40f97854-2859-466e-81c1-786cc13df97d?t=1446236646000]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"EtyO9rnW\" name=\"titulo\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Personal Destacado</p>\n]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"DQbd7Ihs\" name=\"descripcion\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	El personal que trabaja Hitss es destacado para su vida profesional con las mayores exigencias en el munod empresarial.</p>\n]]></dynamic-content>\n	</dynamic-element>\n</root>','general','12219','12223','','2015-10-30 21:55:00',NULL,NULL,1,0,12252,'',0,10196,'Admin Admin','2015-10-31 00:59:40'),
 ('7413961e-f4ec-40e7-9bd4-03f4a904f822',12305,12264,10180,10154,10196,'Admin Admin','2015-10-31 01:00:06','2015-10-31 01:00:06',0,0,'12262',1.2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Trabajos de Exigencia</Title></root>','trabajos-de-exigencia','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<dynamic-element instance-id=\"ZzNl0Qxr\" name=\"imagen\" type=\"document_library\" index-type=\"\">\n		<dynamic-content><![CDATA[/documents/10180/12153/meeting_09.jpg/7bbde696-ab10-4f6e-9c03-0547e2238fb1?t=1446236646000]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"nMm1WKdz\" name=\"titulo\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Trabajos de Exigencia</p>\n]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"llglFiy3\" name=\"descripcion\" type=\"text_area\" index-type=\"\">\n		<dynamic-content><![CDATA[<p>\n	Nuestro personal trabaja en el mejor ambiente posible para el mejor desenvolvimiento&nbsp;para nuestro clientes.</p>\n]]></dynamic-content>\n	</dynamic-element>\n</root>','general','12219','12223','','2015-10-30 22:00:00',NULL,NULL,1,0,12265,'',0,10196,'Admin Admin','2015-10-31 01:00:06');
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
INSERT INTO `journalarticleimage` (`articleImageId`,`groupId`,`articleId`,`version`,`elInstanceId`,`elName`,`languageId`,`tempImage`) VALUES 
 (12229,10180,'12226',1,'O10QdHSI','imagen','',0),
 (12230,10180,'12226',1,'O10QdHSI','imagen','_es_ES',0);
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
 ('a9ddd391-5cb5-4cc1-b80f-fc2a487f611d',12228,10180,'12226'),
 ('79d1a133-fb57-4325-88aa-9bc23d07abbb',12251,10180,'12249'),
 ('27d1a306-bc97-4ac9-a1e7-3dda95e9b968',12264,10180,'12262');
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
 ('d597167a-dcdd-4bfe-92c4-fef112595627',10587,10180,10154,10158,'','2015-10-17 00:59:19','2015-10-17 00:59:19','10586','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome Content Structure</Name></root>','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"page-title\" type=\"text\" index-type=\"\" repeatable=\"false\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Sub Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element name=\"links\" type=\"text\" index-type=\"\" repeatable=\"true\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Link Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n		<dynamic-element name=\"bg-image\" type=\"document_library\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Background Image]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"action-link-url\" type=\"text\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Call to Action URL]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n	</dynamic-element>\n</root>'),
 ('cb9f4781-2e6c-4bb9-a4c8-ffe1e7b06156',10966,10180,10154,10158,'','2015-10-17 02:51:08','2015-10-17 02:51:08','10965','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome Content Structure</Name></root>','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"page-title\" type=\"text\" index-type=\"\" repeatable=\"false\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Sub Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element name=\"links\" type=\"text\" index-type=\"\" repeatable=\"true\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Link Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n		<dynamic-element name=\"bg-image\" type=\"document_library\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Background Image]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"action-link-url\" type=\"text\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Call to Action URL]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n	</dynamic-element>\n</root>'),
 ('7d9b58fd-3468-49f3-a531-a1e9e78c8134',12220,10180,10154,10196,'Admin Admin','2015-10-30 21:03:32','2015-10-30 21:23:40','12219','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">SlideEstrucutra</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">Estructura de cada slide</Description></root>','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"imagen\" type=\"document_library\" index-type=\"\" repeatable=\"false\"/>\n	<dynamic-element name=\"titulo\" type=\"text_area\" index-type=\"\" repeatable=\"false\"/>\n	<dynamic-element name=\"descripcion\" type=\"text_area\" index-type=\"\" repeatable=\"false\"/>\n</root>');
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
 ('0d129b89-b21c-4e5e-adb6-0632d33104ab',10589,10180,10154,10158,'','2015-10-17 00:59:19','2015-10-17 00:59:19','10588','10586','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome Content Template</Name></root>','','<div class=\"navigation-wrapper\">\n	<header class=\"content-head content-head-liferay-portal\">\n		<hgroup>\n			<h1>$page-title.data</h1>\n\n			<hr />\n		</hgroup>\n\n		<nav>\n			<ul id=\"contentNav\">\n				#foreach($link in $links.siblings)\n					#if($velocityCount == 1)\n						<li class=\"selected\"><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#else\n						<li><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#end\n				#end\n			</ul>\n		</nav>\n	</header>\n\n	<div class=\"content-area-wrapper\">\n		#foreach($link in $links.siblings)\n			#if($velocityCount == 1)\n				<style type=\"text/css\">\n					.content-area {\n						background: url($link.bg-image.data) 100% 0 no-repeat;\n					}\n				</style>\n\n				<div class=\"content-area selected\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#else\n				<div class=\"content-area\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#end\n		#end\n	</div>\n</div>\n\n<script charset=\"utf-8\" type=\"text/javascript\">\n	AUI().ready(\n		\'aui-base\',\n		function(A) {\n			var hash = null;\n\n			var selectContent = function(href) {\n				var div = A.one(href);\n\n				if (div) {\n					div.radioClass(\'selected\');\n\n					div.setStyle(\'background\', \'url(\' + div.attr(\'data-bannerImage\')+\') 100% 0 no-repeat\');\n\n					hash = href;\n				}\n			};\n\n			var selectNavItem = function(hash) {\n				if (hash) {\n					A.one(\'#contentNav a[href$=\"\'+ hash +\'\"]\').ancestor().radioClass(\'selected\');\n				}\n			};\n\n			var select = function(hash) {\n				selectContent(hash);\n				selectNavItem(hash);\n			};\n\n			var currentHash = location.hash;\n\n			if (currentHash) {\n				select(currentHash);\n			}\n\n			setInterval(\n				function() {\n					var currentHash = location.hash;\n\n					if (currentHash != hash) {\n						select(currentHash);\n					}\n				},\n				200\n			);\n\n			A.one(\'#contentNav\').delegate(\n				\'click\',\n				function(event) {\n					var a = event.currentTarget;\n\n					a.ancestor().radioClass(\'selected\');\n\n					selectContent(a.attr(\'hash\'));\n				},\n				\'a\'\n			);\n		}\n	);\n</script>','vm',0,0,10590,''),
 ('fdd65fae-4463-46e9-a789-221fe549e684',10968,10180,10154,10158,'','2015-10-17 02:51:08','2015-10-17 02:51:08','10967','10965','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome Content Template</Name></root>','','<div class=\"navigation-wrapper\">\n	<header class=\"content-head content-head-liferay-portal\">\n		<hgroup>\n			<h1>$page-title.data</h1>\n\n			<hr />\n		</hgroup>\n\n		<nav>\n			<ul id=\"contentNav\">\n				#foreach($link in $links.siblings)\n					#if($velocityCount == 1)\n						<li class=\"selected\"><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#else\n						<li><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#end\n				#end\n			</ul>\n		</nav>\n	</header>\n\n	<div class=\"content-area-wrapper\">\n		#foreach($link in $links.siblings)\n			#if($velocityCount == 1)\n				<style type=\"text/css\">\n					.content-area {\n						background: url($link.bg-image.data) 100% 0 no-repeat;\n					}\n				</style>\n\n				<div class=\"content-area selected\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#else\n				<div class=\"content-area\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#end\n		#end\n	</div>\n</div>\n\n<script charset=\"utf-8\" type=\"text/javascript\">\n	AUI().ready(\n		\'aui-base\',\n		function(A) {\n			var hash = null;\n\n			var selectContent = function(href) {\n				var div = A.one(href);\n\n				if (div) {\n					div.radioClass(\'selected\');\n\n					div.setStyle(\'background\', \'url(\' + div.attr(\'data-bannerImage\')+\') 100% 0 no-repeat\');\n\n					hash = href;\n				}\n			};\n\n			var selectNavItem = function(hash) {\n				if (hash) {\n					A.one(\'#contentNav a[href$=\"\'+ hash +\'\"]\').ancestor().radioClass(\'selected\');\n				}\n			};\n\n			var select = function(hash) {\n				selectContent(hash);\n				selectNavItem(hash);\n			};\n\n			var currentHash = location.hash;\n\n			if (currentHash) {\n				select(currentHash);\n			}\n\n			setInterval(\n				function() {\n					var currentHash = location.hash;\n\n					if (currentHash != hash) {\n						select(currentHash);\n					}\n				},\n				200\n			);\n\n			A.one(\'#contentNav\').delegate(\n				\'click\',\n				function(event) {\n					var a = event.currentTarget;\n\n					a.ancestor().radioClass(\'selected\');\n\n					selectContent(a.attr(\'hash\'));\n				},\n				\'a\'\n			);\n		}\n	);\n</script>','vm',0,0,10969,''),
 ('feac1006-5ea1-4169-906b-2c6f2260c4b5',12224,10180,10154,10196,'Admin Admin','2015-10-30 21:18:58','2015-10-30 21:19:07','12223','12219','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">SliderPlantilla</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">Plantilla del slider</Description></root>','##\n## Velocity Transform Template\n##\n## All dynamic elements in a structure can be accessed as a Velocity variable.\n##\n## The given structure:\n##\n## <root>\n##   <dynamic-element name=\"main-text\" type=\"text_area\">\n##     <dynamic-element name=\"sub-image\" type=\"image\"></dynamic-element>\n##     <dynamic-element name=\"sub-text\" type=\"text\"></dynamic-element>\n##   </dynamic-element>\n##   <dynamic-element name=\"more-text\" type=\"text_area\"></dynamic-element>\n##   <dynamic-element name=\"ms-list\" type=\"multi-list\">\n##     <dynamic-element name=\"chocolate\" type=\"Chocolate\"></dynamic-element>\n##     <dynamic-element name=\"strawberry\" type=\"Strawberry\"></dynamic-element>\n##     <dynamic-element name=\"vanilla\" type=\"Vanilla\"></dynamic-element>\n##   </dynamic-element>\n## </root>\n##\n## The dynamic element \"main-text\" can be accessed in the following ways:\n##\n## $main-text.getName()     - The name \"main-text\"\n## $main-text.getData()     - The data in the article for main-text\n## $main-text.getType()     - The type \"text-area\"\n## $main-text.getChildren() - A collection with two nodes (sub-image and\n##                            sub-text) that can be used in the #foreach clause\n## $main-text.getSiblings() - A collection of elements with the name\n##                            \"main-text\". This will only return more than one\n##                            element if this element is repeatable.\n##\n## One special accessor exists for elements of type \"multi-list\":\n##\n## $ms-list.getOptions() - A collection with up to three string entries\n##                         (chocolate, strawberry, or vanilla) that can be used\n##                         in the #foreach clause\n##\n## Another special accessor exists for elements of type \"link_to_layout\":\n##\n## $linkToPage.getUrl() - The URL that links to the selected page in the current\n##                        site.\n##\n## The variable $journalTemplatesPath can be used to include another Journal\n## template, e.g. #parse (\"$journalTemplatesPath/LAYOUT-PARENT\")\n##\n## The variable $viewMode specifies which mode the article is being viewed in.\n## For example, if $viewMode evaluates to \"print\", that means the user clicked\n## the print icon to view this article.\n##\n\n\n\n\n\n <root>   \n   <imagen> $imagen.getData() </imagen >\n   <titulo> $titulo.getData() </titulo >\n   <descripcion > $titulo.descripcion () </descripcion >\n </root>','vm',1,0,12225,'');
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
 ('f04492fd-1664-4978-beef-db0abe3d30b0',10175,10172,10154,'2015-10-17 00:53:24','2015-10-17 00:53:24',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','',0,'/manage',0,0,'','','','','',0,'',0,''),
 ('16019802-e6c8-4f05-9886-ded064d71f30',10313,10310,10154,'2015-10-17 00:53:28','2015-10-17 00:53:28',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=148_INSTANCE_OKwS3DJ0EXrU,114,\ncolumn-1=33,\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('d2854ac1-87c8-4669-8315-d47fab799bc6',10323,10320,10154,'2015-10-17 00:53:28','2015-10-17 00:53:29',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','default-asset-publisher-portlet-id=101_INSTANCE_nt7RWYqA44Kr\nlayout-template-id=2_columns_ii\ncolumn-2=3,101_INSTANCE_nt7RWYqA44Kr,\ncolumn-1=141_INSTANCE_863gGTclRhgA,122_INSTANCE_c6uGD21sv1JM,\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('aaaf899a-15e6-46e7-a586-55394dd1ef0f',10332,10329,10154,'2015-10-17 00:53:29','2015-10-17 00:53:29',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_58Vahs0reWOt,141_INSTANCE_abhd4roPUkej,\ncolumn-1=36,\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('3ece518c-f302-4f6e-8401-97415fdf8d9c',10346,10338,10154,'2015-10-17 00:53:29','2015-10-17 00:53:30',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=3,59_INSTANCE_nvvgWqD3sfo6,180,\ncolumn-1=19,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('4b35533f-4da4-4779-afa9-7397d3f518e9',10352,10338,10154,'2015-10-17 00:53:30','2015-10-17 00:53:30',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_FxYEcNd7zgAB,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',1,'',0,''),
 ('dd53ac54-d478-4660-ae13-ed586cf0b404',10358,10338,10154,'2015-10-17 00:53:30','2015-10-17 00:53:30',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_6j3GnX55B4ht,148_INSTANCE_VBgKfrB0HRvm,\ncolumn-1=36,\n',0,'/wiki',0,0,'','','','','',2,'',0,''),
 ('7408110f-b60b-46b6-88ca-2dfab8ced1ea',10372,10364,10154,'2015-10-17 00:53:30','2015-10-17 00:53:31',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_i\ncolumn-2=3,82,101_INSTANCE_x8cUs30Rt1Jl,\ncolumn-1=116,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('e5449a29-6b04-4495-be4b-dde9576317a3',10380,10364,10154,'2015-10-17 00:53:31','2015-10-17 00:53:31',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',1,'',0,''),
 ('c0d29ea2-e527-4b65-a2ba-a41f9623b1a9',10386,10364,10154,'2015-10-17 00:53:31','2015-10-17 00:53:31',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_BqvtTOhj1POs,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',2,'',0,''),
 ('be1140a7-e6d2-4f79-a901-9e1b98c62e39',10392,10364,10154,'2015-10-17 00:53:32','2015-10-17 00:53:32',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=39_INSTANCE_4cWCrxSADso5,\ncolumn-1=39_INSTANCE_CNtVy1IPZHCG,\n',0,'/news',0,0,'','','','','',3,'',0,''),
 ('a16b3b2f-499a-41e3-a13e-d6301f129e85',11301,10180,10154,'2015-10-18 04:55:43','2015-11-01 05:16:39',0,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Inscripción</Name></root>','','','','','portlet','column-3-customizable=false\nsitemap-changefreq=daily\nlayout-template-id=REC\nshow-alternate-links=true\nsitemap-include=1\ncolumn-3=RegistrarUsuario_WAR_RegistrarUsuarioportlet\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',1,'/registro-perfil',0,0,'classic','','classic','','',1,'',0,''),
 ('752caf5f-7ed5-4833-813a-092d71ace341',11311,10180,10154,'2015-10-18 04:57:25','2015-10-30 16:15:47',0,5,9,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Porque Trabajar con Hitss</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/porque-trabajar-con-hitss',0,0,'','','','','',0,'',0,''),
 ('9d39690e-e5c8-4025-91c4-6df49f443bb6',11316,10180,10154,'2015-10-18 04:57:58','2015-10-30 16:16:10',0,6,9,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Noticias y Eventos</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/noticias-y-eventos',0,0,'','','','','',1,'',0,''),
 ('9149f855-75e6-42d5-8c96-ef8127d71184',11322,10180,10154,'2015-10-18 04:58:10','2015-10-18 05:01:41',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Mi Perfil</Name></root>','','','','','portlet','layout-template-id=REC\nshow-alternate-links=true\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',0,'/mi-perfil',0,0,'classic','','classic','','',0,'',0,''),
 ('943d830a-e4b4-4592-8118-291736a8f66e',11327,10180,10154,'2015-10-18 04:58:47','2015-10-18 04:59:00',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">CV</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\nshow-alternate-links=true\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',0,'/curriculum-vitae',0,0,'classic','','classic','','',1,'',0,''),
 ('6cfcb52e-aaea-41f0-bbe9-9a4157aa5d02',11332,10180,10154,'2015-10-18 04:59:13','2015-10-18 04:59:13',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Carrito Laboral</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/carrito-laboral',0,0,'','','','','',2,'',0,''),
 ('a6d7a707-9fb9-46ce-8ec2-dc6fd349d7d3',11337,10180,10154,'2015-10-18 05:00:05','2015-10-18 05:00:05',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Suscripciones</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/suscripciones',0,0,'','','','','',3,'',0,''),
 ('56a83f8b-b27a-441f-8f59-cc9f3a7bb873',11902,10180,10154,'2015-10-29 22:20:42','2015-10-30 16:16:07',0,7,10,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Ofertas Laborales</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/ofertas-laborales',0,0,'','','','','',0,'',0,''),
 ('7288d155-0c9c-4041-b486-4bfc5c3a4041',11907,10180,10154,'2015-10-29 22:21:19','2015-10-31 19:04:18',0,8,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Inicio</Name></root>','','','','','portlet','column-3-customizable=false\nsitemap-changefreq=daily\nshow-alternate-links=true\nlayout-template-id=REC\nsitemap-include=1\ncolumn-3=ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet,\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-4-customizable=false\ncolumn-1-customizable=false\ncolumn-2=BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet\ncolumn-1=SliderHitss_WAR_SliderHitssportlet,\n',1,'/inicio',0,0,'classic','','classic','','',0,'',0,''),
 ('e16dfa4c-983e-41b5-ae7d-3b0786a2cb4f',12026,12002,10154,NULL,'2015-10-31 19:03:03',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,es_ES,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">Home</Name><Name language-id=\"es_ES\">Panel</Name></root>','','','','','portlet','sitemap-changefreq=daily\nlayout-template-id=2_columns_i\nshow-alternate-links=true\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',0,'/gerencia/inicio',0,0,'classic','','classic','','',0,'',0,'7408110f-b60b-46b6-88ca-2dfab8ced1ea'),
 ('5c41c18d-d784-4634-8304-0cdaea043a1e',12027,12002,10154,NULL,'2015-10-31 03:10:17',0,2,6,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,es_ES,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">News</Name><Name language-id=\"es_ES\">Solicitudes</Name></root>','','','','','portlet','sitemap-changefreq=daily\nshow-alternate-links=true\nlayout-template-id=1_column\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-1-customizable=false\n',0,'/reclutamiento/solicitudes',0,0,'classic','','classic','','',0,'',0,'e5449a29-6b04-4495-be4b-dde9576317a3'),
 ('322288f0-7c68-4c56-bb3c-9c05a2270a69',12028,12002,10154,NULL,'2015-10-31 03:14:05',0,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,es_ES,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">Home</Name><Name language-id=\"es_ES\">Reportes</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\nshow-alternate-links=true\nsitemap-changefreq=daily\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',0,'/gerencia/reportes',0,0,'classic','','classic','','',2,'',0,'c0d29ea2-e527-4b65-a2ba-a41f9623b1a9'),
 ('a277fc0c-4125-4387-ae04-15cbc69a0513',12029,12002,10154,NULL,'2015-10-31 03:13:57',0,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,es_ES,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">Home</Name><Name language-id=\"es_ES\">Historial</Name></root>','','','','','portlet','sitemap-changefreq=daily\nlayout-template-id=2_columns_iii\nshow-alternate-links=true\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',0,'/gerencia/historial',0,0,'classic','','classic','','',1,'',0,'be1140a7-e6d2-4f79-a901-9e1b98c62e39'),
 ('27c7984d-5c5e-470a-8c7a-36de0b54eddd',12048,10180,10154,'2015-10-30 16:15:41','2015-10-30 16:17:00',0,9,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Conocenos</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/conocenos',0,0,'','','','','',3,'',0,''),
 ('3545d0cf-fc97-4cb0-831f-a808ac6baa0c',12054,10180,10154,'2015-10-30 16:16:03','2015-10-30 16:17:00',0,10,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Oportunidades</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/oportunidades',0,0,'','','','','',2,'',0,''),
 ('23dfeaf2-ead5-4520-91a1-9c196e661a00',12059,10180,10154,'2015-10-30 16:16:27','2015-10-30 16:16:27',0,11,10,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Ofertas Destacadas</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/ofertas-destacadas',0,0,'','','','','',1,'',0,''),
 ('d936dfcd-961e-4e9f-abdb-89ced2cc4531',12064,10180,10154,'2015-10-30 16:16:43','2015-10-30 16:16:43',0,12,10,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Ofertas màs buscadas</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/ofertas-mas-buscadas',0,0,'','','','','',2,'',0,''),
 ('1f2691b9-d1ac-497b-b8ea-30d7541ca8c7',12109,12103,10154,NULL,'2015-10-30 19:10:36',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_i\ncolumn-2=3,82,101_INSTANCE_x8cUs30Rt1Jl,\ncolumn-1=116,\n',0,'/home',0,0,'','','','','',0,'',0,'7408110f-b60b-46b6-88ca-2dfab8ced1ea'),
 ('af337309-cbec-4368-a301-06304d72f479',12110,12103,10154,NULL,'2015-10-30 19:10:36',0,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',1,'',0,'e5449a29-6b04-4495-be4b-dde9576317a3'),
 ('3575829d-9b7e-420d-8e3f-4ede916b0e05',12111,12103,10154,NULL,'2015-10-30 19:10:36',0,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_BqvtTOhj1POs,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',2,'',0,'c0d29ea2-e527-4b65-a2ba-a41f9623b1a9'),
 ('038b7897-b314-4579-a8cd-6ebdcc62264e',12112,12103,10154,NULL,'2015-10-30 19:10:36',0,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=39_INSTANCE_4cWCrxSADso5,\ncolumn-1=39_INSTANCE_CNtVy1IPZHCG,\n',0,'/news',0,0,'','','','','',3,'',0,'be1140a7-e6d2-4f79-a901-9e1b98c62e39'),
 ('22956f98-6b8d-4c44-b4e8-bbff470b50c4',12339,12002,10154,'2015-10-31 03:01:37','2015-10-31 03:09:12',0,6,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Reclutamiento</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/reclutamiento',0,0,'','','','','',1000004,'',0,''),
 ('3b19d279-97c1-4030-b23b-14c641890299',12344,12002,10154,'2015-10-31 03:01:48','2015-10-31 03:09:12',0,7,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Evaluacion</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/evaluacion',0,0,'','','','','',1000003,'',0,''),
 ('1dce3901-278f-4845-abca-c4edf0fc3332',12358,12002,10154,'2015-10-31 03:08:07','2015-10-31 03:10:03',0,8,7,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES,en_US,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">News</Name><Name language-id=\"es_ES\">Solicitudes</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\nshow-alternate-links=true\nsitemap-changefreq=daily\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',0,'/evaluacion/solicitudes',0,0,'classic','','classic','','',0,'',0,'');
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
 ('4d90611c-6f7e-4f0a-948f-b62941ad5f59',10309,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),
 ('25b0f1cc-4b3d-4c28-8f0d-44ef572dfdee',10319,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),
 ('bf22074e-be17-4b39-8d23-5efdec624f8f',10328,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1);
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
 (10173,10172,10154,'2015-10-17 00:53:24','2015-10-17 00:53:24',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10174,10172,10154,'2015-10-17 00:53:24','2015-10-17 00:53:24',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10181,10180,10154,'2015-10-17 00:53:24','2015-10-29 22:17:33',1,0,0,'Reclutamiento_WAR_Reclutamientotheme','01','mobile','01','',4,'','',0),
 (10182,10180,10154,'2015-10-17 00:53:24','2015-10-30 16:19:39',0,1,11217,'Reclutamiento_WAR_Reclutamientotheme','01','mobile','01','',9,'','',0),
 (10190,10189,10154,'2015-10-17 00:53:24','2015-10-17 00:53:24',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10191,10189,10154,'2015-10-17 00:53:24','2015-10-17 00:53:24',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10193,10192,10154,'2015-10-17 00:53:25','2015-10-17 00:53:25',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10194,10192,10154,'2015-10-17 00:53:25','2015-10-17 00:53:25',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10199,10198,10154,'2015-10-17 00:53:25','2015-10-29 21:45:36',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10200,10198,10154,'2015-10-17 00:53:25','2015-10-17 00:53:25',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10311,10310,10154,'2015-10-17 00:53:28','2015-10-17 00:53:28',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10312,10310,10154,'2015-10-17 00:53:28','2015-10-17 00:53:28',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10321,10320,10154,'2015-10-17 00:53:28','2015-10-17 00:53:28',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10322,10320,10154,'2015-10-17 00:53:28','2015-10-17 00:53:28',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10330,10329,10154,'2015-10-17 00:53:29','2015-10-17 00:53:29',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10331,10329,10154,'2015-10-17 00:53:29','2015-10-17 00:53:29',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10339,10338,10154,'2015-10-17 00:53:29','2015-10-17 00:53:30',1,0,0,'classic','01','mobile','01','',3,'','',0),
 (10340,10338,10154,'2015-10-17 00:53:29','2015-10-17 00:53:29',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10365,10364,10154,'2015-10-17 00:53:30','2015-10-17 00:53:32',1,0,0,'classic','01','mobile','01','',4,'','',0),
 (10366,10364,10154,'2015-10-17 00:53:30','2015-10-17 00:53:30',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (11809,11808,10154,'2015-10-28 20:21:59','2015-10-28 20:21:59',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (11810,11808,10154,'2015-10-28 20:21:59','2015-10-28 20:21:59',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (11817,11816,10154,'2015-10-28 20:30:16','2015-10-28 20:30:16',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (11818,11816,10154,'2015-10-28 20:30:16','2015-10-28 20:30:16',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (11834,11833,10154,'2015-10-28 20:33:15','2015-10-28 20:33:15',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (11835,11833,10154,'2015-10-28 20:33:15','2015-10-28 20:33:15',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (11841,11840,10154,'2015-10-28 20:34:51','2015-10-28 20:34:51',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (11842,11840,10154,'2015-10-28 20:34:51','2015-10-28 20:34:51',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (11854,11853,10154,'2015-10-28 20:36:26','2015-10-28 20:36:26',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (11855,11853,10154,'2015-10-28 20:36:26','2015-10-28 20:36:26',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (11861,11860,10154,'2015-10-28 20:36:47','2015-10-28 20:36:47',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (11862,11860,10154,'2015-10-28 20:36:47','2015-10-28 20:36:47',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (11867,11866,10154,'2015-10-28 20:37:05','2015-10-28 20:37:05',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (11868,11866,10154,'2015-10-28 20:37:05','2015-10-28 20:37:05',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (11873,11872,10154,'2015-10-28 20:37:15','2015-10-28 20:37:15',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (11874,11872,10154,'2015-10-28 20:37:15','2015-10-28 20:37:15',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (12003,12002,10154,'2015-10-30 15:20:53','2015-10-30 15:20:53',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (12004,12002,10154,'2015-10-30 15:20:53','2015-10-31 03:08:07',0,0,0,'Gerencia_WAR_Gerenciatheme','01','mobile','01','',7,'showSiteName=true\nlast-merge-time=1446260400600\n','0573fda5-03a4-445e-b2e1-a80b28854ea2',1),
 (12104,12103,10154,'2015-10-30 19:10:32','2015-10-30 19:10:32',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (12105,12103,10154,'2015-10-30 19:10:32','2015-10-30 19:10:36',0,0,0,'classic','01','mobile','01','',4,'last-merge-time=1446232236323\n','0573fda5-03a4-445e-b2e1-a80b28854ea2',1),
 (12504,12503,10154,'2015-11-01 05:16:59','2015-11-01 05:16:59',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (12505,12503,10154,'2015-11-01 05:16:59','2015-11-01 05:16:59',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (12604,12603,10154,'2015-11-01 05:52:43','2015-11-01 05:52:43',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (12605,12603,10154,'2015-11-01 05:52:43','2015-11-01 05:52:43',0,0,0,'classic','01','mobile','01','',0,'','',0);
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
 ('03a193f0-58b9-456f-b7a0-00c816ea306b',10337,10154,'2015-10-17 00:53:29','2015-10-17 00:53:30','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums, Calendar and Wiki','layoutsUpdateable=true\n',1),
 ('0573fda5-03a4-445e-b2e1-a80b28854ea2',10363,10154,'2015-10-17 00:53:30','2015-10-17 00:53:32','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents, Calendar and News','layoutsUpdateable=true\n',1);
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
INSERT INTO `marketplace_app` (`uuid_`,`appId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`remoteAppId`,`version`) VALUES 
 ('831fa3fa-4469-4b11-b8d3-82bda7168c14',11369,0,0,'','2015-10-18 07:35:47','2015-10-18 07:35:47',23132669,'1.0');
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
INSERT INTO `marketplace_module` (`uuid_`,`moduleId`,`appId`,`contextName`) VALUES 
 ('5d0d93c5-6eb8-4e61-a890-50e7adb0683c',11370,11369,'LinkedInSignIn-hook');
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
 (10807,10010,10801,10805),
 (10816,10010,10809,10813),
 (10824,10010,10818,10822),
 (10835,10010,10826,10832),
 (10844,10010,10837,10842),
 (10858,10010,10849,10854),
 (10869,10010,10861,10865),
 (10881,10010,10873,10877),
 (10895,10010,10885,10890),
 (10907,10010,10897,10905),
 (10919,10010,10910,10917),
 (10931,10010,10922,10929),
 (10943,10010,10937,10941),
 (11209,10013,11204,11207),
 (11305,10002,11301,11303),
 (11315,10002,11311,11313),
 (11320,10002,11316,11318),
 (11326,10002,11322,11324),
 (11331,10002,11327,11329),
 (11336,10002,11332,11334),
 (11341,10002,11337,11339),
 (11906,10002,11902,11904),
 (11911,10002,11907,11909),
 (12052,10002,12048,12050),
 (12058,10002,12054,12056),
 (12063,10002,12059,12061),
 (12068,10002,12064,12066),
 (12163,10010,12156,12161),
 (12173,10010,12166,12170),
 (12181,10010,12175,12179),
 (12191,10010,12185,12189),
 (12236,10108,12228,12234),
 (12258,10108,12251,12256),
 (12273,10108,12264,12271),
 (12343,10002,12339,12341),
 (12348,10002,12344,12346),
 (12362,10002,12358,12360);
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
 ('a3a95ede-2985-4797-8fb1-4c891696b9e7',10176,10172,10154,10158,'','2015-10-17 00:53:24','2015-10-17 00:53:24',10002,10175,-1,10177,10176,0,'10175','10175','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 00:53:24'),
 ('c751a7ed-6860-49b2-aea9-b98c9bcc3ae2',10314,10310,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10002,10313,-1,10315,10314,0,'10313','10313','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 00:53:28'),
 ('55588e96-3ca7-45c3-96cd-5f8657765e22',10324,10320,10154,10158,'','2015-10-17 00:53:28','2015-10-17 00:53:28',10002,10323,-1,10325,10324,0,'10323','10323','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 00:53:28'),
 ('33ffe477-4962-4357-87f5-354cb08369c6',10333,10329,10154,10158,'','2015-10-17 00:53:29','2015-10-17 00:53:29',10002,10332,-1,10334,10333,0,'10332','10332','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 00:53:29'),
 ('b4e8bb24-42d0-4ec0-892a-5b08575decaa',10347,10338,10154,10158,'','2015-10-17 00:53:29','2015-10-17 00:53:29',10002,10346,-1,10348,10347,0,'10346','10346','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 00:53:30'),
 ('580d4ce2-ca27-4d93-a91a-5ba6e035b9dd',10353,10338,10154,10158,'','2015-10-17 00:53:30','2015-10-17 00:53:30',10002,10352,-1,10354,10353,0,'10352','10352','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 00:53:30'),
 ('3655e83a-0735-4670-a024-f04012ac18aa',10359,10338,10154,10158,'','2015-10-17 00:53:30','2015-10-17 00:53:30',10002,10358,-1,10360,10359,0,'10358','10358','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 00:53:30'),
 ('54bc059b-44dd-4ae4-88be-8f830c0ddbfd',10373,10364,10154,10158,'','2015-10-17 00:53:31','2015-10-17 00:53:31',10002,10372,-1,10374,10373,0,'10372','10372','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 00:53:31'),
 ('982528cf-1176-44b2-8520-2f3bef2ff5be',10381,10364,10154,10158,'','2015-10-17 00:53:31','2015-10-17 00:53:31',10002,10380,-1,10382,10381,0,'10380','10380','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 00:53:31'),
 ('83130a39-dd4f-40bb-9167-c03adf9a697f',10387,10364,10154,10158,'','2015-10-17 00:53:31','2015-10-17 00:53:31',10002,10386,-1,10388,10387,0,'10386','10386','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 00:53:31'),
 ('e42a2fa3-e8d5-412c-9dd1-116bd143afbf',10393,10364,10154,10158,'','2015-10-17 00:53:32','2015-10-17 00:53:32',10002,10392,-1,10394,10393,0,'10392','10392','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 00:53:32'),
 ('35b8687f-542b-456f-8b1c-581a0c77be42',10804,10180,10154,10158,'','2015-10-17 02:51:05','2015-10-17 02:51:05',10010,10801,-1,10805,10804,0,'10801','10801','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:05'),
 ('530031a0-4f26-4fe6-9323-12514de5bcdc',10812,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10010,10809,-1,10813,10812,0,'10809','10809','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:06'),
 ('c018da58-a860-4ae2-94e6-94d01d6e584e',10821,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10010,10818,-1,10822,10821,0,'10818','10818','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:06'),
 ('a7af6b7e-ab1e-4b5f-a167-6afde7c20a2c',10831,10180,10154,10158,'','2015-10-17 02:51:06','2015-10-17 02:51:06',10010,10826,-1,10832,10831,0,'10826','10826','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:06'),
 ('e5723525-e63e-4947-8ea0-a04507ef3889',10840,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10837,-1,10842,10840,0,'10837','10837','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:07'),
 ('c360586c-1be8-4b4c-abfc-9cf91406c2f3',10853,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10849,-1,10854,10853,0,'10849','10849','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:07'),
 ('53324614-d5a2-4a11-af04-20c5096b150e',10864,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10861,-1,10865,10864,0,'10861','10861','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:07'),
 ('a7a9772e-66fd-403d-89d8-611ba6e6096c',10876,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10873,-1,10877,10876,0,'10873','10873','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:07'),
 ('18c224f6-685f-413b-8f1a-255cf24d20fe',10889,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10885,-1,10890,10889,0,'10885','10885','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:07'),
 ('43de5441-a520-4ce1-b434-58310dbcc0bf',10904,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10897,-1,10905,10904,0,'10897','10897','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:07'),
 ('143ee74a-9ed8-4614-a15a-42d1f5e27900',10916,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10910,-1,10917,10916,0,'10910','10910','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:07'),
 ('295402e8-6905-4933-8bd9-eb72d80d72a1',10928,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10922,-1,10929,10928,0,'10922','10922','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:07'),
 ('f54d79f0-2f8d-473a-90f2-15e83f36d648',10940,10180,10154,10158,'','2015-10-17 02:51:07','2015-10-17 02:51:07',10010,10937,-1,10941,10940,0,'10937','10937','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 02:51:07'),
 ('2b6a560a-64db-4ab7-9d9c-e71a9baa76b2',11206,10180,10154,10158,'','2015-10-17 21:48:58','2015-10-17 21:48:58',10013,11204,-1,11207,11206,0,'11204','11204','bbcode',0,1,0,0,0,0,10158,'','2015-10-17 21:48:58'),
 ('eb91dac3-aa5f-4e1c-8adf-bffa4382e6da',11302,10180,10154,10196,'Aadmin Admin','2015-10-18 04:55:43','2015-10-18 04:55:43',10002,11301,-1,11303,11302,0,'11301','11301','bbcode',0,0,0,0,0,0,10196,'Aadmin Admin','2015-10-18 04:55:44'),
 ('ca5cfe4a-467e-4376-842d-0b3be0c13dda',11312,10180,10154,10196,'Aadmin Admin','2015-10-18 04:57:25','2015-10-18 04:57:25',10002,11311,-1,11313,11312,0,'11311','11311','bbcode',0,0,0,0,0,0,10196,'Aadmin Admin','2015-10-18 04:57:25'),
 ('31f06e5f-da60-4c4b-ab01-c7339082ff02',11317,10180,10154,10196,'Aadmin Admin','2015-10-18 04:57:58','2015-10-18 04:57:58',10002,11316,-1,11318,11317,0,'11316','11316','bbcode',0,0,0,0,0,0,10196,'Aadmin Admin','2015-10-18 04:57:58'),
 ('d34c3390-dbe3-4ef9-9fd7-fd8152fc2216',11323,10180,10154,10196,'Aadmin Admin','2015-10-18 04:58:10','2015-10-18 04:58:10',10002,11322,-1,11324,11323,0,'11322','11322','bbcode',0,0,0,0,0,0,10196,'Aadmin Admin','2015-10-18 04:58:10'),
 ('351819fb-f28d-4266-8486-017e9ab96bd8',11328,10180,10154,10196,'Aadmin Admin','2015-10-18 04:58:47','2015-10-18 04:58:47',10002,11327,-1,11329,11328,0,'11327','11327','bbcode',0,0,0,0,0,0,10196,'Aadmin Admin','2015-10-18 04:58:47'),
 ('47cec8a8-ce54-4676-9c4e-ccf131391e16',11333,10180,10154,10196,'Aadmin Admin','2015-10-18 04:59:13','2015-10-18 04:59:13',10002,11332,-1,11334,11333,0,'11332','11332','bbcode',0,0,0,0,0,0,10196,'Aadmin Admin','2015-10-18 04:59:13'),
 ('b837c95d-36e3-46db-b6eb-fb8044fbac35',11338,10180,10154,10196,'Aadmin Admin','2015-10-18 05:00:05','2015-10-18 05:00:05',10002,11337,-1,11339,11338,0,'11337','11337','bbcode',0,0,0,0,0,0,10196,'Aadmin Admin','2015-10-18 05:00:05'),
 ('70ecaaa3-950c-4fd7-8a75-122ba8ec4e63',11903,10180,10154,10196,'Admin Admin','2015-10-29 22:20:42','2015-10-29 22:20:42',10002,11902,-1,11904,11903,0,'11902','11902','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-29 22:20:42'),
 ('a050627b-aa97-460c-90ab-e1ed0fd916f4',11908,10180,10154,10196,'Admin Admin','2015-10-29 22:21:19','2015-10-29 22:21:19',10002,11907,-1,11909,11908,0,'11907','11907','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-29 22:21:19'),
 ('b42a0ec5-f5c0-48bc-912c-eddd7d5a41f6',12049,10180,10154,10196,'Admin Admin','2015-10-30 16:15:41','2015-10-30 16:15:41',10002,12048,-1,12050,12049,0,'12048','12048','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-30 16:15:42'),
 ('c3601261-4369-40cd-aefe-90d4eac7483f',12055,10180,10154,10196,'Admin Admin','2015-10-30 16:16:03','2015-10-30 16:16:03',10002,12054,-1,12056,12055,0,'12054','12054','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-30 16:16:03'),
 ('efd995c3-8ebf-4b4b-af3d-cebc739f6695',12060,10180,10154,10196,'Admin Admin','2015-10-30 16:16:27','2015-10-30 16:16:27',10002,12059,-1,12061,12060,0,'12059','12059','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-30 16:16:27'),
 ('a107e9b1-8b1d-4d9c-ae7b-3e6df0236e06',12065,10180,10154,10196,'Admin Admin','2015-10-30 16:16:43','2015-10-30 16:16:43',10002,12064,-1,12066,12065,0,'12064','12064','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-30 16:16:43'),
 ('e07b828c-9bdb-4ad7-adaf-84364710abdf',12160,10180,10154,10196,'Admin Admin','2015-10-30 20:24:03','2015-10-30 20:24:03',10010,12156,-1,12161,12160,0,'12156','12156','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-30 20:24:03'),
 ('57f25e6e-d32e-4f83-9006-ba332f88ce5c',12169,10180,10154,10196,'Admin Admin','2015-10-30 20:24:06','2015-10-30 20:24:06',10010,12166,-1,12170,12169,0,'12166','12166','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-30 20:24:06'),
 ('03f675b7-8b47-413a-a3a0-f62eb9919d33',12178,10180,10154,10196,'Admin Admin','2015-10-30 20:24:07','2015-10-30 20:24:07',10010,12175,-1,12179,12178,0,'12175','12175','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-30 20:24:07'),
 ('7303687e-b295-47bf-bc3a-47168ccd4070',12188,10180,10154,10196,'Admin Admin','2015-10-30 20:24:09','2015-10-30 20:24:09',10010,12185,-1,12189,12188,0,'12185','12185','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-30 20:24:09'),
 ('1ba6023e-bfad-47a3-9bad-58481090d689',12233,10180,10154,10196,'Admin Admin','2015-10-30 21:22:45','2015-10-30 21:22:45',10108,12228,-1,12234,12233,0,'12228','12228','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-30 21:22:45'),
 ('c50e7b47-1471-48ac-aa2f-9e85bb75459b',12255,10180,10154,10196,'Admin Admin','2015-10-30 21:57:05','2015-10-30 21:57:05',10108,12251,-1,12256,12255,0,'12251','12251','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-30 21:57:05'),
 ('6a32147a-b903-43de-9750-9ba5e27f54e6',12270,10180,10154,10196,'Admin Admin','2015-10-30 22:02:39','2015-10-30 22:02:39',10108,12264,-1,12271,12270,0,'12264','12264','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-30 22:02:39'),
 ('bbcfe30f-50b4-498f-9e39-2bb49ccf3f69',12340,12002,10154,10196,'Admin Admin','2015-10-31 03:01:37','2015-10-31 03:01:37',10002,12339,-1,12341,12340,0,'12339','12339','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-31 03:01:37'),
 ('4f054c10-a0c1-4a91-b8d2-4c9f08a43947',12345,12002,10154,10196,'Admin Admin','2015-10-31 03:01:48','2015-10-31 03:01:48',10002,12344,-1,12346,12345,0,'12344','12344','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-31 03:01:48'),
 ('1c600d40-b419-48ca-a7cd-2fbb97ab91e2',12359,12002,10154,10196,'Admin Admin','2015-10-31 03:08:07','2015-10-31 03:08:07',10002,12358,-1,12360,12359,0,'12358','12358','bbcode',0,0,0,0,0,0,10196,'Admin Admin','2015-10-31 03:08:07');
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
 (10177,10172,10154,-1,10176,10158,1,0,0,'2015-10-17 00:53:24',0,0,0,10158,'','2015-10-17 00:53:24'),
 (10315,10310,10154,-1,10314,10158,1,0,0,'2015-10-17 00:53:28',0,0,0,10158,'','2015-10-17 00:53:28'),
 (10325,10320,10154,-1,10324,10158,1,0,0,'2015-10-17 00:53:28',0,0,0,10158,'','2015-10-17 00:53:28'),
 (10334,10329,10154,-1,10333,10158,1,0,0,'2015-10-17 00:53:29',0,0,0,10158,'','2015-10-17 00:53:29'),
 (10348,10338,10154,-1,10347,10158,1,0,0,'2015-10-17 00:53:30',0,0,0,10158,'','2015-10-17 00:53:30'),
 (10354,10338,10154,-1,10353,10158,1,0,0,'2015-10-17 00:53:30',0,0,0,10158,'','2015-10-17 00:53:30'),
 (10360,10338,10154,-1,10359,10158,1,0,0,'2015-10-17 00:53:30',0,0,0,10158,'','2015-10-17 00:53:30'),
 (10374,10364,10154,-1,10373,10158,1,0,0,'2015-10-17 00:53:31',0,0,0,10158,'','2015-10-17 00:53:31'),
 (10382,10364,10154,-1,10381,10158,1,0,0,'2015-10-17 00:53:31',0,0,0,10158,'','2015-10-17 00:53:31'),
 (10388,10364,10154,-1,10387,10158,1,0,0,'2015-10-17 00:53:31',0,0,0,10158,'','2015-10-17 00:53:31'),
 (10394,10364,10154,-1,10393,10158,1,0,0,'2015-10-17 00:53:32',0,0,0,10158,'','2015-10-17 00:53:32'),
 (10805,10180,10154,-1,10804,10158,1,0,0,'2015-10-17 02:51:05',0,0,0,10158,'','2015-10-17 02:51:05'),
 (10813,10180,10154,-1,10812,10158,1,0,0,'2015-10-17 02:51:06',0,0,0,10158,'','2015-10-17 02:51:06'),
 (10822,10180,10154,-1,10821,10158,1,0,0,'2015-10-17 02:51:06',0,0,0,10158,'','2015-10-17 02:51:06'),
 (10832,10180,10154,-1,10831,10158,1,0,0,'2015-10-17 02:51:06',0,0,0,10158,'','2015-10-17 02:51:06'),
 (10842,10180,10154,-1,10840,10158,1,0,0,'2015-10-17 02:51:07',0,0,0,10158,'','2015-10-17 02:51:07'),
 (10854,10180,10154,-1,10853,10158,1,0,0,'2015-10-17 02:51:07',0,0,0,10158,'','2015-10-17 02:51:07'),
 (10865,10180,10154,-1,10864,10158,1,0,0,'2015-10-17 02:51:07',0,0,0,10158,'','2015-10-17 02:51:07'),
 (10877,10180,10154,-1,10876,10158,1,0,0,'2015-10-17 02:51:07',0,0,0,10158,'','2015-10-17 02:51:07'),
 (10890,10180,10154,-1,10889,10158,1,0,0,'2015-10-17 02:51:07',0,0,0,10158,'','2015-10-17 02:51:07'),
 (10905,10180,10154,-1,10904,10158,1,0,0,'2015-10-17 02:51:07',0,0,0,10158,'','2015-10-17 02:51:07'),
 (10917,10180,10154,-1,10916,10158,1,0,0,'2015-10-17 02:51:07',0,0,0,10158,'','2015-10-17 02:51:07'),
 (10929,10180,10154,-1,10928,10158,1,0,0,'2015-10-17 02:51:07',0,0,0,10158,'','2015-10-17 02:51:07'),
 (10941,10180,10154,-1,10940,10158,1,0,0,'2015-10-17 02:51:07',0,0,0,10158,'','2015-10-17 02:51:07'),
 (11207,10180,10154,-1,11206,10158,1,0,0,'2015-10-17 21:48:58',0,0,0,10158,'','2015-10-17 21:48:58'),
 (11303,10180,10154,-1,11302,10196,1,0,10196,'2015-10-18 04:55:44',0,0,0,10196,'Aadmin Admin','2015-10-18 04:55:44'),
 (11313,10180,10154,-1,11312,10196,1,0,10196,'2015-10-18 04:57:25',0,0,0,10196,'Aadmin Admin','2015-10-18 04:57:25'),
 (11318,10180,10154,-1,11317,10196,1,0,10196,'2015-10-18 04:57:58',0,0,0,10196,'Aadmin Admin','2015-10-18 04:57:58'),
 (11324,10180,10154,-1,11323,10196,1,0,10196,'2015-10-18 04:58:10',0,0,0,10196,'Aadmin Admin','2015-10-18 04:58:10'),
 (11329,10180,10154,-1,11328,10196,1,0,10196,'2015-10-18 04:58:47',0,0,0,10196,'Aadmin Admin','2015-10-18 04:58:47'),
 (11334,10180,10154,-1,11333,10196,1,0,10196,'2015-10-18 04:59:13',0,0,0,10196,'Aadmin Admin','2015-10-18 04:59:13'),
 (11339,10180,10154,-1,11338,10196,1,0,10196,'2015-10-18 05:00:05',0,0,0,10196,'Aadmin Admin','2015-10-18 05:00:05'),
 (11904,10180,10154,-1,11903,10196,1,0,10196,'2015-10-29 22:20:42',0,0,0,10196,'Admin Admin','2015-10-29 22:20:42'),
 (11909,10180,10154,-1,11908,10196,1,0,10196,'2015-10-29 22:21:19',0,0,0,10196,'Admin Admin','2015-10-29 22:21:19'),
 (12050,10180,10154,-1,12049,10196,1,0,10196,'2015-10-30 16:15:42',0,0,0,10196,'Admin Admin','2015-10-30 16:15:42'),
 (12056,10180,10154,-1,12055,10196,1,0,10196,'2015-10-30 16:16:03',0,0,0,10196,'Admin Admin','2015-10-30 16:16:03'),
 (12061,10180,10154,-1,12060,10196,1,0,10196,'2015-10-30 16:16:27',0,0,0,10196,'Admin Admin','2015-10-30 16:16:27'),
 (12066,10180,10154,-1,12065,10196,1,0,10196,'2015-10-30 16:16:43',0,0,0,10196,'Admin Admin','2015-10-30 16:16:43'),
 (12161,10180,10154,-1,12160,10196,1,0,10196,'2015-10-30 20:24:03',0,0,0,10196,'Admin Admin','2015-10-30 20:24:03'),
 (12170,10180,10154,-1,12169,10196,1,0,10196,'2015-10-30 20:24:06',0,0,0,10196,'Admin Admin','2015-10-30 20:24:06'),
 (12179,10180,10154,-1,12178,10196,1,0,10196,'2015-10-30 20:24:07',0,0,0,10196,'Admin Admin','2015-10-30 20:24:07'),
 (12189,10180,10154,-1,12188,10196,1,0,10196,'2015-10-30 20:24:09',0,0,0,10196,'Admin Admin','2015-10-30 20:24:09'),
 (12234,10180,10154,-1,12233,10196,1,0,10196,'2015-10-30 21:22:45',0,0,0,10196,'Admin Admin','2015-10-30 21:22:45'),
 (12256,10180,10154,-1,12255,10196,1,0,10196,'2015-10-30 21:57:05',0,0,0,10196,'Admin Admin','2015-10-30 21:57:05'),
 (12271,10180,10154,-1,12270,10196,1,0,10196,'2015-10-30 22:02:39',0,0,0,10196,'Admin Admin','2015-10-30 22:02:39'),
 (12341,12002,10154,-1,12340,10196,1,0,10196,'2015-10-31 03:01:37',0,0,0,10196,'Admin Admin','2015-10-31 03:01:37'),
 (12346,12002,10154,-1,12345,10196,1,0,10196,'2015-10-31 03:01:48',0,0,0,10196,'Admin Admin','2015-10-31 03:01:48'),
 (12360,12002,10154,-1,12359,10196,1,0,10196,'2015-10-31 03:08:07',0,0,0,10196,'Admin Admin','2015-10-31 03:08:07');
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
INSERT INTO `organization_` (`organizationId`,`companyId`,`parentOrganizationId`,`treePath`,`name`,`type_`,`recursable`,`regionId`,`countryId`,`statusId`,`comments`) VALUES 
 (11807,10154,0,'/11807/','Desarrollo Fabrica','regular-organization',1,0,0,12017,''),
 (11815,10154,11807,'/11807/11815/','MAPFRE','regular-organization',1,0,0,12017,''),
 (11832,10154,11807,'/11807/11832/','Desarrollo BBVA','regular-organization',1,0,0,12017,''),
 (11839,10154,0,'/11839/','CLARO','regular-organization',1,0,0,12017,''),
 (11852,10154,11839,'/11839/11852/','CLARO PERU','regular-organization',1,0,0,12017,''),
 (11859,10154,0,'/11859/','GERENTES','regular-organization',1,0,0,12017,''),
 (11865,10154,0,'/11865/','CAPITAL HUMANO','regular-organization',1,0,0,12017,''),
 (11871,10154,0,'/11871/','SOPORTE TECNICO','regular-organization',1,0,0,12017,'');
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
INSERT INTO `orglabor` (`orgLaborId`,`organizationId`,`typeId`,`sunOpen`,`sunClose`,`monOpen`,`monClose`,`tueOpen`,`tueClose`,`wedOpen`,`wedClose`,`thuOpen`,`thuClose`,`friOpen`,`friClose`,`satOpen`,`satClose`) VALUES 
 (11813,11807,12012,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1),
 (11830,11815,12012,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1),
 (11838,11832,12012,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1),
 (11851,11839,12012,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1),
 (11858,11852,12012,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1);
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
 (10195,10154,10158,'','2015-10-17 00:53:25','2015-10-28 20:34:15',1,'Default Password Policy','Default Password Policy',1,0,0,0,1,0,6,0,1,0,1,0,6,0,1209600,86400,0,0,3,0,1,600,86400);
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
 (10153,0,1,'<portlet-preferences><preference><name>mail.session.mail</name><value>true</value></preference><preference><name>mail.session.mail.smtp.user</name><value>danieldelgado20g@gmail.com</value></preference><preference><name>mail.session.mail.pop3.host</name><value>pop.gmail.com</value></preference><preference><name>mail.session.mail.pop3.user</name><value>danieldelgado20g@gmail.com</value></preference><preference><name>mail.session.mail.advanced.properties</name><value></value></preference><preference><name>mail.session.mail.pop3.password</name><value>DanielDelgado1234</value></preference><preference><name>mail.session.mail.store.protocol</name><value>pop3</value></preference><preference><name>mail.session.mail.pop3.port</name><value>110</value></preference><preference><name>mail.session.mail.transport.protocol</name><value>smtps</value></preference><preference><name>mail.session.mail.smtp.host</name><value>smtp.gmail.com</value></preference><preference><name>mail.session.mail.smtp.password</name><value>DanielDelgado1234</value></preference><preference><name>mail.session.mail.smtp.port</name><value>465</value></preference></portlet-preferences>'),
 (10160,10154,1,'<portlet-preferences><preference><name>company.security.strangers.verify</name><value>false</value></preference><preference><name>ldap.server.ids</name><value></value></preference><preference><name>admin.email.password.reset.subject</name><value>[$PORTAL_URL$]: Reset Your Password</value></preference><preference><name>admin.email.user.added.subject</name><value>[$PORTAL_URL$]: Your New Account</value></preference><preference><name>admin.email.password.sent.body</name><value>&lt;p&gt;[$NEW_LINE$]	Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Your new password for [$PORTAL_URL$] is [$USER_PASSWORD$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$] with the browser [$USER_AGENT$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Sincerely,&lt;br /&gt;[$NEW_LINE$]	[$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$]	[$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$]	[$PORTAL_URL$]&lt;/p&gt;[$NEW_LINE$]</value></preference><preference><name>admin.email.verification.subject</name><value>[$PORTAL_URL$]: Email Address Verification</value></preference><preference><name>admin.default.role.names</name><value>Power User[$NEW_LINE$]User</value></preference><preference><name>company.security.strangers.with.mx</name><value>true</value></preference><preference><name>google.apps.password</name><value>1234</value></preference><preference><name>company.security.auto.login</name><value>true</value></preference><preference><name>default.landing.page.path</name><value>/inicio</value></preference><preference><name>company.security.site.logo</name><value>true</value></preference><preference><name>terms.of.use.required</name><value>false</value></preference><preference><name>admin.email.password.sent.subject</name><value>[$PORTAL_URL$]: Your New Password</value></preference><preference><name>admin.email.password.reset.body</name><value>&lt;p&gt;[$NEW_LINE$]	Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	You can reset your password for [$PORTAL_URL$] at [$PASSWORD_RESET_URL$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Sincerely,&lt;br /&gt;[$NEW_LINE$]	[$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$]	[$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$]	[$PORTAL_URL$]&lt;/p&gt;[$NEW_LINE$]</value></preference><preference><name>company.security.send.password</name><value>true</value></preference><preference><name>google.apps.username</name><value>Monica Lopera</value></preference><preference><name>admin.email.verification.body</name><value>&lt;p&gt;[$NEW_LINE$]	Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Please verify your email address for [$PORTAL_URL$] at [$EMAIL_VERIFICATION_URL$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Your verification code is [$EMAIL_VERIFICATION_CODE$] Sincerely,&lt;br /&gt;[$NEW_LINE$]	[$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$]	[$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$]	[$PORTAL_URL$]&lt;/p&gt;[$NEW_LINE$]</value></preference><preference><name>admin.email.user.added.no.password.body</name><value>&lt;p&gt;[$NEW_LINE$]	Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Welcome! You recently created an account at [$PORTAL_URL$].&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Sincerely,&lt;br /&gt;[$NEW_LINE$]	[$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$]	[$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$]	[$PORTAL_URL$]&lt;/p&gt;[$NEW_LINE$]</value></preference><preference><name>admin.email.user.added.body</name><value>&lt;p&gt;[$NEW_LINE$]	Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Welcome! You recently created an account at [$PORTAL_URL$]. Your password is [$USER_PASSWORD$]. Enjoy!&lt;br /&gt;[$NEW_LINE$]	&lt;br /&gt;[$NEW_LINE$]	Sincerely,&lt;br /&gt;[$NEW_LINE$]	[$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$]	[$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$]	[$PORTAL_URL$]&lt;/p&gt;[$NEW_LINE$]</value></preference><preference><name>company.security.strangers</name><value>true</value></preference><preference><name>company.security.auth.type</name><value>emailAddress</value></preference></portlet-preferences>'),
 (10405,10158,4,'<portlet-preferences />'),
 (10428,10196,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-portal</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionTreeJSClicks#layoutsTree</name><value>10,5,6,</value></preference><preference><name>129#password-policies-order-by-col</name><value>name</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-content</name><value>open</value></preference><preference><name>128#roles-order-by-col</name><value>name</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_dockbar_pinned</name><value>0</value></preference><preference><name>129#password-policies-order-by-type</name><value>asc</value></preference><preference><name>128#roles-order-by-type</name><value>asc</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-marketplace</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#dlFileEntryCategorizationPanel</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#assetTagPropertiesPanel</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-my</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_toggle_controls</name><value>visible</value></preference><preference><name>20#display-style</name><value>icon</value></preference><preference><name>com.liferay.portal.util.SessionClicks#vocabularyExtraFieldsPanelContainer</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#assetCategoryPropertiesPanel</name><value>open</value></preference></portlet-preferences>'),
 (11812,11807,6,'<portlet-preferences><preference><name>reminderQueries_hr_HR</name><value></value></preference><preference><name>reminderQueries_en_US</name><value></value></preference><preference><name>reminderQueries_bg_BG</name><value></value></preference><preference><name>reminderQueries_hi_IN</name><value></value></preference><preference><name>reminderQueries_lo_LA</name><value></value></preference><preference><name>reminderQueries_ca_ES</name><value></value></preference><preference><name>reminderQueries_ca_AD</name><value></value></preference><preference><name>reminderQueries_ro_RO</name><value></value></preference><preference><name>reminderQueries_hu_HU</name><value></value></preference><preference><name>reminderQueries_pt_PT</name><value></value></preference><preference><name>reminderQueries_eu_ES</name><value></value></preference><preference><name>reminderQueries_sr_RS_latin</name><value></value></preference><preference><name>reminderQueries_fi_FI</name><value></value></preference><preference><name>reminderQueries_ar_SA</name><value></value></preference><preference><name>reminderQueries_it_IT</name><value></value></preference><preference><name>reminderQueries_sl_SI</name><value></value></preference><preference><name>reminderQueries_sr_RS</name><value></value></preference><preference><name>reminderQueries_pl_PL</name><value></value></preference><preference><name>reminderQueries_sv_SE</name><value></value></preference><preference><name>reminderQueries_zh_CN</name><value></value></preference><preference><name>reminderQueries_nl_NL</name><value></value></preference><preference><name>reminderQueries_da_DK</name><value></value></preference><preference><name>reminderQueries_en_GB</name><value></value></preference><preference><name>reminderQueries_iw_IL</name><value></value></preference><preference><name>reminderQueries_in_ID</name><value></value></preference><preference><name>reminderQueries_nl_BE</name><value></value></preference><preference><name>reminderQueries_nb_NO</name><value></value></preference><preference><name>reminderQueries_et_EE</name><value></value></preference><preference><name>reminderQueries_tr_TR</name><value></value></preference><preference><name>reminderQueries_el_GR</name><value></value></preference><preference><name>reminderQueries_vi_VN</name><value></value></preference><preference><name>reminderQueries_sk_SK</name><value></value></preference><preference><name>reminderQueries_pt_BR</name><value></value></preference><preference><name>reminderQueries</name><value></value></preference><preference><name>reminderQueries_cs_CZ</name><value></value></preference><preference><name>reminderQueries_fr_FR</name><value></value></preference><preference><name>reminderQueries_gl_ES</name><value></value></preference><preference><name>reminderQueries_zh_TW</name><value></value></preference><preference><name>reminderQueries_uk_UA</name><value></value></preference><preference><name>reminderQueries_fa_IR</name><value></value></preference><preference><name>reminderQueries_ja_JP</name><value></value></preference><preference><name>reminderQueries_ko_KR</name><value></value></preference><preference><name>reminderQueries_de_DE</name><value></value></preference><preference><name>reminderQueries_ru_RU</name><value></value></preference></portlet-preferences>'),
 (11820,11815,6,'<portlet-preferences><preference><name>reminderQueries_hr_HR</name><value></value></preference><preference><name>reminderQueries_en_US</name><value></value></preference><preference><name>reminderQueries_bg_BG</name><value></value></preference><preference><name>reminderQueries_hi_IN</name><value></value></preference><preference><name>reminderQueries_lo_LA</name><value></value></preference><preference><name>reminderQueries_ca_ES</name><value></value></preference><preference><name>reminderQueries_ca_AD</name><value></value></preference><preference><name>reminderQueries_ro_RO</name><value></value></preference><preference><name>reminderQueries_hu_HU</name><value></value></preference><preference><name>reminderQueries_pt_PT</name><value></value></preference><preference><name>reminderQueries_eu_ES</name><value></value></preference><preference><name>reminderQueries_sr_RS_latin</name><value></value></preference><preference><name>reminderQueries_fi_FI</name><value></value></preference><preference><name>reminderQueries_ar_SA</name><value></value></preference><preference><name>reminderQueries_it_IT</name><value></value></preference><preference><name>reminderQueries_sl_SI</name><value></value></preference><preference><name>reminderQueries_sr_RS</name><value></value></preference><preference><name>reminderQueries_pl_PL</name><value></value></preference><preference><name>reminderQueries_sv_SE</name><value></value></preference><preference><name>reminderQueries_zh_CN</name><value></value></preference><preference><name>reminderQueries_nl_NL</name><value></value></preference><preference><name>reminderQueries_da_DK</name><value></value></preference><preference><name>reminderQueries_en_GB</name><value></value></preference><preference><name>reminderQueries_iw_IL</name><value></value></preference><preference><name>reminderQueries_in_ID</name><value></value></preference><preference><name>reminderQueries_nl_BE</name><value></value></preference><preference><name>reminderQueries_nb_NO</name><value></value></preference><preference><name>reminderQueries_et_EE</name><value></value></preference><preference><name>reminderQueries_tr_TR</name><value></value></preference><preference><name>reminderQueries_el_GR</name><value></value></preference><preference><name>reminderQueries_vi_VN</name><value></value></preference><preference><name>reminderQueries_sk_SK</name><value></value></preference><preference><name>reminderQueries_pt_BR</name><value></value></preference><preference><name>reminderQueries</name><value></value></preference><preference><name>reminderQueries_cs_CZ</name><value></value></preference><preference><name>reminderQueries_fr_FR</name><value></value></preference><preference><name>reminderQueries_gl_ES</name><value></value></preference><preference><name>reminderQueries_zh_TW</name><value></value></preference><preference><name>reminderQueries_uk_UA</name><value></value></preference><preference><name>reminderQueries_fa_IR</name><value></value></preference><preference><name>reminderQueries_ja_JP</name><value></value></preference><preference><name>reminderQueries_ko_KR</name><value></value></preference><preference><name>reminderQueries_de_DE</name><value></value></preference><preference><name>reminderQueries_ru_RU</name><value></value></preference></portlet-preferences>'),
 (11837,11832,6,'<portlet-preferences><preference><name>reminderQueries_hr_HR</name><value></value></preference><preference><name>reminderQueries_en_US</name><value></value></preference><preference><name>reminderQueries_bg_BG</name><value></value></preference><preference><name>reminderQueries_hi_IN</name><value></value></preference><preference><name>reminderQueries_lo_LA</name><value></value></preference><preference><name>reminderQueries_ca_ES</name><value></value></preference><preference><name>reminderQueries_ca_AD</name><value></value></preference><preference><name>reminderQueries_ro_RO</name><value></value></preference><preference><name>reminderQueries_hu_HU</name><value></value></preference><preference><name>reminderQueries_pt_PT</name><value></value></preference><preference><name>reminderQueries_eu_ES</name><value></value></preference><preference><name>reminderQueries_sr_RS_latin</name><value></value></preference><preference><name>reminderQueries_fi_FI</name><value></value></preference><preference><name>reminderQueries_ar_SA</name><value></value></preference><preference><name>reminderQueries_it_IT</name><value></value></preference><preference><name>reminderQueries_sl_SI</name><value></value></preference><preference><name>reminderQueries_sr_RS</name><value></value></preference><preference><name>reminderQueries_pl_PL</name><value></value></preference><preference><name>reminderQueries_sv_SE</name><value></value></preference><preference><name>reminderQueries_zh_CN</name><value></value></preference><preference><name>reminderQueries_nl_NL</name><value></value></preference><preference><name>reminderQueries_da_DK</name><value></value></preference><preference><name>reminderQueries_en_GB</name><value></value></preference><preference><name>reminderQueries_iw_IL</name><value></value></preference><preference><name>reminderQueries_in_ID</name><value></value></preference><preference><name>reminderQueries_nl_BE</name><value></value></preference><preference><name>reminderQueries_nb_NO</name><value></value></preference><preference><name>reminderQueries_et_EE</name><value></value></preference><preference><name>reminderQueries_tr_TR</name><value></value></preference><preference><name>reminderQueries_el_GR</name><value></value></preference><preference><name>reminderQueries_vi_VN</name><value></value></preference><preference><name>reminderQueries_sk_SK</name><value></value></preference><preference><name>reminderQueries_pt_BR</name><value></value></preference><preference><name>reminderQueries</name><value></value></preference><preference><name>reminderQueries_cs_CZ</name><value></value></preference><preference><name>reminderQueries_fr_FR</name><value></value></preference><preference><name>reminderQueries_gl_ES</name><value></value></preference><preference><name>reminderQueries_zh_TW</name><value></value></preference><preference><name>reminderQueries_uk_UA</name><value></value></preference><preference><name>reminderQueries_fa_IR</name><value></value></preference><preference><name>reminderQueries_ja_JP</name><value></value></preference><preference><name>reminderQueries_ko_KR</name><value></value></preference><preference><name>reminderQueries_de_DE</name><value></value></preference><preference><name>reminderQueries_ru_RU</name><value></value></preference></portlet-preferences>'),
 (11844,11839,6,'<portlet-preferences><preference><name>reminderQueries_hr_HR</name><value></value></preference><preference><name>reminderQueries_en_US</name><value></value></preference><preference><name>reminderQueries_bg_BG</name><value></value></preference><preference><name>reminderQueries_hi_IN</name><value></value></preference><preference><name>reminderQueries_lo_LA</name><value></value></preference><preference><name>reminderQueries_ca_ES</name><value></value></preference><preference><name>reminderQueries_ca_AD</name><value></value></preference><preference><name>reminderQueries_ro_RO</name><value></value></preference><preference><name>reminderQueries_hu_HU</name><value></value></preference><preference><name>reminderQueries_pt_PT</name><value></value></preference><preference><name>reminderQueries_eu_ES</name><value></value></preference><preference><name>reminderQueries_sr_RS_latin</name><value></value></preference><preference><name>reminderQueries_fi_FI</name><value></value></preference><preference><name>reminderQueries_ar_SA</name><value></value></preference><preference><name>reminderQueries_it_IT</name><value></value></preference><preference><name>reminderQueries_sl_SI</name><value></value></preference><preference><name>reminderQueries_sr_RS</name><value></value></preference><preference><name>reminderQueries_pl_PL</name><value></value></preference><preference><name>reminderQueries_sv_SE</name><value></value></preference><preference><name>reminderQueries_zh_CN</name><value></value></preference><preference><name>reminderQueries_nl_NL</name><value></value></preference><preference><name>reminderQueries_da_DK</name><value></value></preference><preference><name>reminderQueries_en_GB</name><value></value></preference><preference><name>reminderQueries_iw_IL</name><value></value></preference><preference><name>reminderQueries_in_ID</name><value></value></preference><preference><name>reminderQueries_nl_BE</name><value></value></preference><preference><name>reminderQueries_nb_NO</name><value></value></preference><preference><name>reminderQueries_et_EE</name><value></value></preference><preference><name>reminderQueries_tr_TR</name><value></value></preference><preference><name>reminderQueries_el_GR</name><value></value></preference><preference><name>reminderQueries_vi_VN</name><value></value></preference><preference><name>reminderQueries_sk_SK</name><value></value></preference><preference><name>reminderQueries_pt_BR</name><value></value></preference><preference><name>reminderQueries</name><value></value></preference><preference><name>reminderQueries_cs_CZ</name><value></value></preference><preference><name>reminderQueries_fr_FR</name><value></value></preference><preference><name>reminderQueries_gl_ES</name><value></value></preference><preference><name>reminderQueries_zh_TW</name><value></value></preference><preference><name>reminderQueries_uk_UA</name><value></value></preference><preference><name>reminderQueries_fa_IR</name><value></value></preference><preference><name>reminderQueries_ja_JP</name><value></value></preference><preference><name>reminderQueries_ko_KR</name><value></value></preference><preference><name>reminderQueries_de_DE</name><value></value></preference><preference><name>reminderQueries_ru_RU</name><value></value></preference></portlet-preferences>'),
 (11857,11852,6,'<portlet-preferences><preference><name>reminderQueries_hr_HR</name><value></value></preference><preference><name>reminderQueries_en_US</name><value></value></preference><preference><name>reminderQueries_bg_BG</name><value></value></preference><preference><name>reminderQueries_hi_IN</name><value></value></preference><preference><name>reminderQueries_lo_LA</name><value></value></preference><preference><name>reminderQueries_ca_ES</name><value></value></preference><preference><name>reminderQueries_ca_AD</name><value></value></preference><preference><name>reminderQueries_ro_RO</name><value></value></preference><preference><name>reminderQueries_hu_HU</name><value></value></preference><preference><name>reminderQueries_pt_PT</name><value></value></preference><preference><name>reminderQueries_eu_ES</name><value></value></preference><preference><name>reminderQueries_sr_RS_latin</name><value></value></preference><preference><name>reminderQueries_fi_FI</name><value></value></preference><preference><name>reminderQueries_ar_SA</name><value></value></preference><preference><name>reminderQueries_it_IT</name><value></value></preference><preference><name>reminderQueries_sl_SI</name><value></value></preference><preference><name>reminderQueries_sr_RS</name><value></value></preference><preference><name>reminderQueries_pl_PL</name><value></value></preference><preference><name>reminderQueries_sv_SE</name><value></value></preference><preference><name>reminderQueries_zh_CN</name><value></value></preference><preference><name>reminderQueries_nl_NL</name><value></value></preference><preference><name>reminderQueries_da_DK</name><value></value></preference><preference><name>reminderQueries_en_GB</name><value></value></preference><preference><name>reminderQueries_iw_IL</name><value></value></preference><preference><name>reminderQueries_in_ID</name><value></value></preference><preference><name>reminderQueries_nl_BE</name><value></value></preference><preference><name>reminderQueries_nb_NO</name><value></value></preference><preference><name>reminderQueries_et_EE</name><value></value></preference><preference><name>reminderQueries_tr_TR</name><value></value></preference><preference><name>reminderQueries_el_GR</name><value></value></preference><preference><name>reminderQueries_vi_VN</name><value></value></preference><preference><name>reminderQueries_sk_SK</name><value></value></preference><preference><name>reminderQueries_pt_BR</name><value></value></preference><preference><name>reminderQueries</name><value></value></preference><preference><name>reminderQueries_cs_CZ</name><value></value></preference><preference><name>reminderQueries_fr_FR</name><value></value></preference><preference><name>reminderQueries_gl_ES</name><value></value></preference><preference><name>reminderQueries_zh_TW</name><value></value></preference><preference><name>reminderQueries_uk_UA</name><value></value></preference><preference><name>reminderQueries_fa_IR</name><value></value></preference><preference><name>reminderQueries_ja_JP</name><value></value></preference><preference><name>reminderQueries_ko_KR</name><value></value></preference><preference><name>reminderQueries_de_DE</name><value></value></preference><preference><name>reminderQueries_ru_RU</name><value></value></preference></portlet-preferences>'),
 (11864,11859,6,'<portlet-preferences><preference><name>reminderQueries_hr_HR</name><value></value></preference><preference><name>reminderQueries_en_US</name><value></value></preference><preference><name>reminderQueries_bg_BG</name><value></value></preference><preference><name>reminderQueries_hi_IN</name><value></value></preference><preference><name>reminderQueries_lo_LA</name><value></value></preference><preference><name>reminderQueries_ca_ES</name><value></value></preference><preference><name>reminderQueries_ca_AD</name><value></value></preference><preference><name>reminderQueries_ro_RO</name><value></value></preference><preference><name>reminderQueries_hu_HU</name><value></value></preference><preference><name>reminderQueries_pt_PT</name><value></value></preference><preference><name>reminderQueries_eu_ES</name><value></value></preference><preference><name>reminderQueries_sr_RS_latin</name><value></value></preference><preference><name>reminderQueries_fi_FI</name><value></value></preference><preference><name>reminderQueries_it_IT</name><value></value></preference><preference><name>reminderQueries_ar_SA</name><value></value></preference><preference><name>reminderQueries_sl_SI</name><value></value></preference><preference><name>reminderQueries_sr_RS</name><value></value></preference><preference><name>reminderQueries_pl_PL</name><value></value></preference><preference><name>reminderQueries_sv_SE</name><value></value></preference><preference><name>reminderQueries_zh_CN</name><value></value></preference><preference><name>reminderQueries_da_DK</name><value></value></preference><preference><name>reminderQueries_nl_NL</name><value></value></preference><preference><name>reminderQueries_en_GB</name><value></value></preference><preference><name>reminderQueries_iw_IL</name><value></value></preference><preference><name>reminderQueries_in_ID</name><value></value></preference><preference><name>reminderQueries_nl_BE</name><value></value></preference><preference><name>reminderQueries_nb_NO</name><value></value></preference><preference><name>reminderQueries_et_EE</name><value></value></preference><preference><name>reminderQueries_tr_TR</name><value></value></preference><preference><name>reminderQueries_vi_VN</name><value></value></preference><preference><name>reminderQueries_el_GR</name><value></value></preference><preference><name>reminderQueries_sk_SK</name><value></value></preference><preference><name>reminderQueries_pt_BR</name><value></value></preference><preference><name>reminderQueries</name><value>NULL_VALUE</value></preference><preference><name>reminderQueries_cs_CZ</name><value></value></preference><preference><name>reminderQueries_fr_FR</name><value></value></preference><preference><name>reminderQueries_zh_TW</name><value></value></preference><preference><name>reminderQueries_gl_ES</name><value></value></preference><preference><name>reminderQueries_uk_UA</name><value></value></preference><preference><name>reminderQueries_fa_IR</name><value></value></preference><preference><name>reminderQueries_ja_JP</name><value></value></preference><preference><name>reminderQueries_ko_KR</name><value></value></preference><preference><name>reminderQueries_de_DE</name><value></value></preference><preference><name>reminderQueries_ru_RU</name><value></value></preference></portlet-preferences>'),
 (11870,11865,6,'<portlet-preferences><preference><name>reminderQueries_hr_HR</name><value></value></preference><preference><name>reminderQueries_en_US</name><value></value></preference><preference><name>reminderQueries_bg_BG</name><value></value></preference><preference><name>reminderQueries_hi_IN</name><value></value></preference><preference><name>reminderQueries_lo_LA</name><value></value></preference><preference><name>reminderQueries_ca_ES</name><value></value></preference><preference><name>reminderQueries_ca_AD</name><value></value></preference><preference><name>reminderQueries_ro_RO</name><value></value></preference><preference><name>reminderQueries_hu_HU</name><value></value></preference><preference><name>reminderQueries_pt_PT</name><value></value></preference><preference><name>reminderQueries_eu_ES</name><value></value></preference><preference><name>reminderQueries_sr_RS_latin</name><value></value></preference><preference><name>reminderQueries_fi_FI</name><value></value></preference><preference><name>reminderQueries_it_IT</name><value></value></preference><preference><name>reminderQueries_ar_SA</name><value></value></preference><preference><name>reminderQueries_sl_SI</name><value></value></preference><preference><name>reminderQueries_sr_RS</name><value></value></preference><preference><name>reminderQueries_pl_PL</name><value></value></preference><preference><name>reminderQueries_sv_SE</name><value></value></preference><preference><name>reminderQueries_zh_CN</name><value></value></preference><preference><name>reminderQueries_da_DK</name><value></value></preference><preference><name>reminderQueries_nl_NL</name><value></value></preference><preference><name>reminderQueries_en_GB</name><value></value></preference><preference><name>reminderQueries_iw_IL</name><value></value></preference><preference><name>reminderQueries_in_ID</name><value></value></preference><preference><name>reminderQueries_nl_BE</name><value></value></preference><preference><name>reminderQueries_nb_NO</name><value></value></preference><preference><name>reminderQueries_et_EE</name><value></value></preference><preference><name>reminderQueries_tr_TR</name><value></value></preference><preference><name>reminderQueries_vi_VN</name><value></value></preference><preference><name>reminderQueries_el_GR</name><value></value></preference><preference><name>reminderQueries_sk_SK</name><value></value></preference><preference><name>reminderQueries_pt_BR</name><value></value></preference><preference><name>reminderQueries</name><value>NULL_VALUE</value></preference><preference><name>reminderQueries_cs_CZ</name><value></value></preference><preference><name>reminderQueries_fr_FR</name><value></value></preference><preference><name>reminderQueries_zh_TW</name><value></value></preference><preference><name>reminderQueries_gl_ES</name><value></value></preference><preference><name>reminderQueries_uk_UA</name><value></value></preference><preference><name>reminderQueries_fa_IR</name><value></value></preference><preference><name>reminderQueries_ja_JP</name><value></value></preference><preference><name>reminderQueries_ko_KR</name><value></value></preference><preference><name>reminderQueries_de_DE</name><value></value></preference><preference><name>reminderQueries_ru_RU</name><value></value></preference></portlet-preferences>'),
 (11876,11871,6,'<portlet-preferences><preference><name>reminderQueries_hr_HR</name><value></value></preference><preference><name>reminderQueries_en_US</name><value></value></preference><preference><name>reminderQueries_bg_BG</name><value></value></preference><preference><name>reminderQueries_hi_IN</name><value></value></preference><preference><name>reminderQueries_lo_LA</name><value></value></preference><preference><name>reminderQueries_ca_ES</name><value></value></preference><preference><name>reminderQueries_ca_AD</name><value></value></preference><preference><name>reminderQueries_ro_RO</name><value></value></preference><preference><name>reminderQueries_hu_HU</name><value></value></preference><preference><name>reminderQueries_pt_PT</name><value></value></preference><preference><name>reminderQueries_eu_ES</name><value></value></preference><preference><name>reminderQueries_sr_RS_latin</name><value></value></preference><preference><name>reminderQueries_fi_FI</name><value></value></preference><preference><name>reminderQueries_it_IT</name><value></value></preference><preference><name>reminderQueries_ar_SA</name><value></value></preference><preference><name>reminderQueries_sl_SI</name><value></value></preference><preference><name>reminderQueries_sr_RS</name><value></value></preference><preference><name>reminderQueries_pl_PL</name><value></value></preference><preference><name>reminderQueries_sv_SE</name><value></value></preference><preference><name>reminderQueries_zh_CN</name><value></value></preference><preference><name>reminderQueries_da_DK</name><value></value></preference><preference><name>reminderQueries_nl_NL</name><value></value></preference><preference><name>reminderQueries_en_GB</name><value></value></preference><preference><name>reminderQueries_iw_IL</name><value></value></preference><preference><name>reminderQueries_in_ID</name><value></value></preference><preference><name>reminderQueries_nl_BE</name><value></value></preference><preference><name>reminderQueries_nb_NO</name><value></value></preference><preference><name>reminderQueries_et_EE</name><value></value></preference><preference><name>reminderQueries_tr_TR</name><value></value></preference><preference><name>reminderQueries_vi_VN</name><value></value></preference><preference><name>reminderQueries_el_GR</name><value></value></preference><preference><name>reminderQueries_sk_SK</name><value></value></preference><preference><name>reminderQueries_pt_BR</name><value></value></preference><preference><name>reminderQueries</name><value>NULL_VALUE</value></preference><preference><name>reminderQueries_cs_CZ</name><value></value></preference><preference><name>reminderQueries_fr_FR</name><value></value></preference><preference><name>reminderQueries_zh_TW</name><value></value></preference><preference><name>reminderQueries_gl_ES</name><value></value></preference><preference><name>reminderQueries_uk_UA</name><value></value></preference><preference><name>reminderQueries_fa_IR</name><value></value></preference><preference><name>reminderQueries_ja_JP</name><value></value></preference><preference><name>reminderQueries_ko_KR</name><value></value></preference><preference><name>reminderQueries_de_DE</name><value></value></preference><preference><name>reminderQueries_ru_RU</name><value></value></preference></portlet-preferences>');
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
 (10971,10154,'Complemento_WAR_Complementoportlet','',1),
 (11402,10154,'ListaSitios_WAR_ListaSitiosportlet','',1),
 (11426,10154,'RegistrarUsuario_WAR_RegistrarUsuarioportlet','',1),
 (11803,10154,'RECHITSS_WAR_RECHITSSportlet','',1),
 (11804,10154,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet','',1),
 (12001,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet','',1),
 (12097,10154,'SliderHitss_WAR_SliderHitssportlet','',1),
 (12319,10154,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet','',1);
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
 (10357,0,3,10352,'101_INSTANCE_FxYEcNd7zgAB','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10009</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),
 (10377,0,3,10372,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
 (10378,0,3,10372,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),
 (10379,0,3,10372,'101_INSTANCE_x8cUs30Rt1Jl','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),
 (10385,0,3,10380,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
 (10391,0,3,10386,'101_INSTANCE_BqvtTOhj1POs','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10009</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),
 (10397,0,3,10392,'39_INSTANCE_CNtVy1IPZHCG','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),
 (10398,0,3,10392,'39_INSTANCE_4cWCrxSADso5','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),
 (10581,10180,2,0,'15','<portlet-preferences />'),
 (10596,0,3,10175,'160','<portlet-preferences />'),
 (10597,0,3,10175,'145','<portlet-preferences />'),
 (10598,0,3,10175,'165','<portlet-preferences />'),
 (10599,0,3,10175,'156','<portlet-preferences />'),
 (10600,0,3,10175,'135','<portlet-preferences />'),
 (10601,0,3,10175,'136','<portlet-preferences />'),
 (10602,0,3,10175,'1_WAR_marketplaceportlet','<portlet-preferences />'),
 (10701,0,3,10175,'15','<portlet-preferences />'),
 (10702,0,3,10175,'20','<portlet-preferences />'),
 (10720,0,3,10175,'173','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\">\n			<preference>\n				<name>assetVocabularyId</name>\n				<value>-1</value>\n			</preference>\n			<preference>\n				<name>delta</name>\n				<value>5</value>\n			</preference>\n			<preference>\n				<name>displayStyle</name>\n				<value>title-list</value>\n			</preference>\n		</portlet-preferences>'),
 (11212,10154,1,0,'84','<portlet-preferences />'),
 (11216,0,3,10175,'134','<portlet-preferences />'),
 (11218,0,3,10175,'137','<portlet-preferences />'),
 (11219,0,3,10175,'130','<portlet-preferences />'),
 (11221,0,3,10175,'2','<portlet-preferences />'),
 (11342,0,3,11316,'103','<portlet-preferences />'),
 (11343,0,3,11316,'145','<portlet-preferences />'),
 (11344,0,3,11316,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11345,0,3,11311,'103','<portlet-preferences />'),
 (11346,0,3,11311,'145','<portlet-preferences />'),
 (11347,0,3,11311,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11348,0,3,11322,'103','<portlet-preferences />'),
 (11349,0,3,11322,'145','<portlet-preferences />'),
 (11350,0,3,11322,'49','<portlet-preferences />'),
 (11351,0,3,11322,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11352,0,3,11327,'103','<portlet-preferences />'),
 (11353,0,3,11327,'145','<portlet-preferences />'),
 (11354,0,3,11327,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11355,0,3,11332,'103','<portlet-preferences />'),
 (11356,0,3,11332,'145','<portlet-preferences />'),
 (11357,0,3,11332,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11358,0,3,11337,'103','<portlet-preferences />'),
 (11359,0,3,11337,'145','<portlet-preferences />'),
 (11360,0,3,11337,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11367,0,3,11311,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11368,0,3,11316,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11371,0,3,10175,'125','<portlet-preferences />'),
 (11401,0,3,10175,'49','<portlet-preferences />'),
 (11409,10198,2,0,'8','<portlet-preferences />'),
 (11414,0,3,11322,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11415,0,3,11322,'ListaSitios_WAR_ListaSitiosportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11416,0,3,11332,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11417,0,3,11332,'ListaSitios_WAR_ListaSitiosportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11423,0,3,11337,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11424,0,3,11337,'ListaSitios_WAR_ListaSitiosportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11425,0,3,11311,'49','<portlet-preferences />'),
 (11428,0,3,11301,'103','<portlet-preferences />'),
 (11429,0,3,11301,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11430,0,3,11301,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11431,0,3,11301,'145','<portlet-preferences />'),
 (11432,0,3,11301,'ListaSitios_WAR_ListaSitiosportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11433,0,3,11301,'87','<portlet-preferences />'),
 (11434,0,3,11301,'RegistrarUsuario_WAR_RegistrarUsuarioportlet','<portlet-preferences />'),
 (11435,0,3,10175,'88','<portlet-preferences />'),
 (11501,0,3,11301,'49','<portlet-preferences />'),
 (11601,0,3,11311,'ListaSitios_WAR_ListaSitiosportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11701,0,3,11301,'status','<portlet-preferences />'),
 (11702,0,3,10175,'139','<portlet-preferences />'),
 (11705,0,3,10175,'128','<portlet-preferences />'),
 (11805,0,3,10175,'129','<portlet-preferences />'),
 (11806,0,3,10175,'127','<portlet-preferences />'),
 (11912,0,3,11301,'88','<portlet-preferences />'),
 (11913,0,3,11907,'103','<portlet-preferences />'),
 (11914,0,3,11907,'145','<portlet-preferences />'),
 (11915,0,3,11907,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11916,0,3,11907,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11917,0,3,11907,'49','<portlet-preferences />'),
 (11918,0,3,11327,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11919,0,3,11337,'49','<portlet-preferences />'),
 (11920,0,3,10175,'99','<portlet-preferences />'),
 (11921,0,3,10175,'147','<portlet-preferences />'),
 (11922,10180,2,0,'25','<portlet-preferences />'),
 (11923,0,3,10175,'25','<portlet-preferences />'),
 (11924,0,3,10175,'98','<portlet-preferences />'),
 (11925,0,3,10175,'167','<portlet-preferences />'),
 (12007,0,3,10372,'116','<portlet-preferences />'),
 (12008,0,3,10386,'8','<portlet-preferences />'),
 (12009,10364,2,0,'19','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\">\n			<preference>\n				<name>priorities</name>\n				<value>Urgent,/message_boards/priority_urgent.png,3.0</value>\n				<value>Sticky,/message_boards/priority_sticky.png,2.0</value>\n				<value>Announcement,/message_boards/priority_announcement.png,1.0</value>\n			</preference>\n			<preference>\n				<name>ranks</name>\n				<value>Youngling=0</value>\n				<value>Padawan=25</value>\n				<value>Jedi Knight=100</value>\n				<value>Jedi Master=250</value>\n				<value>Jedi Council Member=500</value>\n				<value>Yoda=1000</value>\n				<value>Moderator=organization:Message Boards Administrator</value>\n				<value>Moderator=organization-role:Message Boards Administrator</value>\n				<value>Moderator=regular-role:Message Boards Administrator</value>\n				<value>Moderator=site-role:Message Boards Administrator</value>\n				<value>Moderator=user-group:Message Boards Administrator</value>\n			</preference>\n		</portlet-preferences>'),
 (12010,0,3,10372,'178','<portlet-preferences />'),
 (12011,10364,2,0,'8','<portlet-preferences />'),
 (12012,0,3,10372,'161','<portlet-preferences />'),
 (12013,0,3,10372,'162','<portlet-preferences />'),
 (12014,0,3,10372,'167','<portlet-preferences />'),
 (12015,0,3,10372,'56','<portlet-preferences />'),
 (12016,0,3,10372,'20','<portlet-preferences />'),
 (12017,0,3,10372,'28','<portlet-preferences />'),
 (12018,10364,2,0,'15','<portlet-preferences />'),
 (12019,0,3,10372,'169','<portlet-preferences />'),
 (12020,10364,2,0,'25','<portlet-preferences />'),
 (12021,0,3,10372,'166','<portlet-preferences />'),
 (12022,10364,2,0,'33','<portlet-preferences />'),
 (12030,0,3,12026,'167',''),
 (12031,0,3,12026,'20',''),
 (12032,0,3,12026,'15',''),
 (12033,0,3,12026,'166',''),
 (12040,12002,2,0,'8','<portlet-preferences />'),
 (12045,0,3,11907,'87','<portlet-preferences />'),
 (12047,0,3,11907,'status','<portlet-preferences />'),
 (12053,0,3,11907,'88','<portlet-preferences />'),
 (12069,0,3,12054,'103','<portlet-preferences />'),
 (12070,0,3,12054,'145','<portlet-preferences />'),
 (12071,0,3,12054,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12072,0,3,12054,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12073,0,3,12054,'49','<portlet-preferences />'),
 (12074,0,3,12048,'103','<portlet-preferences />'),
 (12075,0,3,12048,'145','<portlet-preferences />'),
 (12076,0,3,12048,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12077,0,3,12048,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12078,0,3,12048,'49','<portlet-preferences />'),
 (12079,0,3,12026,'103','<portlet-preferences />'),
 (12080,0,3,12026,'145','<portlet-preferences />'),
 (12081,0,3,10175,'149','<portlet-preferences />'),
 (12082,0,3,10175,'146','<portlet-preferences />'),
 (12083,0,3,12059,'103','<portlet-preferences />'),
 (12084,0,3,12059,'145','<portlet-preferences />'),
 (12085,0,3,12059,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12086,0,3,12059,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12087,0,3,12064,'103','<portlet-preferences />'),
 (12088,0,3,12064,'145','<portlet-preferences />'),
 (12089,0,3,12064,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12090,0,3,12064,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12091,0,3,11902,'103','<portlet-preferences />'),
 (12092,0,3,11902,'145','<portlet-preferences />'),
 (12093,0,3,11902,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12094,0,3,11902,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12095,0,3,12059,'49','<portlet-preferences />'),
 (12102,0,3,10175,'178','<portlet-preferences />'),
 (12113,0,3,12109,'167',''),
 (12114,0,3,12109,'20',''),
 (12115,0,3,12109,'15',''),
 (12116,0,3,12109,'166',''),
 (12117,0,3,12109,'116','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10372\" portlet-id=\"116\"/>'),
 (12118,0,3,12109,'3','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10372\" portlet-id=\"3\">\n	<preference>\n		<name>portletSetupShowBorders</name>\n		<value>false</value>\n	</preference>\n</portlet-preferences>'),
 (12119,0,3,12109,'82','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10372\" portlet-id=\"82\">\n	<preference>\n		<name>displayStyle</name>\n		<value>3</value>\n	</preference>\n</portlet-preferences>'),
 (12120,0,3,12109,'101_INSTANCE_x8cUs30Rt1Jl','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10372\" portlet-id=\"101_INSTANCE_x8cUs30Rt1Jl\">\n	<preference>\n		<name>portletSetupUseCustomTitle</name>\n		<value>true</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_en_US</name>\n		<value>Recent Content</value>\n	</preference>\n</portlet-preferences>'),
 (12121,0,3,12110,'20','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10380\" portlet-id=\"20\">\n	<preference>\n		<name>portletSetupShowBorders</name>\n		<value>false</value>\n	</preference>\n</portlet-preferences>'),
 (12122,0,3,12111,'8','<portlet-preferences />'),
 (12123,12103,2,0,'8','<portlet-preferences />'),
 (12124,0,3,12111,'101_INSTANCE_BqvtTOhj1POs','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10386\" portlet-id=\"101_INSTANCE_BqvtTOhj1POs\">\n	<preference>\n		<name>portletSetupUseCustomTitle</name>\n		<value>true</value>\n	</preference>\n	<preference>\n		<name>anyAssetType</name>\n		<value>false</value>\n	</preference>\n	<preference>\n		<name>classNameIds</name>\n		<value>10009</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_en_US</name>\n		<value>Upcoming Events</value>\n	</preference>\n</portlet-preferences>'),
 (12125,0,3,12112,'39_INSTANCE_CNtVy1IPZHCG','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),
 (12126,0,3,12112,'39_INSTANCE_4cWCrxSADso5','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),
 (12129,0,3,10175,'131','<portlet-preferences />'),
 (12130,0,3,12026,'56_INSTANCE_06t375oPopYU','<portlet-preferences />'),
 (12131,0,3,12026,'49','<portlet-preferences />'),
 (12132,0,3,12026,'88','<portlet-preferences />'),
 (12134,0,3,12027,'103','<portlet-preferences />'),
 (12135,0,3,12027,'145','<portlet-preferences />'),
 (12136,0,3,12028,'103','<portlet-preferences />'),
 (12137,0,3,12029,'103','<portlet-preferences />'),
 (12138,0,3,12029,'145','<portlet-preferences />'),
 (12139,0,3,12028,'145','<portlet-preferences />'),
 (12140,0,3,12029,'49','<portlet-preferences />'),
 (12141,0,3,12109,'103','<portlet-preferences />'),
 (12142,0,3,12109,'145','<portlet-preferences />'),
 (12143,0,3,12109,'49','<portlet-preferences />'),
 (12148,10180,2,0,'20','<portlet-preferences />'),
 (12221,10180,2,0,'8','<portlet-preferences />'),
 (12222,0,3,10175,'8','<portlet-preferences />'),
 (12246,0,3,11907,'119','<portlet-preferences />'),
 (12278,0,3,10175,'86','<portlet-preferences />'),
 (12307,0,3,11907,'86','<portlet-preferences />'),
 (12309,0,3,11907,'SliderHitss_WAR_SliderHitssportlet','<portlet-preferences><preference><name>limite</name><value>3</value></preference><preference><name>categorias</name><value>slide</value></preference></portlet-preferences>'),
 (12310,0,3,12026,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12311,0,3,12026,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12318,0,3,11907,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet','<portlet-preferences />'),
 (12321,0,3,11907,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet','<portlet-preferences />'),
 (12323,0,3,12027,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12324,0,3,12027,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12325,0,3,12027,'49','<portlet-preferences />'),
 (12326,0,3,12028,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12327,0,3,12028,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12328,0,3,12028,'88','<portlet-preferences />'),
 (12330,0,3,12027,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
 (12333,0,3,12028,'49','<portlet-preferences />'),
 (12337,0,3,12029,'39_INSTANCE_CNtVy1IPZHCG','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),
 (12338,0,3,12029,'39_INSTANCE_4cWCrxSADso5','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),
 (12349,0,3,12344,'103','<portlet-preferences />'),
 (12350,0,3,12344,'145','<portlet-preferences />'),
 (12351,0,3,12344,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12352,0,3,12344,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12353,0,3,12339,'103','<portlet-preferences />'),
 (12354,0,3,12339,'145','<portlet-preferences />'),
 (12355,0,3,12339,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12356,0,3,12339,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12357,0,3,12339,'49','<portlet-preferences />'),
 (12363,0,3,12358,'103','<portlet-preferences />'),
 (12364,0,3,12358,'145','<portlet-preferences />'),
 (12365,0,3,12358,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12366,0,3,12358,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12367,0,3,12029,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12368,0,3,12029,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (12401,0,3,12026,'87','<portlet-preferences />'),
 (12609,0,3,12358,'49','<portlet-preferences />');
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
INSERT INTO `ratingsstats` (`statsId`,`classNameId`,`classPK`,`totalEntries`,`totalScore`,`averageScore`) VALUES 
 (12206,10010,12185,0,0,0),
 (12285,10010,12156,0,0,0);
/*!40000 ALTER TABLE `ratingsstats` ENABLE KEYS */;


--
-- Definition of table `rechitss_foo`
--

DROP TABLE IF EXISTS `rechitss_foo`;
CREATE TABLE `rechitss_foo` (
  `fooId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `field1` varchar(75) DEFAULT NULL,
  `field2` tinyint(4) DEFAULT NULL,
  `field3` int(11) DEFAULT NULL,
  `field4` datetime DEFAULT NULL,
  `field5` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`fooId`),
  KEY `IX_27EC523C` (`field2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rechitss_foo`
--

/*!40000 ALTER TABLE `rechitss_foo` DISABLE KEYS */;
/*!40000 ALTER TABLE `rechitss_foo` ENABLE KEYS */;


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
 (1,'2015-10-16 17:51:25','2015-11-01 05:42:31','portal',6101,'2015-11-01 05:42:31',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.');
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
 (901,'Complemento_WAR_Complementoportlet','VIEW',1),
 (902,'Complemento_WAR_Complementoportlet','ADD_TO_PAGE',2),
 (903,'Complemento_WAR_Complementoportlet','CONFIGURATION',4),
 (904,'Complemento_WAR_Complementoportlet','PERMISSIONS',8),
 (1001,'ListaSitios_WAR_ListaSitiosportlet','VIEW',1),
 (1002,'ListaSitios_WAR_ListaSitiosportlet','ADD_TO_PAGE',2),
 (1003,'ListaSitios_WAR_ListaSitiosportlet','CONFIGURATION',4),
 (1004,'ListaSitios_WAR_ListaSitiosportlet','PERMISSIONS',8),
 (1005,'RegistrarUsuario_WAR_RegistrarUsuarioportlet','VIEW',1),
 (1006,'RegistrarUsuario_WAR_RegistrarUsuarioportlet','ADD_TO_PAGE',2),
 (1007,'RegistrarUsuario_WAR_RegistrarUsuarioportlet','CONFIGURATION',4),
 (1008,'RegistrarUsuario_WAR_RegistrarUsuarioportlet','PERMISSIONS',8),
 (1101,'RECHITSS_WAR_RECHITSSportlet','VIEW',1),
 (1102,'RECHITSS_WAR_RECHITSSportlet','ADD_TO_PAGE',2),
 (1103,'RECHITSS_WAR_RECHITSSportlet','CONFIGURATION',4),
 (1104,'RECHITSS_WAR_RECHITSSportlet','PERMISSIONS',8),
 (1105,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet','VIEW',1),
 (1106,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet','ADD_TO_PAGE',2),
 (1107,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet','CONFIGURATION',4),
 (1108,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet','PERMISSIONS',8),
 (1201,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet','VIEW',1),
 (1202,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet','ADD_TO_PAGE',2),
 (1203,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet','CONFIGURATION',4),
 (1204,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet','PERMISSIONS',8),
 (1205,'SliderHitss_WAR_SliderHitssportlet','VIEW',1),
 (1206,'SliderHitss_WAR_SliderHitssportlet','ADD_TO_PAGE',2),
 (1207,'SliderHitss_WAR_SliderHitssportlet','CONFIGURATION',4),
 (1208,'SliderHitss_WAR_SliderHitssportlet','PERMISSIONS',8),
 (1301,'SliderHitss_WAR_SliderHitssportlet','PREFERENCES',16),
 (1302,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet','VIEW',1),
 (1303,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet','ADD_TO_PAGE',2),
 (1304,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet','CONFIGURATION',4),
 (1305,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet','PERMISSIONS',8);
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
 (344,10154,'101',4,'10323_LAYOUT_101_INSTANCE_nt7RWYqA44Kr',10162,0,1),
 (342,10154,'101',4,'10323_LAYOUT_101_INSTANCE_nt7RWYqA44Kr',10163,0,15),
 (343,10154,'101',4,'10323_LAYOUT_101_INSTANCE_nt7RWYqA44Kr',10170,0,1),
 (1940,10154,'101',4,'12109_LAYOUT_101_INSTANCE_x8cUs30Rt1Jl',10162,0,1),
 (1938,10154,'101',4,'12109_LAYOUT_101_INSTANCE_x8cUs30Rt1Jl',10163,0,15),
 (1939,10154,'101',4,'12109_LAYOUT_101_INSTANCE_x8cUs30Rt1Jl',10170,0,1),
 (301,10154,'102',1,'10154',10162,0,2),
 (302,10154,'102',1,'10154',10164,0,2),
 (303,10154,'102',1,'10154',10165,0,2),
 (106,10154,'102',2,'10189',10165,0,1),
 (1082,10154,'103',4,'11301_LAYOUT_103',10162,0,1),
 (1080,10154,'103',4,'11301_LAYOUT_103',10163,0,15),
 (1081,10154,'103',4,'11301_LAYOUT_103',10170,0,1),
 (932,10154,'103',4,'11311_LAYOUT_103',10162,0,1),
 (930,10154,'103',4,'11311_LAYOUT_103',10163,0,15),
 (931,10154,'103',4,'11311_LAYOUT_103',10170,0,1),
 (923,10154,'103',4,'11316_LAYOUT_103',10162,0,1),
 (921,10154,'103',4,'11316_LAYOUT_103',10163,0,15),
 (922,10154,'103',4,'11316_LAYOUT_103',10170,0,1),
 (941,10154,'103',4,'11322_LAYOUT_103',10162,0,1),
 (939,10154,'103',4,'11322_LAYOUT_103',10163,0,15),
 (940,10154,'103',4,'11322_LAYOUT_103',10170,0,1),
 (953,10154,'103',4,'11327_LAYOUT_103',10162,0,1),
 (951,10154,'103',4,'11327_LAYOUT_103',10163,0,15),
 (952,10154,'103',4,'11327_LAYOUT_103',10170,0,1),
 (962,10154,'103',4,'11332_LAYOUT_103',10162,0,1),
 (960,10154,'103',4,'11332_LAYOUT_103',10163,0,15),
 (961,10154,'103',4,'11332_LAYOUT_103',10170,0,1),
 (971,10154,'103',4,'11337_LAYOUT_103',10162,0,1),
 (969,10154,'103',4,'11337_LAYOUT_103',10163,0,15),
 (970,10154,'103',4,'11337_LAYOUT_103',10170,0,1),
 (1820,10154,'103',4,'11902_LAYOUT_103',10162,0,1),
 (1818,10154,'103',4,'11902_LAYOUT_103',10163,0,15),
 (1819,10154,'103',4,'11902_LAYOUT_103',10170,0,1),
 (1609,10154,'103',4,'11907_LAYOUT_103',10162,0,1),
 (1607,10154,'103',4,'11907_LAYOUT_103',10163,0,15),
 (1608,10154,'103',4,'11907_LAYOUT_103',10170,0,1),
 (1772,10154,'103',4,'12026_LAYOUT_103',10162,0,1),
 (1770,10154,'103',4,'12026_LAYOUT_103',10163,0,15),
 (1771,10154,'103',4,'12026_LAYOUT_103',10170,0,1),
 (1894,10154,'103',4,'12027_LAYOUT_103',10162,0,1),
 (1892,10154,'103',4,'12027_LAYOUT_103',10163,0,15),
 (1893,10154,'103',4,'12027_LAYOUT_103',10170,0,1),
 (1903,10154,'103',4,'12028_LAYOUT_103',10162,0,1),
 (1901,10154,'103',4,'12028_LAYOUT_103',10163,0,15),
 (1902,10154,'103',4,'12028_LAYOUT_103',10170,0,1),
 (1910,10154,'103',4,'12029_LAYOUT_103',10162,0,1),
 (1908,10154,'103',4,'12029_LAYOUT_103',10163,0,15),
 (1909,10154,'103',4,'12029_LAYOUT_103',10170,0,1),
 (1757,10154,'103',4,'12048_LAYOUT_103',10162,0,1),
 (1755,10154,'103',4,'12048_LAYOUT_103',10163,0,15),
 (1756,10154,'103',4,'12048_LAYOUT_103',10170,0,1),
 (1742,10154,'103',4,'12054_LAYOUT_103',10162,0,1),
 (1740,10154,'103',4,'12054_LAYOUT_103',10163,0,15),
 (1741,10154,'103',4,'12054_LAYOUT_103',10170,0,1),
 (1796,10154,'103',4,'12059_LAYOUT_103',10162,0,1),
 (1794,10154,'103',4,'12059_LAYOUT_103',10163,0,15),
 (1795,10154,'103',4,'12059_LAYOUT_103',10170,0,1),
 (1808,10154,'103',4,'12064_LAYOUT_103',10162,0,1),
 (1806,10154,'103',4,'12064_LAYOUT_103',10163,0,15),
 (1807,10154,'103',4,'12064_LAYOUT_103',10170,0,1),
 (1931,10154,'103',4,'12109_LAYOUT_103',10162,0,1),
 (1929,10154,'103',4,'12109_LAYOUT_103',10163,0,15),
 (1930,10154,'103',4,'12109_LAYOUT_103',10170,0,1),
 (2186,10154,'103',4,'12339_LAYOUT_103',10162,0,1),
 (2184,10154,'103',4,'12339_LAYOUT_103',10163,0,15),
 (2185,10154,'103',4,'12339_LAYOUT_103',10170,0,1),
 (2174,10154,'103',4,'12344_LAYOUT_103',10162,0,1),
 (2172,10154,'103',4,'12344_LAYOUT_103',10163,0,15),
 (2173,10154,'103',4,'12344_LAYOUT_103',10170,0,1),
 (2204,10154,'103',4,'12358_LAYOUT_103',10162,0,1),
 (2202,10154,'103',4,'12358_LAYOUT_103',10163,0,15),
 (2203,10154,'103',4,'12358_LAYOUT_103',10170,0,1),
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
 (1934,10154,'116',4,'12109_LAYOUT_116',10162,0,1),
 (1932,10154,'116',4,'12109_LAYOUT_116',10163,0,15),
 (1933,10154,'116',4,'12109_LAYOUT_116',10170,0,1),
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
 (338,10154,'122',4,'10323_LAYOUT_122_INSTANCE_c6uGD21sv1JM',10162,0,1),
 (336,10154,'122',4,'10323_LAYOUT_122_INSTANCE_c6uGD21sv1JM',10163,0,15),
 (337,10154,'122',4,'10323_LAYOUT_122_INSTANCE_c6uGD21sv1JM',10170,0,1),
 (354,10154,'122',4,'10332_LAYOUT_122_INSTANCE_58Vahs0reWOt',10162,0,1),
 (352,10154,'122',4,'10332_LAYOUT_122_INSTANCE_58Vahs0reWOt',10163,0,15),
 (353,10154,'122',4,'10332_LAYOUT_122_INSTANCE_58Vahs0reWOt',10170,0,1),
 (52,10154,'125',2,'10189',10165,0,1),
 (991,10154,'125',4,'10175_LAYOUT_125',10162,0,1),
 (989,10154,'125',4,'10175_LAYOUT_125',10163,0,31),
 (990,10154,'125',4,'10175_LAYOUT_125',10170,0,1),
 (286,10154,'127',1,'10154',10161,0,2),
 (94,10154,'127',2,'10189',10165,0,1),
 (1514,10154,'127',4,'10175_LAYOUT_127',10162,0,1),
 (1512,10154,'127',4,'10175_LAYOUT_127',10163,0,31),
 (1513,10154,'127',4,'10175_LAYOUT_127',10170,0,1),
 (32,10154,'128',2,'10189',10165,0,1),
 (1405,10154,'128',4,'10175_LAYOUT_128',10162,0,1),
 (1403,10154,'128',4,'10175_LAYOUT_128',10163,0,15),
 (1404,10154,'128',4,'10175_LAYOUT_128',10170,0,1),
 (26,10154,'129',2,'10189',10165,0,1),
 (1511,10154,'129',4,'10175_LAYOUT_129',10162,0,1),
 (1509,10154,'129',4,'10175_LAYOUT_129',10163,0,15),
 (1510,10154,'129',4,'10175_LAYOUT_129',10170,0,1),
 (18,10154,'130',2,'10189',10165,0,1),
 (834,10154,'130',4,'10175_LAYOUT_130',10162,0,1),
 (832,10154,'130',4,'10175_LAYOUT_130',10163,0,15),
 (833,10154,'130',4,'10175_LAYOUT_130',10170,0,1),
 (105,10154,'131',2,'10189',10165,0,1),
 (1882,10154,'131',4,'10175_LAYOUT_131',10162,0,1),
 (1880,10154,'131',4,'10175_LAYOUT_131',10163,0,15),
 (1881,10154,'131',4,'10175_LAYOUT_131',10170,0,1),
 (88,10154,'132',2,'10189',10165,0,1),
 (17,10154,'134',2,'10189',10165,0,1),
 (828,10154,'134',4,'10175_LAYOUT_134',10162,0,1),
 (826,10154,'134',4,'10175_LAYOUT_134',10163,0,15),
 (827,10154,'134',4,'10175_LAYOUT_134',10170,0,1),
 (104,10154,'135',2,'10189',10165,0,1),
 (453,10154,'135',4,'10175_LAYOUT_135',10162,0,1),
 (451,10154,'135',4,'10175_LAYOUT_135',10163,0,15),
 (452,10154,'135',4,'10175_LAYOUT_135',10170,0,1),
 (92,10154,'136',2,'10189',10165,0,1),
 (456,10154,'136',4,'10175_LAYOUT_136',10162,0,1),
 (454,10154,'136',4,'10175_LAYOUT_136',10163,0,15),
 (455,10154,'136',4,'10175_LAYOUT_136',10170,0,1),
 (79,10154,'137',2,'10189',10165,0,1),
 (831,10154,'137',4,'10175_LAYOUT_137',10162,0,1),
 (829,10154,'137',4,'10175_LAYOUT_137',10163,0,15),
 (830,10154,'137',4,'10175_LAYOUT_137',10170,0,1),
 (1401,10154,'139',4,'10175_LAYOUT_139',10163,0,31),
 (2,10154,'140',1,'10154',10165,0,2),
 (252,10154,'141',1,'10154',10162,0,2),
 (253,10154,'141',1,'10154',10164,0,2),
 (254,10154,'141',1,'10154',10165,0,2),
 (76,10154,'141',2,'10189',10165,0,1),
 (335,10154,'141',4,'10323_LAYOUT_141_INSTANCE_863gGTclRhgA',10162,0,1),
 (333,10154,'141',4,'10323_LAYOUT_141_INSTANCE_863gGTclRhgA',10163,0,15),
 (334,10154,'141',4,'10323_LAYOUT_141_INSTANCE_863gGTclRhgA',10170,0,1),
 (357,10154,'141',4,'10332_LAYOUT_141_INSTANCE_abhd4roPUkej',10162,0,1),
 (355,10154,'141',4,'10332_LAYOUT_141_INSTANCE_abhd4roPUkej',10163,0,15),
 (356,10154,'141',4,'10332_LAYOUT_141_INSTANCE_abhd4roPUkej',10170,0,1),
 (220,10154,'143',1,'10154',10162,0,2),
 (221,10154,'143',1,'10154',10164,0,2),
 (222,10154,'143',1,'10154',10165,0,2),
 (62,10154,'143',2,'10189',10165,0,1),
 (444,10154,'145',4,'10175_LAYOUT_145',10162,0,1),
 (442,10154,'145',4,'10175_LAYOUT_145',10163,0,15),
 (443,10154,'145',4,'10175_LAYOUT_145',10170,0,1),
 (1091,10154,'145',4,'11301_LAYOUT_145',10162,0,1),
 (1089,10154,'145',4,'11301_LAYOUT_145',10163,0,15),
 (1090,10154,'145',4,'11301_LAYOUT_145',10170,0,1),
 (935,10154,'145',4,'11311_LAYOUT_145',10162,0,1),
 (933,10154,'145',4,'11311_LAYOUT_145',10163,0,15),
 (934,10154,'145',4,'11311_LAYOUT_145',10170,0,1),
 (926,10154,'145',4,'11316_LAYOUT_145',10162,0,1),
 (924,10154,'145',4,'11316_LAYOUT_145',10163,0,15),
 (925,10154,'145',4,'11316_LAYOUT_145',10170,0,1),
 (944,10154,'145',4,'11322_LAYOUT_145',10162,0,1),
 (942,10154,'145',4,'11322_LAYOUT_145',10163,0,15),
 (943,10154,'145',4,'11322_LAYOUT_145',10170,0,1),
 (956,10154,'145',4,'11327_LAYOUT_145',10162,0,1),
 (954,10154,'145',4,'11327_LAYOUT_145',10163,0,15),
 (955,10154,'145',4,'11327_LAYOUT_145',10170,0,1),
 (965,10154,'145',4,'11332_LAYOUT_145',10162,0,1),
 (963,10154,'145',4,'11332_LAYOUT_145',10163,0,15),
 (964,10154,'145',4,'11332_LAYOUT_145',10170,0,1),
 (974,10154,'145',4,'11337_LAYOUT_145',10162,0,1),
 (972,10154,'145',4,'11337_LAYOUT_145',10163,0,15),
 (973,10154,'145',4,'11337_LAYOUT_145',10170,0,1),
 (1823,10154,'145',4,'11902_LAYOUT_145',10162,0,1),
 (1821,10154,'145',4,'11902_LAYOUT_145',10163,0,15),
 (1822,10154,'145',4,'11902_LAYOUT_145',10170,0,1),
 (1612,10154,'145',4,'11907_LAYOUT_145',10162,0,1),
 (1610,10154,'145',4,'11907_LAYOUT_145',10163,0,15),
 (1611,10154,'145',4,'11907_LAYOUT_145',10170,0,1),
 (1787,10154,'145',4,'12026_LAYOUT_145',10162,0,1),
 (1785,10154,'145',4,'12026_LAYOUT_145',10163,0,15),
 (1786,10154,'145',4,'12026_LAYOUT_145',10170,0,1),
 (1900,10154,'145',4,'12027_LAYOUT_145',10162,0,1),
 (1898,10154,'145',4,'12027_LAYOUT_145',10163,0,15),
 (1899,10154,'145',4,'12027_LAYOUT_145',10170,0,1),
 (1919,10154,'145',4,'12028_LAYOUT_145',10162,0,1),
 (1917,10154,'145',4,'12028_LAYOUT_145',10163,0,15),
 (1918,10154,'145',4,'12028_LAYOUT_145',10170,0,1),
 (1916,10154,'145',4,'12029_LAYOUT_145',10162,0,1),
 (1914,10154,'145',4,'12029_LAYOUT_145',10163,0,15),
 (1915,10154,'145',4,'12029_LAYOUT_145',10170,0,1),
 (1760,10154,'145',4,'12048_LAYOUT_145',10162,0,1),
 (1758,10154,'145',4,'12048_LAYOUT_145',10163,0,15),
 (1759,10154,'145',4,'12048_LAYOUT_145',10170,0,1),
 (1745,10154,'145',4,'12054_LAYOUT_145',10162,0,1),
 (1743,10154,'145',4,'12054_LAYOUT_145',10163,0,15),
 (1744,10154,'145',4,'12054_LAYOUT_145',10170,0,1),
 (1799,10154,'145',4,'12059_LAYOUT_145',10162,0,1),
 (1797,10154,'145',4,'12059_LAYOUT_145',10163,0,15),
 (1798,10154,'145',4,'12059_LAYOUT_145',10170,0,1),
 (1811,10154,'145',4,'12064_LAYOUT_145',10162,0,1),
 (1809,10154,'145',4,'12064_LAYOUT_145',10163,0,15),
 (1810,10154,'145',4,'12064_LAYOUT_145',10170,0,1),
 (1946,10154,'145',4,'12109_LAYOUT_145',10162,0,1),
 (1944,10154,'145',4,'12109_LAYOUT_145',10163,0,15),
 (1945,10154,'145',4,'12109_LAYOUT_145',10170,0,1),
 (2189,10154,'145',4,'12339_LAYOUT_145',10162,0,1),
 (2187,10154,'145',4,'12339_LAYOUT_145',10163,0,15),
 (2188,10154,'145',4,'12339_LAYOUT_145',10170,0,1),
 (2177,10154,'145',4,'12344_LAYOUT_145',10162,0,1),
 (2175,10154,'145',4,'12344_LAYOUT_145',10163,0,15),
 (2176,10154,'145',4,'12344_LAYOUT_145',10170,0,1),
 (2207,10154,'145',4,'12358_LAYOUT_145',10162,0,1),
 (2205,10154,'145',4,'12358_LAYOUT_145',10163,0,15),
 (2206,10154,'145',4,'12358_LAYOUT_145',10170,0,1),
 (54,10154,'146',2,'10189',10165,0,1),
 (1793,10154,'146',4,'10175_LAYOUT_146',10162,0,1),
 (1791,10154,'146',4,'10175_LAYOUT_146',10163,0,15),
 (1792,10154,'146',4,'10175_LAYOUT_146',10170,0,1),
 (117,10154,'147',2,'10189',10164,0,2),
 (50,10154,'147',2,'10189',10165,0,1),
 (1634,10154,'147',4,'10175_LAYOUT_147',10162,0,1),
 (1632,10154,'147',4,'10175_LAYOUT_147',10163,0,15),
 (1633,10154,'147',4,'10175_LAYOUT_147',10170,0,1),
 (171,10154,'148',1,'10154',10162,0,2),
 (172,10154,'148',1,'10154',10164,0,2),
 (173,10154,'148',1,'10154',10165,0,2),
 (35,10154,'148',2,'10189',10165,0,1),
 (326,10154,'148',4,'10313_LAYOUT_148_INSTANCE_OKwS3DJ0EXrU',10162,0,1),
 (324,10154,'148',4,'10313_LAYOUT_148_INSTANCE_OKwS3DJ0EXrU',10163,0,15),
 (325,10154,'148',4,'10313_LAYOUT_148_INSTANCE_OKwS3DJ0EXrU',10170,0,1),
 (100,10154,'149',2,'10189',10165,0,1),
 (1790,10154,'149',4,'10175_LAYOUT_149',10162,0,1),
 (1788,10154,'149',4,'10175_LAYOUT_149',10163,0,15),
 (1789,10154,'149',4,'10175_LAYOUT_149',10170,0,1),
 (261,10154,'15',1,'10154',10164,0,4),
 (262,10154,'15',1,'10154',10165,0,4),
 (124,10154,'15',2,'10189',10164,0,2),
 (81,10154,'15',2,'10189',10165,0,1),
 (503,10154,'15',4,'10175_LAYOUT_15',10162,0,1),
 (501,10154,'15',4,'10175_LAYOUT_15',10163,0,31),
 (502,10154,'15',4,'10175_LAYOUT_15',10170,0,1),
 (98,10154,'150',2,'10189',10165,0,1),
 (84,10154,'151',2,'10189',10165,0,1),
 (111,10154,'152',2,'10189',10164,0,2),
 (16,10154,'152',2,'10189',10165,0,1),
 (156,10154,'153',1,'10154',10164,0,4),
 (4,10154,'153',1,'10154',10165,0,2),
 (24,10154,'153',2,'10189',10165,0,1),
 (114,10154,'154',2,'10189',10164,0,2),
 (34,10154,'154',2,'10189',10165,0,1),
 (450,10154,'156',4,'10175_LAYOUT_156',10162,0,1),
 (448,10154,'156',4,'10175_LAYOUT_156',10163,0,31),
 (449,10154,'156',4,'10175_LAYOUT_156',10170,0,1),
 (31,10154,'157',2,'10189',10165,0,1),
 (178,10154,'158',1,'10154',10164,0,4),
 (3,10154,'158',1,'10154',10165,0,2),
 (38,10154,'158',2,'10189',10165,0,1),
 (234,10154,'16',1,'10154',10164,0,8),
 (235,10154,'16',1,'10154',10165,0,8),
 (67,10154,'16',2,'10189',10165,0,1),
 (441,10154,'160',4,'10175_LAYOUT_160',10162,0,1),
 (439,10154,'160',4,'10175_LAYOUT_160',10163,0,15),
 (440,10154,'160',4,'10175_LAYOUT_160',10170,0,1),
 (118,10154,'161',2,'10189',10164,0,2),
 (53,10154,'161',2,'10189',10165,0,1),
 (119,10154,'162',2,'10189',10164,0,2),
 (56,10154,'162',2,'10189',10165,0,1),
 (247,10154,'164',1,'10154',10162,0,2),
 (248,10154,'164',1,'10154',10164,0,2),
 (249,10154,'164',1,'10154',10165,0,2),
 (73,10154,'164',2,'10189',10165,0,1),
 (447,10154,'165',4,'10175_LAYOUT_165',10162,0,1),
 (445,10154,'165',4,'10175_LAYOUT_165',10163,0,31),
 (446,10154,'165',4,'10175_LAYOUT_165',10170,0,1),
 (287,10154,'166',1,'10154',10164,0,4),
 (288,10154,'166',1,'10154',10165,0,4),
 (96,10154,'166',2,'10189',10165,0,1),
 (226,10154,'167',1,'10154',10164,0,4),
 (227,10154,'167',1,'10154',10165,0,4),
 (120,10154,'167',2,'10189',10164,0,2),
 (64,10154,'167',2,'10189',10165,0,1),
 (1644,10154,'167',4,'10175_LAYOUT_167',10162,0,1),
 (1642,10154,'167',4,'10175_LAYOUT_167',10163,0,31),
 (1643,10154,'167',4,'10175_LAYOUT_167',10170,0,1),
 (273,10154,'169',1,'10154',10164,0,2),
 (274,10154,'169',1,'10154',10165,0,2),
 (87,10154,'169',2,'10189',10165,0,1),
 (161,10154,'173',1,'10154',10162,0,2),
 (162,10154,'173',1,'10154',10164,0,2),
 (163,10154,'173',1,'10154',10165,0,2),
 (113,10154,'173',2,'10189',10164,0,4),
 (28,10154,'173',2,'10189',10165,0,1),
 (514,10154,'173',4,'10175_LAYOUT_173',10162,0,1),
 (512,10154,'173',4,'10175_LAYOUT_173',10163,0,31),
 (513,10154,'173',4,'10175_LAYOUT_173',10170,0,1),
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
 (1854,10154,'178',4,'10175_LAYOUT_178',10162,0,1),
 (1852,10154,'178',4,'10175_LAYOUT_178',10163,0,31),
 (1853,10154,'178',4,'10175_LAYOUT_178',10170,0,1),
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
 (459,10154,'1_WAR_marketplaceportlet',4,'10175_LAYOUT_1_WAR_marketplaceportlet',10162,0,1),
 (457,10154,'1_WAR_marketplaceportlet',4,'10175_LAYOUT_1_WAR_marketplaceportlet',10163,0,31),
 (458,10154,'1_WAR_marketplaceportlet',4,'10175_LAYOUT_1_WAR_marketplaceportlet',10170,0,1),
 (1,10154,'2',1,'10154',10165,0,2),
 (838,10154,'2',4,'10175_LAYOUT_2',10163,0,15),
 (242,10154,'20',1,'10154',10162,0,4),
 (243,10154,'20',1,'10154',10164,0,4),
 (244,10154,'20',1,'10154',10165,0,4),
 (121,10154,'20',2,'10189',10164,0,2),
 (71,10154,'20',2,'10189',10165,0,1),
 (507,10154,'20',4,'10175_LAYOUT_20',10162,0,1),
 (505,10154,'20',4,'10175_LAYOUT_20',10163,0,31),
 (506,10154,'20',4,'10175_LAYOUT_20',10170,0,1),
 (240,10154,'23',1,'10154',10164,0,2),
 (241,10154,'23',1,'10154',10165,0,2),
 (70,10154,'23',2,'10189',10165,0,1),
 (125,10154,'25',2,'10189',10164,0,2),
 (95,10154,'25',2,'10189',10165,0,1),
 (1637,10154,'25',4,'10175_LAYOUT_25',10162,0,1),
 (1635,10154,'25',4,'10175_LAYOUT_25',10163,0,15),
 (1636,10154,'25',4,'10175_LAYOUT_25',10170,0,1),
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
 (1943,10154,'3',4,'12109_LAYOUT_3',10162,0,1),
 (1941,10154,'3',4,'12109_LAYOUT_3',10163,0,15),
 (1942,10154,'3',4,'12109_LAYOUT_3',10170,0,1),
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
 (205,10154,'48',1,'10154',10164,0,2),
 (206,10154,'48',1,'10154',10165,0,2),
 (51,10154,'48',2,'10189',10165,0,1),
 (1003,10154,'49',4,'10175_LAYOUT_49',10162,0,1),
 (1001,10154,'49',4,'10175_LAYOUT_49',10163,0,15),
 (1002,10154,'49',4,'10175_LAYOUT_49',10170,0,1),
 (1203,10154,'49',4,'11301_LAYOUT_49',10162,0,1),
 (1201,10154,'49',4,'11301_LAYOUT_49',10163,0,15),
 (1202,10154,'49',4,'11301_LAYOUT_49',10170,0,1),
 (1072,10154,'49',4,'11311_LAYOUT_49',10162,0,1),
 (1070,10154,'49',4,'11311_LAYOUT_49',10163,0,15),
 (1071,10154,'49',4,'11311_LAYOUT_49',10170,0,1),
 (947,10154,'49',4,'11322_LAYOUT_49',10162,0,1),
 (945,10154,'49',4,'11322_LAYOUT_49',10163,0,15),
 (946,10154,'49',4,'11322_LAYOUT_49',10170,0,1),
 (1627,10154,'49',4,'11337_LAYOUT_49',10162,0,1),
 (1625,10154,'49',4,'11337_LAYOUT_49',10163,0,15),
 (1626,10154,'49',4,'11337_LAYOUT_49',10170,0,1),
 (1621,10154,'49',4,'11907_LAYOUT_49',10162,0,1),
 (1619,10154,'49',4,'11907_LAYOUT_49',10163,0,15),
 (1620,10154,'49',4,'11907_LAYOUT_49',10170,0,1),
 (1888,10154,'49',4,'12026_LAYOUT_49',10162,0,1),
 (1886,10154,'49',4,'12026_LAYOUT_49',10163,0,15),
 (1887,10154,'49',4,'12026_LAYOUT_49',10170,0,1),
 (2141,10154,'49',4,'12027_LAYOUT_49',10162,0,1),
 (2139,10154,'49',4,'12027_LAYOUT_49',10163,0,15),
 (2140,10154,'49',4,'12027_LAYOUT_49',10170,0,1),
 (2159,10154,'49',4,'12028_LAYOUT_49',10162,0,1),
 (2157,10154,'49',4,'12028_LAYOUT_49',10163,0,15),
 (2158,10154,'49',4,'12028_LAYOUT_49',10170,0,1),
 (1928,10154,'49',4,'12029_LAYOUT_49',10162,0,1),
 (1926,10154,'49',4,'12029_LAYOUT_49',10163,0,15),
 (1927,10154,'49',4,'12029_LAYOUT_49',10170,0,1),
 (1769,10154,'49',4,'12048_LAYOUT_49',10162,0,1),
 (1767,10154,'49',4,'12048_LAYOUT_49',10163,0,15),
 (1768,10154,'49',4,'12048_LAYOUT_49',10170,0,1),
 (1754,10154,'49',4,'12054_LAYOUT_49',10162,0,1),
 (1752,10154,'49',4,'12054_LAYOUT_49',10163,0,15),
 (1753,10154,'49',4,'12054_LAYOUT_49',10170,0,1),
 (1832,10154,'49',4,'12059_LAYOUT_49',10162,0,1),
 (1830,10154,'49',4,'12059_LAYOUT_49',10163,0,15),
 (1831,10154,'49',4,'12059_LAYOUT_49',10170,0,1),
 (1949,10154,'49',4,'12109_LAYOUT_49',10162,0,1),
 (1947,10154,'49',4,'12109_LAYOUT_49',10163,0,15),
 (1948,10154,'49',4,'12109_LAYOUT_49',10170,0,1),
 (2198,10154,'49',4,'12339_LAYOUT_49',10162,0,1),
 (2196,10154,'49',4,'12339_LAYOUT_49',10163,0,15),
 (2197,10154,'49',4,'12339_LAYOUT_49',10170,0,1),
 (2504,10154,'49',4,'12358_LAYOUT_49',10162,0,1),
 (2502,10154,'49',4,'12358_LAYOUT_49',10163,0,15),
 (2503,10154,'49',4,'12358_LAYOUT_49',10170,0,1),
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
 (1885,10154,'56',4,'12026_LAYOUT_56_INSTANCE_06t375oPopYU',10162,0,1),
 (1883,10154,'56',4,'12026_LAYOUT_56_INSTANCE_06t375oPopYU',10163,0,15),
 (1884,10154,'56',4,'12026_LAYOUT_56_INSTANCE_06t375oPopYU',10170,0,1),
 (183,10154,'58',1,'10154',10162,0,2),
 (184,10154,'58',1,'10154',10164,0,2),
 (185,10154,'58',1,'10154',10165,0,2),
 (41,10154,'58',2,'10189',10165,0,1),
 (1085,10154,'58',4,'11301_LAYOUT_58',10162,0,1),
 (1083,10154,'58',4,'11301_LAYOUT_58',10163,0,15),
 (1084,10154,'58',4,'11301_LAYOUT_58',10170,0,1),
 (985,10154,'58',4,'11311_LAYOUT_58',10162,0,1),
 (983,10154,'58',4,'11311_LAYOUT_58',10163,0,15),
 (984,10154,'58',4,'11311_LAYOUT_58',10170,0,1),
 (988,10154,'58',4,'11316_LAYOUT_58',10162,0,1),
 (986,10154,'58',4,'11316_LAYOUT_58',10163,0,15),
 (987,10154,'58',4,'11316_LAYOUT_58',10170,0,1),
 (1039,10154,'58',4,'11322_LAYOUT_58',10162,0,1),
 (1037,10154,'58',4,'11322_LAYOUT_58',10163,0,15),
 (1038,10154,'58',4,'11322_LAYOUT_58',10170,0,1),
 (1624,10154,'58',4,'11327_LAYOUT_58',10162,0,1),
 (1622,10154,'58',4,'11327_LAYOUT_58',10163,0,15),
 (1623,10154,'58',4,'11327_LAYOUT_58',10170,0,1),
 (1045,10154,'58',4,'11332_LAYOUT_58',10162,0,1),
 (1043,10154,'58',4,'11332_LAYOUT_58',10163,0,15),
 (1044,10154,'58',4,'11332_LAYOUT_58',10170,0,1),
 (1066,10154,'58',4,'11337_LAYOUT_58',10162,0,1),
 (1064,10154,'58',4,'11337_LAYOUT_58',10163,0,15),
 (1065,10154,'58',4,'11337_LAYOUT_58',10170,0,1),
 (1829,10154,'58',4,'11902_LAYOUT_58',10162,0,1),
 (1827,10154,'58',4,'11902_LAYOUT_58',10163,0,15),
 (1828,10154,'58',4,'11902_LAYOUT_58',10170,0,1),
 (1618,10154,'58',4,'11907_LAYOUT_58',10162,0,1),
 (1616,10154,'58',4,'11907_LAYOUT_58',10163,0,15),
 (1617,10154,'58',4,'11907_LAYOUT_58',10170,0,1),
 (2116,10154,'58',4,'12026_LAYOUT_58',10162,0,1),
 (2114,10154,'58',4,'12026_LAYOUT_58',10163,0,15),
 (2115,10154,'58',4,'12026_LAYOUT_58',10170,0,1),
 (2138,10154,'58',4,'12027_LAYOUT_58',10162,0,1),
 (2136,10154,'58',4,'12027_LAYOUT_58',10163,0,15),
 (2137,10154,'58',4,'12027_LAYOUT_58',10170,0,1),
 (2147,10154,'58',4,'12028_LAYOUT_58',10162,0,1),
 (2145,10154,'58',4,'12028_LAYOUT_58',10163,0,15),
 (2146,10154,'58',4,'12028_LAYOUT_58',10170,0,1),
 (2219,10154,'58',4,'12029_LAYOUT_58',10162,0,1),
 (2217,10154,'58',4,'12029_LAYOUT_58',10163,0,15),
 (2218,10154,'58',4,'12029_LAYOUT_58',10170,0,1),
 (1766,10154,'58',4,'12048_LAYOUT_58',10162,0,1),
 (1764,10154,'58',4,'12048_LAYOUT_58',10163,0,15),
 (1765,10154,'58',4,'12048_LAYOUT_58',10170,0,1),
 (1751,10154,'58',4,'12054_LAYOUT_58',10162,0,1),
 (1749,10154,'58',4,'12054_LAYOUT_58',10163,0,15),
 (1750,10154,'58',4,'12054_LAYOUT_58',10170,0,1),
 (1805,10154,'58',4,'12059_LAYOUT_58',10162,0,1),
 (1803,10154,'58',4,'12059_LAYOUT_58',10163,0,15),
 (1804,10154,'58',4,'12059_LAYOUT_58',10170,0,1),
 (1817,10154,'58',4,'12064_LAYOUT_58',10162,0,1),
 (1815,10154,'58',4,'12064_LAYOUT_58',10163,0,15),
 (1816,10154,'58',4,'12064_LAYOUT_58',10170,0,1),
 (2195,10154,'58',4,'12339_LAYOUT_58',10162,0,1),
 (2193,10154,'58',4,'12339_LAYOUT_58',10163,0,15),
 (2194,10154,'58',4,'12339_LAYOUT_58',10170,0,1),
 (2183,10154,'58',4,'12344_LAYOUT_58',10162,0,1),
 (2181,10154,'58',4,'12344_LAYOUT_58',10163,0,15),
 (2182,10154,'58',4,'12344_LAYOUT_58',10170,0,1),
 (2213,10154,'58',4,'12358_LAYOUT_58',10162,0,1),
 (2211,10154,'58',4,'12358_LAYOUT_58',10163,0,15),
 (2212,10154,'58',4,'12358_LAYOUT_58',10170,0,1),
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
 (1990,10154,'8',4,'10175_LAYOUT_8',10162,0,1),
 (1988,10154,'8',4,'10175_LAYOUT_8',10163,0,31),
 (1989,10154,'8',4,'10175_LAYOUT_8',10170,0,1),
 (266,10154,'82',1,'10154',10162,0,2),
 (267,10154,'82',1,'10154',10164,0,2),
 (268,10154,'82',1,'10154',10165,0,2),
 (83,10154,'82',2,'10189',10165,0,1),
 (1937,10154,'82',4,'12109_LAYOUT_82',10162,0,1),
 (1935,10154,'82',4,'12109_LAYOUT_82',10163,0,15),
 (1936,10154,'82',4,'12109_LAYOUT_82',10170,0,1),
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
 (2022,10154,'86',4,'10175_LAYOUT_86',10162,0,1),
 (2020,10154,'86',4,'10175_LAYOUT_86',10163,0,15),
 (2021,10154,'86',4,'10175_LAYOUT_86',10170,0,1),
 (2104,10154,'86',4,'11907_LAYOUT_86',10162,0,1),
 (2102,10154,'86',4,'11907_LAYOUT_86',10163,0,15),
 (2103,10154,'86',4,'11907_LAYOUT_86',10170,0,1),
 (1097,10154,'87',4,'11301_LAYOUT_87',10162,0,1),
 (1095,10154,'87',4,'11301_LAYOUT_87',10163,0,15),
 (1096,10154,'87',4,'11301_LAYOUT_87',10170,0,1),
 (1724,10154,'87',4,'11907_LAYOUT_87',10162,0,1),
 (1722,10154,'87',4,'11907_LAYOUT_87',10163,0,15),
 (1723,10154,'87',4,'11907_LAYOUT_87',10170,0,1),
 (2303,10154,'87',4,'12026_LAYOUT_87',10162,0,1),
 (2301,10154,'87',4,'12026_LAYOUT_87',10163,0,15),
 (2302,10154,'87',4,'12026_LAYOUT_87',10170,0,1),
 (1103,10154,'88',4,'10175_LAYOUT_88',10162,0,1),
 (1101,10154,'88',4,'10175_LAYOUT_88',10163,0,15),
 (1102,10154,'88',4,'10175_LAYOUT_88',10170,0,1),
 (1891,10154,'88',4,'12026_LAYOUT_88',10162,0,1),
 (1889,10154,'88',4,'12026_LAYOUT_88',10163,0,15),
 (1890,10154,'88',4,'12026_LAYOUT_88',10170,0,1),
 (2150,10154,'88',4,'12028_LAYOUT_88',10162,0,1),
 (2148,10154,'88',4,'12028_LAYOUT_88',10163,0,15),
 (2149,10154,'88',4,'12028_LAYOUT_88',10170,0,1),
 (255,10154,'9',1,'10154',10161,0,2),
 (77,10154,'9',2,'10189',10165,0,1),
 (2101,10154,'90',1,'10154',10162,0,1),
 (11,10154,'90',1,'10154',10165,0,16384),
 (189,10154,'97',1,'10154',10164,0,2),
 (190,10154,'97',1,'10154',10165,0,2),
 (43,10154,'97',2,'10189',10165,0,1),
 (136,10154,'98',1,'10154',10164,0,4),
 (137,10154,'98',1,'10154',10165,0,4),
 (110,10154,'98',2,'10189',10164,0,2),
 (12,10154,'98',2,'10189',10165,0,1),
 (1641,10154,'98',4,'10175_LAYOUT_98',10162,0,1),
 (1639,10154,'98',4,'10175_LAYOUT_98',10163,0,31),
 (1640,10154,'98',4,'10175_LAYOUT_98',10170,0,1),
 (122,10154,'99',2,'10189',10164,0,2),
 (74,10154,'99',2,'10189',10165,0,1),
 (1630,10154,'99',4,'10175_LAYOUT_99',10162,0,1),
 (1628,10154,'99',4,'10175_LAYOUT_99',10163,0,15),
 (1629,10154,'99',4,'10175_LAYOUT_99',10170,0,1),
 (2123,10154,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet',1,'10154',10161,0,2),
 (2124,10154,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet',1,'10154',10162,0,2),
 (2125,10154,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet',1,'10154',10164,0,2),
 (2126,10154,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet',1,'10154',10165,0,2),
 (2132,10154,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet',4,'11907_LAYOUT_BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet',10162,0,1),
 (2130,10154,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet',4,'11907_LAYOUT_BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet',10163,0,15),
 (2131,10154,'BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet',4,'11907_LAYOUT_BuscadorOfertaLaboral_WAR_BuscadorOfertaLaboralportlet',10170,0,1),
 (126,10154,'com.liferay.portal.model.Group',2,'10189',10164,0,4096),
 (1515,10154,'com.liferay.portal.model.Group',4,'11808',10163,0,2097151),
 (1520,10154,'com.liferay.portal.model.Group',4,'11816',10163,0,2097151),
 (1549,10154,'com.liferay.portal.model.Group',4,'11833',10163,0,2097151),
 (1551,10154,'com.liferay.portal.model.Group',4,'11840',10163,0,2097151),
 (1568,10154,'com.liferay.portal.model.Group',4,'11853',10163,0,2097151),
 (1570,10154,'com.liferay.portal.model.Group',4,'11860',10163,0,2097151),
 (1572,10154,'com.liferay.portal.model.Group',4,'11866',10163,0,2097151),
 (1574,10154,'com.liferay.portal.model.Group',4,'11872',10163,0,2097151),
 (1705,10154,'com.liferay.portal.model.Group',4,'12002',10163,0,2097151),
 (1855,10154,'com.liferay.portal.model.Group',4,'12103',10163,0,2097151),
 (107,10154,'com.liferay.portal.model.Layout',2,'10189',10165,0,1),
 (7,10154,'com.liferay.portal.model.Layout',4,'10175',10162,0,1),
 (5,10154,'com.liferay.portal.model.Layout',4,'10175',10163,10158,1023),
 (6,10154,'com.liferay.portal.model.Layout',4,'10175',10170,0,19),
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
 (903,10154,'com.liferay.portal.model.Layout',4,'11301',10162,0,1),
 (901,10154,'com.liferay.portal.model.Layout',4,'11301',10163,10196,1023),
 (902,10154,'com.liferay.portal.model.Layout',4,'11301',10170,0,19),
 (909,10154,'com.liferay.portal.model.Layout',4,'11311',10162,0,1),
 (907,10154,'com.liferay.portal.model.Layout',4,'11311',10163,10196,1023),
 (908,10154,'com.liferay.portal.model.Layout',4,'11311',10170,0,19),
 (912,10154,'com.liferay.portal.model.Layout',4,'11316',10162,0,1),
 (910,10154,'com.liferay.portal.model.Layout',4,'11316',10163,10196,1023),
 (911,10154,'com.liferay.portal.model.Layout',4,'11316',10170,0,19),
 (913,10154,'com.liferay.portal.model.Layout',4,'11322',10163,10196,1023),
 (914,10154,'com.liferay.portal.model.Layout',4,'11322',10170,0,19),
 (915,10154,'com.liferay.portal.model.Layout',4,'11327',10163,10196,1023),
 (916,10154,'com.liferay.portal.model.Layout',4,'11327',10170,0,19),
 (917,10154,'com.liferay.portal.model.Layout',4,'11332',10163,10196,1023),
 (918,10154,'com.liferay.portal.model.Layout',4,'11332',10170,0,19),
 (919,10154,'com.liferay.portal.model.Layout',4,'11337',10163,10196,1023),
 (920,10154,'com.liferay.portal.model.Layout',4,'11337',10170,0,19),
 (1603,10154,'com.liferay.portal.model.Layout',4,'11902',10162,0,1),
 (1601,10154,'com.liferay.portal.model.Layout',4,'11902',10163,10196,1023),
 (1602,10154,'com.liferay.portal.model.Layout',4,'11902',10170,0,19),
 (1606,10154,'com.liferay.portal.model.Layout',4,'11907',10162,0,1),
 (1604,10154,'com.liferay.portal.model.Layout',4,'11907',10163,10196,1023),
 (1605,10154,'com.liferay.portal.model.Layout',4,'11907',10170,0,19),
 (1712,10154,'com.liferay.portal.model.Layout',4,'12026',10162,0,1),
 (1710,10154,'com.liferay.portal.model.Layout',4,'12026',10163,10158,1023),
 (1711,10154,'com.liferay.portal.model.Layout',4,'12026',10170,0,19),
 (1715,10154,'com.liferay.portal.model.Layout',4,'12027',10162,0,1),
 (1713,10154,'com.liferay.portal.model.Layout',4,'12027',10163,10158,1023),
 (1714,10154,'com.liferay.portal.model.Layout',4,'12027',10170,0,19),
 (1718,10154,'com.liferay.portal.model.Layout',4,'12028',10162,0,1),
 (1716,10154,'com.liferay.portal.model.Layout',4,'12028',10163,10158,1023),
 (1717,10154,'com.liferay.portal.model.Layout',4,'12028',10170,0,19),
 (1721,10154,'com.liferay.portal.model.Layout',4,'12029',10162,0,1),
 (1719,10154,'com.liferay.portal.model.Layout',4,'12029',10163,10158,1023),
 (1720,10154,'com.liferay.portal.model.Layout',4,'12029',10170,0,19),
 (1730,10154,'com.liferay.portal.model.Layout',4,'12048',10162,0,1),
 (1728,10154,'com.liferay.portal.model.Layout',4,'12048',10163,10196,1023),
 (1729,10154,'com.liferay.portal.model.Layout',4,'12048',10170,0,19),
 (1733,10154,'com.liferay.portal.model.Layout',4,'12054',10162,0,1),
 (1731,10154,'com.liferay.portal.model.Layout',4,'12054',10163,10196,1023),
 (1732,10154,'com.liferay.portal.model.Layout',4,'12054',10170,0,19),
 (1736,10154,'com.liferay.portal.model.Layout',4,'12059',10162,0,1),
 (1734,10154,'com.liferay.portal.model.Layout',4,'12059',10163,10196,1023),
 (1735,10154,'com.liferay.portal.model.Layout',4,'12059',10170,0,19),
 (1739,10154,'com.liferay.portal.model.Layout',4,'12064',10162,0,1),
 (1737,10154,'com.liferay.portal.model.Layout',4,'12064',10163,10196,1023),
 (1738,10154,'com.liferay.portal.model.Layout',4,'12064',10170,0,19),
 (1861,10154,'com.liferay.portal.model.Layout',4,'12109',10162,0,1),
 (1859,10154,'com.liferay.portal.model.Layout',4,'12109',10163,10158,1023),
 (1860,10154,'com.liferay.portal.model.Layout',4,'12109',10170,0,19),
 (1864,10154,'com.liferay.portal.model.Layout',4,'12110',10162,0,1),
 (1862,10154,'com.liferay.portal.model.Layout',4,'12110',10163,10158,1023),
 (1863,10154,'com.liferay.portal.model.Layout',4,'12110',10170,0,19),
 (1867,10154,'com.liferay.portal.model.Layout',4,'12111',10162,0,1),
 (1865,10154,'com.liferay.portal.model.Layout',4,'12111',10163,10158,1023),
 (1866,10154,'com.liferay.portal.model.Layout',4,'12111',10170,0,19),
 (1870,10154,'com.liferay.portal.model.Layout',4,'12112',10162,0,1),
 (1868,10154,'com.liferay.portal.model.Layout',4,'12112',10163,10158,1023),
 (1869,10154,'com.liferay.portal.model.Layout',4,'12112',10170,0,19),
 (2168,10154,'com.liferay.portal.model.Layout',4,'12339',10162,0,1),
 (2166,10154,'com.liferay.portal.model.Layout',4,'12339',10163,10196,1023),
 (2167,10154,'com.liferay.portal.model.Layout',4,'12339',10170,0,19),
 (2171,10154,'com.liferay.portal.model.Layout',4,'12344',10162,0,1),
 (2169,10154,'com.liferay.portal.model.Layout',4,'12344',10163,10196,1023),
 (2170,10154,'com.liferay.portal.model.Layout',4,'12344',10170,0,19),
 (2201,10154,'com.liferay.portal.model.Layout',4,'12358',10162,0,1),
 (2199,10154,'com.liferay.portal.model.Layout',4,'12358',10163,10196,1023),
 (2200,10154,'com.liferay.portal.model.Layout',4,'12358',10170,0,19),
 (316,10154,'com.liferay.portal.model.LayoutPrototype',4,'10309',10163,10158,15),
 (330,10154,'com.liferay.portal.model.LayoutPrototype',4,'10319',10163,10158,15),
 (345,10154,'com.liferay.portal.model.LayoutPrototype',4,'10328',10163,10158,15),
 (358,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10337',10163,10158,15),
 (371,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10363',10163,10158,15),
 (1516,10154,'com.liferay.portal.model.Organization',4,'11807',10163,10196,511),
 (1521,10154,'com.liferay.portal.model.Organization',4,'11815',10163,10196,511),
 (1550,10154,'com.liferay.portal.model.Organization',4,'11832',10163,10196,511),
 (1552,10154,'com.liferay.portal.model.Organization',4,'11839',10163,10196,511),
 (1569,10154,'com.liferay.portal.model.Organization',4,'11852',10163,10196,511),
 (1571,10154,'com.liferay.portal.model.Organization',4,'11859',10163,10196,511),
 (1573,10154,'com.liferay.portal.model.Organization',4,'11865',10163,10196,511),
 (1575,10154,'com.liferay.portal.model.Organization',4,'11871',10163,10196,511),
 (1407,10154,'com.liferay.portal.model.Role',4,'11707',10163,10196,127),
 (1576,10154,'com.liferay.portal.model.Role',4,'11879',10163,10196,127),
 (135,10154,'com.liferay.portal.model.User',4,'10196',10163,10196,31),
 (2401,10154,'com.liferay.portal.model.User',4,'12501',10163,12501,31),
 (2501,10154,'com.liferay.portal.model.User',4,'12601',10163,12601,31),
 (127,10154,'com.liferay.portlet.asset',2,'10189',10164,0,30),
 (1631,10154,'com.liferay.portlet.asset',4,'10180',10163,0,30),
 (1998,10154,'com.liferay.portlet.asset.model.AssetCategory',4,'12241',10163,10196,31),
 (1999,10154,'com.liferay.portlet.asset.model.AssetCategory',4,'12241',10170,0,3),
 (2000,10154,'com.liferay.portlet.asset.model.AssetCategory',4,'12242',10163,10196,31),
 (2001,10154,'com.liferay.portlet.asset.model.AssetCategory',4,'12242',10170,0,3),
 (2002,10154,'com.liferay.portlet.asset.model.AssetCategory',4,'12243',10163,10196,31),
 (2003,10154,'com.liferay.portlet.asset.model.AssetCategory',4,'12243',10170,0,3),
 (1519,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11814',10162,0,1),
 (1517,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11814',10163,10196,15),
 (1518,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11814',10165,0,1),
 (1524,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11822',10162,0,1),
 (1522,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11822',10163,10196,15),
 (1523,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11822',10165,0,1),
 (1527,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11823',10162,0,1),
 (1525,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11823',10163,10196,15),
 (1526,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11823',10165,0,1),
 (1530,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11824',10162,0,1),
 (1528,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11824',10163,10196,15),
 (1529,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11824',10165,0,1),
 (1533,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11825',10162,0,1),
 (1531,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11825',10163,10196,15),
 (1532,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11825',10165,0,1),
 (1536,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11826',10162,0,1),
 (1534,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11826',10163,10196,15),
 (1535,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11826',10165,0,1),
 (1539,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11827',10162,0,1),
 (1537,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11827',10163,10196,15),
 (1538,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11827',10165,0,1),
 (1542,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11828',10162,0,1),
 (1540,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11828',10163,10196,15),
 (1541,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11828',10165,0,1),
 (1545,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11829',10162,0,1),
 (1543,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11829',10163,10196,15),
 (1544,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11829',10165,0,1),
 (1548,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11831',10162,0,1),
 (1546,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11831',10163,10196,15),
 (1547,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11831',10165,0,1),
 (1555,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11846',10162,0,1),
 (1553,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11846',10163,10196,15),
 (1554,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11846',10165,0,1),
 (1558,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11847',10162,0,1),
 (1556,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11847',10163,10196,15),
 (1557,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11847',10165,0,1),
 (1561,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11848',10162,0,1),
 (1559,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11848',10163,10196,15),
 (1560,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11848',10165,0,1),
 (1564,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11849',10162,0,1),
 (1562,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11849',10163,10196,15),
 (1563,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11849',10165,0,1),
 (1567,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11850',10162,0,1),
 (1565,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11850',10163,10196,15),
 (1566,10154,'com.liferay.portlet.asset.model.AssetTag',4,'11850',10165,0,1),
 (1972,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12159',10162,0,1),
 (1970,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12159',10163,10196,15),
 (1971,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12159',10170,0,1),
 (1982,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12215',10162,0,1),
 (1980,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12215',10163,10196,15),
 (1981,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12215',10170,0,1),
 (1985,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12216',10162,0,1),
 (1983,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12216',10163,10196,15),
 (1984,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12216',10170,0,1),
 (2008,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12254',10162,0,1),
 (2006,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12254',10163,10196,15),
 (2007,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12254',10170,0,1),
 (2013,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12267',10162,0,1),
 (2011,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12267',10163,10196,15),
 (2012,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12267',10170,0,1),
 (2016,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12268',10162,0,1),
 (2014,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12268',10163,10196,15),
 (2015,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12268',10170,0,1),
 (2019,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12269',10162,0,1),
 (2017,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12269',10163,10196,15),
 (2018,10154,'com.liferay.portlet.asset.model.AssetTag',4,'12269',10170,0,1),
 (319,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10316',10163,10158,15),
 (1706,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'12023',10163,10158,15),
 (1709,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'12024',10162,0,1),
 (1707,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'12024',10163,10158,15),
 (1708,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'12024',10170,0,1),
 (1858,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'12108',10162,0,1),
 (1856,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'12108',10163,10158,15),
 (1857,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'12108',10170,0,1),
 (1979,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'12207',10163,10158,15),
 (1996,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'12240',10163,10196,15),
 (1997,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'12240',10170,0,1),
 (128,10154,'com.liferay.portlet.blogs',2,'10189',10164,0,14),
 (108,10154,'com.liferay.portlet.blogs',2,'10189',10165,0,14),
 (323,10154,'com.liferay.portlet.blogs',4,'10310',10163,0,14),
 (129,10154,'com.liferay.portlet.bookmarks',2,'10189',10164,0,15),
 (130,10154,'com.liferay.portlet.calendar',2,'10189',10164,0,14),
 (109,10154,'com.liferay.portlet.calendar',2,'10189',10165,0,14),
 (1991,10154,'com.liferay.portlet.calendar',4,'10180',10163,0,14),
 (1027,10154,'com.liferay.portlet.calendar',4,'10198',10163,0,14),
 (1907,10154,'com.liferay.portlet.calendar',4,'12002',10163,0,14),
 (2032,10154,'com.liferay.portlet.documentlibrary',1,'10154',10162,0,1),
 (131,10154,'com.liferay.portlet.documentlibrary',2,'10189',10164,0,511),
 (510,10154,'com.liferay.portlet.documentlibrary',4,'10180',10162,0,1),
 (508,10154,'com.liferay.portlet.documentlibrary',4,'10180',10163,0,511),
 (509,10154,'com.liferay.portlet.documentlibrary',4,'10180',10170,0,75),
 (1879,10154,'com.liferay.portlet.documentlibrary',4,'12002',10162,0,1),
 (1877,10154,'com.liferay.portlet.documentlibrary',4,'12002',10163,0,511),
 (1878,10154,'com.liferay.portlet.documentlibrary',4,'12002',10170,0,75),
 (1876,10154,'com.liferay.portlet.documentlibrary',4,'12103',10162,0,1),
 (1874,10154,'com.liferay.portlet.documentlibrary',4,'12103',10163,0,511),
 (1875,10154,'com.liferay.portlet.documentlibrary',4,'12103',10170,0,75),
 (2038,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',1,'10154',10162,0,1),
 (602,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10801',10162,0,3),
 (601,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10801',10163,10158,127),
 (604,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10809',10162,0,3),
 (603,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10809',10163,10158,127),
 (606,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10818',10162,0,3),
 (605,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10818',10163,10158,127),
 (608,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10826',10162,0,3),
 (607,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10826',10163,10158,127),
 (610,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10837',10162,0,3),
 (609,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10837',10163,10158,127),
 (612,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10849',10162,0,3),
 (611,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10849',10163,10158,127),
 (614,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10861',10162,0,3),
 (613,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10861',10163,10158,127),
 (616,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10873',10162,0,3),
 (615,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10873',10163,10158,127),
 (618,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10885',10162,0,3),
 (617,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10885',10163,10158,127),
 (620,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10897',10162,0,3),
 (619,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10897',10163,10158,127),
 (622,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10910',10162,0,3),
 (621,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10910',10163,10158,127),
 (624,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10922',10162,0,3),
 (623,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10922',10163,10158,127),
 (626,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10937',10162,0,3),
 (625,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10937',10163,10158,127),
 (1968,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'12156',10163,10196,127),
 (1969,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'12156',10170,0,3),
 (1973,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'12166',10163,10196,127),
 (1974,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'12166',10170,0,3),
 (1975,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'12175',10163,10196,127),
 (1976,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'12175',10170,0,3),
 (1977,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'12185',10163,10196,127),
 (1978,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'12185',10170,0,3),
 (2040,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',1,'10154',10162,0,1),
 (308,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10300',10163,10158,15),
 (310,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10302',10163,10158,15),
 (312,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10304',10163,10158,15),
 (314,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10306',10163,10158,15),
 (2039,10154,'com.liferay.portlet.documentlibrary.model.DLFileShortcut',1,'10154',10162,0,1),
 (2037,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',1,'10154',10162,0,1),
 (1962,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'12149',10163,10196,255),
 (1963,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'12149',10170,0,29),
 (1964,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'12151',10163,10196,255),
 (1965,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'12151',10170,0,29),
 (2029,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'12153',10162,0,1),
 (1966,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'12153',10163,10196,255),
 (2027,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'12153',10164,0,1),
 (2028,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'12153',10165,0,1),
 (1967,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'12153',10170,0,29),
 (2030,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'12153',11707,0,1),
 (2031,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'12153',11879,0,1),
 (1645,10154,'com.liferay.portlet.dynamicdatalists',4,'10180',10163,0,30),
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
 (393,10154,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10413',10163,0,15),
 (1402,10154,'com.liferay.portlet.expando.model.ExpandoColumn',4,'11704',10163,0,15),
 (504,10154,'com.liferay.portlet.journal',4,'10180',10163,0,126),
 (2033,10154,'com.liferay.portlet.journal.model.JournalArticle',1,'10154',10162,0,1),
 (2024,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'12228',10162,0,1),
 (1994,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'12228',10163,10196,255),
 (2023,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'12228',10164,0,1),
 (1995,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'12228',10170,0,3),
 (2025,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'12228',11707,0,1),
 (2026,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'12228',11879,0,1),
 (2004,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'12251',10163,10196,255),
 (2005,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'12251',10170,0,3),
 (2009,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'12264',10163,10196,255),
 (2010,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'12264',10170,0,3),
 (2034,10154,'com.liferay.portlet.journal.model.JournalFeed',1,'10154',10162,0,1),
 (2035,10154,'com.liferay.portlet.journal.model.JournalStructure',1,'10154',10162,0,1),
 (424,10154,'com.liferay.portlet.journal.model.JournalStructure',4,'10587',10162,0,1),
 (423,10154,'com.liferay.portlet.journal.model.JournalStructure',4,'10587',10163,10158,15),
 (630,10154,'com.liferay.portlet.journal.model.JournalStructure',4,'10966',10162,0,1),
 (629,10154,'com.liferay.portlet.journal.model.JournalStructure',4,'10966',10163,10158,15),
 (1986,10154,'com.liferay.portlet.journal.model.JournalStructure',4,'12220',10163,10196,15),
 (1987,10154,'com.liferay.portlet.journal.model.JournalStructure',4,'12220',10170,0,1),
 (2036,10154,'com.liferay.portlet.journal.model.JournalTemplate',1,'10154',10162,0,1),
 (426,10154,'com.liferay.portlet.journal.model.JournalTemplate',4,'10589',10162,0,1),
 (425,10154,'com.liferay.portlet.journal.model.JournalTemplate',4,'10589',10163,10158,15),
 (632,10154,'com.liferay.portlet.journal.model.JournalTemplate',4,'10968',10162,0,1),
 (631,10154,'com.liferay.portlet.journal.model.JournalTemplate',4,'10968',10163,10158,15),
 (1992,10154,'com.liferay.portlet.journal.model.JournalTemplate',4,'12224',10163,10196,15),
 (1993,10154,'com.liferay.portlet.journal.model.JournalTemplate',4,'12224',10170,0,1),
 (132,10154,'com.liferay.portlet.messageboards',2,'10189',10164,0,2047),
 (133,10154,'com.liferay.portlet.polls',2,'10189',10164,0,6),
 (1638,10154,'com.liferay.portlet.polls',4,'10180',10163,0,6),
 (707,10154,'com.liferay.portlet.softwarecatalog',4,'10180',10163,0,14),
 (134,10154,'com.liferay.portlet.wiki',2,'10189',10164,0,6),
 (804,10154,'com.liferay.portlet.wiki',4,'10180',10163,0,6),
 (351,10154,'com.liferay.portlet.wiki',4,'10329',10163,0,6),
 (807,10154,'com.liferay.portlet.wiki.model.WikiNode',4,'11202',10162,0,1),
 (805,10154,'com.liferay.portlet.wiki.model.WikiNode',4,'11202',10163,10158,255),
 (806,10154,'com.liferay.portlet.wiki.model.WikiNode',4,'11202',10170,0,71),
 (810,10154,'com.liferay.portlet.wiki.model.WikiPage',4,'11204',10162,0,3),
 (808,10154,'com.liferay.portlet.wiki.model.WikiPage',4,'11204',10163,10158,255),
 (809,10154,'com.liferay.portlet.wiki.model.WikiPage',4,'11204',10170,0,99),
 (636,10154,'Complemento_WAR_Complementoportlet',1,'10154',10161,0,2),
 (637,10154,'Complemento_WAR_Complementoportlet',1,'10154',10162,0,2),
 (638,10154,'Complemento_WAR_Complementoportlet',1,'10154',10164,0,2),
 (639,10154,'Complemento_WAR_Complementoportlet',1,'10154',10165,0,2),
 (1088,10154,'complemento_WAR_Complementoportlet',4,'11301_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (1086,10154,'complemento_WAR_Complementoportlet',4,'11301_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (1087,10154,'complemento_WAR_Complementoportlet',4,'11301_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (938,10154,'complemento_WAR_Complementoportlet',4,'11311_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (936,10154,'complemento_WAR_Complementoportlet',4,'11311_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (937,10154,'complemento_WAR_Complementoportlet',4,'11311_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (929,10154,'complemento_WAR_Complementoportlet',4,'11316_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (927,10154,'complemento_WAR_Complementoportlet',4,'11316_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (928,10154,'complemento_WAR_Complementoportlet',4,'11316_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (950,10154,'complemento_WAR_Complementoportlet',4,'11322_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (948,10154,'complemento_WAR_Complementoportlet',4,'11322_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (949,10154,'complemento_WAR_Complementoportlet',4,'11322_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (959,10154,'complemento_WAR_Complementoportlet',4,'11327_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (957,10154,'complemento_WAR_Complementoportlet',4,'11327_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (958,10154,'complemento_WAR_Complementoportlet',4,'11327_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (968,10154,'complemento_WAR_Complementoportlet',4,'11332_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (966,10154,'complemento_WAR_Complementoportlet',4,'11332_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (967,10154,'complemento_WAR_Complementoportlet',4,'11332_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (977,10154,'complemento_WAR_Complementoportlet',4,'11337_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (975,10154,'complemento_WAR_Complementoportlet',4,'11337_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (976,10154,'complemento_WAR_Complementoportlet',4,'11337_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (1826,10154,'complemento_WAR_Complementoportlet',4,'11902_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (1824,10154,'complemento_WAR_Complementoportlet',4,'11902_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (1825,10154,'complemento_WAR_Complementoportlet',4,'11902_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (1615,10154,'complemento_WAR_Complementoportlet',4,'11907_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (1613,10154,'complemento_WAR_Complementoportlet',4,'11907_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (1614,10154,'complemento_WAR_Complementoportlet',4,'11907_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (2113,10154,'complemento_WAR_Complementoportlet',4,'12026_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (2111,10154,'complemento_WAR_Complementoportlet',4,'12026_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (2112,10154,'complemento_WAR_Complementoportlet',4,'12026_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (2135,10154,'complemento_WAR_Complementoportlet',4,'12027_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (2133,10154,'complemento_WAR_Complementoportlet',4,'12027_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (2134,10154,'complemento_WAR_Complementoportlet',4,'12027_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (2144,10154,'complemento_WAR_Complementoportlet',4,'12028_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (2142,10154,'complemento_WAR_Complementoportlet',4,'12028_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15);
INSERT INTO `resourcepermission` (`resourcePermissionId`,`companyId`,`name`,`scope`,`primKey`,`roleId`,`ownerId`,`actionIds`) VALUES 
 (2143,10154,'complemento_WAR_Complementoportlet',4,'12028_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (2216,10154,'complemento_WAR_Complementoportlet',4,'12029_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (2214,10154,'complemento_WAR_Complementoportlet',4,'12029_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (2215,10154,'complemento_WAR_Complementoportlet',4,'12029_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (1763,10154,'complemento_WAR_Complementoportlet',4,'12048_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (1761,10154,'complemento_WAR_Complementoportlet',4,'12048_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (1762,10154,'complemento_WAR_Complementoportlet',4,'12048_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (1748,10154,'complemento_WAR_Complementoportlet',4,'12054_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (1746,10154,'complemento_WAR_Complementoportlet',4,'12054_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (1747,10154,'complemento_WAR_Complementoportlet',4,'12054_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (1802,10154,'complemento_WAR_Complementoportlet',4,'12059_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (1800,10154,'complemento_WAR_Complementoportlet',4,'12059_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (1801,10154,'complemento_WAR_Complementoportlet',4,'12059_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (1814,10154,'complemento_WAR_Complementoportlet',4,'12064_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (1812,10154,'complemento_WAR_Complementoportlet',4,'12064_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (1813,10154,'complemento_WAR_Complementoportlet',4,'12064_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (2192,10154,'complemento_WAR_Complementoportlet',4,'12339_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (2190,10154,'complemento_WAR_Complementoportlet',4,'12339_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (2191,10154,'complemento_WAR_Complementoportlet',4,'12339_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (2180,10154,'complemento_WAR_Complementoportlet',4,'12344_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (2178,10154,'complemento_WAR_Complementoportlet',4,'12344_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (2179,10154,'complemento_WAR_Complementoportlet',4,'12344_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (2210,10154,'complemento_WAR_Complementoportlet',4,'12358_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (2208,10154,'complemento_WAR_Complementoportlet',4,'12358_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (2209,10154,'complemento_WAR_Complementoportlet',4,'12358_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (1701,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',1,'10154',10161,0,2),
 (1702,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',1,'10154',10162,0,2),
 (1703,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',1,'10154',10164,0,2),
 (1704,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',1,'10154',10165,0,2),
 (2122,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',4,'11907_LAYOUT_ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',10162,0,1),
 (2120,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',4,'11907_LAYOUT_ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',10163,0,15),
 (2121,10154,'ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',4,'11907_LAYOUT_ListaOfertasLaboral_WAR_ListaOfertasLaboralportlet',10170,0,1),
 (1004,10154,'ListaSitios_WAR_ListaSitiosportlet',1,'10154',10161,0,2),
 (1005,10154,'ListaSitios_WAR_ListaSitiosportlet',1,'10154',10162,0,2),
 (1006,10154,'ListaSitios_WAR_ListaSitiosportlet',1,'10154',10164,0,2),
 (1007,10154,'ListaSitios_WAR_ListaSitiosportlet',1,'10154',10165,0,2),
 (1094,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11301_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10162,0,1),
 (1092,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11301_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10163,0,15),
 (1093,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11301_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10170,0,1),
 (1303,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11311_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10162,0,1),
 (1301,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11311_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10163,0,15),
 (1302,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11311_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10170,0,1),
 (1042,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11322_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10162,0,1),
 (1040,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11322_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10163,0,15),
 (1041,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11322_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10170,0,1),
 (1048,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11332_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10162,0,1),
 (1046,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11332_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10163,0,15),
 (1047,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11332_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10170,0,1),
 (1069,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11337_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10162,0,1),
 (1067,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11337_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10163,0,15),
 (1068,10154,'ListaSitios_WAR_ListaSitiosportlet',4,'11337_LAYOUT_ListaSitios_WAR_ListaSitiosportlet',10170,0,1),
 (1501,10154,'RECHITSS_WAR_RECHITSSportlet',1,'10154',10161,0,2),
 (1502,10154,'RECHITSS_WAR_RECHITSSportlet',1,'10154',10162,0,2),
 (1503,10154,'RECHITSS_WAR_RECHITSSportlet',1,'10154',10164,0,2),
 (1504,10154,'RECHITSS_WAR_RECHITSSportlet',1,'10154',10165,0,2),
 (1073,10154,'RegistrarUsuario_WAR_RegistrarUsuarioportlet',1,'10154',10161,0,2),
 (1074,10154,'RegistrarUsuario_WAR_RegistrarUsuarioportlet',1,'10154',10162,0,2),
 (1075,10154,'RegistrarUsuario_WAR_RegistrarUsuarioportlet',1,'10154',10164,0,2),
 (1076,10154,'RegistrarUsuario_WAR_RegistrarUsuarioportlet',1,'10154',10165,0,2),
 (1100,10154,'RegistrarUsuario_WAR_RegistrarUsuarioportlet',4,'11301_LAYOUT_RegistrarUsuario_WAR_RegistrarUsuarioportlet',10162,0,1),
 (1098,10154,'RegistrarUsuario_WAR_RegistrarUsuarioportlet',4,'11301_LAYOUT_RegistrarUsuario_WAR_RegistrarUsuarioportlet',10163,0,15),
 (1099,10154,'RegistrarUsuario_WAR_RegistrarUsuarioportlet',4,'11301_LAYOUT_RegistrarUsuario_WAR_RegistrarUsuarioportlet',10170,0,1),
 (1836,10154,'SliderHitss_WAR_SliderHitssportlet',1,'10154',10161,0,2),
 (1837,10154,'SliderHitss_WAR_SliderHitssportlet',1,'10154',10162,0,2),
 (1838,10154,'SliderHitss_WAR_SliderHitssportlet',1,'10154',10164,0,2),
 (1839,10154,'SliderHitss_WAR_SliderHitssportlet',1,'10154',10165,0,2),
 (2110,10154,'SliderHitss_WAR_SliderHitssportlet',4,'11907_LAYOUT_SliderHitss_WAR_SliderHitssportlet',10162,0,1),
 (2108,10154,'SliderHitss_WAR_SliderHitssportlet',4,'11907_LAYOUT_SliderHitss_WAR_SliderHitssportlet',10163,0,31),
 (2109,10154,'SliderHitss_WAR_SliderHitssportlet',4,'11907_LAYOUT_SliderHitss_WAR_SliderHitssportlet',10170,0,1),
 (1505,10154,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet',1,'10154',10161,0,2),
 (1506,10154,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet',1,'10154',10162,0,2),
 (1507,10154,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet',1,'10154',10164,0,2),
 (1508,10154,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet',1,'10154',10165,0,2);
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
 (11707,10154,10004,11707,'COORDINADOR DE RECURSOS HUMANOS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">COORDINADOR DE RECURSOS HUMANOS</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">COORDINADOR DE RECURSOS HUMANOS</Description></root>',1,''),
 (11879,10154,10004,11879,'POSTULANTE','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">POSTULANTE</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">POSTULANTE</Description></root>',1,'');
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
-- Definition of table `sample_foo`
--

DROP TABLE IF EXISTS `sample_foo`;
CREATE TABLE `sample_foo` (
  `fooId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `field1` varchar(75) DEFAULT NULL,
  `field2` tinyint(4) DEFAULT NULL,
  `field3` int(11) DEFAULT NULL,
  `field4` datetime DEFAULT NULL,
  `field5` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`fooId`),
  KEY `IX_40F44903` (`field2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_foo`
--

/*!40000 ALTER TABLE `sample_foo` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample_foo` ENABLE KEYS */;


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
 (10411,'Marketplace',1,1312562779947,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Marketplace_App (\n	uuid_ VARCHAR(75) null,\n	appId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	remoteAppId LONG,\n	version VARCHAR(75) null\n);\n\ncreate table Marketplace_Module (\n	uuid_ VARCHAR(75) null,\n	moduleId LONG not null primary key,\n	appId LONG,\n	contextName VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_865B7BD5 on Marketplace_App (companyId);\ncreate index IX_20F14D93 on Marketplace_App (remoteAppId);\ncreate index IX_3E667FE1 on Marketplace_App (uuid_);\n\ncreate index IX_7DC16D26 on Marketplace_Module (appId);\ncreate index IX_C6938724 on Marketplace_Module (appId, contextName);\ncreate index IX_F2F1E964 on Marketplace_Module (contextName);\ncreate index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>\n</data>'),
 (11802,'RECHITSS',1,1446007107394,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table RECHITSS_Foo (\n	fooId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	field1 VARCHAR(75) null,\n	field2 BOOLEAN,\n	field3 INTEGER,\n	field4 DATE null,\n	field5 VARCHAR(75) null\n);\n\ncreate table SAMPLE_Foo (\n	fooId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	field1 VARCHAR(75) null,\n	field2 BOOLEAN,\n	field3 INTEGER,\n	field4 DATE null,\n	field5 VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_27EC523C on RECHITSS_Foo (field2);\n\ncreate index IX_40F44903 on SAMPLE_Foo (field2);]]></indexes-sql>\n</data>');
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
 (101,10180,10154,10158,1445050265242,0,10010,10801,1,'{\"title\":\"welcome_bg_3.jpg\"}',0),
 (102,10180,10154,10158,1445050266158,0,10010,10809,1,'{\"title\":\"welcome_bg_11.jpg\"}',0),
 (103,10180,10154,10158,1445050266280,0,10010,10818,1,'{\"title\":\"welcome_bg_12.jpg\"}',0),
 (104,10180,10154,10158,1445050266869,0,10010,10826,1,'{\"title\":\"welcome_bg_10.png\"}',0),
 (105,10180,10154,10158,1445050266995,0,10010,10837,1,'{\"title\":\"welcome_bg_2.jpg\"}',0),
 (106,10180,10154,10158,1445050267098,0,10010,10849,1,'{\"title\":\"welcome_bg_9.jpg\"}',0),
 (107,10180,10154,10158,1445050267193,0,10010,10861,1,'{\"title\":\"welcome_bg_4.jpg\"}',0),
 (108,10180,10154,10158,1445050267300,0,10010,10873,1,'{\"title\":\"welcome_bg_6.jpg\"}',0),
 (109,10180,10154,10158,1445050267383,0,10010,10885,1,'{\"title\":\"welcome_bg_7.jpg\"}',0),
 (110,10180,10154,10158,1445050267461,0,10010,10897,1,'{\"title\":\"welcome_bg_5.jpg\"}',0),
 (111,10180,10154,10158,1445050267577,0,10010,10910,1,'{\"title\":\"welcome_bg_13.jpg\"}',0),
 (112,10180,10154,10158,1445050267665,0,10010,10922,1,'{\"title\":\"welcome_bg_1.jpg\"}',0),
 (113,10180,10154,10158,1445050267750,0,10010,10937,1,'{\"title\":\"welcome_bg_8.jpg\"}',0),
 (201,10180,10154,10158,1445118539019,0,10013,11204,1,'',0),
 (301,10180,10154,10196,1446236642888,0,10010,12156,1,'{\"title\":\"12153-NOC0JL.jpg\"}',0),
 (302,10180,10154,10196,1446236646218,0,10010,12166,1,'{\"title\":\"meeting_09.jpg\"}',0),
 (303,10180,10154,10196,1446236646938,0,10010,12175,1,'{\"title\":\"business silhouettes-150-01.jpg\"}',0),
 (304,10180,10154,10196,1446236649027,0,10010,12185,1,'{\"title\":\"04 150p-01.jpg\"}',0),
 (305,10180,10154,10196,1446238769236,0,10010,12185,2,'{\"title\":\"04 150p-01.jpg\"}',0);
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
INSERT INTO `ticket` (`ticketId`,`companyId`,`createDate`,`classNameId`,`classPK`,`key_`,`type_`,`extraInfo`,`expirationDate`) VALUES 
 (12155,10154,'2015-10-30 20:22:43',10005,10196,'49498842-71c7-4150-af46-6a31dbd44445',2,'','2015-10-30 20:53:32');
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
 ('cdc9ac1d-9545-42a6-a16a-c1529d5497aa',10158,10154,'2015-10-17 00:53:23','2015-10-17 00:53:23',1,10159,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,528f53719430814f22dbf509e0faa0c4,528f53719430814f22dbf509e0faa0c4','','',0,'10158','default@liferay.com',0,'',0,'es_ES','Pacific/Midway','Welcome!','','','','','','2015-10-17 00:53:23','',NULL,'',NULL,0,0,NULL,1,0,0),
 ('2bbf03e9-0788-4d9e-8ae1-03ee6f00956d',10196,10154,'2015-10-17 00:53:25','2015-10-28 20:37:58',0,10197,'qUqP5cyxm6YcTAhz05Hph5gvu9M=',1,0,'2015-10-17 00:59:30','e5d86c6f3672e52795891c3597f20de0,751da756639bc033b572ba2e7849b589,8f3d267131c99bf7ba6ade3481d748b4','','',0,'test','test@liferay.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Aadmin Admin!','','Admin','','Admin','','2015-11-01 05:53:43','127.0.0.1','2015-11-01 05:13:36','127.0.0.1',NULL,0,0,NULL,0,1,0),
 ('9bab6f79-293d-4735-9213-3ead1c08ce02',12501,10154,'2015-11-01 05:16:59','2015-11-01 05:16:59',0,12502,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,NULL,'','','',0,'delgadodcp','daniel1234_14@hotmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Danielle Delgado Cabrera!','','Danielle','','Delgado Cabrera','Desarrollador web',NULL,'',NULL,'',NULL,0,0,NULL,0,0,0),
 ('22092c35-8e92-458e-87ed-2d70cf36c32d',12601,10154,'2015-11-01 05:52:43','2015-11-01 05:52:43',0,12602,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,NULL,'','','',0,'delgadodcp2','daniel1234_114@hotmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Danielle Delgado Cabrera!','','Danielle','','Delgado Cabrera','Desarrollador web',NULL,'',NULL,'',NULL,0,0,NULL,0,0,0);
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
INSERT INTO `usergrouprole` (`userId`,`groupId`,`roleId`) VALUES 
 (10196,11808,10167),
 (10196,11816,10167),
 (10196,11833,10167),
 (10196,11840,10167),
 (10196,11853,10167),
 (10196,11860,10167),
 (10196,11866,10167),
 (10196,11872,10167),
 (10196,12002,10171),
 (10196,12103,10171);
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
 (10196,10180),
 (12501,10180),
 (12601,10180),
 (10196,12002),
 (10196,12103);
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
 (12501,10165),
 (12601,10165),
 (12501,11879),
 (12601,11879);
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
INSERT INTO `wikinode` (`uuid_`,`nodeId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`description`,`lastPostDate`) VALUES 
 ('95414119-0a66-4dc6-9204-841046a79b4b',11202,10180,10154,10158,'','2015-10-17 21:48:58','2015-10-17 21:48:58','Main','','2015-10-17 21:48:58');
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
INSERT INTO `wikipage` (`uuid_`,`pageId`,`resourcePrimKey`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`nodeId`,`title`,`version`,`minorEdit`,`content`,`summary`,`format`,`head`,`parentTitle`,`redirectTitle`,`status`,`statusByUserId`,`statusByUserName`,`statusDate`) VALUES 
 ('48d97312-0450-49c5-94cc-c29e8022be15',11203,11204,10180,10154,10158,'','2015-10-17 21:48:58','2015-10-17 21:48:58',11202,'FrontPage',1,1,'','New','creole',1,'','',0,10158,'','2015-10-17 21:48:59');
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
INSERT INTO `wikipageresource` (`uuid_`,`resourcePrimKey`,`nodeId`,`title`) VALUES 
 ('81ba76a5-a0e6-4ecd-9193-4c8ef6aa9696',11204,11202,'FrontPage');
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
