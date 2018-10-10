-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 10-Out-2018 às 18:01
-- Versão do servidor: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gcr`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_commentmeta`
--

DROP TABLE IF EXISTS `gcr_commentmeta`;
CREATE TABLE IF NOT EXISTS `gcr_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_comments`
--

DROP TABLE IF EXISTS `gcr_comments`;
CREATE TABLE IF NOT EXISTS `gcr_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `gcr_comments`
--

INSERT INTO `gcr_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-29 20:18:57', '2018-09-29 23:18:57', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_links`
--

DROP TABLE IF EXISTS `gcr_links`;
CREATE TABLE IF NOT EXISTS `gcr_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_options`
--

DROP TABLE IF EXISTS `gcr_options`;
CREATE TABLE IF NOT EXISTS `gcr_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `gcr_options`
--

INSERT INTO `gcr_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://gcrlegalizacao.abc', 'yes'),
(2, 'home', 'http://gcrlegalizacao.abc', 'yes'),
(3, 'blogname', 'GCR', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rafael_citotame@hotmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:120:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"services/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"services/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"services/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"services/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"services/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"services/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"services/(.+?)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:27:\"services/(.+?)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:35:\"services/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:42:\"services/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:31:\"services/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:58:\"services_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?services_category=$matches[1]&feed=$matches[2]\";s:53:\"services_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?services_category=$matches[1]&feed=$matches[2]\";s:34:\"services_category/([^/]+)/embed/?$\";s:50:\"index.php?services_category=$matches[1]&embed=true\";s:46:\"services_category/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?services_category=$matches[1]&paged=$matches[2]\";s:28:\"services_category/([^/]+)/?$\";s:39:\"index.php?services_category=$matches[1]\";s:33:\"sliders/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"sliders/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"sliders/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"sliders/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"sliders/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"sliders/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"sliders/(.+?)/embed/?$\";s:40:\"index.php?sliders=$matches[1]&embed=true\";s:26:\"sliders/(.+?)/trackback/?$\";s:34:\"index.php?sliders=$matches[1]&tb=1\";s:34:\"sliders/(.+?)/page/?([0-9]{1,})/?$\";s:47:\"index.php?sliders=$matches[1]&paged=$matches[2]\";s:41:\"sliders/(.+?)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?sliders=$matches[1]&cpage=$matches[2]\";s:30:\"sliders/(.+?)(?:/([0-9]+))?/?$\";s:46:\"index.php?sliders=$matches[1]&page=$matches[2]\";s:57:\"sliders_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?sliders_category=$matches[1]&feed=$matches[2]\";s:52:\"sliders_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?sliders_category=$matches[1]&feed=$matches[2]\";s:33:\"sliders_category/([^/]+)/embed/?$\";s:49:\"index.php?sliders_category=$matches[1]&embed=true\";s:45:\"sliders_category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?sliders_category=$matches[1]&paged=$matches[2]\";s:27:\"sliders_category/([^/]+)/?$\";s:38:\"index.php?sliders_category=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'gcr', 'yes'),
(41, 'stylesheet', 'gcr', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '17', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'gcr_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pt_BR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1539195539;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1539213539;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1539213552;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1539280113;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1539194209;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(116, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1539194212;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1539194212;s:7:\"checked\";a:1:{s:3:\"gcr\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(125, 'can_compress_scripts', '0', 'no'),
(128, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538263161;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(129, 'current_theme', 'GCR', 'yes'),
(130, 'theme_mods_gcr', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(131, 'theme_switched', '', 'yes'),
(142, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(157, 'category_children', 'a:0:{}', 'yes'),
(159, 'sliders_category_children', 'a:0:{}', 'yes'),
(244, '_site_transient_timeout_theme_roots', '1539196011', 'no'),
(245, '_site_transient_theme_roots', 'a:1:{s:3:\"gcr\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_postmeta`
--

DROP TABLE IF EXISTS `gcr_postmeta`;
CREATE TABLE IF NOT EXISTS `gcr_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `gcr_postmeta`
--

INSERT INTO `gcr_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://gcrlegalizacao.abc/'),
(11, 5, '_menu_item_orphaned', '1538329278'),
(28, 9, '_edit_last', '1'),
(29, 9, '_edit_lock', '1538329583:1'),
(30, 11, '_edit_last', '1'),
(31, 11, '_edit_lock', '1538339612:1'),
(32, 13, '_edit_last', '1'),
(33, 13, '_edit_lock', '1538329729:1'),
(34, 15, '_edit_last', '1'),
(35, 15, '_edit_lock', '1538329736:1'),
(36, 17, '_edit_last', '1'),
(37, 17, '_edit_lock', '1538334380:1'),
(47, 20, '_menu_item_type', 'post_type'),
(48, 20, '_menu_item_menu_item_parent', '0'),
(49, 20, '_menu_item_object_id', '17'),
(50, 20, '_menu_item_object', 'page'),
(51, 20, '_menu_item_target', ''),
(52, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 20, '_menu_item_xfn', ''),
(54, 20, '_menu_item_url', ''),
(56, 21, '_menu_item_type', 'post_type'),
(57, 21, '_menu_item_menu_item_parent', '0'),
(58, 21, '_menu_item_object_id', '15'),
(59, 21, '_menu_item_object', 'page'),
(60, 21, '_menu_item_target', ''),
(61, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 21, '_menu_item_xfn', ''),
(63, 21, '_menu_item_url', ''),
(65, 22, '_menu_item_type', 'post_type'),
(66, 22, '_menu_item_menu_item_parent', '0'),
(67, 22, '_menu_item_object_id', '9'),
(68, 22, '_menu_item_object', 'page'),
(69, 22, '_menu_item_target', ''),
(70, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 22, '_menu_item_xfn', ''),
(72, 22, '_menu_item_url', ''),
(73, 22, '_menu_item_orphaned', '1538330136'),
(74, 23, '_menu_item_type', 'post_type'),
(75, 23, '_menu_item_menu_item_parent', '0'),
(76, 23, '_menu_item_object_id', '11'),
(77, 23, '_menu_item_object', 'page'),
(78, 23, '_menu_item_target', ''),
(79, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 23, '_menu_item_xfn', ''),
(81, 23, '_menu_item_url', ''),
(83, 24, '_menu_item_type', 'post_type'),
(84, 24, '_menu_item_menu_item_parent', '0'),
(85, 24, '_menu_item_object_id', '13'),
(86, 24, '_menu_item_object', 'page'),
(87, 24, '_menu_item_target', ''),
(88, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 24, '_menu_item_xfn', ''),
(90, 24, '_menu_item_url', ''),
(92, 11, '_wp_page_template', 'templates/about.php'),
(93, 25, '_edit_last', '1'),
(94, 25, '_edit_lock', '1538762685:1'),
(98, 30, '_edit_last', '1'),
(99, 30, '_edit_lock', '1538762013:1'),
(113, 36, '_wp_trash_meta_status', 'publish'),
(114, 36, '_wp_trash_meta_time', '1538667030'),
(115, 37, '_edit_lock', '1538667128:1'),
(118, 39, '_wp_attached_file', '2018/10/cropped-logo-gcr.jpg'),
(119, 39, '_wp_attachment_context', 'custom-logo'),
(120, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"file\";s:28:\"2018/10/cropped-logo-gcr.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-logo-gcr-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-logo-gcr-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 37, '_wp_trash_meta_status', 'publish'),
(122, 37, '_wp_trash_meta_time', '1538667131'),
(123, 40, '_edit_lock', '1538667228:1'),
(124, 40, '_customize_restore_dismissed', '1'),
(125, 41, '_wp_trash_meta_status', 'publish'),
(126, 41, '_wp_trash_meta_time', '1538667258'),
(129, 43, '_wp_trash_meta_status', 'publish'),
(130, 43, '_wp_trash_meta_time', '1538667292'),
(131, 44, '_wp_attached_file', '2018/10/slider-1.jpg'),
(132, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2018/10/slider-1.jpg\";s:5:\"sizes\";a:3:{s:16:\"slider-fullwidth\";a:4:{s:4:\"file\";s:21:\"slider-1-1000x500.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"slider-squade\";a:4:{s:4:\"file\";s:20:\"slider-1-500x250.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"slider-carousel\";a:4:{s:4:\"file\";s:20:\"slider-1-200x100.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 30, '_thumbnail_id', '44'),
(137, 46, '_wp_attached_file', '2018/09/slider-2.jpg'),
(138, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2018/09/slider-2.jpg\";s:5:\"sizes\";a:3:{s:16:\"slider-fullwidth\";a:4:{s:4:\"file\";s:21:\"slider-2-1000x500.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"slider-squade\";a:4:{s:4:\"file\";s:20:\"slider-2-500x250.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"slider-carousel\";a:4:{s:4:\"file\";s:20:\"slider-2-200x100.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 25, '_thumbnail_id', '46'),
(140, 47, '_edit_last', '1'),
(141, 47, '_edit_lock', '1538763271:1'),
(142, 48, '_wp_attached_file', '2018/10/slider-3.jpg'),
(143, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2018/10/slider-3.jpg\";s:5:\"sizes\";a:3:{s:16:\"slider-fullwidth\";a:4:{s:4:\"file\";s:21:\"slider-3-1167x500.jpg\";s:5:\"width\";i:1167;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"slider-squade\";a:4:{s:4:\"file\";s:20:\"slider-3-500x214.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"slider-carousel\";a:4:{s:4:\"file\";s:20:\"slider-3-233x100.jpg\";s:5:\"width\";i:233;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 47, '_thumbnail_id', '48'),
(147, 51, '_edit_lock', '1538764662:1'),
(150, 51, '_customize_restore_dismissed', '1'),
(153, 54, '_wp_trash_meta_status', 'publish'),
(154, 54, '_wp_trash_meta_time', '1538764877'),
(157, 57, '_wp_attached_file', '2018/10/cropped-logo-gcr.png'),
(158, 57, '_wp_attachment_context', 'custom-logo'),
(159, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:28:\"2018/10/cropped-logo-gcr.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 58, '_wp_trash_meta_status', 'publish'),
(161, 58, '_wp_trash_meta_time', '1539032075'),
(162, 59, '_edit_lock', '1539032153:1'),
(165, 59, '_wp_trash_meta_status', 'publish'),
(166, 59, '_wp_trash_meta_time', '1539032165'),
(169, 62, '_wp_trash_meta_status', 'publish'),
(170, 62, '_wp_trash_meta_time', '1539093181'),
(171, 63, '_wp_trash_meta_status', 'publish'),
(172, 63, '_wp_trash_meta_time', '1539093780');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_posts`
--

DROP TABLE IF EXISTS `gcr_posts`;
CREATE TABLE IF NOT EXISTS `gcr_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `gcr_posts`
--

INSERT INTO `gcr_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-29 20:18:57', '2018-09-29 23:18:57', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2018-09-29 20:18:57', '2018-09-29 23:18:57', '', 0, 'http://gcrlegalizacao.abc/?p=1', 0, 'post', '', 1),
(5, 1, '2018-09-30 14:41:17', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-30 14:41:17', '0000-00-00 00:00:00', '', 0, 'http://gcrlegalizacao.abc/?p=5', 1, 'nav_menu_item', '', 0),
(9, 1, '2018-09-30 14:48:46', '2018-09-30 17:48:46', '', 'Pagina Inicial', '', 'publish', 'closed', 'closed', '', 'pagina-inicial', '', '', '2018-09-30 14:48:46', '2018-09-30 17:48:46', '', 0, 'http://gcrlegalizacao.abc/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-09-30 14:48:46', '2018-09-30 17:48:46', '', 'Pagina Inicial', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-09-30 14:48:46', '2018-09-30 17:48:46', '', 9, 'http://gcrlegalizacao.abc/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-09-30 14:51:02', '2018-09-30 17:51:02', '', 'Quem Somos', '', 'publish', 'closed', 'closed', '', 'quem-somos', '', '', '2018-09-30 16:08:55', '2018-09-30 19:08:55', '', 0, 'http://gcrlegalizacao.abc/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-09-30 14:51:02', '2018-09-30 17:51:02', '', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-09-30 14:51:02', '2018-09-30 17:51:02', '', 11, 'http://gcrlegalizacao.abc/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-09-30 14:51:12', '2018-09-30 17:51:12', '', 'Serviços', '', 'publish', 'closed', 'closed', '', 'servicos', '', '', '2018-09-30 14:51:12', '2018-09-30 17:51:12', '', 0, 'http://gcrlegalizacao.abc/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-09-30 14:51:12', '2018-09-30 17:51:12', '', 'Serviços', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-09-30 14:51:12', '2018-09-30 17:51:12', '', 13, 'http://gcrlegalizacao.abc/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-09-30 14:51:19', '2018-09-30 17:51:19', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2018-09-30 14:51:19', '2018-09-30 17:51:19', '', 0, 'http://gcrlegalizacao.abc/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-09-30 14:51:19', '2018-09-30 17:51:19', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-09-30 14:51:19', '2018-09-30 17:51:19', '', 15, 'http://gcrlegalizacao.abc/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-09-30 14:51:27', '2018-09-30 17:51:27', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-09-30 14:51:27', '2018-09-30 17:51:27', '', 0, 'http://gcrlegalizacao.abc/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-09-30 14:51:27', '2018-09-30 17:51:27', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-30 14:51:27', '2018-09-30 17:51:27', '', 17, 'http://gcrlegalizacao.abc/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-09-30 14:56:36', '2018-09-30 17:56:36', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-10-08 10:18:21', '2018-10-08 13:18:21', '', 0, 'http://gcrlegalizacao.abc/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2018-09-30 14:56:36', '2018-09-30 17:56:36', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-10-08 10:18:21', '2018-10-08 13:18:21', '', 0, 'http://gcrlegalizacao.abc/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2018-09-30 14:55:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-30 14:55:35', '0000-00-00 00:00:00', '', 0, 'http://gcrlegalizacao.abc/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2018-09-30 14:56:35', '2018-09-30 17:56:35', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-10-08 10:18:20', '2018-10-08 13:18:20', '', 0, 'http://gcrlegalizacao.abc/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-09-30 14:56:36', '2018-09-30 17:56:36', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-10-08 10:18:21', '2018-10-08 13:18:21', '', 0, 'http://gcrlegalizacao.abc/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2018-09-30 18:21:30', '2018-09-30 21:21:30', '<h2>First Slider</h2>\r\nDefine more sliders\r\n\r\n<a href=\"http://gcrlegalizacao.abc/blog/\">Visit Blog</a>', 'first', '', 'publish', 'closed', 'closed', '', 'first', '', '', '2018-10-05 15:05:20', '2018-10-05 18:05:20', '', 0, 'http://gcrlegalizacao.abc/?post_type=sliders&#038;p=25', 0, 'sliders', '', 0),
(29, 1, '2018-09-30 18:33:54', '2018-09-30 21:33:54', '<h2>First Slider</h2>\nDefine more sliders\n\n&nbsp;', 'first', '', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2018-09-30 18:33:54', '2018-09-30 21:33:54', '', 25, 'http://gcrlegalizacao.abc/25-autosave-v1/', 0, 'revision', '', 0),
(30, 1, '2018-10-02 14:46:04', '2018-10-02 17:46:04', 'secund test\r\n\r\n<a href=\"http://gcrlegalizacao.abc/quem-somos/\">Visit outer link</a>', 'secund', '', 'publish', 'closed', 'closed', '', 'secund', '', '', '2018-10-05 14:55:51', '2018-10-05 17:55:51', '', 0, 'http://gcrlegalizacao.abc/?post_type=sliders&#038;p=30', 0, 'sliders', '', 0),
(36, 1, '2018-10-04 12:30:30', '2018-10-04 15:30:30', '{\n    \"gcr::custom_logo\": {\n        \"value\": 35,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-04 15:30:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3ea33557-65d0-4efd-aeb6-e670867623c7', '', '', '2018-10-04 12:30:30', '2018-10-04 15:30:30', '', 0, 'http://gcrlegalizacao.abc/3ea33557-65d0-4efd-aeb6-e670867623c7/', 0, 'customize_changeset', '', 0),
(37, 1, '2018-10-04 12:32:11', '2018-10-04 15:32:11', '{\n    \"gcr::custom_logo\": {\n        \"value\": 39,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-04 15:32:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8853b72a-eb8a-4589-bd79-7d432774a968', '', '', '2018-10-04 12:32:11', '2018-10-04 15:32:11', '', 0, 'http://gcrlegalizacao.abc/?p=37', 0, 'customize_changeset', '', 0),
(39, 1, '2018-10-04 12:32:01', '2018-10-04 15:32:01', 'http://gcrlegalizacao.abc/wp-content/uploads/2018/10/cropped-logo-gcr.jpg', 'cropped-logo-gcr.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-gcr-jpg', '', '', '2018-10-04 12:32:01', '2018-10-04 15:32:01', '', 0, 'http://gcrlegalizacao.abc/wp-content/uploads/2018/10/cropped-logo-gcr.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-10-04 12:33:48', '0000-00-00 00:00:00', '{\n    \"gcr::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-04 15:33:48\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'd8f4598e-a683-43ed-82ff-c5e57a5ec1b5', '', '', '2018-10-04 12:33:48', '0000-00-00 00:00:00', '', 0, 'http://gcrlegalizacao.abc/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2018-10-04 12:34:18', '2018-10-04 15:34:18', '{\n    \"gcr::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-04 15:34:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd68f005-2bb6-44f2-9d41-377995efc9cd', '', '', '2018-10-04 12:34:18', '2018-10-04 15:34:18', '', 0, 'http://gcrlegalizacao.abc/bd68f005-2bb6-44f2-9d41-377995efc9cd/', 0, 'customize_changeset', '', 0),
(43, 1, '2018-10-04 12:34:52', '2018-10-04 15:34:52', '{\n    \"gcr::custom_logo\": {\n        \"value\": 42,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-04 15:34:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd36f7e2f-7f03-43a9-86de-e7fb0473300c', '', '', '2018-10-04 12:34:52', '2018-10-04 15:34:52', '', 0, 'http://gcrlegalizacao.abc/d36f7e2f-7f03-43a9-86de-e7fb0473300c/', 0, 'customize_changeset', '', 0),
(44, 1, '2018-10-05 14:55:47', '2018-10-05 17:55:47', '', 'slider-1', '', 'inherit', 'open', 'closed', '', 'slider-1', '', '', '2018-10-05 14:55:47', '2018-10-05 17:55:47', '', 30, 'http://gcrlegalizacao.abc/wp-content/uploads/2018/10/slider-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-10-05 15:02:38', '2018-10-05 18:02:38', '', 'slider-2', '', 'inherit', 'open', 'closed', '', 'slider-2', '', '', '2018-10-05 15:02:38', '2018-10-05 18:02:38', '', 25, 'http://gcrlegalizacao.abc/wp-content/uploads/2018/09/slider-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-10-05 15:11:55', '2018-10-05 18:11:55', 'three', 'three', '', 'publish', 'closed', 'closed', '', 'three', '', '', '2018-10-05 15:11:55', '2018-10-05 18:11:55', '', 0, 'http://gcrlegalizacao.abc/?post_type=sliders&#038;p=47', 0, 'sliders', '', 0),
(48, 1, '2018-10-05 15:10:39', '2018-10-05 18:10:39', '', 'slider-3', '', 'inherit', 'open', 'closed', '', 'slider-3', '', '', '2018-10-05 15:10:39', '2018-10-05 18:10:39', '', 47, 'http://gcrlegalizacao.abc/wp-content/uploads/2018/10/slider-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-10-05 15:11:16', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-05 15:11:16', '0000-00-00 00:00:00', '', 0, 'http://gcrlegalizacao.abc/?post_type=sliders&p=49', 0, 'sliders', '', 0),
(51, 1, '2018-10-05 15:35:51', '0000-00-00 00:00:00', '{\n    \"gcr::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-05 18:35:51\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '649338c7-ec04-44d0-8079-bf3b9ea2bc5f', '', '', '2018-10-05 15:35:51', '0000-00-00 00:00:00', '', 0, 'http://gcrlegalizacao.abc/?p=51', 0, 'customize_changeset', '', 0),
(54, 1, '2018-10-05 15:41:17', '2018-10-05 18:41:17', '{\n    \"gcr::custom_logo\": {\n        \"value\": 53,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-05 18:41:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1bc90d70-dcc3-4f65-a198-826f4c7872eb', '', '', '2018-10-05 15:41:17', '2018-10-05 18:41:17', '', 0, 'http://gcrlegalizacao.abc/1bc90d70-dcc3-4f65-a198-826f4c7872eb/', 0, 'customize_changeset', '', 0),
(55, 1, '2018-10-08 10:15:43', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 10:15:43', '0000-00-00 00:00:00', '', 0, 'http://gcrlegalizacao.abc/?p=55', 0, 'post', '', 0),
(57, 1, '2018-10-08 17:54:29', '2018-10-08 20:54:29', 'http://gcrlegalizacao.abc/wp-content/uploads/2018/10/cropped-logo-gcr.png', 'cropped-logo-gcr.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-gcr-png', '', '', '2018-10-08 17:54:29', '2018-10-08 20:54:29', '', 0, 'http://gcrlegalizacao.abc/wp-content/uploads/2018/10/cropped-logo-gcr.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2018-10-08 17:54:35', '2018-10-08 20:54:35', '{\n    \"gcr::custom_logo\": {\n        \"value\": 57,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-08 20:54:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f5151daf-8978-49c1-af5e-c00758d63055', '', '', '2018-10-08 17:54:35', '2018-10-08 20:54:35', '', 0, 'http://gcrlegalizacao.abc/f5151daf-8978-49c1-af5e-c00758d63055/', 0, 'customize_changeset', '', 0),
(59, 1, '2018-10-08 17:56:05', '2018-10-08 20:56:05', '{\n    \"gcr::custom_logo\": {\n        \"value\": 60,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-08 20:56:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5123b329-c075-40b8-9d2b-0c8aec5c3fe3', '', '', '2018-10-08 17:56:05', '2018-10-08 20:56:05', '', 0, 'http://gcrlegalizacao.abc/?p=59', 0, 'customize_changeset', '', 0),
(62, 1, '2018-10-09 10:53:00', '2018-10-09 13:53:00', '{\n    \"gcr::custom_logo\": {\n        \"value\": 61,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-09 13:53:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c50fb240-1f96-414a-85cc-8bbaee23f084', '', '', '2018-10-09 10:53:00', '2018-10-09 13:53:00', '', 0, 'http://gcrlegalizacao.abc/c50fb240-1f96-414a-85cc-8bbaee23f084/', 0, 'customize_changeset', '', 0),
(63, 1, '2018-10-09 11:02:59', '2018-10-09 14:02:59', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-09 14:02:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9848c430-00e3-46d5-bf39-3af3e4bed2d1', '', '', '2018-10-09 11:02:59', '2018-10-09 14:02:59', '', 0, 'http://gcrlegalizacao.abc/9848c430-00e3-46d5-bf39-3af3e4bed2d1/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_termmeta`
--

DROP TABLE IF EXISTS `gcr_termmeta`;
CREATE TABLE IF NOT EXISTS `gcr_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_terms`
--

DROP TABLE IF EXISTS `gcr_terms`;
CREATE TABLE IF NOT EXISTS `gcr_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `gcr_terms`
--

INSERT INTO `gcr_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Menu Principal', 'menu-principal', 0),
(4, 'Home', 'home', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_term_relationships`
--

DROP TABLE IF EXISTS `gcr_term_relationships`;
CREATE TABLE IF NOT EXISTS `gcr_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `gcr_term_relationships`
--

INSERT INTO `gcr_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 2, 0),
(21, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 4, 0),
(30, 4, 0),
(47, 4, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_term_taxonomy`
--

DROP TABLE IF EXISTS `gcr_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `gcr_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `gcr_term_taxonomy`
--

INSERT INTO `gcr_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(4, 4, 'sliders_category', '', 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_usermeta`
--

DROP TABLE IF EXISTS `gcr_usermeta`;
CREATE TABLE IF NOT EXISTS `gcr_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `gcr_usermeta`
--

INSERT INTO `gcr_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'gcr'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'gcr_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'gcr_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"d9476f340718dad6cf34f9cf8be522ce3bf381611d8e20033ec41ef810107186\";a:4:{s:10:\"expiration\";i:1539537975;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 Safari/537.36\";s:5:\"login\";i:1538328375;}s:64:\"bcff9ba425433012a950afe93b2b21e922e4f8bf0f5b454b382647ee1ea35a66\";a:4:{s:10:\"expiration\";i:1539177303;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539004503;}s:64:\"c21431d6a1bd386b5f33c8a8773cec09896422485c9f0e36cf32dc152944843f\";a:4:{s:10:\"expiration\";i:1539177342;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539004542;}s:64:\"afabf7ea69f5071133852fcfaa85effab374f0eacb687ff4781a97cb41bc24db\";a:4:{s:10:\"expiration\";i:1539204818;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539032018;}s:64:\"0ca6e0c79e84f7ddc2aa0d50762945830594bc9b5cd35f501f17b79835bcac81\";a:4:{s:10:\"expiration\";i:1539265951;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539093151;}}'),
(17, 1, 'gcr_dashboard_quick_press_last_post_id', '55'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:22:\"add-post-type-services\";i:1;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'gcr_user-settings', 'libraryContent=browse'),
(23, 1, 'gcr_user-settings-time', '1538764683'),
(24, 1, 'closedpostboxes_sliders', 'a:0:{}'),
(25, 1, 'metaboxhidden_sliders', 'a:3:{i:0;s:11:\"postexcerpt\";i:1;s:10:\"postcustom\";i:2;s:7:\"slugdiv\";}'),
(26, 1, 'meta-box-order_sliders', 'a:3:{s:4:\"side\";s:42:\"submitdiv,sliders_categorydiv,postimagediv\";s:6:\"normal\";s:30:\"postexcerpt,postcustom,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(27, 1, 'screen_layout_sliders', '2'),
(28, 1, 'show_try_gutenberg_panel', '0'),
(29, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:60:\"dashboard_quick_press,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:17:\"dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(30, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:18:\"dashboard_activity\";i:1;s:17:\"dashboard_primary\";}'),
(31, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:17:\"dashboard_primary\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gcr_users`
--

DROP TABLE IF EXISTS `gcr_users`;
CREATE TABLE IF NOT EXISTS `gcr_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `gcr_users`
--

INSERT INTO `gcr_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'gcr', '$P$B/UpendA706z.NyV3ucKlfJw1RHiL70', 'gcr', 'rafael_citotame@hotmail.com', '', '2018-09-29 23:18:56', '', 0, 'gcr');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
