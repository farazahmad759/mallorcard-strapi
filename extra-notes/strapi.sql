-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 02:56 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `strapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
CREATE TABLE IF NOT EXISTS `activities` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `created_at`, `updated_at`, `title`, `subtitle`, `description`, `price`) VALUES
(7, '2020-05-30 06:40:47', '2020-05-30 09:56:14', 'Exercise', 'Good for health', 'You should do it every day ;)', 10.000000000000009),
(8, '2020-05-30 07:19:27', '2020-05-30 09:56:13', 'new', 'subtitle', 'description', 10.000000000000009),
(9, '2020-05-30 07:22:58', '2020-05-30 09:56:13', 'new', 'subtitle', 'description', 10.000000000000009),
(10, '2020-05-30 07:27:10', '2020-05-30 09:56:13', 'new', 'subtitle', 'description', 10.000000000000009),
(11, '2020-05-30 07:28:50', '2020-05-30 09:56:13', 'new', 'subtitle', 'description', 10.000000000000009),
(12, '2020-05-30 07:29:31', '2020-05-30 09:56:13', 'new', 'subtitle', 'description', 10.000000000000009),
(13, '2020-05-30 07:33:19', '2020-05-30 09:56:13', 'new', 'subtitle', 'description', 10.000000000000009),
(14, '2020-05-30 07:36:10', '2020-05-30 09:56:13', 'new', 'subtitle', 'description', 10.000000000000009),
(15, '2020-05-30 07:37:11', '2020-05-30 09:56:13', 'new', 'subtitle', 'description', 10.000000000000009),
(16, '2020-05-30 07:37:31', '2020-05-30 09:56:13', 'new', 'subtitle', 'description', 10.000000000000009),
(17, '2020-05-30 07:40:12', '2020-05-30 09:56:13', 'new', 'subtitle', 'description', 10.000000000000009),
(18, '2020-05-30 07:41:48', '2020-05-30 09:56:14', 'new', 'subtitle', 'description', 10.000000000000009),
(19, '2020-05-30 07:42:05', '2020-05-30 09:56:14', 'new', 'subtitle', 'description', 10.000000000000009),
(20, '2020-05-30 07:42:43', '2020-05-30 09:56:14', 'new', 'subtitle', 'description', 10.000000000000009),
(21, '2020-05-30 07:44:16', '2020-05-30 09:56:14', 'new', 'subtitle', 'description', 10.000000000000009),
(22, '2020-05-30 08:18:36', '2020-05-30 09:56:14', 'new', 'subtitle', 'description', 10.000000000000009),
(23, '2020-05-30 08:21:36', '2020-05-30 09:56:14', NULL, NULL, NULL, 10.000000000000009),
(24, '2020-05-30 08:22:26', '2020-05-30 09:56:14', 'new', 'subtitle', 'description', 10.000000000000009);

-- --------------------------------------------------------

--
-- Table structure for table `activities_components`
--

DROP TABLE IF EXISTS `activities_components`;
CREATE TABLE IF NOT EXISTS `activities_components` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `activity_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id_fk` (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activities_components`
--

INSERT INTO `activities_components` (`id`, `field`, `order`, `component_type`, `component_id`, `activity_id`) VALUES
(20, 'internationalization', 1, 'components_activities_multilinguals', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `components_activities_multilinguals`
--

DROP TABLE IF EXISTS `components_activities_multilinguals`;
CREATE TABLE IF NOT EXISTS `components_activities_multilinguals` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `components_activities_multilinguals`
--

INSERT INTO `components_activities_multilinguals` (`id`, `language`, `title`, `subtitle`, `description`) VALUES
(1, 'DE', 'Title (DE)', 'Subtitle DE', 'Description DE');

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
CREATE TABLE IF NOT EXISTS `core_store` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(5, 'db_model_strapi_webhooks', '{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}', 'object', NULL, NULL),
(7, 'db_model_core_store', '{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(8, 'db_model_upload_file', '{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(9, 'db_model_users-permissions_permission', '{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(10, 'db_model_strapi_administrator', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"required\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false}}', 'object', NULL, NULL),
(11, 'db_model_users-permissions_role', '{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}}', 'object', NULL, NULL),
(12, 'db_model_users-permissions_user', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"picture\":{\"model\":\"file\",\"via\":\"related\",\"plugin\":\"upload\",\"required\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(13, 'db_model_upload_file_morph', '{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"},\"order\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(14, 'plugin_email_provider', '{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}', 'object', 'development', ''),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(16, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"redirect_uri\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]}}', 'object', '', ''),
(35, 'db_model_components_general_ml_texts', '{\"lang_en\":{\"type\":\"string\"},\"lang_de\":{\"type\":\"string\"},\"lang_es\":{\"type\":\"string\"},\"lang\":{\"type\":\"enumeration\",\"enum\":[\"en\",\"de\",\"es\"]}}', 'object', NULL, NULL),
(37, 'db_model_components_general_ml_text_longs', '{\"lang_de\":{\"type\":\"text\"},\"lang_es\":{\"type\":\"text\"}}', 'object', NULL, NULL),
(49, 'db_model_components_activities_multilinguals', '{\"language\":{\"type\":\"enumeration\",\"enum\":[\"DE\",\"ES\"]},\"title\":{\"type\":\"string\"},\"subtitle\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"}}', 'object', NULL, NULL),
(46, 'plugin_content_manager_configuration_content_types::application::activities.activities', '{\"uid\":\"application::activities.activities\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"pictures\":{\"edit\":{\"label\":\"Pictures\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pictures\",\"searchable\":false,\"sortable\":false}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"internationalization\":{\"edit\":{\"label\":\"Internationalization\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Internationalization\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"pictures\",\"size\":6}],[{\"name\":\"price\",\"size\":4}],[{\"name\":\"internationalization\",\"size\":12}]],\"editRelations\":[]}}', 'object', '', ''),
(47, 'db_model_components_activities_activities_multilinguals', '{\"title\":{\"type\":\"string\"},\"subtitle\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"lang\":{\"type\":\"enumeration\",\"enum\":[\"EN\",\"DE\",\"ES\"]}}', 'object', NULL, NULL),
(39, 'db_model_components_general_ml_pictures', '{\"lang_en\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"lang_de\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"lang_es\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false}}', 'object', NULL, NULL),
(42, 'db_model_languages', '{\"title\":{\"type\":\"string\"},\"code\":{\"type\":\"string\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(50, 'plugin_content_manager_configuration_components::activities.multilingual', '{\"uid\":\"activities.multilingual\",\"isComponent\":true,\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"language\":{\"edit\":{\"label\":\"Language\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Language\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"language\",\"title\",\"subtitle\"],\"edit\":[[{\"name\":\"language\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"subtitle\",\"size\":6},{\"name\":\"description\",\"size\":6}]],\"editRelations\":[]}}', 'object', '', ''),
(41, 'db_model_components_opening_hours', '{\"day_interval\":{\"required\":true,\"type\":\"string\"},\"opening_hour\":{\"type\":\"string\"},\"closing_hour\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(21, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(22, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(23, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(24, 'plugin_content_manager_configuration_content_types::strapi::administrator', '{\"uid\":\"strapi::administrator\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"blocked\"],\"editRelations\":[],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(25, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"picture\":{\"edit\":{\"label\":\"Picture\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Picture\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"picture\",\"size\":6}]],\"editRelations\":[\"role\"]}}', 'object', '', ''),
(29, 'db_model_activities', '{\"title\":{\"type\":\"string\"},\"subtitle\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"pictures\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"price\":{\"type\":\"float\"},\"internationalization\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"activities.multilingual\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(26, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(44, 'db_model_components_gen_ml_text_shorts', '{\"code\":{\"model\":\"languages\"},\"text\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(28, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"http://localhost:1337/admin\",\"email_reset_password\":\"http://localhost:1337/admin\",\"default_role\":\"authenticated\"}', 'object', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
CREATE TABLE IF NOT EXISTS `strapi_administrator` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `username`, `email`, `password`, `resetPasswordToken`, `blocked`) VALUES
(1, 'farazahmad759', 'farazahmad759@gmail.com', '$2a$10$6z/YWOd9uPRMjT/QC0ZTeu9UDauOb9cbH72uF3NcD3NSHaN6gkwXG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
CREATE TABLE IF NOT EXISTS `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE IF NOT EXISTS `upload_file` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_file`
--

INSERT INTO `upload_file` (`id`, `name`, `alternativeText`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `previewUrl`, `provider`, `provider_metadata`, `created_at`, `updated_at`) VALUES
(1, 'Sketchpad', 'ddsdsdsdsdsdsdsds', 'dsdsds', 2015, 1450, '{\"thumbnail\":{\"hash\":\"thumbnail_Sketchpad_4d4524da2b\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":217,\"height\":156,\"size\":14.56,\"url\":\"/uploads/thumbnail_Sketchpad_4d4524da2b.png\"},\"large\":{\"hash\":\"large_Sketchpad_4d4524da2b\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":720,\"size\":126.28,\"url\":\"/uploads/large_Sketchpad_4d4524da2b.png\"},\"medium\":{\"hash\":\"medium_Sketchpad_4d4524da2b\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":540,\"size\":84.53,\"url\":\"/uploads/medium_Sketchpad_4d4524da2b.png\"},\"small\":{\"hash\":\"small_Sketchpad_4d4524da2b\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":360,\"size\":48.52,\"url\":\"/uploads/small_Sketchpad_4d4524da2b.png\"}}', 'Sketchpad_4d4524da2b', '.png', 'image/png', '240.66', '/uploads/Sketchpad_4d4524da2b.png', NULL, 'local', NULL, '2020-05-30 03:33:06', '2020-05-30 03:35:17'),
(2, 'em_home', '', '', 1440, 2160, '{\"thumbnail\":{\"hash\":\"thumbnail_em_home_0474348c68\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":104,\"height\":156,\"size\":9.27,\"url\":\"/uploads/thumbnail_em_home_0474348c68.png\"},\"large\":{\"hash\":\"large_em_home_0474348c68\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":667,\"height\":1000,\"size\":112.11,\"url\":\"/uploads/large_em_home_0474348c68.png\"},\"medium\":{\"hash\":\"medium_em_home_0474348c68\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":750,\"size\":75.49,\"url\":\"/uploads/medium_em_home_0474348c68.png\"},\"small\":{\"hash\":\"small_em_home_0474348c68\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":333,\"height\":500,\"size\":44.45,\"url\":\"/uploads/small_em_home_0474348c68.png\"}}', 'em_home_0474348c68', '.png', 'image/png', '172.30', '/uploads/em_home_0474348c68.png', NULL, 'local', NULL, '2020-05-30 03:33:06', '2020-05-30 03:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
CREATE TABLE IF NOT EXISTS `upload_file_morph` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_file_morph`
--

INSERT INTO `upload_file_morph` (`id`, `upload_file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(20, 2, 23, 'activities', 'pictures', 2),
(19, 1, 23, 'activities', 'pictures', 1),
(18, 2, 7, 'activities', 'pictures', 2),
(17, 1, 7, 'activities', 'pictures', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
CREATE TABLE IF NOT EXISTS `users-permissions_permission` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`) VALUES
(222, 'application', 'activities', 'create', 0, '', 1),
(223, 'application', 'activities', 'update', 0, '', 1),
(224, 'application', 'activities', 'delete', 0, '', 1),
(25, 'content-manager', 'components', 'listcomponents', 0, '', 1),
(26, 'content-manager', 'components', 'findcomponent', 0, '', 1),
(27, 'content-manager', 'components', 'updatecomponent', 0, '', 1),
(28, 'content-manager', 'contentmanager', 'generateuid', 0, '', 1),
(29, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 1),
(30, 'content-manager', 'contentmanager', 'find', 0, '', 1),
(31, 'content-manager', 'contentmanager', 'findone', 0, '', 1),
(32, 'content-manager', 'contentmanager', 'count', 0, '', 1),
(33, 'content-manager', 'contentmanager', 'create', 0, '', 1),
(34, 'content-manager', 'contentmanager', 'update', 0, '', 1),
(35, 'content-manager', 'contentmanager', 'delete', 0, '', 1),
(36, 'content-manager', 'contentmanager', 'deletemany', 0, '', 1),
(37, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 1),
(38, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 1),
(39, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 1),
(40, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1),
(41, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1),
(42, 'content-type-builder', 'components', 'getcomponents', 0, '', 1),
(43, 'content-type-builder', 'components', 'getcomponent', 0, '', 1),
(44, 'content-type-builder', 'components', 'createcomponent', 0, '', 1),
(45, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1),
(46, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1),
(47, 'content-type-builder', 'connections', 'getconnections', 0, '', 1),
(48, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1),
(49, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1),
(50, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1),
(51, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1),
(52, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1),
(53, 'email', 'email', 'send', 0, '', 1),
(54, 'email', 'email', 'getenvironments', 0, '', 1),
(55, 'email', 'email', 'getsettings', 0, '', 1),
(56, 'email', 'email', 'updatesettings', 0, '', 1),
(57, 'upload', 'proxy', 'uploadproxy', 0, '', 1),
(58, 'upload', 'upload', 'upload', 0, '', 1),
(59, 'upload', 'upload', 'getsettings', 0, '', 1),
(60, 'upload', 'upload', 'updatesettings', 0, '', 1),
(61, 'upload', 'upload', 'find', 0, '', 1),
(62, 'upload', 'upload', 'count', 0, '', 1),
(63, 'upload', 'upload', 'findone', 0, '', 1),
(64, 'upload', 'upload', 'destroy', 0, '', 1),
(65, 'upload', 'upload', 'search', 0, '', 1),
(66, 'users-permissions', 'auth', 'callback', 0, '', 1),
(67, 'users-permissions', 'auth', 'changepassword', 0, '', 1),
(68, 'users-permissions', 'auth', 'connect', 1, '', 1),
(69, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1),
(70, 'users-permissions', 'auth', 'register', 0, '', 1),
(71, 'users-permissions', 'user', 'findone', 0, '', 1),
(72, 'users-permissions', 'user', 'me', 1, '', 1),
(73, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1),
(74, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1),
(75, 'users-permissions', 'user', 'find', 0, '', 1),
(76, 'users-permissions', 'user', 'create', 0, '', 1),
(77, 'users-permissions', 'user', 'update', 0, '', 1),
(78, 'users-permissions', 'user', 'destroy', 0, '', 1),
(79, 'users-permissions', 'user', 'destroyall', 0, '', 1),
(80, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1),
(81, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 1),
(82, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1),
(83, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1),
(84, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1),
(85, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1),
(86, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1),
(87, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1),
(88, 'users-permissions', 'userspermissions', 'index', 0, '', 1),
(89, 'users-permissions', 'userspermissions', 'init', 1, '', 1),
(90, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1),
(91, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1),
(92, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1),
(93, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1),
(94, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1),
(95, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1),
(96, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1),
(97, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1),
(225, 'application', 'activities', 'find', 1, '', 2),
(226, 'application', 'activities', 'findone', 1, '', 2),
(227, 'application', 'activities', 'count', 1, '', 2),
(228, 'application', 'activities', 'create', 1, '', 2),
(229, 'application', 'activities', 'update', 1, '', 2),
(230, 'application', 'activities', 'delete', 1, '', 2),
(231, 'application', 'activities', 'applydiscount', 0, '', 1),
(232, 'application', 'activities', 'applydiscount', 1, '', 2),
(219, 'application', 'activities', 'find', 0, '', 1),
(220, 'application', 'activities', 'findone', 0, '', 1),
(221, 'application', 'activities', 'count', 0, '', 1),
(122, 'content-manager', 'components', 'listcomponents', 0, '', 2),
(123, 'content-manager', 'components', 'findcomponent', 0, '', 2),
(124, 'content-manager', 'components', 'updatecomponent', 0, '', 2),
(125, 'content-manager', 'contentmanager', 'generateuid', 0, '', 2),
(126, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 2),
(127, 'content-manager', 'contentmanager', 'find', 0, '', 2),
(128, 'content-manager', 'contentmanager', 'findone', 0, '', 2),
(129, 'content-manager', 'contentmanager', 'count', 0, '', 2),
(130, 'content-manager', 'contentmanager', 'create', 0, '', 2),
(131, 'content-manager', 'contentmanager', 'update', 0, '', 2),
(132, 'content-manager', 'contentmanager', 'delete', 0, '', 2),
(133, 'content-manager', 'contentmanager', 'deletemany', 0, '', 2),
(134, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 2),
(135, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 2),
(136, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 2),
(137, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2),
(138, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2),
(139, 'content-type-builder', 'components', 'getcomponents', 0, '', 2),
(140, 'content-type-builder', 'components', 'getcomponent', 0, '', 2),
(141, 'content-type-builder', 'components', 'createcomponent', 0, '', 2),
(142, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2),
(143, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2),
(144, 'content-type-builder', 'connections', 'getconnections', 0, '', 2),
(145, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2),
(146, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2),
(147, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2),
(148, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2),
(149, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2),
(150, 'email', 'email', 'send', 0, '', 2),
(151, 'email', 'email', 'getenvironments', 0, '', 2),
(152, 'email', 'email', 'getsettings', 0, '', 2),
(153, 'email', 'email', 'updatesettings', 0, '', 2),
(154, 'upload', 'proxy', 'uploadproxy', 0, '', 2),
(155, 'upload', 'upload', 'upload', 0, '', 2),
(156, 'upload', 'upload', 'getsettings', 0, '', 2),
(157, 'upload', 'upload', 'updatesettings', 0, '', 2),
(158, 'upload', 'upload', 'find', 0, '', 2),
(159, 'upload', 'upload', 'findone', 0, '', 2),
(160, 'upload', 'upload', 'count', 0, '', 2),
(161, 'upload', 'upload', 'destroy', 0, '', 2),
(162, 'upload', 'upload', 'search', 0, '', 2),
(163, 'users-permissions', 'auth', 'callback', 1, '', 2),
(164, 'users-permissions', 'auth', 'changepassword', 1, '', 2),
(165, 'users-permissions', 'auth', 'connect', 1, '', 2),
(166, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2),
(167, 'users-permissions', 'auth', 'register', 1, '', 2),
(168, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2),
(169, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2),
(170, 'users-permissions', 'user', 'find', 0, '', 2),
(171, 'users-permissions', 'user', 'me', 1, '', 2),
(172, 'users-permissions', 'user', 'findone', 0, '', 2),
(173, 'users-permissions', 'user', 'create', 0, '', 2),
(174, 'users-permissions', 'user', 'update', 0, '', 2),
(175, 'users-permissions', 'user', 'destroy', 0, '', 2),
(176, 'users-permissions', 'user', 'destroyall', 0, '', 2),
(177, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2),
(178, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 2),
(179, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2),
(180, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2),
(181, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2),
(182, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2),
(183, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2),
(184, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2),
(185, 'users-permissions', 'userspermissions', 'index', 0, '', 2),
(186, 'users-permissions', 'userspermissions', 'init', 1, '', 2),
(187, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2),
(188, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2),
(189, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2),
(190, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2),
(191, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2),
(192, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2),
(193, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2),
(194, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
CREATE TABLE IF NOT EXISTS `users-permissions_role` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated'),
(2, 'Public', 'Default role given to unauthenticated user.', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
CREATE TABLE IF NOT EXISTS `users-permissions_user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
