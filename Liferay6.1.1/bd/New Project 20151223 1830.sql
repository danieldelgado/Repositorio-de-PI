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
-- Create schema portal_db_prdh6
--

CREATE DATABASE IF NOT EXISTS portal_db_prdh6;
USE portal_db_prdh6;

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
 (10156,10154,0,'','2015-12-23 15:57:34','2015-12-23 15:57:34',0,'Portal de Postulantes','','','','','','','','');
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
 (10501,10154,10196,'general',0,0,1),
 (10502,10154,10196,'news',0,0,1),
 (10503,10154,10196,'test',0,0,1),
 (10958,10154,10952,'general',0,0,0),
 (10959,10154,10952,'news',0,0,0),
 (10960,10154,10952,'test',0,0,0),
 (10969,10154,10963,'general',0,0,0),
 (10970,10154,10963,'news',0,0,0),
 (10971,10154,10963,'test',0,0,0),
 (10978,10154,10972,'general',0,0,0),
 (10979,10154,10972,'news',0,0,0),
 (10980,10154,10972,'test',0,0,0),
 (10988,10154,10982,'general',0,0,0),
 (10989,10154,10982,'news',0,0,0),
 (10990,10154,10982,'test',0,0,0),
 (10997,10154,10991,'general',0,0,0),
 (10998,10154,10991,'news',0,0,0),
 (10999,10154,10991,'test',0,0,0),
 (11006,10154,11000,'general',0,0,0),
 (11007,10154,11000,'news',0,0,0),
 (11008,10154,11000,'test',0,0,0);
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
 (10178,10172,10154,10158,'','2015-12-23 15:57:35','2015-12-23 15:57:35',10117,10176,'5601aab1-a808-4c57-9cc0-51389e499088',0,0,NULL,NULL,NULL,NULL,'text/html','10175','','','','',0,0,0,0),
 (10186,10180,10154,10158,'','2015-12-23 15:57:36','2015-12-23 15:57:36',10117,10184,'d1747d7d-8db7-423f-8b86-952bcb63aa9c',0,0,NULL,NULL,NULL,NULL,'text/html','10183','','','','',0,0,0,0),
 (10201,10192,10154,10196,'Test Test','2015-12-23 15:57:38','2015-12-23 18:58:42',10005,10196,'9e3e6fa8-d6e6-47d8-80d5-43a359f5bba6',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),
 (10317,10310,10154,10158,'','2015-12-23 15:57:46','2015-12-23 15:57:46',10117,10314,'2506daa4-7d43-4ac7-8ed2-93573b0c628a',0,0,NULL,NULL,NULL,NULL,'text/html','10313','','','','',0,0,0,0),
 (10326,10320,10154,10158,'','2015-12-23 15:57:47','2015-12-23 15:57:47',10117,10324,'b6ed70cf-41e1-4980-b781-8e4df39c8b13',0,0,NULL,NULL,NULL,NULL,'text/html','10323','','','','',0,0,0,0),
 (10335,10329,10154,10158,'','2015-12-23 15:57:48','2015-12-23 15:57:48',10117,10333,'6a80892c-4582-441e-8cfb-1fdc673d7d86',0,0,NULL,NULL,NULL,NULL,'text/html','10332','','','','',0,0,0,0),
 (10349,10338,10154,10158,'','2015-12-23 15:57:50','2015-12-23 15:57:50',10117,10347,'023cf1cf-42e9-42ce-88cf-97a63cc93dd5',0,0,NULL,NULL,NULL,NULL,'text/html','10346','','','','',0,0,0,0),
 (10355,10338,10154,10158,'','2015-12-23 15:57:50','2015-12-23 15:57:50',10117,10353,'0e076a15-8aae-4c97-80f9-24d90684deb4',0,0,NULL,NULL,NULL,NULL,'text/html','10352','','','','',0,0,0,0),
 (10361,10338,10154,10158,'','2015-12-23 15:57:51','2015-12-23 15:57:51',10117,10359,'accc0976-3d23-4b95-b2dd-aa384ef64551',0,0,NULL,NULL,NULL,NULL,'text/html','10358','','','','',0,0,0,0),
 (10375,10364,10154,10158,'','2015-12-23 15:57:52','2015-12-23 15:57:52',10117,10373,'f5e09eba-b1ac-4d81-919e-4d9e55ca2708',0,0,NULL,NULL,NULL,NULL,'text/html','10372','','','','',0,0,0,0),
 (10383,10364,10154,10158,'','2015-12-23 15:57:52','2015-12-23 15:57:52',10117,10381,'028a63da-6910-4bf9-8ec0-f579f08de551',0,0,NULL,NULL,NULL,NULL,'text/html','10380','','','','',0,0,0,0),
 (10389,10364,10154,10158,'','2015-12-23 15:57:53','2015-12-23 15:57:53',10117,10387,'d6f87d57-0e7e-48f7-8b51-9b1b04c4f553',0,0,NULL,NULL,NULL,NULL,'text/html','10386','','','','',0,0,0,0),
 (10395,10364,10154,10158,'','2015-12-23 15:57:53','2015-12-23 15:57:53',10117,10393,'96f86112-7363-4643-9c94-128bc89b033f',0,0,NULL,NULL,NULL,NULL,'text/html','10392','','','','',0,0,0,0),
 (10507,10180,10154,10158,'','2015-12-23 16:22:43','2015-12-23 16:22:43',10010,10505,'37dc4d0b-a58e-4622-ae38-14e058bdc539',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_3.jpg','','','','',0,0,0,0),
 (10510,10180,10154,10158,'','2015-12-23 16:22:46','2015-12-23 16:22:46',10117,10508,'9fe76175-7042-4fbd-8c62-795e21a5abb3',0,0,NULL,NULL,NULL,NULL,'text/html','10505','','','','',0,0,0,0),
 (10516,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10010,10513,'ea1d2982-ec47-468e-9f4f-36bfa888f8e1',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_11.jpg','','','','',0,0,0,0),
 (10519,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10117,10517,'ffc3eac4-eea9-40dd-b0e4-10c2c7de9245',0,0,NULL,NULL,NULL,NULL,'text/html','10513','','','','',0,0,0,0),
 (10525,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10010,10522,'82a10049-5891-4fd1-b949-1fea51e1f3f6',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_12.jpg','','','','',0,0,0,0),
 (10529,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10117,10526,'2fc3b3b2-df5e-4974-9ac8-f2fb12320089',0,0,NULL,NULL,NULL,NULL,'text/html','10522','','','','',0,0,0,0),
 (10535,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10010,10533,'37b22196-5e0d-4faa-ba6e-d591beabcfce',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_bg_10.png','','','','',0,0,0,0),
 (10538,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10117,10536,'17ba40c5-4557-4987-871f-88972d98b810',0,0,NULL,NULL,NULL,NULL,'text/html','10533','','','','',0,0,0,0),
 (10547,10180,10154,10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48',10010,10545,'7231641c-e1d9-4800-af46-9ccc5bc94824',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_2.jpg','','','','',0,0,0,0),
 (10550,10180,10154,10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48',10117,10548,'e1fa4c80-a823-4150-baed-b60e09607864',0,0,NULL,NULL,NULL,NULL,'text/html','10545','','','','',0,0,0,0),
 (10559,10180,10154,10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48',10010,10557,'afec99bd-0abc-45c8-a5ca-af6a887d1459',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_9.jpg','','','','',0,0,0,0),
 (10563,10180,10154,10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48',10117,10560,'c7dfdffe-1122-4eb3-abed-5f19a2c32aab',0,0,NULL,NULL,NULL,NULL,'text/html','10557','','','','',0,0,0,0),
 (10571,10180,10154,10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49',10010,10569,'349f079c-733e-4751-b40f-5eca4cbfe940',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_4.jpg','','','','',0,0,0,0),
 (10574,10180,10154,10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49',10117,10572,'7cb69cbf-22bf-445e-a64f-ec6dc65cf036',0,0,NULL,NULL,NULL,NULL,'text/html','10569','','','','',0,0,0,0),
 (10584,10180,10154,10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49',10010,10581,'d24fc8aa-ddd2-414e-bb5d-3e13c241394e',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_6.jpg','','','','',0,0,0,0),
 (10587,10180,10154,10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49',10117,10585,'ba7d051d-814e-4114-80d0-22533fc93e59',0,0,NULL,NULL,NULL,NULL,'text/html','10581','','','','',0,0,0,0),
 (10599,10180,10154,10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50',10010,10597,'21793b16-4499-44af-a22d-0703fce1d12a',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_7.jpg','','','','',0,0,0,0),
 (10602,10180,10154,10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50',10117,10600,'604ba661-5650-46a8-b103-da0da3676fbf',0,0,NULL,NULL,NULL,NULL,'text/html','10597','','','','',0,0,0,0),
 (10611,10180,10154,10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50',10010,10609,'17132a23-2be8-4d09-9e5e-19a748493b20',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_5.jpg','','','','',0,0,0,0),
 (10614,10180,10154,10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50',10117,10612,'c473e97c-381c-4199-8efd-2a416c8c7f50',0,0,NULL,NULL,NULL,NULL,'text/html','10609','','','','',0,0,0,0),
 (10624,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10010,10621,'079a311d-06ea-4838-8674-3254c98e24bd',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_13.jpg','','','','',0,0,0,0),
 (10628,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10117,10625,'0816be80-ae74-4210-96ee-d63b0e19c940',0,0,NULL,NULL,NULL,NULL,'text/html','10621','','','','',0,0,0,0),
 (10639,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10010,10634,'ed0d9831-1007-4766-972c-ecdb374be51d',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_1.jpg','','','','',0,0,0,0),
 (10642,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10117,10640,'cf4a7733-b0dc-41bc-8e33-a93ef2478ad5',0,0,NULL,NULL,NULL,NULL,'text/html','10634','','','','',0,0,0,0),
 (10649,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10010,10645,'a8f97631-42fa-4464-bcec-d331a135e59b',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_8.jpg','','','','',0,0,0,0),
 (10654,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10117,10651,'751175e6-dbb4-43d5-9166-d96bd3164041',0,0,NULL,NULL,NULL,NULL,'text/html','10645','','','','',0,0,0,0),
 (10664,10180,10154,10158,'','2015-12-23 16:22:52','2015-12-23 16:22:52',10108,10662,'44f93131-96a4-4d72-b18a-cf55fd5f4458',0,1,NULL,NULL,'2010-02-01 00:00:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Who Is Using Liferay</Title></root>','','','','',0,0,0,0),
 (10667,10180,10154,10158,'','2015-12-23 16:22:52','2015-12-23 16:22:52',10117,10665,'9e8ee842-be0f-4449-bc55-d81576a94498',0,0,NULL,NULL,NULL,NULL,'text/html','10662','','','','',0,0,0,0),
 (10696,10690,10154,10196,'Test Test','2015-12-23 16:27:47','2015-12-23 16:27:47',10117,10694,'70bc9849-a84f-4193-99e0-07162761ce83',0,0,NULL,NULL,NULL,NULL,'text/html','10693','','','','',0,0,0,0),
 (10705,10699,10154,10196,'Test Test','2015-12-23 16:28:00','2015-12-23 16:28:00',10117,10703,'3bfa84f4-8082-4f27-89ee-2abf3c7e9349',0,0,NULL,NULL,NULL,NULL,'text/html','10702','','','','',0,0,0,0),
 (10714,10708,10154,10196,'Test Test','2015-12-23 16:28:11','2015-12-23 16:28:11',10117,10712,'8f4a3c52-62e5-493e-8f00-aecddd0c6f2e',0,0,NULL,NULL,NULL,NULL,'text/html','10711','','','','',0,0,0,0),
 (10723,10717,10154,10196,'Test Test','2015-12-23 16:29:23','2015-12-23 16:29:23',10117,10721,'10106732-fc02-4ac5-806f-2296fc2579e5',0,0,NULL,NULL,NULL,NULL,'text/html','10720','','','','',0,0,0,0),
 (10732,10726,10154,10196,'Test Test','2015-12-23 16:29:39','2015-12-23 16:29:39',10117,10730,'6b56ff4e-0749-42cd-a0b5-c9477d4962b0',0,0,NULL,NULL,NULL,NULL,'text/html','10729','','','','',0,0,0,0),
 (10741,10735,10154,10196,'Test Test','2015-12-23 16:29:50','2015-12-23 16:29:50',10117,10739,'69356a31-3d3f-4c7b-809d-1577eb00869f',0,0,NULL,NULL,NULL,NULL,'text/html','10738','','','','',0,0,0,0),
 (10746,10192,10154,10158,'','2015-12-23 16:34:38','2015-12-23 16:47:13',10001,10180,'',0,0,NULL,NULL,NULL,NULL,'','Portal de Postulantes','Portal de Postulantes','','','',0,0,0,0),
 (10772,10192,10154,10196,'Test Test','2015-12-23 16:35:57','2015-12-23 16:39:30',10001,10769,'',0,0,NULL,NULL,NULL,NULL,'','Portal de Recursos Humanos','Portal de Recursos Humanos','','','',0,0,0,0),
 (10804,10192,10154,10196,'Test Test','2015-12-23 16:38:01','2015-12-23 16:39:58',10001,10801,'',0,0,NULL,NULL,NULL,NULL,'','Portal Gerencial','Portal Gerencial','','','',0,0,0,0),
 (10841,10180,10154,10196,'Test Test','2015-12-23 16:53:56','2015-12-23 16:53:56',10117,10839,'0d58cc3a-c3e7-4a1d-a728-c8f4a7736dcf',0,0,NULL,NULL,NULL,NULL,'text/html','10838','','','','',0,0,0,0),
 (10855,10180,10154,10196,'Test Test','2015-12-23 16:57:15','2015-12-23 16:57:15',10117,10853,'93d138d8-75a3-4ffe-8c82-1fbeb247fd8f',0,0,NULL,NULL,NULL,NULL,'text/html','10852','','','','',0,0,0,0),
 (10861,10180,10154,10196,'Test Test','2015-12-23 16:57:42','2015-12-23 16:57:42',10117,10859,'8713d1a8-1bc4-49f4-9a6e-e614a46df056',0,0,NULL,NULL,NULL,NULL,'text/html','10858','','','','',0,0,0,0),
 (10867,10180,10154,10196,'Test Test','2015-12-23 16:58:14','2015-12-23 16:58:14',10117,10865,'3a338527-010b-4fa1-9683-9393ddb94c49',0,0,NULL,NULL,NULL,NULL,'text/html','10864','','','','',0,0,0,0),
 (10886,10180,10154,10196,'Test Test','2015-12-23 17:22:59','2015-12-23 17:22:59',10117,10884,'1362f806-6e3e-4a71-8d22-1d0a87bad005',0,0,NULL,NULL,NULL,NULL,'text/html','10883','','','','',0,0,0,0),
 (10895,10180,10154,10196,'Test Test','2015-12-23 17:25:42','2015-12-23 17:25:42',10117,10893,'b14d2443-246b-4433-9be6-dfbc1ccd42a5',0,0,NULL,NULL,NULL,NULL,'text/html','10892','','','','',0,0,0,0),
 (10920,10769,10154,10196,'Test Test','2015-12-23 18:39:29','2015-12-23 18:39:29',10117,10918,'816f593c-d6e1-4094-ac49-86394d8f8d75',0,0,NULL,NULL,NULL,NULL,'text/html','10917','','','','',0,0,0,0),
 (10925,10801,10154,10196,'Test Test','2015-12-23 18:40:53','2015-12-23 18:40:53',10117,10923,'9bae7d83-5a56-4873-ae15-7777fa392829',0,0,NULL,NULL,NULL,NULL,'text/html','10922','','','','',0,0,0,0),
 (10930,10801,10154,10196,'Test Test','2015-12-23 18:41:07','2015-12-23 18:41:07',10117,10928,'6c9402ed-11ba-4b6b-a63d-1747b93d0d84',0,0,NULL,NULL,NULL,NULL,'text/html','10927','','','','',0,0,0,0),
 (10935,10801,10154,10196,'Test Test','2015-12-23 18:41:18','2015-12-23 18:41:18',10117,10933,'d4f3264e-a059-4dc6-9f83-e6e281fc57a7',0,0,NULL,NULL,NULL,NULL,'text/html','10932','','','','',0,0,0,0),
 (10940,10769,10154,10196,'Test Test','2015-12-23 18:42:54','2015-12-23 18:42:54',10117,10938,'4149b875-6dcc-405a-8c66-a8df9875dc09',0,0,NULL,NULL,NULL,NULL,'text/html','10937','','','','',0,0,0,0),
 (10957,10192,10154,10196,'Test Test','2015-12-23 18:47:24','2015-12-23 18:59:41',10005,10952,'8b84dd8e-a601-4aff-88e1-46c9187fcc98',0,0,NULL,NULL,NULL,NULL,'','Danielle Delgado Cabrera','','','','',0,0,0,0),
 (10968,10192,10154,10196,'Test Test','2015-12-23 18:50:52','2015-12-23 19:00:44',10005,10963,'89570416-267b-43db-94ba-3b8a67f33776',0,0,NULL,NULL,NULL,NULL,'','Ivan Quiroz','','','','',0,0,0,0),
 (10977,10192,10154,10196,'Test Test','2015-12-23 18:52:01','2015-12-23 18:53:06',10005,10972,'1a6a6047-e900-4c28-a3f5-693fb1fdb6bf',0,0,NULL,NULL,NULL,NULL,'','Randiel Melgarejo','','','','',0,0,0,0),
 (10987,10192,10154,10196,'Test Test','2015-12-23 18:54:09','2015-12-23 18:54:30',10005,10982,'f8c47ac6-0f86-422a-890b-3cc43ef2135e',0,0,NULL,NULL,NULL,NULL,'','Monica Lopera','','','','',0,0,0,0),
 (10996,10192,10154,10196,'Test Test','2015-12-23 18:56:27','2015-12-23 18:56:58',10005,10991,'8bfda859-2ca8-44e8-ba80-0796df2c6a20',0,0,NULL,NULL,NULL,NULL,'','Arturo Varas','','','','',0,0,0,0),
 (11005,10192,10154,10196,'Test Test','2015-12-23 18:57:42','2015-12-23 18:58:00',10005,11000,'702c65f5-2757-4380-9f00-840e638c2c51',0,0,NULL,NULL,NULL,NULL,'','Katherine Dexter','','','','',0,0,0,0),
 (11016,10965,10154,10963,'Ivan Quiroz','2015-12-23 19:12:29','2015-12-23 19:12:29',10117,11014,'4f170903-77f2-4e04-aa21-92d3c1ecf9bc',0,0,NULL,NULL,NULL,NULL,'text/html','11013','','','','',0,0,0,0),
 (11025,10198,10154,10196,'Test Test','2015-12-23 19:18:55','2015-12-23 19:18:55',10117,11023,'67ceb8b2-8119-421e-94c1-f964ef945e3e',0,0,NULL,NULL,NULL,NULL,'text/html','11022','','','','',0,0,0,0);
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
 ('29d99488-a487-4c14-ad5f-3ebb3b6ce002',10316,10192,10154,10158,'','2015-12-23 15:57:46','2015-12-23 15:57:46','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','',''),
 ('a3cd9be0-144d-45e2-a136-917efe73c6cf',10761,10690,10154,10158,'','2015-12-23 16:34:41','2015-12-23 16:34:41','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Topic</Title></root>','',''),
 ('a3cd9be0-144d-45e2-a136-917efe73c6cf',10762,10180,10154,10158,'','2015-12-23 16:34:42','2015-12-23 16:34:42','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Topic</Title></root>','',''),
 ('07e002d9-0065-4fed-90a5-b4312d1b3f17',10788,10699,10154,10158,'','2015-12-23 16:35:58','2015-12-23 16:35:58','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Topic</Title></root>','',''),
 ('07e002d9-0065-4fed-90a5-b4312d1b3f17',10789,10769,10154,10158,'','2015-12-23 16:35:59','2015-12-23 16:36:27','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Topic</Title></root>','',''),
 ('1dc0a35e-e912-452a-a7ff-2ac5282b2dd3',10820,10708,10154,10158,'','2015-12-23 16:38:02','2015-12-23 16:38:02','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Topic</Title></root>','',''),
 ('1dc0a35e-e912-452a-a7ff-2ac5282b2dd3',10821,10801,10154,10158,'','2015-12-23 16:38:02','2015-12-23 16:38:15','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Topic</Title></root>','','');
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
 (10452,'com.liferay.marketplace.model.App'),
 (10453,'com.liferay.marketplace.model.Module'),
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
 (10504,'com.liferay.portal.repository.liferayrepository.LiferayRepository'),
 (10406,'com.liferay.portal.workflow.kaleo.model.KaleoAction'),
 (10407,'com.liferay.portal.workflow.kaleo.model.KaleoCondition'),
 (10408,'com.liferay.portal.workflow.kaleo.model.KaleoDefinition'),
 (10409,'com.liferay.portal.workflow.kaleo.model.KaleoInstance'),
 (10410,'com.liferay.portal.workflow.kaleo.model.KaleoInstanceToken'),
 (10411,'com.liferay.portal.workflow.kaleo.model.KaleoLog'),
 (10412,'com.liferay.portal.workflow.kaleo.model.KaleoNode'),
 (10413,'com.liferay.portal.workflow.kaleo.model.KaleoNotification'),
 (10414,'com.liferay.portal.workflow.kaleo.model.KaleoNotificationRecipient'),
 (10415,'com.liferay.portal.workflow.kaleo.model.KaleoTask'),
 (10416,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignment'),
 (10417,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignmentInstance'),
 (10418,'com.liferay.portal.workflow.kaleo.model.KaleoTaskInstanceToken'),
 (10419,'com.liferay.portal.workflow.kaleo.model.KaleoTimer'),
 (10420,'com.liferay.portal.workflow.kaleo.model.KaleoTimerInstanceToken'),
 (10421,'com.liferay.portal.workflow.kaleo.model.KaleoTransition'),
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
 (10154,10156,'liferay.com','rO0ABXNyABRqYXZhLnNlY3VyaXR5LktleVJlcL35T7OImqVDAgAETAAJYWxnb3JpdGhtdAASTGphdmEvbGFuZy9TdHJpbmc7WwAHZW5jb2RlZHQAAltCTAAGZm9ybWF0cQB+AAFMAAR0eXBldAAbTGphdmEvc2VjdXJpdHkvS2V5UmVwJFR5cGU7eHB0AANERVN1cgACW0Ks8xf4BghU4AIAAHhwAAAACPTsUQFSa4k9dAADUkFXfnIAGWphdmEuc2VjdXJpdHkuS2V5UmVwJFR5cGUAAAAAAAAAABIAAHhyAA5qYXZhLmxhbmcuRW51bQAAAAAAAAAAEgAAeHB0AAZTRUNSRVQ=','liferay.com','',0,0,0,1);
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
 (10159,10154,10158,'','2015-12-23 15:57:33','2015-12-23 15:57:33',10156,0,'','','',0,0,1,'2015-12-23 15:57:33','','','','','','','','','','','','','','',''),
 (10197,10154,10196,'','2015-12-23 15:57:37','2015-12-23 18:58:42',10156,0,'Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Administrador del Portal','',''),
 (10953,10154,10196,'Test Test','2015-12-23 18:47:24','2015-12-23 18:59:41',10156,0,'Danielle','','Delgado Cabrera',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Desarrollador Java Web','',''),
 (10964,10154,10196,'Test Test','2015-12-23 18:50:52','2015-12-23 19:00:44',10156,0,'Ivan','','Quiroz',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Coordinador de RRHH','',''),
 (10973,10154,10196,'Test Test','2015-12-23 18:52:01','2015-12-23 18:53:06',10156,0,'Randiel','','Melgarejo',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Gerente de Clientes','',''),
 (10983,10154,10196,'Test Test','2015-12-23 18:54:09','2015-12-23 18:54:30',10156,0,'Monica','','Lopera',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Gerente de Capital Humano','',''),
 (10992,10154,10196,'Test Test','2015-12-23 18:56:27','2015-12-23 18:56:58',10156,0,'Arturo','','Varas',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Gerente de Operaciones','',''),
 (11001,10154,10196,'Test Test','2015-12-23 18:57:42','2015-12-23 18:58:00',10156,0,'Katherine','','Dexter',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','Asistente de Recursos Humanos','','');
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
 ('com.liferay.counter.model.Counter',11200),
 ('com.liferay.portal.model.Layout#10172#true',1),
 ('com.liferay.portal.model.Layout#10180#false',5),
 ('com.liferay.portal.model.Layout#10180#true',3),
 ('com.liferay.portal.model.Layout#10198#true',2),
 ('com.liferay.portal.model.Layout#10310#true',1),
 ('com.liferay.portal.model.Layout#10320#true',1),
 ('com.liferay.portal.model.Layout#10329#true',1),
 ('com.liferay.portal.model.Layout#10338#true',3),
 ('com.liferay.portal.model.Layout#10364#true',4),
 ('com.liferay.portal.model.Layout#10690#true',1),
 ('com.liferay.portal.model.Layout#10699#true',1),
 ('com.liferay.portal.model.Layout#10708#true',1),
 ('com.liferay.portal.model.Layout#10717#true',1),
 ('com.liferay.portal.model.Layout#10726#true',1),
 ('com.liferay.portal.model.Layout#10735#true',1),
 ('com.liferay.portal.model.Layout#10769#false',1),
 ('com.liferay.portal.model.Layout#10769#true',3),
 ('com.liferay.portal.model.Layout#10801#false',4),
 ('com.liferay.portal.model.Layout#10801#true',4),
 ('com.liferay.portal.model.Layout#10965#true',1),
 ('com.liferay.portal.model.Permission',100),
 ('com.liferay.portal.model.Resource',100),
 ('com.liferay.portal.model.ResourceAction',1000),
 ('com.liferay.portal.model.ResourcePermission',1100),
 ('com.liferay.portlet.documentlibrary.model.DLFileEntry',300),
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
 ('84ad000e-fa61-497e-accb-c8157de6b574',10524,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('6dcfa830-ac9c-4a38-9e6c-10cd32c82b3c',10542,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('f20588cf-4d92-48c2-bdd7-550085f880e1',10554,10180,10154,10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('fc2f13c8-3586-497e-899e-100679a7a387',10565,10180,10154,10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[700]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[304]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8 8 8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('10efa8ed-c265-4a6c-aa98-6dd23c33a0a5',10578,10180,10154,10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('6b0fc060-f587-4bb9-8765-8cfa8ca012b6',10588,10180,10154,10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('3c6fd193-159d-4e4f-b7e3-c350c8625cd6',10594,10180,10154,10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('45e80d31-ef0d-4cae-9205-2a555768d247',10606,10180,10154,10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('cc3deaee-2985-441b-8cc5-303c82d86660',10618,10180,10154,10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('57174ad0-64e5-4870-b6bf-238b43847e1f',10627,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('03388ca0-d660-4fbb-bbc0-40eae6047666',10636,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('78d1bc0d-493d-42ed-b26f-7bdedbb8d2c6',10648,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),
 ('fdf6dd3f-984e-49e4-a860-ccc52c69eec4',10658,10180,10154,10158,'','2015-12-23 16:22:52','2015-12-23 16:22:52','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>');
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
 ('9d27b642-eefb-48f2-a42a-538a36a9c4b6',10528,10099,10524,10308),
 ('5bd1729c-f2f2-47a6-9dfc-feca30da9685',10543,10099,10542,10308),
 ('184749c5-939c-47f7-913d-8b2a27f0cbcc',10555,10099,10554,10308),
 ('feecab18-3d52-46f1-b6ee-95218233115e',10566,10099,10565,10308),
 ('0500b9f1-9fc2-4f55-80bb-5bfaea6c0d62',10579,10099,10578,10308),
 ('b922ac5a-1dac-4efe-a4ee-eedc7c101d92',10589,10099,10588,10308),
 ('d5817f69-9791-4a0b-a33b-fcae90d3634e',10595,10099,10594,10308),
 ('767154ad-05eb-4319-94c6-181cd97c0b2e',10607,10099,10606,10308),
 ('9c08b2fa-8c1e-499b-af10-3d46214c2c29',10619,10099,10618,10308),
 ('95a816d9-ad3e-43c8-9688-f6e8e4c7e6eb',10629,10099,10627,10308),
 ('8777115a-0778-45fa-81f9-41751cc0a18d',10637,10099,10636,10308),
 ('582a5f8a-0a39-43a0-be6e-f5a2583107ae',10650,10099,10648,10308),
 ('04e7c38e-0dd6-4eab-bf07-b04d9d55cc4d',10659,10099,10658,10308);
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
 ('21190fe3-035f-4ff5-9c1c-8a31bd3e4c75',10297,10192,10154,10158,'','2015-12-23 15:57:45','2015-12-23 15:57:45',10089,'Learning Module Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2235\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3212\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4115\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5069\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('1e403aa1-e507-4879-871d-5b0a8e64bc92',10298,10192,10154,10158,'','2015-12-23 15:57:45','2015-12-23 15:57:45',10089,'Marketing Campaign Theme Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2305\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3229\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4282\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('ee388669-bbe9-4737-8762-3c64e3488eca',10299,10192,10154,10158,'','2015-12-23 15:57:45','2015-12-23 15:57:45',10089,'Meeting Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date3054\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2217\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text4569\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text5638\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea6584\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea7502\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('c5db47a9-db26-43f7-beb4-eb3416fe474b',10301,10192,10154,10158,'','2015-12-23 15:57:45','2015-12-23 15:57:45',10089,'auto_3a621129-043d-47ce-824c-f36cdb5e88c1','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Legal Contracts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date18949\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date20127\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select10264\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4893\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text14822\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text17700\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2087\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('0ffc3b51-45de-4985-b355-af851564fef5',10303,10192,10154,10158,'','2015-12-23 15:57:45','2015-12-23 15:57:45',10089,'auto_b6182d45-1fd5-4b88-b2b3-a3c2916dbaa5','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"radio5547\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2033\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea2873\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('46d75381-fe2e-4029-a668-1ebb87d2e886',10305,10192,10154,10158,'','2015-12-23 15:57:45','2015-12-23 15:57:45',10089,'auto_7bd1bc65-1991-46be-9ad5-de428e35b75a','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"text2082\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2979\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('82a66378-08aa-411a-86d9-49405b8d8a0a',10307,10192,10154,10158,'','2015-12-23 15:57:45','2015-12-23 15:57:45',10089,'auto_d6060726-63b1-406c-b7f4-f38d23105a4f','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2890\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3864\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4831\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5929\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text1993\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),
 ('41db5307-1191-4997-97c8-98b0458dc310',10308,10192,10154,10158,'','2015-12-23 15:57:46','2015-12-23 15:57:46',10010,'TikaRawMetadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TikaRawMetadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TikaRawMetadata</Description></root>','<root available-locales=\"en_US\" default-locale=\"en_US\"><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element></root>','xml',0),
 ('00d7e841-b429-492c-a000-c905ec00039e',10399,10180,10154,10158,'','2015-12-23 15:57:53','2015-12-23 15:57:53',10097,'Contacts','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imService\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
INSERT INTO `ddmstructure` (`uuid_`,`structureId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`classNameId`,`structureKey`,`name`,`description`,`xsd`,`storageType`,`type_`) VALUES 
 ('b130747b-cec5-497a-81b4-9479ef25bfdf',10400,10180,10154,10158,'','2015-12-23 15:57:54','2015-12-23 15:57:54',10097,'Events','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"name\"><![CDATA[cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"name\"><![CDATA[description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[textarea]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"name\"><![CDATA[eventDate]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-date]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"name\"><![CDATA[eventName]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"name\"><![CDATA[eventTime]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"name\"><![CDATA[location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('9bfade61-f9b0-4094-9407-02d17624a346',10401,10180,10154,10158,'','2015-12-23 15:57:54','2015-12-23 15:57:54',10097,'Inventory','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"name\"><![CDATA[purchasePrice]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"name\"><![CDATA[quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('5ae35ede-c50d-4511-83bb-d94f410f416a',10402,10180,10154,10158,'','2015-12-23 15:57:54','2015-12-23 15:57:54',10097,'Issues Tracking','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('2c72eb36-097a-4a63-b858-b7f2faa69450',10403,10180,10154,10158,'','2015-12-23 15:57:54','2015-12-23 15:57:54',10097,'Meeting Minutes','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),
 ('cf037eb7-d8a4-4b25-8922-ffabea79a6ac',10404,10180,10154,10158,'','2015-12-23 15:57:54','2015-12-23 15:57:54',10097,'To Do','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" type=\"ddm-integer\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"name\"><![CDATA[percentComplete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-integer]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
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
 (10530,10089,10515,10308),
 (10544,10089,10541,10308),
 (10556,10089,10553,10308),
 (10567,10089,10562,10308),
 (10580,10089,10575,10308),
 (10590,10089,10583,10308),
 (10596,10089,10593,10308),
 (10608,10089,10605,10308),
 (10620,10089,10617,10308),
 (10630,10089,10623,10308),
 (10638,10089,10633,10308),
 (10653,10089,10647,10308),
 (10660,10089,10657,10308);
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
 ('37dc4d0b-a58e-4622-ae38-14e058bdc539',10505,10180,10154,10158,'',10158,'','2015-12-23 16:22:42','2015-12-23 16:22:42',10180,0,'101','jpg','image/jpeg','welcome_bg_3.jpg','','',0,'1.0',65684,0,0,0,0,0),
 ('ea1d2982-ec47-468e-9f4f-36bfa888f8e1',10513,10180,10154,10158,'',10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10180,0,'102','jpg','image/jpeg','welcome_bg_11.jpg','','',0,'1.0',43583,0,0,0,0,0),
 ('82a10049-5891-4fd1-b949-1fea51e1f3f6',10522,10180,10154,10158,'',10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10180,0,'103','jpg','image/jpeg','welcome_bg_12.jpg','','',0,'1.0',46446,0,0,0,0,0),
 ('37b22196-5e0d-4faa-ba6e-d591beabcfce',10533,10180,10154,10158,'',10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10180,0,'104','png','image/png','welcome_bg_10.png','','',0,'1.0',27139,0,0,0,0,0),
 ('7231641c-e1d9-4800-af46-9ccc5bc94824',10545,10180,10154,10158,'',10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48',10180,0,'105','jpg','image/jpeg','welcome_bg_2.jpg','','',0,'1.0',72911,0,0,0,0,0),
 ('afec99bd-0abc-45c8-a5ca-af6a887d1459',10557,10180,10154,10158,'',10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48',10180,0,'106','jpg','image/jpeg','welcome_bg_9.jpg','','',0,'1.0',50215,0,0,0,0,0),
 ('349f079c-733e-4751-b40f-5eca4cbfe940',10569,10180,10154,10158,'',10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49',10180,0,'107','jpg','image/jpeg','welcome_bg_4.jpg','','',0,'1.0',62483,0,0,0,0,0),
 ('d24fc8aa-ddd2-414e-bb5d-3e13c241394e',10581,10180,10154,10158,'',10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49',10180,0,'108','jpg','image/jpeg','welcome_bg_6.jpg','','',0,'1.0',45456,0,0,0,0,0),
 ('21793b16-4499-44af-a22d-0703fce1d12a',10597,10180,10154,10158,'',10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50',10180,0,'109','jpg','image/jpeg','welcome_bg_7.jpg','','',0,'1.0',68705,0,0,0,0,0),
 ('17132a23-2be8-4d09-9e5e-19a748493b20',10609,10180,10154,10158,'',10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50',10180,0,'110','jpg','image/jpeg','welcome_bg_5.jpg','','',0,'1.0',40022,0,0,0,0,0),
 ('079a311d-06ea-4838-8674-3254c98e24bd',10621,10180,10154,10158,'',10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10180,0,'111','jpg','image/jpeg','welcome_bg_13.jpg','','',0,'1.0',33632,0,0,0,0,0),
 ('ed0d9831-1007-4766-972c-ecdb374be51d',10634,10180,10154,10158,'',10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10180,0,'112','jpg','image/jpeg','welcome_bg_1.jpg','','',0,'1.0',54277,0,0,0,0,0),
 ('a8f97631-42fa-4464-bcec-d331a135e59b',10645,10180,10154,10158,'',10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10180,0,'113','jpg','image/jpeg','welcome_bg_8.jpg','','',0,'1.0',43664,0,0,0,0,0);
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
 ('957cc97c-3a98-4e76-9682-cf6647c07870',10515,10524,10308,0,10505,10506),
 ('fd184c20-4eb0-4c54-b985-8bcc5e63d14a',10541,10542,10308,0,10513,10514),
 ('85ffa9fe-0b6b-4def-8716-980d9144ff88',10553,10554,10308,0,10522,10523),
 ('1d253ced-dac6-4862-8836-bd0f0ba4e7f1',10562,10565,10308,0,10533,10534),
 ('94b876d6-c787-42e6-ae4b-358619e39601',10575,10578,10308,0,10545,10546),
 ('341f23d8-83ac-478c-9be4-50698edac687',10583,10588,10308,0,10557,10558),
 ('5adca722-0ebe-4be8-8a4d-1d6dec39fda2',10593,10594,10308,0,10569,10570),
 ('470c661f-d934-4b9d-a9a6-5b162148a4bb',10605,10606,10308,0,10581,10582),
 ('7ac023f7-86d6-497d-9f16-0d3fe3e3112f',10617,10618,10308,0,10597,10598),
 ('680d4438-dbbd-44f2-8d51-1fe384157cd9',10623,10627,10308,0,10609,10610),
 ('a4b5a356-67ea-491c-b7eb-2a01446fdc16',10633,10636,10308,0,10621,10622),
 ('d1e37140-194f-45cb-9524-e18cdab8c9c4',10647,10648,10308,0,10634,10635),
 ('4a696f12-fcc8-4ea5-a9ea-0c3ca1ab2526',10657,10658,10308,0,10645,10646);
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
 ('51bf8ded-6163-481a-a66d-bfb754a5f49e',0,0,0,0,'','2015-12-23 15:57:11','2015-12-23 15:57:11','Basic Document',''),
 ('3a621129-043d-47ce-824c-f36cdb5e88c1',10300,10192,10154,10158,'','2015-12-23 15:57:45','2015-12-23 15:57:45','Contract','Legal Contracts'),
 ('b6182d45-1fd5-4b88-b2b3-a3c2916dbaa5',10302,10192,10154,10158,'','2015-12-23 15:57:45','2015-12-23 15:57:45','Marketing Banner','Marketing Banner'),
 ('7bd1bc65-1991-46be-9ad5-de428e35b75a',10304,10192,10154,10158,'','2015-12-23 15:57:45','2015-12-23 15:57:45','Online Training','Online Training'),
 ('d6060726-63b1-406c-b7f4-f38d23105a4f',10306,10192,10154,10158,'','2015-12-23 15:57:46','2015-12-23 15:57:46','Sales Presentation','Sales Presentation');
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
 ('85b34f4a-965c-4195-84a0-03a282cef429',10506,10180,10154,10158,'','2015-12-23 16:22:42','2015-12-23 16:22:42',10180,0,10505,'jpg','image/jpeg','welcome_bg_3.jpg','','','',0,'1.0',65684,0,10158,'','2015-12-23 16:22:46'),
 ('45a5531c-1066-46d9-b1b1-e1aed6bd09a8',10514,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10180,0,10513,'jpg','image/jpeg','welcome_bg_11.jpg','','','',0,'1.0',43583,0,10158,'','2015-12-23 16:22:47'),
 ('367dcb5f-7bf4-460b-8f61-14a8203c7227',10523,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10180,0,10522,'jpg','image/jpeg','welcome_bg_12.jpg','','','',0,'1.0',46446,0,10158,'','2015-12-23 16:22:47'),
 ('691466f9-79e1-4707-a203-f0f9b5c73c5b',10534,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10180,0,10533,'png','image/png','welcome_bg_10.png','','','',0,'1.0',27139,0,10158,'','2015-12-23 16:22:47'),
 ('288b8196-aa96-49e8-ac30-27311c32df63',10546,10180,10154,10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48',10180,0,10545,'jpg','image/jpeg','welcome_bg_2.jpg','','','',0,'1.0',72911,0,10158,'','2015-12-23 16:22:48'),
 ('7c0a1264-01b5-4a41-8da7-a5f0512514cc',10558,10180,10154,10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48',10180,0,10557,'jpg','image/jpeg','welcome_bg_9.jpg','','','',0,'1.0',50215,0,10158,'','2015-12-23 16:22:48'),
 ('75cc4153-cb97-4697-96b8-69534c03200c',10570,10180,10154,10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49',10180,0,10569,'jpg','image/jpeg','welcome_bg_4.jpg','','','',0,'1.0',62483,0,10158,'','2015-12-23 16:22:49'),
 ('f8722196-17a2-4732-ab2b-b11605787e3f',10582,10180,10154,10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49',10180,0,10581,'jpg','image/jpeg','welcome_bg_6.jpg','','','',0,'1.0',45456,0,10158,'','2015-12-23 16:22:49'),
 ('cad90469-55e6-4e2f-aa42-3ac1fb2b4bb7',10598,10180,10154,10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50',10180,0,10597,'jpg','image/jpeg','welcome_bg_7.jpg','','','',0,'1.0',68705,0,10158,'','2015-12-23 16:22:50'),
 ('187dec2a-cc3f-4a75-acc2-dd364eeaad73',10610,10180,10154,10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50',10180,0,10609,'jpg','image/jpeg','welcome_bg_5.jpg','','','',0,'1.0',40022,0,10158,'','2015-12-23 16:22:50'),
 ('7b410d73-4006-4c46-ae85-a1a7b26b29c3',10622,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10180,0,10621,'jpg','image/jpeg','welcome_bg_13.jpg','','','',0,'1.0',33632,0,10158,'','2015-12-23 16:22:51'),
 ('7eb40bbb-a777-41b9-b6af-4b3c58fda211',10635,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10180,0,10634,'jpg','image/jpeg','welcome_bg_1.jpg','','','',0,'1.0',54277,0,10158,'','2015-12-23 16:22:51'),
 ('5ff7d581-6ff0-403a-9a4f-67f2704982a7',10646,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10180,0,10645,'jpg','image/jpeg','welcome_bg_8.jpg','','','',0,'1.0',43664,0,10158,'','2015-12-23 16:22:51');
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
 (10512,10154,'2015-12-23 16:22:46','2015-12-23 16:22:46',10505,'37dc4d0b-a58e-4622-ae38-14e058bdc539',10180,0,'welcome_bg_3.jpg','','add','file','1.0'),
 (10521,10154,'2015-12-23 16:22:47','2015-12-23 16:22:47',10513,'ea1d2982-ec47-468e-9f4f-36bfa888f8e1',10180,0,'welcome_bg_11.jpg','','add','file','1.0'),
 (10532,10154,'2015-12-23 16:22:47','2015-12-23 16:22:47',10522,'82a10049-5891-4fd1-b949-1fea51e1f3f6',10180,0,'welcome_bg_12.jpg','','add','file','1.0'),
 (10540,10154,'2015-12-23 16:22:47','2015-12-23 16:22:47',10533,'37b22196-5e0d-4faa-ba6e-d591beabcfce',10180,0,'welcome_bg_10.png','','add','file','1.0'),
 (10552,10154,'2015-12-23 16:22:48','2015-12-23 16:22:48',10545,'7231641c-e1d9-4800-af46-9ccc5bc94824',10180,0,'welcome_bg_2.jpg','','add','file','1.0'),
 (10568,10154,'2015-12-23 16:22:48','2015-12-23 16:22:48',10557,'afec99bd-0abc-45c8-a5ca-af6a887d1459',10180,0,'welcome_bg_9.jpg','','add','file','1.0'),
 (10577,10154,'2015-12-23 16:22:49','2015-12-23 16:22:49',10569,'349f079c-733e-4751-b40f-5eca4cbfe940',10180,0,'welcome_bg_4.jpg','','add','file','1.0'),
 (10592,10154,'2015-12-23 16:22:49','2015-12-23 16:22:49',10581,'d24fc8aa-ddd2-414e-bb5d-3e13c241394e',10180,0,'welcome_bg_6.jpg','','add','file','1.0'),
 (10604,10154,'2015-12-23 16:22:50','2015-12-23 16:22:50',10597,'21793b16-4499-44af-a22d-0703fce1d12a',10180,0,'welcome_bg_7.jpg','','add','file','1.0'),
 (10616,10154,'2015-12-23 16:22:50','2015-12-23 16:22:50',10609,'17132a23-2be8-4d09-9e5e-19a748493b20',10180,0,'welcome_bg_5.jpg','','add','file','1.0'),
 (10632,10154,'2015-12-23 16:22:51','2015-12-23 16:22:51',10621,'079a311d-06ea-4838-8674-3254c98e24bd',10180,0,'welcome_bg_13.jpg','','add','file','1.0'),
 (10644,10154,'2015-12-23 16:22:51','2015-12-23 16:22:51',10634,'ed0d9831-1007-4766-972c-ecdb374be51d',10180,0,'welcome_bg_1.jpg','','add','file','1.0'),
 (10656,10154,'2015-12-23 16:22:51','2015-12-23 16:22:51',10645,'a8f97631-42fa-4464-bcec-d331a135e59b',10180,0,'welcome_bg_8.jpg','','add','file','1.0');
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
 (10456,10154,10455,'client-id',15,'',''),
 (11012,10154,11011,'DNI',15,'','height=105\nwidth=450\n');
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
 (10763,10154,10002,'CUSTOM_FIELDS'),
 (11011,10154,10005,'CUSTOM_FIELDS'),
 (10455,10154,10005,'MP');
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
 (10180,10154,10158,10001,10180,0,0,'Guest','Portal de Postulantes',1,'false-robots.txt=User-Agent: *_SAFE_NEWLINE_CHARACTER_Disallow:_SAFE_NEWLINE_CHARACTER_Sitemap: http://localhost/sitemap.xml\nmergeGuestPublicPages=false\n','/guest',1,1),
 (10189,10154,10158,10188,10158,0,0,'User Personal Site','',3,'','/personal_site',0,1),
 (10192,10154,10158,10021,10154,0,0,'10154','',0,'','/null',0,1),
 (10198,10154,10196,10005,10196,0,0,'10196','',0,'','/administrador',0,1),
 (10310,10154,10158,10027,10309,0,0,'Blog','',0,'','/template-10309',0,1),
 (10320,10154,10158,10027,10319,0,0,'Content Display Page','',0,'','/template-10319',0,1),
 (10329,10154,10158,10027,10328,0,0,'Wiki','',0,'','/template-10328',0,1),
 (10338,10154,10158,10031,10337,0,0,'Community Site','',0,'','/template-10337',0,1),
 (10364,10154,10158,10031,10363,0,0,'Intranet Site','',0,'','/template-10363',0,1),
 (10690,10154,10196,10031,10689,0,0,'10689','',0,'','/template-10689',0,1),
 (10699,10154,10196,10031,10698,0,0,'10698','',0,'','/template-10698',0,1),
 (10708,10154,10196,10031,10707,0,0,'SITIO GERENCIAL','',0,'','/template-10707',0,1),
 (10717,10154,10196,10027,10716,0,0,'10716','',0,'','/template-10716',0,1),
 (10726,10154,10196,10027,10725,0,0,'10725','',0,'','/template-10725',0,1),
 (10735,10154,10196,10027,10734,0,0,'10734','',0,'','/template-10734',0,1),
 (10769,10154,10196,10001,10769,0,0,'Portal de Recursos Humanos','Portal de Recursos Humanos',2,'mergeGuestPublicPages=false\n','/portal-reclutamiento',1,1),
 (10801,10154,10196,10001,10801,0,0,'Portal Gerencial','Portal Gerencial',3,'','/portal-gerencial',1,1),
 (10954,10154,10952,10005,10952,0,0,'10952','',0,'','/ddelgado',0,1),
 (10965,10154,10963,10005,10963,0,0,'10963','',0,'','/iquiroz',0,1),
 (10974,10154,10972,10005,10972,0,0,'10972','',0,'','/melgarejoz',0,1),
 (10984,10154,10982,10005,10982,0,0,'10982','',0,'','/loperam',0,1),
 (10993,10154,10991,10005,10991,0,0,'10991','',0,'','/varasr',0,1),
 (11002,10154,11000,10005,11000,0,0,'11000','',0,'','/dexterk',0,1);
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
 ('f9e424ce-01f0-44ea-94d5-c6268d6f3778',10661,10662,10180,10154,10158,'','2015-12-23 16:22:52','2015-12-23 16:22:52',0,0,'WHO-IS-USING-LIFERAY',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">Who Is Using Liferay</Title></root>','who-is-using-liferay','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"es_ES\" default-locale=\"es_ES\">\n	<static-content language-id=\"es_ES\"><![CDATA[<style type=\"text/css\">\n	.content-area.selected {\n		background: url(/documents/10180/0/welcome_bg_8.jpg/a8f97631-42fa-4464-bcec-d331a135e59b?version=1.0&t=1450887771772) 100% 0 no-repeat;\n	}\n</style>\n\n<div class=\"navigation-wrapper\">\n	<header class=\"content-head content-head-liferay-portal\">\n		<hgroup>\n			<h1>\n				Liferay helps you build feature-rich, easy-to-use web applications quickly.\n			</h1>\n\n			<hr />\n		</hgroup>\n\n		<p>\n			Here are some of our customers from around the globe:\n		</p>\n\n		<ul class=\"left\">\n			<li><span>Rolex</span></li>\n			<li><span>Bugaboo</span></li>\n			<li><span>Deluxe Corporation</span></li>\n			<li><span>Domino\'s Pizza</span></li>\n			<li><span>BASF</span></li>\n		</ul>\n\n		<ul class=\"right\">\n			<li><span>Honda</span></li>\n			<li><span>GE Capital</span></li>\n			<li><span>Sesame Street</span></li>\n			<li><span>China Mobile</span></li>\n			<li><span>York University</span></li>\n		</ul>\n	</header>\n\n	<div class=\"content-area selected\">\n		<a href=\"//www.liferay.com/users?wh=8\" id=\"marketplace\">&nbsp;</a>\n	</div>\n</div>]]></static-content>\n</root>','general','','','','2010-02-01 00:00:00',NULL,NULL,1,0,10663,'',0,10158,'','2015-12-23 16:22:52');
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
 ('44f93131-96a4-4d72-b18a-cf55fd5f4458',10662,10180,'WHO-IS-USING-LIFERAY');
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
 ('5d9742cd-2d3b-4955-a5e6-7f3ccc32db57',10671,10180,10154,10158,'','2015-12-23 16:22:52','2015-12-23 16:22:52','10670','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome Content Structure</Name></root>','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"page-title\" type=\"text\" index-type=\"\" repeatable=\"false\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Sub Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element name=\"links\" type=\"text\" index-type=\"\" repeatable=\"true\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Link Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n		<dynamic-element name=\"bg-image\" type=\"document_library\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Background Image]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"action-link-url\" type=\"text\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Call to Action URL]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n	</dynamic-element>\n</root>');
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
 ('20a440fe-9cff-4443-a0e2-f4730deaec7b',10673,10180,10154,10158,'','2015-12-23 16:22:52','2015-12-23 16:22:52','10672','10670','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome Content Template</Name></root>','','<div class=\"navigation-wrapper\">\n	<header class=\"content-head content-head-liferay-portal\">\n		<hgroup>\n			<h1>$page-title.data</h1>\n\n			<hr />\n		</hgroup>\n\n		<nav>\n			<ul id=\"contentNav\">\n				#foreach($link in $links.siblings)\n					#if($velocityCount == 1)\n						<li class=\"selected\"><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#else\n						<li><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#end\n				#end\n			</ul>\n		</nav>\n	</header>\n\n	<div class=\"content-area-wrapper\">\n		#foreach($link in $links.siblings)\n			#if($velocityCount == 1)\n				<style type=\"text/css\">\n					.content-area {\n						background: url($link.bg-image.data) 100% 0 no-repeat;\n					}\n				</style>\n\n				<div class=\"content-area selected\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#else\n				<div class=\"content-area\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#end\n		#end\n	</div>\n</div>\n\n<script charset=\"utf-8\" type=\"text/javascript\">\n	AUI().ready(\n		\'aui-base\',\n		function(A) {\n			var hash = null;\n\n			var selectContent = function(href) {\n				var div = A.one(href);\n\n				if (div) {\n					div.radioClass(\'selected\');\n\n					div.setStyle(\'background\', \'url(\' + div.attr(\'data-bannerImage\')+\') 100% 0 no-repeat\');\n\n					hash = href;\n				}\n			};\n\n			var selectNavItem = function(hash) {\n				if (hash) {\n					A.one(\'#contentNav a[href$=\"\'+ hash +\'\"]\').ancestor().radioClass(\'selected\');\n				}\n			};\n\n			var select = function(hash) {\n				selectContent(hash);\n				selectNavItem(hash);\n			};\n\n			var currentHash = location.hash;\n\n			if (currentHash) {\n				select(currentHash);\n			}\n\n			setInterval(\n				function() {\n					var currentHash = location.hash;\n\n					if (currentHash != hash) {\n						select(currentHash);\n					}\n				},\n				200\n			);\n\n			A.one(\'#contentNav\').delegate(\n				\'click\',\n				function(event) {\n					var a = event.currentTarget;\n\n					a.ancestor().radioClass(\'selected\');\n\n					selectContent(a.attr(\'hash\'));\n				},\n				\'a\'\n			);\n		}\n	);\n</script>','vm',0,0,10674,'');
/*!40000 ALTER TABLE `journaltemplate` ENABLE KEYS */;


--
-- Definition of table `kaleoaction`
--

DROP TABLE IF EXISTS `kaleoaction`;
CREATE TABLE `kaleoaction` (
  `kaleoActionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`kaleoActionId`),
  KEY `IX_50E9112C` (`companyId`),
  KEY `IX_4B2545E8` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_F95A622` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleoaction`
--

/*!40000 ALTER TABLE `kaleoaction` DISABLE KEYS */;
INSERT INTO `kaleoaction` (`kaleoActionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoClassName`,`kaleoClassPK`,`kaleoDefinitionId`,`kaleoNodeName`,`name`,`description`,`executionType`,`script`,`scriptLanguage`,`priority`) VALUES 
 (10430,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoNode',10429,10424,'approved','approve','','onEntry','\n					\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					\n				','javascript',0);
/*!40000 ALTER TABLE `kaleoaction` ENABLE KEYS */;


--
-- Definition of table `kaleocondition`
--

DROP TABLE IF EXISTS `kaleocondition`;
CREATE TABLE `kaleocondition` (
  `kaleoConditionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoConditionId`),
  KEY `IX_FEE46067` (`companyId`),
  KEY `IX_DC978A5D` (`kaleoDefinitionId`),
  KEY `IX_86CBD4C` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleocondition`
--

/*!40000 ALTER TABLE `kaleocondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleocondition` ENABLE KEYS */;


--
-- Definition of table `kaleodefinition`
--

DROP TABLE IF EXISTS `kaleodefinition`;
CREATE TABLE `kaleodefinition` (
  `kaleoDefinitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `content` longtext,
  `version` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `startKaleoNodeId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`kaleoDefinitionId`),
  KEY `IX_40B9112F` (`companyId`),
  KEY `IX_408542BA` (`companyId`,`active_`),
  KEY `IX_76C781AE` (`companyId`,`name`),
  KEY `IX_4C23F11B` (`companyId`,`name`,`active_`),
  KEY `IX_EC14F81A` (`companyId`,`name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleodefinition`
--

/*!40000 ALTER TABLE `kaleodefinition` DISABLE KEYS */;
INSERT INTO `kaleodefinition` (`kaleoDefinitionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`name`,`title`,`description`,`content`,`version`,`active_`,`startKaleoNodeId`) VALUES 
 (10424,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','Single Approver','Single Approver','A single approver can approve a workflow content.','<?xml version=\"1.0\"?>\n\n<workflow-definition xmlns=\"urn:liferay.com:liferay-workflow_6.1.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"urn:liferay.com:liferay-workflow_6.1.0 http://www.liferay.com/dtd/liferay-workflow-definition_6_1_0.xsd\">\n	<name>Single Approver</name>\n	<description>A single approver can approve a workflow content.</description>\n	<version>1</version>\n	<state>\n		<name>created</name>\n		<metadata> <![CDATA[{\"xy\":[78,53]}]]> </metadata>\n		<initial>true</initial>\n		<transitions>\n			<transition>\n				<name>review</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</state>\n	<task>\n		<name>update</name>\n		<metadata> <![CDATA[{\"xy\":[397,191]}]]> </metadata>\n		<actions>\n			<notification>\n				<name>Creator Modification Notification</name>\n				<template>Your submission was rejected by a reviewer, please modify and resubmit.</template>\n				<template-language>text</template-language>\n				<notification-type>email</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<user/>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>resubmit</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</task>\n	<task>\n		<name>review</name>\n		<metadata> <![CDATA[{\"xy\":[225,45]}]]> </metadata>\n		<actions>\n			<notification>\n				<name>Review Notification</name>\n				<template>You have a new submission waiting for your review in the workflow.</template>\n				<template-language>text</template-language>\n				<notification-type>email</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n			<notification>\n				<name>Review Completion Notification</name>\n				<template>Your submission has been reviewed and the reviewer has applied the following ${taskComments}.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<recipients>\n					<user/>\n				</recipients>\n				<execution-type>onExit</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<roles>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Administrator</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Owner</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Administrator</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Portal Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Administrator</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Owner</name>\n				</role>\n			</roles>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>approve</name>\n				<target>approved</target>\n			</transition>\n			<transition>\n				<name>reject</name>\n				<target>update</target>\n				<default>false</default>\n			</transition>\n		</transitions>\n	</task>\n	<state>\n		<name>approved</name>\n		<metadata> <![CDATA[{\"xy\":[422,56]}]]> </metadata>\n		<actions>\n			<action>\n				<name>approve</name>\n				<script> <![CDATA[\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					]]> </script>\n				<script-language>javascript</script-language>\n				<execution-type>onEntry</execution-type>\n			</action>\n		</actions>\n	</state>\n</workflow-definition>',1,1,10431);
/*!40000 ALTER TABLE `kaleodefinition` ENABLE KEYS */;


--
-- Definition of table `kaleoinstance`
--

DROP TABLE IF EXISTS `kaleoinstance`;
CREATE TABLE `kaleoinstance` (
  `kaleoInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoDefinitionName` varchar(200) DEFAULT NULL,
  `kaleoDefinitionVersion` int(11) DEFAULT NULL,
  `rootKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoInstanceId`),
  KEY `IX_5F2FCD2D` (`companyId`),
  KEY `IX_BF5839F8` (`companyId`,`kaleoDefinitionName`,`kaleoDefinitionVersion`,`completionDate`),
  KEY `IX_4DA4D123` (`kaleoDefinitionId`),
  KEY `IX_ACF16238` (`kaleoDefinitionId`,`completed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleoinstance`
--

/*!40000 ALTER TABLE `kaleoinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleoinstance` ENABLE KEYS */;


--
-- Definition of table `kaleoinstancetoken`
--

DROP TABLE IF EXISTS `kaleoinstancetoken`;
CREATE TABLE `kaleoinstancetoken` (
  `kaleoInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `parentKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoInstanceTokenId`),
  KEY `IX_153721BE` (`companyId`),
  KEY `IX_4A86923B` (`companyId`,`parentKaleoInstanceTokenId`),
  KEY `IX_360D34D9` (`companyId`,`parentKaleoInstanceTokenId`,`completionDate`),
  KEY `IX_7BDB04B4` (`kaleoDefinitionId`),
  KEY `IX_F42AAFF6` (`kaleoInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleoinstancetoken`
--

/*!40000 ALTER TABLE `kaleoinstancetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleoinstancetoken` ENABLE KEYS */;


--
-- Definition of table `kaleolog`
--

DROP TABLE IF EXISTS `kaleolog`;
CREATE TABLE `kaleolog` (
  `kaleoLogId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `terminalKaleoNode` tinyint(4) DEFAULT NULL,
  `kaleoActionId` bigint(20) DEFAULT NULL,
  `kaleoActionName` varchar(200) DEFAULT NULL,
  `kaleoActionDescription` longtext,
  `previousKaleoNodeId` bigint(20) DEFAULT NULL,
  `previousKaleoNodeName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassPK` bigint(20) DEFAULT NULL,
  `currentAssigneeClassName` varchar(200) DEFAULT NULL,
  `currentAssigneeClassPK` bigint(20) DEFAULT NULL,
  `type_` varchar(50) DEFAULT NULL,
  `comment_` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoLogId`),
  KEY `IX_73B5F4DE` (`companyId`),
  KEY `IX_E66A153A` (`kaleoClassName`,`kaleoClassPK`,`kaleoInstanceTokenId`,`type_`),
  KEY `IX_6C64B7D4` (`kaleoDefinitionId`),
  KEY `IX_5BC6AB16` (`kaleoInstanceId`),
  KEY `IX_470B9FF8` (`kaleoInstanceTokenId`,`type_`),
  KEY `IX_B0CDCA38` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleolog`
--

/*!40000 ALTER TABLE `kaleolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleolog` ENABLE KEYS */;


--
-- Definition of table `kaleonode`
--

DROP TABLE IF EXISTS `kaleonode`;
CREATE TABLE `kaleonode` (
  `kaleoNodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `type_` varchar(20) DEFAULT NULL,
  `initial_` tinyint(4) DEFAULT NULL,
  `terminal` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoNodeId`),
  KEY `IX_C4E9ACE0` (`companyId`),
  KEY `IX_F28C443E` (`companyId`,`kaleoDefinitionId`),
  KEY `IX_32E94DD6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleonode`
--

/*!40000 ALTER TABLE `kaleonode` DISABLE KEYS */;
INSERT INTO `kaleonode` (`kaleoNodeId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`name`,`metadata`,`description`,`type_`,`initial_`,`terminal`) VALUES 
 (10425,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45',10424,'update','\n			{\"xy\":[397,191]}\n		','','TASK',0,0),
 (10429,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45',10424,'approved','\n			{\"xy\":[422,56]}\n		','','STATE',0,1),
 (10431,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45',10424,'created','\n			{\"xy\":[78,53]}\n		','','STATE',1,0),
 (10432,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45',10424,'review','\n			{\"xy\":[225,45]}\n		','','TASK',0,0);
/*!40000 ALTER TABLE `kaleonode` ENABLE KEYS */;


--
-- Definition of table `kaleonotification`
--

DROP TABLE IF EXISTS `kaleonotification`;
CREATE TABLE `kaleonotification` (
  `kaleoNotificationId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `template` longtext,
  `templateLanguage` varchar(75) DEFAULT NULL,
  `notificationTypes` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationId`),
  KEY `IX_38829497` (`companyId`),
  KEY `IX_F3362E93` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_4B968E8D` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleonotification`
--

/*!40000 ALTER TABLE `kaleonotification` DISABLE KEYS */;
INSERT INTO `kaleonotification` (`kaleoNotificationId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoClassName`,`kaleoClassPK`,`kaleoDefinitionId`,`kaleoNodeName`,`name`,`description`,`executionType`,`template`,`templateLanguage`,`notificationTypes`) VALUES 
 (10426,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoNode',10425,10424,'update','Creator Modification Notification','','onAssignment','Your submission was rejected by a reviewer, please modify and resubmit.','text','email'),
 (10433,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoNode',10432,10424,'review','Review Notification','','onAssignment','You have a new submission waiting for your review in the workflow.','text','email'),
 (10434,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoNode',10432,10424,'review','Review Completion Notification','','onExit','\n					Your submission has been reviewed and the reviewer has applied the following ${taskComments}.','freemarker','email');
/*!40000 ALTER TABLE `kaleonotification` ENABLE KEYS */;


--
-- Definition of table `kaleonotificationrecipient`
--

DROP TABLE IF EXISTS `kaleonotificationrecipient`;
CREATE TABLE `kaleonotificationrecipient` (
  `kaleoNotificationRecipientId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNotificationId` bigint(20) DEFAULT NULL,
  `recipientClassName` varchar(200) DEFAULT NULL,
  `recipientClassPK` bigint(20) DEFAULT NULL,
  `recipientRoleType` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationRecipientId`),
  KEY `IX_2C8C4AF4` (`companyId`),
  KEY `IX_AA6697EA` (`kaleoDefinitionId`),
  KEY `IX_7F4FED02` (`kaleoNotificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleonotificationrecipient`
--

/*!40000 ALTER TABLE `kaleonotificationrecipient` DISABLE KEYS */;
INSERT INTO `kaleonotificationrecipient` (`kaleoNotificationRecipientId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`kaleoNotificationId`,`recipientClassName`,`recipientClassPK`,`recipientRoleType`,`address`) VALUES 
 (10435,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45',10424,10434,'com.liferay.portal.model.User',0,0,'');
/*!40000 ALTER TABLE `kaleonotificationrecipient` ENABLE KEYS */;


--
-- Definition of table `kaleotask`
--

DROP TABLE IF EXISTS `kaleotask`;
CREATE TABLE `kaleotask` (
  `kaleoTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`kaleoTaskId`),
  KEY `IX_E1F8B23D` (`companyId`),
  KEY `IX_3FFA633` (`kaleoDefinitionId`),
  KEY `IX_77B3F1A2` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleotask`
--

/*!40000 ALTER TABLE `kaleotask` DISABLE KEYS */;
INSERT INTO `kaleotask` (`kaleoTaskId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`kaleoNodeId`,`name`,`description`) VALUES 
 (10427,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45',10424,10425,'update',''),
 (10436,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45',10424,10432,'review','');
/*!40000 ALTER TABLE `kaleotask` ENABLE KEYS */;


--
-- Definition of table `kaleotaskassignment`
--

DROP TABLE IF EXISTS `kaleotaskassignment`;
CREATE TABLE `kaleotaskassignment` (
  `kaleoTaskAssignmentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `assigneeActionId` varchar(75) DEFAULT NULL,
  `assigneeScript` longtext,
  `assigneeScriptLanguage` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoTaskAssignmentId`),
  KEY `IX_611732B0` (`companyId`),
  KEY `IX_D835C576` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1087068E` (`kaleoClassName`,`kaleoClassPK`,`assigneeClassName`),
  KEY `IX_575C03A6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleotaskassignment`
--

/*!40000 ALTER TABLE `kaleotaskassignment` DISABLE KEYS */;
INSERT INTO `kaleotaskassignment` (`kaleoTaskAssignmentId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoClassName`,`kaleoClassPK`,`kaleoDefinitionId`,`kaleoNodeId`,`assigneeClassName`,`assigneeClassPK`,`assigneeActionId`,`assigneeScript`,`assigneeScriptLanguage`) VALUES 
 (10428,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoTask',10427,10424,0,'com.liferay.portal.model.User',0,'','',''),
 (10437,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoTask',10436,10424,0,'com.liferay.portal.model.Role',10161,'','',''),
 (10438,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoTask',10436,10424,0,'com.liferay.portal.model.Role',10439,'','',''),
 (10440,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoTask',10436,10424,0,'com.liferay.portal.model.Role',10441,'','',''),
 (10442,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoTask',10436,10424,0,'com.liferay.portal.model.Role',10443,'','',''),
 (10444,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoTask',10436,10424,0,'com.liferay.portal.model.Role',10171,'','',''),
 (10445,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoTask',10436,10424,0,'com.liferay.portal.model.Role',10169,'','',''),
 (10446,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoTask',10436,10424,0,'com.liferay.portal.model.Role',10166,'','',''),
 (10447,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45','com.liferay.portal.workflow.kaleo.model.KaleoTask',10436,10424,0,'com.liferay.portal.model.Role',10167,'','','');
/*!40000 ALTER TABLE `kaleotaskassignment` ENABLE KEYS */;


--
-- Definition of table `kaleotaskassignmentinstance`
--

DROP TABLE IF EXISTS `kaleotaskassignmentinstance`;
CREATE TABLE `kaleotaskassignmentinstance` (
  `kaleoTaskAssignmentInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoTaskAssignmentInstanceId`),
  KEY `IX_6E3CDA1B` (`companyId`),
  KEY `IX_C851011` (`kaleoDefinitionId`),
  KEY `IX_67A9EE93` (`kaleoInstanceId`),
  KEY `IX_D4C2235B` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleotaskassignmentinstance`
--

/*!40000 ALTER TABLE `kaleotaskassignmentinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotaskassignmentinstance` ENABLE KEYS */;


--
-- Definition of table `kaleotaskinstancetoken`
--

DROP TABLE IF EXISTS `kaleotaskinstancetoken`;
CREATE TABLE `kaleotaskinstancetoken` (
  `kaleoTaskInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTaskInstanceTokenId`),
  KEY `IX_997FE723` (`companyId`),
  KEY `IX_608E9519` (`kaleoDefinitionId`),
  KEY `IX_2CE1159B` (`kaleoInstanceId`),
  KEY `IX_B857A115` (`kaleoInstanceId`,`kaleoTaskId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleotaskinstancetoken`
--

/*!40000 ALTER TABLE `kaleotaskinstancetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotaskinstancetoken` ENABLE KEYS */;


--
-- Definition of table `kaleotimer`
--

DROP TABLE IF EXISTS `kaleotimer`;
CREATE TABLE `kaleotimer` (
  `kaleoTimerId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `description` longtext,
  `duration` double DEFAULT NULL,
  `scale` varchar(75) DEFAULT NULL,
  `recurrenceDuration` double DEFAULT NULL,
  `recurrenceScale` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoTimerId`),
  KEY `IX_4DE6A889` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1A479F32` (`kaleoClassName`,`kaleoClassPK`,`blocking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleotimer`
--

/*!40000 ALTER TABLE `kaleotimer` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotimer` ENABLE KEYS */;


--
-- Definition of table `kaleotimerinstancetoken`
--

DROP TABLE IF EXISTS `kaleotimerinstancetoken`;
CREATE TABLE `kaleotimerinstancetoken` (
  `kaleoTimerInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTimerId` bigint(20) DEFAULT NULL,
  `kaleoTimerName` varchar(200) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTimerInstanceTokenId`),
  KEY `IX_DB96C55B` (`kaleoInstanceId`),
  KEY `IX_DB279423` (`kaleoInstanceTokenId`,`completed`),
  KEY `IX_9932524C` (`kaleoInstanceTokenId`,`completed`,`blocking`),
  KEY `IX_13A5BA2C` (`kaleoInstanceTokenId`,`kaleoTimerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleotimerinstancetoken`
--

/*!40000 ALTER TABLE `kaleotimerinstancetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotimerinstancetoken` ENABLE KEYS */;


--
-- Definition of table `kaleotransition`
--

DROP TABLE IF EXISTS `kaleotransition`;
CREATE TABLE `kaleotransition` (
  `kaleoTransitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `sourceKaleoNodeId` bigint(20) DEFAULT NULL,
  `sourceKaleoNodeName` varchar(200) DEFAULT NULL,
  `targetKaleoNodeId` bigint(20) DEFAULT NULL,
  `targetKaleoNodeName` varchar(200) DEFAULT NULL,
  `defaultTransition` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoTransitionId`),
  KEY `IX_41D6C6D` (`companyId`),
  KEY `IX_479F3063` (`kaleoDefinitionId`),
  KEY `IX_A392DFD2` (`kaleoNodeId`),
  KEY `IX_A38E2194` (`kaleoNodeId`,`defaultTransition`),
  KEY `IX_85268A11` (`kaleoNodeId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaleotransition`
--

/*!40000 ALTER TABLE `kaleotransition` DISABLE KEYS */;
INSERT INTO `kaleotransition` (`kaleoTransitionId`,`groupId`,`companyId`,`userId`,`userName`,`createDate`,`modifiedDate`,`kaleoDefinitionId`,`kaleoNodeId`,`name`,`description`,`sourceKaleoNodeId`,`sourceKaleoNodeName`,`targetKaleoNodeId`,`targetKaleoNodeName`,`defaultTransition`) VALUES 
 (10448,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45',10424,10425,'resubmit','',10425,'update',10432,'review',1),
 (10449,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45',10424,10431,'review','',10431,'created',10432,'review',1),
 (10450,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45',10424,10432,'approve','',10432,'review',10429,'approved',1),
 (10451,0,10154,10158,'','2015-12-23 15:58:45','2015-12-23 15:58:45',10424,10432,'reject','',10432,'review',10425,'update',0);
/*!40000 ALTER TABLE `kaleotransition` ENABLE KEYS */;


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
 ('12ccaf4e-5a88-4591-8e53-12b2dd15d101',10175,10172,10154,'2015-12-23 15:57:35','2015-12-23 15:57:35',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','',0,'/manage',0,0,'','','','','',0,'',0,''),
 ('33ea7029-155a-48c9-94f4-d23ae2b6da9c',10183,10180,10154,'2015-12-23 15:57:36','2015-12-23 17:16:03',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,es_ES,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">Welcome</Name><Name language-id=\"es_ES\">Inicio</Name></root>','','','','','portlet','column-3-customizable=false\nsitemap-changefreq=daily\nlayout-template-id=REC_Responsive_1_1\nshow-alternate-links=true\ncolumn-5-customizable=false\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\ncolumn-4-customizable=false\ncolumn-2=47,\ncolumn-1=58\n',1,'/inicio',0,0,'classic','','classic','','',0,'',0,''),
 ('0ea1c798-b66f-4c87-82d2-9eb59c3c59e5',10313,10310,10154,'2015-12-23 15:57:46','2015-12-23 15:57:47',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=148_INSTANCE_SHyax62AueZq,114,\ncolumn-1=33,\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('6f57a59b-77a7-403c-898c-f432fb5e4ad9',10323,10320,10154,'2015-12-23 15:57:47','2015-12-23 15:57:48',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','default-asset-publisher-portlet-id=101_INSTANCE_kbn2Fd7mjPm0\nlayout-template-id=2_columns_ii\ncolumn-2=3,101_INSTANCE_kbn2Fd7mjPm0,\ncolumn-1=141_INSTANCE_3lGPAjGHnocO,122_INSTANCE_MpEQom1XaKot,\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('29b22cb2-9ab1-4d55-9f3d-86ad3b2b25ee',10332,10329,10154,'2015-12-23 15:57:48','2015-12-23 15:57:48',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_ICW16SbQ7nCe,141_INSTANCE_XruLe2uJyrRN,\ncolumn-1=36,\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('54a2ff22-d5a4-43e9-9bab-9618e2e1c09a',10346,10338,10154,'2015-12-23 15:57:50','2015-12-23 15:57:50',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=3,59_INSTANCE_x27YCsQRUKej,180,\ncolumn-1=19,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('a094f7b2-a0ec-4d9e-ac5a-54bd3cfc6a64',10352,10338,10154,'2015-12-23 15:57:50','2015-12-23 15:57:51',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_dXye0WCixT91,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',1,'',0,''),
 ('6dd3e456-3154-49b2-a2ea-285f81f1db41',10358,10338,10154,'2015-12-23 15:57:51','2015-12-23 15:57:51',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_Zxse6ExEYUJJ,148_INSTANCE_l9cYmzMSB5TS,\ncolumn-1=36,\n',0,'/wiki',0,0,'','','','','',2,'',0,''),
 ('6570357c-b0aa-4f43-b3ae-1f99f109e5b6',10372,10364,10154,'2015-12-23 15:57:52','2015-12-23 15:57:52',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_i\ncolumn-2=3,82,101_INSTANCE_H2KS2UcKhHQt,\ncolumn-1=116,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('faecbaf0-32ed-4f66-9bdc-59f1843f8af2',10380,10364,10154,'2015-12-23 15:57:52','2015-12-23 15:57:52',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',1,'',0,''),
 ('4dc16207-1c3d-4cca-b1d9-1d93a53b445f',10386,10364,10154,'2015-12-23 15:57:53','2015-12-23 15:57:53',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_rBN6ioG8GzjH,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',2,'',0,''),
 ('3a4f08f0-0359-4581-a1f6-5e5f74bd58fc',10392,10364,10154,'2015-12-23 15:57:53','2015-12-23 15:57:53',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=39_INSTANCE_0kFzJ8ht4uKw,\ncolumn-1=39_INSTANCE_W0ZZI3Ery8TE,\n',0,'/news',0,0,'','','','','',3,'',0,''),
 ('a00ec388-aeea-4b39-9dfd-76ca50717220',10693,10690,10154,'2015-12-23 16:27:47','2015-12-23 16:27:47',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">home</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('aaa37971-c5ab-408d-8474-cb7afc96e131',10702,10699,10154,'2015-12-23 16:28:00','2015-12-23 16:28:00',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">home</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('1bde2255-b62e-4c41-8538-92e724865156',10711,10708,10154,'2015-12-23 16:28:11','2015-12-23 16:28:11',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">home</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('78365364-1674-4113-8aab-476305a3a89f',10720,10717,10154,'2015-12-23 16:29:23','2015-12-23 16:29:23',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">PAGINA POSTULANTE</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\nmerge-fail-count=0\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('96144e1e-6e34-4287-a8e0-916443a8b196',10729,10726,10154,'2015-12-23 16:29:39','2015-12-23 16:29:39',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">PAGINA RECURSOS HUMANOS</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\nmerge-fail-count=0\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('c88c2944-f11f-4fee-85b5-f67f91238b32',10738,10735,10154,'2015-12-23 16:29:50','2015-12-23 16:29:50',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">PAGINA GERENCIAL</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\nmerge-fail-count=0\n',0,'/layout',0,0,'','','','','',0,'',0,''),
 ('e6bb73fd-01f4-4e04-a080-564e1e96ea28',10764,10180,10154,NULL,'2015-12-23 17:23:55',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Postulaciones</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\nshow-alternate-links=true\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',0,'/postulaciones',0,0,'classic','','classic','','',0,'',0,'a00ec388-aeea-4b39-9dfd-76ca50717220'),
 ('763a8810-6513-4ec0-827a-4879f9eb4854',10790,10769,10154,NULL,'2015-12-23 19:22:54',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Inicio</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\nshow-alternate-links=true\nsitemap-changefreq=daily\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',0,'/inicio',0,0,'classic','','classic','','',0,'',0,'aaa37971-c5ab-408d-8474-cb7afc96e131'),
 ('b24fde86-0271-4b67-bee5-7989b6f4d7d9',10796,10769,10154,NULL,'2015-12-23 17:25:59',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Solicitudes</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\nshow-alternate-links=true\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',0,'/solicitudes',0,0,'classic','','classic','','',0,'',0,'aaa37971-c5ab-408d-8474-cb7afc96e131'),
 ('7c6698e0-1486-4499-a2d9-cfac6309070d',10822,10801,10154,NULL,'2015-12-23 18:44:41',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Inicio</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\nshow-alternate-links=true\nsitemap-changefreq=daily\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',1,'/inicio',0,0,'classic','','classic','','',0,'',0,'1bde2255-b62e-4c41-8538-92e724865156'),
 ('0192e95c-8c9b-4426-bbe9-8b9050ef660c',10828,10801,10154,NULL,'2015-12-23 18:40:39',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Solicitudes</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\nshow-alternate-links=true\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',0,'/solicitudes',0,0,'classic','','classic','','',0,'',0,'1bde2255-b62e-4c41-8538-92e724865156'),
 ('b802c282-c225-47c4-acea-1eb3339b3cbf',10838,10180,10154,'2015-12-23 16:53:56','2015-12-23 16:58:02',0,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Ofertas</Name></root>','','','','','portlet','last-merge-time=1450889642253\nsitemap-changefreq=daily\nlayout-template-id=2_columns_ii\nshow-alternate-links=true\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\n',0,'/ofertas',0,0,'classic','','classic','','',1,'9d9e3932-2ddd-4caa-91e0-9d15c90ddd69',0,''),
 ('45653950-b83d-425e-8e41-ba449d04b41f',10852,10180,10154,'2015-12-23 16:57:15','2015-12-23 17:22:02',0,3,2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Ofertas Destacadas</Name></root>','','','','','portlet','last-merge-time=1450889835044\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\n',0,'/ofertas-destacadas',0,0,'','','','','',2,'9d9e3932-2ddd-4caa-91e0-9d15c90ddd69',0,''),
 ('bfbafc00-5da9-474e-8c7d-0ac23bba14d1',10858,10180,10154,'2015-12-23 16:57:42','2015-12-23 17:22:02',0,4,2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Ofertas màs buscadas</Name></root>','','','','','portlet','last-merge-time=1450889862717\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\n',0,'/ofertas-mas-buscadas',0,0,'','','','','',1,'9d9e3932-2ddd-4caa-91e0-9d15c90ddd69',0,''),
 ('c23f9908-a98c-4f70-b7a7-1ec34c93f7e0',10864,10180,10154,'2015-12-23 16:58:14','2015-12-23 17:22:02',0,5,2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Ofertas Laborales</Name></root>','','','','','portlet','last-merge-time=1450889894745\nlayout-template-id=2_columns_ii\n',0,'/ofertas-laborales',0,0,'','','','','',0,'d007e4ad-3f86-4119-a4d6-d6a1e3a34113',0,''),
 ('6e373b2f-25ba-4cfe-9ceb-021f42e02291',10883,10180,10154,'2015-12-23 17:22:59','2015-12-23 17:23:55',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Mi Perfil</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\n',0,'/mi-perfil',0,0,'','','','','',1000001,'',0,''),
 ('27ad290a-605a-4023-a3e4-205e8a9f6fd8',10892,10180,10154,'2015-12-23 17:25:41','2015-12-23 17:25:42',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Evaluaciones</Name></root>','','','','','portlet','last-merge-time=1450891542010\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\n',1,'/evaluaciones',0,0,'','','','','',1000002,'9d9e3932-2ddd-4caa-91e0-9d15c90ddd69',0,''),
 ('0760c495-6b14-4ff1-88c7-3484986665f0',10917,10769,10154,'2015-12-23 18:39:29','2015-12-23 18:39:29',1,2,1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Reclutamiento</Name></root>','','','','','portlet','last-merge-time=1450895969893\nlayout-template-id=2_columns_ii\n',0,'/reclutamiento',0,0,'','','','','',0,'c8d71c85-806a-4ebb-b711-15966f11004c',0,''),
 ('a5d277dc-7884-40c7-aaa7-c639d9a893fa',10922,10801,10154,'2015-12-23 18:40:53','2015-12-23 18:40:53',1,2,1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Reclutamiento</Name></root>','','','','','portlet','last-merge-time=1450896053670\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\n',0,'/reclutamiento',0,0,'','','','','',0,'d007e4ad-3f86-4119-a4d6-d6a1e3a34113',0,''),
 ('194d73cc-2416-4588-8e57-67622104474d',10927,10801,10154,'2015-12-23 18:41:07','2015-12-23 18:41:07',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Evaluaciones</Name></root>','','','','','portlet','last-merge-time=1450896067140\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\n',0,'/evaluaciones',0,0,'','','','','',1000001,'d007e4ad-3f86-4119-a4d6-d6a1e3a34113',0,''),
 ('20a996eb-0f22-4cfb-b7d1-63300580b519',10932,10801,10154,'2015-12-23 18:41:18','2015-12-23 18:41:18',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Entrevistas</Name></root>','','','','','portlet','last-merge-time=1450896078045\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\n',0,'/entrevistas',0,0,'','','','','',1000002,'d007e4ad-3f86-4119-a4d6-d6a1e3a34113',0,''),
 ('232d091e-fbb3-40ab-a909-be7f4e6a717c',10937,10769,10154,'2015-12-23 18:42:54','2015-12-23 18:42:54',1,3,1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Reclutamiento Aprobados</Name></root>','','','','','portlet','last-merge-time=1450896174315\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\n',0,'/reclutamiento-aprobados',0,0,'','','','','',1000001,'c8d71c85-806a-4ebb-b711-15966f11004c',0,''),
 ('67e629e2-1414-4796-8a7d-b04e2aa48580',11013,10965,10154,'2015-12-23 19:12:29','2015-12-23 19:12:29',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),
 ('d4f52392-9cc1-4eaa-9a72-0be665008e9b',11022,10198,10154,'2015-12-23 19:18:55','2015-12-23 19:18:55',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,'');
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
 ('953ad974-b4a4-41c2-b88a-c8c77429dc18',10309,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,es_ES,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">Blog</Name><Name language-id=\"es_ES\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',0),
 ('d652d6de-2627-40ed-9a9d-a2984934e1b7',10319,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,es_ES,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">Content Display Page</Name><Name language-id=\"es_ES\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',0),
 ('38deaba1-4682-441d-805d-ec5270e87f92',10328,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,es_ES,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">Wiki</Name><Name language-id=\"es_ES\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',0),
 ('9d9e3932-2ddd-4caa-91e0-9d15c90ddd69',10716,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">PAGINA POSTULANTE</Name></root>','PAGINA POSTULANTE','',1),
 ('c8d71c85-806a-4ebb-b711-15966f11004c',10725,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">PAGINA RECURSOS HUMANOS</Name></root>','PAGINA RECURSOS HUMANOS','',1),
 ('d007e4ad-3f86-4119-a4d6-d6a1e3a34113',10734,10154,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">PAGINA GERENCIAL</Name></root>','PAGINA GERENCIAL','',1);
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
 (10173,10172,10154,'2015-12-23 15:57:35','2015-12-23 15:57:35',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10174,10172,10154,'2015-12-23 15:57:35','2015-12-23 15:57:35',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10181,10180,10154,'2015-12-23 15:57:36','2015-12-23 17:25:42',1,0,0,'Reclutamiento_WAR_Reclutamientotheme','01','mobile','01','',3,'','79e23eb8-0cfc-4c23-b7ff-fa9e12885353',0),
 (10182,10180,10154,'2015-12-23 15:57:36','2015-12-23 16:58:14',0,0,0,'Reclutamiento_WAR_Reclutamientotheme','01','mobile','01','',5,'','',0),
 (10190,10189,10154,'2015-12-23 15:57:36','2015-12-23 15:57:36',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10191,10189,10154,'2015-12-23 15:57:36','2015-12-23 15:57:36',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10193,10192,10154,'2015-12-23 15:57:37','2015-12-23 15:57:37',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10194,10192,10154,'2015-12-23 15:57:37','2015-12-23 15:57:37',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10199,10198,10154,'2015-12-23 15:57:38','2015-12-23 19:18:55',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10200,10198,10154,'2015-12-23 15:57:38','2015-12-23 15:57:38',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10311,10310,10154,'2015-12-23 15:57:46','2015-12-23 15:57:46',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10312,10310,10154,'2015-12-23 15:57:46','2015-12-23 15:57:46',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10321,10320,10154,'2015-12-23 15:57:47','2015-12-23 15:57:47',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10322,10320,10154,'2015-12-23 15:57:47','2015-12-23 15:57:47',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10330,10329,10154,'2015-12-23 15:57:48','2015-12-23 15:57:48',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10331,10329,10154,'2015-12-23 15:57:48','2015-12-23 15:57:48',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10339,10338,10154,'2015-12-23 15:57:48','2015-12-23 15:57:51',1,0,0,'classic','01','mobile','01','',3,'','',0),
 (10340,10338,10154,'2015-12-23 15:57:49','2015-12-23 15:57:49',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10365,10364,10154,'2015-12-23 15:57:51','2015-12-23 15:57:53',1,0,0,'classic','01','mobile','01','',4,'','',0),
 (10366,10364,10154,'2015-12-23 15:57:51','2015-12-23 15:57:51',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10691,10690,10154,'2015-12-23 16:27:46','2015-12-23 16:27:47',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10692,10690,10154,'2015-12-23 16:27:47','2015-12-23 16:27:47',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10700,10699,10154,'2015-12-23 16:28:00','2015-12-23 16:28:00',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10701,10699,10154,'2015-12-23 16:28:00','2015-12-23 16:28:00',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10709,10708,10154,'2015-12-23 16:28:11','2015-12-23 16:28:11',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10710,10708,10154,'2015-12-23 16:28:11','2015-12-23 16:28:11',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10718,10717,10154,'2015-12-23 16:29:23','2015-12-23 16:29:23',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10719,10717,10154,'2015-12-23 16:29:23','2015-12-23 16:29:23',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10727,10726,10154,'2015-12-23 16:29:39','2015-12-23 16:29:39',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10728,10726,10154,'2015-12-23 16:29:39','2015-12-23 16:29:39',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10736,10735,10154,'2015-12-23 16:29:49','2015-12-23 16:29:50',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10737,10735,10154,'2015-12-23 16:29:49','2015-12-23 16:29:49',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10770,10769,10154,'2015-12-23 16:35:57','2015-12-23 19:30:51',1,0,0,'Reclutamiento_WAR_Reclutamientotheme','01','mobile','01','',3,'showSiteName=true\n','c66a6dd3-3d17-4080-ac3a-6f40e7cd9d13',0),
 (10771,10769,10154,'2015-12-23 16:35:57','2015-12-23 19:21:58',0,0,0,'classic','01','mobile','01','',1,'showSiteName=true\nlfr-theme:regular:portlet-setup-show-borders-default=false\nlast-merge-time=1450888560538\n','c66a6dd3-3d17-4080-ac3a-6f40e7cd9d13',1),
 (10802,10801,10154,'2015-12-23 16:38:01','2015-12-23 18:41:18',1,0,0,'classic','01','mobile','01','',4,'','48c6ae7e-0b53-40bd-b0d9-5fb461d3bdfa',0),
 (10803,10801,10154,'2015-12-23 16:38:01','2015-12-23 18:41:48',0,0,0,'classic','01','mobile','01','',1,'last-merge-time=1450888683996\n','48c6ae7e-0b53-40bd-b0d9-5fb461d3bdfa',1),
 (10955,10954,10154,'2015-12-23 18:47:24','2015-12-23 18:47:24',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10956,10954,10154,'2015-12-23 18:47:24','2015-12-23 18:47:24',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10966,10965,10154,'2015-12-23 18:50:52','2015-12-23 19:12:29',1,0,0,'classic','01','mobile','01','',1,'','',0),
 (10967,10965,10154,'2015-12-23 18:50:52','2015-12-23 18:50:52',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10975,10974,10154,'2015-12-23 18:52:01','2015-12-23 18:52:01',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10976,10974,10154,'2015-12-23 18:52:01','2015-12-23 18:52:01',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10985,10984,10154,'2015-12-23 18:54:09','2015-12-23 18:54:09',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10986,10984,10154,'2015-12-23 18:54:09','2015-12-23 18:54:09',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (10994,10993,10154,'2015-12-23 18:56:27','2015-12-23 18:56:27',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (10995,10993,10154,'2015-12-23 18:56:27','2015-12-23 18:56:27',0,0,0,'classic','01','mobile','01','',0,'','',0),
 (11003,11002,10154,'2015-12-23 18:57:42','2015-12-23 18:57:42',1,0,0,'classic','01','mobile','01','',0,'','',0),
 (11004,11002,10154,'2015-12-23 18:57:42','2015-12-23 18:57:42',0,0,0,'classic','01','mobile','01','',0,'','',0);
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
 ('c109b71b-da04-4693-892b-b35f9eb04056',10337,10154,'2015-12-23 15:57:48','2015-12-23 16:28:50','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,es_ES,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">Community Site</Name><Name language-id=\"es_ES\">Community Site</Name></root>','Site with Forums, Calendar and Wiki','layoutsUpdateable=true\n',0),
 ('30e724ae-af2b-4ce5-8a4d-e97dab3d38f3',10363,10154,'2015-12-23 15:57:51','2015-12-23 16:28:57','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,es_ES,\" default-locale=\"es_ES\"><Name language-id=\"en_US\">Intranet Site</Name><Name language-id=\"es_ES\">Intranet Site</Name></root>','Site with Documents, Calendar and News','layoutsUpdateable=true\n',0),
 ('79e23eb8-0cfc-4c23-b7ff-fa9e12885353',10689,10154,'2015-12-23 16:27:46','2015-12-23 16:27:47','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">SITIO POSTILANTES</Name></root>','SITIO POSTILANTES','layoutsUpdateable=true\n',1),
 ('c66a6dd3-3d17-4080-ac3a-6f40e7cd9d13',10698,10154,'2015-12-23 16:28:00','2015-12-23 16:28:01','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">SITIO RECURSOS HUMANOS</Name></root>','','layoutsUpdateable=true\n',1),
 ('48c6ae7e-0b53-40bd-b0d9-5fb461d3bdfa',10707,10154,'2015-12-23 16:28:11','2015-12-23 16:28:19','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Name language-id=\"es_ES\">SITIO GERENCIAL</Name></root>','SITIO GERENCIAL','layoutsUpdateable=true\n',1);
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
 (10511,10010,10505,10509),
 (10520,10010,10513,10518),
 (10531,10010,10522,10527),
 (10539,10010,10533,10537),
 (10551,10010,10545,10549),
 (10564,10010,10557,10561),
 (10576,10010,10569,10573),
 (10591,10010,10581,10586),
 (10603,10010,10597,10601),
 (10615,10010,10609,10613),
 (10631,10010,10621,10626),
 (10643,10010,10634,10641),
 (10655,10010,10645,10652),
 (10668,10108,10662,10666),
 (10697,10002,10693,10695),
 (10706,10002,10702,10704),
 (10715,10002,10711,10713),
 (10724,10002,10720,10722),
 (10733,10002,10729,10731),
 (10742,10002,10738,10740),
 (10842,10002,10838,10840),
 (10856,10002,10852,10854),
 (10862,10002,10858,10860),
 (10868,10002,10864,10866),
 (10887,10002,10883,10885),
 (10896,10002,10892,10894),
 (10921,10002,10917,10919),
 (10926,10002,10922,10924),
 (10931,10002,10927,10929),
 (10936,10002,10932,10934),
 (10941,10002,10937,10939),
 (11017,10002,11013,11015),
 (11026,10002,11022,11024);
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
 ('5601aab1-a808-4c57-9cc0-51389e499088',10176,10172,10154,10158,'','2015-12-23 15:57:35','2015-12-23 15:57:35',10002,10175,-1,10177,10176,0,'10175','10175','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:35'),
 ('d1747d7d-8db7-423f-8b86-952bcb63aa9c',10184,10180,10154,10158,'','2015-12-23 15:57:36','2015-12-23 15:57:36',10002,10183,-1,10185,10184,0,'10183','10183','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:36'),
 ('2506daa4-7d43-4ac7-8ed2-93573b0c628a',10314,10310,10154,10158,'','2015-12-23 15:57:46','2015-12-23 15:57:46',10002,10313,-1,10315,10314,0,'10313','10313','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:46'),
 ('b6ed70cf-41e1-4980-b781-8e4df39c8b13',10324,10320,10154,10158,'','2015-12-23 15:57:47','2015-12-23 15:57:47',10002,10323,-1,10325,10324,0,'10323','10323','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:47'),
 ('6a80892c-4582-441e-8cfb-1fdc673d7d86',10333,10329,10154,10158,'','2015-12-23 15:57:48','2015-12-23 15:57:48',10002,10332,-1,10334,10333,0,'10332','10332','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:48'),
 ('023cf1cf-42e9-42ce-88cf-97a63cc93dd5',10347,10338,10154,10158,'','2015-12-23 15:57:50','2015-12-23 15:57:50',10002,10346,-1,10348,10347,0,'10346','10346','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:50'),
 ('0e076a15-8aae-4c97-80f9-24d90684deb4',10353,10338,10154,10158,'','2015-12-23 15:57:50','2015-12-23 15:57:50',10002,10352,-1,10354,10353,0,'10352','10352','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:50'),
 ('accc0976-3d23-4b95-b2dd-aa384ef64551',10359,10338,10154,10158,'','2015-12-23 15:57:51','2015-12-23 15:57:51',10002,10358,-1,10360,10359,0,'10358','10358','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:51'),
 ('f5e09eba-b1ac-4d81-919e-4d9e55ca2708',10373,10364,10154,10158,'','2015-12-23 15:57:52','2015-12-23 15:57:52',10002,10372,-1,10374,10373,0,'10372','10372','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:52'),
 ('028a63da-6910-4bf9-8ec0-f579f08de551',10381,10364,10154,10158,'','2015-12-23 15:57:52','2015-12-23 15:57:52',10002,10380,-1,10382,10381,0,'10380','10380','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:52'),
 ('d6f87d57-0e7e-48f7-8b51-9b1b04c4f553',10387,10364,10154,10158,'','2015-12-23 15:57:53','2015-12-23 15:57:53',10002,10386,-1,10388,10387,0,'10386','10386','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:53'),
 ('96f86112-7363-4643-9c94-128bc89b033f',10393,10364,10154,10158,'','2015-12-23 15:57:53','2015-12-23 15:57:53',10002,10392,-1,10394,10393,0,'10392','10392','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 15:57:53'),
 ('9fe76175-7042-4fbd-8c62-795e21a5abb3',10508,10180,10154,10158,'','2015-12-23 16:22:46','2015-12-23 16:22:46',10010,10505,-1,10509,10508,0,'10505','10505','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:46'),
 ('ffc3eac4-eea9-40dd-b0e4-10c2c7de9245',10517,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10010,10513,-1,10518,10517,0,'10513','10513','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:47'),
 ('2fc3b3b2-df5e-4974-9ac8-f2fb12320089',10526,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10010,10522,-1,10527,10526,0,'10522','10522','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:47'),
 ('17ba40c5-4557-4987-871f-88972d98b810',10536,10180,10154,10158,'','2015-12-23 16:22:47','2015-12-23 16:22:47',10010,10533,-1,10537,10536,0,'10533','10533','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:47'),
 ('e1fa4c80-a823-4150-baed-b60e09607864',10548,10180,10154,10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48',10010,10545,-1,10549,10548,0,'10545','10545','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:48'),
 ('c7dfdffe-1122-4eb3-abed-5f19a2c32aab',10560,10180,10154,10158,'','2015-12-23 16:22:48','2015-12-23 16:22:48',10010,10557,-1,10561,10560,0,'10557','10557','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:48'),
 ('7cb69cbf-22bf-445e-a64f-ec6dc65cf036',10572,10180,10154,10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49',10010,10569,-1,10573,10572,0,'10569','10569','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:49'),
 ('ba7d051d-814e-4114-80d0-22533fc93e59',10585,10180,10154,10158,'','2015-12-23 16:22:49','2015-12-23 16:22:49',10010,10581,-1,10586,10585,0,'10581','10581','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:49'),
 ('604ba661-5650-46a8-b103-da0da3676fbf',10600,10180,10154,10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50',10010,10597,-1,10601,10600,0,'10597','10597','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:50'),
 ('c473e97c-381c-4199-8efd-2a416c8c7f50',10612,10180,10154,10158,'','2015-12-23 16:22:50','2015-12-23 16:22:50',10010,10609,-1,10613,10612,0,'10609','10609','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:50'),
 ('0816be80-ae74-4210-96ee-d63b0e19c940',10625,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10010,10621,-1,10626,10625,0,'10621','10621','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:51'),
 ('cf4a7733-b0dc-41bc-8e33-a93ef2478ad5',10640,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10010,10634,-1,10641,10640,0,'10634','10634','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:51'),
 ('751175e6-dbb4-43d5-9166-d96bd3164041',10651,10180,10154,10158,'','2015-12-23 16:22:51','2015-12-23 16:22:51',10010,10645,-1,10652,10651,0,'10645','10645','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:51'),
 ('9e8ee842-be0f-4449-bc55-d81576a94498',10665,10180,10154,10158,'','2015-12-23 16:22:52','2015-12-23 16:22:52',10108,10662,-1,10666,10665,0,'10662','10662','bbcode',0,1,0,0,0,0,10158,'','2015-12-23 16:22:52'),
 ('70bc9849-a84f-4193-99e0-07162761ce83',10694,10690,10154,10196,'Test Test','2015-12-23 16:27:47','2015-12-23 16:27:47',10002,10693,-1,10695,10694,0,'10693','10693','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 16:27:47'),
 ('3bfa84f4-8082-4f27-89ee-2abf3c7e9349',10703,10699,10154,10196,'Test Test','2015-12-23 16:28:00','2015-12-23 16:28:00',10002,10702,-1,10704,10703,0,'10702','10702','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 16:28:00'),
 ('8f4a3c52-62e5-493e-8f00-aecddd0c6f2e',10712,10708,10154,10196,'Test Test','2015-12-23 16:28:11','2015-12-23 16:28:11',10002,10711,-1,10713,10712,0,'10711','10711','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 16:28:11'),
 ('10106732-fc02-4ac5-806f-2296fc2579e5',10721,10717,10154,10196,'Test Test','2015-12-23 16:29:23','2015-12-23 16:29:23',10002,10720,-1,10722,10721,0,'10720','10720','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 16:29:23'),
 ('6b56ff4e-0749-42cd-a0b5-c9477d4962b0',10730,10726,10154,10196,'Test Test','2015-12-23 16:29:39','2015-12-23 16:29:39',10002,10729,-1,10731,10730,0,'10729','10729','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 16:29:39'),
 ('69356a31-3d3f-4c7b-809d-1577eb00869f',10739,10735,10154,10196,'Test Test','2015-12-23 16:29:50','2015-12-23 16:29:50',10002,10738,-1,10740,10739,0,'10738','10738','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 16:29:50'),
 ('0d58cc3a-c3e7-4a1d-a728-c8f4a7736dcf',10839,10180,10154,10196,'Test Test','2015-12-23 16:53:56','2015-12-23 16:53:56',10002,10838,-1,10840,10839,0,'10838','10838','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 16:53:56'),
 ('93d138d8-75a3-4ffe-8c82-1fbeb247fd8f',10853,10180,10154,10196,'Test Test','2015-12-23 16:57:15','2015-12-23 16:57:15',10002,10852,-1,10854,10853,0,'10852','10852','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 16:57:15'),
 ('8713d1a8-1bc4-49f4-9a6e-e614a46df056',10859,10180,10154,10196,'Test Test','2015-12-23 16:57:42','2015-12-23 16:57:42',10002,10858,-1,10860,10859,0,'10858','10858','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 16:57:42'),
 ('3a338527-010b-4fa1-9683-9393ddb94c49',10865,10180,10154,10196,'Test Test','2015-12-23 16:58:14','2015-12-23 16:58:14',10002,10864,-1,10866,10865,0,'10864','10864','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 16:58:14'),
 ('1362f806-6e3e-4a71-8d22-1d0a87bad005',10884,10180,10154,10196,'Test Test','2015-12-23 17:22:59','2015-12-23 17:22:59',10002,10883,-1,10885,10884,0,'10883','10883','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 17:22:59'),
 ('b14d2443-246b-4433-9be6-dfbc1ccd42a5',10893,10180,10154,10196,'Test Test','2015-12-23 17:25:42','2015-12-23 17:25:42',10002,10892,-1,10894,10893,0,'10892','10892','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 17:25:42'),
 ('816f593c-d6e1-4094-ac49-86394d8f8d75',10918,10769,10154,10196,'Test Test','2015-12-23 18:39:29','2015-12-23 18:39:29',10002,10917,-1,10919,10918,0,'10917','10917','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 18:39:29'),
 ('9bae7d83-5a56-4873-ae15-7777fa392829',10923,10801,10154,10196,'Test Test','2015-12-23 18:40:53','2015-12-23 18:40:53',10002,10922,-1,10924,10923,0,'10922','10922','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 18:40:53'),
 ('6c9402ed-11ba-4b6b-a63d-1747b93d0d84',10928,10801,10154,10196,'Test Test','2015-12-23 18:41:07','2015-12-23 18:41:07',10002,10927,-1,10929,10928,0,'10927','10927','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 18:41:07'),
 ('d4f3264e-a059-4dc6-9f83-e6e281fc57a7',10933,10801,10154,10196,'Test Test','2015-12-23 18:41:18','2015-12-23 18:41:18',10002,10932,-1,10934,10933,0,'10932','10932','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 18:41:18'),
 ('4149b875-6dcc-405a-8c66-a8df9875dc09',10938,10769,10154,10196,'Test Test','2015-12-23 18:42:54','2015-12-23 18:42:54',10002,10937,-1,10939,10938,0,'10937','10937','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 18:42:54'),
 ('4f170903-77f2-4e04-aa21-92d3c1ecf9bc',11014,10965,10154,10963,'Ivan Quiroz','2015-12-23 19:12:29','2015-12-23 19:12:29',10002,11013,-1,11015,11014,0,'11013','11013','bbcode',0,0,0,0,0,0,10963,'Ivan Quiroz','2015-12-23 19:12:29'),
 ('67ceb8b2-8119-421e-94c1-f964ef945e3e',11023,10198,10154,10196,'Test Test','2015-12-23 19:18:55','2015-12-23 19:18:55',10002,11022,-1,11024,11023,0,'11022','11022','bbcode',0,0,0,0,0,0,10196,'Test Test','2015-12-23 19:18:55');
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
 (10177,10172,10154,-1,10176,10158,1,0,0,'2015-12-23 15:57:35',0,0,0,10158,'','2015-12-23 15:57:35'),
 (10185,10180,10154,-1,10184,10158,1,0,0,'2015-12-23 15:57:36',0,0,0,10158,'','2015-12-23 15:57:36'),
 (10315,10310,10154,-1,10314,10158,1,0,0,'2015-12-23 15:57:46',0,0,0,10158,'','2015-12-23 15:57:46'),
 (10325,10320,10154,-1,10324,10158,1,0,0,'2015-12-23 15:57:47',0,0,0,10158,'','2015-12-23 15:57:47'),
 (10334,10329,10154,-1,10333,10158,1,0,0,'2015-12-23 15:57:48',0,0,0,10158,'','2015-12-23 15:57:48'),
 (10348,10338,10154,-1,10347,10158,1,0,0,'2015-12-23 15:57:50',0,0,0,10158,'','2015-12-23 15:57:50'),
 (10354,10338,10154,-1,10353,10158,1,0,0,'2015-12-23 15:57:50',0,0,0,10158,'','2015-12-23 15:57:50'),
 (10360,10338,10154,-1,10359,10158,1,0,0,'2015-12-23 15:57:51',0,0,0,10158,'','2015-12-23 15:57:51'),
 (10374,10364,10154,-1,10373,10158,1,0,0,'2015-12-23 15:57:52',0,0,0,10158,'','2015-12-23 15:57:52'),
 (10382,10364,10154,-1,10381,10158,1,0,0,'2015-12-23 15:57:52',0,0,0,10158,'','2015-12-23 15:57:52'),
 (10388,10364,10154,-1,10387,10158,1,0,0,'2015-12-23 15:57:53',0,0,0,10158,'','2015-12-23 15:57:53'),
 (10394,10364,10154,-1,10393,10158,1,0,0,'2015-12-23 15:57:53',0,0,0,10158,'','2015-12-23 15:57:53'),
 (10509,10180,10154,-1,10508,10158,1,0,0,'2015-12-23 16:22:46',0,0,0,10158,'','2015-12-23 16:22:46'),
 (10518,10180,10154,-1,10517,10158,1,0,0,'2015-12-23 16:22:47',0,0,0,10158,'','2015-12-23 16:22:47'),
 (10527,10180,10154,-1,10526,10158,1,0,0,'2015-12-23 16:22:47',0,0,0,10158,'','2015-12-23 16:22:47'),
 (10537,10180,10154,-1,10536,10158,1,0,0,'2015-12-23 16:22:47',0,0,0,10158,'','2015-12-23 16:22:47'),
 (10549,10180,10154,-1,10548,10158,1,0,0,'2015-12-23 16:22:48',0,0,0,10158,'','2015-12-23 16:22:48'),
 (10561,10180,10154,-1,10560,10158,1,0,0,'2015-12-23 16:22:48',0,0,0,10158,'','2015-12-23 16:22:48'),
 (10573,10180,10154,-1,10572,10158,1,0,0,'2015-12-23 16:22:49',0,0,0,10158,'','2015-12-23 16:22:49'),
 (10586,10180,10154,-1,10585,10158,1,0,0,'2015-12-23 16:22:49',0,0,0,10158,'','2015-12-23 16:22:49'),
 (10601,10180,10154,-1,10600,10158,1,0,0,'2015-12-23 16:22:50',0,0,0,10158,'','2015-12-23 16:22:50'),
 (10613,10180,10154,-1,10612,10158,1,0,0,'2015-12-23 16:22:50',0,0,0,10158,'','2015-12-23 16:22:50'),
 (10626,10180,10154,-1,10625,10158,1,0,0,'2015-12-23 16:22:51',0,0,0,10158,'','2015-12-23 16:22:51'),
 (10641,10180,10154,-1,10640,10158,1,0,0,'2015-12-23 16:22:51',0,0,0,10158,'','2015-12-23 16:22:51'),
 (10652,10180,10154,-1,10651,10158,1,0,0,'2015-12-23 16:22:51',0,0,0,10158,'','2015-12-23 16:22:51'),
 (10666,10180,10154,-1,10665,10158,1,0,0,'2015-12-23 16:22:52',0,0,0,10158,'','2015-12-23 16:22:52'),
 (10695,10690,10154,-1,10694,10196,1,0,10196,'2015-12-23 16:27:47',0,0,0,10196,'Test Test','2015-12-23 16:27:47'),
 (10704,10699,10154,-1,10703,10196,1,0,10196,'2015-12-23 16:28:00',0,0,0,10196,'Test Test','2015-12-23 16:28:00'),
 (10713,10708,10154,-1,10712,10196,1,0,10196,'2015-12-23 16:28:11',0,0,0,10196,'Test Test','2015-12-23 16:28:11'),
 (10722,10717,10154,-1,10721,10196,1,0,10196,'2015-12-23 16:29:23',0,0,0,10196,'Test Test','2015-12-23 16:29:23'),
 (10731,10726,10154,-1,10730,10196,1,0,10196,'2015-12-23 16:29:39',0,0,0,10196,'Test Test','2015-12-23 16:29:39'),
 (10740,10735,10154,-1,10739,10196,1,0,10196,'2015-12-23 16:29:50',0,0,0,10196,'Test Test','2015-12-23 16:29:50'),
 (10840,10180,10154,-1,10839,10196,1,0,10196,'2015-12-23 16:53:56',0,0,0,10196,'Test Test','2015-12-23 16:53:56'),
 (10854,10180,10154,-1,10853,10196,1,0,10196,'2015-12-23 16:57:15',0,0,0,10196,'Test Test','2015-12-23 16:57:15'),
 (10860,10180,10154,-1,10859,10196,1,0,10196,'2015-12-23 16:57:42',0,0,0,10196,'Test Test','2015-12-23 16:57:42'),
 (10866,10180,10154,-1,10865,10196,1,0,10196,'2015-12-23 16:58:14',0,0,0,10196,'Test Test','2015-12-23 16:58:14'),
 (10885,10180,10154,-1,10884,10196,1,0,10196,'2015-12-23 17:22:59',0,0,0,10196,'Test Test','2015-12-23 17:22:59'),
 (10894,10180,10154,-1,10893,10196,1,0,10196,'2015-12-23 17:25:42',0,0,0,10196,'Test Test','2015-12-23 17:25:42'),
 (10919,10769,10154,-1,10918,10196,1,0,10196,'2015-12-23 18:39:29',0,0,0,10196,'Test Test','2015-12-23 18:39:29'),
 (10924,10801,10154,-1,10923,10196,1,0,10196,'2015-12-23 18:40:53',0,0,0,10196,'Test Test','2015-12-23 18:40:53'),
 (10929,10801,10154,-1,10928,10196,1,0,10196,'2015-12-23 18:41:07',0,0,0,10196,'Test Test','2015-12-23 18:41:07'),
 (10934,10801,10154,-1,10933,10196,1,0,10196,'2015-12-23 18:41:18',0,0,0,10196,'Test Test','2015-12-23 18:41:18'),
 (10939,10769,10154,-1,10938,10196,1,0,10196,'2015-12-23 18:42:54',0,0,0,10196,'Test Test','2015-12-23 18:42:54'),
 (11015,10965,10154,-1,11014,10963,1,0,10963,'2015-12-23 19:12:29',0,0,0,10963,'Ivan Quiroz','2015-12-23 19:12:29'),
 (11024,10198,10154,-1,11023,10196,1,0,10196,'2015-12-23 19:18:55',0,0,0,10196,'Test Test','2015-12-23 19:18:55');
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
 (10195,10154,10158,'','2015-12-23 15:57:37','2015-12-23 18:49:02',1,'Default Password Policy','Default Password Policy',1,0,0,0,1,0,6,0,1,0,1,0,6,0,1209600,86400,0,0,3,0,1,600,0);
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
 (10464,10158,4,'<portlet-preferences />'),
 (10470,10196,4,'<portlet-preferences><preference><name>125#users-order-by-col</name><value>last-name</value></preference><preference><name>com.liferay.portal.util.SessionTreeJSClicks#layoutsTree</name><value>2,1,</value></preference><preference><name>129#password-policies-order-by-col</name><value>name</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_dockbar_pinned</name><value>1</value></preference><preference><name>129#password-policies-order-by-type</name><value>asc</value></preference><preference><name>125#users-order-by-type</name><value>asc</value></preference></portlet-preferences>'),
 (11018,10963,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#usersAdminUsersPanel</name><value>open</value></preference></portlet-preferences>');
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
 (10405,10154,'Complemento_WAR_Complementoportlet','',1),
 (10457,10154,'SliderHitss_WAR_SliderHitssportlet','',1),
 (11101,10154,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet','',1);
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
 (10357,0,3,10352,'101_INSTANCE_dXye0WCixT91','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10009</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),
 (10377,0,3,10372,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
 (10378,0,3,10372,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),
 (10379,0,3,10372,'101_INSTANCE_H2KS2UcKhHQt','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),
 (10385,0,3,10380,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
 (10391,0,3,10386,'101_INSTANCE_rBN6ioG8GzjH','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10009</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),
 (10397,0,3,10392,'39_INSTANCE_W0ZZI3Ery8TE','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),
 (10398,0,3,10392,'39_INSTANCE_0kFzJ8ht4uKw','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),
 (10461,0,3,10183,'103','<portlet-preferences />'),
 (10462,0,3,10183,'47','<portlet-preferences />'),
 (10463,0,3,10183,'58','<portlet-preferences />'),
 (10471,0,3,10183,'145','<portlet-preferences />'),
 (10472,0,3,10183,'status','<portlet-preferences />'),
 (10669,10180,2,0,'15','<portlet-preferences />'),
 (10675,0,3,10183,'new-password','<portlet-preferences />'),
 (10676,0,3,10175,'160','<portlet-preferences />'),
 (10677,0,3,10183,'49','<portlet-preferences />'),
 (10678,0,3,10175,'145','<portlet-preferences />'),
 (10679,0,3,10175,'146','<portlet-preferences />'),
 (10680,0,3,10175,'149','<portlet-preferences />'),
 (10681,0,3,10175,'128','<portlet-preferences />'),
 (10743,0,3,10175,'134','<portlet-preferences />'),
 (10744,0,3,10175,'86','<portlet-preferences />'),
 (10745,0,3,10175,'165','<portlet-preferences />'),
 (10747,10690,2,0,'19','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\">\n			<preference>\n				<name>priorities</name>\n				<value>Urgent,/message_boards/priority_urgent.png,3.0</value>\n				<value>Sticky,/message_boards/priority_sticky.png,2.0</value>\n				<value>Announcement,/message_boards/priority_announcement.png,1.0</value>\n			</preference>\n			<preference>\n				<name>ranks</name>\n				<value>Youngling=0</value>\n				<value>Padawan=25</value>\n				<value>Jedi Knight=100</value>\n				<value>Jedi Master=250</value>\n				<value>Jedi Council Member=500</value>\n				<value>Yoda=1000</value>\n				<value>Moderator=organization:Message Boards Administrator</value>\n				<value>Moderator=organization-role:Message Boards Administrator</value>\n				<value>Moderator=regular-role:Message Boards Administrator</value>\n				<value>Moderator=site-role:Message Boards Administrator</value>\n				<value>Moderator=user-group:Message Boards Administrator</value>\n			</preference>\n		</portlet-preferences>'),
 (10748,0,3,10693,'178','<portlet-preferences />'),
 (10749,10690,2,0,'8','<portlet-preferences />'),
 (10750,0,3,10693,'161','<portlet-preferences />'),
 (10751,0,3,10693,'162','<portlet-preferences />'),
 (10752,0,3,10693,'167','<portlet-preferences />'),
 (10753,0,3,10693,'56','<portlet-preferences />'),
 (10754,0,3,10693,'20','<portlet-preferences />'),
 (10755,0,3,10693,'28','<portlet-preferences />'),
 (10756,10690,2,0,'15','<portlet-preferences />'),
 (10757,0,3,10693,'169','<portlet-preferences />'),
 (10758,10690,2,0,'25','<portlet-preferences />'),
 (10759,0,3,10693,'166','<portlet-preferences />'),
 (10760,10690,2,0,'33','<portlet-preferences />'),
 (10765,0,3,10764,'167',''),
 (10766,0,3,10764,'20',''),
 (10767,0,3,10764,'15',''),
 (10768,0,3,10764,'166',''),
 (10774,10699,2,0,'19','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\">\n			<preference>\n				<name>priorities</name>\n				<value>Urgent,/message_boards/priority_urgent.png,3.0</value>\n				<value>Sticky,/message_boards/priority_sticky.png,2.0</value>\n				<value>Announcement,/message_boards/priority_announcement.png,1.0</value>\n			</preference>\n			<preference>\n				<name>ranks</name>\n				<value>Youngling=0</value>\n				<value>Padawan=25</value>\n				<value>Jedi Knight=100</value>\n				<value>Jedi Master=250</value>\n				<value>Jedi Council Member=500</value>\n				<value>Yoda=1000</value>\n				<value>Moderator=organization:Message Boards Administrator</value>\n				<value>Moderator=organization-role:Message Boards Administrator</value>\n				<value>Moderator=regular-role:Message Boards Administrator</value>\n				<value>Moderator=site-role:Message Boards Administrator</value>\n				<value>Moderator=user-group:Message Boards Administrator</value>\n			</preference>\n		</portlet-preferences>'),
 (10775,0,3,10702,'178','<portlet-preferences />'),
 (10776,10699,2,0,'8','<portlet-preferences />'),
 (10777,0,3,10702,'161','<portlet-preferences />'),
 (10778,0,3,10702,'162','<portlet-preferences />'),
 (10779,0,3,10702,'167','<portlet-preferences />'),
 (10780,0,3,10702,'56','<portlet-preferences />'),
 (10781,0,3,10702,'20','<portlet-preferences />'),
 (10782,0,3,10702,'28','<portlet-preferences />'),
 (10783,10699,2,0,'15','<portlet-preferences />'),
 (10784,0,3,10702,'169','<portlet-preferences />'),
 (10785,10699,2,0,'25','<portlet-preferences />'),
 (10786,0,3,10702,'166','<portlet-preferences />'),
 (10787,10699,2,0,'33','<portlet-preferences />'),
 (10791,0,3,10790,'167',''),
 (10792,0,3,10790,'20',''),
 (10793,0,3,10790,'15',''),
 (10794,0,3,10790,'166',''),
 (10797,0,3,10796,'167',''),
 (10798,0,3,10796,'20',''),
 (10799,0,3,10796,'15',''),
 (10800,0,3,10796,'166',''),
 (10806,10708,2,0,'19','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\">\n			<preference>\n				<name>priorities</name>\n				<value>Urgent,/message_boards/priority_urgent.png,3.0</value>\n				<value>Sticky,/message_boards/priority_sticky.png,2.0</value>\n				<value>Announcement,/message_boards/priority_announcement.png,1.0</value>\n			</preference>\n			<preference>\n				<name>ranks</name>\n				<value>Youngling=0</value>\n				<value>Padawan=25</value>\n				<value>Jedi Knight=100</value>\n				<value>Jedi Master=250</value>\n				<value>Jedi Council Member=500</value>\n				<value>Yoda=1000</value>\n				<value>Moderator=organization:Message Boards Administrator</value>\n				<value>Moderator=organization-role:Message Boards Administrator</value>\n				<value>Moderator=regular-role:Message Boards Administrator</value>\n				<value>Moderator=site-role:Message Boards Administrator</value>\n				<value>Moderator=user-group:Message Boards Administrator</value>\n			</preference>\n		</portlet-preferences>'),
 (10807,0,3,10711,'178','<portlet-preferences />'),
 (10808,10708,2,0,'8','<portlet-preferences />'),
 (10809,0,3,10711,'161','<portlet-preferences />'),
 (10810,0,3,10711,'162','<portlet-preferences />'),
 (10811,0,3,10711,'167','<portlet-preferences />'),
 (10812,0,3,10711,'56','<portlet-preferences />'),
 (10813,0,3,10711,'20','<portlet-preferences />'),
 (10814,0,3,10711,'28','<portlet-preferences />'),
 (10815,10708,2,0,'15','<portlet-preferences />'),
 (10816,0,3,10711,'169','<portlet-preferences />'),
 (10817,10708,2,0,'25','<portlet-preferences />'),
 (10818,0,3,10711,'166','<portlet-preferences />'),
 (10819,10708,2,0,'33','<portlet-preferences />'),
 (10823,0,3,10822,'167',''),
 (10824,0,3,10822,'20',''),
 (10825,0,3,10822,'15',''),
 (10826,0,3,10822,'166',''),
 (10829,0,3,10828,'167',''),
 (10830,0,3,10828,'20',''),
 (10831,0,3,10828,'15',''),
 (10832,0,3,10828,'166',''),
 (10833,0,3,10822,'103','<portlet-preferences />'),
 (10834,0,3,10822,'145','<portlet-preferences />'),
 (10835,0,3,10790,'103','<portlet-preferences />'),
 (10836,0,3,10790,'145','<portlet-preferences />'),
 (10837,0,3,10175,'156','<portlet-preferences />'),
 (10844,0,3,10183,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10845,0,3,10838,'103','<portlet-preferences />'),
 (10846,0,3,10838,'145','<portlet-preferences />'),
 (10847,0,3,10838,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10848,0,3,10838,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10849,0,3,10175,'49','<portlet-preferences />'),
 (10850,0,3,10720,'103','<portlet-preferences />'),
 (10851,0,3,10720,'145','<portlet-preferences />'),
 (10857,0,3,10838,'87','<portlet-preferences />'),
 (10869,0,3,10175,'88','<portlet-preferences />'),
 (10870,0,3,10183,'88','<portlet-preferences />'),
 (10871,0,3,10858,'103','<portlet-preferences />'),
 (10872,0,3,10858,'145','<portlet-preferences />'),
 (10873,0,3,10858,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10874,0,3,10858,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10875,0,3,10864,'103','<portlet-preferences />'),
 (10876,0,3,10864,'145','<portlet-preferences />'),
 (10877,0,3,10864,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10878,0,3,10864,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10879,0,3,10852,'103','<portlet-preferences />'),
 (10880,0,3,10852,'145','<portlet-preferences />'),
 (10881,0,3,10852,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10882,0,3,10852,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10888,0,3,10883,'103','<portlet-preferences />'),
 (10889,0,3,10883,'145','<portlet-preferences />'),
 (10890,0,3,10883,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10891,0,3,10883,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10897,0,3,10892,'103','<portlet-preferences />'),
 (10898,0,3,10892,'145','<portlet-preferences />'),
 (10899,0,3,10892,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10900,0,3,10892,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (10946,10198,2,0,'8','<portlet-preferences />'),
 (10951,0,3,10175,'125','<portlet-preferences />'),
 (10961,0,3,10175,'129','<portlet-preferences />'),
 (10962,0,3,10175,'2','<portlet-preferences />'),
 (11010,0,3,10175,'139','<portlet-preferences />'),
 (11019,0,3,10175,'15','<portlet-preferences />'),
 (11020,0,3,10175,'20','<portlet-preferences />'),
 (11021,0,3,10175,'130','<portlet-preferences />'),
 (11027,0,3,10790,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11028,0,3,10790,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11029,0,3,10790,'88','<portlet-preferences />'),
 (11030,0,3,10796,'103','<portlet-preferences />'),
 (11031,0,3,10796,'145','<portlet-preferences />'),
 (11032,0,3,10917,'103','<portlet-preferences />'),
 (11033,0,3,10917,'145','<portlet-preferences />'),
 (11034,0,3,10917,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11035,0,3,10917,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11036,0,3,10790,'49','<portlet-preferences />'),
 (11037,0,3,11013,'103','<portlet-preferences />'),
 (11038,0,3,11013,'11','<portlet-preferences />'),
 (11039,0,3,11013,'23','<portlet-preferences />'),
 (11040,0,3,11013,'29','<portlet-preferences />'),
 (11041,10965,2,0,'8','<portlet-preferences />'),
 (11042,0,3,11013,'8','<portlet-preferences />'),
 (11043,0,3,11013,'82','<portlet-preferences />'),
 (11044,0,3,11013,'145','<portlet-preferences />'),
 (11045,0,3,10175,'174','<portlet-preferences />'),
 (11046,0,3,11013,'49','<portlet-preferences />'),
 (11047,0,3,10796,'complemento_WAR_Complementoportlet','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11048,0,3,10796,'58','<portlet-preferences><preference><name>portlet-setup-show-borders</name><value>false</value></preference></portlet-preferences>'),
 (11049,10769,2,0,'15','<portlet-preferences />'),
 (11050,10801,2,0,'15','<portlet-preferences />');
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
 (1,'2015-12-23 10:53:25','2015-12-23 21:55:25','portal',6101,'2015-12-23 21:55:25',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.'),
 (10423,'2015-12-23 15:58:44','2015-12-23 15:58:44','kaleo-web',100,NULL,1,0,'');
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
 (833,'Complemento_WAR_Complementoportlet','VIEW',1),
 (834,'Complemento_WAR_Complementoportlet','ADD_TO_PAGE',2),
 (835,'Complemento_WAR_Complementoportlet','CONFIGURATION',4),
 (836,'Complemento_WAR_Complementoportlet','PERMISSIONS',8),
 (837,'1_WAR_marketplaceportlet','VIEW',1),
 (838,'1_WAR_marketplaceportlet','ADD_TO_PAGE',2),
 (839,'1_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',4),
 (840,'1_WAR_marketplaceportlet','CONFIGURATION',8),
 (841,'1_WAR_marketplaceportlet','PERMISSIONS',16),
 (842,'2_WAR_marketplaceportlet','VIEW',1),
 (843,'2_WAR_marketplaceportlet','ADD_TO_PAGE',2),
 (844,'2_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',4),
 (845,'2_WAR_marketplaceportlet','CONFIGURATION',8),
 (846,'2_WAR_marketplaceportlet','PERMISSIONS',16),
 (847,'SliderHitss_WAR_SliderHitssportlet','PREFERENCES',2),
 (848,'SliderHitss_WAR_SliderHitssportlet','VIEW',1),
 (849,'SliderHitss_WAR_SliderHitssportlet','ADD_TO_PAGE',4),
 (850,'SliderHitss_WAR_SliderHitssportlet','CONFIGURATION',8),
 (851,'SliderHitss_WAR_SliderHitssportlet','PERMISSIONS',16),
 (901,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet','VIEW',1),
 (902,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet','ADD_TO_PAGE',2),
 (903,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet','CONFIGURATION',4),
 (904,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet','PERMISSIONS',8);
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
 (344,10154,'101',4,'10323_LAYOUT_101_INSTANCE_kbn2Fd7mjPm0',10162,0,1),
 (342,10154,'101',4,'10323_LAYOUT_101_INSTANCE_kbn2Fd7mjPm0',10163,0,15),
 (343,10154,'101',4,'10323_LAYOUT_101_INSTANCE_kbn2Fd7mjPm0',10170,0,1),
 (301,10154,'102',1,'10154',10162,0,2),
 (302,10154,'102',1,'10154',10164,0,2),
 (303,10154,'102',1,'10154',10165,0,2),
 (106,10154,'102',2,'10189',10165,0,1),
 (407,10154,'103',4,'10183_LAYOUT_103',10162,0,1),
 (405,10154,'103',4,'10183_LAYOUT_103',10163,0,15),
 (406,10154,'103',4,'10183_LAYOUT_103',10170,0,1),
 (673,10154,'103',4,'10720_LAYOUT_103',10162,0,1),
 (671,10154,'103',4,'10720_LAYOUT_103',10163,0,15),
 (672,10154,'103',4,'10720_LAYOUT_103',10170,0,1),
 (643,10154,'103',4,'10790_LAYOUT_103',10162,0,1),
 (641,10154,'103',4,'10790_LAYOUT_103',10163,0,15),
 (642,10154,'103',4,'10790_LAYOUT_103',10170,0,1),
 (887,10154,'103',4,'10796_LAYOUT_103',10162,0,1),
 (885,10154,'103',4,'10796_LAYOUT_103',10163,0,15),
 (886,10154,'103',4,'10796_LAYOUT_103',10170,0,1),
 (637,10154,'103',4,'10822_LAYOUT_103',10162,0,1),
 (635,10154,'103',4,'10822_LAYOUT_103',10163,0,15),
 (636,10154,'103',4,'10822_LAYOUT_103',10170,0,1),
 (658,10154,'103',4,'10838_LAYOUT_103',10162,0,1),
 (656,10154,'103',4,'10838_LAYOUT_103',10163,0,15),
 (657,10154,'103',4,'10838_LAYOUT_103',10170,0,1),
 (721,10154,'103',4,'10852_LAYOUT_103',10162,0,1),
 (719,10154,'103',4,'10852_LAYOUT_103',10163,0,15),
 (720,10154,'103',4,'10852_LAYOUT_103',10170,0,1),
 (697,10154,'103',4,'10858_LAYOUT_103',10162,0,1),
 (695,10154,'103',4,'10858_LAYOUT_103',10163,0,15),
 (696,10154,'103',4,'10858_LAYOUT_103',10170,0,1),
 (709,10154,'103',4,'10864_LAYOUT_103',10162,0,1),
 (707,10154,'103',4,'10864_LAYOUT_103',10163,0,15),
 (708,10154,'103',4,'10864_LAYOUT_103',10170,0,1),
 (735,10154,'103',4,'10883_LAYOUT_103',10162,0,1),
 (733,10154,'103',4,'10883_LAYOUT_103',10163,0,15),
 (734,10154,'103',4,'10883_LAYOUT_103',10170,0,1),
 (749,10154,'103',4,'10892_LAYOUT_103',10162,0,1),
 (747,10154,'103',4,'10892_LAYOUT_103',10163,0,15),
 (748,10154,'103',4,'10892_LAYOUT_103',10170,0,1),
 (897,10154,'103',4,'10917_LAYOUT_103',10162,0,1),
 (895,10154,'103',4,'10917_LAYOUT_103',10163,0,15),
 (896,10154,'103',4,'10917_LAYOUT_103',10170,0,1),
 (913,10154,'103',4,'11013_LAYOUT_103',10162,0,1),
 (911,10154,'103',4,'11013_LAYOUT_103',10163,0,15),
 (912,10154,'103',4,'11013_LAYOUT_103',10164,0,1),
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
 (914,10154,'11',4,'11013_LAYOUT_11',10163,0,15),
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
 (338,10154,'122',4,'10323_LAYOUT_122_INSTANCE_MpEQom1XaKot',10162,0,1),
 (336,10154,'122',4,'10323_LAYOUT_122_INSTANCE_MpEQom1XaKot',10163,0,15),
 (337,10154,'122',4,'10323_LAYOUT_122_INSTANCE_MpEQom1XaKot',10170,0,1),
 (354,10154,'122',4,'10332_LAYOUT_122_INSTANCE_ICW16SbQ7nCe',10162,0,1),
 (352,10154,'122',4,'10332_LAYOUT_122_INSTANCE_ICW16SbQ7nCe',10163,0,15),
 (353,10154,'122',4,'10332_LAYOUT_122_INSTANCE_ICW16SbQ7nCe',10170,0,1),
 (873,10154,'125',1,'10154',10682,0,31),
 (52,10154,'125',2,'10189',10165,0,1),
 (804,10154,'125',4,'10175_LAYOUT_125',10162,0,1),
 (802,10154,'125',4,'10175_LAYOUT_125',10163,0,31),
 (803,10154,'125',4,'10175_LAYOUT_125',10170,0,1),
 (286,10154,'127',1,'10154',10161,0,2),
 (94,10154,'127',2,'10189',10165,0,1),
 (858,10154,'128',1,'10154',10682,0,15),
 (32,10154,'128',2,'10189',10165,0,1),
 (550,10154,'128',4,'10175_LAYOUT_128',10162,0,1),
 (548,10154,'128',4,'10175_LAYOUT_128',10163,0,15),
 (549,10154,'128',4,'10175_LAYOUT_128',10170,0,1),
 (26,10154,'129',2,'10189',10165,0,1),
 (808,10154,'129',4,'10175_LAYOUT_129',10162,0,1),
 (806,10154,'129',4,'10175_LAYOUT_129',10163,0,15),
 (807,10154,'129',4,'10175_LAYOUT_129',10170,0,1),
 (854,10154,'130',1,'10154',10682,0,15),
 (18,10154,'130',2,'10189',10165,0,1),
 (872,10154,'130',4,'10175_LAYOUT_130',10162,0,1),
 (870,10154,'130',4,'10175_LAYOUT_130',10163,0,15),
 (871,10154,'130',4,'10175_LAYOUT_130',10170,0,1),
 (105,10154,'131',2,'10189',10165,0,1),
 (88,10154,'132',2,'10189',10165,0,1),
 (17,10154,'134',2,'10189',10165,0,1),
 (581,10154,'134',4,'10175_LAYOUT_134',10162,0,1),
 (579,10154,'134',4,'10175_LAYOUT_134',10163,0,15),
 (580,10154,'134',4,'10175_LAYOUT_134',10170,0,1),
 (104,10154,'135',2,'10189',10165,0,1),
 (92,10154,'136',2,'10189',10165,0,1),
 (79,10154,'137',2,'10189',10165,0,1),
 (817,10154,'139',4,'10175_LAYOUT_139',10163,0,31),
 (2,10154,'140',1,'10154',10165,0,2),
 (252,10154,'141',1,'10154',10162,0,2),
 (253,10154,'141',1,'10154',10164,0,2),
 (254,10154,'141',1,'10154',10165,0,2),
 (76,10154,'141',2,'10189',10165,0,1),
 (335,10154,'141',4,'10323_LAYOUT_141_INSTANCE_3lGPAjGHnocO',10162,0,1),
 (333,10154,'141',4,'10323_LAYOUT_141_INSTANCE_3lGPAjGHnocO',10163,0,15),
 (334,10154,'141',4,'10323_LAYOUT_141_INSTANCE_3lGPAjGHnocO',10170,0,1),
 (357,10154,'141',4,'10332_LAYOUT_141_INSTANCE_XruLe2uJyrRN',10162,0,1),
 (355,10154,'141',4,'10332_LAYOUT_141_INSTANCE_XruLe2uJyrRN',10163,0,15),
 (356,10154,'141',4,'10332_LAYOUT_141_INSTANCE_XruLe2uJyrRN',10170,0,1),
 (220,10154,'143',1,'10154',10162,0,2),
 (221,10154,'143',1,'10154',10164,0,2),
 (222,10154,'143',1,'10154',10165,0,2),
 (62,10154,'143',2,'10189',10165,0,1),
 (541,10154,'145',4,'10175_LAYOUT_145',10162,0,1),
 (539,10154,'145',4,'10175_LAYOUT_145',10163,0,15),
 (540,10154,'145',4,'10175_LAYOUT_145',10170,0,1),
 (417,10154,'145',4,'10183_LAYOUT_145',10162,0,1),
 (415,10154,'145',4,'10183_LAYOUT_145',10163,0,15),
 (416,10154,'145',4,'10183_LAYOUT_145',10170,0,1),
 (676,10154,'145',4,'10720_LAYOUT_145',10162,0,1),
 (674,10154,'145',4,'10720_LAYOUT_145',10163,0,15),
 (675,10154,'145',4,'10720_LAYOUT_145',10170,0,1),
 (646,10154,'145',4,'10790_LAYOUT_145',10162,0,1),
 (644,10154,'145',4,'10790_LAYOUT_145',10163,0,15),
 (645,10154,'145',4,'10790_LAYOUT_145',10170,0,1),
 (890,10154,'145',4,'10796_LAYOUT_145',10162,0,1),
 (888,10154,'145',4,'10796_LAYOUT_145',10163,0,15),
 (889,10154,'145',4,'10796_LAYOUT_145',10170,0,1),
 (640,10154,'145',4,'10822_LAYOUT_145',10162,0,1),
 (638,10154,'145',4,'10822_LAYOUT_145',10163,0,15),
 (639,10154,'145',4,'10822_LAYOUT_145',10170,0,1),
 (661,10154,'145',4,'10838_LAYOUT_145',10162,0,1),
 (659,10154,'145',4,'10838_LAYOUT_145',10163,0,15),
 (660,10154,'145',4,'10838_LAYOUT_145',10170,0,1),
 (724,10154,'145',4,'10852_LAYOUT_145',10162,0,1),
 (722,10154,'145',4,'10852_LAYOUT_145',10163,0,15),
 (723,10154,'145',4,'10852_LAYOUT_145',10170,0,1),
 (700,10154,'145',4,'10858_LAYOUT_145',10162,0,1),
 (698,10154,'145',4,'10858_LAYOUT_145',10163,0,15),
 (699,10154,'145',4,'10858_LAYOUT_145',10170,0,1),
 (712,10154,'145',4,'10864_LAYOUT_145',10162,0,1),
 (710,10154,'145',4,'10864_LAYOUT_145',10163,0,15),
 (711,10154,'145',4,'10864_LAYOUT_145',10170,0,1),
 (738,10154,'145',4,'10883_LAYOUT_145',10162,0,1),
 (736,10154,'145',4,'10883_LAYOUT_145',10163,0,15),
 (737,10154,'145',4,'10883_LAYOUT_145',10170,0,1),
 (752,10154,'145',4,'10892_LAYOUT_145',10162,0,1),
 (750,10154,'145',4,'10892_LAYOUT_145',10163,0,15),
 (751,10154,'145',4,'10892_LAYOUT_145',10170,0,1),
 (900,10154,'145',4,'10917_LAYOUT_145',10162,0,1),
 (898,10154,'145',4,'10917_LAYOUT_145',10163,0,15),
 (899,10154,'145',4,'10917_LAYOUT_145',10170,0,1),
 (930,10154,'145',4,'11013_LAYOUT_145',10162,0,1),
 (928,10154,'145',4,'11013_LAYOUT_145',10163,0,15),
 (929,10154,'145',4,'11013_LAYOUT_145',10164,0,1),
 (54,10154,'146',2,'10189',10165,0,1),
 (544,10154,'146',4,'10175_LAYOUT_146',10162,0,1),
 (542,10154,'146',4,'10175_LAYOUT_146',10163,0,15),
 (543,10154,'146',4,'10175_LAYOUT_146',10170,0,1),
 (117,10154,'147',2,'10189',10164,0,2),
 (50,10154,'147',2,'10189',10165,0,1),
 (171,10154,'148',1,'10154',10162,0,2),
 (172,10154,'148',1,'10154',10164,0,2),
 (173,10154,'148',1,'10154',10165,0,2),
 (35,10154,'148',2,'10189',10165,0,1),
 (326,10154,'148',4,'10313_LAYOUT_148_INSTANCE_SHyax62AueZq',10162,0,1),
 (324,10154,'148',4,'10313_LAYOUT_148_INSTANCE_SHyax62AueZq',10163,0,15),
 (325,10154,'148',4,'10313_LAYOUT_148_INSTANCE_SHyax62AueZq',10170,0,1),
 (100,10154,'149',2,'10189',10165,0,1),
 (547,10154,'149',4,'10175_LAYOUT_149',10162,0,1),
 (545,10154,'149',4,'10175_LAYOUT_149',10163,0,15),
 (546,10154,'149',4,'10175_LAYOUT_149',10170,0,1),
 (261,10154,'15',1,'10154',10164,0,4),
 (262,10154,'15',1,'10154',10165,0,4),
 (857,10154,'15',1,'10154',10682,0,27),
 (124,10154,'15',2,'10189',10164,0,2),
 (81,10154,'15',2,'10189',10165,0,1),
 (862,10154,'15',4,'10175_LAYOUT_15',10162,0,1),
 (860,10154,'15',4,'10175_LAYOUT_15',10163,0,31),
 (861,10154,'15',4,'10175_LAYOUT_15',10170,0,1),
 (98,10154,'150',2,'10189',10165,0,1),
 (855,10154,'151',1,'10154',10682,0,15),
 (84,10154,'151',2,'10189',10165,0,1),
 (111,10154,'152',2,'10189',10164,0,2),
 (16,10154,'152',2,'10189',10165,0,1),
 (156,10154,'153',1,'10154',10164,0,4),
 (4,10154,'153',1,'10154',10165,0,2),
 (24,10154,'153',2,'10189',10165,0,1),
 (114,10154,'154',2,'10189',10164,0,2),
 (34,10154,'154',2,'10189',10165,0,1),
 (649,10154,'156',4,'10175_LAYOUT_156',10162,0,1),
 (647,10154,'156',4,'10175_LAYOUT_156',10163,0,31),
 (648,10154,'156',4,'10175_LAYOUT_156',10170,0,1),
 (31,10154,'157',2,'10189',10165,0,1),
 (178,10154,'158',1,'10154',10164,0,4),
 (3,10154,'158',1,'10154',10165,0,2),
 (38,10154,'158',2,'10189',10165,0,1),
 (234,10154,'16',1,'10154',10164,0,8),
 (235,10154,'16',1,'10154',10165,0,8),
 (67,10154,'16',2,'10189',10165,0,1),
 (535,10154,'160',4,'10175_LAYOUT_160',10162,0,1),
 (533,10154,'160',4,'10175_LAYOUT_160',10163,0,15),
 (534,10154,'160',4,'10175_LAYOUT_160',10170,0,1),
 (118,10154,'161',2,'10189',10164,0,2),
 (53,10154,'161',2,'10189',10165,0,1),
 (119,10154,'162',2,'10189',10164,0,2),
 (56,10154,'162',2,'10189',10165,0,1),
 (247,10154,'164',1,'10154',10162,0,2),
 (248,10154,'164',1,'10154',10164,0,2),
 (249,10154,'164',1,'10154',10165,0,2),
 (73,10154,'164',2,'10189',10165,0,1),
 (605,10154,'165',4,'10175_LAYOUT_165',10162,0,1),
 (603,10154,'165',4,'10175_LAYOUT_165',10163,0,31),
 (604,10154,'165',4,'10175_LAYOUT_165',10170,0,1),
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
 (933,10154,'174',4,'10175_LAYOUT_174',10162,0,1),
 (931,10154,'174',4,'10175_LAYOUT_174',10163,0,31),
 (932,10154,'174',4,'10175_LAYOUT_174',10170,0,1),
 (153,10154,'175',1,'10154',10162,0,2),
 (154,10154,'175',1,'10154',10164,0,2),
 (155,10154,'175',1,'10154',10165,0,2),
 (852,10154,'175',1,'10154',10682,0,15),
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
 (963,10154,'2',1,'10154',10684,0,15),
 (809,10154,'2',4,'10175_LAYOUT_2',10163,0,15),
 (242,10154,'20',1,'10154',10162,0,4),
 (243,10154,'20',1,'10154',10164,0,4),
 (244,10154,'20',1,'10154',10165,0,4),
 (853,10154,'20',1,'10154',10682,0,31),
 (821,10154,'20',1,'10154',10688,0,1),
 (121,10154,'20',2,'10189',10164,0,2),
 (71,10154,'20',2,'10189',10165,0,1),
 (866,10154,'20',4,'10175_LAYOUT_20',10162,0,1),
 (864,10154,'20',4,'10175_LAYOUT_20',10163,0,31),
 (865,10154,'20',4,'10175_LAYOUT_20',10170,0,1),
 (240,10154,'23',1,'10154',10164,0,2),
 (241,10154,'23',1,'10154',10165,0,2),
 (70,10154,'23',2,'10189',10165,0,1),
 (917,10154,'23',4,'11013_LAYOUT_23',10162,0,1),
 (915,10154,'23',4,'11013_LAYOUT_23',10163,0,15),
 (916,10154,'23',4,'11013_LAYOUT_23',10164,0,1),
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
 (920,10154,'29',4,'11013_LAYOUT_29',10162,0,1),
 (918,10154,'29',4,'11013_LAYOUT_29',10163,0,15),
 (919,10154,'29',4,'11013_LAYOUT_29',10164,0,1),
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
 (410,10154,'47',4,'10183_LAYOUT_47',10162,0,1),
 (408,10154,'47',4,'10183_LAYOUT_47',10163,0,15),
 (409,10154,'47',4,'10183_LAYOUT_47',10170,0,1),
 (205,10154,'48',1,'10154',10164,0,2),
 (206,10154,'48',1,'10154',10165,0,2),
 (51,10154,'48',2,'10189',10165,0,1),
 (670,10154,'49',4,'10175_LAYOUT_49',10162,0,1),
 (668,10154,'49',4,'10175_LAYOUT_49',10163,0,15),
 (669,10154,'49',4,'10175_LAYOUT_49',10170,0,1),
 (538,10154,'49',4,'10183_LAYOUT_49',10162,0,1),
 (536,10154,'49',4,'10183_LAYOUT_49',10163,0,15),
 (537,10154,'49',4,'10183_LAYOUT_49',10170,0,1),
 (910,10154,'49',4,'10790_LAYOUT_49',10162,0,1),
 (908,10154,'49',4,'10790_LAYOUT_49',10163,0,15),
 (909,10154,'49',4,'10790_LAYOUT_49',10170,0,1),
 (936,10154,'49',4,'11013_LAYOUT_49',10162,0,1),
 (934,10154,'49',4,'11013_LAYOUT_49',10163,0,15),
 (935,10154,'49',4,'11013_LAYOUT_49',10164,0,1),
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
 (413,10154,'58',4,'10183_LAYOUT_58',10162,0,1),
 (411,10154,'58',4,'10183_LAYOUT_58',10163,0,15),
 (412,10154,'58',4,'10183_LAYOUT_58',10170,0,1),
 (880,10154,'58',4,'10790_LAYOUT_58',10162,0,1),
 (878,10154,'58',4,'10790_LAYOUT_58',10163,0,15),
 (879,10154,'58',4,'10790_LAYOUT_58',10170,0,1),
 (942,10154,'58',4,'10796_LAYOUT_58',10162,0,1),
 (940,10154,'58',4,'10796_LAYOUT_58',10163,0,15),
 (941,10154,'58',4,'10796_LAYOUT_58',10170,0,1),
 (667,10154,'58',4,'10838_LAYOUT_58',10162,0,1),
 (665,10154,'58',4,'10838_LAYOUT_58',10163,0,15),
 (666,10154,'58',4,'10838_LAYOUT_58',10170,0,1),
 (730,10154,'58',4,'10852_LAYOUT_58',10162,0,1),
 (728,10154,'58',4,'10852_LAYOUT_58',10163,0,15),
 (729,10154,'58',4,'10852_LAYOUT_58',10170,0,1),
 (706,10154,'58',4,'10858_LAYOUT_58',10162,0,1),
 (704,10154,'58',4,'10858_LAYOUT_58',10163,0,15),
 (705,10154,'58',4,'10858_LAYOUT_58',10170,0,1),
 (718,10154,'58',4,'10864_LAYOUT_58',10162,0,1),
 (716,10154,'58',4,'10864_LAYOUT_58',10163,0,15),
 (717,10154,'58',4,'10864_LAYOUT_58',10170,0,1),
 (744,10154,'58',4,'10883_LAYOUT_58',10162,0,1),
 (742,10154,'58',4,'10883_LAYOUT_58',10163,0,15),
 (743,10154,'58',4,'10883_LAYOUT_58',10170,0,1),
 (758,10154,'58',4,'10892_LAYOUT_58',10162,0,1),
 (756,10154,'58',4,'10892_LAYOUT_58',10163,0,15),
 (757,10154,'58',4,'10892_LAYOUT_58',10170,0,1),
 (906,10154,'58',4,'10917_LAYOUT_58',10162,0,1),
 (904,10154,'58',4,'10917_LAYOUT_58',10163,0,15),
 (905,10154,'58',4,'10917_LAYOUT_58',10170,0,1),
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
 (822,10154,'77',1,'10154',10688,0,1),
 (63,10154,'77',2,'10189',10165,0,1),
 (181,10154,'8',1,'10154',10164,0,4),
 (182,10154,'8',1,'10154',10165,0,4),
 (116,10154,'8',2,'10189',10164,0,2),
 (40,10154,'8',2,'10189',10165,0,1),
 (923,10154,'8',4,'11013_LAYOUT_8',10162,0,1),
 (921,10154,'8',4,'11013_LAYOUT_8',10163,0,31),
 (922,10154,'8',4,'11013_LAYOUT_8',10164,0,1),
 (266,10154,'82',1,'10154',10162,0,2),
 (267,10154,'82',1,'10154',10164,0,2),
 (268,10154,'82',1,'10154',10165,0,2),
 (83,10154,'82',2,'10189',10165,0,1),
 (927,10154,'82',4,'11013_LAYOUT_82',10162,0,1),
 (925,10154,'82',4,'11013_LAYOUT_82',10163,0,15),
 (926,10154,'82',4,'11013_LAYOUT_82',10164,0,1),
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
 (584,10154,'86',4,'10175_LAYOUT_86',10162,0,1),
 (582,10154,'86',4,'10175_LAYOUT_86',10163,0,15),
 (583,10154,'86',4,'10175_LAYOUT_86',10170,0,1),
 (682,10154,'87',4,'10838_LAYOUT_87',10162,0,1),
 (680,10154,'87',4,'10838_LAYOUT_87',10163,0,15),
 (681,10154,'87',4,'10838_LAYOUT_87',10170,0,1),
 (694,10154,'88',4,'10175_LAYOUT_88',10162,0,1),
 (692,10154,'88',4,'10175_LAYOUT_88',10163,0,15),
 (693,10154,'88',4,'10175_LAYOUT_88',10170,0,1),
 (884,10154,'88',4,'10790_LAYOUT_88',10162,0,1),
 (882,10154,'88',4,'10790_LAYOUT_88',10163,0,15),
 (883,10154,'88',4,'10790_LAYOUT_88',10170,0,1),
 (255,10154,'9',1,'10154',10161,0,2),
 (77,10154,'9',2,'10189',10165,0,1),
 (11,10154,'90',1,'10154',10165,0,16384),
 (833,10154,'90',1,'10154',10682,0,94189),
 (962,10154,'90',1,'10154',10684,0,17409),
 (189,10154,'97',1,'10154',10164,0,2),
 (190,10154,'97',1,'10154',10165,0,2),
 (43,10154,'97',2,'10189',10165,0,1),
 (136,10154,'98',1,'10154',10164,0,4),
 (137,10154,'98',1,'10154',10165,0,4),
 (110,10154,'98',2,'10189',10164,0,2),
 (12,10154,'98',2,'10189',10165,0,1),
 (856,10154,'99',1,'10154',10682,0,15),
 (122,10154,'99',2,'10189',10164,0,2),
 (74,10154,'99',2,'10189',10165,0,1),
 (838,10154,'com.liferay.portal.model.Group',1,'10154',10682,0,819071),
 (820,10154,'com.liferay.portal.model.Group',1,'10154',10688,0,262145),
 (126,10154,'com.liferay.portal.model.Group',2,'10189',10164,0,4096),
 (613,10154,'com.liferay.portal.model.Group',4,'10769',10163,0,2097151),
 (624,10154,'com.liferay.portal.model.Group',4,'10801',10163,0,2097151),
 (836,10154,'com.liferay.portal.model.Layout',1,'10154',10682,0,0),
 (819,10154,'com.liferay.portal.model.Layout',1,'10154',10688,0,1),
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
 (561,10154,'com.liferay.portal.model.Layout',4,'10693',10162,0,1),
 (559,10154,'com.liferay.portal.model.Layout',4,'10693',10163,10196,1023),
 (560,10154,'com.liferay.portal.model.Layout',4,'10693',10170,0,19),
 (565,10154,'com.liferay.portal.model.Layout',4,'10702',10162,0,1),
 (563,10154,'com.liferay.portal.model.Layout',4,'10702',10163,10196,1023),
 (564,10154,'com.liferay.portal.model.Layout',4,'10702',10170,0,19),
 (569,10154,'com.liferay.portal.model.Layout',4,'10711',10162,0,1),
 (567,10154,'com.liferay.portal.model.Layout',4,'10711',10163,10196,1023),
 (568,10154,'com.liferay.portal.model.Layout',4,'10711',10170,0,19),
 (571,10154,'com.liferay.portal.model.Layout',4,'10720',10163,10196,1023),
 (572,10154,'com.liferay.portal.model.Layout',4,'10720',10170,0,19),
 (574,10154,'com.liferay.portal.model.Layout',4,'10729',10163,10196,1023),
 (575,10154,'com.liferay.portal.model.Layout',4,'10729',10170,0,19),
 (577,10154,'com.liferay.portal.model.Layout',4,'10738',10163,10196,1023),
 (578,10154,'com.liferay.portal.model.Layout',4,'10738',10170,0,19),
 (612,10154,'com.liferay.portal.model.Layout',4,'10764',10162,0,1),
 (610,10154,'com.liferay.portal.model.Layout',4,'10764',10163,10158,257),
 (611,10154,'com.liferay.portal.model.Layout',4,'10764',10170,0,1),
 (759,10154,'com.liferay.portal.model.Layout',4,'10764',10688,0,257),
 (620,10154,'com.liferay.portal.model.Layout',4,'10790',10162,0,0),
 (618,10154,'com.liferay.portal.model.Layout',4,'10790',10163,10158,0),
 (619,10154,'com.liferay.portal.model.Layout',4,'10790',10170,0,0),
 (907,10154,'com.liferay.portal.model.Layout',4,'10790',10683,0,977),
 (881,10154,'com.liferay.portal.model.Layout',4,'10790',10687,0,785),
 (623,10154,'com.liferay.portal.model.Layout',4,'10796',10162,0,1),
 (621,10154,'com.liferay.portal.model.Layout',4,'10796',10163,10158,897),
 (622,10154,'com.liferay.portal.model.Layout',4,'10796',10170,0,0),
 (891,10154,'com.liferay.portal.model.Layout',4,'10796',10682,0,96),
 (892,10154,'com.liferay.portal.model.Layout',4,'10796',10683,0,913),
 (631,10154,'com.liferay.portal.model.Layout',4,'10822',10162,0,0),
 (629,10154,'com.liferay.portal.model.Layout',4,'10822',10163,10158,0),
 (630,10154,'com.liferay.portal.model.Layout',4,'10822',10170,0,0),
 (944,10154,'com.liferay.portal.model.Layout',4,'10822',10683,0,1),
 (947,10154,'com.liferay.portal.model.Layout',4,'10822',10684,0,1023),
 (948,10154,'com.liferay.portal.model.Layout',4,'10822',10685,0,1023),
 (945,10154,'com.liferay.portal.model.Layout',4,'10822',10686,0,1023),
 (946,10154,'com.liferay.portal.model.Layout',4,'10822',10687,0,1),
 (949,10154,'com.liferay.portal.model.Layout',4,'10822',10981,0,1023),
 (943,10154,'com.liferay.portal.model.Layout',4,'10822',11009,0,1),
 (634,10154,'com.liferay.portal.model.Layout',4,'10828',10162,0,1),
 (632,10154,'com.liferay.portal.model.Layout',4,'10828',10163,10158,1023),
 (633,10154,'com.liferay.portal.model.Layout',4,'10828',10170,0,19),
 (652,10154,'com.liferay.portal.model.Layout',4,'10838',10162,0,1),
 (650,10154,'com.liferay.portal.model.Layout',4,'10838',10163,10196,1023),
 (651,10154,'com.liferay.portal.model.Layout',4,'10838',10170,0,19),
 (679,10154,'com.liferay.portal.model.Layout',4,'10852',10162,0,1),
 (677,10154,'com.liferay.portal.model.Layout',4,'10852',10163,10196,1023),
 (678,10154,'com.liferay.portal.model.Layout',4,'10852',10170,0,19),
 (685,10154,'com.liferay.portal.model.Layout',4,'10858',10162,0,1),
 (683,10154,'com.liferay.portal.model.Layout',4,'10858',10163,10196,1023),
 (684,10154,'com.liferay.portal.model.Layout',4,'10858',10170,0,19),
 (691,10154,'com.liferay.portal.model.Layout',4,'10864',10162,0,1),
 (689,10154,'com.liferay.portal.model.Layout',4,'10864',10163,10196,1023),
 (690,10154,'com.liferay.portal.model.Layout',4,'10864',10170,0,19),
 (731,10154,'com.liferay.portal.model.Layout',4,'10883',10163,10196,1023),
 (732,10154,'com.liferay.portal.model.Layout',4,'10883',10170,0,19),
 (745,10154,'com.liferay.portal.model.Layout',4,'10892',10163,10196,1023),
 (746,10154,'com.liferay.portal.model.Layout',4,'10892',10170,0,19),
 (769,10154,'com.liferay.portal.model.Layout',4,'10917',10163,10196,1023),
 (770,10154,'com.liferay.portal.model.Layout',4,'10917',10170,0,19),
 (771,10154,'com.liferay.portal.model.Layout',4,'10922',10163,10196,1023),
 (772,10154,'com.liferay.portal.model.Layout',4,'10922',10170,0,19),
 (773,10154,'com.liferay.portal.model.Layout',4,'10927',10163,10196,0),
 (774,10154,'com.liferay.portal.model.Layout',4,'10927',10170,0,0),
 (955,10154,'com.liferay.portal.model.Layout',4,'10927',10684,0,1023),
 (956,10154,'com.liferay.portal.model.Layout',4,'10927',10685,0,1023),
 (954,10154,'com.liferay.portal.model.Layout',4,'10927',10686,0,1017),
 (957,10154,'com.liferay.portal.model.Layout',4,'10927',10981,0,1023),
 (775,10154,'com.liferay.portal.model.Layout',4,'10932',10163,10196,1023),
 (776,10154,'com.liferay.portal.model.Layout',4,'10932',10170,0,19),
 (777,10154,'com.liferay.portal.model.Layout',4,'10937',10163,10196,1023),
 (778,10154,'com.liferay.portal.model.Layout',4,'10937',10170,0,19),
 (859,10154,'com.liferay.portal.model.Layout',4,'11013',10163,10963,1023),
 (874,10154,'com.liferay.portal.model.Layout',4,'11022',10163,10196,1023),
 (893,10154,'com.liferay.portal.model.LayoutBranch',1,'10154',10682,0,0),
 (316,10154,'com.liferay.portal.model.LayoutPrototype',4,'10309',10163,10158,15),
 (330,10154,'com.liferay.portal.model.LayoutPrototype',4,'10319',10163,10158,15),
 (345,10154,'com.liferay.portal.model.LayoutPrototype',4,'10328',10163,10158,15),
 (570,10154,'com.liferay.portal.model.LayoutPrototype',4,'10716',10163,10196,13),
 (585,10154,'com.liferay.portal.model.LayoutPrototype',4,'10716',10688,0,9),
 (573,10154,'com.liferay.portal.model.LayoutPrototype',4,'10725',10163,10196,0),
 (587,10154,'com.liferay.portal.model.LayoutPrototype',4,'10725',10682,0,13),
 (588,10154,'com.liferay.portal.model.LayoutPrototype',4,'10725',10683,0,9),
 (589,10154,'com.liferay.portal.model.LayoutPrototype',4,'10725',10687,0,9),
 (576,10154,'com.liferay.portal.model.LayoutPrototype',4,'10734',10163,10196,0),
 (598,10154,'com.liferay.portal.model.LayoutPrototype',4,'10734',10682,0,9),
 (599,10154,'com.liferay.portal.model.LayoutPrototype',4,'10734',10683,0,1),
 (601,10154,'com.liferay.portal.model.LayoutPrototype',4,'10734',10684,0,13),
 (602,10154,'com.liferay.portal.model.LayoutPrototype',4,'10734',10685,0,13),
 (600,10154,'com.liferay.portal.model.LayoutPrototype',4,'10734',10686,0,9),
 (951,10154,'com.liferay.portal.model.LayoutPrototype',4,'10734',10981,0,13),
 (950,10154,'com.liferay.portal.model.LayoutPrototype',4,'10734',11009,0,1),
 (894,10154,'com.liferay.portal.model.LayoutSetBranch',1,'10154',10682,0,20),
 (358,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10337',10163,10158,15),
 (371,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10363',10163,10158,15),
 (558,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10689',10163,10196,13),
 (586,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10689',10688,0,13),
 (562,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10698',10163,10196,0),
 (590,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10698',10682,0,13),
 (591,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10698',10683,0,9),
 (592,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10698',10687,0,9),
 (566,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10707',10163,10196,0),
 (593,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10707',10682,0,9),
 (594,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10707',10683,0,1),
 (596,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10707',10684,0,13),
 (597,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10707',10685,0,13),
 (595,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10707',10686,0,9),
 (953,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10707',10981,0,13),
 (952,10154,'com.liferay.portal.model.LayoutSetPrototype',4,'10707',11009,0,1),
 (841,10154,'com.liferay.portal.model.Organization',1,'10154',10682,0,385),
 (834,10154,'com.liferay.portal.model.PasswordPolicy',1,'10154',10682,0,27),
 (835,10154,'com.liferay.portal.model.Role',1,'10154',10682,0,119),
 (397,10154,'com.liferay.portal.model.Role',4,'10439',10163,10158,127),
 (398,10154,'com.liferay.portal.model.Role',4,'10441',10163,10158,127),
 (399,10154,'com.liferay.portal.model.Role',4,'10443',10163,10158,127),
 (551,10154,'com.liferay.portal.model.Role',4,'10682',10163,10196,127),
 (960,10154,'com.liferay.portal.model.Role',4,'10682',10683,0,3),
 (961,10154,'com.liferay.portal.model.Role',4,'10682',10687,0,3),
 (959,10154,'com.liferay.portal.model.Role',4,'10682',10688,0,3),
 (958,10154,'com.liferay.portal.model.Role',4,'10682',11009,0,3),
 (552,10154,'com.liferay.portal.model.Role',4,'10683',10163,10196,127),
 (553,10154,'com.liferay.portal.model.Role',4,'10684',10163,10196,127),
 (554,10154,'com.liferay.portal.model.Role',4,'10685',10163,10196,127),
 (555,10154,'com.liferay.portal.model.Role',4,'10686',10163,10196,127),
 (556,10154,'com.liferay.portal.model.Role',4,'10687',10163,10196,127),
 (557,10154,'com.liferay.portal.model.Role',4,'10688',10163,10196,127),
 (812,10154,'com.liferay.portal.model.Role',4,'10981',10163,10196,127),
 (816,10154,'com.liferay.portal.model.Role',4,'11009',10163,10196,127),
 (837,10154,'com.liferay.portal.model.Team',1,'10154',10682,0,3),
 (839,10154,'com.liferay.portal.model.User',1,'10154',10682,0,29),
 (135,10154,'com.liferay.portal.model.User',4,'10196',10163,10196,31),
 (805,10154,'com.liferay.portal.model.User',4,'10952',10163,10196,31),
 (810,10154,'com.liferay.portal.model.User',4,'10963',10163,10196,31),
 (811,10154,'com.liferay.portal.model.User',4,'10972',10163,10196,31),
 (813,10154,'com.liferay.portal.model.User',4,'10982',10163,10196,31),
 (814,10154,'com.liferay.portal.model.User',4,'10991',10163,10196,31),
 (815,10154,'com.liferay.portal.model.User',4,'11000',10163,10196,31),
 (840,10154,'com.liferay.portal.model.UserGroup',1,'10154',10682,0,49),
 (843,10154,'com.liferay.portlet.asset',1,'10154',10682,0,30),
 (127,10154,'com.liferay.portlet.asset',2,'10189',10164,0,30),
 (844,10154,'com.liferay.portlet.asset.model.AssetCategory',1,'10154',10682,0,19),
 (845,10154,'com.liferay.portlet.asset.model.AssetVocabulary',1,'10154',10682,0,13),
 (319,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10316',10163,10158,15),
 (606,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10761',10163,10158,15),
 (609,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10762',10162,0,1),
 (607,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10762',10163,10158,15),
 (608,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10762',10170,0,1),
 (614,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10788',10163,10158,15),
 (617,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10789',10162,0,1),
 (615,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10789',10163,10158,15),
 (616,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10789',10170,0,1),
 (625,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10820',10163,10158,15),
 (628,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10821',10162,0,1),
 (626,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10821',10163,10158,15),
 (627,10154,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10821',10170,0,1),
 (128,10154,'com.liferay.portlet.blogs',2,'10189',10164,0,14),
 (108,10154,'com.liferay.portlet.blogs',2,'10189',10165,0,14),
 (323,10154,'com.liferay.portlet.blogs',4,'10310',10163,0,14),
 (129,10154,'com.liferay.portlet.bookmarks',2,'10189',10164,0,15),
 (130,10154,'com.liferay.portlet.calendar',2,'10189',10164,0,14),
 (109,10154,'com.liferay.portlet.calendar',2,'10189',10165,0,14),
 (792,10154,'com.liferay.portlet.calendar',4,'10198',10163,0,14),
 (924,10154,'com.liferay.portlet.calendar',4,'10965',10163,0,14),
 (851,10154,'com.liferay.portlet.documentlibrary',1,'10154',10682,0,511),
 (824,10154,'com.liferay.portlet.documentlibrary',1,'10154',10688,0,257),
 (131,10154,'com.liferay.portlet.documentlibrary',2,'10189',10164,0,511),
 (869,10154,'com.liferay.portlet.documentlibrary',4,'10180',10162,0,1),
 (867,10154,'com.liferay.portlet.documentlibrary',4,'10180',10163,0,511),
 (868,10154,'com.liferay.portlet.documentlibrary',4,'10180',10170,0,75),
 (966,10154,'com.liferay.portlet.documentlibrary',4,'10801',10162,0,1),
 (964,10154,'com.liferay.portlet.documentlibrary',4,'10801',10163,0,511),
 (965,10154,'com.liferay.portlet.documentlibrary',4,'10801',10170,0,75),
 (825,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',1,'10154',10688,0,33),
 (502,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10505',10162,0,3),
 (501,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10505',10163,10158,127),
 (504,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10513',10162,0,3),
 (503,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10513',10163,10158,127),
 (506,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10522',10162,0,3),
 (505,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10522',10163,10158,127),
 (508,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10533',10162,0,3),
 (507,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10533',10163,10158,127),
 (510,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10545',10162,0,3),
 (509,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10545',10163,10158,127),
 (512,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10557',10162,0,3),
 (511,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10557',10163,10158,127),
 (514,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10569',10162,0,3),
 (513,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10569',10163,10158,127),
 (516,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10581',10162,0,3),
 (515,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10581',10163,10158,127),
 (518,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10597',10162,0,3),
 (517,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10597',10163,10158,127),
 (520,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10609',10162,0,3),
 (519,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10609',10163,10158,127),
 (522,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10621',10162,0,3),
 (521,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10621',10163,10158,127),
 (524,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10634',10162,0,3),
 (523,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10634',10163,10158,127),
 (526,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10645',10162,0,3),
 (525,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10645',10163,10158,127),
 (827,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',1,'10154',10688,0,1),
 (308,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10300',10163,10158,15),
 (310,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10302',10163,10158,15),
 (312,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10304',10163,10158,15),
 (314,10154,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10306',10163,10158,15),
 (826,10154,'com.liferay.portlet.documentlibrary.model.DLFileShortcut',1,'10154',10688,0,1),
 (823,10154,'com.liferay.portlet.documentlibrary.model.DLFolder',1,'10154',10688,0,129),
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
 (842,10154,'com.liferay.portlet.expando.model.ExpandoColumn',1,'10154',10682,0,1),
 (400,10154,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10456',10163,0,15),
 (818,10154,'com.liferay.portlet.expando.model.ExpandoColumn',4,'11012',10163,0,15),
 (846,10154,'com.liferay.portlet.journal',1,'10154',10682,0,126),
 (828,10154,'com.liferay.portlet.journal',1,'10154',10688,0,32),
 (863,10154,'com.liferay.portlet.journal',4,'10180',10163,0,126),
 (967,10154,'com.liferay.portlet.journal',4,'10769',10163,0,126),
 (968,10154,'com.liferay.portlet.journal',4,'10801',10163,0,126),
 (847,10154,'com.liferay.portlet.journal.model.JournalArticle',1,'10154',10682,0,227),
 (829,10154,'com.liferay.portlet.journal.model.JournalArticle',1,'10154',10688,0,1),
 (528,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'10662',10162,0,3),
 (527,10154,'com.liferay.portlet.journal.model.JournalArticle',4,'10662',10163,10158,255),
 (848,10154,'com.liferay.portlet.journal.model.JournalFeed',1,'10154',10682,0,13),
 (830,10154,'com.liferay.portlet.journal.model.JournalFeed',1,'10154',10688,0,1),
 (849,10154,'com.liferay.portlet.journal.model.JournalStructure',1,'10154',10682,0,13),
 (831,10154,'com.liferay.portlet.journal.model.JournalStructure',1,'10154',10688,0,1),
 (530,10154,'com.liferay.portlet.journal.model.JournalStructure',4,'10671',10162,0,1),
 (529,10154,'com.liferay.portlet.journal.model.JournalStructure',4,'10671',10163,10158,15),
 (850,10154,'com.liferay.portlet.journal.model.JournalTemplate',1,'10154',10682,0,15),
 (832,10154,'com.liferay.portlet.journal.model.JournalTemplate',1,'10154',10688,0,1),
 (532,10154,'com.liferay.portlet.journal.model.JournalTemplate',4,'10673',10162,0,1),
 (531,10154,'com.liferay.portlet.journal.model.JournalTemplate',4,'10673',10163,10158,15),
 (132,10154,'com.liferay.portlet.messageboards',2,'10189',10164,0,2047),
 (133,10154,'com.liferay.portlet.polls',2,'10189',10164,0,6),
 (134,10154,'com.liferay.portlet.wiki',2,'10189',10164,0,6),
 (351,10154,'com.liferay.portlet.wiki',4,'10329',10163,0,6),
 (393,10154,'Complemento_WAR_Complementoportlet',1,'10154',10161,0,2),
 (394,10154,'Complemento_WAR_Complementoportlet',1,'10154',10162,0,2),
 (395,10154,'Complemento_WAR_Complementoportlet',1,'10154',10164,0,2),
 (396,10154,'Complemento_WAR_Complementoportlet',1,'10154',10165,0,2),
 (655,10154,'complemento_WAR_Complementoportlet',4,'10183_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (653,10154,'complemento_WAR_Complementoportlet',4,'10183_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (654,10154,'complemento_WAR_Complementoportlet',4,'10183_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (877,10154,'complemento_WAR_Complementoportlet',4,'10790_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (875,10154,'complemento_WAR_Complementoportlet',4,'10790_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (876,10154,'complemento_WAR_Complementoportlet',4,'10790_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (939,10154,'complemento_WAR_Complementoportlet',4,'10796_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (937,10154,'complemento_WAR_Complementoportlet',4,'10796_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (938,10154,'complemento_WAR_Complementoportlet',4,'10796_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (664,10154,'complemento_WAR_Complementoportlet',4,'10838_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (662,10154,'complemento_WAR_Complementoportlet',4,'10838_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (663,10154,'complemento_WAR_Complementoportlet',4,'10838_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (727,10154,'complemento_WAR_Complementoportlet',4,'10852_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (725,10154,'complemento_WAR_Complementoportlet',4,'10852_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (726,10154,'complemento_WAR_Complementoportlet',4,'10852_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (703,10154,'complemento_WAR_Complementoportlet',4,'10858_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (701,10154,'complemento_WAR_Complementoportlet',4,'10858_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (702,10154,'complemento_WAR_Complementoportlet',4,'10858_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (715,10154,'complemento_WAR_Complementoportlet',4,'10864_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (713,10154,'complemento_WAR_Complementoportlet',4,'10864_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (714,10154,'complemento_WAR_Complementoportlet',4,'10864_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (741,10154,'complemento_WAR_Complementoportlet',4,'10883_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (739,10154,'complemento_WAR_Complementoportlet',4,'10883_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (740,10154,'complemento_WAR_Complementoportlet',4,'10883_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (755,10154,'complemento_WAR_Complementoportlet',4,'10892_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (753,10154,'complemento_WAR_Complementoportlet',4,'10892_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (754,10154,'complemento_WAR_Complementoportlet',4,'10892_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (903,10154,'complemento_WAR_Complementoportlet',4,'10917_LAYOUT_complemento_WAR_Complementoportlet',10162,0,1),
 (901,10154,'complemento_WAR_Complementoportlet',4,'10917_LAYOUT_complemento_WAR_Complementoportlet',10163,0,15),
 (902,10154,'complemento_WAR_Complementoportlet',4,'10917_LAYOUT_complemento_WAR_Complementoportlet',10170,0,1),
 (401,10154,'SliderHitss_WAR_SliderHitssportlet',1,'10154',10161,0,4),
 (402,10154,'SliderHitss_WAR_SliderHitssportlet',1,'10154',10162,0,4),
 (403,10154,'SliderHitss_WAR_SliderHitssportlet',1,'10154',10164,0,4),
 (404,10154,'SliderHitss_WAR_SliderHitssportlet',1,'10154',10165,0,4),
 (1001,10154,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet',1,'10154',10161,0,2),
 (1002,10154,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet',1,'10154',10162,0,2),
 (1003,10154,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet',1,'10154',10164,0,2),
 (1004,10154,'SolicitarReclutamiento_WAR_SolicitarReclutamientoportlet',1,'10154',10165,0,2);
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
 (10439,10154,10004,10439,'Organization Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',3,''),
 (10441,10154,10004,10441,'Site Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',2,''),
 (10443,10154,10004,10443,'Portal Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',1,''),
 (10682,10154,10004,10682,'COORDINADOR DE RECURSOS HUMANO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">COORDINADOR DE RECURSOS HUMANO</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">COORDINADOR DE RECURSOS HUMANO</Description></root>',1,''),
 (10683,10154,10004,10683,'ASISTENTE DE RECURSOS HUMANO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">ASISTENTE DE RECURSOS HUMANO</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">ASISTENTE DE RECURSOS HUMANO</Description></root>',1,''),
 (10684,10154,10004,10684,'GERENTE DE ÁREA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">GERENTE DE ÁREA</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">GERENTE DE ÁREA</Description></root>',1,''),
 (10685,10154,10004,10685,'GERENTE DE OPERACIONES','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">GERENTE DE OPERACIONES</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">GERENTE DE OPERACIONES</Description></root>',1,''),
 (10686,10154,10004,10686,'EVALUADOR DE ÁREA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">EVALUADOR DE ÁREA</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">EVALUADOR DE ÁREA</Description></root>',1,''),
 (10687,10154,10004,10687,'PSICOLOGO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">PSICOLOGO</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">PSICOLOGO</Description></root>',1,''),
 (10688,10154,10004,10688,'POSTULANTE','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">POSTULANTE</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">POSTULANTE</Description></root>',1,''),
 (10981,10154,10004,10981,'GERENTE DE CAPITAL HUMANO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">GERENTE DE CAPITAL HUMANO</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">GERENTE DE CAPITAL HUMANO</Description></root>',1,''),
 (11009,10154,10004,11009,'COLABORADOR','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Title language-id=\"es_ES\">COLABORADOR</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"es_ES\" default-locale=\"es_ES\"><Description language-id=\"es_ES\">COLABORADOR</Description></root>',1,'');
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
 (10422,'Kaleo',4,1285740392291,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table KaleoAction (\n	kaleoActionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	priority INTEGER\n);\n\ncreate table KaleoCondition (\n	kaleoConditionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null\n);\n\ncreate table KaleoDefinition (\n	kaleoDefinitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(200) null,\n	title STRING null,\n	description STRING null,\n	content TEXT null,\n	version INTEGER,\n	active_ BOOLEAN,\n	startKaleoNodeId LONG\n);\n\ncreate table KaleoInstance (\n	kaleoInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoDefinitionName VARCHAR(200) null,\n	kaleoDefinitionVersion INTEGER,\n	rootKaleoInstanceTokenId LONG,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoInstanceToken (\n	kaleoInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	parentKaleoInstanceTokenId LONG,\n	currentKaleoNodeId LONG,\n	currentKaleoNodeName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoLog (\n	kaleoLogId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	terminalKaleoNode BOOLEAN,\n	kaleoActionId LONG,\n	kaleoActionName VARCHAR(200) null,\n	kaleoActionDescription STRING null,\n	previousKaleoNodeId LONG,\n	previousKaleoNodeName VARCHAR(200) null,\n	previousAssigneeClassName VARCHAR(200) null,\n	previousAssigneeClassPK LONG,\n	currentAssigneeClassName VARCHAR(200) null,\n	currentAssigneeClassPK LONG,\n	type_ VARCHAR(50) null,\n	comment_ STRING null,\n	startDate DATE null,\n	endDate DATE null,\n	duration LONG,\n	workflowContext TEXT null\n);\n\ncreate table KaleoNode (\n	kaleoNodeId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	name VARCHAR(200) null,\n	metadata STRING null,\n	description STRING null,\n	type_ VARCHAR(20) null,\n	initial_ BOOLEAN,\n	terminal BOOLEAN\n);\n\ncreate table KaleoNotification (\n	kaleoNotificationId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	template TEXT null,\n	templateLanguage VARCHAR(75) null,\n	notificationTypes VARCHAR(25) null\n);\n\ncreate table KaleoNotificationRecipient (\n	kaleoNotificationRecipientId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNotificationId LONG,\n	recipientClassName VARCHAR(200) null,\n	recipientClassPK LONG,\n	recipientRoleType INTEGER,\n	address VARCHAR(255) null\n);\n\ncreate table KaleoTask (\n	kaleoTaskId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null\n);\n\ncreate table KaleoTaskAssignment (\n	kaleoTaskAssignmentId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	assigneeActionId VARCHAR(75) null,\n	assigneeScript TEXT null,\n	assigneeScriptLanguage VARCHAR(75) null\n);\n\ncreate table KaleoTaskAssignmentInstance (\n	kaleoTaskAssignmentInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoTaskInstanceToken (\n	kaleoTaskInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	dueDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTimer (\n	kaleoTimerId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	name VARCHAR(75) null,\n	blocking BOOLEAN,\n	description STRING null,\n	duration DOUBLE,\n	scale VARCHAR(75) null,\n	recurrenceDuration DOUBLE,\n	recurrenceScale VARCHAR(75) null\n);\n\ncreate table KaleoTimerInstanceToken (\n	kaleoTimerInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTimerId LONG,\n	kaleoTimerName VARCHAR(200) null,\n	blocking BOOLEAN,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTransition (\n	kaleoTransitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null,\n	sourceKaleoNodeId LONG,\n	sourceKaleoNodeName VARCHAR(200) null,\n	targetKaleoNodeId LONG,\n	targetKaleoNodeName VARCHAR(200) null,\n	defaultTransition BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_50E9112C on KaleoAction (companyId);\ncreate index IX_4B2545E8 on KaleoAction (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_F95A622 on KaleoAction (kaleoDefinitionId);\n\ncreate index IX_FEE46067 on KaleoCondition (companyId);\ncreate index IX_DC978A5D on KaleoCondition (kaleoDefinitionId);\ncreate index IX_86CBD4C on KaleoCondition (kaleoNodeId);\n\ncreate index IX_40B9112F on KaleoDefinition (companyId);\ncreate index IX_408542BA on KaleoDefinition (companyId, active_);\ncreate index IX_76C781AE on KaleoDefinition (companyId, name);\ncreate index IX_4C23F11B on KaleoDefinition (companyId, name, active_);\ncreate index IX_EC14F81A on KaleoDefinition (companyId, name, version);\n\ncreate index IX_5F2FCD2D on KaleoInstance (companyId);\ncreate index IX_BF5839F8 on KaleoInstance (companyId, kaleoDefinitionName, kaleoDefinitionVersion, completionDate);\ncreate index IX_4DA4D123 on KaleoInstance (kaleoDefinitionId);\ncreate index IX_ACF16238 on KaleoInstance (kaleoDefinitionId, completed);\n\ncreate index IX_153721BE on KaleoInstanceToken (companyId);\ncreate index IX_4A86923B on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId);\ncreate index IX_360D34D9 on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId, completionDate);\ncreate index IX_7BDB04B4 on KaleoInstanceToken (kaleoDefinitionId);\ncreate index IX_F42AAFF6 on KaleoInstanceToken (kaleoInstanceId);\n\ncreate index IX_73B5F4DE on KaleoLog (companyId);\ncreate index IX_E66A153A on KaleoLog (kaleoClassName, kaleoClassPK, kaleoInstanceTokenId, type_);\ncreate index IX_6C64B7D4 on KaleoLog (kaleoDefinitionId);\ncreate index IX_5BC6AB16 on KaleoLog (kaleoInstanceId);\ncreate index IX_470B9FF8 on KaleoLog (kaleoInstanceTokenId, type_);\ncreate index IX_B0CDCA38 on KaleoLog (kaleoTaskInstanceTokenId);\n\ncreate index IX_C4E9ACE0 on KaleoNode (companyId);\ncreate index IX_F28C443E on KaleoNode (companyId, kaleoDefinitionId);\ncreate index IX_32E94DD6 on KaleoNode (kaleoDefinitionId);\n\ncreate index IX_38829497 on KaleoNotification (companyId);\ncreate index IX_F3362E93 on KaleoNotification (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_4B968E8D on KaleoNotification (kaleoDefinitionId);\n\ncreate index IX_2C8C4AF4 on KaleoNotificationRecipient (companyId);\ncreate index IX_AA6697EA on KaleoNotificationRecipient (kaleoDefinitionId);\ncreate index IX_7F4FED02 on KaleoNotificationRecipient (kaleoNotificationId);\n\ncreate index IX_E1F8B23D on KaleoTask (companyId);\ncreate index IX_3FFA633 on KaleoTask (kaleoDefinitionId);\ncreate index IX_77B3F1A2 on KaleoTask (kaleoNodeId);\n\ncreate index IX_611732B0 on KaleoTaskAssignment (companyId);\ncreate index IX_D835C576 on KaleoTaskAssignment (kaleoClassName, kaleoClassPK);\ncreate index IX_1087068E on KaleoTaskAssignment (kaleoClassName, kaleoClassPK, assigneeClassName);\ncreate index IX_575C03A6 on KaleoTaskAssignment (kaleoDefinitionId);\n\ncreate index IX_6E3CDA1B on KaleoTaskAssignmentInstance (companyId);\ncreate index IX_C851011 on KaleoTaskAssignmentInstance (kaleoDefinitionId);\ncreate index IX_67A9EE93 on KaleoTaskAssignmentInstance (kaleoInstanceId);\ncreate index IX_D4C2235B on KaleoTaskAssignmentInstance (kaleoTaskInstanceTokenId);\n\ncreate index IX_997FE723 on KaleoTaskInstanceToken (companyId);\ncreate index IX_608E9519 on KaleoTaskInstanceToken (kaleoDefinitionId);\ncreate index IX_2CE1159B on KaleoTaskInstanceToken (kaleoInstanceId);\ncreate index IX_B857A115 on KaleoTaskInstanceToken (kaleoInstanceId, kaleoTaskId);\n\ncreate index IX_4DE6A889 on KaleoTimer (kaleoClassName, kaleoClassPK);\ncreate index IX_1A479F32 on KaleoTimer (kaleoClassName, kaleoClassPK, blocking);\n\ncreate index IX_DB96C55B on KaleoTimerInstanceToken (kaleoInstanceId);\ncreate index IX_DB279423 on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed);\ncreate index IX_9932524C on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed, blocking);\ncreate index IX_13A5BA2C on KaleoTimerInstanceToken (kaleoInstanceTokenId, kaleoTimerId);\n\ncreate index IX_41D6C6D on KaleoTransition (companyId);\ncreate index IX_479F3063 on KaleoTransition (kaleoDefinitionId);\ncreate index IX_A392DFD2 on KaleoTransition (kaleoNodeId);\ncreate index IX_A38E2194 on KaleoTransition (kaleoNodeId, defaultTransition);\ncreate index IX_85268A11 on KaleoTransition (kaleoNodeId, name);]]></indexes-sql>\n</data>'),
 (10454,'Marketplace',1,1312562779947,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Marketplace_App (\n	uuid_ VARCHAR(75) null,\n	appId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	remoteAppId LONG,\n	version VARCHAR(75) null\n);\n\ncreate table Marketplace_Module (\n	uuid_ VARCHAR(75) null,\n	moduleId LONG not null primary key,\n	appId LONG,\n	contextName VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_865B7BD5 on Marketplace_App (companyId);\ncreate index IX_20F14D93 on Marketplace_App (remoteAppId);\ncreate index IX_3E667FE1 on Marketplace_App (uuid_);\n\ncreate index IX_7DC16D26 on Marketplace_Module (appId);\ncreate index IX_C6938724 on Marketplace_Module (appId, contextName);\ncreate index IX_F2F1E964 on Marketplace_Module (contextName);\ncreate index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>\n</data>');
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
 (1,10180,10154,10158,1450887762818,0,10010,10505,1,'{\"title\":\"welcome_bg_3.jpg\"}',0),
 (2,10180,10154,10158,1450887767120,0,10010,10513,1,'{\"title\":\"welcome_bg_11.jpg\"}',0),
 (3,10180,10154,10158,1450887767483,0,10010,10522,1,'{\"title\":\"welcome_bg_12.jpg\"}',0),
 (4,10180,10154,10158,1450887767772,0,10010,10533,1,'{\"title\":\"welcome_bg_10.png\"}',0),
 (5,10180,10154,10158,1450887768178,0,10010,10545,1,'{\"title\":\"welcome_bg_2.jpg\"}',0),
 (6,10180,10154,10158,1450887768533,0,10010,10557,1,'{\"title\":\"welcome_bg_9.jpg\"}',0),
 (7,10180,10154,10158,1450887769138,0,10010,10569,1,'{\"title\":\"welcome_bg_4.jpg\"}',0),
 (8,10180,10154,10158,1450887769608,0,10010,10581,1,'{\"title\":\"welcome_bg_6.jpg\"}',0),
 (9,10180,10154,10158,1450887770090,0,10010,10597,1,'{\"title\":\"welcome_bg_7.jpg\"}',0),
 (10,10180,10154,10158,1450887770553,0,10010,10609,1,'{\"title\":\"welcome_bg_5.jpg\"}',0),
 (11,10180,10154,10158,1450887771033,0,10010,10621,1,'{\"title\":\"welcome_bg_13.jpg\"}',0),
 (12,10180,10154,10158,1450887771416,0,10010,10634,1,'{\"title\":\"welcome_bg_1.jpg\"}',0),
 (13,10180,10154,10158,1450887771772,0,10010,10645,1,'{\"title\":\"welcome_bg_8.jpg\"}',0);
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
 ('b31b2d85-7f0a-4119-9f39-5af2799da2d2',10158,10154,'2015-12-23 15:57:33','2015-12-23 15:57:33',1,10159,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,528f53719430814f22dbf509e0faa0c4,528f53719430814f22dbf509e0faa0c4','','',0,'10158','default@liferay.com',0,'',0,'es_ES','GMT','Welcome!','','','','','','2015-12-23 15:57:33','',NULL,'',NULL,0,0,NULL,1,0,0),
 ('9e3e6fa8-d6e6-47d8-80d5-43a359f5bba6',10196,10154,'2015-12-23 15:57:37','2015-12-23 18:58:42',0,10197,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-12-23 16:23:07','43e1caee0f13b4576cdc1a845c35aea3,63196e4d6567e294410a828f5fb28496,a6dc45d6163dc7b32d89839d284d06b5','','',0,'administrador','test@liferay.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Test Test!','','Test','','Test','Administrador del Portal','2015-12-23 22:14:29','127.0.0.1','2015-12-23 20:58:07','127.0.0.1',NULL,0,0,NULL,0,1,0),
 ('8b84dd8e-a601-4aff-88e1-46c9187fcc98',10952,10154,'2015-12-23 18:47:24','2015-12-23 18:59:41',0,10953,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-12-23 18:49:09','','','',0,'ddelgado','danieldelgado20g@gmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Danielle Delgado Cabrera!','','Danielle','','Delgado Cabrera','Desarrollador Java Web',NULL,'',NULL,'',NULL,0,0,NULL,0,0,0),
 ('89570416-267b-43db-94ba-3b8a67f33776',10963,10154,'2015-12-23 18:50:52','2015-12-23 19:00:44',0,10964,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-12-23 18:51:11','ef85beb9ec066dacca07b8453be620d0,5fe47050a8ab9fc142b69c97a8549110,e5b44d3e28313d5a2df894dc91a12d1b','','',0,'iquiroz','iquiroz@gmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Ivan Quiroz!','','Ivan','','Quiroz','Coordinador de RRHH','2015-12-23 19:44:34','127.0.0.1','2015-12-23 19:29:55','127.0.0.1',NULL,0,0,NULL,0,0,0),
 ('1a6a6047-e900-4c28-a3f5-693fb1fdb6bf',10972,10154,'2015-12-23 18:52:01','2015-12-23 18:53:06',0,10973,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-12-23 18:53:06','','','',0,'melgarejoz','melgarejoz@gmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Randiel Melgarejo!','','Randiel','','Melgarejo','Gerente de Clientes',NULL,'',NULL,'',NULL,0,0,NULL,0,0,0),
 ('f8c47ac6-0f86-422a-890b-3cc43ef2135e',10982,10154,'2015-12-23 18:54:09','2015-12-23 18:54:30',0,10983,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-12-23 18:54:30','','','',0,'loperam','loperam@gmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Monica Lopera!','','Monica','','Lopera','Gerente de Capital Humano',NULL,'',NULL,'',NULL,0,0,NULL,0,0,0),
 ('8bfda859-2ca8-44e8-ba80-0796df2c6a20',10991,10154,'2015-12-23 18:56:27','2015-12-23 18:56:58',0,10992,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-12-23 18:56:58','','','',0,'varasr','varasr@gmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Arturo Varas!','','Arturo','','Varas','Gerente de Operaciones',NULL,'',NULL,'',NULL,0,0,NULL,0,0,0),
 ('702c65f5-2757-4380-9f00-840e638c2c51',11000,10154,'2015-12-23 18:57:42','2015-12-23 18:58:00',0,11001,'cRDtpNCeBiql5KOQsKVyrA0sAiA=',1,0,'2015-12-23 18:58:00','','','',0,'dexterk','dexterk@gmail.com',0,'',0,'es_ES','Pacific/Midway','Bienvenido  Katherine Dexter!','','Katherine','','Dexter','Asistente de Recursos Humanos',NULL,'',NULL,'',NULL,0,0,NULL,0,0,0);
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
 (10196,10769,10171),
 (10196,10801,10171);
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
 (10963,10180),
 (10196,10769),
 (10963,10769),
 (11000,10769),
 (10196,10801);
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
 (10952,10165),
 (10963,10165),
 (10972,10165),
 (10982,10165),
 (10991,10165),
 (11000,10165),
 (10963,10682),
 (10963,10683),
 (11000,10683),
 (10972,10684),
 (10982,10684),
 (10991,10684),
 (10972,10685),
 (10991,10685),
 (10972,10686),
 (10982,10686),
 (10991,10686),
 (10963,10687),
 (10952,10688),
 (10982,10981),
 (10952,11009);
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
