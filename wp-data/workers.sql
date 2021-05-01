-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 01-Maio-2021 às 20:24
-- Versão do servidor: 8.0.18
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `workers`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-27 19:42:24', '2021-04-27 22:42:24', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_gf_draft_submissions`
--

CREATE TABLE `wp_gf_draft_submissions` (
  `uuid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_gf_entry`
--

CREATE TABLE `wp_gf_entry` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_gf_entry_meta`
--

CREATE TABLE `wp_gf_entry_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_gf_entry_notes`
--

CREATE TABLE `wp_gf_entry_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sub_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_gf_form`
--

CREATE TABLE `wp_gf_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_gf_form_meta`
--

CREATE TABLE `wp_gf_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_gf_form_view`
--

CREATE TABLE `wp_gf_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/workers', 'yes'),
(2, 'home', 'http://localhost/workers', 'yes'),
(3, 'blogname', 'Workers', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'eduardo.gmfonseca@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
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
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:53:\"mousewheel-smooth-scroll/mousewheel-smooth-scroll.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wordeddy', 'yes'),
(41, 'stylesheet', 'wordeddy', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1635115334', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'pt_BR', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:7:{i:1619901747;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1619908946;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619908947;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619908974;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619908977;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1620254546;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_gform_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(126, 'gform_version_info', 'a:6:{s:12:\"is_valid_key\";s:1:\"0\";s:15:\"expiration_time\";i:0;s:7:\"version\";s:5:\"1.7.9\";s:3:\"url\";s:0:\"\";s:9:\"offerings\";a:0:{}s:9:\"timestamp\";i:1619563353;}', 'yes'),
(133, 'gf_db_version', '2.3.3.10', 'yes'),
(134, 'rg_form_version', '2.3.3.10', 'yes'),
(135, 'acf_version', '5.7.6', 'yes'),
(136, '_site_transient_timeout_browser_3651f072395347537c74089989c88a66', '1620168175', 'no'),
(137, '_site_transient_browser_3651f072395347537c74089989c88a66', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.93\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(138, '_site_transient_timeout_php_check_a4e7a3af7060c530d791075f6e3eb5fa', '1620168176', 'no'),
(139, '_site_transient_php_check_a4e7a3af7060c530d791075f6e3eb5fa', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(140, 'gform_enable_background_updates', '1', 'yes'),
(141, 'gform_pending_installation', '1', 'yes'),
(147, 'can_compress_scripts', '1', 'no'),
(158, 'theme_mods_twentytwentyone', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619563401;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(159, 'current_theme', 'Word Eddy', 'yes'),
(160, 'theme_mods_wordeddy', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(161, 'theme_switched', '', 'yes'),
(164, 'finished_updating_comment_type', '1', 'yes'),
(165, 'recently_activated', 'a:0:{}', 'yes'),
(169, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1619893247;s:15:\"version_checked\";s:5:\"5.7.1\";s:12:\"translations\";a:0:{}}', 'no'),
(171, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619893251;s:7:\"checked\";a:1:{s:8:\"wordeddy\";s:1:\"1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(172, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1619893251;s:7:\"checked\";a:2:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:53:\"mousewheel-smooth-scroll/mousewheel-smooth-scroll.php\";s:3:\"5.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"mousewheel-smooth-scroll/mousewheel-smooth-scroll.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/mousewheel-smooth-scroll\";s:4:\"slug\";s:24:\"mousewheel-smooth-scroll\";s:6:\"plugin\";s:53:\"mousewheel-smooth-scroll/mousewheel-smooth-scroll.php\";s:11:\"new_version\";s:3:\"5.6\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/mousewheel-smooth-scroll/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/mousewheel-smooth-scroll.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/mousewheel-smooth-scroll/assets/icon-256x256.png?rev=1063217\";s:2:\"1x\";s:77:\"https://ps.w.org/mousewheel-smooth-scroll/assets/icon-128x128.png?rev=1063217\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/mousewheel-smooth-scroll/assets/banner-772x250.jpg?rev=1063217\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(173, 'wpmss_settings', 'a:1:{s:7:\"general\";a:4:{s:9:\"timestamp\";i:1619563873;s:14:\"pulseAlgorithm\";i:1;s:15:\"keyboardSupport\";i:1;s:15:\"fixedBackground\";i:1;}}', 'yes'),
(176, 'new_admin_email', 'eduardo.gmfonseca@gmail.com', 'yes'),
(183, 'options_favicon', '21', 'no'),
(184, '_options_favicon', 'field_60889d536c2be', 'no'),
(185, 'options_logotipo', '20', 'no'),
(186, '_options_logotipo', 'field_60889d7df3b77', 'no'),
(194, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"8\",\"critical\":\"0\"}', 'yes'),
(200, '_site_transient_timeout_theme_roots', '1619895050', 'no'),
(201, '_site_transient_theme_roots', 'a:1:{s:8:\"wordeddy\";s:7:\"/themes\";}', 'no'),
(202, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1619937066', 'no'),
(203, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Demo + Discussion group: Creating and Registering Block Patterns\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/277669500/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-05-04 07:00:00\";s:8:\"end_date\";s:19:\"2021-05-04 08:00:00\";s:20:\"start_unix_timestamp\";i:1620136800;s:18:\"end_unix_timestamp\";i:1620140400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297003;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:18:\"WordCamp Venezuela\";s:3:\"url\";s:36:\"https://venezuela.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-05-06 16:00:00\";s:8:\"end_date\";s:19:\"2021-05-07 00:00:00\";s:20:\"start_unix_timestamp\";i:1620331200;s:18:\"end_unix_timestamp\";i:1620360000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"VE\";s:8:\"latitude\";d:10.4805937;s:9:\"longitude\";d:-66.903606300000007;}}}}', 'no'),
(204, 'options_logotipo_secundaria', '46', 'no'),
(205, '_options_logotipo_secundaria', 'field_608d9dbbf6344', 'no'),
(207, 'category_children', 'a:0:{}', 'yes'),
(208, 'options_endereco', 'Av. Rep. Argentina, 1505, Água Verde\r\nCuritiba -PR, 80620-010', 'no'),
(209, '_options_endereco', 'field_608dabc27c82e', 'no'),
(210, 'options_e-mail', 'contato@weareworkers.com.br', 'no'),
(211, '_options_e-mail', 'field_608daba97c82d', 'no'),
(212, 'options_whatsapp', '99999-9999', 'no'),
(213, '_options_whatsapp', 'field_608dabe77c82f', 'no'),
(214, 'options_redes_sociais_0_rede_soccial', 'linkedin', 'no'),
(215, '_options_redes_sociais_0_rede_soccial', 'field_608dac217c832', 'no'),
(216, 'options_redes_sociais_0_link', 'https://www.linkedin.com/', 'no'),
(217, '_options_redes_sociais_0_link', 'field_608dac107c831', 'no'),
(218, 'options_redes_sociais_1_rede_soccial', 'facebook', 'no'),
(219, '_options_redes_sociais_1_rede_soccial', 'field_608dac217c832', 'no'),
(220, 'options_redes_sociais_1_link', 'https://www.facebook.com/', 'no'),
(221, '_options_redes_sociais_1_link', 'field_608dac107c831', 'no'),
(222, 'options_redes_sociais_2_rede_soccial', 'instagram', 'no'),
(223, '_options_redes_sociais_2_rede_soccial', 'field_608dac217c832', 'no'),
(224, 'options_redes_sociais_2_link', 'https://www.instagram.com/', 'no'),
(225, '_options_redes_sociais_2_link', 'field_608dac107c831', 'no'),
(226, 'options_redes_sociais_3_rede_soccial', 'vimeo', 'no'),
(227, '_options_redes_sociais_3_rede_soccial', 'field_608dac217c832', 'no'),
(228, 'options_redes_sociais_3_link', 'https://vimeo.com/', 'no'),
(229, '_options_redes_sociais_3_link', 'field_608dac107c831', 'no'),
(230, 'options_redes_sociais', '4', 'no'),
(231, '_options_redes_sociais', 'field_608dac057c830', 'no'),
(233, 'options_icone_whatsapp', '81', 'no'),
(234, '_options_icone_whatsapp', 'field_608db17739a3d', 'no'),
(235, 'options_redes_sociais_0_rede_social', 'linkedin-in', 'no'),
(236, '_options_redes_sociais_0_rede_social', 'field_608dac217c832', 'no'),
(237, 'options_redes_sociais_1_rede_social', 'facebook-f', 'no'),
(238, '_options_redes_sociais_1_rede_social', 'field_608dac217c832', 'no'),
(239, 'options_redes_sociais_2_rede_social', 'instagram', 'no'),
(240, '_options_redes_sociais_2_rede_social', 'field_608dac217c832', 'no'),
(241, 'options_redes_sociais_3_rede_social', 'vimeo-v', 'no'),
(242, '_options_redes_sociais_3_rede_social', 'field_608dac217c832', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1619563824'),
(5, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(6, 3, '_wp_trash_meta_status', 'draft'),
(7, 3, '_wp_trash_meta_time', '1619563826'),
(8, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(9, 7, '_edit_lock', '1619563691:1'),
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1619896526:1'),
(12, 8, '_wp_page_template', 'default'),
(13, 10, '_edit_last', '1'),
(14, 10, '_edit_lock', '1619899066:1'),
(15, 13, '_wp_attached_file', '2021/04/Apresentacao-Predios-Sao-Paulo-1.mp4'),
(16, 13, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:5157334;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:60;s:16:\"length_formatted\";s:4:\"1:00\";s:5:\"width\";i:720;s:6:\"height\";i:480;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1619564505;}'),
(17, 8, 'banner', '13'),
(18, 8, '_banner', 'field_608895f4efb39'),
(19, 8, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(20, 8, '_titulo_banner', 'field_608896a8efb3a'),
(21, 14, 'banner', '13'),
(22, 14, '_banner', 'field_608895f4efb39'),
(23, 14, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(24, 14, '_titulo_banner', 'field_608896a8efb3a'),
(25, 8, 'video_banner', '13'),
(26, 8, '_video_banner', 'field_608895f4efb39'),
(27, 15, 'banner', '13'),
(28, 15, '_banner', 'field_608895f4efb39'),
(29, 15, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(30, 15, '_titulo_banner', 'field_608896a8efb3a'),
(31, 15, 'video_banner', '13'),
(32, 15, '_video_banner', 'field_608895f4efb39'),
(33, 16, '_edit_last', '1'),
(34, 16, '_edit_lock', '1619899446:1'),
(35, 20, '_wp_attached_file', '2021/04/Untitled-2.png'),
(36, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:138;s:6:\"height\";i:29;s:4:\"file\";s:22:\"2021/04/Untitled-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 21, '_wp_attached_file', '2021/04/asdasd1.png'),
(38, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:21;s:6:\"height\";i:29;s:4:\"file\";s:19:\"2021/04/asdasd1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 29, '_wp_attached_file', '2021/04/Screenshot_1.png'),
(40, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:797;s:6:\"height\";i:849;s:4:\"file\";s:24:\"2021/04/Screenshot_1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot_1-282x300.png\";s:5:\"width\";i:282;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Screenshot_1-768x818.png\";s:5:\"width\";i:768;s:6:\"height\";i:818;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 30, '_wp_attached_file', '2021/04/Screenshot_2.png'),
(42, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:804;s:6:\"height\";i:845;s:4:\"file\";s:24:\"2021/04/Screenshot_2.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Screenshot_2-285x300.png\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Screenshot_2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Screenshot_2-768x807.png\";s:5:\"width\";i:768;s:6:\"height\";i:807;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 8, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(44, 8, '_titulo_contruir', 'field_6089e2052474d'),
(45, 8, 'titulo_video_1', 'Case Festval'),
(46, 8, '_titulo_video_1', 'field_6089e21d2474e'),
(47, 8, 'titulo_video_2', 'Case Berneck'),
(48, 8, '_titulo_video_2', 'field_6089e2342474f'),
(49, 8, 'video_contruir_1', '29'),
(50, 8, '_video_contruir_1', 'field_6089e24a24750'),
(51, 8, 'video_construir_2', '30'),
(52, 8, '_video_construir_2', 'field_6089e25c24751'),
(53, 31, 'banner', '13'),
(54, 31, '_banner', 'field_608895f4efb39'),
(55, 31, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(56, 31, '_titulo_banner', 'field_608896a8efb3a'),
(57, 31, 'video_banner', '13'),
(58, 31, '_video_banner', 'field_608895f4efb39'),
(59, 31, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(60, 31, '_titulo_contruir', 'field_6089e2052474d'),
(61, 31, 'titulo_video_1', 'Case Festval'),
(62, 31, '_titulo_video_1', 'field_6089e21d2474e'),
(63, 31, 'titulo_video_2', 'Case Berneck'),
(64, 31, '_titulo_video_2', 'field_6089e2342474f'),
(65, 31, 'video_contruir_1', '29'),
(66, 31, '_video_contruir_1', 'field_6089e24a24750'),
(67, 31, 'video_construir_2', '30'),
(68, 31, '_video_construir_2', 'field_6089e25c24751'),
(69, 8, 'video_construir_1', '29'),
(70, 8, '_video_construir_1', 'field_6089e24a24750'),
(71, 32, 'banner', '13'),
(72, 32, '_banner', 'field_608895f4efb39'),
(73, 32, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(74, 32, '_titulo_banner', 'field_608896a8efb3a'),
(75, 32, 'video_banner', '13'),
(76, 32, '_video_banner', 'field_608895f4efb39'),
(77, 32, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(78, 32, '_titulo_contruir', 'field_6089e2052474d'),
(79, 32, 'titulo_video_1', 'Case Festval'),
(80, 32, '_titulo_video_1', 'field_6089e21d2474e'),
(81, 32, 'titulo_video_2', 'Case Berneck'),
(82, 32, '_titulo_video_2', 'field_6089e2342474f'),
(83, 32, 'video_contruir_1', '29'),
(84, 32, '_video_contruir_1', 'field_6089e24a24750'),
(85, 32, 'video_construir_2', '30'),
(86, 32, '_video_construir_2', 'field_6089e25c24751'),
(87, 32, 'video_construir_1', '29'),
(88, 32, '_video_construir_1', 'field_6089e24a24750'),
(89, 41, '_wp_attached_file', '2021/04/Untitled-2-1.png'),
(90, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:374;s:6:\"height\";i:344;s:4:\"file\";s:24:\"2021/04/Untitled-2-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Untitled-2-1-300x276.png\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Untitled-2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 42, '_wp_attached_file', '2021/04/Untitled-3.png'),
(92, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:368;s:6:\"height\";i:344;s:4:\"file\";s:22:\"2021/04/Untitled-3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Untitled-3-300x280.png\";s:5:\"width\";i:300;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Untitled-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 43, '_wp_attached_file', '2021/04/Untitled-4.png'),
(94, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:373;s:6:\"height\";i:344;s:4:\"file\";s:22:\"2021/04/Untitled-4.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Untitled-4-300x277.png\";s:5:\"width\";i:300;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Untitled-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 8, 'titulo_segunda _sessao', 'CONSTRUIR\r\nMARCAS.'),
(96, 8, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(97, 8, 'titulo_terceira_sessao', 'INTEGRAR PRODUTO,\r\nPONTO DE VENDA E\r\nCOMUNICAÇÃO.'),
(98, 8, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(99, 8, 'titulo_produto_1', 'Produto'),
(100, 8, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(101, 8, 'titulo_produto_2', 'Ponto de Venda'),
(102, 8, '_titulo_produto_2', 'field_6089f304f4a90'),
(103, 8, 'titulo_produto_3', 'Comunicação'),
(104, 8, '_titulo_produto_3', 'field_6089f30ef4a91'),
(105, 8, 'video_produto_1', '41'),
(106, 8, '_video_produto_1', 'field_6089f319f4a92'),
(107, 8, 'video_produto_2', '42'),
(108, 8, '_video_produto_2', 'field_6089f32cf4a93'),
(109, 8, 'video_produto_3', '43'),
(110, 8, '_video_produto_3', 'field_6089f336f4a94'),
(111, 44, 'banner', '13'),
(112, 44, '_banner', 'field_608895f4efb39'),
(113, 44, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(114, 44, '_titulo_banner', 'field_608896a8efb3a'),
(115, 44, 'video_banner', '13'),
(116, 44, '_video_banner', 'field_608895f4efb39'),
(117, 44, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(118, 44, '_titulo_contruir', 'field_6089e2052474d'),
(119, 44, 'titulo_video_1', 'Case Festval'),
(120, 44, '_titulo_video_1', 'field_6089e21d2474e'),
(121, 44, 'titulo_video_2', 'Case Berneck'),
(122, 44, '_titulo_video_2', 'field_6089e2342474f'),
(123, 44, 'video_contruir_1', '29'),
(124, 44, '_video_contruir_1', 'field_6089e24a24750'),
(125, 44, 'video_construir_2', '30'),
(126, 44, '_video_construir_2', 'field_6089e25c24751'),
(127, 44, 'video_construir_1', '29'),
(128, 44, '_video_construir_1', 'field_6089e24a24750'),
(129, 44, 'titulo_segunda _sessao', ''),
(130, 44, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(131, 44, 'titulo_terceira_sessao', 'Integrar produto,\r\nponto de venda e\r\ncomunicação.'),
(132, 44, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(133, 44, 'titulo_produto_1', 'Produto'),
(134, 44, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(135, 44, 'titulo_produto_2', 'Ponto de Venda'),
(136, 44, '_titulo_produto_2', 'field_6089f304f4a90'),
(137, 44, 'titulo_produto_3', 'Comunicação'),
(138, 44, '_titulo_produto_3', 'field_6089f30ef4a91'),
(139, 44, 'video_produto_1', '41'),
(140, 44, '_video_produto_1', 'field_6089f319f4a92'),
(141, 44, 'video_produto_2', '42'),
(142, 44, '_video_produto_2', 'field_6089f32cf4a93'),
(143, 44, 'video_produto_3', '43'),
(144, 44, '_video_produto_3', 'field_6089f336f4a94'),
(145, 46, '_wp_attached_file', '2021/05/Untitled-2.png'),
(146, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:138;s:6:\"height\";i:29;s:4:\"file\";s:22:\"2021/05/Untitled-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 8, 'texto_terceira_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(148, 8, '_texto_terceira_sessao', 'field_608d9eba5d9f6'),
(149, 49, 'banner', '13'),
(150, 49, '_banner', 'field_608895f4efb39'),
(151, 49, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(152, 49, '_titulo_banner', 'field_608896a8efb3a'),
(153, 49, 'video_banner', '13'),
(154, 49, '_video_banner', 'field_608895f4efb39'),
(155, 49, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(156, 49, '_titulo_contruir', 'field_6089e2052474d'),
(157, 49, 'titulo_video_1', 'Case Festval'),
(158, 49, '_titulo_video_1', 'field_6089e21d2474e'),
(159, 49, 'titulo_video_2', 'Case Berneck'),
(160, 49, '_titulo_video_2', 'field_6089e2342474f'),
(161, 49, 'video_contruir_1', '29'),
(162, 49, '_video_contruir_1', 'field_6089e24a24750'),
(163, 49, 'video_construir_2', '30'),
(164, 49, '_video_construir_2', 'field_6089e25c24751'),
(165, 49, 'video_construir_1', '29'),
(166, 49, '_video_construir_1', 'field_6089e24a24750'),
(167, 49, 'titulo_segunda _sessao', ''),
(168, 49, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(169, 49, 'titulo_terceira_sessao', 'Integrar produto,\r\nponto de venda e\r\ncomunicação.'),
(170, 49, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(171, 49, 'titulo_produto_1', 'Produto'),
(172, 49, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(173, 49, 'titulo_produto_2', 'Ponto de Venda'),
(174, 49, '_titulo_produto_2', 'field_6089f304f4a90'),
(175, 49, 'titulo_produto_3', 'Comunicação'),
(176, 49, '_titulo_produto_3', 'field_6089f30ef4a91'),
(177, 49, 'video_produto_1', '41'),
(178, 49, '_video_produto_1', 'field_6089f319f4a92'),
(179, 49, 'video_produto_2', '42'),
(180, 49, '_video_produto_2', 'field_6089f32cf4a93'),
(181, 49, 'video_produto_3', '43'),
(182, 49, '_video_produto_3', 'field_6089f336f4a94'),
(183, 49, 'texto_terceira_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(184, 49, '_texto_terceira_sessao', 'field_608d9eba5d9f6'),
(185, 8, 'video_quarta_sessao', '54'),
(186, 8, '_video_quarta_sessao', 'field_608da25989036'),
(187, 52, 'banner', '13'),
(188, 52, '_banner', 'field_608895f4efb39'),
(189, 52, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(190, 52, '_titulo_banner', 'field_608896a8efb3a'),
(191, 52, 'video_banner', '13'),
(192, 52, '_video_banner', 'field_608895f4efb39'),
(193, 52, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(194, 52, '_titulo_contruir', 'field_6089e2052474d'),
(195, 52, 'titulo_video_1', 'Case Festval'),
(196, 52, '_titulo_video_1', 'field_6089e21d2474e'),
(197, 52, 'titulo_video_2', 'Case Berneck'),
(198, 52, '_titulo_video_2', 'field_6089e2342474f'),
(199, 52, 'video_contruir_1', '29'),
(200, 52, '_video_contruir_1', 'field_6089e24a24750'),
(201, 52, 'video_construir_2', '30'),
(202, 52, '_video_construir_2', 'field_6089e25c24751'),
(203, 52, 'video_construir_1', '29'),
(204, 52, '_video_construir_1', 'field_6089e24a24750'),
(205, 52, 'titulo_segunda _sessao', 'CONSTRUIR\r\nMARCAS.'),
(206, 52, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(207, 52, 'titulo_terceira_sessao', 'Integrar produto,\r\nponto de venda e\r\ncomunicação.'),
(208, 52, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(209, 52, 'titulo_produto_1', 'Produto'),
(210, 52, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(211, 52, 'titulo_produto_2', 'Ponto de Venda'),
(212, 52, '_titulo_produto_2', 'field_6089f304f4a90'),
(213, 52, 'titulo_produto_3', 'Comunicação'),
(214, 52, '_titulo_produto_3', 'field_6089f30ef4a91'),
(215, 52, 'video_produto_1', '41'),
(216, 52, '_video_produto_1', 'field_6089f319f4a92'),
(217, 52, 'video_produto_2', '42'),
(218, 52, '_video_produto_2', 'field_6089f32cf4a93'),
(219, 52, 'video_produto_3', '43'),
(220, 52, '_video_produto_3', 'field_6089f336f4a94'),
(221, 52, 'texto_terceira_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(222, 52, '_texto_terceira_sessao', 'field_608d9eba5d9f6'),
(223, 52, 'video_quarta_sessao', ''),
(224, 52, '_video_quarta_sessao', 'field_608da25989036'),
(225, 53, 'banner', '13'),
(226, 53, '_banner', 'field_608895f4efb39'),
(227, 53, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(228, 53, '_titulo_banner', 'field_608896a8efb3a'),
(229, 53, 'video_banner', '13'),
(230, 53, '_video_banner', 'field_608895f4efb39'),
(231, 53, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(232, 53, '_titulo_contruir', 'field_6089e2052474d'),
(233, 53, 'titulo_video_1', 'Case Festval'),
(234, 53, '_titulo_video_1', 'field_6089e21d2474e'),
(235, 53, 'titulo_video_2', 'Case Berneck'),
(236, 53, '_titulo_video_2', 'field_6089e2342474f'),
(237, 53, 'video_contruir_1', '29'),
(238, 53, '_video_contruir_1', 'field_6089e24a24750'),
(239, 53, 'video_construir_2', '30'),
(240, 53, '_video_construir_2', 'field_6089e25c24751'),
(241, 53, 'video_construir_1', '29'),
(242, 53, '_video_construir_1', 'field_6089e24a24750'),
(243, 53, 'titulo_segunda _sessao', 'CONSTRUIR\r\nMARCAS.'),
(244, 53, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(245, 53, 'titulo_terceira_sessao', 'INTEGRAR PRODUTO,\r\nPONTO DE VENDA E\r\nCOMUNICAÇÃO.'),
(246, 53, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(247, 53, 'titulo_produto_1', 'Produto'),
(248, 53, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(249, 53, 'titulo_produto_2', 'Ponto de Venda'),
(250, 53, '_titulo_produto_2', 'field_6089f304f4a90'),
(251, 53, 'titulo_produto_3', 'Comunicação'),
(252, 53, '_titulo_produto_3', 'field_6089f30ef4a91'),
(253, 53, 'video_produto_1', '41'),
(254, 53, '_video_produto_1', 'field_6089f319f4a92'),
(255, 53, 'video_produto_2', '42'),
(256, 53, '_video_produto_2', 'field_6089f32cf4a93'),
(257, 53, 'video_produto_3', '43'),
(258, 53, '_video_produto_3', 'field_6089f336f4a94'),
(259, 53, 'texto_terceira_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(260, 53, '_texto_terceira_sessao', 'field_608d9eba5d9f6'),
(261, 53, 'video_quarta_sessao', ''),
(262, 53, '_video_quarta_sessao', 'field_608da25989036'),
(263, 54, '_wp_attached_file', '2021/05/Sem-Titulo-1.png'),
(264, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1363;s:6:\"height\";i:775;s:4:\"file\";s:24:\"2021/05/Sem-Titulo-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Sem-Titulo-1-300x171.png\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Sem-Titulo-1-1024x582.png\";s:5:\"width\";i:1024;s:6:\"height\";i:582;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Sem-Titulo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Sem-Titulo-1-768x437.png\";s:5:\"width\";i:768;s:6:\"height\";i:437;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(265, 55, 'banner', '13'),
(266, 55, '_banner', 'field_608895f4efb39'),
(267, 55, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(268, 55, '_titulo_banner', 'field_608896a8efb3a'),
(269, 55, 'video_banner', '13'),
(270, 55, '_video_banner', 'field_608895f4efb39'),
(271, 55, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(272, 55, '_titulo_contruir', 'field_6089e2052474d'),
(273, 55, 'titulo_video_1', 'Case Festval'),
(274, 55, '_titulo_video_1', 'field_6089e21d2474e'),
(275, 55, 'titulo_video_2', 'Case Berneck'),
(276, 55, '_titulo_video_2', 'field_6089e2342474f'),
(277, 55, 'video_contruir_1', '29'),
(278, 55, '_video_contruir_1', 'field_6089e24a24750'),
(279, 55, 'video_construir_2', '30'),
(280, 55, '_video_construir_2', 'field_6089e25c24751'),
(281, 55, 'video_construir_1', '29'),
(282, 55, '_video_construir_1', 'field_6089e24a24750'),
(283, 55, 'titulo_segunda _sessao', 'CONSTRUIR\r\nMARCAS.'),
(284, 55, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(285, 55, 'titulo_terceira_sessao', 'INTEGRAR PRODUTO,\r\nPONTO DE VENDA E\r\nCOMUNICAÇÃO.'),
(286, 55, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(287, 55, 'titulo_produto_1', 'Produto'),
(288, 55, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(289, 55, 'titulo_produto_2', 'Ponto de Venda'),
(290, 55, '_titulo_produto_2', 'field_6089f304f4a90'),
(291, 55, 'titulo_produto_3', 'Comunicação'),
(292, 55, '_titulo_produto_3', 'field_6089f30ef4a91'),
(293, 55, 'video_produto_1', '41'),
(294, 55, '_video_produto_1', 'field_6089f319f4a92'),
(295, 55, 'video_produto_2', '42'),
(296, 55, '_video_produto_2', 'field_6089f32cf4a93'),
(297, 55, 'video_produto_3', '43'),
(298, 55, '_video_produto_3', 'field_6089f336f4a94'),
(299, 55, 'texto_terceira_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(300, 55, '_texto_terceira_sessao', 'field_608d9eba5d9f6'),
(301, 55, 'video_quarta_sessao', '54'),
(302, 55, '_video_quarta_sessao', 'field_608da25989036'),
(303, 8, 'cases_segunda_sessao_0_titulo', 'Case Festval'),
(304, 8, '_cases_segunda_sessao_0_titulo', 'field_608da5888b6b1'),
(305, 8, 'cases_segunda_sessao_0_imagem', '29'),
(306, 8, '_cases_segunda_sessao_0_imagem', 'field_608da5958b6b2'),
(307, 8, 'cases_segunda_sessao_1_titulo', 'Case Berneck'),
(308, 8, '_cases_segunda_sessao_1_titulo', 'field_608da5888b6b1'),
(309, 8, 'cases_segunda_sessao_1_imagem', '30'),
(310, 8, '_cases_segunda_sessao_1_imagem', 'field_608da5958b6b2'),
(311, 8, 'cases_segunda_sessao', '2'),
(312, 8, '_cases_segunda_sessao', 'field_608da5618b6b0'),
(313, 8, 'topicos__terceira_sessao_0_titulo', 'Produto'),
(314, 8, '_topicos__terceira_sessao_0_titulo', 'field_608da51e8b6ae'),
(315, 8, 'topicos__terceira_sessao_0_imagem', '41'),
(316, 8, '_topicos__terceira_sessao_0_imagem', 'field_608da5258b6af'),
(317, 8, 'topicos__terceira_sessao', '3'),
(318, 8, '_topicos__terceira_sessao', 'field_608da4fe8b6ad'),
(319, 8, 'topicos_quinta_sessao_0_titulo', ''),
(320, 8, '_topicos_quinta_sessao_0_titulo', 'field_608da499727f4'),
(321, 8, 'topicos_quinta_sessao_0_imagem', ''),
(322, 8, '_topicos_quinta_sessao_0_imagem', 'field_608da49f727f5'),
(323, 8, 'topicos_quinta_sessao', '1'),
(324, 8, '_topicos_quinta_sessao', 'field_608da463727f3'),
(325, 66, 'banner', '13'),
(326, 66, '_banner', 'field_608895f4efb39'),
(327, 66, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(328, 66, '_titulo_banner', 'field_608896a8efb3a'),
(329, 66, 'video_banner', '13'),
(330, 66, '_video_banner', 'field_608895f4efb39'),
(331, 66, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(332, 66, '_titulo_contruir', 'field_6089e2052474d'),
(333, 66, 'titulo_video_1', 'Case Festval'),
(334, 66, '_titulo_video_1', 'field_6089e21d2474e'),
(335, 66, 'titulo_video_2', 'Case Berneck'),
(336, 66, '_titulo_video_2', 'field_6089e2342474f'),
(337, 66, 'video_contruir_1', '29'),
(338, 66, '_video_contruir_1', 'field_6089e24a24750'),
(339, 66, 'video_construir_2', '30'),
(340, 66, '_video_construir_2', 'field_6089e25c24751'),
(341, 66, 'video_construir_1', '29'),
(342, 66, '_video_construir_1', 'field_6089e24a24750'),
(343, 66, 'titulo_segunda _sessao', 'CONSTRUIR\r\nMARCAS.'),
(344, 66, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(345, 66, 'titulo_terceira_sessao', 'INTEGRAR PRODUTO,\r\nPONTO DE VENDA E\r\nCOMUNICAÇÃO.'),
(346, 66, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(347, 66, 'titulo_produto_1', 'Produto'),
(348, 66, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(349, 66, 'titulo_produto_2', 'Ponto de Venda'),
(350, 66, '_titulo_produto_2', 'field_6089f304f4a90'),
(351, 66, 'titulo_produto_3', 'Comunicação'),
(352, 66, '_titulo_produto_3', 'field_6089f30ef4a91'),
(353, 66, 'video_produto_1', '41'),
(354, 66, '_video_produto_1', 'field_6089f319f4a92'),
(355, 66, 'video_produto_2', '42'),
(356, 66, '_video_produto_2', 'field_6089f32cf4a93'),
(357, 66, 'video_produto_3', '43'),
(358, 66, '_video_produto_3', 'field_6089f336f4a94'),
(359, 66, 'texto_terceira_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(360, 66, '_texto_terceira_sessao', 'field_608d9eba5d9f6'),
(361, 66, 'video_quarta_sessao', '54'),
(362, 66, '_video_quarta_sessao', 'field_608da25989036'),
(363, 66, 'cases_segunda_sessao_0_titulo', 'Case Festval'),
(364, 66, '_cases_segunda_sessao_0_titulo', 'field_608da5888b6b1'),
(365, 66, 'cases_segunda_sessao_0_imagem', ''),
(366, 66, '_cases_segunda_sessao_0_imagem', 'field_608da5958b6b2'),
(367, 66, 'cases_segunda_sessao_1_titulo', 'Case Berneck'),
(368, 66, '_cases_segunda_sessao_1_titulo', 'field_608da5888b6b1'),
(369, 66, 'cases_segunda_sessao_1_imagem', ''),
(370, 66, '_cases_segunda_sessao_1_imagem', 'field_608da5958b6b2'),
(371, 66, 'cases_segunda_sessao', '2'),
(372, 66, '_cases_segunda_sessao', 'field_608da5618b6b0'),
(373, 66, 'topicos__terceira_sessao_0_titulo', ''),
(374, 66, '_topicos__terceira_sessao_0_titulo', 'field_608da51e8b6ae'),
(375, 66, 'topicos__terceira_sessao_0_imagem', ''),
(376, 66, '_topicos__terceira_sessao_0_imagem', 'field_608da5258b6af'),
(377, 66, 'topicos__terceira_sessao', '1'),
(378, 66, '_topicos__terceira_sessao', 'field_608da4fe8b6ad'),
(379, 66, 'topicos_quinta_sessao_0_titulo', ''),
(380, 66, '_topicos_quinta_sessao_0_titulo', 'field_608da499727f4'),
(381, 66, 'topicos_quinta_sessao_0_imagem', ''),
(382, 66, '_topicos_quinta_sessao_0_imagem', 'field_608da49f727f5'),
(383, 66, 'topicos_quinta_sessao', '1'),
(384, 66, '_topicos_quinta_sessao', 'field_608da463727f3'),
(385, 67, 'banner', '13'),
(386, 67, '_banner', 'field_608895f4efb39'),
(387, 67, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(388, 67, '_titulo_banner', 'field_608896a8efb3a'),
(389, 67, 'video_banner', '13'),
(390, 67, '_video_banner', 'field_608895f4efb39'),
(391, 67, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(392, 67, '_titulo_contruir', 'field_6089e2052474d'),
(393, 67, 'titulo_video_1', 'Case Festval'),
(394, 67, '_titulo_video_1', 'field_6089e21d2474e'),
(395, 67, 'titulo_video_2', 'Case Berneck'),
(396, 67, '_titulo_video_2', 'field_6089e2342474f'),
(397, 67, 'video_contruir_1', '29'),
(398, 67, '_video_contruir_1', 'field_6089e24a24750'),
(399, 67, 'video_construir_2', '30'),
(400, 67, '_video_construir_2', 'field_6089e25c24751'),
(401, 67, 'video_construir_1', '29'),
(402, 67, '_video_construir_1', 'field_6089e24a24750'),
(403, 67, 'titulo_segunda _sessao', 'CONSTRUIR\r\nMARCAS.'),
(404, 67, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(405, 67, 'titulo_terceira_sessao', 'INTEGRAR PRODUTO,\r\nPONTO DE VENDA E\r\nCOMUNICAÇÃO.'),
(406, 67, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(407, 67, 'titulo_produto_1', 'Produto'),
(408, 67, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(409, 67, 'titulo_produto_2', 'Ponto de Venda'),
(410, 67, '_titulo_produto_2', 'field_6089f304f4a90'),
(411, 67, 'titulo_produto_3', 'Comunicação'),
(412, 67, '_titulo_produto_3', 'field_6089f30ef4a91'),
(413, 67, 'video_produto_1', '41'),
(414, 67, '_video_produto_1', 'field_6089f319f4a92'),
(415, 67, 'video_produto_2', '42'),
(416, 67, '_video_produto_2', 'field_6089f32cf4a93'),
(417, 67, 'video_produto_3', '43'),
(418, 67, '_video_produto_3', 'field_6089f336f4a94'),
(419, 67, 'texto_terceira_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(420, 67, '_texto_terceira_sessao', 'field_608d9eba5d9f6'),
(421, 67, 'video_quarta_sessao', '54'),
(422, 67, '_video_quarta_sessao', 'field_608da25989036'),
(423, 67, 'cases_segunda_sessao_0_titulo', 'Case Festval'),
(424, 67, '_cases_segunda_sessao_0_titulo', 'field_608da5888b6b1'),
(425, 67, 'cases_segunda_sessao_0_imagem', '29'),
(426, 67, '_cases_segunda_sessao_0_imagem', 'field_608da5958b6b2'),
(427, 67, 'cases_segunda_sessao_1_titulo', 'Case Berneck'),
(428, 67, '_cases_segunda_sessao_1_titulo', 'field_608da5888b6b1'),
(429, 67, 'cases_segunda_sessao_1_imagem', '30'),
(430, 67, '_cases_segunda_sessao_1_imagem', 'field_608da5958b6b2'),
(431, 67, 'cases_segunda_sessao', '2'),
(432, 67, '_cases_segunda_sessao', 'field_608da5618b6b0'),
(433, 67, 'topicos__terceira_sessao_0_titulo', ''),
(434, 67, '_topicos__terceira_sessao_0_titulo', 'field_608da51e8b6ae'),
(435, 67, 'topicos__terceira_sessao_0_imagem', ''),
(436, 67, '_topicos__terceira_sessao_0_imagem', 'field_608da5258b6af'),
(437, 67, 'topicos__terceira_sessao', '1'),
(438, 67, '_topicos__terceira_sessao', 'field_608da4fe8b6ad'),
(439, 67, 'topicos_quinta_sessao_0_titulo', ''),
(440, 67, '_topicos_quinta_sessao_0_titulo', 'field_608da499727f4'),
(441, 67, 'topicos_quinta_sessao_0_imagem', ''),
(442, 67, '_topicos_quinta_sessao_0_imagem', 'field_608da49f727f5'),
(443, 67, 'topicos_quinta_sessao', '1'),
(444, 67, '_topicos_quinta_sessao', 'field_608da463727f3'),
(445, 8, 'topicos__terceira_sessao_1_titulo', 'Ponto de Venda'),
(446, 8, '_topicos__terceira_sessao_1_titulo', 'field_608da51e8b6ae'),
(447, 8, 'topicos__terceira_sessao_1_imagem', '42'),
(448, 8, '_topicos__terceira_sessao_1_imagem', 'field_608da5258b6af'),
(449, 8, 'topicos__terceira_sessao_2_titulo', 'Comunicação'),
(450, 8, '_topicos__terceira_sessao_2_titulo', 'field_608da51e8b6ae'),
(451, 8, 'topicos__terceira_sessao_2_imagem', '43'),
(452, 8, '_topicos__terceira_sessao_2_imagem', 'field_608da5258b6af'),
(453, 68, 'banner', '13'),
(454, 68, '_banner', 'field_608895f4efb39'),
(455, 68, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(456, 68, '_titulo_banner', 'field_608896a8efb3a'),
(457, 68, 'video_banner', '13'),
(458, 68, '_video_banner', 'field_608895f4efb39'),
(459, 68, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(460, 68, '_titulo_contruir', 'field_6089e2052474d'),
(461, 68, 'titulo_video_1', 'Case Festval'),
(462, 68, '_titulo_video_1', 'field_6089e21d2474e'),
(463, 68, 'titulo_video_2', 'Case Berneck'),
(464, 68, '_titulo_video_2', 'field_6089e2342474f'),
(465, 68, 'video_contruir_1', '29'),
(466, 68, '_video_contruir_1', 'field_6089e24a24750'),
(467, 68, 'video_construir_2', '30'),
(468, 68, '_video_construir_2', 'field_6089e25c24751'),
(469, 68, 'video_construir_1', '29'),
(470, 68, '_video_construir_1', 'field_6089e24a24750'),
(471, 68, 'titulo_segunda _sessao', 'CONSTRUIR\r\nMARCAS.'),
(472, 68, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(473, 68, 'titulo_terceira_sessao', 'INTEGRAR PRODUTO,\r\nPONTO DE VENDA E\r\nCOMUNICAÇÃO.'),
(474, 68, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(475, 68, 'titulo_produto_1', 'Produto'),
(476, 68, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(477, 68, 'titulo_produto_2', 'Ponto de Venda'),
(478, 68, '_titulo_produto_2', 'field_6089f304f4a90'),
(479, 68, 'titulo_produto_3', 'Comunicação'),
(480, 68, '_titulo_produto_3', 'field_6089f30ef4a91'),
(481, 68, 'video_produto_1', '41'),
(482, 68, '_video_produto_1', 'field_6089f319f4a92'),
(483, 68, 'video_produto_2', '42'),
(484, 68, '_video_produto_2', 'field_6089f32cf4a93'),
(485, 68, 'video_produto_3', '43'),
(486, 68, '_video_produto_3', 'field_6089f336f4a94'),
(487, 68, 'texto_terceira_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(488, 68, '_texto_terceira_sessao', 'field_608d9eba5d9f6'),
(489, 68, 'video_quarta_sessao', '54'),
(490, 68, '_video_quarta_sessao', 'field_608da25989036'),
(491, 68, 'cases_segunda_sessao_0_titulo', 'Case Festval'),
(492, 68, '_cases_segunda_sessao_0_titulo', 'field_608da5888b6b1'),
(493, 68, 'cases_segunda_sessao_0_imagem', '29'),
(494, 68, '_cases_segunda_sessao_0_imagem', 'field_608da5958b6b2'),
(495, 68, 'cases_segunda_sessao_1_titulo', 'Case Berneck'),
(496, 68, '_cases_segunda_sessao_1_titulo', 'field_608da5888b6b1'),
(497, 68, 'cases_segunda_sessao_1_imagem', '30'),
(498, 68, '_cases_segunda_sessao_1_imagem', 'field_608da5958b6b2'),
(499, 68, 'cases_segunda_sessao', '2'),
(500, 68, '_cases_segunda_sessao', 'field_608da5618b6b0'),
(501, 68, 'topicos__terceira_sessao_0_titulo', 'Produto'),
(502, 68, '_topicos__terceira_sessao_0_titulo', 'field_608da51e8b6ae'),
(503, 68, 'topicos__terceira_sessao_0_imagem', '41'),
(504, 68, '_topicos__terceira_sessao_0_imagem', 'field_608da5258b6af'),
(505, 68, 'topicos__terceira_sessao', '3'),
(506, 68, '_topicos__terceira_sessao', 'field_608da4fe8b6ad'),
(507, 68, 'topicos_quinta_sessao_0_titulo', ''),
(508, 68, '_topicos_quinta_sessao_0_titulo', 'field_608da499727f4'),
(509, 68, 'topicos_quinta_sessao_0_imagem', ''),
(510, 68, '_topicos_quinta_sessao_0_imagem', 'field_608da49f727f5'),
(511, 68, 'topicos_quinta_sessao', '1'),
(512, 68, '_topicos_quinta_sessao', 'field_608da463727f3'),
(513, 68, 'topicos__terceira_sessao_1_titulo', 'Ponto de Venda'),
(514, 68, '_topicos__terceira_sessao_1_titulo', 'field_608da51e8b6ae'),
(515, 68, 'topicos__terceira_sessao_1_imagem', '42'),
(516, 68, '_topicos__terceira_sessao_1_imagem', 'field_608da5258b6af'),
(517, 68, 'topicos__terceira_sessao_2_titulo', 'Comunicação'),
(518, 68, '_topicos__terceira_sessao_2_titulo', 'field_608da51e8b6ae'),
(519, 68, 'topicos__terceira_sessao_2_imagem', '43'),
(520, 68, '_topicos__terceira_sessao_2_imagem', 'field_608da5258b6af'),
(521, 8, 'texto_quarta_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(522, 8, '_texto_quarta_sessao', 'field_608d9eba5d9f6'),
(523, 8, 'video_quinta_sessao', '54'),
(524, 8, '_video_quinta_sessao', 'field_608da25989036'),
(525, 8, 'topicos_sexta_sessao_0_titulo', 'Planejamento'),
(526, 8, '_topicos_sexta_sessao_0_titulo', 'field_608da499727f4'),
(527, 8, 'topicos_sexta_sessao_0_imagem', '71'),
(528, 8, '_topicos_sexta_sessao_0_imagem', 'field_608da49f727f5'),
(529, 8, 'topicos_sexta_sessao', '3'),
(530, 8, '_topicos_sexta_sessao', 'field_608da463727f3'),
(531, 69, 'banner', '13'),
(532, 69, '_banner', 'field_608895f4efb39'),
(533, 69, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(534, 69, '_titulo_banner', 'field_608896a8efb3a'),
(535, 69, 'video_banner', '13'),
(536, 69, '_video_banner', 'field_608895f4efb39'),
(537, 69, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(538, 69, '_titulo_contruir', 'field_6089e2052474d'),
(539, 69, 'titulo_video_1', 'Case Festval'),
(540, 69, '_titulo_video_1', 'field_6089e21d2474e'),
(541, 69, 'titulo_video_2', 'Case Berneck'),
(542, 69, '_titulo_video_2', 'field_6089e2342474f'),
(543, 69, 'video_contruir_1', '29'),
(544, 69, '_video_contruir_1', 'field_6089e24a24750'),
(545, 69, 'video_construir_2', '30'),
(546, 69, '_video_construir_2', 'field_6089e25c24751'),
(547, 69, 'video_construir_1', '29'),
(548, 69, '_video_construir_1', 'field_6089e24a24750'),
(549, 69, 'titulo_segunda _sessao', 'CONSTRUIR\r\nMARCAS.'),
(550, 69, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(551, 69, 'titulo_terceira_sessao', 'INTEGRAR PRODUTO,\r\nPONTO DE VENDA E\r\nCOMUNICAÇÃO.'),
(552, 69, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(553, 69, 'titulo_produto_1', 'Produto'),
(554, 69, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(555, 69, 'titulo_produto_2', 'Ponto de Venda'),
(556, 69, '_titulo_produto_2', 'field_6089f304f4a90'),
(557, 69, 'titulo_produto_3', 'Comunicação'),
(558, 69, '_titulo_produto_3', 'field_6089f30ef4a91'),
(559, 69, 'video_produto_1', '41'),
(560, 69, '_video_produto_1', 'field_6089f319f4a92'),
(561, 69, 'video_produto_2', '42'),
(562, 69, '_video_produto_2', 'field_6089f32cf4a93'),
(563, 69, 'video_produto_3', '43'),
(564, 69, '_video_produto_3', 'field_6089f336f4a94'),
(565, 69, 'texto_terceira_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(566, 69, '_texto_terceira_sessao', 'field_608d9eba5d9f6'),
(567, 69, 'video_quarta_sessao', '54'),
(568, 69, '_video_quarta_sessao', 'field_608da25989036'),
(569, 69, 'cases_segunda_sessao_0_titulo', 'Case Festval'),
(570, 69, '_cases_segunda_sessao_0_titulo', 'field_608da5888b6b1'),
(571, 69, 'cases_segunda_sessao_0_imagem', '29'),
(572, 69, '_cases_segunda_sessao_0_imagem', 'field_608da5958b6b2'),
(573, 69, 'cases_segunda_sessao_1_titulo', 'Case Berneck'),
(574, 69, '_cases_segunda_sessao_1_titulo', 'field_608da5888b6b1'),
(575, 69, 'cases_segunda_sessao_1_imagem', '30'),
(576, 69, '_cases_segunda_sessao_1_imagem', 'field_608da5958b6b2'),
(577, 69, 'cases_segunda_sessao', '2'),
(578, 69, '_cases_segunda_sessao', 'field_608da5618b6b0'),
(579, 69, 'topicos__terceira_sessao_0_titulo', 'Produto'),
(580, 69, '_topicos__terceira_sessao_0_titulo', 'field_608da51e8b6ae'),
(581, 69, 'topicos__terceira_sessao_0_imagem', '41'),
(582, 69, '_topicos__terceira_sessao_0_imagem', 'field_608da5258b6af'),
(583, 69, 'topicos__terceira_sessao', '3'),
(584, 69, '_topicos__terceira_sessao', 'field_608da4fe8b6ad'),
(585, 69, 'topicos_quinta_sessao_0_titulo', ''),
(586, 69, '_topicos_quinta_sessao_0_titulo', 'field_608da499727f4'),
(587, 69, 'topicos_quinta_sessao_0_imagem', ''),
(588, 69, '_topicos_quinta_sessao_0_imagem', 'field_608da49f727f5'),
(589, 69, 'topicos_quinta_sessao', '1'),
(590, 69, '_topicos_quinta_sessao', 'field_608da463727f3'),
(591, 69, 'topicos__terceira_sessao_1_titulo', 'Ponto de Venda'),
(592, 69, '_topicos__terceira_sessao_1_titulo', 'field_608da51e8b6ae'),
(593, 69, 'topicos__terceira_sessao_1_imagem', '42'),
(594, 69, '_topicos__terceira_sessao_1_imagem', 'field_608da5258b6af'),
(595, 69, 'topicos__terceira_sessao_2_titulo', 'Comunicação'),
(596, 69, '_topicos__terceira_sessao_2_titulo', 'field_608da51e8b6ae'),
(597, 69, 'topicos__terceira_sessao_2_imagem', '43'),
(598, 69, '_topicos__terceira_sessao_2_imagem', 'field_608da5258b6af'),
(599, 69, 'texto_quarta_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(600, 69, '_texto_quarta_sessao', 'field_608d9eba5d9f6'),
(601, 69, 'video_quinta_sessao', ''),
(602, 69, '_video_quinta_sessao', 'field_608da25989036'),
(603, 69, 'topicos_sexta_sessao_0_titulo', ''),
(604, 69, '_topicos_sexta_sessao_0_titulo', 'field_608da499727f4'),
(605, 69, 'topicos_sexta_sessao_0_imagem', ''),
(606, 69, '_topicos_sexta_sessao_0_imagem', 'field_608da49f727f5'),
(607, 69, 'topicos_sexta_sessao', '1'),
(608, 69, '_topicos_sexta_sessao', 'field_608da463727f3'),
(609, 70, 'banner', '13'),
(610, 70, '_banner', 'field_608895f4efb39'),
(611, 70, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(612, 70, '_titulo_banner', 'field_608896a8efb3a'),
(613, 70, 'video_banner', '13'),
(614, 70, '_video_banner', 'field_608895f4efb39'),
(615, 70, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(616, 70, '_titulo_contruir', 'field_6089e2052474d'),
(617, 70, 'titulo_video_1', 'Case Festval'),
(618, 70, '_titulo_video_1', 'field_6089e21d2474e'),
(619, 70, 'titulo_video_2', 'Case Berneck'),
(620, 70, '_titulo_video_2', 'field_6089e2342474f'),
(621, 70, 'video_contruir_1', '29'),
(622, 70, '_video_contruir_1', 'field_6089e24a24750'),
(623, 70, 'video_construir_2', '30'),
(624, 70, '_video_construir_2', 'field_6089e25c24751'),
(625, 70, 'video_construir_1', '29'),
(626, 70, '_video_construir_1', 'field_6089e24a24750'),
(627, 70, 'titulo_segunda _sessao', 'CONSTRUIR\r\nMARCAS.'),
(628, 70, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(629, 70, 'titulo_terceira_sessao', 'INTEGRAR PRODUTO,\r\nPONTO DE VENDA E\r\nCOMUNICAÇÃO.'),
(630, 70, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(631, 70, 'titulo_produto_1', 'Produto'),
(632, 70, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(633, 70, 'titulo_produto_2', 'Ponto de Venda'),
(634, 70, '_titulo_produto_2', 'field_6089f304f4a90'),
(635, 70, 'titulo_produto_3', 'Comunicação'),
(636, 70, '_titulo_produto_3', 'field_6089f30ef4a91'),
(637, 70, 'video_produto_1', '41'),
(638, 70, '_video_produto_1', 'field_6089f319f4a92'),
(639, 70, 'video_produto_2', '42'),
(640, 70, '_video_produto_2', 'field_6089f32cf4a93'),
(641, 70, 'video_produto_3', '43'),
(642, 70, '_video_produto_3', 'field_6089f336f4a94'),
(643, 70, 'texto_terceira_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(644, 70, '_texto_terceira_sessao', 'field_608d9eba5d9f6'),
(645, 70, 'video_quarta_sessao', '54'),
(646, 70, '_video_quarta_sessao', 'field_608da25989036'),
(647, 70, 'cases_segunda_sessao_0_titulo', 'Case Festval'),
(648, 70, '_cases_segunda_sessao_0_titulo', 'field_608da5888b6b1'),
(649, 70, 'cases_segunda_sessao_0_imagem', '29'),
(650, 70, '_cases_segunda_sessao_0_imagem', 'field_608da5958b6b2'),
(651, 70, 'cases_segunda_sessao_1_titulo', 'Case Berneck'),
(652, 70, '_cases_segunda_sessao_1_titulo', 'field_608da5888b6b1'),
(653, 70, 'cases_segunda_sessao_1_imagem', '30'),
(654, 70, '_cases_segunda_sessao_1_imagem', 'field_608da5958b6b2'),
(655, 70, 'cases_segunda_sessao', '2'),
(656, 70, '_cases_segunda_sessao', 'field_608da5618b6b0'),
(657, 70, 'topicos__terceira_sessao_0_titulo', 'Produto'),
(658, 70, '_topicos__terceira_sessao_0_titulo', 'field_608da51e8b6ae'),
(659, 70, 'topicos__terceira_sessao_0_imagem', '41'),
(660, 70, '_topicos__terceira_sessao_0_imagem', 'field_608da5258b6af'),
(661, 70, 'topicos__terceira_sessao', '3'),
(662, 70, '_topicos__terceira_sessao', 'field_608da4fe8b6ad'),
(663, 70, 'topicos_quinta_sessao_0_titulo', ''),
(664, 70, '_topicos_quinta_sessao_0_titulo', 'field_608da499727f4'),
(665, 70, 'topicos_quinta_sessao_0_imagem', ''),
(666, 70, '_topicos_quinta_sessao_0_imagem', 'field_608da49f727f5'),
(667, 70, 'topicos_quinta_sessao', '1'),
(668, 70, '_topicos_quinta_sessao', 'field_608da463727f3'),
(669, 70, 'topicos__terceira_sessao_1_titulo', 'Ponto de Venda'),
(670, 70, '_topicos__terceira_sessao_1_titulo', 'field_608da51e8b6ae'),
(671, 70, 'topicos__terceira_sessao_1_imagem', '42'),
(672, 70, '_topicos__terceira_sessao_1_imagem', 'field_608da5258b6af'),
(673, 70, 'topicos__terceira_sessao_2_titulo', 'Comunicação'),
(674, 70, '_topicos__terceira_sessao_2_titulo', 'field_608da51e8b6ae'),
(675, 70, 'topicos__terceira_sessao_2_imagem', '43'),
(676, 70, '_topicos__terceira_sessao_2_imagem', 'field_608da5258b6af'),
(677, 70, 'texto_quarta_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(678, 70, '_texto_quarta_sessao', 'field_608d9eba5d9f6'),
(679, 70, 'video_quinta_sessao', '54'),
(680, 70, '_video_quinta_sessao', 'field_608da25989036'),
(681, 70, 'topicos_sexta_sessao_0_titulo', ''),
(682, 70, '_topicos_sexta_sessao_0_titulo', 'field_608da499727f4'),
(683, 70, 'topicos_sexta_sessao_0_imagem', ''),
(684, 70, '_topicos_sexta_sessao_0_imagem', 'field_608da49f727f5'),
(685, 70, 'topicos_sexta_sessao', '1'),
(686, 70, '_topicos_sexta_sessao', 'field_608da463727f3'),
(687, 71, '_wp_attached_file', '2021/05/46b496afdf9794bccb29b502156e76c8.png'),
(688, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:44:\"2021/05/46b496afdf9794bccb29b502156e76c8.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"46b496afdf9794bccb29b502156e76c8-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"46b496afdf9794bccb29b502156e76c8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(689, 8, 'topicos_sexta_sessao_1_titulo', 'Implementação'),
(690, 8, '_topicos_sexta_sessao_1_titulo', 'field_608da499727f4'),
(691, 8, 'topicos_sexta_sessao_1_imagem', '71'),
(692, 8, '_topicos_sexta_sessao_1_imagem', 'field_608da49f727f5'),
(693, 8, 'topicos_sexta_sessao_2_titulo', 'Operação'),
(694, 8, '_topicos_sexta_sessao_2_titulo', 'field_608da499727f4'),
(695, 8, 'topicos_sexta_sessao_2_imagem', '71'),
(696, 8, '_topicos_sexta_sessao_2_imagem', 'field_608da49f727f5'),
(697, 72, 'banner', '13'),
(698, 72, '_banner', 'field_608895f4efb39'),
(699, 72, 'titulo_banner', 'Focar.\r\nDiferenciar.\r\nIntegrar.'),
(700, 72, '_titulo_banner', 'field_608896a8efb3a'),
(701, 72, 'video_banner', '13'),
(702, 72, '_video_banner', 'field_608895f4efb39'),
(703, 72, 'titulo_contruir', 'CONSTRUIR\r\nMARCAS.'),
(704, 72, '_titulo_contruir', 'field_6089e2052474d'),
(705, 72, 'titulo_video_1', 'Case Festval'),
(706, 72, '_titulo_video_1', 'field_6089e21d2474e'),
(707, 72, 'titulo_video_2', 'Case Berneck'),
(708, 72, '_titulo_video_2', 'field_6089e2342474f'),
(709, 72, 'video_contruir_1', '29'),
(710, 72, '_video_contruir_1', 'field_6089e24a24750'),
(711, 72, 'video_construir_2', '30'),
(712, 72, '_video_construir_2', 'field_6089e25c24751'),
(713, 72, 'video_construir_1', '29'),
(714, 72, '_video_construir_1', 'field_6089e24a24750'),
(715, 72, 'titulo_segunda _sessao', 'CONSTRUIR\r\nMARCAS.'),
(716, 72, '_titulo_segunda _sessao', 'field_6089e2052474d'),
(717, 72, 'titulo_terceira_sessao', 'INTEGRAR PRODUTO,\r\nPONTO DE VENDA E\r\nCOMUNICAÇÃO.'),
(718, 72, '_titulo_terceira_sessao', 'field_6089f2d4f4a8e'),
(719, 72, 'titulo_produto_1', 'Produto'),
(720, 72, '_titulo_produto_1', 'field_6089f2e8f4a8f'),
(721, 72, 'titulo_produto_2', 'Ponto de Venda'),
(722, 72, '_titulo_produto_2', 'field_6089f304f4a90'),
(723, 72, 'titulo_produto_3', 'Comunicação'),
(724, 72, '_titulo_produto_3', 'field_6089f30ef4a91'),
(725, 72, 'video_produto_1', '41'),
(726, 72, '_video_produto_1', 'field_6089f319f4a92'),
(727, 72, 'video_produto_2', '42'),
(728, 72, '_video_produto_2', 'field_6089f32cf4a93'),
(729, 72, 'video_produto_3', '43'),
(730, 72, '_video_produto_3', 'field_6089f336f4a94'),
(731, 72, 'texto_terceira_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(732, 72, '_texto_terceira_sessao', 'field_608d9eba5d9f6'),
(733, 72, 'video_quarta_sessao', '54'),
(734, 72, '_video_quarta_sessao', 'field_608da25989036'),
(735, 72, 'cases_segunda_sessao_0_titulo', 'Case Festval'),
(736, 72, '_cases_segunda_sessao_0_titulo', 'field_608da5888b6b1'),
(737, 72, 'cases_segunda_sessao_0_imagem', '29'),
(738, 72, '_cases_segunda_sessao_0_imagem', 'field_608da5958b6b2'),
(739, 72, 'cases_segunda_sessao_1_titulo', 'Case Berneck'),
(740, 72, '_cases_segunda_sessao_1_titulo', 'field_608da5888b6b1'),
(741, 72, 'cases_segunda_sessao_1_imagem', '30'),
(742, 72, '_cases_segunda_sessao_1_imagem', 'field_608da5958b6b2'),
(743, 72, 'cases_segunda_sessao', '2'),
(744, 72, '_cases_segunda_sessao', 'field_608da5618b6b0'),
(745, 72, 'topicos__terceira_sessao_0_titulo', 'Produto'),
(746, 72, '_topicos__terceira_sessao_0_titulo', 'field_608da51e8b6ae'),
(747, 72, 'topicos__terceira_sessao_0_imagem', '41'),
(748, 72, '_topicos__terceira_sessao_0_imagem', 'field_608da5258b6af'),
(749, 72, 'topicos__terceira_sessao', '3'),
(750, 72, '_topicos__terceira_sessao', 'field_608da4fe8b6ad'),
(751, 72, 'topicos_quinta_sessao_0_titulo', ''),
(752, 72, '_topicos_quinta_sessao_0_titulo', 'field_608da499727f4'),
(753, 72, 'topicos_quinta_sessao_0_imagem', ''),
(754, 72, '_topicos_quinta_sessao_0_imagem', 'field_608da49f727f5'),
(755, 72, 'topicos_quinta_sessao', '1'),
(756, 72, '_topicos_quinta_sessao', 'field_608da463727f3'),
(757, 72, 'topicos__terceira_sessao_1_titulo', 'Ponto de Venda'),
(758, 72, '_topicos__terceira_sessao_1_titulo', 'field_608da51e8b6ae'),
(759, 72, 'topicos__terceira_sessao_1_imagem', '42'),
(760, 72, '_topicos__terceira_sessao_1_imagem', 'field_608da5258b6af'),
(761, 72, 'topicos__terceira_sessao_2_titulo', 'Comunicação'),
(762, 72, '_topicos__terceira_sessao_2_titulo', 'field_608da51e8b6ae'),
(763, 72, 'topicos__terceira_sessao_2_imagem', '43'),
(764, 72, '_topicos__terceira_sessao_2_imagem', 'field_608da5258b6af'),
(765, 72, 'texto_quarta_sessao', 'DESVENDAMOS COMPORTAMENTOS.\r\nINSPIRAMOS PESSOAS.\r\nCONCENTIZAMOS VALORES.\r\nTRANSFORMAMOS NEGÓCIOS.'),
(766, 72, '_texto_quarta_sessao', 'field_608d9eba5d9f6'),
(767, 72, 'video_quinta_sessao', '54'),
(768, 72, '_video_quinta_sessao', 'field_608da25989036'),
(769, 72, 'topicos_sexta_sessao_0_titulo', 'Planejamento'),
(770, 72, '_topicos_sexta_sessao_0_titulo', 'field_608da499727f4'),
(771, 72, 'topicos_sexta_sessao_0_imagem', '71'),
(772, 72, '_topicos_sexta_sessao_0_imagem', 'field_608da49f727f5'),
(773, 72, 'topicos_sexta_sessao', '3'),
(774, 72, '_topicos_sexta_sessao', 'field_608da463727f3'),
(775, 72, 'topicos_sexta_sessao_1_titulo', 'Implementação'),
(776, 72, '_topicos_sexta_sessao_1_titulo', 'field_608da499727f4'),
(777, 72, 'topicos_sexta_sessao_1_imagem', '71'),
(778, 72, '_topicos_sexta_sessao_1_imagem', 'field_608da49f727f5'),
(779, 72, 'topicos_sexta_sessao_2_titulo', 'Operação'),
(780, 72, '_topicos_sexta_sessao_2_titulo', 'field_608da499727f4'),
(781, 72, 'topicos_sexta_sessao_2_imagem', '71'),
(782, 72, '_topicos_sexta_sessao_2_imagem', 'field_608da49f727f5'),
(783, 81, '_wp_attached_file', '2021/05/Sem-Titulo-2.png'),
(784, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:69;s:6:\"height\";i:84;s:4:\"file\";s:24:\"2021/05/Sem-Titulo-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-27 19:42:24', '2021-04-27 22:42:24', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2021-04-27 19:42:24', '2021-04-27 22:42:24', '', 0, 'http://localhost/workers/?p=1', 0, 'post', '', 1),
(2, 1, '2021-04-27 19:42:24', '2021-04-27 22:42:24', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/workers/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2021-04-27 19:50:24', '2021-04-27 22:50:24', '', 0, 'http://localhost/workers/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-27 19:42:24', '2021-04-27 22:42:24', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/workers.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2021-04-27 19:50:26', '2021-04-27 22:50:26', '', 0, 'http://localhost/workers/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-04-27 19:42:56', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-27 19:42:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/workers/?p=4', 0, 'post', '', 0),
(5, 1, '2021-04-27 19:50:24', '2021-04-27 22:50:24', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/workers/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-04-27 19:50:24', '2021-04-27 22:50:24', '', 2, 'http://localhost/workers/?p=5', 0, 'revision', '', 0),
(6, 1, '2021-04-27 19:50:26', '2021-04-27 22:50:26', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/workers.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-04-27 19:50:26', '2021-04-27 22:50:26', '', 3, 'http://localhost/workers/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-04-27 19:50:29', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-27 19:50:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/workers/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-04-27 19:51:31', '2021-04-27 22:51:31', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-05-01 16:11:02', '2021-05-01 19:11:02', '', 0, 'http://localhost/workers/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-04-27 19:51:31', '2021-04-27 22:51:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-04-27 19:51:31', '2021-04-27 22:51:31', '', 8, 'http://localhost/workers/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-04-27 19:57:58', '2021-04-27 22:57:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_608895e6ad448', '', '', '2021-05-01 16:06:08', '2021-05-01 19:06:08', '', 0, 'http://localhost/workers/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2021-04-27 19:57:58', '2021-04-27 22:57:58', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Video Banner', 'video_banner', 'publish', 'closed', 'closed', '', 'field_608895f4efb39', '', '', '2021-04-28 19:32:30', '2021-04-28 22:32:30', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=11', 1, 'acf-field', '', 0),
(12, 1, '2021-04-27 19:57:58', '2021-04-27 22:57:58', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Titulo Banner', 'titulo_banner', 'publish', 'closed', 'closed', '', 'field_608896a8efb3a', '', '', '2021-04-28 19:32:30', '2021-04-28 22:32:30', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=12', 2, 'acf-field', '', 0),
(13, 1, '2021-04-27 20:02:01', '2021-04-27 23:02:01', '', 'Apresentação Prédios - São Paulo-1', '', 'inherit', 'open', 'closed', '', 'apresentacao-predios-sao-paulo-1', '', '', '2021-04-27 20:02:01', '2021-04-27 23:02:01', '', 8, 'http://localhost/workers/wp-content/uploads/2021/04/Apresentacao-Predios-Sao-Paulo-1.mp4', 0, 'attachment', 'video/mp4', 0),
(14, 1, '2021-04-27 20:02:39', '2021-04-27 23:02:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-04-27 20:02:39', '2021-04-27 23:02:39', '', 8, 'http://localhost/workers/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-04-27 20:05:38', '2021-04-27 23:05:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-04-27 20:05:38', '2021-04-27 23:05:38', '', 8, 'http://localhost/workers/?p=15', 0, 'revision', '', 0),
(16, 1, '2021-04-27 20:24:51', '2021-04-27 23:24:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Opções', 'opcoes', 'publish', 'closed', 'closed', '', 'group_60889d2c1a4d1', '', '', '2021-05-01 17:06:29', '2021-05-01 20:06:29', '', 0, 'http://localhost/workers/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2021-04-27 20:25:24', '2021-04-27 23:25:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Favicon', 'favicon', 'publish', 'closed', 'closed', '', 'field_60889d536c2be', '', '', '2021-05-01 15:28:31', '2021-05-01 18:28:31', '', 16, 'http://localhost/workers/?post_type=acf-field&#038;p=17', 1, 'acf-field', '', 0),
(18, 1, '2021-04-27 20:26:07', '2021-04-27 23:26:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logotipo', 'logotipo', 'publish', 'closed', 'closed', '', 'field_60889d7df3b77', '', '', '2021-05-01 15:28:31', '2021-05-01 18:28:31', '', 16, 'http://localhost/workers/?post_type=acf-field&#038;p=18', 2, 'acf-field', '', 0),
(19, 1, '2021-04-27 20:26:52', '2021-04-27 23:26:52', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Informações da Empresa', 'informacoes_da_empresa', 'publish', 'closed', 'closed', '', 'field_60889da5ebe23', '', '', '2021-04-27 20:26:52', '2021-04-27 23:26:52', '', 16, 'http://localhost/workers/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2021-04-27 20:29:48', '2021-04-27 23:29:48', '', 'Untitled-2', '', 'inherit', 'open', 'closed', '', 'untitled-2', '', '', '2021-04-27 20:29:48', '2021-04-27 23:29:48', '', 0, 'http://localhost/workers/wp-content/uploads/2021/04/Untitled-2.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2021-04-27 20:30:50', '2021-04-27 23:30:50', '', 'asdasd1', '', 'inherit', 'open', 'closed', '', 'asdasd1', '', '', '2021-04-27 20:30:50', '2021-04-27 23:30:50', '', 0, 'http://localhost/workers/wp-content/uploads/2021/04/asdasd1.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2021-04-28 19:32:29', '2021-04-28 22:32:29', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_6089e1e42474b', '', '', '2021-04-28 19:32:29', '2021-04-28 22:32:29', '', 10, 'http://localhost/workers/?post_type=acf-field&p=22', 0, 'acf-field', '', 0),
(23, 1, '2021-04-28 19:32:30', '2021-04-28 22:32:30', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Segunda Sessão', 'sessao_2', 'publish', 'closed', 'closed', '', 'field_6089e1ee2474c', '', '', '2021-04-28 20:44:03', '2021-04-28 23:44:03', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=23', 3, 'acf-field', '', 0),
(24, 1, '2021-04-28 19:32:30', '2021-04-28 22:32:30', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Titulo Segunda Sessão', 'titulo_segunda _sessao', 'publish', 'closed', 'closed', '', 'field_6089e2052474d', '', '', '2021-04-28 20:44:03', '2021-04-28 23:44:03', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=24', 4, 'acf-field', '', 0),
(29, 1, '2021-04-28 19:33:36', '2021-04-28 22:33:36', '', 'Screenshot_1', '', 'inherit', 'open', 'closed', '', 'screenshot_1', '', '', '2021-04-28 19:33:36', '2021-04-28 22:33:36', '', 8, 'http://localhost/workers/wp-content/uploads/2021/04/Screenshot_1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2021-04-28 19:33:41', '2021-04-28 22:33:41', '', 'Screenshot_2', '', 'inherit', 'open', 'closed', '', 'screenshot_2', '', '', '2021-04-28 19:33:41', '2021-04-28 22:33:41', '', 8, 'http://localhost/workers/wp-content/uploads/2021/04/Screenshot_2.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2021-04-28 19:33:53', '2021-04-28 22:33:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-04-28 19:33:53', '2021-04-28 22:33:53', '', 8, 'http://localhost/workers/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-04-28 19:41:26', '2021-04-28 22:41:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-04-28 19:41:26', '2021-04-28 22:41:26', '', 8, 'http://localhost/workers/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-04-28 20:44:04', '2021-04-28 23:44:04', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Terceira Sessão', 'terceira_sessao', 'publish', 'closed', 'closed', '', 'field_6089f2c4f4a8d', '', '', '2021-05-01 16:02:24', '2021-05-01 19:02:24', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=33', 6, 'acf-field', '', 0),
(34, 1, '2021-04-28 20:44:04', '2021-04-28 23:44:04', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Titulo Terceira Sessão', 'titulo_terceira_sessao', 'publish', 'closed', 'closed', '', 'field_6089f2d4f4a8e', '', '', '2021-05-01 16:02:24', '2021-05-01 19:02:24', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=34', 7, 'acf-field', '', 0),
(41, 1, '2021-04-28 20:46:27', '2021-04-28 23:46:27', '', 'Untitled-2', '', 'inherit', 'open', 'closed', '', 'untitled-2-2', '', '', '2021-04-28 20:46:27', '2021-04-28 23:46:27', '', 8, 'http://localhost/workers/wp-content/uploads/2021/04/Untitled-2-1.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2021-04-28 20:46:28', '2021-04-28 23:46:28', '', 'Untitled-3', '', 'inherit', 'open', 'closed', '', 'untitled-3', '', '', '2021-04-28 20:46:28', '2021-04-28 23:46:28', '', 8, 'http://localhost/workers/wp-content/uploads/2021/04/Untitled-3.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2021-04-28 20:46:29', '2021-04-28 23:46:29', '', 'Untitled-4', '', 'inherit', 'open', 'closed', '', 'untitled-4', '', '', '2021-04-28 20:46:29', '2021-04-28 23:46:29', '', 8, 'http://localhost/workers/wp-content/uploads/2021/04/Untitled-4.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2021-04-28 20:46:40', '2021-04-28 23:46:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-04-28 20:46:40', '2021-04-28 23:46:40', '', 8, 'http://localhost/workers/?p=44', 0, 'revision', '', 0),
(45, 1, '2021-05-01 15:28:31', '2021-05-01 18:28:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logotipo Secundaria', 'logotipo_secundaria', 'publish', 'closed', 'closed', '', 'field_608d9dbbf6344', '', '', '2021-05-01 15:28:31', '2021-05-01 18:28:31', '', 16, 'http://localhost/workers/?post_type=acf-field&p=45', 3, 'acf-field', '', 0),
(46, 1, '2021-05-01 15:30:07', '2021-05-01 18:30:07', '', 'Untitled-2', '', 'inherit', 'open', 'closed', '', 'untitled-2-3', '', '', '2021-05-01 15:30:07', '2021-05-01 18:30:07', '', 0, 'http://localhost/workers/wp-content/uploads/2021/05/Untitled-2.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2021-05-01 15:32:11', '2021-05-01 18:32:11', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Quarta Sessão', 'quarta_sessao', 'publish', 'closed', 'closed', '', 'field_608d9ea95f8bb', '', '', '2021-05-01 16:06:08', '2021-05-01 19:06:08', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=47', 9, 'acf-field', '', 0),
(48, 1, '2021-05-01 15:32:45', '2021-05-01 18:32:45', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto Quarta Sessão', 'texto_quarta_sessao', 'publish', 'closed', 'closed', '', 'field_608d9eba5d9f6', '', '', '2021-05-01 16:06:08', '2021-05-01 19:06:08', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=48', 10, 'acf-field', '', 0),
(49, 1, '2021-05-01 15:38:56', '2021-05-01 18:38:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-01 15:38:56', '2021-05-01 18:38:56', '', 8, 'http://localhost/workers/?p=49', 0, 'revision', '', 0),
(50, 1, '2021-05-01 15:48:37', '2021-05-01 18:48:37', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Quinta Sessão', 'quinta_sessao', 'publish', 'closed', 'closed', '', 'field_608da24989035', '', '', '2021-05-01 16:06:08', '2021-05-01 19:06:08', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=50', 11, 'acf-field', '', 0),
(51, 1, '2021-05-01 15:48:37', '2021-05-01 18:48:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Video Quinta Sessão', 'video_quinta_sessao', 'publish', 'closed', 'closed', '', 'field_608da25989036', '', '', '2021-05-01 16:06:08', '2021-05-01 19:06:08', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=51', 12, 'acf-field', '', 0),
(52, 1, '2021-05-01 15:52:01', '2021-05-01 18:52:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-01 15:52:01', '2021-05-01 18:52:01', '', 8, 'http://localhost/workers/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-05-01 15:52:36', '2021-05-01 18:52:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-01 15:52:36', '2021-05-01 18:52:36', '', 8, 'http://localhost/workers/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-05-01 15:52:47', '2021-05-01 18:52:47', '', 'Sem Título-1', '', 'inherit', 'open', 'closed', '', 'sem-titulo-1', '', '', '2021-05-01 15:52:47', '2021-05-01 18:52:47', '', 8, 'http://localhost/workers/wp-content/uploads/2021/05/Sem-Titulo-1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2021-05-01 15:52:52', '2021-05-01 18:52:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-01 15:52:52', '2021-05-01 18:52:52', '', 8, 'http://localhost/workers/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-05-01 15:58:06', '2021-05-01 18:58:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Sexta Sessão', 'sexta_sessao', 'publish', 'closed', 'closed', '', 'field_608da454727f2', '', '', '2021-05-01 16:06:08', '2021-05-01 19:06:08', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=56', 13, 'acf-field', '', 0),
(57, 1, '2021-05-01 15:58:06', '2021-05-01 18:58:06', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:3;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Tópicos Sexta Sessão', 'topicos_sexta_sessao', 'publish', 'closed', 'closed', '', 'field_608da463727f3', '', '', '2021-05-01 16:06:08', '2021-05-01 19:06:08', '', 10, 'http://localhost/workers/?post_type=acf-field&#038;p=57', 14, 'acf-field', '', 0),
(58, 1, '2021-05-01 15:58:06', '2021-05-01 18:58:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_608da499727f4', '', '', '2021-05-01 15:58:06', '2021-05-01 18:58:06', '', 57, 'http://localhost/workers/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2021-05-01 15:58:06', '2021-05-01 18:58:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_608da49f727f5', '', '', '2021-05-01 15:58:06', '2021-05-01 18:58:06', '', 57, 'http://localhost/workers/?post_type=acf-field&p=59', 1, 'acf-field', '', 0),
(60, 1, '2021-05-01 16:02:24', '2021-05-01 19:02:24', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:2;s:3:\"max\";i:2;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Cases Segunda Sessão', 'cases_segunda_sessao', 'publish', 'closed', 'closed', '', 'field_608da5618b6b0', '', '', '2021-05-01 16:02:24', '2021-05-01 19:02:24', '', 10, 'http://localhost/workers/?post_type=acf-field&p=60', 5, 'acf-field', '', 0),
(61, 1, '2021-05-01 16:02:24', '2021-05-01 19:02:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_608da5888b6b1', '', '', '2021-05-01 16:02:24', '2021-05-01 19:02:24', '', 60, 'http://localhost/workers/?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(62, 1, '2021-05-01 16:02:24', '2021-05-01 19:02:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_608da5958b6b2', '', '', '2021-05-01 16:03:51', '2021-05-01 19:03:51', '', 60, 'http://localhost/workers/?post_type=acf-field&#038;p=62', 1, 'acf-field', '', 0),
(63, 1, '2021-05-01 16:02:24', '2021-05-01 19:02:24', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:3;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Tópicos  Terceira Sessão', 'topicos__terceira_sessao', 'publish', 'closed', 'closed', '', 'field_608da4fe8b6ad', '', '', '2021-05-01 16:02:24', '2021-05-01 19:02:24', '', 10, 'http://localhost/workers/?post_type=acf-field&p=63', 8, 'acf-field', '', 0),
(64, 1, '2021-05-01 16:02:24', '2021-05-01 19:02:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_608da51e8b6ae', '', '', '2021-05-01 16:02:24', '2021-05-01 19:02:24', '', 63, 'http://localhost/workers/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2021-05-01 16:02:24', '2021-05-01 19:02:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_608da5258b6af', '', '', '2021-05-01 16:03:51', '2021-05-01 19:03:51', '', 63, 'http://localhost/workers/?post_type=acf-field&#038;p=65', 1, 'acf-field', '', 0),
(66, 1, '2021-05-01 16:03:09', '2021-05-01 19:03:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-01 16:03:09', '2021-05-01 19:03:09', '', 8, 'http://localhost/workers/?p=66', 0, 'revision', '', 0),
(67, 1, '2021-05-01 16:04:07', '2021-05-01 19:04:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-01 16:04:07', '2021-05-01 19:04:07', '', 8, 'http://localhost/workers/?p=67', 0, 'revision', '', 0),
(68, 1, '2021-05-01 16:04:53', '2021-05-01 19:04:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-01 16:04:53', '2021-05-01 19:04:53', '', 8, 'http://localhost/workers/?p=68', 0, 'revision', '', 0),
(69, 1, '2021-05-01 16:06:59', '2021-05-01 19:06:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-01 16:06:59', '2021-05-01 19:06:59', '', 8, 'http://localhost/workers/?p=69', 0, 'revision', '', 0),
(70, 1, '2021-05-01 16:07:13', '2021-05-01 19:07:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-01 16:07:13', '2021-05-01 19:07:13', '', 8, 'http://localhost/workers/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-05-01 16:10:38', '2021-05-01 19:10:38', '', '46b496afdf9794bccb29b502156e76c8', '', 'inherit', 'open', 'closed', '', '46b496afdf9794bccb29b502156e76c8', '', '', '2021-05-01 16:10:38', '2021-05-01 19:10:38', '', 8, 'http://localhost/workers/wp-content/uploads/2021/05/46b496afdf9794bccb29b502156e76c8.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2021-05-01 16:11:02', '2021-05-01 19:11:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-01 16:11:02', '2021-05-01 19:11:02', '', 8, 'http://localhost/workers/?p=72', 0, 'revision', '', 0),
(73, 1, '2021-05-01 16:31:03', '2021-05-01 19:31:03', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Contato', 'contato', 'publish', 'closed', 'closed', '', 'field_608daba07c82c', '', '', '2021-05-01 16:31:03', '2021-05-01 19:31:03', '', 16, 'http://localhost/workers/?post_type=acf-field&p=73', 4, 'acf-field', '', 0),
(74, 1, '2021-05-01 16:31:03', '2021-05-01 19:31:03', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Endereço', 'endereco', 'publish', 'closed', 'closed', '', 'field_608dabc27c82e', '', '', '2021-05-01 16:31:03', '2021-05-01 19:31:03', '', 16, 'http://localhost/workers/?post_type=acf-field&p=74', 5, 'acf-field', '', 0),
(75, 1, '2021-05-01 16:31:03', '2021-05-01 19:31:03', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'E-mail', 'e-mail', 'publish', 'closed', 'closed', '', 'field_608daba97c82d', '', '', '2021-05-01 16:53:03', '2021-05-01 19:53:03', '', 16, 'http://localhost/workers/?post_type=acf-field&#038;p=75', 6, 'acf-field', '', 0),
(76, 1, '2021-05-01 16:31:03', '2021-05-01 19:31:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Whatsapp', 'whatsapp', 'publish', 'closed', 'closed', '', 'field_608dabe77c82f', '', '', '2021-05-01 16:53:03', '2021-05-01 19:53:03', '', 16, 'http://localhost/workers/?post_type=acf-field&#038;p=76', 8, 'acf-field', '', 0),
(77, 1, '2021-05-01 16:31:03', '2021-05-01 19:31:03', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Redes Sociais', 'redes_sociais', 'publish', 'closed', 'closed', '', 'field_608dac057c830', '', '', '2021-05-01 17:01:32', '2021-05-01 20:01:32', '', 16, 'http://localhost/workers/?post_type=acf-field&#038;p=77', 9, 'acf-field', '', 0),
(78, 1, '2021-05-01 16:31:03', '2021-05-01 19:31:03', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:10:\"facebook-f\";s:8:\"Facebook\";s:11:\"linkedin-in\";s:8:\"Linkedin\";s:9:\"instagram\";s:9:\"Instagram\";s:7:\"vimeo-v\";s:5:\"Vimeo\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Rede Social', 'rede_social', 'publish', 'closed', 'closed', '', 'field_608dac217c832', '', '', '2021-05-01 17:06:29', '2021-05-01 20:06:29', '', 77, 'http://localhost/workers/?post_type=acf-field&#038;p=78', 0, 'acf-field', '', 0),
(79, 1, '2021-05-01 16:31:03', '2021-05-01 19:31:03', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_608dac107c831', '', '', '2021-05-01 16:31:03', '2021-05-01 19:31:03', '', 77, 'http://localhost/workers/?post_type=acf-field&p=79', 1, 'acf-field', '', 0),
(80, 1, '2021-05-01 16:53:03', '2021-05-01 19:53:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Icone WhatsApp', 'icone_whatsapp', 'publish', 'closed', 'closed', '', 'field_608db17739a3d', '', '', '2021-05-01 16:53:03', '2021-05-01 19:53:03', '', 16, 'http://localhost/workers/?post_type=acf-field&p=80', 7, 'acf-field', '', 0),
(81, 1, '2021-05-01 16:54:52', '2021-05-01 19:54:52', '', 'Sem-Título-2', '', 'inherit', 'open', 'closed', '', 'sem-titulo-2', '', '', '2021-05-01 16:54:52', '2021-05-01 19:54:52', '', 0, 'http://localhost/workers/wp-content/uploads/2021/05/Sem-Titulo-2.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'eddy'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"a3feca942bbff535db9037b3e059851e85a557d6c6f9bc0d12331d83dd9d8ffd\";a:4:{s:10:\"expiration\";i:1620772973;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619563373;}s:64:\"6e1a4b43d48732a6597a8af1f0ad190c51201f4c451ebeb2e615269dd3cea00d\";a:4:{s:10:\"expiration\";i:1620066665;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1619893865;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:40:\"dashboard_site_health,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_primary,dashboard_quick_press\";s:7:\"column3\";s:19:\"dashboard_right_now\";s:7:\"column4\";s:0:\"\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:6:{i:0;s:21:\"dashboard_site_health\";i:1;s:18:\"dashboard_activity\";i:2;s:18:\"rg_forms_dashboard\";i:3;s:17:\"dashboard_primary\";i:4;s:21:\"dashboard_quick_press\";i:5;s:19:\"dashboard_right_now\";}'),
(20, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1619895118');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'eddy', '$P$Bah7a5F642VDxYcCm52JYHlKsSZjD0/', 'eddy', 'eduardo.gmfonseca@gmail.com', 'http://localhost/workers', '2021-04-27 22:42:22', '', 0, 'eddy');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_gf_draft_submissions`
--
ALTER TABLE `wp_gf_draft_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Índices para tabela `wp_gf_entry`
--
ALTER TABLE `wp_gf_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `form_id_status` (`form_id`,`status`);

--
-- Índices para tabela `wp_gf_entry_meta`
--
ALTER TABLE `wp_gf_entry_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `meta_value` (`meta_value`(191));

--
-- Índices para tabela `wp_gf_entry_notes`
--
ALTER TABLE `wp_gf_entry_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `entry_user_key` (`entry_id`,`user_id`);

--
-- Índices para tabela `wp_gf_form`
--
ALTER TABLE `wp_gf_form`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wp_gf_form_meta`
--
ALTER TABLE `wp_gf_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Índices para tabela `wp_gf_form_view`
--
ALTER TABLE `wp_gf_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_gf_entry`
--
ALTER TABLE `wp_gf_entry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_gf_entry_meta`
--
ALTER TABLE `wp_gf_entry_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_gf_entry_notes`
--
ALTER TABLE `wp_gf_entry_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_gf_form`
--
ALTER TABLE `wp_gf_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_gf_form_view`
--
ALTER TABLE `wp_gf_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=785;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
