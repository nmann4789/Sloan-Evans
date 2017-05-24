-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 26, 2017 at 12:39 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sloan`
--

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfiles`
--

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetfiles`
--

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(6, 1, 1, 'CleanRoofCTSign.png', 'image', 1750, 1296, 148362, '2017-03-23 00:28:08', '2017-03-23 00:28:09', '2017-03-23 00:28:09', '1783fad6-0d7b-41cd-967d-eaeb5d1cf055'),
(7, 1, 1, 'bbb-poster_170323_002818.jpg', 'image', 7200, 5400, 1381592, '2017-03-23 00:28:18', '2017-03-23 00:28:19', '2017-03-23 00:28:19', '4ed4487d-025f-44a9-ac6c-b46386ad7833');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfolders`
--

CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetfolders`
--

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Images', '', '2017-03-23 00:26:26', '2017-03-23 00:27:52', 'ee3eda29-2a48-403b-88ff-6932b0a4aa67');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetindexdata`
--

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetsources`
--

CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetsources`
--

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Images', 'images', 'Local', '{\"path\":\"img\\/\",\"publicURLs\":\"1\",\"url\":\"http:\\/\\/sloan-craft.dev\\/img\\/\"}', 1, 10, '2017-03-23 00:26:26', '2017-03-23 00:27:52', 'c950b051-3269-4a87-b85a-978f1e4ecf1a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransformindex`
--

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransforms`
--

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categories`
--

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups`
--

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups_i18n`
--

CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_content`
--

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_shortDescription` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_featuredPost` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_shortDescription`, `field_featuredPost`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', NULL, NULL, NULL, 0, '2017-03-14 17:08:47', '2017-03-14 17:08:47', '4358c538-1335-40f1-ba99-38fc2ba72266'),
(2, 2, 'en_us', 'Welcome to Sloan-craft.dev!', '<p>It’s true, this site doesn’t have a whole lot of content yet, but don’t worry. Our web developers have just installed the CMS, and they’re setting things up for the content editors this very moment. Soon Sloan-craft.dev will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.</p>', NULL, 0, '2017-03-14 17:08:50', '2017-03-14 17:08:50', '330f37b5-617f-4bad-b2c8-56a470447455'),
(5, 6, 'en_us', 'Clean Roof Ctsign', NULL, NULL, 0, '2017-03-23 00:28:09', '2017-03-23 00:28:09', '9262f970-fd0b-42ad-b58f-2604811276df'),
(6, 7, 'en_us', 'Bbb Poster', NULL, NULL, 0, '2017-03-23 00:28:19', '2017-03-23 00:28:19', 'f4145462-fe9e-44fb-818a-b59210a45e54'),
(7, 8, 'en_us', 'Test Blog Name', '<p>Test</p>', '', 0, '2017-03-26 15:58:27', '2017-03-26 15:58:38', 'deb97fe7-0b77-4d84-84ff-b67c1eb8532b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_deprecationerrors`
--

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elementindexsettings`
--

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements`
--

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2017-03-14 17:08:47', '2017-03-14 17:08:47', '2ba24a5c-9b4b-4252-b0eb-0cf976f5f702'),
(2, 'Entry', 1, 0, '2017-03-14 17:08:50', '2017-03-14 17:08:50', 'f6670400-3775-44e0-bcf7-986d2f7c0f59'),
(6, 'Asset', 1, 0, '2017-03-23 00:28:09', '2017-03-23 00:28:09', '5f8386a8-e684-41b9-8054-b63a2984228b'),
(7, 'Asset', 1, 0, '2017-03-23 00:28:19', '2017-03-23 00:28:19', '55085ddd-4ff1-49d9-b006-e3e307de3d1a'),
(8, 'Entry', 1, 0, '2017-03-26 15:58:27', '2017-03-26 15:58:38', '12494aaa-9c56-4459-8dd8-dc19494543e8');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements_i18n`
--

CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', '', NULL, 1, '2017-03-14 17:08:47', '2017-03-14 17:08:47', 'decc6604-e6e6-49c9-93b3-ddaef769c107'),
(2, 2, 'en_us', 'homepage', '__home__', 1, '2017-03-14 17:08:50', '2017-03-14 17:08:50', '7d3b08ba-eda4-404d-a5ef-d7d249ee2fef'),
(6, 6, 'en_us', 'clean-roof-ctsign', NULL, 1, '2017-03-23 00:28:09', '2017-03-23 00:28:09', '64d3d3fd-c0f5-4679-9b4a-6d76ec4bb106'),
(7, 7, 'en_us', 'bbb-poster', NULL, 1, '2017-03-23 00:28:19', '2017-03-23 00:28:19', 'dd053b31-5828-4898-a3de-6afbb2528201'),
(8, 8, 'en_us', 'test-blog-name', 'blog/test-blog-name', 1, '2017-03-26 15:58:28', '2017-03-26 15:58:38', '795861f2-7ea4-4c28-82bc-5566cdcbfad2');

-- --------------------------------------------------------

--
-- Table structure for table `craft_emailmessages`
--

CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entries`
--

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, NULL, '2017-03-14 17:08:49', NULL, '2017-03-14 17:08:50', '2017-03-14 17:08:50', 'aceb1e62-2367-49d9-b4c4-ffb5321814b6'),
(8, 3, 3, 1, '2017-03-26 15:58:00', NULL, '2017-03-26 15:58:28', '2017-03-26 15:58:38', '4531c4c8-d7db-401c-9972-577a4076ed29');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrydrafts`
--

CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrytypes`
--

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 3, 'Homepage', 'homepage', 1, 'Title', NULL, 1, '2017-03-14 17:08:49', '2017-03-14 17:08:50', '54a9bd76-aadb-40d8-892f-b2cea2066494'),
(3, 3, 8, 'Blog', 'blog', 1, 'Title', NULL, 1, '2017-03-16 17:20:04', '2017-03-16 17:20:42', '1b48e1a5-8598-4758-bf27-fb071c049c6f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entryversions`
--

CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) UNSIGNED NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entryversions`
--

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 1, 1, 'en_us', 1, NULL, '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1489511329,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}', '2017-03-14 17:08:50', '2017-03-14 17:08:50', '51107c47-1a22-4566-ad15-9da013d0a7e5'),
(2, 2, 1, 1, 'en_us', 2, NULL, '{\"typeId\":null,\"authorId\":null,\"title\":\"Welcome to Sloan-craft.dev!\",\"slug\":\"homepage\",\"postDate\":1489511329,\"expiryDate\":null,\"enabled\":\"1\",\"parentId\":null,\"fields\":{\"1\":\"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Sloan-craft.dev will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>\"}}', '2017-03-14 17:08:50', '2017-03-14 17:08:50', '3259b09b-4da4-46c1-b0e9-9360ca1491fe'),
(5, 8, 3, 1, 'en_us', 1, '', '{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Test Blog Name\",\"slug\":\"test-blog-name\",\"postDate\":1490543907,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>Test<\\/p>\",\"7\":\"\",\"4\":\"\",\"3\":\"\"}}', '2017-03-26 15:58:28', '2017-03-26 15:58:28', 'edef78bb-4a59-48f3-bc64-cbcc4cb7d707'),
(6, 8, 3, 1, 'en_us', 2, '', '{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"Test Blog Name\",\"slug\":\"test-blog-name\",\"postDate\":1490543880,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"1\":\"<p>Test<\\/p>\",\"7\":\"\",\"4\":\"\",\"3\":\"\"}}', '2017-03-26 15:58:38', '2017-03-26 15:58:38', 'e13470a2-9315-4ed0-915d-0d0013b7e634');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldgroups`
--

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2017-03-14 17:08:49', '2017-03-14 17:08:49', '0e7f140d-88ff-4017-81fe-4254fc8d735f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayoutfields`
--

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 1, 1, 1, 1, '2017-03-14 17:08:50', '2017-03-14 17:08:50', '9a19f77c-d7cf-4aa2-b947-0ce00d8b8dfd'),
(4, 6, 3, 5, 0, 1, '2017-03-16 17:15:11', '2017-03-16 17:15:11', 'edf99c90-eeb5-4b59-b2be-b71d9a646b05'),
(5, 6, 3, 6, 0, 2, '2017-03-16 17:15:11', '2017-03-16 17:15:11', '8ad6a1f7-f604-4002-b746-f9884fc05ff8'),
(6, 8, 4, 3, 0, 1, '2017-03-16 17:20:42', '2017-03-16 17:20:42', 'c7eeef7b-f38a-414d-97e6-5863d13e231e'),
(7, 8, 4, 7, 0, 2, '2017-03-16 17:20:42', '2017-03-16 17:20:42', 'df8da02f-c47a-49d7-9a64-32d1404ebf57'),
(8, 8, 4, 4, 0, 3, '2017-03-16 17:20:42', '2017-03-16 17:20:42', '7685208b-a025-4cda-bddc-b812849cf1ba'),
(9, 8, 4, 1, 0, 4, '2017-03-16 17:20:42', '2017-03-16 17:20:42', '0ed7f66f-7585-414a-97ce-efbc537614bb');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouts`
--

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2017-03-14 17:08:49', '2017-03-14 17:08:49', '6393ccc7-711e-4c5e-a8be-aa184c157a4f'),
(3, 'Entry', '2017-03-14 17:08:50', '2017-03-14 17:08:50', '11b9b516-2abf-41ae-8269-03647dd3942a'),
(6, 'MatrixBlock', '2017-03-16 17:15:11', '2017-03-16 17:15:11', 'a2a2eec1-7843-482a-b209-b3b39bf45984'),
(8, 'Entry', '2017-03-16 17:20:42', '2017-03-16 17:20:42', '1458fe4d-991c-4985-8f62-0e126f5102b5'),
(10, 'Asset', '2017-03-23 00:27:52', '2017-03-23 00:27:52', 'b17c4dbf-fb98-4ea3-a93f-5ec8999162c3');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouttabs`
--

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 'Content', 1, '2017-03-14 17:08:50', '2017-03-14 17:08:50', '31e50138-fdaf-4e5b-b126-89caae45fd64'),
(3, 6, 'Content', 1, '2017-03-16 17:15:11', '2017-03-16 17:15:11', '794c686c-650f-4324-b4fc-f4128ba507f6'),
(4, 8, 'Content', 1, '2017-03-16 17:20:42', '2017-03-16 17:20:42', '4d8beedf-a117-4435-a787-e413162b403a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fields`
--

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', NULL, 1, 'RichText', '{\"configFile\":\"Standard.json\",\"columnType\":\"text\"}', '2017-03-14 17:08:49', '2017-03-14 17:08:49', 'b9adbbd4-5fd2-4643-8f70-d2de13f26d47'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{\"source\":\"taggroup:1\"}', '2017-03-14 17:08:49', '2017-03-14 17:08:49', '1ead6a9e-e364-46bd-9e62-17b59b448a31'),
(3, 1, 'Short Description', 'shortDescription', 'global', 'Short description of post', 0, 'PlainText', '{\"placeholder\":\"\",\"maxLength\":\"160\",\"multiline\":\"\",\"initialRows\":\"4\"}', '2017-03-16 17:09:51', '2017-03-16 17:09:51', '6357924b-0ced-49ab-b654-c2ce43ebee94'),
(4, 1, 'Hero Image', 'heroImage', 'global', '', 0, 'Matrix', '{\"maxBlocks\":\"1\"}', '2017-03-16 17:15:10', '2017-03-16 17:15:10', '83f711e7-904c-4026-b9f0-ef3190729e19'),
(5, NULL, 'Large Image', 'largeImage', 'matrixBlockType:1', '720x540', 0, 'Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}', '2017-03-16 17:15:11', '2017-03-16 17:15:11', '96cd0242-578b-4d42-b2a5-6941c26cbf6c'),
(6, NULL, 'Thumbnail Image', 'thumbnailImage', 'matrixBlockType:1', '480x360', 0, 'Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"limit\":\"\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}', '2017-03-16 17:15:11', '2017-03-16 17:15:11', 'e99c6ca8-17a7-4079-835a-b9d37e59a693'),
(7, 1, 'Featured Post', 'featuredPost', 'global', 'Turn on to make this a Featured Post', 0, 'Lightswitch', '{\"default\":\"\"}', '2017-03-16 17:17:48', '2017-03-16 17:17:48', '93d7da41-1589-4d52-aaa5-f6219868ddd1');

-- --------------------------------------------------------

--
-- Table structure for table `craft_globalsets`
--

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_info`
--

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.6.2964', '2.6.9', 0, 'Sloan Craft', 'http://sloan-craft.dev', 'UTC', 1, 0, '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2aa04d3d-0505-4ff8-9424-6df4941125ef');

-- --------------------------------------------------------

--
-- Table structure for table `craft_locales`
--

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_locales`
--

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('en_us', 1, '2017-03-14 17:08:44', '2017-03-14 17:08:44', '8b791928-3dd7-4f81-90ef-862813b3e8db');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocks`
--

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocktypes`
--

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_matrixblocktypes`
--

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 4, 6, 'Images', 'images', 1, '2017-03-16 17:15:11', '2017-03-16 17:15:11', '9acd95ba-e3ec-4ba2-8282-3a129d7c3a1c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_heroimage`
--

CREATE TABLE `craft_matrixcontent_heroimage` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_migrations`
--

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '970aaa1c-8ebe-4cf5-8aef-9780b79f1103'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '4b0c4835-bf95-4a4f-94b7-a3cafdf97551'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'fa9f1f33-6584-4c30-b59a-15b95e3ae7dd'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '1b6aaa49-51d5-4816-87d1-6eb925fc32f5'),
(5, NULL, 'm140829_000001_single_title_formats', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '62f0b0aa-fa9d-4bca-be5a-2a8d9f14c27f'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'e47b9795-9a38-47a5-af9f-cc57ec269cdc'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'e7cc1b30-90b6-4a87-ad5c-141ad665b13c'),
(8, NULL, 'm141008_000001_elements_index_tune', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '29e0f159-af23-4775-998e-b15b1ca83306'),
(9, NULL, 'm141009_000001_assets_source_handle', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '377bc09a-b7ac-4bbe-a9d3-97f41589b2f6'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'd92f796c-d3d8-4dbe-a9bb-7b5319b0478a'),
(11, NULL, 'm141030_000000_plugin_schema_versions', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '6bf56b0a-806a-4ecf-a5fb-1b584f287efd'),
(12, NULL, 'm141030_000001_drop_structure_move_permission', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'e2df81fd-0032-4129-9d52-fd8067bbf201'),
(13, NULL, 'm141103_000001_tag_titles', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '13793061-476c-4a05-a463-cddd525c2162'),
(14, NULL, 'm141109_000001_user_status_shuffle', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '3306ed84-1973-4a3e-98bf-78889225c38e'),
(15, NULL, 'm141126_000001_user_week_start_day', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'afb45686-2d00-49d7-a262-875b62b73ce1'),
(16, NULL, 'm150210_000001_adjust_user_photo_size', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '6c8af0b9-b55e-4c5b-aa6f-d9cea10c00aa'),
(17, NULL, 'm150724_000001_adjust_quality_settings', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '405767f4-184a-4a82-8bdb-e1d0cc9e7486'),
(18, NULL, 'm150827_000000_element_index_settings', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '5e4e5726-8fb4-4f57-aea0-53e7195e48af'),
(19, NULL, 'm150918_000001_add_colspan_to_widgets', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '06324dc8-61ff-4a9d-83e6-f18339306211'),
(20, NULL, 'm151007_000000_clear_asset_caches', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '12ce5c0f-4d67-4cfb-a47f-e4dd9a4d6554'),
(21, NULL, 'm151109_000000_text_url_formats', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'af7037ce-baa4-4700-9997-16549e3cf460'),
(22, NULL, 'm151110_000000_move_logo', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '1a8350b4-41e0-4555-9e64-7e0ad97ba585'),
(23, NULL, 'm151117_000000_adjust_image_widthheight', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '4c4d03b8-0e70-4bc2-b911-9b793aadfcff'),
(24, NULL, 'm151127_000000_clear_license_key_status', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'ee8cfbea-5842-47a3-96c6-8ad4d903f6d3'),
(25, NULL, 'm151127_000000_plugin_license_keys', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'b15cb9ae-21ab-4ec5-a020-c5a798472a79'),
(26, NULL, 'm151130_000000_update_pt_widget_feeds', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'fe9dfdc9-92dc-4954-976f-9a011cd14e3b'),
(27, NULL, 'm160114_000000_asset_sources_public_url_default_true', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'cd7bc830-0518-4ca7-9472-589efa141622'),
(28, NULL, 'm160223_000000_sortorder_to_smallint', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '7be7c6ad-b0ef-4e29-9e40-17a7295710b8'),
(29, NULL, 'm160229_000000_set_default_entry_statuses', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '5504a2ff-a528-4834-86cc-2dc8d88511f0'),
(30, NULL, 'm160304_000000_client_permissions', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'a087f67a-c321-453c-a34c-d8e1d17909ac'),
(31, NULL, 'm160322_000000_asset_filesize', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'b772440f-1e25-4d21-bb68-440cf5528e93'),
(32, NULL, 'm160503_000000_orphaned_fieldlayouts', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2e7e6d89-69cc-43ac-8b9d-376aabf23471'),
(33, NULL, 'm160510_000000_tasksettings', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'b3487762-2304-4b6c-bea0-9110ff6bd2a7'),
(34, NULL, 'm160829_000000_pending_user_content_cleanup', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '3103ccd9-c4e6-4faf-bdf3-42ce4cddb89b'),
(35, NULL, 'm160830_000000_asset_index_uri_increase', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', 'a034f82c-0102-4746-aaea-5314402f63e7'),
(36, NULL, 'm160919_000000_usergroup_handle_title_unique', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '3171f9ff-aee7-475e-93aa-e588dd2581ad'),
(37, NULL, 'm161108_000000_new_version_format', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '7d4b075b-e285-490f-af7e-9c069878609b'),
(38, NULL, 'm161109_000000_index_shuffle', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '2017-03-14 17:08:44', '169c05e3-0634-46af-bb88-1c12efaabb2b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_plugins`
--

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_rackspaceaccess`
--

CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_relations`
--

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_routes`
--

CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_routes`
--

INSERT INTO `craft_routes` (`id`, `locale`, `urlParts`, `urlPattern`, `template`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, '[\"music\"]', 'music', 'static_pages/music', 1, '2017-03-16 17:38:17', '2017-03-16 17:38:46', '1f367b7c-d00e-4522-808f-898a1987dc0f'),
(2, NULL, '[\"videos\"]', 'videos', 'static_pages/videos', 2, '2017-03-16 17:38:39', '2017-03-16 17:38:39', 'b9fab77d-29d3-4061-9b6b-28c94fb184b8');

-- --------------------------------------------------------

--
-- Table structure for table `craft_searchindex`
--

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(1, 'username', 0, 'en_us', ' sloanevans '),
(1, 'firstname', 0, 'en_us', ''),
(1, 'lastname', 0, 'en_us', ''),
(1, 'fullname', 0, 'en_us', ''),
(1, 'email', 0, 'en_us', ' nmann4789 gmail com '),
(1, 'slug', 0, 'en_us', ''),
(2, 'slug', 0, 'en_us', ' homepage '),
(2, 'title', 0, 'en_us', ' welcome to sloan craft dev '),
(2, 'field', 1, 'en_us', ' it s true this site doesn t have a whole lot of content yet but don t worry our web developers have just installed the cms and they re setting things up for the content editors this very moment soon sloan craft dev will be an oasis of fresh perspectives sharp analyses and astute opinions that will keep you coming back again and again '),
(8, 'slug', 0, 'en_us', ' test blog name '),
(8, 'field', 3, 'en_us', ''),
(8, 'field', 7, 'en_us', ' 0 '),
(8, 'field', 4, 'en_us', ''),
(8, 'field', 1, 'en_us', ' test '),
(6, 'filename', 0, 'en_us', ' cleanroofctsign png '),
(6, 'extension', 0, 'en_us', ' png '),
(6, 'kind', 0, 'en_us', ' image '),
(6, 'slug', 0, 'en_us', ' clean roof ctsign '),
(8, 'title', 0, 'en_us', ' test blog name '),
(6, 'title', 0, 'en_us', ' clean roof ctsign '),
(7, 'filename', 0, 'en_us', ' bbb poster_170323_002818 jpg '),
(7, 'extension', 0, 'en_us', ' jpg '),
(7, 'kind', 0, 'en_us', ' image '),
(7, 'slug', 0, 'en_us', ' bbb poster '),
(7, 'title', 0, 'en_us', ' bbb poster ');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections`
--

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2017-03-14 17:08:49', '2017-03-14 17:08:49', '2015770d-7f04-4de4-9ca3-058da0f2a58c'),
(3, NULL, 'Blog', 'blog', 'channel', 1, 'blog/detail', 1, '2017-03-16 17:20:04', '2017-03-16 17:20:04', 'f38aca57-d760-473f-92bf-45dc8b70a0de');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections_i18n`
--

CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_us', 1, '__home__', NULL, '2017-03-14 17:08:49', '2017-03-14 17:08:49', '242da3f7-c306-4d26-82d0-8b77e830de71'),
(3, 3, 'en_us', 1, 'blog/{slug}', NULL, '2017-03-16 17:20:04', '2017-03-16 17:20:04', '46fda269-e3f4-4689-a7e8-817631f2f60c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sessions`
--

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, '93da739bcf80d68fde98e431a56fd04cf9e11040czozMjoiTmh4cEd4T2F4a2t2MmhJU3g5WmxZVFRRQTU0aVlsN1IiOw==', '2017-03-14 17:08:49', '2017-03-14 17:08:49', 'ce59eb0f-5fba-43dd-9a39-fe55aa8fb74b'),
(2, 1, '609eaa12ed1d5b41e332022e969fcdaf0b0ff34cczozMjoiVHlFMkg1Q2huQ29mbHNZRmpOVkJJNEhEY1o5aExsMDgiOw==', '2017-03-16 17:08:16', '2017-03-16 17:08:16', '8af530dd-4c24-4312-b206-0d285d839883'),
(3, 1, 'a68706bc7909a7636c7b6bddfbf71251bd9b6887czozMjoiMUg0dWZmVDZMbUVlcG5OQVBZbWlyMU1JbVVCR0ZpNmkiOw==', '2017-03-23 00:24:53', '2017-03-23 00:24:53', '092422e6-fb4e-4d27-acd7-af4ebf837080'),
(4, 1, '98d0d8d0fd7b2a12fbd4b88f1018cea3f33d7177czozMjoifmltbnJQOWh2UFlhaVRpSWpCOFZMRWVlRGp3dnlnU0QiOw==', '2017-03-26 14:46:05', '2017-03-26 14:46:05', 'd3a6495b-a6c8-4e7e-b911-f4a6f48c8d24');

-- --------------------------------------------------------

--
-- Table structure for table `craft_shunnedmessages`
--

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_structureelements`
--

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_structures`
--

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_systemsettings`
--

CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{\"protocol\":\"php\",\"emailAddress\":\"nmann4789@gmail.com\",\"senderName\":\"Sloan Craft\"}', '2017-03-14 17:08:49', '2017-03-14 17:08:49', '0b627512-04e1-4c51-bf7e-a4b0348a93a8');

-- --------------------------------------------------------

--
-- Table structure for table `craft_taggroups`
--

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_taggroups`
--

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 1, '2017-03-14 17:08:49', '2017-03-14 17:08:49', 'c073f981-5938-4f72-a201-8e3e8865a3f1');

-- --------------------------------------------------------

--
-- Table structure for table `craft_tags`
--

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tasks`
--

CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `currentStep` int(11) UNSIGNED DEFAULT NULL,
  `totalSteps` int(11) UNSIGNED DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecachecriteria`
--

CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecacheelements`
--

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecaches`
--

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tokens`
--

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups`
--

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups_users`
--

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions`
--

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_usergroups`
--

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_users`
--

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_users`
--

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `client` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `suspended` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'sloanevans', NULL, NULL, NULL, 'nmann4789@gmail.com', '$2y$13$olI5PAXhCuj/yFGBCI7XNuTFkDp8I.1fhQU.63Vi4lJleQf8Zeis.', NULL, 0, 1, 0, 0, 0, 0, 0, '2017-03-26 14:46:05', '::1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2017-03-14 17:08:47', '2017-03-14 17:08:47', '2017-03-26 14:46:05', '65361473-816f-4f05-bac2-a70a6c5d56ef');

-- --------------------------------------------------------

--
-- Table structure for table `craft_widgets`
--

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(4) UNSIGNED DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, NULL, 1, '2017-03-14 17:09:08', '2017-03-14 17:09:08', '0447bb2f-85a1-4359-820c-d1b52bbd3bd5'),
(2, 1, 'GetHelp', 2, NULL, NULL, 1, '2017-03-14 17:09:08', '2017-03-14 17:09:08', '0e130f5d-9648-48e0-b762-c62ca7520265'),
(3, 1, 'Updates', 3, NULL, NULL, 1, '2017-03-14 17:09:08', '2017-03-14 17:09:08', 'c3678ec3-448d-4b9a-b302-35a896e96c0c'),
(4, 1, 'Feed', 4, NULL, '{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\"}', 1, '2017-03-14 17:09:08', '2017-03-14 17:09:08', 'ae92a57a-4dad-460b-bc86-2897171cc1de');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  ADD KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  ADD KEY `craft_assetfiles_folderId_fk` (`folderId`);

--
-- Indexes for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  ADD KEY `craft_assetfolders_parentId_fk` (`parentId`),
  ADD KEY `craft_assetfolders_sourceId_fk` (`sourceId`);

--
-- Indexes for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  ADD KEY `craft_assetindexdata_sourceId_fk` (`sourceId`);

--
-- Indexes for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  ADD KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`);

--
-- Indexes for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_categories_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_categorygroups_structureId_fk` (`structureId`),
  ADD KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  ADD KEY `craft_categorygroups_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_content_title_idx` (`title`),
  ADD KEY `craft_content_locale_fk` (`locale`);

--
-- Indexes for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indexes for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`);

--
-- Indexes for table `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_elements_type_idx` (`type`),
  ADD KEY `craft_elements_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`);

--
-- Indexes for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  ADD KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  ADD KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  ADD KEY `craft_emailmessages_locale_fk` (`locale`);

--
-- Indexes for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entries_sectionId_idx` (`sectionId`),
  ADD KEY `craft_entries_typeId_idx` (`typeId`),
  ADD KEY `craft_entries_postDate_idx` (`postDate`),
  ADD KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `craft_entries_authorId_fk` (`authorId`);

--
-- Indexes for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entrydrafts_locale_fk` (`locale`);

--
-- Indexes for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  ADD UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  ADD KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entryversions_locale_fk` (`locale`);

--
-- Indexes for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`);

--
-- Indexes for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  ADD KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`);

--
-- Indexes for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouts_type_idx` (`type`);

--
-- Indexes for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`);

--
-- Indexes for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `craft_fields_context_idx` (`context`),
  ADD KEY `craft_fields_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  ADD KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_locales`
--
ALTER TABLE `craft_locales`
  ADD PRIMARY KEY (`locale`),
  ADD KEY `craft_locales_sortOrder_idx` (`sortOrder`);

--
-- Indexes for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Indexes for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_matrixcontent_heroimage`
--
ALTER TABLE `craft_matrixcontent_heroimage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixcontent_heroimage_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_matrixcontent_heroimage_locale_fk` (`locale`);

--
-- Indexes for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  ADD KEY `craft_migrations_pluginId_fk` (`pluginId`);

--
-- Indexes for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`);

--
-- Indexes for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  ADD KEY `craft_relations_sourceId_fk` (`sourceId`),
  ADD KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  ADD KEY `craft_relations_targetId_fk` (`targetId`);

--
-- Indexes for table `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_routes_urlPattern_unq_idx` (`urlPattern`),
  ADD KEY `craft_routes_locale_idx` (`locale`);

--
-- Indexes for table `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`);
ALTER TABLE `craft_searchindex` ADD FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`);

--
-- Indexes for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  ADD KEY `craft_sections_structureId_fk` (`structureId`);

--
-- Indexes for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  ADD KEY `craft_sections_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sessions_uid_idx` (`uid`),
  ADD KEY `craft_sessions_token_idx` (`token`),
  ADD KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `craft_sessions_userId_fk` (`userId`);

--
-- Indexes for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indexes for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `craft_structureelements_root_idx` (`root`),
  ADD KEY `craft_structureelements_lft_idx` (`lft`),
  ADD KEY `craft_structureelements_rgt_idx` (`rgt`),
  ADD KEY `craft_structureelements_level_idx` (`level`),
  ADD KEY `craft_structureelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`);

--
-- Indexes for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tags_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_tasks`
--
ALTER TABLE `craft_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tasks_root_idx` (`root`),
  ADD KEY `craft_tasks_lft_idx` (`lft`),
  ADD KEY `craft_tasks_rgt_idx` (`rgt`),
  ADD KEY `craft_tasks_level_idx` (`level`);

--
-- Indexes for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecachecriteria_type_idx` (`type`);

--
-- Indexes for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecacheelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecaches_expiryDate_cacheKey_locale_path_idx` (`expiryDate`,`cacheKey`,`locale`,`path`),
  ADD KEY `craft_templatecaches_locale_fk` (`locale`);

--
-- Indexes for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  ADD KEY `craft_tokens_expiryDate_idx` (`expiryDate`);

--
-- Indexes for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `craft_usergroups_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`);

--
-- Indexes for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `craft_userpermissions_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  ADD UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  ADD KEY `craft_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `craft_users_uid_idx` (`uid`),
  ADD KEY `craft_users_preferredLocale_fk` (`preferredLocale`);

--
-- Indexes for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_widgets_userId_fk` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_matrixcontent_heroimage`
--
ALTER TABLE `craft_matrixcontent_heroimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_routes`
--
ALTER TABLE `craft_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_tasks`
--
ALTER TABLE `craft_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_matrixcontent_heroimage`
--
ALTER TABLE `craft_matrixcontent_heroimage`
  ADD CONSTRAINT `craft_matrixcontent_heroimage_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_heroimage_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;
