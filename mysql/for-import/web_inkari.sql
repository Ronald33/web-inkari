-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql
-- Tiempo de generación: 11-01-2023 a las 16:34:50
-- Versión del servidor: 5.7.40
-- Versión de PHP: 8.0.19

CREATE DATABASE web_inkari CHARACTER SET utf8 COLLATE utf8_general_ci;
USE web_inkari;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `web_inkari`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-12-08 10:48:16', '2021-12-08 15:48:16', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0),
(2, 1, 'chakal1337', 'chakal1337@gmail.com', 'https://rootkitz.top/', '171.22.119.80', '2022-12-25 05:26:43', '2022-12-25 10:26:43', 'chakal1337 https://rootkitz.top/', 0, 'post-trashed', 'Mozilla/5.0 +(chakal1337)', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://inkari.unsa.edu.pe', 'yes'),
(2, 'home', 'http://inkari.unsa.edu.pe', 'yes'),
(3, 'blogname', 'Inkari', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'inkari.unsa@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:\"wp-migrate-db/wp-migrate-db.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-5', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tema_inkari', 'yes'),
(41, 'stylesheet', 'tema_inkari', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '40', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1680462138', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'disabled', 'no'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'es_PE', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivo</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1673455697;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1673462697;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1673495297;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1673538497;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1673538634;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1673538644;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"Error en la solicitud HTTPS.\";}}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1638979685;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(140, 'finished_updating_comment_type', '1', 'yes'),
(141, 'current_theme', 'RTheme', 'yes'),
(142, 'theme_mods_tema_inkari', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:18;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(146, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(154, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(159, 'site_logo', '18', 'yes'),
(165, 'recently_activated', 'a:0:{}', 'yes'),
(182, 'wpmdb_usage', 'a:2:{s:6:\"action\";s:8:\"savefile\";s:4:\"time\";i:1653678756;}', 'no'),
(249, 'db_upgraded', '', 'yes'),
(376, 'wpmdb_settings', 'a:14:{s:3:\"key\";s:40:\"nMt4tBZqf0uEvpVNJjv1zKeju9cRZY/kyi1iSUaX\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:0:\"\";s:10:\"verify_ssl\";b:0;s:17:\"whitelist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;s:14:\"allow_tracking\";N;s:18:\"compatibility_mode\";b:1;s:26:\"high_performance_transfers\";b:0;}', 'no'),
(384, 'wpmdb_saved_profiles', '', 'no'),
(385, 'wpmdb_recent_migrations', '', 'no'),
(386, 'wpmdb_migration_options', '', 'no'),
(387, 'wpmdb_migration_state', '', 'no'),
(388, 'wpmdb_remote_response', '', 'no'),
(389, 'wpmdb_remote_migration_state', '', 'no'),
(390, 'wpmdb_schema_version', '3.6', 'no'),
(1187, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":4,\"critical\":2}', 'yes'),
(29498, 'category_children', 'a:0:{}', 'yes'),
(1727470, 'user_count', '1', 'no'),
(1727475, 'can_compress_scripts', '1', 'no'),
(1776208, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:4:\"fail\";s:5:\"email\";s:21:\"inkari.unsa@gmail.com\";s:7:\"version\";s:5:\"6.0.3\";s:9:\"timestamp\";i:1666047010;}', 'no'),
(2046003, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"es_PE\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1673454481;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(2214373, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1673454483;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:31:\"wp-migrate-db/wp-migrate-db.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wp-migrate-db\";s:4:\"slug\";s:13:\"wp-migrate-db\";s:6:\"plugin\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:11:\"new_version\";s:5:\"2.5.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-migrate-db/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wp-migrate-db.2.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-256x256.jpg?rev=1809889\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-128x128.jpg?rev=1809889\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-migrate-db/assets/banner-1544x500.jpg?rev=1809889\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-migrate-db/assets/banner-772x250.jpg?rev=1809889\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"5.0.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:5:\"2.5.0\";}}', 'no'),
(2214392, '_site_transient_timeout_php_check_6a93f292d9a273c004fc36e1f86d97b3', '1673966744', 'no'),
(2214393, '_site_transient_php_check_6a93f292d9a273c004fc36e1f86d97b3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(2214399, '_site_transient_timeout_browser_173e11913f27c0a766fb4199bafe591f', '1673967325', 'no'),
(2214400, '_site_transient_browser_173e11913f27c0a766fb4199bafe591f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"108.0.0.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2214413, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1673454483;s:7:\"checked\";a:3:{s:11:\"tema_inkari\";s:3:\"1.0\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:2:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(2214422, '_transient_timeout_global_styles_tema_inkari', '1673454541', 'no'),
(2214423, '_transient_global_styles_tema_inkari', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(2214424, '_site_transient_timeout_theme_roots', '1673456282', 'no'),
(2214425, '_site_transient_theme_roots', 'a:3:{s:11:\"tema_inkari\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1638980278:1'),
(4, 7, '_edit_lock', '1638980216:1'),
(5, 9, '_edit_lock', '1638980264:1'),
(6, 11, '_edit_lock', '1638980305:1'),
(7, 13, '_menu_item_type', 'custom'),
(8, 13, '_menu_item_menu_item_parent', '0'),
(9, 13, '_menu_item_object_id', '13'),
(10, 13, '_menu_item_object', 'custom'),
(11, 13, '_menu_item_target', ''),
(12, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(13, 13, '_menu_item_xfn', ''),
(14, 13, '_menu_item_url', 'http://inkari.unsa.edu.pe/'),
(16, 14, '_menu_item_type', 'post_type'),
(17, 14, '_menu_item_menu_item_parent', '0'),
(18, 14, '_menu_item_object_id', '11'),
(19, 14, '_menu_item_object', 'page'),
(20, 14, '_menu_item_target', ''),
(21, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 14, '_menu_item_xfn', ''),
(23, 14, '_menu_item_url', ''),
(25, 15, '_menu_item_type', 'post_type'),
(26, 15, '_menu_item_menu_item_parent', '0'),
(27, 15, '_menu_item_object_id', '9'),
(28, 15, '_menu_item_object', 'page'),
(29, 15, '_menu_item_target', ''),
(30, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 15, '_menu_item_xfn', ''),
(32, 15, '_menu_item_url', ''),
(34, 16, '_menu_item_type', 'post_type'),
(35, 16, '_menu_item_menu_item_parent', '0'),
(36, 16, '_menu_item_object_id', '7'),
(37, 16, '_menu_item_object', 'page'),
(38, 16, '_menu_item_target', ''),
(39, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 16, '_menu_item_xfn', ''),
(41, 16, '_menu_item_url', ''),
(43, 17, '_menu_item_type', 'post_type'),
(44, 17, '_menu_item_menu_item_parent', '0'),
(45, 17, '_menu_item_object_id', '5'),
(46, 17, '_menu_item_object', 'page'),
(47, 17, '_menu_item_target', ''),
(48, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 17, '_menu_item_xfn', ''),
(50, 17, '_menu_item_url', ''),
(52, 18, '_wp_attached_file', '2021/12/logo_inkari.png'),
(53, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:14411;s:6:\"height\";i:3620;s:4:\"file\";s:23:\"2021/12/logo_inkari.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"logo_inkari-300x75.png\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"logo_inkari-1024x257.png\";s:5:\"width\";i:1024;s:6:\"height\";i:257;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo_inkari-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"logo_inkari-768x193.png\";s:5:\"width\";i:768;s:6:\"height\";i:193;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"logo_inkari-1536x386.png\";s:5:\"width\";i:1536;s:6:\"height\";i:386;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:24:\"logo_inkari-2048x514.png\";s:5:\"width\";i:2048;s:6:\"height\";i:514;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 20, '_edit_lock', '1638998446:1'),
(57, 21, '_wp_attached_file', '2021/12/barco.png'),
(58, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1025;s:6:\"height\";i:671;s:4:\"file\";s:17:\"2021/12/barco.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"barco-300x196.png\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"barco-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"barco-768x503.png\";s:5:\"width\";i:768;s:6:\"height\";i:503;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 22, '_wp_attached_file', '2021/12/lxc1.jpeg'),
(60, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:1111;s:4:\"file\";s:17:\"2021/12/lxc1.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"lxc1-300x133.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"lxc1-1024x455.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:455;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"lxc1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"lxc1-768x341.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"lxc1-1536x683.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:18:\"lxc1-2048x910.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:910;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 23, '_wp_attached_file', '2021/12/lxc2-scaled.jpeg'),
(62, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1811;s:6:\"height\";i:2560;s:4:\"file\";s:24:\"2021/12/lxc2-scaled.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"lxc2-212x300.jpeg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"lxc2-724x1024.jpeg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"lxc2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"lxc2-768x1086.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"lxc2-1086x1536.jpeg\";s:5:\"width\";i:1086;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"lxc2-1449x2048.jpeg\";s:5:\"width\";i:1449;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"lxc2.jpeg\";}'),
(63, 24, '_wp_attached_file', '2021/12/lxc3.jpeg'),
(64, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1448;s:6:\"height\";i:2048;s:4:\"file\";s:17:\"2021/12/lxc3.jpeg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"lxc3-212x300.jpeg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"lxc3-724x1024.jpeg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"lxc3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"lxc3-768x1086.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"lxc3-1086x1536.jpeg\";s:5:\"width\";i:1086;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 25, '_wp_attached_file', '2021/12/lxc4.jpeg'),
(66, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1449;s:6:\"height\";i:2048;s:4:\"file\";s:17:\"2021/12/lxc4.jpeg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"lxc4-212x300.jpeg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"lxc4-725x1024.jpeg\";s:5:\"width\";i:725;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"lxc4-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"lxc4-768x1085.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1085;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"lxc4-1087x1536.jpeg\";s:5:\"width\";i:1087;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 26, '_wp_attached_file', '2021/12/lxc5.jpeg'),
(68, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1768;s:6:\"height\";i:2500;s:4:\"file\";s:17:\"2021/12/lxc5.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"lxc5-212x300.jpeg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"lxc5-724x1024.jpeg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"lxc5-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"lxc5-768x1086.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"lxc5-1086x1536.jpeg\";s:5:\"width\";i:1086;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"lxc5-1448x2048.jpeg\";s:5:\"width\";i:1448;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 27, '_wp_attached_file', '2021/12/lxc6-scaled.jpeg'),
(70, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1811;s:6:\"height\";i:2560;s:4:\"file\";s:24:\"2021/12/lxc6-scaled.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"lxc6-212x300.jpeg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"lxc6-724x1024.jpeg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"lxc6-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"lxc6-768x1086.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"lxc6-1086x1536.jpeg\";s:5:\"width\";i:1086;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"lxc6-1449x2048.jpeg\";s:5:\"width\";i:1449;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"lxc6.jpeg\";}'),
(71, 30, '_edit_lock', '1639000167:1'),
(72, 31, '_wp_attached_file', '2021/12/ganglia_inkari.png'),
(73, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1243;s:6:\"height\";i:555;s:4:\"file\";s:26:\"2021/12/ganglia_inkari.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"ganglia_inkari-300x134.png\";s:5:\"width\";i:300;s:6:\"height\";i:134;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"ganglia_inkari-1024x457.png\";s:5:\"width\";i:1024;s:6:\"height\";i:457;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"ganglia_inkari-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"ganglia_inkari-768x343.png\";s:5:\"width\";i:768;s:6:\"height\";i:343;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 32, '_wp_attached_file', '2021/12/inkari_qstat.png'),
(75, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:685;s:6:\"height\";i:674;s:4:\"file\";s:24:\"2021/12/inkari_qstat.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"inkari_qstat-300x295.png\";s:5:\"width\";i:300;s:6:\"height\";i:295;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"inkari_qstat-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 35, '_edit_lock', '1652719739:1'),
(77, 37, '_wp_attached_file', '2022/05/logoc.png'),
(78, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:591;s:6:\"height\";i:425;s:4:\"file\";s:17:\"2022/05/logoc.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logoc-300x216.png\";s:5:\"width\";i:300;s:6:\"height\";i:216;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logoc-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 37, '_edit_lock', '1652742695:1'),
(80, 38, '_wp_attached_file', '2022/05/cropped-logoc.png'),
(81, 38, '_wp_attachment_context', 'site-icon'),
(82, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:25:\"2022/05/cropped-logoc.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-logoc-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logoc-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:25:\"cropped-logoc-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:25:\"cropped-logoc-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:25:\"cropped-logoc-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:23:\"cropped-logoc-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 40, '_wp_attached_file', '2022/05/cropped-logoc-1.png'),
(85, 40, '_wp_attachment_context', 'site-icon'),
(86, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2022/05/cropped-logoc-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-logoc-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-logoc-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-logoc-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-logoc-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-logoc-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-logoc-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 42, '_edit_lock', '1652894139:1'),
(91, 44, '_edit_lock', '1673362478:1'),
(92, 46, '_edit_lock', '1673363998:1'),
(93, 1, '_wp_trash_meta_status', 'publish'),
(94, 1, '_wp_trash_meta_time', '1672192853'),
(95, 1, '_wp_desired_post_slug', 'hola-mundo'),
(96, 1, '_wp_trash_meta_comments_status', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"0\";}'),
(97, 3, '_wp_trash_meta_status', 'draft'),
(98, 3, '_wp_trash_meta_time', '1673362587'),
(99, 3, '_wp_desired_post_slug', 'politica-privacidad'),
(100, 2, '_edit_lock', '1673362457:1'),
(101, 2, '_wp_trash_meta_status', 'publish'),
(102, 2, '_wp_trash_meta_time', '1673362605'),
(103, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-12-08 10:48:16', '2021-12-08 15:48:16', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2022-12-27 21:00:53', '2022-12-28 02:00:53', '', 0, 'http://inkari.unsa.edu.pe/?p=1', 0, 'post', '', 1),
(2, 1, '2021-12-08 10:48:16', '2021-12-08 15:48:16', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://inkari.unsa.edu.pe/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2023-01-10 09:56:45', '2023-01-10 14:56:45', '', 0, 'http://inkari.unsa.edu.pe/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-12-08 10:48:16', '2021-12-08 15:48:16', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://inkari.unsa.edu.pe.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentarios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Multimedia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenido incrustado de otros sitios web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes pueden ser revisados por un servicio de detección automática de spam.</p><!-- /wp:paragraph -->', 'Política de Privacidad', '', 'trash', 'closed', 'open', '', 'politica-privacidad__trashed', '', '', '2023-01-10 09:56:27', '2023-01-10 14:56:27', '', 0, 'http://inkari.unsa.edu.pe/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-12-08 11:18:18', '2021-12-08 16:18:18', '', 'Solicitar cuenta', '', 'publish', 'closed', 'closed', '', 'solicitar-cuenta', '', '', '2021-12-08 11:18:18', '2021-12-08 16:18:18', '', 0, 'http://inkari.unsa.edu.pe/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-12-08 11:18:18', '2021-12-08 16:18:18', '', 'Solicitar cuenta', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-12-08 11:18:18', '2021-12-08 16:18:18', '', 5, 'http://inkari.unsa.edu.pe/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-12-08 11:19:18', '2021-12-08 16:19:18', '', 'Recursos', '', 'publish', 'closed', 'closed', '', 'recursos', '', '', '2021-12-08 11:19:18', '2021-12-08 16:19:18', '', 0, 'http://inkari.unsa.edu.pe/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-12-08 11:19:18', '2021-12-08 16:19:18', '', 'Recursos', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-12-08 11:19:18', '2021-12-08 16:19:18', '', 7, 'http://inkari.unsa.edu.pe/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-12-08 11:19:35', '2021-12-08 16:19:35', '', 'Equipo de trabajo', '', 'publish', 'closed', 'closed', '', 'equipo-de-trabajo', '', '', '2021-12-08 11:19:35', '2021-12-08 16:19:35', '', 0, 'http://inkari.unsa.edu.pe/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-12-08 11:19:35', '2021-12-08 16:19:35', '', 'Equipo de trabajo', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-12-08 11:19:35', '2021-12-08 16:19:35', '', 9, 'http://inkari.unsa.edu.pe/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-12-08 11:20:19', '2021-12-08 16:20:19', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2021-12-08 11:20:19', '2021-12-08 16:20:19', '', 0, 'http://inkari.unsa.edu.pe/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-12-08 11:20:19', '2021-12-08 16:20:19', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-08 11:20:19', '2021-12-08 16:20:19', '', 11, 'http://inkari.unsa.edu.pe/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-12-08 11:22:12', '2021-12-08 16:22:12', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2021-12-08 11:22:12', '2021-12-08 16:22:12', '', 0, 'http://inkari.unsa.edu.pe/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2021-12-08 11:22:13', '2021-12-08 16:22:13', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2021-12-08 11:22:13', '2021-12-08 16:22:13', '', 0, 'http://inkari.unsa.edu.pe/?p=14', 5, 'nav_menu_item', '', 0),
(15, 1, '2021-12-08 11:22:12', '2021-12-08 16:22:12', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2021-12-08 11:22:12', '2021-12-08 16:22:12', '', 0, 'http://inkari.unsa.edu.pe/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2021-12-08 11:22:12', '2021-12-08 16:22:12', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2021-12-08 11:22:12', '2021-12-08 16:22:12', '', 0, 'http://inkari.unsa.edu.pe/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2021-12-08 11:22:12', '2021-12-08 16:22:12', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2021-12-08 11:22:12', '2021-12-08 16:22:12', '', 0, 'http://inkari.unsa.edu.pe/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2021-12-08 11:52:51', '2021-12-08 16:52:51', '', 'logo_inkari', '', 'inherit', 'open', 'closed', '', 'logo_inkari', '', '', '2021-12-08 11:52:51', '2021-12-08 16:52:51', '', 0, 'http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/logo_inkari.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2021-12-08 16:18:16', '2021-12-08 21:18:16', '<!-- wp:paragraph -->\n<p>En el transcurso de este año diversos investigadores han utilizado el cluster Inkari para el desarrollo de sus trabajos y proyectos, a continuación se mencionan algunos de estos trabajos:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>Detección De Embarcaciones Pesqueras Industriales Dentro De Las 5 Millas De La Región Arequipa Utilizando Computación De Alto Desempeño E Imágenes Satelitales</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>El proyecto pretende realizar la detección de barcos pesqueros dentro de las 5 millas del Mar de Grau - región Arequipa. El proyecto consiste en la implementación de un modelo de detección de embarcaciones pesqueras industriales usando imágenes satelitales de tipo radar y óptico, que posean resolución submétrico. El modelo contemplará un algoritmo de detección basado en técnicas de machine learning y deep learning, y además será diseñado para el soporte de procesamiento y análisis de grandes cantidades (big data) de imágenes satelitales, para ello se utilizará computación de alto desempeño. El resultado esperado es el desarrollo de una aplicación web basada en el modelo; además de publicaciones de artículos científicos, exposiciones en congresos internacionales o nacionales y la sustentación de una tesis de pregrado relacionados al estudio de la data geoespacial, computación de alto desempeño, el desarrollo de algoritmos de procesamiento para la detección de embarcaciones, el diseño y desarrollo de la arquitectura funcional del software a implementar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/barco.png\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Los investigadores a cargo de este proyecto fueron: <em>Bragean Luis Vargas Márquez; Remy Jorge Cuba Inca; Wilder Nina Choquehuayta; Aaron Walter Avila Cordova; William Condori Quispe; Eveling Gloria Castro Gutierrez; Juan Mario Germán Villegas Paredes</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El cierre de este proyecto puede ser visto en: <a rel=\"noreferrer noopener\" href=\"https://www.facebook.com/381406145269184/videos/691816368328690/\" target=\"_blank\">https://www.facebook.com/381406145269184/videos/691816368328690/</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>LatinXChem</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>LatinXChem es un congreso de química, la cual utilizó como plataforma de divulgación la red social Twitter, en este evento&nbsp;la comunidad de químicos latinoamericanos, ubicados en cualquier parte del mundo, pudieron compartir y discutir sus resultados y avances de investigación.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El investigador Aldo Fabrizzio Combariza Montañez conjuntamente a sus colegas participaron en dicho evento y presentaron diversos proyectos de investigación.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc1-1024x455.jpeg\" alt=\"\" class=\"wp-image-22\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/MariaJo23528875/status/1303019206997311491\" target=\"_blank\">https://twitter.com/MariaJo23528875/status/1303019206997311491</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc2-724x1024.jpeg\" alt=\"\" class=\"wp-image-23\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/CarlosAPadill1/status/1302955810650284032\" target=\"_blank\">https://twitter.com/CarlosAPadill1/status/1302955810650284032</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":24,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc3-724x1024.jpeg\" alt=\"\" class=\"wp-image-24\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/dna4372/status/1302943582735663104\" target=\"_blank\">https://twitter.com/dna4372/status/1302943582735663104</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":25,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc4-725x1024.jpeg\" alt=\"\" class=\"wp-image-25\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/dna4372/status/1302944471550623744\" target=\"_blank\">https://twitter.com/dna4372/status/1302944471550623744</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":26,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc5-724x1024.jpeg\" alt=\"\" class=\"wp-image-26\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/JuanJPayares1/status/1302952094203351041\" target=\"_blank\">https://twitter.com/JuanJPayares1/status/1302952094203351041</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":27,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc6-724x1024.jpeg\" alt=\"\" class=\"wp-image-27\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/MariaJo23528875/status/1302982033191448576\" target=\"_blank\">https://twitter.com/MariaJo23528875/status/1302982033191448576</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>Proyectos en ejecución</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Existen una gran cantidad de investigadores que actualmente se encuentran desarrollando sus proyectos de investigación, a continuación se muestra una lista de ellos:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Detección de avalanchas en secuencias de video</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Milwart Rossini Calizaya Bobadilla</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Vehículo acuático no tripulado Edson-J para supervisar la calidad de agua en zonas vulnerables a contaminación por metales pesados</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Juan Carlos Cutipa Luque</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Laboratorio de Películas Delgadas, Escuela Profesional de Física, Facultad de Ciencias Naturales y Formales, Universidad Nacional de San Agustín de Arequipa</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Antony Fredy Carlos Chilo</li><li>Bill Darwin Aparicio Huacarpuma</li><li>Carlos Adolfo Vilca Huayhua</li><li>David Gregorio Pacheco Salazar</li><li>Fermin Fidel Herrera Aragón</li><li>Joyce Ivonne Castillo Llanos</li><li>Leonardo Villegas Lelovsky</li><li>Karla Jahaira Paz Corrales</li><li>Sonia Alina De la Torre Pari</li><li>Sonia Del Carmen Andia Huaracha</li><li>Lucero Marghori Zapana Cayo</li><li>Carmen Mamani Soncco</li><li>Juan Carlos Romero Aquino<br></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Entre otros proyectos.</p>\n<!-- /wp:paragraph -->', 'Proyectos', '', 'publish', 'closed', 'closed', '', 'proyectos', '', '', '2021-12-08 16:19:19', '2021-12-08 21:19:19', '', 0, 'http://inkari.unsa.edu.pe/?page_id=20', 0, 'page', '', 0),
(21, 1, '2021-12-08 16:09:03', '2021-12-08 21:09:03', '', 'barco', '', 'inherit', 'open', 'closed', '', 'barco', '', '', '2021-12-08 16:09:03', '2021-12-08 21:09:03', '', 20, 'http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/barco.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2021-12-08 16:11:58', '2021-12-08 21:11:58', '', 'lxc1', '', 'inherit', 'open', 'closed', '', 'lxc1', '', '', '2021-12-08 16:11:58', '2021-12-08 21:11:58', '', 20, 'http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2021-12-08 16:13:59', '2021-12-08 21:13:59', '', 'lxc2', '', 'inherit', 'open', 'closed', '', 'lxc2', '', '', '2021-12-08 16:13:59', '2021-12-08 21:13:59', '', 20, 'http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2021-12-08 16:15:25', '2021-12-08 21:15:25', '', 'lxc3', '', 'inherit', 'open', 'closed', '', 'lxc3', '', '', '2021-12-08 16:15:25', '2021-12-08 21:15:25', '', 20, 'http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2021-12-08 16:15:58', '2021-12-08 21:15:58', '', 'lxc4', '', 'inherit', 'open', 'closed', '', 'lxc4', '', '', '2021-12-08 16:15:58', '2021-12-08 21:15:58', '', 20, 'http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2021-12-08 16:16:59', '2021-12-08 21:16:59', '', 'lxc5', '', 'inherit', 'open', 'closed', '', 'lxc5', '', '', '2021-12-08 16:16:59', '2021-12-08 21:16:59', '', 20, 'http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc5.jpeg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2021-12-08 16:17:56', '2021-12-08 21:17:56', '', 'lxc6', '', 'inherit', 'open', 'closed', '', 'lxc6', '', '', '2021-12-08 16:17:56', '2021-12-08 21:17:56', '', 20, 'http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc6.jpeg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2021-12-08 16:18:16', '2021-12-08 21:18:16', '<!-- wp:paragraph -->\n<p>En el transcurso de este año diversos investigadores han utilizado el cluster Inkari para el desarrollo de sus trabajos y proyectos, a continuación se mencionan algunos de estos trabajos:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>Detección De Embarcaciones Pesqueras Industriales Dentro De Las 5 Millas De La Región Arequipa Utilizando Computación De Alto Desempeño E Imágenes Satelitales</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>El proyecto pretende realizar la detección de barcos pesqueros dentro de las 5 millas del Mar de Grau - región Arequipa. El proyecto consiste en la implementación de un modelo de detección de embarcaciones pesqueras industriales usando imágenes satelitales de tipo radar y óptico, que posean resolución submétrico. El modelo contemplará un algoritmo de detección basado en técnicas de machine learning y deep learning, y además será diseñado para el soporte de procesamiento y análisis de grandes cantidades (big data) de imágenes satelitales, para ello se utilizará computación de alto desempeño. El resultado esperado es el desarrollo de una aplicación web basada en el modelo; además de publicaciones de artículos científicos, exposiciones en congresos internacionales o nacionales y la sustentación de una tesis de pregrado relacionados al estudio de la data geoespacial, computación de alto desempeño, el desarrollo de algoritmos de procesamiento para la detección de embarcaciones, el diseño y desarrollo de la arquitectura funcional del software a implementar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/barco.png\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Los investigadores a cargo de este proyecto fueron: <em>Bragean Luis Vargas Márquez; Remy Jorge Cuba Inca; Wilder Nina Choquehuayta; Aaron Walter Avila Cordova; William Condori Quispe; Eveling Gloria Castro Gutierrez; Juan Mario Germán Villegas Paredes</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El cierre de este proyecto puede ser visto en: <a rel=\"noreferrer noopener\" href=\"https://www.facebook.com/381406145269184/videos/691816368328690/\" target=\"_blank\">https://www.facebook.com/381406145269184/videos/691816368328690/</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>LatinXChem</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>LatinXChem es un congreso de química, la cual utilizó como plataforma de divulgación la red social Twitter, en este evento&nbsp;la comunidad de químicos latinoamericanos, ubicados en cualquier parte del mundo, pudieron compartir y discutir sus resultados y avances de investigación.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El investigador Aldo Fabrizzio Combariza Montañez conjuntamente a sus colegas participaron en dicho evento y presentaron diversos proyectos de investigación.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc1-1024x455.jpeg\" alt=\"\" class=\"wp-image-22\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/MariaJo23528875/status/1303019206997311491\" target=\"_blank\">https://twitter.com/MariaJo23528875/status/1303019206997311491</a></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc2-724x1024.jpeg\" alt=\"\" class=\"wp-image-23\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/CarlosAPadill1/status/1302955810650284032\" target=\"_blank\">https://twitter.com/CarlosAPadill1/status/1302955810650284032</a></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":24,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc3-724x1024.jpeg\" alt=\"\" class=\"wp-image-24\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/dna4372/status/1302943582735663104\" target=\"_blank\">https://twitter.com/dna4372/status/1302943582735663104</a></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":25,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc4-725x1024.jpeg\" alt=\"\" class=\"wp-image-25\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/dna4372/status/1302944471550623744\" target=\"_blank\">https://twitter.com/dna4372/status/1302944471550623744</a></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":26,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc5-724x1024.jpeg\" alt=\"\" class=\"wp-image-26\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/JuanJPayares1/status/1302952094203351041\" target=\"_blank\">https://twitter.com/JuanJPayares1/status/1302952094203351041</a></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":27,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc6-724x1024.jpeg\" alt=\"\" class=\"wp-image-27\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/MariaJo23528875/status/1302982033191448576\" target=\"_blank\">https://twitter.com/MariaJo23528875/status/1302982033191448576</a></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>Proyectos en ejecución</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Existen una gran cantidad de investigadores que actualmente se encuentran desarrollando sus proyectos de investigación, a continuación se muestra una lista de ellos:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Detección de avalanchas en secuencias de video</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Milwart Rossini Calizaya Bobadilla</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Vehículo acuático no tripulado Edson-J para supervisar la calidad de agua en zonas vulnerables a contaminación por metales pesados</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Juan Carlos Cutipa Luque</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Laboratorio de Películas Delgadas, Escuela Profesional de Física, Facultad de Ciencias Naturales y Formales, Universidad Nacional de San Agustín de Arequipa</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Antony Fredy Carlos Chilo</li><li>Bill Darwin Aparicio Huacarpuma</li><li>Carlos Adolfo Vilca Huayhua</li><li>David Gregorio Pacheco Salazar</li><li>Fermin Fidel Herrera Aragón</li><li>Joyce Ivonne Castillo Llanos</li><li>Leonardo Villegas Lelovsky</li><li>Karla Jahaira Paz Corrales</li><li>Sonia Alina De la Torre Pari</li><li>Sonia Del Carmen Andia Huaracha</li><li>Lucero Marghori Zapana Cayo</li><li>Carmen Mamani Soncco</li><li>Juan Carlos Romero Aquino<br></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Entre otros proyectos.</p>\n<!-- /wp:paragraph -->', 'Proyectos', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-08 16:18:16', '2021-12-08 21:18:16', '', 20, 'http://inkari.unsa.edu.pe/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-12-08 16:19:19', '2021-12-08 21:19:19', '<!-- wp:paragraph -->\n<p>En el transcurso de este año diversos investigadores han utilizado el cluster Inkari para el desarrollo de sus trabajos y proyectos, a continuación se mencionan algunos de estos trabajos:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>Detección De Embarcaciones Pesqueras Industriales Dentro De Las 5 Millas De La Región Arequipa Utilizando Computación De Alto Desempeño E Imágenes Satelitales</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>El proyecto pretende realizar la detección de barcos pesqueros dentro de las 5 millas del Mar de Grau - región Arequipa. El proyecto consiste en la implementación de un modelo de detección de embarcaciones pesqueras industriales usando imágenes satelitales de tipo radar y óptico, que posean resolución submétrico. El modelo contemplará un algoritmo de detección basado en técnicas de machine learning y deep learning, y además será diseñado para el soporte de procesamiento y análisis de grandes cantidades (big data) de imágenes satelitales, para ello se utilizará computación de alto desempeño. El resultado esperado es el desarrollo de una aplicación web basada en el modelo; además de publicaciones de artículos científicos, exposiciones en congresos internacionales o nacionales y la sustentación de una tesis de pregrado relacionados al estudio de la data geoespacial, computación de alto desempeño, el desarrollo de algoritmos de procesamiento para la detección de embarcaciones, el diseño y desarrollo de la arquitectura funcional del software a implementar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":21,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/barco.png\" alt=\"\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Los investigadores a cargo de este proyecto fueron: <em>Bragean Luis Vargas Márquez; Remy Jorge Cuba Inca; Wilder Nina Choquehuayta; Aaron Walter Avila Cordova; William Condori Quispe; Eveling Gloria Castro Gutierrez; Juan Mario Germán Villegas Paredes</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El cierre de este proyecto puede ser visto en: <a rel=\"noreferrer noopener\" href=\"https://www.facebook.com/381406145269184/videos/691816368328690/\" target=\"_blank\">https://www.facebook.com/381406145269184/videos/691816368328690/</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>LatinXChem</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>LatinXChem es un congreso de química, la cual utilizó como plataforma de divulgación la red social Twitter, en este evento&nbsp;la comunidad de químicos latinoamericanos, ubicados en cualquier parte del mundo, pudieron compartir y discutir sus resultados y avances de investigación.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El investigador Aldo Fabrizzio Combariza Montañez conjuntamente a sus colegas participaron en dicho evento y presentaron diversos proyectos de investigación.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":22,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc1-1024x455.jpeg\" alt=\"\" class=\"wp-image-22\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/MariaJo23528875/status/1303019206997311491\" target=\"_blank\">https://twitter.com/MariaJo23528875/status/1303019206997311491</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":23,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc2-724x1024.jpeg\" alt=\"\" class=\"wp-image-23\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/CarlosAPadill1/status/1302955810650284032\" target=\"_blank\">https://twitter.com/CarlosAPadill1/status/1302955810650284032</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":24,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc3-724x1024.jpeg\" alt=\"\" class=\"wp-image-24\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/dna4372/status/1302943582735663104\" target=\"_blank\">https://twitter.com/dna4372/status/1302943582735663104</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":25,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc4-725x1024.jpeg\" alt=\"\" class=\"wp-image-25\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/dna4372/status/1302944471550623744\" target=\"_blank\">https://twitter.com/dna4372/status/1302944471550623744</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":26,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc5-724x1024.jpeg\" alt=\"\" class=\"wp-image-26\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/JuanJPayares1/status/1302952094203351041\" target=\"_blank\">https://twitter.com/JuanJPayares1/status/1302952094203351041</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":27,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/lxc6-724x1024.jpeg\" alt=\"\" class=\"wp-image-27\"/><figcaption>Fuente: <a rel=\"noreferrer noopener\" href=\"https://twitter.com/MariaJo23528875/status/1302982033191448576\" target=\"_blank\">https://twitter.com/MariaJo23528875/status/1302982033191448576</a></figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":5} -->\n<h5>Proyectos en ejecución</h5>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Existen una gran cantidad de investigadores que actualmente se encuentran desarrollando sus proyectos de investigación, a continuación se muestra una lista de ellos:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Detección de avalanchas en secuencias de video</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Milwart Rossini Calizaya Bobadilla</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Vehículo acuático no tripulado Edson-J para supervisar la calidad de agua en zonas vulnerables a contaminación por metales pesados</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Juan Carlos Cutipa Luque</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><strong>Laboratorio de Películas Delgadas, Escuela Profesional de Física, Facultad de Ciencias Naturales y Formales, Universidad Nacional de San Agustín de Arequipa</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Antony Fredy Carlos Chilo</li><li>Bill Darwin Aparicio Huacarpuma</li><li>Carlos Adolfo Vilca Huayhua</li><li>David Gregorio Pacheco Salazar</li><li>Fermin Fidel Herrera Aragón</li><li>Joyce Ivonne Castillo Llanos</li><li>Leonardo Villegas Lelovsky</li><li>Karla Jahaira Paz Corrales</li><li>Sonia Alina De la Torre Pari</li><li>Sonia Del Carmen Andia Huaracha</li><li>Lucero Marghori Zapana Cayo</li><li>Carmen Mamani Soncco</li><li>Juan Carlos Romero Aquino<br></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Entre otros proyectos.</p>\n<!-- /wp:paragraph -->', 'Proyectos', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-08 16:19:19', '2021-12-08 21:19:19', '', 20, 'http://inkari.unsa.edu.pe/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-12-08 16:24:23', '2021-12-08 21:24:23', '<!-- wp:paragraph -->\n<p>Para dar a conocer el estado del cluster Inkari se realiza informes bimensuales en los cuales se indica el registro de nuevos usuarios, la integración de nuevas librerías solicitadas por los investigadores, creación de plantillas para el uso de librerías, registro de incidentes, charlas de capacitación, cambios en el manual de usuario, entre otros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Informe del mes de Febrero y Marzo (enviado bajo el asunto: Cluster Inkari - Informe #1)</li><li>Informe del mes Abril y Mayo (enviado bajo el asunto: Informe de actividades)</li><li>Informe del mes de Junio y Julio (enviado bajo el asunto Inkari - Informe de actividades #2)</li><li>Informe del mes de Agosto (enviado bajo el asunto Inkari - Inkari - Informe de actividades #3)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Dichos informes se encuentran visible únicamente por la administración del Instituto de Investigación Astronómico Aeroespacial Pedro Paulet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Por otra parte también es posible visualizar el uso del cluster mediante la herramienta ganglia, un ejemplo de su uso es mostrado a continuación:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a rel=\"noreferrer noopener\" href=\"http://inkari.unsa.edu.pe/ganglia/?r=custom&amp;cs=12%2F01%2F2019+00%3A00&amp;ce=09%2F30%2F2020+23%3A59&amp;c=Calculo&amp;h=&amp;tab=m&amp;vn=&amp;hide-hf=false&amp;m=cpu_user&amp;sh=1&amp;z=small&amp;hc=4&amp;host_regex=&amp;max_graphs=0&amp;s=by+name\" target=\"_blank\">Visualización del uso del cluster (sección calculo) entre los meses Diciembre del 2019 hasta el 30 de septiembre del 2020.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El resultado de dicha visualización se muestra a continuación:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":31,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/ganglia_inkari-1024x457.png\" alt=\"\" class=\"wp-image-31\"/><figcaption>Informe del uso del cluster Inkari entre los meses 01/12/2019 - 30/09/2020</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>nalmente se hace recuerdo a los usuarios que es posible observar el estado de sus jobs (y la de otros usuarios) mediante el comando qstat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":32,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-full\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/inkari_qstat.png\" alt=\"\" class=\"wp-image-32\"/><figcaption>Visualización de jobs del cluster Inkari, a fecha 04/10/2020</figcaption></figure></div>\n<!-- /wp:image -->', 'Informes', '', 'publish', 'closed', 'closed', '', 'informes', '', '', '2021-12-08 16:24:23', '2021-12-08 21:24:23', '', 0, 'http://inkari.unsa.edu.pe/?page_id=30', 0, 'page', '', 0),
(31, 1, '2021-12-08 16:23:25', '2021-12-08 21:23:25', '', 'ganglia_inkari', '', 'inherit', 'open', 'closed', '', 'ganglia_inkari', '', '', '2021-12-08 16:23:25', '2021-12-08 21:23:25', '', 30, 'http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/ganglia_inkari.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2021-12-08 16:24:10', '2021-12-08 21:24:10', '', 'inkari_qstat', '', 'inherit', 'open', 'closed', '', 'inkari_qstat', '', '', '2021-12-08 16:24:10', '2021-12-08 21:24:10', '', 30, 'http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/inkari_qstat.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2021-12-08 16:24:23', '2021-12-08 21:24:23', '<!-- wp:paragraph -->\n<p>Para dar a conocer el estado del cluster Inkari se realiza informes bimensuales en los cuales se indica el registro de nuevos usuarios, la integración de nuevas librerías solicitadas por los investigadores, creación de plantillas para el uso de librerías, registro de incidentes, charlas de capacitación, cambios en el manual de usuario, entre otros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Informe del mes de Febrero y Marzo (enviado bajo el asunto: Cluster Inkari - Informe #1)</li><li>Informe del mes Abril y Mayo (enviado bajo el asunto: Informe de actividades)</li><li>Informe del mes de Junio y Julio (enviado bajo el asunto Inkari - Informe de actividades #2)</li><li>Informe del mes de Agosto (enviado bajo el asunto Inkari - Inkari - Informe de actividades #3)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Dichos informes se encuentran visible únicamente por la administración del Instituto de Investigación Astronómico Aeroespacial Pedro Paulet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Por otra parte también es posible visualizar el uso del cluster mediante la herramienta ganglia, un ejemplo de su uso es mostrado a continuación:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a rel=\"noreferrer noopener\" href=\"http://inkari.unsa.edu.pe/ganglia/?r=custom&amp;cs=12%2F01%2F2019+00%3A00&amp;ce=09%2F30%2F2020+23%3A59&amp;c=Calculo&amp;h=&amp;tab=m&amp;vn=&amp;hide-hf=false&amp;m=cpu_user&amp;sh=1&amp;z=small&amp;hc=4&amp;host_regex=&amp;max_graphs=0&amp;s=by+name\" target=\"_blank\">Visualización del uso del cluster (sección calculo) entre los meses Diciembre del 2019 hasta el 30 de septiembre del 2020.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>El resultado de dicha visualización se muestra a continuación:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":31,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/ganglia_inkari-1024x457.png\" alt=\"\" class=\"wp-image-31\"/><figcaption>Informe del uso del cluster Inkari entre los meses 01/12/2019 - 30/09/2020</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>nalmente se hace recuerdo a los usuarios que es posible observar el estado de sus jobs (y la de otros usuarios) mediante el comando qstat.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":32,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-full\"><img src=\"http://inkari.unsa.edu.pe/wp-content/uploads/2021/12/inkari_qstat.png\" alt=\"\" class=\"wp-image-32\"/><figcaption>Visualización de jobs del cluster Inkari, a fecha 04/10/2020</figcaption></figure></div>\n<!-- /wp:image -->', 'Informes', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-12-08 16:24:23', '2021-12-08 21:24:23', '', 30, 'http://inkari.unsa.edu.pe/?p=33', 0, 'revision', '', 0),
(35, 1, '2022-05-16 11:24:37', '2022-05-16 16:24:37', '', 'Migración de PBS a SLURM', '', 'publish', 'closed', 'closed', '', 'migracion-de-pbs-a-slurm', '', '', '2022-05-16 11:24:37', '2022-05-16 16:24:37', '', 0, 'http://inkari.unsa.edu.pe/?page_id=35', 0, 'page', '', 0),
(36, 1, '2022-05-16 11:24:37', '2022-05-16 16:24:37', '', 'Migración de PBS a SLURM', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-05-16 11:24:37', '2022-05-16 16:24:37', '', 35, 'http://inkari.unsa.edu.pe/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-05-16 18:11:36', '2022-05-16 23:11:36', '', 'logoc', '', 'inherit', 'open', 'closed', '', 'logoc', '', '', '2022-05-16 18:11:36', '2022-05-16 23:11:36', '', 0, 'http://inkari.unsa.edu.pe/wp-content/uploads/2022/05/logoc.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2022-05-16 18:12:26', '2022-05-16 23:12:26', 'http://inkari.unsa.edu.pe/wp-content/uploads/2022/05/cropped-logoc.png', 'cropped-logoc.png', '', 'inherit', 'open', 'closed', '', 'cropped-logoc-png', '', '', '2022-05-16 18:12:26', '2022-05-16 23:12:26', '', 0, 'http://inkari.unsa.edu.pe/wp-content/uploads/2022/05/cropped-logoc.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2022-05-16 18:14:14', '2022-05-16 23:14:14', 'http://inkari.unsa.edu.pe/wp-content/uploads/2022/05/cropped-logoc-1.png', 'cropped-logoc-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logoc-1-png', '', '', '2022-05-16 18:14:14', '2022-05-16 23:14:14', '', 0, 'http://inkari.unsa.edu.pe/wp-content/uploads/2022/05/cropped-logoc-1.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2022-05-18 12:13:22', '2022-05-18 17:13:22', '', 'Orientación de uso de la Supercomputadora Inkari', '', 'publish', 'closed', 'closed', '', 'primer-curso-orientacion', '', '', '2022-05-18 12:15:07', '2022-05-18 17:15:07', '', 0, 'http://inkari.unsa.edu.pe/?page_id=42', 0, 'page', '', 0),
(43, 1, '2022-05-18 12:13:22', '2022-05-18 17:13:22', '', 'Orientación de uso de la Supercomputadora Inkari', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2022-05-18 12:13:22', '2022-05-18 17:13:22', '', 42, 'http://inkari.unsa.edu.pe/?p=43', 0, 'revision', '', 0),
(44, 1, '2022-05-18 15:37:03', '2022-05-18 20:37:03', '', 'Introducción al ambiente Linux', '', 'publish', 'closed', 'closed', '', 'segundo-curso-linux', '', '', '2022-05-18 15:37:42', '2022-05-18 20:37:42', '', 0, 'http://inkari.unsa.edu.pe/?page_id=44', 0, 'page', '', 0),
(45, 1, '2022-05-18 15:37:03', '2022-05-18 20:37:03', '', 'Introducción al ambiente Linux', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2022-05-18 15:37:03', '2022-05-18 20:37:03', '', 44, 'http://inkari.unsa.edu.pe/?p=45', 0, 'revision', '', 0),
(46, 1, '2022-05-20 14:34:46', '2022-05-20 19:34:46', '', 'Reportes internos', '', 'publish', 'closed', 'closed', 'iaapp', 'reportes-internos', '', '', '2022-05-20 17:03:51', '2022-05-20 22:03:51', '', 0, 'http://inkari.unsa.edu.pe/?page_id=46', 0, 'page', '', 0),
(47, 1, '2022-05-20 14:31:18', '2022-05-20 19:31:18', '{\"version\":2,\"isGlobalStylesUserThemeJSON\":true}', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-tema_inkari', '', '', '2022-05-20 14:31:18', '2022-05-20 19:31:18', '', 0, 'http://inkari.unsa.edu.pe/wp-global-styles-tema_inkari/', 0, 'wp_global_styles', '', 0),
(48, 1, '2022-05-20 14:34:46', '2022-05-20 19:34:46', '', 'Reportes internos', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2022-05-20 14:34:46', '2022-05-20 19:34:46', '', 46, 'http://inkari.unsa.edu.pe/?p=48', 0, 'revision', '', 0),
(53, 1, '2022-12-27 21:00:53', '2022-12-28 02:00:53', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-12-27 21:00:53', '2022-12-28 02:00:53', '', 1, 'http://inkari.unsa.edu.pe/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-01-10 09:55:25', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-01-10 09:55:25', '0000-00-00 00:00:00', '', 0, 'http://inkari.unsa.edu.pe/?p=54', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(55, 1, '2023-01-10 09:56:27', '2023-01-10 14:56:27', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://inkari.unsa.edu.pe.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentarios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Multimedia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenido incrustado de otros sitios web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes pueden ser revisados por un servicio de detección automática de spam.</p><!-- /wp:paragraph -->', 'Política de Privacidad', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-01-10 09:56:27', '2023-01-10 14:56:27', '', 3, 'http://inkari.unsa.edu.pe/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-01-10 09:56:45', '2023-01-10 14:56:45', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://inkari.unsa.edu.pe/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-01-10 09:56:45', '2023-01-10 14:56:45', '', 2, 'http://inkari.unsa.edu.pe/?p=56', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Main', 'main', 0),
(3, 'tema_inkari', 'tema_inkari', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(47, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ronald'),
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
(17, 1, 'wp_dashboard_quick_press_last_post_id', '54'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.25.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1638982546'),
(24, 1, 'session_tokens', 'a:1:{s:64:\"e778f28f7a450201b5643e5cdd88d49d3a2cc5bb75783981d6b3362645a52029\";a:4:{s:10:\"expiration\";i:1673535324;s:2:\"ip\";s:10:\"172.25.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1673362524;}}'),
(25, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:19:\"dashboard_right_now\";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(27, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:16:\"discussion-panel\";i:3;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-01-10T15:14:20.022Z\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ronald', '$P$Bj1gqMAjVSHrgYHqRCPPwLT2T1UOID0', 'ronald', 'inkari.unsa@gmail.com', 'http://localhost/inkari', '2021-12-08 15:48:15', '', 0, 'ronald');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2214426;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
