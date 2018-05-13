-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 13 2018 г., 14:55
-- Версия сервера: 5.7.19
-- Версия PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `oils`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-23 22:34:42', '2018-04-23 19:34:42', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 132, 'WooCommerce', '', '', '', '2018-05-13 14:35:53', '2018-05-13 11:35:53', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 132, 'WooCommerce', '', '', '', '2018-05-13 14:35:53', '2018-05-13 11:35:53', 'Запасы FULLTECH 10W-60 - 4л (#124)<span class=\"description\"></span> уменьшены с 500 до 499.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://oils', 'yes'),
(2, 'home', 'http://oils', 'yes'),
(3, 'blogname', 'oils', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'polesskyvlad@gmail.com', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:15:{i:0;s:21:\"polylang/polylang.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:37:\"ajax-search-lite/ajax-search-lite.php\";i:3;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:33:\"duplicate-post/duplicate-post.php\";i:6;s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";i:7;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:8;s:25:\"relevanssi/relevanssi.php\";i:9;s:23:\"rustolat/rus-to-lat.php\";i:10;s:27:\"svg-support/svg-support.php\";i:11;s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";i:12;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:13;s:27:\"woocommerce/woocommerce.php\";i:14;s:35:\"wp-sitemap-page/wp-sitemap-page.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'oils', 'yes'),
(41, 'stylesheet', 'oils', 'yes'),
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
(81, 'uninstall_plugins', 'a:2:{s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";a:2:{i:0;s:25:\"MW_Polylang_Theme_Strings\";i:1;s:9:\"Uninstall\";}s:27:\"svg-support/svg-support.php\";s:22:\"bodhi_svgs_deactivated\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"nav_menu-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'nonce_key', '3z3-86+34!AJ4z-kCon0M6.o+0{30GL>u78TT4nlZc:V}OnS 1q>~i!?B/Ocx[-H', 'no'),
(108, 'nonce_salt', '8-wn[DUY-Sd^S~VSzZh^ B^A /]ir~jkHZ.&SteB #?$#MxU{unV`~^~*fJ{-jmX', 'no'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:11;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:10:{i:1526213822;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1526234403;a:2:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1526240086;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1526240368;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1526240369;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1526240390;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1526242693;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1526245200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1528156800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1524514574;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(120, 'auth_key', 'Y,;gy?6njA]_-mQM>wA@D-lySIHi@1~G&[cxWz.kk/YePIg1`iTJo4mG6+&$3<|p', 'no'),
(121, 'auth_salt', 'a)UVSz*qGdDWP94__hcLETK*&}%0B8d/O0?l(+iJ`>&r97UB.AQL5!Hw&9zhjvU[', 'no'),
(122, 'logged_in_key', 'm=NmJAUa*wyXxJU^g cw0e~S%InrRYoYtKr6{aR^ht)>/{~<=B =,KIh+$[c D8l', 'no'),
(123, 'logged_in_salt', 'O!gELoVn#Gb!h^~D:U| .vZ*Y)A NP~xg;3lIu&hJsJj_ioH3&E87mp|E=^0u+Mf', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(134, 'current_theme', 'Twenty Sixteen/oils', 'yes'),
(135, 'theme_mods_oils', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"main-menu\";i:3;s:11:\"footer_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(136, 'theme_switched', '', 'yes'),
(151, 'recently_activated', 'a:1:{s:36:\"google-sitemap-generator/sitemap.php\";i:1525974527;}', 'yes'),
(152, 'acf_version', '5.5.9', 'yes'),
(214, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(314, '_site_transient_timeout_browser_a6ac7bff18fe0198c0d41bba47e744f6', '1526579114', 'no'),
(315, '_site_transient_browser_a6ac7bff18fe0198c0d41bba47e744f6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"66.0.3359.139\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(332, 'asl_options', 'a:126:{s:5:\"theme\";s:10:\"simple-red\";s:20:\"override_search_form\";i:0;s:24:\"override_woo_search_form\";i:0;s:13:\"keyword_logic\";s:2:\"OR\";s:23:\"trigger_on_facet_change\";i:1;s:17:\"redirect_click_to\";s:11:\"ajax_search\";s:17:\"redirect_enter_to\";s:11:\"ajax_search\";s:21:\"click_action_location\";s:4:\"same\";s:22:\"return_action_location\";s:4:\"same\";s:19:\"custom_redirect_url\";s:11:\"?s={phrase}\";s:13:\"triggerontype\";i:1;s:13:\"searchinposts\";i:1;s:13:\"searchinpages\";i:1;s:11:\"customtypes\";s:0:\"\";s:13:\"searchintitle\";i:1;s:15:\"searchincontent\";i:1;s:15:\"searchinexcerpt\";i:1;s:20:\"search_in_permalinks\";i:0;s:13:\"search_all_cf\";i:0;s:12:\"customfields\";s:0:\"\";s:24:\"override_default_results\";i:0;s:15:\"override_method\";s:3:\"get\";s:9:\"exactonly\";i:0;s:13:\"searchinterms\";i:0;s:9:\"charcount\";i:0;s:10:\"maxresults\";i:10;s:10:\"itemscount\";i:4;s:16:\"resultitemheight\";s:4:\"70px\";s:15:\"orderby_primary\";s:14:\"relevance DESC\";s:17:\"orderby_secondary\";s:9:\"date DESC\";s:11:\"show_images\";i:1;s:18:\"image_transparency\";i:1;s:14:\"image_bg_color\";s:7:\"#FFFFFF\";s:11:\"image_width\";i:70;s:12:\"image_height\";i:70;s:19:\"image_crop_location\";s:1:\"c\";s:27:\"image_crop_location_selects\";a:9:{i:0;a:2:{s:6:\"option\";s:13:\"In the center\";s:5:\"value\";s:1:\"c\";}i:1;a:2:{s:6:\"option\";s:9:\"Align top\";s:5:\"value\";s:1:\"t\";}i:2;a:2:{s:6:\"option\";s:15:\"Align top right\";s:5:\"value\";s:2:\"tr\";}i:3;a:2:{s:6:\"option\";s:14:\"Align top left\";s:5:\"value\";s:2:\"tl\";}i:4;a:2:{s:6:\"option\";s:12:\"Align bottom\";s:5:\"value\";s:1:\"b\";}i:5;a:2:{s:6:\"option\";s:18:\"Align bottom right\";s:5:\"value\";s:2:\"br\";}i:6;a:2:{s:6:\"option\";s:17:\"Align bottom left\";s:5:\"value\";s:2:\"bl\";}i:7;a:2:{s:6:\"option\";s:10:\"Align left\";s:5:\"value\";s:1:\"l\";}i:8;a:2:{s:6:\"option\";s:11:\"Align right\";s:5:\"value\";s:1:\"r\";}}s:13:\"image_sources\";a:7:{i:0;a:2:{s:6:\"option\";s:14:\"Featured image\";s:5:\"value\";s:8:\"featured\";}i:1;a:2:{s:6:\"option\";s:12:\"Post Content\";s:5:\"value\";s:7:\"content\";}i:2;a:2:{s:6:\"option\";s:12:\"Post Excerpt\";s:5:\"value\";s:7:\"excerpt\";}i:3;a:2:{s:6:\"option\";s:12:\"Custom field\";s:5:\"value\";s:6:\"custom\";}i:4;a:2:{s:6:\"option\";s:15:\"Page Screenshot\";s:5:\"value\";s:10:\"screenshot\";}i:5;a:2:{s:6:\"option\";s:13:\"Default image\";s:5:\"value\";s:7:\"default\";}i:6;a:2:{s:6:\"option\";s:8:\"Disabled\";s:5:\"value\";s:8:\"disabled\";}}s:13:\"image_source1\";s:8:\"featured\";s:13:\"image_source2\";s:7:\"content\";s:13:\"image_source3\";s:7:\"excerpt\";s:13:\"image_source4\";s:6:\"custom\";s:13:\"image_source5\";s:7:\"default\";s:13:\"image_default\";s:63:\"http://oils/wp-content/plugins/ajax-search-lite/img/default.jpg\";s:21:\"image_source_featured\";s:8:\"original\";s:18:\"image_custom_field\";s:0:\"\";s:12:\"use_timthumb\";i:1;s:29:\"show_frontend_search_settings\";i:1;s:16:\"showexactmatches\";i:1;s:17:\"showsearchinposts\";i:1;s:17:\"showsearchinpages\";i:1;s:17:\"showsearchintitle\";i:1;s:19:\"showsearchincontent\";i:1;s:15:\"showcustomtypes\";s:0:\"\";s:20:\"showsearchincomments\";i:1;s:19:\"showsearchinexcerpt\";i:1;s:19:\"showsearchinbpusers\";i:0;s:20:\"showsearchinbpgroups\";i:0;s:20:\"showsearchinbpforums\";i:0;s:16:\"exactmatchestext\";s:18:\"Exact matches only\";s:17:\"searchinpoststext\";s:15:\"Search in posts\";s:17:\"searchinpagestext\";s:15:\"Search in pages\";s:17:\"searchintitletext\";s:15:\"Search in title\";s:19:\"searchincontenttext\";s:17:\"Search in content\";s:20:\"searchincommentstext\";s:18:\"Search in comments\";s:19:\"searchinexcerpttext\";s:17:\"Search in excerpt\";s:19:\"searchinbpuserstext\";s:15:\"Search in users\";s:20:\"searchinbpgroupstext\";s:16:\"Search in groups\";s:20:\"searchinbpforumstext\";s:16:\"Search in forums\";s:22:\"showsearchincategories\";i:1;s:17:\"showuncategorised\";i:1;s:20:\"exsearchincategories\";s:0:\"\";s:26:\"exsearchincategoriesheight\";i:200;s:22:\"showsearchintaxonomies\";i:1;s:9:\"showterms\";s:0:\"\";s:23:\"showseparatefilterboxes\";i:1;s:24:\"exsearchintaxonomiestext\";s:9:\"Filter by\";s:24:\"exsearchincategoriestext\";s:20:\"Filter by Categories\";s:9:\"box_width\";s:4:\"100%\";s:10:\"box_margin\";s:22:\"||0px||0px||0px||0px||\";s:15:\"resultstype_def\";a:4:{i:0;a:2:{s:6:\"option\";s:16:\"Vertical Results\";s:5:\"value\";s:8:\"vertical\";}i:1;a:2:{s:6:\"option\";s:18:\"Horizontal Results\";s:5:\"value\";s:10:\"horizontal\";}i:2;a:2:{s:6:\"option\";s:16:\"Isotopic Results\";s:5:\"value\";s:8:\"isotopic\";}i:3;a:2:{s:6:\"option\";s:22:\"Polaroid style Results\";s:5:\"value\";s:8:\"polaroid\";}}s:11:\"resultstype\";s:8:\"vertical\";s:19:\"resultsposition_def\";a:2:{i:0;a:2:{s:6:\"option\";s:20:\"Hover - over content\";s:5:\"value\";s:5:\"hover\";}i:1;a:2:{s:6:\"option\";s:22:\"Block - pushes content\";s:5:\"value\";s:5:\"block\";}}s:15:\"resultsposition\";s:5:\"hover\";s:16:\"resultsmargintop\";s:4:\"12px\";s:16:\"v_res_max_height\";s:4:\"none\";s:17:\"defaultsearchtext\";s:13:\"Search here..\";s:15:\"showmoreresults\";i:0;s:19:\"showmoreresultstext\";s:15:\"More results...\";s:12:\"showmorefont\";s:151:\"font-weight:normal;font-family:--g--Open Sans;color:rgba(5, 94, 148, 1);font-size:12px;line-height:15px;text-shadow:0px 0px 0px rgba(255, 255, 255, 0);\";s:19:\"results_click_blank\";i:0;s:17:\"scroll_to_results\";i:0;s:19:\"resultareaclickable\";i:1;s:23:\"close_on_document_click\";i:1;s:15:\"show_close_icon\";i:1;s:10:\"showauthor\";i:0;s:8:\"showdate\";i:0;s:15:\"showdescription\";i:1;s:17:\"descriptionlength\";i:100;s:19:\"description_context\";i:0;s:13:\"noresultstext\";s:11:\"No results!\";s:14:\"didyoumeantext\";s:13:\"Did you mean:\";s:12:\"kw_highlight\";i:0;s:24:\"kw_highlight_whole_words\";i:1;s:15:\"highlight_color\";s:7:\"#d9312b\";s:18:\"highlight_bg_color\";s:4:\"#eee\";s:12:\"autocomplete\";i:1;s:14:\"kw_suggestions\";i:1;s:9:\"kw_length\";i:60;s:8:\"kw_count\";i:10;s:14:\"kw_google_lang\";s:2:\"en\";s:13:\"kw_exceptions\";s:0:\"\";s:12:\"shortcode_op\";s:6:\"remove\";s:16:\"striptagsexclude\";s:0:\"\";s:12:\"runshortcode\";i:1;s:14:\"stripshortcode\";i:0;s:19:\"pageswithcategories\";i:0;s:10:\"titlefield\";i:0;s:13:\"titlefield_cf\";s:0:\"\";s:16:\"descriptionfield\";i:0;s:19:\"descriptionfield_cf\";s:0:\"\";s:18:\"exclude_woo_hidden\";i:1;s:17:\"excludecategories\";s:0:\"\";s:12:\"excludeposts\";s:0:\"\";s:18:\"wpml_compatibility\";i:1;s:22:\"polylang_compatibility\";i:1;}', 'yes'),
(333, 'asl_version', '4724', 'yes'),
(334, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1525985275;s:7:\"version\";s:5:\"4.9.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(335, 'widget_bcn_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(336, 'widget_ajaxsearchlitewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(337, 'duplicate_post_copytitle', '1', 'yes'),
(338, 'duplicate_post_copydate', '0', 'yes'),
(339, 'duplicate_post_copystatus', '0', 'yes'),
(340, 'duplicate_post_copyslug', '1', 'yes'),
(341, 'duplicate_post_copyexcerpt', '1', 'yes'),
(342, 'duplicate_post_copycontent', '1', 'yes'),
(343, 'duplicate_post_copythumbnail', '1', 'yes'),
(344, 'duplicate_post_copytemplate', '1', 'yes'),
(345, 'duplicate_post_copyformat', '1', 'yes'),
(346, 'duplicate_post_copyauthor', '0', 'yes'),
(347, 'duplicate_post_copypassword', '0', 'yes'),
(348, 'duplicate_post_copyattachments', '0', 'yes'),
(349, 'duplicate_post_copychildren', '0', 'yes'),
(350, 'duplicate_post_copycomments', '0', 'yes'),
(351, 'duplicate_post_copymenuorder', '1', 'yes'),
(352, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(353, 'duplicate_post_blacklist', '', 'yes'),
(354, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(355, 'duplicate_post_show_row', '1', 'yes'),
(356, 'duplicate_post_show_adminbar', '1', 'yes'),
(357, 'duplicate_post_show_submitbox', '1', 'yes'),
(358, 'duplicate_post_show_bulkactions', '1', 'yes'),
(362, 'polylang', 'a:15:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"2.3.5\";s:16:\"previous_version\";s:5:\"2.2.7\";s:12:\"default_lang\";s:2:\"ru\";s:9:\"nav_menus\";a:1:{s:4:\"oils\";a:2:{s:9:\"main-menu\";a:2:{s:2:\"ru\";i:3;s:2:\"uk\";i:0;}s:11:\"footer_menu\";a:2:{s:2:\"ru\";i:3;s:2:\"uk\";i:0;}}}}', 'yes'),
(363, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(364, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(365, 'mw_polylang_strings_oils_data', 'a:2:{s:4:\"name\";s:0:\"\";s:7:\"strings\";a:3:{i:0;s:16:\"Product category\";i:1;s:31:\"Which product is right for you?\";i:2;s:10:\"Categories\";}}', 'yes'),
(366, 'relevanssi_content_boost', '1', 'yes'),
(367, 'relevanssi_title_boost', '5', 'yes'),
(368, 'relevanssi_comment_boost', '0.75', 'yes'),
(369, 'relevanssi_index_post_types', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(370, 'relevanssi_admin_search', 'off', 'yes'),
(371, 'relevanssi_highlight', 'strong', 'yes'),
(372, 'relevanssi_txt_col', '#ff0000', 'yes'),
(373, 'relevanssi_bg_col', '#ffaf75', 'yes'),
(374, 'relevanssi_css', 'text-decoration: underline; text-color: #ff0000', 'yes'),
(375, 'relevanssi_class', 'relevanssi-query-term', 'yes'),
(376, 'relevanssi_excerpts', 'on', 'yes'),
(377, 'relevanssi_excerpt_length', '30', 'yes'),
(378, 'relevanssi_excerpt_type', 'words', 'yes'),
(379, 'relevanssi_excerpt_allowable_tags', '', 'yes'),
(380, 'relevanssi_excerpt_custom_fields', 'off', 'yes'),
(381, 'relevanssi_log_queries', 'off', 'yes'),
(382, 'relevanssi_log_queries_with_ip', 'off', 'yes'),
(383, 'relevanssi_cat', '0', 'yes'),
(384, 'relevanssi_excat', '0', 'yes'),
(385, 'relevanssi_extag', '0', 'yes'),
(386, 'relevanssi_index_fields', '', 'yes'),
(387, 'relevanssi_exclude_posts', '', 'yes'),
(388, 'relevanssi_hilite_title', '', 'yes'),
(389, 'relevanssi_highlight_docs', 'off', 'yes'),
(390, 'relevanssi_highlight_docs_external', 'off', 'yes'),
(391, 'relevanssi_highlight_comments', 'off', 'yes'),
(392, 'relevanssi_index_comments', 'none', 'yes'),
(393, 'relevanssi_show_matches', '', 'yes'),
(394, 'relevanssi_show_matches_text', '(Search hits: %body% in body, %title% in title, %categories% in categories, %tags% in tags, %taxonomies% in other taxonomies, %comments% in comments. Score: %score%)', 'yes'),
(395, 'relevanssi_fuzzy', 'sometimes', 'yes'),
(396, 'relevanssi_indexed', '', 'yes'),
(397, 'relevanssi_expand_shortcodes', 'on', 'yes'),
(398, 'relevanssi_index_author', '', 'yes'),
(399, 'relevanssi_implicit_operator', 'OR', 'yes'),
(400, 'relevanssi_omit_from_logs', '', 'yes'),
(401, 'relevanssi_synonyms', '', 'yes'),
(402, 'relevanssi_index_excerpt', 'off', 'yes'),
(403, 'relevanssi_index_limit', '500', 'yes'),
(404, 'relevanssi_disable_or_fallback', 'off', 'yes'),
(405, 'relevanssi_respect_exclude', 'on', 'yes'),
(406, 'relevanssi_min_word_length', '3', 'yes'),
(407, 'relevanssi_throttle', 'on', 'yes'),
(408, 'relevanssi_throttle_limit', '500', 'yes'),
(409, 'relevanssi_db_version', '5', 'yes'),
(410, 'relevanssi_wpml_only_current', 'on', 'yes'),
(411, 'relevanssi_polylang_all_languages', 'off', 'yes'),
(412, 'relevanssi_word_boundaries', 'on', 'yes'),
(413, 'relevanssi_default_orderby', 'relevance', 'yes'),
(414, 'relevanssi_punctuation', 'a:3:{s:6:\"quotes\";s:7:\"replace\";s:7:\"hyphens\";s:7:\"replace\";s:10:\"ampersands\";s:7:\"replace\";}', 'yes'),
(415, 'bodhi_svgs_plugin_version', '2.3.15', 'yes'),
(416, 'tadv_settings', 'a:6:{s:7:\"options\";s:15:\"menubar,advlist\";s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:7:\"plugins\";s:104:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv\";}', 'yes'),
(417, 'tadv_admin_settings', 'a:1:{s:7:\"options\";a:0:{}}', 'yes'),
(418, 'tadv_version', '4000', 'yes'),
(419, 'wsp_exclude_cpt_archive', '1', 'yes'),
(420, 'wsp_exclude_cpt_author', '1', 'yes'),
(421, 'wsp_version_key', '1.3.0', 'yes'),
(422, 'wsp_posts_by_category', '<a href=\"{permalink}\">{title}</a>', 'yes'),
(423, 'relevanssi_doc_count', '8', 'yes'),
(424, 'bodhi_svgs_admin_notice_dismissed', '0', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(425, 'rewrite_rules', 'a:269:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:52:\"(uk)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(uk)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(uk)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"(uk)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:37:\"(uk)/category/(.+?)/wc-api(/(.*))?/?$\";s:71:\"index.php?lang=$matches[1]&category_name=$matches[2]&wc-api=$matches[4]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:22:\"(uk)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(uk)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"(uk)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"(uk)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"(uk)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:34:\"(uk)/tag/([^/]+)/wc-api(/(.*))?/?$\";s:61:\"index.php?lang=$matches[1]&tag=$matches[2]&wc-api=$matches[4]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:19:\"(uk)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(uk)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(uk)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&post_format=$matches[1]&feed=$matches[2]\";s:26:\"(uk)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=ru&post_format=$matches[1]&embed=true\";s:38:\"(uk)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=ru&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(uk)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=ru&post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:54:\"vyberite-obem/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?pa_vyberite-obem=$matches[1]&feed=$matches[2]\";s:49:\"vyberite-obem/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?pa_vyberite-obem=$matches[1]&feed=$matches[2]\";s:30:\"vyberite-obem/([^/]+)/embed/?$\";s:49:\"index.php?pa_vyberite-obem=$matches[1]&embed=true\";s:42:\"vyberite-obem/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?pa_vyberite-obem=$matches[1]&paged=$matches[2]\";s:24:\"vyberite-obem/([^/]+)/?$\";s:38:\"index.php?pa_vyberite-obem=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(uk)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=ru&&feed=$matches[1]\";s:32:\"(uk)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=ru&&feed=$matches[1]\";s:13:\"(uk)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=ru&&embed=true\";s:25:\"(uk)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=ru&&paged=$matches[1]\";s:32:\"(uk)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?lang=$matches[1]&&page_id=5&cpage=$matches[2]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:46:\"index.php?lang=ru&&page_id=5&cpage=$matches[1]\";s:22:\"(uk)/wc-api(/(.*))?/?$\";s:46:\"index.php?lang=$matches[1]&&wc-api=$matches[3]\";s:17:\"wc-api(/(.*))?/?$\";s:37:\"index.php?lang=ru&&wc-api=$matches[2]\";s:7:\"(uk)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(uk)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=ru&&feed=$matches[1]&withcomments=1\";s:41:\"(uk)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=ru&&feed=$matches[1]&withcomments=1\";s:22:\"(uk)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=ru&&embed=true\";s:31:\"(uk)/comments/wc-api(/(.*))?/?$\";s:46:\"index.php?lang=$matches[1]&&wc-api=$matches[3]\";s:26:\"comments/wc-api(/(.*))?/?$\";s:37:\"index.php?lang=ru&&wc-api=$matches[2]\";s:49:\"(uk)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=ru&s=$matches[1]&feed=$matches[2]\";s:44:\"(uk)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=ru&s=$matches[1]&feed=$matches[2]\";s:25:\"(uk)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=ru&s=$matches[1]&embed=true\";s:37:\"(uk)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=ru&s=$matches[1]&paged=$matches[2]\";s:34:\"(uk)/search/(.+)/wc-api(/(.*))?/?$\";s:59:\"index.php?lang=$matches[1]&s=$matches[2]&wc-api=$matches[4]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:50:\"index.php?lang=ru&s=$matches[1]&wc-api=$matches[3]\";s:19:\"(uk)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=ru&s=$matches[1]\";s:52:\"(uk)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(uk)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=ru&author_name=$matches[1]&feed=$matches[2]\";s:28:\"(uk)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=ru&author_name=$matches[1]&embed=true\";s:40:\"(uk)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=ru&author_name=$matches[1]&paged=$matches[2]\";s:37:\"(uk)/author/([^/]+)/wc-api(/(.*))?/?$\";s:69:\"index.php?lang=$matches[1]&author_name=$matches[2]&wc-api=$matches[4]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:60:\"index.php?lang=ru&author_name=$matches[1]&wc-api=$matches[3]\";s:22:\"(uk)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=ru&author_name=$matches[1]\";s:74:\"(uk)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(uk)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"(uk)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:82:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"(uk)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:89:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:59:\"(uk)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:99:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&wc-api=$matches[6]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:90:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:44:\"(uk)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:71:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(uk)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(uk)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:72:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"(uk)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:66:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"(uk)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:73:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:46:\"(uk)/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:83:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&wc-api=$matches[5]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:74:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:31:\"(uk)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:55:\"index.php?lang=ru&year=$matches[1]&monthnum=$matches[2]\";s:48:\"(uk)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=ru&year=$matches[1]&feed=$matches[2]\";s:43:\"(uk)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?lang=ru&year=$matches[1]&feed=$matches[2]\";s:24:\"(uk)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:45:\"index.php?lang=ru&year=$matches[1]&embed=true\";s:36:\"(uk)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:52:\"index.php?lang=ru&year=$matches[1]&paged=$matches[2]\";s:33:\"(uk)/([0-9]{4})/wc-api(/(.*))?/?$\";s:62:\"index.php?lang=$matches[1]&year=$matches[2]&wc-api=$matches[4]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:53:\"index.php?lang=ru&year=$matches[1]&wc-api=$matches[3]\";s:18:\"(uk)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:34:\"index.php?lang=ru&year=$matches[1]\";s:32:\"(uk)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(uk)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(uk)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(uk)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(uk)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(uk)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(uk)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:25:\"(uk)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:45:\"(uk)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:40:\"(uk)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:33:\"(uk)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:40:\"(uk)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:30:\"(uk)/(.?.+?)/wc-api(/(.*))?/?$\";s:66:\"index.php?lang=$matches[1]&pagename=$matches[2]&wc-api=$matches[4]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:33:\"(uk)/(.?.+?)/order-pay(/(.*))?/?$\";s:69:\"index.php?lang=$matches[1]&pagename=$matches[2]&order-pay=$matches[4]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:38:\"(uk)/(.?.+?)/order-received(/(.*))?/?$\";s:74:\"index.php?lang=$matches[1]&pagename=$matches[2]&order-received=$matches[4]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:30:\"(uk)/(.?.+?)/orders(/(.*))?/?$\";s:66:\"index.php?lang=$matches[1]&pagename=$matches[2]&orders=$matches[4]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:34:\"(uk)/(.?.+?)/view-order(/(.*))?/?$\";s:70:\"index.php?lang=$matches[1]&pagename=$matches[2]&view-order=$matches[4]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:33:\"(uk)/(.?.+?)/downloads(/(.*))?/?$\";s:69:\"index.php?lang=$matches[1]&pagename=$matches[2]&downloads=$matches[4]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:36:\"(uk)/(.?.+?)/edit-account(/(.*))?/?$\";s:72:\"index.php?lang=$matches[1]&pagename=$matches[2]&edit-account=$matches[4]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:36:\"(uk)/(.?.+?)/edit-address(/(.*))?/?$\";s:72:\"index.php?lang=$matches[1]&pagename=$matches[2]&edit-address=$matches[4]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:39:\"(uk)/(.?.+?)/payment-methods(/(.*))?/?$\";s:75:\"index.php?lang=$matches[1]&pagename=$matches[2]&payment-methods=$matches[4]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:37:\"(uk)/(.?.+?)/lost-password(/(.*))?/?$\";s:73:\"index.php?lang=$matches[1]&pagename=$matches[2]&lost-password=$matches[4]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:39:\"(uk)/(.?.+?)/customer-logout(/(.*))?/?$\";s:75:\"index.php?lang=$matches[1]&pagename=$matches[2]&customer-logout=$matches[4]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:42:\"(uk)/(.?.+?)/add-payment-method(/(.*))?/?$\";s:78:\"index.php?lang=$matches[1]&pagename=$matches[2]&add-payment-method=$matches[4]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:45:\"(uk)/(.?.+?)/delete-payment-method(/(.*))?/?$\";s:81:\"index.php?lang=$matches[1]&pagename=$matches[2]&delete-payment-method=$matches[4]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:50:\"(uk)/(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:86:\"index.php?lang=$matches[1]&pagename=$matches[2]&set-default-payment-method=$matches[4]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:36:\"(uk)/.?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:68:\"index.php?lang=$matches[1]&attachment=$matches[2]&wc-api=$matches[4]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"(uk)/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:68:\"index.php?lang=$matches[1]&attachment=$matches[2]&wc-api=$matches[4]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"(uk)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:32:\"(uk)/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(uk)/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(uk)/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(uk)/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(uk)/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(uk)/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(uk)/([^/]+)/embed/?$\";s:54:\"index.php?lang=$matches[1]&name=$matches[2]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:25:\"(uk)/([^/]+)/trackback/?$\";s:48:\"index.php?lang=$matches[1]&name=$matches[2]&tb=1\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:45:\"(uk)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:40:\"(uk)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:33:\"(uk)/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:40:\"(uk)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:30:\"(uk)/([^/]+)/wc-api(/(.*))?/?$\";s:62:\"index.php?lang=$matches[1]&name=$matches[2]&wc-api=$matches[4]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:36:\"(uk)/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:68:\"index.php?lang=$matches[1]&attachment=$matches[2]&wc-api=$matches[4]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"(uk)/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:68:\"index.php?lang=$matches[1]&attachment=$matches[2]&wc-api=$matches[4]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"(uk)/([^/]+)(?:/([0-9]+))?/?$\";s:60:\"index.php?lang=$matches[1]&name=$matches[2]&page=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:21:\"(uk)/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"(uk)/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"(uk)/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"(uk)/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"(uk)/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"(uk)/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(428, 'asl_debug_data', 'a:1:{s:11:\"asl_options\";a:126:{s:5:\"theme\";s:10:\"simple-red\";s:20:\"override_search_form\";i:0;s:24:\"override_woo_search_form\";i:0;s:13:\"keyword_logic\";s:2:\"OR\";s:23:\"trigger_on_facet_change\";i:1;s:17:\"redirect_click_to\";s:11:\"ajax_search\";s:17:\"redirect_enter_to\";s:11:\"ajax_search\";s:21:\"click_action_location\";s:4:\"same\";s:22:\"return_action_location\";s:4:\"same\";s:19:\"custom_redirect_url\";s:11:\"?s={phrase}\";s:13:\"triggerontype\";i:1;s:13:\"searchinposts\";i:1;s:13:\"searchinpages\";i:1;s:11:\"customtypes\";s:0:\"\";s:13:\"searchintitle\";i:1;s:15:\"searchincontent\";i:1;s:15:\"searchinexcerpt\";i:1;s:20:\"search_in_permalinks\";i:0;s:13:\"search_all_cf\";i:0;s:12:\"customfields\";s:0:\"\";s:24:\"override_default_results\";i:0;s:15:\"override_method\";s:3:\"get\";s:9:\"exactonly\";i:0;s:13:\"searchinterms\";i:0;s:9:\"charcount\";i:0;s:10:\"maxresults\";i:10;s:10:\"itemscount\";i:4;s:16:\"resultitemheight\";s:4:\"70px\";s:15:\"orderby_primary\";s:14:\"relevance DESC\";s:17:\"orderby_secondary\";s:9:\"date DESC\";s:11:\"show_images\";i:1;s:18:\"image_transparency\";i:1;s:14:\"image_bg_color\";s:7:\"#FFFFFF\";s:11:\"image_width\";i:70;s:12:\"image_height\";i:70;s:19:\"image_crop_location\";s:1:\"c\";s:27:\"image_crop_location_selects\";a:9:{i:0;a:2:{s:6:\"option\";s:13:\"In the center\";s:5:\"value\";s:1:\"c\";}i:1;a:2:{s:6:\"option\";s:9:\"Align top\";s:5:\"value\";s:1:\"t\";}i:2;a:2:{s:6:\"option\";s:15:\"Align top right\";s:5:\"value\";s:2:\"tr\";}i:3;a:2:{s:6:\"option\";s:14:\"Align top left\";s:5:\"value\";s:2:\"tl\";}i:4;a:2:{s:6:\"option\";s:12:\"Align bottom\";s:5:\"value\";s:1:\"b\";}i:5;a:2:{s:6:\"option\";s:18:\"Align bottom right\";s:5:\"value\";s:2:\"br\";}i:6;a:2:{s:6:\"option\";s:17:\"Align bottom left\";s:5:\"value\";s:2:\"bl\";}i:7;a:2:{s:6:\"option\";s:10:\"Align left\";s:5:\"value\";s:1:\"l\";}i:8;a:2:{s:6:\"option\";s:11:\"Align right\";s:5:\"value\";s:1:\"r\";}}s:13:\"image_sources\";a:7:{i:0;a:2:{s:6:\"option\";s:14:\"Featured image\";s:5:\"value\";s:8:\"featured\";}i:1;a:2:{s:6:\"option\";s:12:\"Post Content\";s:5:\"value\";s:7:\"content\";}i:2;a:2:{s:6:\"option\";s:12:\"Post Excerpt\";s:5:\"value\";s:7:\"excerpt\";}i:3;a:2:{s:6:\"option\";s:12:\"Custom field\";s:5:\"value\";s:6:\"custom\";}i:4;a:2:{s:6:\"option\";s:15:\"Page Screenshot\";s:5:\"value\";s:10:\"screenshot\";}i:5;a:2:{s:6:\"option\";s:13:\"Default image\";s:5:\"value\";s:7:\"default\";}i:6;a:2:{s:6:\"option\";s:8:\"Disabled\";s:5:\"value\";s:8:\"disabled\";}}s:13:\"image_source1\";s:8:\"featured\";s:13:\"image_source2\";s:7:\"content\";s:13:\"image_source3\";s:7:\"excerpt\";s:13:\"image_source4\";s:6:\"custom\";s:13:\"image_source5\";s:7:\"default\";s:13:\"image_default\";s:63:\"http://oils/wp-content/plugins/ajax-search-lite/img/default.jpg\";s:21:\"image_source_featured\";s:8:\"original\";s:18:\"image_custom_field\";s:0:\"\";s:12:\"use_timthumb\";i:1;s:29:\"show_frontend_search_settings\";i:1;s:16:\"showexactmatches\";i:1;s:17:\"showsearchinposts\";i:1;s:17:\"showsearchinpages\";i:1;s:17:\"showsearchintitle\";i:1;s:19:\"showsearchincontent\";i:1;s:15:\"showcustomtypes\";s:0:\"\";s:20:\"showsearchincomments\";i:1;s:19:\"showsearchinexcerpt\";i:1;s:19:\"showsearchinbpusers\";i:0;s:20:\"showsearchinbpgroups\";i:0;s:20:\"showsearchinbpforums\";i:0;s:16:\"exactmatchestext\";s:18:\"Exact matches only\";s:17:\"searchinpoststext\";s:15:\"Search in posts\";s:17:\"searchinpagestext\";s:15:\"Search in pages\";s:17:\"searchintitletext\";s:15:\"Search in title\";s:19:\"searchincontenttext\";s:17:\"Search in content\";s:20:\"searchincommentstext\";s:18:\"Search in comments\";s:19:\"searchinexcerpttext\";s:17:\"Search in excerpt\";s:19:\"searchinbpuserstext\";s:15:\"Search in users\";s:20:\"searchinbpgroupstext\";s:16:\"Search in groups\";s:20:\"searchinbpforumstext\";s:16:\"Search in forums\";s:22:\"showsearchincategories\";i:1;s:17:\"showuncategorised\";i:1;s:20:\"exsearchincategories\";s:0:\"\";s:26:\"exsearchincategoriesheight\";i:200;s:22:\"showsearchintaxonomies\";i:1;s:9:\"showterms\";s:0:\"\";s:23:\"showseparatefilterboxes\";i:1;s:24:\"exsearchintaxonomiestext\";s:9:\"Filter by\";s:24:\"exsearchincategoriestext\";s:20:\"Filter by Categories\";s:9:\"box_width\";s:4:\"100%\";s:10:\"box_margin\";s:22:\"||0px||0px||0px||0px||\";s:15:\"resultstype_def\";a:4:{i:0;a:2:{s:6:\"option\";s:16:\"Vertical Results\";s:5:\"value\";s:8:\"vertical\";}i:1;a:2:{s:6:\"option\";s:18:\"Horizontal Results\";s:5:\"value\";s:10:\"horizontal\";}i:2;a:2:{s:6:\"option\";s:16:\"Isotopic Results\";s:5:\"value\";s:8:\"isotopic\";}i:3;a:2:{s:6:\"option\";s:22:\"Polaroid style Results\";s:5:\"value\";s:8:\"polaroid\";}}s:11:\"resultstype\";s:8:\"vertical\";s:19:\"resultsposition_def\";a:2:{i:0;a:2:{s:6:\"option\";s:20:\"Hover - over content\";s:5:\"value\";s:5:\"hover\";}i:1;a:2:{s:6:\"option\";s:22:\"Block - pushes content\";s:5:\"value\";s:5:\"block\";}}s:15:\"resultsposition\";s:5:\"hover\";s:16:\"resultsmargintop\";s:4:\"12px\";s:16:\"v_res_max_height\";s:4:\"none\";s:17:\"defaultsearchtext\";s:13:\"Search here..\";s:15:\"showmoreresults\";i:0;s:19:\"showmoreresultstext\";s:15:\"More results...\";s:12:\"showmorefont\";s:151:\"font-weight:normal;font-family:--g--Open Sans;color:rgba(5, 94, 148, 1);font-size:12px;line-height:15px;text-shadow:0px 0px 0px rgba(255, 255, 255, 0);\";s:19:\"results_click_blank\";i:0;s:17:\"scroll_to_results\";i:0;s:19:\"resultareaclickable\";i:1;s:23:\"close_on_document_click\";i:1;s:15:\"show_close_icon\";i:1;s:10:\"showauthor\";i:0;s:8:\"showdate\";i:0;s:15:\"showdescription\";i:1;s:17:\"descriptionlength\";i:100;s:19:\"description_context\";i:0;s:13:\"noresultstext\";s:11:\"No results!\";s:14:\"didyoumeantext\";s:13:\"Did you mean:\";s:12:\"kw_highlight\";i:0;s:24:\"kw_highlight_whole_words\";i:1;s:15:\"highlight_color\";s:7:\"#d9312b\";s:18:\"highlight_bg_color\";s:4:\"#eee\";s:12:\"autocomplete\";i:1;s:14:\"kw_suggestions\";i:1;s:9:\"kw_length\";i:60;s:8:\"kw_count\";i:10;s:14:\"kw_google_lang\";s:2:\"en\";s:13:\"kw_exceptions\";s:0:\"\";s:12:\"shortcode_op\";s:6:\"remove\";s:16:\"striptagsexclude\";s:0:\"\";s:12:\"runshortcode\";i:1;s:14:\"stripshortcode\";i:0;s:19:\"pageswithcategories\";i:0;s:10:\"titlefield\";i:0;s:13:\"titlefield_cf\";s:0:\"\";s:16:\"descriptionfield\";i:0;s:19:\"descriptionfield_cf\";s:0:\"\";s:18:\"exclude_woo_hidden\";i:1;s:17:\"excludecategories\";s:0:\"\";s:12:\"excludeposts\";s:0:\"\";s:18:\"wpml_compatibility\";i:1;s:22:\"polylang_compatibility\";i:1;}}', 'yes'),
(430, 'duplicate_post_version', '3.2.2', 'yes'),
(431, 'duplicate_post_show_notice', '1', 'no'),
(439, 'woocommerce_store_address', 'Харьков', 'yes'),
(440, 'woocommerce_store_address_2', 'Харьков', 'yes'),
(441, 'woocommerce_store_city', 'Харьков', 'yes'),
(442, 'woocommerce_default_country', 'UA', 'yes'),
(443, 'woocommerce_store_postcode', '69874', 'yes'),
(444, 'woocommerce_allowed_countries', 'all', 'yes'),
(445, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(446, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(447, 'woocommerce_ship_to_countries', '', 'yes'),
(448, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(449, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(450, 'woocommerce_calc_taxes', 'no', 'yes'),
(451, 'woocommerce_currency', 'UAH', 'yes'),
(452, 'woocommerce_currency_pos', 'right_space', 'yes'),
(453, 'woocommerce_price_thousand_sep', ',', 'yes'),
(454, 'woocommerce_price_decimal_sep', '.', 'yes'),
(455, 'woocommerce_price_num_decimals', '2', 'yes'),
(456, 'woocommerce_shop_page_id', '96', 'yes'),
(457, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(458, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(459, 'woocommerce_weight_unit', 'kg', 'yes'),
(460, 'woocommerce_dimension_unit', 'cm', 'yes'),
(461, 'woocommerce_enable_reviews', 'no', 'yes'),
(462, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(463, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(464, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(465, 'woocommerce_review_rating_required', 'yes', 'no'),
(466, 'woocommerce_manage_stock', 'yes', 'yes'),
(467, 'woocommerce_hold_stock_minutes', '60', 'no'),
(468, 'woocommerce_notify_low_stock', 'yes', 'no'),
(469, 'woocommerce_notify_no_stock', 'yes', 'no'),
(470, 'woocommerce_stock_email_recipient', 'polesskyvlad@gmail.com', 'no'),
(471, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(472, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(473, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(474, 'woocommerce_stock_format', '', 'yes'),
(475, 'woocommerce_file_download_method', 'force', 'no'),
(476, 'woocommerce_downloads_require_login', 'no', 'no'),
(477, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(478, 'woocommerce_prices_include_tax', 'no', 'yes'),
(479, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(480, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(481, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(482, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(483, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(484, 'woocommerce_tax_display_cart', 'excl', 'no'),
(485, 'woocommerce_price_display_suffix', '', 'yes'),
(486, 'woocommerce_tax_total_display', 'itemized', 'no'),
(487, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(488, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(489, 'woocommerce_ship_to_destination', 'billing', 'no'),
(490, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(491, 'woocommerce_enable_coupons', 'no', 'yes'),
(492, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(493, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(494, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(495, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(496, 'woocommerce_cart_page_id', '97', 'yes'),
(497, 'woocommerce_checkout_page_id', '98', 'yes'),
(498, 'woocommerce_terms_page_id', '', 'no'),
(499, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(500, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(501, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(502, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(503, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(504, 'woocommerce_myaccount_page_id', '99', 'yes'),
(505, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(506, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(507, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(508, 'woocommerce_registration_generate_username', 'yes', 'no'),
(509, 'woocommerce_registration_generate_password', 'no', 'no'),
(510, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(511, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(512, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(513, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(514, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(515, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(516, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(517, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(518, 'woocommerce_email_from_name', 'oils', 'no'),
(519, 'woocommerce_email_from_address', 'polesskyvlad@gmail.com', 'no'),
(520, 'woocommerce_email_header_image', '', 'no'),
(521, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(522, 'woocommerce_email_base_color', '#96588a', 'no'),
(523, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(524, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(525, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(526, 'woocommerce_api_enabled', 'yes', 'yes'),
(527, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(528, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(529, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(532, 'default_product_cat', '25', 'yes'),
(535, 'woocommerce_version', '3.3.5', 'yes'),
(536, 'woocommerce_db_version', '3.3.5', 'yes'),
(537, 'woocommerce_admin_notices', 'a:1:{i:0;s:19:\"no_shipping_methods\";}', 'yes'),
(538, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(539, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(540, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(541, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(542, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(543, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(544, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(545, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(546, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(547, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(548, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(549, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(550, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(553, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(554, '_transient_timeout_external_ip_address_127.0.0.1', '1526580024', 'no'),
(555, '_transient_external_ip_address_127.0.0.1', '503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', 'no'),
(563, 'woocommerce_product_type', 'physical', 'yes'),
(564, 'woocommerce_sell_in_person', '1', 'yes'),
(565, 'woocommerce_allow_tracking', 'no', 'yes'),
(566, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(567, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(568, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(569, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(570, '_transient_shipping-transient-version', '1525975428', 'yes'),
(571, '_transient_timeout_wc_shipping_method_count_0_1525975428', '1528567428', 'no'),
(572, '_transient_wc_shipping_method_count_0_1525975428', '0', 'no'),
(598, 'category_children', 'a:2:{i:4;a:2:{i:0;i:9;i:1;i:10;}i:8;a:4:{i:0;i:6;i:1;i:5;i:2;i:7;i:3;i:4;}}', 'yes'),
(621, 'woocommerce_shop_page_display', 'subcategories', 'yes'),
(622, 'woocommerce_category_archive_display', 'subcategories', 'yes'),
(623, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(641, '_transient_product_query-transient-version', '1526211353', 'yes'),
(643, '_transient_product-transient-version', '1526211353', 'yes'),
(648, '_transient_timeout_wc_shipping_method_count_1_1525975428', '1528574364', 'no'),
(649, '_transient_wc_shipping_method_count_1_1525975428', '0', 'no'),
(658, 'woocommerce_catalog_columns', '3', 'yes'),
(700, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(736, '_transient_timeout_wc_product_children_121', '1528657594', 'no'),
(737, '_transient_wc_product_children_121', 'a:2:{s:3:\"all\";a:0:{}s:7:\"visible\";a:0:{}}', 'no'),
(738, '_transient_timeout_wc_var_prices_121', '1528745006', 'no'),
(739, '_transient_wc_var_prices_121', '{\"version\":\"1526150547\",\"dd0631f9a8c117376a4de5a487fafc17\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]},\"34f5d4a9b85904ba43c6c3084350f528\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]}}', 'no'),
(746, '_transient_timeout_wc_product_children_122', '1528657650', 'no'),
(747, '_transient_wc_product_children_122', 'a:2:{s:3:\"all\";a:0:{}s:7:\"visible\";a:0:{}}', 'no'),
(753, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"4\";s:14:\"attribute_name\";s:13:\"vyberite-obem\";s:15:\"attribute_label\";s:27:\"Выберите объем\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}}', 'yes'),
(758, '_transient_timeout_wc_var_prices_122', '1528745006', 'no'),
(759, '_transient_wc_var_prices_122', '{\"version\":\"1526150547\",\"dd0631f9a8c117376a4de5a487fafc17\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]},\"34f5d4a9b85904ba43c6c3084350f528\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]}}', 'no'),
(911, 'product_cat_children', 'a:2:{i:25;a:4:{i:0;i:39;i:1;i:38;i:2;i:40;i:3;i:37;}i:26;a:1:{i:0;i:45;}}', 'yes'),
(926, '_transient_timeout_wc_product_children_127', '1528742550', 'no'),
(927, '_transient_wc_product_children_127', 'a:2:{s:3:\"all\";a:3:{i:0;i:128;i:1;i:129;i:2;i:130;}s:7:\"visible\";a:3:{i:0;i:128;i:1;i:129;i:2;i:130;}}', 'no'),
(930, '_transient_timeout_wc_var_prices_127', '1528744863', 'no'),
(931, '_transient_wc_var_prices_127', '{\"version\":\"1526150547\",\"dd0631f9a8c117376a4de5a487fafc17\":{\"price\":{\"128\":\"800.00\",\"129\":\"150.00\",\"130\":\"2100.00\"},\"regular_price\":{\"128\":\"800.00\",\"129\":\"150.00\",\"130\":\"2100.00\"},\"sale_price\":{\"128\":\"800.00\",\"129\":\"150.00\",\"130\":\"2100.00\"}}}', 'no'),
(933, '_transient_timeout_acf_get_remote_plugin_info', '1526242719', 'no'),
(934, '_transient_acf_get_remote_plugin_info', 'a:13:{s:4:\"name\";s:26:\"Advanced Custom Fields PRO\";s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:8:\"homepage\";s:37:\"https://www.advancedcustomfields.com/\";s:7:\"version\";s:6:\"5.6.10\";s:6:\"author\";s:13:\"Elliot Condon\";s:10:\"author_url\";s:28:\"http://www.elliotcondon.com/\";s:12:\"contributors\";s:12:\"elliotcondon\";s:8:\"requires\";s:5:\"3.6.0\";s:6:\"tested\";s:5:\"4.9.9\";s:6:\"tagged\";s:61:\"acf, advanced, custom, field, fields, form, repeater, content\";s:9:\"changelog\";s:67:\"<h4>5.6.10</h4><ul><li>Core: Minor fixes and improvements</li></ul>\";s:14:\"upgrade_notice\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}}', 'no'),
(945, '_site_transient_timeout_theme_roots', '1526212025', 'no'),
(946, '_site_transient_theme_roots', 'a:1:{s:4:\"oils\";s:7:\"/themes\";}', 'no'),
(949, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1526210233;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(950, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1526210235;s:7:\"checked\";a:1:{s:4:\"oils\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(951, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1526210235;s:8:\"response\";a:2:{s:37:\"ajax-search-lite/ajax-search-lite.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/ajax-search-lite\";s:4:\"slug\";s:16:\"ajax-search-lite\";s:6:\"plugin\";s:37:\"ajax-search-lite/ajax-search-lite.php\";s:11:\"new_version\";s:6:\"4.7.15\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/ajax-search-lite/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/ajax-search-lite.4.7.15.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ajax-search-lite/assets/icon-256x256.png?rev=970684\";s:2:\"1x\";s:68:\"https://ps.w.org/ajax-search-lite/assets/icon-128x128.png?rev=970684\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/ajax-search-lite/assets/banner-772x250.png?rev=963999\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.6.10\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:7:\"package\";s:0:\"\";}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-03 17:43:43\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.9.2/uk.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"duplicate-post\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"3.2.1\";s:7:\"updated\";s:19:\"2017-05-16 11:29:33\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/duplicate-post/3.2.1/uk.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.6.7\";s:7:\"updated\";s:19:\"2017-06-26 14:22:47\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/translation/plugin/tinymce-advanced/4.6.7/uk.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"3.0.9\";s:7:\"updated\";s:19:\"2017-05-16 19:55:42\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/plugin/woocommerce/3.0.9/uk.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:15:{s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/breadcrumb-navxt\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:6:\"plugin\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:11:\"new_version\";s:5:\"6.0.4\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/breadcrumb-navxt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/breadcrumb-navxt.6.0.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/breadcrumb-navxt/assets/icon-256x256.png?rev=971477\";s:2:\"1x\";s:60:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=971477\";s:3:\"svg\";s:60:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=971477\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/breadcrumb-navxt/assets/banner-772x250.jpg?rev=479408\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/taxonomy-terms-order\";s:4:\"slug\";s:20:\"taxonomy-terms-order\";s:6:\"plugin\";s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:11:\"new_version\";s:7:\"1.5.3.2\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/taxonomy-terms-order/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/taxonomy-terms-order.1.5.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412\";s:2:\"1x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-128x128.png?rev=1564412\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412\";s:2:\"1x\";s:75:\"https://ps.w.org/taxonomy-terms-order/assets/banner-772x250.png?rev=1564412\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"cf7-polylang/cf7-polylang.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/cf7-polylang\";s:4:\"slug\";s:12:\"cf7-polylang\";s:6:\"plugin\";s:29:\"cf7-polylang/cf7-polylang.php\";s:11:\"new_version\";s:5:\"2.0.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/cf7-polylang/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/cf7-polylang.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:56:\"https://s.w.org/plugins/geopattern-icon/cf7-polylang.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"google-sitemap-generator/sitemap.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/google-sitemap-generator\";s:4:\"slug\";s:24:\"google-sitemap-generator\";s:6:\"plugin\";s:36:\"google-sitemap-generator/sitemap.php\";s:11:\"new_version\";s:5:\"4.0.9\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/google-sitemap-generator/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/google-sitemap-generator.4.0.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/google-sitemap-generator/assets/icon-256x256.png?rev=1701944\";s:2:\"1x\";s:77:\"https://ps.w.org/google-sitemap-generator/assets/icon-128x128.png?rev=1701944\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/google-sitemap-generator/assets/banner-772x250.png?rev=1701944\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"2.3.5\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.2.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}}s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/polylang-theme-strings\";s:4:\"slug\";s:22:\"polylang-theme-strings\";s:6:\"plugin\";s:52:\"polylang-theme-strings/mw-polylang-theme-strings.php\";s:11:\"new_version\";s:3:\"3.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/polylang-theme-strings/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/polylang-theme-strings.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/polylang-theme-strings/assets/icon-256x256.png?rev=1428148\";s:2:\"1x\";s:75:\"https://ps.w.org/polylang-theme-strings/assets/icon-128x128.png?rev=1428148\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"relevanssi/relevanssi.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/relevanssi\";s:4:\"slug\";s:10:\"relevanssi\";s:6:\"plugin\";s:25:\"relevanssi/relevanssi.php\";s:11:\"new_version\";s:5:\"4.0.9\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/relevanssi/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/relevanssi.4.0.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/relevanssi/assets/icon-256x256.png?rev=1737893\";s:2:\"1x\";s:63:\"https://ps.w.org/relevanssi/assets/icon-128x128.png?rev=1737893\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/relevanssi/assets/banner-1544x500.jpg?rev=1647178\";s:2:\"1x\";s:65:\"https://ps.w.org/relevanssi/assets/banner-772x250.jpg?rev=1647180\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"rustolat/rus-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/rustolat\";s:4:\"slug\";s:8:\"rustolat\";s:6:\"plugin\";s:23:\"rustolat/rus-to-lat.php\";s:11:\"new_version\";s:3:\"0.3\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/rustolat/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/rustolat.0.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:52:\"https://s.w.org/plugins/geopattern-icon/rustolat.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.15\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"4.6.7\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.4.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.3.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"wp-sitemap-page/wp-sitemap-page.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/wp-sitemap-page\";s:4:\"slug\";s:15:\"wp-sitemap-page\";s:6:\"plugin\";s:35:\"wp-sitemap-page/wp-sitemap-page.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-sitemap-page/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wp-sitemap-page.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-sitemap-page/assets/icon-256x256.png?rev=981368\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-sitemap-page/assets/icon-128x128.png?rev=981368\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/wp-sitemap-page/assets/banner-772x250.png?rev=630898\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(958, '_transient_timeout_feed_126d1ca39d75da07beec8b892738427b', '1526253453', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(959, '_transient_feed_126d1ca39d75da07beec8b892738427b', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Блог — Русский\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://ru.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Русский\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Wed, 02 May 2018 07:03:30 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"ru-RU\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-43244\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"Конференция WordCamp Санкт-Петербург 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://ru.wordpress.org/news/2018/05/wordcamp-stpetersburg2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 07:03:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:25:\"Общие вопросы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1994\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:575:\"Конференция состоится 26 мая 2018 при поддержке компании SEMrush. Хотите поучаствовать, поделиться сообществом своим опытом или просто рассказать что-то интересное из мира WordPress? Приходите, будет интересно! Полезные знакомства, новые доклады, футболка с символикой WordPress, пицца и after-party. Подробности на сайте конференции.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"Yui\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:706:\"<p>Конференция состоится 26 мая 2018 при поддержке компании SEMrush.<br />\nХотите поучаствовать, поделиться сообществом своим опытом или просто рассказать что-то интересное из мира WordPress?<br />\nПриходите, будет интересно!<br />\nПолезные знакомства, новые доклады, футболка с символикой WordPress, пицца и after-party.<br />\nПодробности <a href=\"https://2018.saintpetersburg.wordcamp.org/\" target=\"_blank\" rel=\"noopener noreferrer\">на сайте конференции.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"Выпуск WordPress 4.9.4 (требуется ручное обновление)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://ru.wordpress.org/news/2018/02/%d0%b2%d1%8b%d0%bf%d1%83%d1%81%d0%ba-wordpress-4-9-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 16:46:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:22:\"Исправления\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1886\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:661:\"Доступна версия WordPress 4.9.4, исправляющая внесенную в выпуске 4.9.3 ошибку с автообновлением. Если вы успели (возможно автоматически) обновить свой сайт (или сайты) до 4.9.3, то вам нужно обновить WordPress  до версии 4.9.4, используя кнопку в Консоль &#62; Обновления, либо иным удобным вам способом (wp-cli, через ftp или ssh). Скачать архив дистрибутива можно здесь. Детали ошибки [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"Yui\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:905:\"<p>Доступна версия WordPress 4.9.4, исправляющая внесенную в выпуске 4.9.3 ошибку с автообновлением. Если вы успели (возможно автоматически) обновить свой сайт (или сайты) до 4.9.3, то вам нужно обновить WordPress  до версии 4.9.4, используя кнопку в <em>Консоль &gt; Обновления, </em>либо иным удобным вам способом (wp-cli, через ftp или ssh). Скачать архив дистрибутива можно <a href=\"https://ru.wordpress.org/releases/\">здесь</a>.</p>\n<p>Детали ошибки <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\" target=\"_blank\" rel=\"noopener\">доступны</a> в блоге Make WordPress.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Всемирный день перевода WordPress 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2017/09/wp-translation-day-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Sep 2017 18:55:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1841\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:655:\"Всемирный день перевода — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык. Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Denis Yanchevskiy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4393:\"<p><a href=\"https://wptranslationday.org/\">Всемирный день перевода</a> — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык.</p>\n<p><a href=\"https://wptranslationday.org/\"><img class=\"alignnone wp-image-1842 size-full\" src=\"https://ru.wordpress.org/files/2017/09/4by3.jpg\" alt=\"\" width=\"1024\" height=\"768\" srcset=\"https://ru.wordpress.org/files/2017/09/4by3.jpg 1024w, https://ru.wordpress.org/files/2017/09/4by3-300x225.jpg 300w, https://ru.wordpress.org/files/2017/09/4by3-768x576.jpg 768w, https://ru.wordpress.org/files/2017/09/4by3-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></p>\n<p>Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в развитие WordPress — сейчас самое время!</p>\n<p>В России в рамках мероприятия планируется встреча в Ростове-на-Дону, а также вебинар для тех, кто будет переводить у себя дома.</p>\n<p><strong>Когда</strong></p>\n<p>День перевода WordPress пройдёт в субботу, 30 сентября.</p>\n<p><strong>Где</strong></p>\n<ul>\n<li>Ростов-на-Дону: ул. Большая Садовая, д. 81/31 (кафе Starbucks). Начало в 12:00.</li>\n<li>Вебинар: <a href=\"https://www.crowdcast.io/e/gwtd3/22\">https://www.crowdcast.io/e/gwtd3/22</a>, начало в 20:00 по московскому времени. Вы узнаете, как переводить WordPress, плагины и темы на русский язык, сможете выбрать проект и приступить к переводу.</li>\n</ul>\n<p>Расписание всех вебинаров мероприятия: <a href=\"https://wptranslationday.org/#primary\">https://wptranslationday.org/#primary</a>.</p>\n<p><strong>Полезные ресурсы</strong></p>\n<ul>\n<li><a href=\"https://ru.wordpress.org/support/topic/%D0%BA%D0%B0%D0%BA-%D0%BF%D0%B5%D1%80%D0%B5%D0%B2%D0%B5%D1%81%D1%82%D0%B8-%D1%82%D0%B5%D0%BC%D1%83-%D0%B8%D0%BB%D0%B8-%D0%BF%D0%BB%D0%B0%D0%B3%D0%B8%D0%BD/\">Как перевести тему или плагин?</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D1.82.D0.B8.D0.BB.D1.8C_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.D0.B0\">Рекомендации по стилю перевода</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.9A.D0.B0.D0.BA_.D1.81.D0.B4.D0.B5.D0.BB.D0.B0.D1.82.D1.8C_.D1.85.D0.BE.D1.80.D0.BE.D1.88.D0.B8.D0.B9_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.3F\">Как сделать хороший перевод</a></li>\n<li><a href=\"https://translate.wordpress.org/locale/ru/default/glossary\">Словарь терминов</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/about/get-involved/first-steps/\">Первые шаги переводчика</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/tools/glotpress-translate-wordpress-org/\">Как работать с сайтом translate.wordpress.org (GlotPress)</a></li>\n</ul>\n<p>Для координации и обсуждения вопросов стоит зарегистрироваться в <a href=\"https://ruwp.slack.com/\">Slack-группе русскоязычного сообщества WordPress</a> и зайти на канал <code>#translations</code>. При регистрации введите адрес вида <code>username@chat.wordpress.org</code> (он же используется и в <a href=\"https://make.wordpress.org/chat/\">английском Slack</a>), где <code>username</code> — ваш логин на WordPress.org.</p>\n<p>Да пребудут с нами понятные интерфейсы и качественная локализация!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Всемирный день перевода WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ru.wordpress.org/news/2016/11/wp-translation-day/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 Nov 2016 16:35:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1751\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:655:\"Всемирный день перевода — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык. Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Sergey Biryukov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4653:\"<p><a href=\"https://wptranslationday.org/\">Всемирный день перевода</a> — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык.</p>\n<p><img class=\"alignnone wp-image-1764 size-large\" src=\"https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-1024x579.jpg\" width=\"692\" height=\"391\" srcset=\"https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-1024x579.jpg 1024w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-300x170.jpg 300w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-768x434.jpg 768w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2.jpg 1200w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в развитие WordPress — сейчас самое время!</p>\n<p>В России в рамках мероприятия планируются встречи в Москве и Ростове-на-Дону, а также вебинар для тех, кто будет переводить у себя дома.</p>\n<p><strong>Когда</strong></p>\n<p>День перевода WordPress пройдёт в субботу, 12 ноября.</p>\n<p><strong>Где</strong></p>\n<ul>\n<li><a href=\"https://wpmag.ru/2016/global-translation-day-moscow/\">Москва</a>: метро Краснопресненская, БЦ «Трехгорная мануфактура», ул. Рочдельская, д. 15 стр. 10, 2 этаж (офис компании Setka). Начало в 12:00.</li>\n<li>Ростов-на-Дону: ул. Большая Садовая, д. 81/31 (кафе Starbucks). Начало в 12:00.</li>\n<li>Вебинар: <a href=\"https://www.crowdcast.io/e/gwtd2/14\">https://www.crowdcast.io/e/gwtd2/14</a>, начало в 16:00 по московскому времени. Вы узнаете, как переводить WordPress, плагины и темы на русский язык, сможете выбрать проект и приступить к переводу.</li>\n</ul>\n<p>Расписание всех вебинаров мероприятия: <a href=\"https://wptranslationday.org/#schedule\">https://wptranslationday.org/#schedule</a>.</p>\n<p><strong>Полезные ресурсы</strong></p>\n<ul>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/about/get-involved/first-steps/\">Первые шаги переводчика</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/tools/glotpress-translate-wordpress-org/\">Как работать с сайтом translate.wordpress.org (GlotPress)</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D1.82.D0.B8.D0.BB.D1.8C_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.D0.B0\">Рекомендации по стилю перевода</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.9A.D0.B0.D0.BA_.D1.81.D0.B4.D0.B5.D0.BB.D0.B0.D1.82.D1.8C_.D1.85.D0.BE.D1.80.D0.BE.D1.88.D0.B8.D0.B9_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.3F\">Как сделать хороший перевод</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D0.BB.D0.BE.D0.B2.D0.B0.D1.80.D1.8C_.D1.82.D0.B5.D1.80.D0.BC.D0.B8.D0.BD.D0.BE.D0.B2\">Словарь терминов</a></li>\n</ul>\n<p>Для координации и обсуждения вопросов стоит зарегистрироваться в <a href=\"https://ruwp.slack.com/\">Slack-группе русскоязычного сообщества WordPress</a> и зайти на канал <code>#translations</code>. При регистрации введите адрес вида <code>username@chat.wordpress.org</code> (он же используется и в <a href=\"https://make.wordpress.org/chat/\">английском Slack</a>), где <code>username</code> — ваш логин на WordPress.org.</p>\n<p>Да пребудут с нами понятные интерфейсы и качественная локализация!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Moscow 2016\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2016/07/wordcamp-moscow-2016/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Jul 2016 14:00:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1722\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:345:\"13 августа в Москве пройдёт конференция WordCamp Moscow 2016 в центре Digital October. Гостей ждет целый день лекций на интересные темы связанные с разработкой, дизайном, предпринимательством и блоггингом.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2961:\"<p>13 августа в Москве пройдёт конференция WordCamp Moscow 2016 в центре Digital October. Гостей ждет целый день лекций на интересные темы связанные с разработкой, дизайном, предпринимательством и блоггингом.</p>\n<p><img src=\"https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-1024x684.jpg\" alt=\"Николай Миронов на WordCamp Russia 2015\" width=\"692\" height=\"462\" class=\"alignnone size-large wp-image-1724\" srcset=\"https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-1024x684.jpg 1024w, https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-300x200.jpg 300w, https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-768x513.jpg 768w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>Cписок докладов находится на стадии утверждения, но некоторые темы уже определены:</p>\n<ul>\n<li>Как заказать разработку сайта у специалиста и остаться довольным</li>\n<li>Как работает искусственный интеллект в поисковых системах</li>\n<li>Откуда брать идеи для написания постов, плагинов и тем</li>\n<li>Как опубликовать свою тему в директорию на WordPress.org</li>\n<li>Чем может быть полезен стек Elasticsearch, Logstash и Kibana</li>\n<li>Как держать потребление памяти в WordPress под контролем</li>\n<li>Что такое A/B тестирование и как его проводить в WordPress</li>\n<li>и многое другое</li>\n</ul>\n<p>В перерывах между докладами можно будет пообщаться с коллегами, задать вопросы опытным специалистам и поделиться своими идеями.</p>\n<p>Приобрести билет можно на <a href=\"https://2016.moscow.wordcamp.org/tickets/\">сайте конференции</a> кредитной или дебетовой картой через PayPal, или при помощи системы Яндекс.Деньги.</p>\n<p>После мероприятия всех ждёт afterparty, где участники смогут пообщаться в местном баре в неформальной обстановке. Ну и, конечно же, каждый из гостей получит футболку с символикой WordPress и унесет с собой столько наклеек и значков, сколько влезет в карманы.</p>\n<p><a href=\"https://2016.moscow.wordcamp.org/tickets/\">Зарегистрироваться</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Russia 2015\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2015/07/wordcamp-russia-2015/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Jul 2015 10:08:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1660\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:282:\"Конференция WordCamp Russia 2015 пройдет в субботу, 15 августа в центре Digital October в Москве. Это третья официальная конференция посвященная самой популярной в мире CMS.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2883:\"<p>Конференция <a href=\"https://russia.wordcamp.org/2015/\">WordCamp Russia 2015</a> пройдет в субботу, 15 августа в центре Digital October в Москве. Это третья официальная конференция посвященная самой популярной в мире CMS.</p>\n<p><img src=\"https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-1024x683.jpg\" alt=\"WordCamp Russia\" width=\"692\" height=\"462\" class=\"alignnone size-large wp-image-1662\" srcset=\"https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-1024x683.jpg 1024w, https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-300x200.jpg 300w, https://ru.wordpress.org/files/2015/07/wordcamp-russia-2.jpg 1200w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>В этом году на WordCamp вы сможете послушать интересные доклады от ведущих специалистов по WordPress в России, познакомиться с единомышленниками и поделиться своими идеями. Доклады разделены на два потока для пользователей и разработчиков WordPress, и охватывают дизайн, маркетинг, программирование, безопасность, производительность и поисковую оптимизацию.</p>\n<h2>Программа</h2>\n<p>На WordCamp Russia 2015 вы узнаете:</p>\n<ul>\n<li>Как создавать эффективные лендинги с помощью WordPress</li>\n<li>Что такое поведенческие факторы и как они измеряются</li>\n<li>Как создавать многоязычные сайты на WordPress</li>\n<li>Самые распространенные причины медленных сайтов на WordPress</li>\n<li>Как взламываются сайты на WordPress (на практике)</li>\n<li>Что такое фильтры и события в WordPress</li>\n<li>Чего ожидать от REST API в WordPress и как с ним работать</li>\n<li>Почему следует участвовать в разработке ядра WordPress</li>\n<li><a href=\"https://russia.wordcamp.org/2015/schedule/\">и многое другое</a></li>\n</ul>\n<p>Стоимость билета – $20. Сюда входит участие в конференции, обед и напитки, футболка с символикой мероприятия, значки, наклейки, подарки от спонсоров и целый день хорошего настроения.</p>\n<p>Подробности и регистрация <a href=\"https://russia.wordcamp.org/2015/\">на сайте конференции &rarr;</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 4.2.1 на русском\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ru.wordpress.org/news/2015/04/wordpress-4-2-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Apr 2015 16:54:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1636\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:766:\"Доступен WordPress 4.2.1. Это критическое обновление безопасности для всех предыдущих версий, и мы настоятельно рекомендуем вам обновить все свои сайты как можно скорее. Несколько часов назад команде WordPress стало известно об уязвимости межсайтового скриптинга, которая позволяла авторам комментариев получить доступ к сайту. Уязвимость обнаружил Йоуко Пиннонен. WordPress 4.2.1 уже устанавливается в фоновом режиме на сайты, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Sergey Biryukov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1558:\"<p>Доступен WordPress 4.2.1. Это <strong>критическое обновление безопасности</strong> для всех предыдущих версий, и мы настоятельно рекомендуем вам обновить все свои сайты как можно скорее.</p>\n<p>Несколько часов назад команде WordPress стало известно об уязвимости межсайтового скриптинга, которая позволяла авторам комментариев получить доступ к сайту. Уязвимость обнаружил <a href=\"http://klikki.fi/\">Йоуко Пиннонен</a>.</p>\n<p>WordPress 4.2.1 уже устанавливается в фоновом режиме на сайты, которые <a href=\"http://https://wordpress.org/plugins/background-update-tester/\">поддерживают</a> автоматические фоновые обновления.</p>\n<p>Дополнительную информацию можно найти в <a href=\"https://codex.wordpress.org/Version_4.2.1\">заметке о релизе</a> или в <a href=\"https://core.trac.wordpress.org/log/branches/4.2?rev=32311&amp;stop_rev=32300\">списке изменений</a>.</p>\n<p><a href=\"https://ru.wordpress.org/releases/\">Скачайте версию 4.2.1</a> или перейдите в меню «Консоль» → «Обновления» и нажмите кнопку «Обновить сейчас».</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Russia 2014\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2014/07/wordcamp-russia-2014/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Jul 2014 09:37:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://ru.wordpress.org/?p=1588\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:356:\"Конференция WordCamp Russia 2014 пройдет 9 августа в Москве. На мероприятии вы сможете пообщаться с профессионалами в сфере WordPress, поделиться своим опытом и узнать что-то новое о самой популярной в мире CMS.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1919:\"<p>Конференция <a href=\"http://2014.russia.wordcamp.org/\">WordCamp Russia 2014</a> пройдет 9 августа в Москве. На мероприятии вы сможете пообщаться с профессионалами в сфере WordPress, поделиться своим опытом и узнать что-то новое о самой популярной в мире CMS.</p>\n<p>В этом году на WordCamp Russia планируется два отдельных потока для пользователей и разработчиков. С докладами на конференции выступят специалисты WordPress из России и из-за рубежа, включая разработчиков ядра WordPress. Среди подтвержденных докладов:</p>\n<ul>\n<li>Основы поисковой оптимизации WordPress</li>\n<li>WordPress под нагрузкой: масштабирование и отказоустойчивость</li>\n<li>Сайт глазами контентера: какой должна быть идеальная &#171;админка&#187;</li>\n<li>Как не сойти с ума при разработке крупных проектов на WordPress</li>\n<li>WordPress под прицелом хакеров. Что нужно знать, и как избежать проблем.</li>\n<li>Все что вы хотели знать о WP_Query</li>\n<li>Моделирование контента в WordPress: сильно больше, чем &#171;просто блог&#187;</li>\n<li>Малоизвестные функции в ядре WordPress</li>\n<li>Профилирование кода в WordPress</li>\n</ul>\n<p>Подробности и регистрация <a href=\"http://2014.russia.wordcamp.org/\">на сайте конференции &rarr;</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"WordPress 3.9 «Смит»\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://ru.wordpress.org/news/2014/04/3-9-smith/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Apr 2014 19:56:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://ru.wordpress.org/?p=1516\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:710:\"Русская версия WordPress 3.9 &#171;Смит&#187; доступна для скачивания. Если вы уже используете WordPress, то вы можете выполнить обновление через панель администрирования в разделе «Консоль» → «Обновления». Это займет всего несколько секунд! Медиа и редактор В новой версии WordPress мы обновили визуальный редактор, который стал еще быстрее и надежнее, а также более удобным на мобильных устройствах. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5339:\"<p>Русская версия WordPress 3.9 &#171;Смит&#187; доступна для скачивания. Если вы уже используете WordPress, то вы можете выполнить обновление через панель администрирования в разделе «Консоль» → «Обновления». Это займет всего несколько секунд!</p>\n<h3>Медиа и редактор</h3>\n<p><img src=\"//wordpress.org/news/files/2014/04/editor1-300x233.jpg\" alt=\"editor\" width=\"228\" height=\"177\" /><img src=\"//wordpress.org/news/files/2014/04/image1-300x233.jpg\" alt=\"image\" width=\"228\" height=\"178\" /><img src=\"//wordpress.org/news/files/2014/04/dragdrop1-300x233.jpg\" alt=\"dragdrop\" width=\"228\" height=\"178\" /></p>\n<p>В новой версии WordPress мы обновили визуальный редактор, который стал еще быстрее и надежнее, а также более удобным на мобильных устройствах. Вы теперь можете вставлять текст из таких программ, как Microsoft Word, и редактор автоматически преобразует их в чистую разметку.</p>\n<p>Редактировать изображения (повернуть, перевернуть, обрезать) в медиатеке стало еще быстрее и приятнее в новой версии, а изменять размер вставленных изображений вы теперь можете прямо в самом редакторе.</p>\n<p>Загружать новые файлы в библиотеку файлов также стало намного легче &#8212; теперь их достаточно просто перетащить с вашего компьютера (например, с рабочего стола) прямо в редактор WordPress.</p>\n<p>При вставке галерей в визуальный редактор версии 3.9 вы теперь увидите полноценное превью ваших изображений. Предварительный просмотр элементов в редакторе также доступен для аудио, видео и плей-листов.</p>\n<h3>Аудио и видео</h3>\n<p>В WordPress 3.9 улучшена встроенная поддержка аудио- и видеофайлов. Мы обновили медиаплеер, а также добавили возможность легко создавать плей-листы для аудио и видео:</p>\n<p><img class=\"alignnone size-large wp-image-1534\" src=\"//ru.wordpress.org/files/2014/04/wordpress-audio-playlist1.png\" alt=\"wordpress-audio-playlist\" width=\"641\" height=\"254\" srcset=\"https://ru.wordpress.org/files/2014/04/wordpress-audio-playlist1.png 641w, https://ru.wordpress.org/files/2014/04/wordpress-audio-playlist1-300x118.png 300w\" sizes=\"(max-width: 641px) 100vw, 641px\" /></p>\n<h3>Работа с виджетами</h3>\n<p>Виджетами теперь легко управлять прямо из конфигуратора тем WordPress. Для запуска конфигуратора зайдите в раздел «Внешний вид» → «Настроить». Любые изменения в этом режиме вступят в силу только после сохранения, так что не бойтесь экспериментировать!</p>\n<p><img class=\"alignnone size-full wp-image-1536\" src=\"//ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen.png\" alt=\"wordpress-3-9-widgets-screen\" srcset=\"https://ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen.png 700w, https://ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen-300x120.png 300w\" sizes=\"(max-width: 700px) 100vw, 700px\" /></p>\n<h3>Поиск и установка тем</h3>\n<p>В версии 3.9 изменился интерфейс для поиска и установки тем из официального каталога WordPress.org. Он стал чище, приятнее и намного быстрее:</p>\n<p><img class=\"alignnone size-large wp-image-1539\" src=\"//ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install.png\" alt=\"wordpress-3-9-themes-install\" srcset=\"https://ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install.png 700w, https://ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install-300x113.png 300w\" sizes=\"(max-width: 700px) 100vw, 700px\" /></p>\n<p>В новой версии также произошло большое количество внутренних изменений, которые сделали WordPress 3.9 еще быстрее и надежнее. В разработке новой версии WordPress приняло участие более 250 человек из разных стран мира. Мы надеемся, что вам понравится данное обновление.</p>\n<p>Если у вас возникнут проблемы с новой версией, обратитесь на <a href=\"https://ru.forums.wordpress.org/\">форум поддержки</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WordPress 3.8 «Паркер»\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ru.wordpress.org/news/2013/12/parker/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Dec 2013 16:07:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://ru.wordpress.org/?p=1478\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:749:\"Новая версия WordPress 3.8 &#171;Паркер&#187;, названная в честь джазового музыканта Чарли Паркера, доступна для скачивания или обновления через вашу консоль WordPress. Мы надеемся, что вы посчитаете данный релиз самым привлекательным. Совершенно новый внешний вид WordPress получил совершенно новый облик. Новая версия 3.8 полностью изменяет внешний вид панели администрирования, включая новый крупный шрифт Open Sans, плоские [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3736:\"<p>Новая версия WordPress 3.8 &#171;Паркер&#187;, названная в честь джазового музыканта Чарли Паркера, доступна для скачивания или обновления через вашу консоль WordPress. Мы надеемся, что вы посчитаете данный релиз самым привлекательным.</p>\n<p><span id=\"more-1478\"></span></p>\n<h2>Совершенно новый внешний вид</h2>\n<p><img alt=\"Новый дизайн WordPress 3.8\"  src=\"//i1.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/overview.jpg?resize=623%2C193\" /></p>\n<p>WordPress получил совершенно новый облик. Новая версия 3.8 полностью изменяет внешний вид панели администрирования, включая новый крупный шрифт Open Sans, плоские векторные иконки и восемь различных цветовых схем.</p>\n<p><img alt=\"Цветовые схемы WordPress 3.8\"  src=\"//i1.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/colors.jpg?w=420\" /></p>\n<p>Любителям писать &#171;на ходу&#187; будет интересно знать, что панель администрирования теперь стала адаптивной. Она автоматически подстраивается под необходимую ширину вашего экрана и безупречно работает как с крупными экранами настольных компьютеров, так и с мелкими экранами мобильных устройств и планшетов.</p>\n<h2>Новый подход к работе с темами</h2>\n<p>В новой версии WordPress стало намного проще и удобнее работать с темами оформления. Мы полностью переделали интерфейс для вашего удобства, включая возможность быстрого поиска по названию, описанию или автору темы, а также возможность &#171;листать&#187; темы с помощью клавиатуры.</p>\n<p><img alt=\"Работа с темами в WordPress 3.8\"  src=\"//i1.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/themes.jpg?resize=360%2C344\" /></p>\n<h2>Журнальная тема Twenty Fourteen</h2>\n<p>Twenty Fourteen стала новой стандартной темой в WordPress 3.8. Темный лаконичный дизайн, адаптивная верстка, поддержка ряда форматов записей, несколько разделов для ваших виджетов и совершенно новый модуль &#171;Избранное содержимое&#187;, с помощью которого можно выделить ваши самые яркие записи в виде сетки или слайдера на главной странице.</p>\n<p><img  src=\"//i1.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/twentyfourteen.jpg?resize=692%2C275\" alt=\"Тема Twenty Fourteen\" /></p>\n<p>Скачать официальную русскую версию WordPress 3.8 вы можете по <a href=\"https://ru.wordpress.org/wordpress-3.8-ru_RU.zip\">этой ссылке</a>. Если вы уже пользуетесь WordPress, выполнить обновление можно в вашей панели администрирования в разделе Консоль → Обновления.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://ru.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 13 May 2018 11:17:41 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Sun, 13 May 2018 11:11:31 GMT\";s:4:\"link\";s:61:\"<https://ru.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20180508113220\";}', 'no'),
(960, '_transient_timeout_feed_mod_126d1ca39d75da07beec8b892738427b', '1526253453', 'no'),
(961, '_transient_feed_mod_126d1ca39d75da07beec8b892738427b', '1526210253', 'no'),
(962, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1526253454', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(963, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"WPTavern: WordPress 4.9.6 RC1 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80843\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wptavern.com/wordpress-4-9-6-rc1-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1551:\"<p>WordPress 4.9.6 Release Candidate 1 <a href=\"https://make.wordpress.org/core/2018/05/10/wordpress-4-9-6-release-candidate/\">is available</a> for download and addresses some of the issues that have been reported in beta 1. Since the beta&#8217;s release, there have been 30 bugs fixed.</p>\n\n<p>Many of the fixes in this release are focused on the new privacy tools that help with GDPR compliance. The verbiage has been changed in multiple areas to make explanations and actions clearer. For example, the Privacy Policy introduction text has been <a href=\"https://core.trac.wordpress.org/ticket/43933\">shortened and more user friendly</a>.</p>\n\n<p>One notable bug fix is that site administrators now receive an email when a Personal Data Export/Removal request is confirmed. In a future version of WordPress, it&#8217;s possible that the <a href=\"https://core.trac.wordpress.org/ticket/44000\">notification bubbles</a> will be extended to display confirmed requests.</p>\n\n<p>A full list of changes in this release can be <a href=\"https://core.trac.wordpress.org/query?status=closed&type=defect+(bug)&milestone=4.9.6&col=id&col=summary&col=status&col=milestone&col=owner&col=type&col=priority&desc=1&order=type\">found on Trac</a>. This minor release needs more testing than usual due to the privacy tools and enhancements introduced. Please test 4.9.6 on staging site or local server and if you encounter any issues, report them on the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta/Release Candidate section</a> of the forums.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 12 May 2018 01:37:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: WPWeekly Episode 315 – WordPress 4.9.6, Gutenberg, and Stolen Goats\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80834&preview=true&preview_id=80834\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wptavern.com/wpweekly-episode-315-wordpress-4-9-6-gutenberg-and-stolen-goats\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2075:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> starts the show by giving everyone a status update on bbPress 2.6. We review the new privacy features in WordPress 4.9.6 Beta 1 and provide feedback. We tell you what&#8217;s new in Gutenberg 2.8 and comment on WooCommerce&#8217;s new Products insertion block. Last but not least, John describes <a href=\"https://jjj.blog/2018/05/a-lady-stole-our-goats/\">watching security footage of a woman stealing metal goats</a> off his property at 4:30 AM.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/wordpress-4-9-6-beta-1-adds-tools-for-gdpr-compliance\">WordPress 4.9.6 Beta 1 Adds Tools for GDPR Compliance</a><br />\n<a href=\"https://make.wordpress.org/core/2018/05/08/4-9-6-schedule-changes/\">4.9.6 Schedule Changes</a><br />\n<a href=\"https://make.wordpress.org/core/2018/05/04/whats-new-in-gutenberg-may-the-4th/\">What’s new in Gutenberg? (May the 4th)</a><br />\n<a href=\"https://woocommerce.com/2018/05/making-it-easier-to-add-products-to-posts-and-pages-with-the-products-block-for-gutenberg/\">Making it easier to add products to posts and pages with the Products block for Gutenberg</a><br />\n<a href=\"https://woocommerce.wordpress.com/2018/05/09/woocommerce-3-4-rc1/\">WooCommerce 3.4 RC1</a><br />\n<a href=\"https://wptavern.com/recap-of-attending-the-first-wordcamp-retreat\">Recap of Attending the First WordCamp Retreat</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 16th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #315:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 May 2018 22:21:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"HeroPress: Finding Family Wherever You Can\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2544\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://heropress.com/finding-family-wherever-you-can/#utm_source=rss&utm_medium=rss&utm_campaign=finding-family-wherever-you-can\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3162:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/050918-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Without the WordPress community, I don\'t know where I would be now.\" /><p>I don&#8217;t actually remember when I met Jeff Matson.  As I look back over the last 8 years I know there were times I didn&#8217;t know him, and then suddenly he was there, immediately a good friend. And then, for all that I thought I knew him, his HeroPress essay shed an entirely new light on who he is.</p>\n<p>I believe that what we know about people shapes how we view them. Now I know that Jeff plowed through some crazy, dangerous, harmful things in his young life and somehow still ended up a stable, intelligent, reliable adult. Many kids in that life don&#8217;t make it this far.</p>\n<p>I&#8217;m proud of what the WordPress community has contributed to his life, and I&#8217;m grateful to Jeff for what he&#8217;s has contributed to this community.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/out-of-the-darkness/\">Out Of The Darkness</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Finding Family Wherever You Can\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Finding%20Family%20Wherever%20You%20Can&via=heropress&url=https%3A%2F%2Fheropress.com%2Ffinding-family-wherever-you-can%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Finding Family Wherever You Can\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Ffinding-family-wherever-you-can%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Ffinding-family-wherever-you-can%2F&title=Finding+Family+Wherever+You+Can\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Finding Family Wherever You Can\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/finding-family-wherever-you-can/&media=https://heropress.com/wp-content/uploads/2018/05/050918-150x150.jpg&description=Finding Family Wherever You Can\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Finding Family Wherever You Can\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/finding-family-wherever-you-can/\" title=\"Finding Family Wherever You Can\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/finding-family-wherever-you-can/\">Finding Family Wherever You Can</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 May 2018 12:00:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WPTavern: Recap of Attending the First WordCamp Retreat\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80810\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wptavern.com/recap-of-attending-the-first-wordcamp-retreat\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5176:\"<img />\n\n<p>The first <a href=\"https://2018-soltau.retreat.wordcamp.org/\">WordCamp Retreat</a> was held this past weekend in Soltau, Germany and by all accounts, it was a very successful event. The following is a guest post by <a href=\"https://remkus.devries.frl/\">Remkus de Vries</a> who recaps his experience attending the event.</p>\n\n<p><a href=\"https://twitter.com/DeFries\">Remkus</a> is from Fryslân, the Netherlands and is Manager Partnerships at <a href=\"https://yoast.com/\">Yoast</a>. He’s been active in the WordPress Community since 2006 and co-founded WordCamp Netherlands and WordCamp Europe.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>As some of you know, I&#8217;ve been active in the WordPress Community for over a decade and in that time, I&#8217;ve attended many WordPress related events. From Meetups to WordCamps. I get so excited about WordCamps, I&#8217;ve even <a href=\"https://netherlands.wordcamp.org\">co-founded</a> <a href=\"https://europe.wordcamp.org\">a few.</a></p>\n\n<p>However, in all those years, the format of a WordCamp has been relatively consistent. One or two days, multiple tracks and, in the last five years, a Contributor Day. Perhaps the biggest difference has been the city + location combination. WordCamp Europe started shaking this up with us opting for a rotating city and country principle (<a href=\"https://2018.europe.wordcamp.org\">you should totally come to this year&#8217;s edition btw</a>), but the main format has relatively remained the same.</p>\n\n<p>This past weekend, I attended a WordCamp with my colleagues from Yoast with quite a different format though. Yes, there were still presentations, different tracks, a Contributor Day, and an after party. So what was different about this one? The short answer: a lot.</p>\n\n<p><a href=\"https://2018-soltau.retreat.wordcamp.org/\">WordCamp Retreat in Soltau</a>, Germany was the first of its kind. One of the primary goals of WordCamps is to benefit the local community and <a href=\"https://twitter.com/search?q=WCRetreat&src=typd\">#WCRetreat</a> took a very different approach.<br /></p>\n\n<p>Here are a couple of things that set it apart from a typical WordCamp:</p>\n\n<ul>\n	<li>The location was exclusive for the WordCamp attendees.</li>\n	<li>Indoor and outdoor activities.</li>\n	<li>Work on your personal development/strengths.</li>\n	<li>Enjoy co-working under ideal conditions.</li>\n	<li>Alternate between valuable input and relaxation.</li>\n	<li>Benefit from previously unknown networking opportunities.</li>\n</ul>\n\n<h2><strong>Exclusive Location</strong></h2>\n\n<p>Most of this was made possible by the location. <a href=\"http://www.hotel-park-soltau.de/index.php\">Hotel Park Soltau</a> is located in the North of Germany surrounded by woods and heath. The hotel was reserved for WordCamp attendees only. Everyone stayed there, ate there, and networked there. It was an incredibly immersive experience on a different level than any of the other WordCamps I&#8217;ve attended.</p>\n\n<img />\n	WordCamp Retreat Venue\n\n\n<h2><strong>Immersive Activities</strong></h2>\n\n<p>In addition to the regular WordCamp presentations you might be familiar with, were non-tech related workshops and activities. From mindfulness, yoga, boot camps, to jam sessions and just playing sports outside (like football – not egg hand – and basketball). The goal being to interact with fellow attendees on a different level. And it worked. I saw much more networking and getting to know one another happening.</p>\n\n<h2><strong>A Schedule Built Around Social Interaction﻿</strong></h2>\n\n<p>The day started with some of the above-mentioned activities, then breakfast for all, followed by the first regular sessions. There was plenty of time between the sessions as well as morning, lunch and afternoon breaks that allowed for a lot of hallway tracks. Before the end of the afternoon, we switched back to other activities again like playing sports or jam sessions.</p>\n\n<h2><strong>Contributor Day on Day 2 of 3</strong></h2>\n\n<p>One of the things I enjoyed a lot is the fact that the Contributor Day was organized the second day of the three. This meant that everyone attending was kinda &#8216;locked into&#8217; attending the Contributor Day.  I&#8217;m not a big fan of forcing people to do anything, but this was a nice way of integrating the giving back part of a WordCamp.</p>\n\n<img />\n	WordCamp Retreat Contributor Day\n\n\n<h2>I Want to See More of These Types of WordCamps</h2>\n\n<p>Sunday afternoon, as the attendees were getting ready to head home, you could see how much everyone had enjoyed these three immersive days. The relaxed schedule, the different approach to what came when,  the fact of us all sharing the same rooms for 72 hours, the activities before, between and after the presentations, they all made this concept an extremely pleasant and relaxed one.<br /></p>\n\n<p>This first edition had about 180 attendees and all of their feedback will determine the fine tuning of what this WordCamp can be, but I&#8217;m very enthusiastic about this first edition.<br /></p>\n\n<p>I hope to see this type of WordCamp happen a lot more. It adds value to the format as we know it.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 May 2018 06:38:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Post Status: Making WordPress and WordSesh —  Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://poststatus.com/making-wordpress-and-wordsesh-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1915:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian and Brian discuss the upcoming WordSesh schedule and go spelunking through <a href=\"https://make.wordpress.org/\">make.wordpress.org</a> to surface some recent gems making their way to WordPress.org – both the project and the website.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"http://wordsesh.com/\">WordSesh schedule and tickets</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/04/28/rest-api-meeting-summary-april-26/\">REST API search endpoint</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">Help for Gutenberg migration guide</a></li>\n<li><a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">Theme review with trusted authors</a></li>\n</ul>\n<h3>Sponsor: iThemes</h3>\n<p>This episode is sponsored by <a href=\"https://ithemes.com/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">iThemes</a>. The team at iThemes offers WordPress plugins, themes and training to help take the guesswork out of building, maintaining and securing WordPress websites. For more information, check out their <a href=\"https://ithemes.com/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">website</a> and thank you to iThemes for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 May 2018 23:33:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: WordPress 4.9.6 Beta 1 Adds Tools for GDPR Compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80787\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/wordpress-4-9-6-beta-1-adds-tools-for-gdpr-compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4711:\"<p>WordPress <a href=\"https://make.wordpress.org/core/2018/05/03/wordpress-4-9-6-beta/\">4.9.6 Beta 1 is available</a> for testing. It&#8217;s the first step in bringing <a href=\"https://www.eugdpr.org/\">GDPR</a> (General Data Protection Regulation) tools to WordPress. In addition to 10 bugs being fixed, this release heavily focuses on privacy enhancements.</p>\n\n<p>One of the first changes is the addition of a Privacy tab on the successful update screen. The message informs users that their sites may send data to WordPress.org for plugin and theme updates with a link to the WordPress.org privacy policy.</p>\n\n<img />\n	WordPress 4.9.6 Privacy Information\n\n\n<h2>Privacy Policy Page Creation and Template<br /></h2>\n\n<p>WordPress 4.9.6 includes the ability to create a Privacy Policy page from the backend. Simply browse to <strong>Settings > Privacy</strong> and select an existing page or create a new one where the policy will be displayed.</p>\n\n<img />\n	Privacy Policy Page Settings\n\n\n<p>Privacy policy pages will likely become as ubiquitous as About Us pages thanks to the GDPR, but the information that&#8217;s displayed is unique to individual sites. WordPress helps out by providing a template with suggestions on what information to display.</p>\n\n<img />\n	Privacy Policy Template<br />\n\n\n<h2>Personal Data Export and Removal Tools</h2>\n\n<p>To comply with the GDPR, sites need to provide a way for users to obtain their personal data and request that it be removed. WordPress 4.9.6 does not give users a button to make these requests. Instead, a site&#8217;s privacy policy needs to  include information on where to send such requests.</p>\n\n<p>Once a request for a data export or removal is received, site administrators or the Data Protection Officer can browse to <strong>Tools > Export Personal Data</strong> or <strong>Tools > Remove Personal Data</strong> and send that user a verification request.</p>\n\n<img />\n	Export Personal Data Verification UI\n\n\n<img />\n	Data Removal Request Verification UI\n\n\n<p>When an admin enters a username or email address into the send request field, they&#8217;ll receive an email with a confirmation link. Once clicked, the site will display an Action Confirmed notice and that the site administrator has been notified and will fulfill the request as soon as possible.</p>\n\n<p>Here&#8217;s what a confirmed notice looks like in the backend.</p>\n\n<img />\n	Confirmed Data Export Request\n\n\n<p>One thing I noticed is that after a user confirms the request, the site administrator has <a href=\"https://core.trac.wordpress.org/ticket/43967\">no way of knowing</a> that they confirmed unless they visit the Data Export or Removal page. <br /></p>\n\n<p>Perhaps a new notification bubble can be created, similar to pending comments and updates that takes admins to the appropriate place for confirmed requests.</p>\n\n<p>When WordPress finishes creating the zip file, a link is sent to the user. For security purposes, the file will automatically be deleted after 72 hours. </p>\n\n<img />\n	My Personal Data Export\n\n\n<p>To test this feature, I exported my personal data from WP Tavern. My data export arrived in a zip file as one Index.html file. This file contains my comments, user meta data, links to attachments, and more. The data provides me with an opportunity to see what data the site has and what would be deleted if I requested full data removal.</p>\n\n<h2>Commenter Cookie Notification and Opt-in<br /></h2>\n\n<p>Cookies save data so that visitors don&#8217;t have to fill in the Author, URL, and Email fields each time they want to leave a comment. In 4.9.6, visitors will be informed of this data storage and will need to check mark a box to opt-in.</p>\n\n<img />\n	Checkbox For Consenting to Data Storage\n\n\n<p>WordPress 4.9.6 isn&#8217;t your typical minor release. It introduces new UI, options, and a bunch of privacy related enhancements. The development team is aiming to officially release 4.9.6 before GDPR goes into effect later this month, but these features need battle tested now, especially on multi-site configurations.</p>\n\n<p>I encourage you to check out 4.9.6 on a staging site and go through the process of requesting, confirming, and obtaining user data. Now is a good time to experience what users will be going through. </p>\n\n<p>You can download <a href=\"https://make.wordpress.org/core/2018/05/03/wordpress-4-9-6-beta/\">WordPress 4.9.6 beta 1 here</a> or obtain it by using the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester plugin</a>. If you encounter any issues, please report them on the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta section</a> of the support forums. </p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 May 2018 22:18:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: Jetpack 6.1, Now With Even More Privacy Information\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80769\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/jetpack-6-1-now-with-even-more-privacy-information\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2178:\"<p>Jetpack 6.1 <a href=\"https://jetpack.com/2018/05/01/jetpack-6-1-general-maintenance/\">is available</a> and is considered a general maintenance release. This version adds two improvements to the WordAds module. Users can now use the [wordads] shortcode to place an inline ad on any post or page. Support for the <a href=\"https://en.wikipedia.org/wiki/Ads.txt\">ads.txt</a> file has also been added.</p>\n\n<p>A <a href=\"https://github.com/Automattic/jetpack/pull/8075\">new filter</a> is available that honors the <a href=\"https://en.wikipedia.org/wiki/Do_Not_Track\">Do Not Track</a> feature. This filter only affects the Stats module and will not track visitors who have Do Not Track enabled. This filter <a href=\"https://github.com/Automattic/jetpack/issues/727#issuecomment-383119108\">may be exposed</a> as a setting in the UI in a future update.</p>\n\n<p>Sharing and Likes functionality has been removed from WooCommerce&#8217;s Cart, Checkout, and Account pages. Notices that appeared in log files related to language features on sites running PHP 7.2 have been fixed.</p>\n\n<p>Continuing the <a href=\"https://wptavern.com/jetpack-6-0-takes-steps-towards-gdpr-compliance\">progress made in Jetpack 6.0</a> towards GDPR compliance, 6.1 adds More Info buttons to every module that handles user data.</p>\n\n<p>The More Info buttons contain links to specific sections of support documents that describe whether or not the module is activated by default, what data is used for site owners and visitors, and what data is synchronized with WordPress.com.<br /></p>\n\n<img />\n	More Info Links in Jetpack\n\n\n<img />\n	Detailed Privacy Information for The WordPress.com Toolbar Module\n\n\n<p>In the example above, the Privacy Information link for the WordPress.com Toolbar module points to the <a href=\"https://jetpack.com/support/masterbar/#privacy\">following support document</a>. With all of this information now readily available, users can educate themselves on the privacy implications of each module and decide what&#8217;s best for their visitors.</p>\n\n<p>A <a href=\"https://wordpress.org/plugins/jetpack/#developers\">full changelog</a> of Jetpack 6.1 is available on WordPress.org.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 05 May 2018 00:23:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: WPWeekly Episode 314 – Getting Squeebly With It\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80759&preview=true&preview_id=80759\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wptavern.com/wpweekly-episode-314-getting-squeebly-with-it\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1878:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> recaps his trip to WordCamp Chicago and explains the thought process behind his presentation, The Fourth Wall of WordPress. We highlight a new project that gives developers a guided path to migrate functionality from the Classic editor to Gutenberg.</p>\n<p>We discuss the pros and cons of the trusted authors program launched by the WordPress Theme Review Team and what&#8217;s new in Jetpack 6.1, what to expect from WordSesh 5, and comment on Square&#8217;s agreement to acquire Weebly for $365M.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/a-gutenberg-migration-guide-for-developers\">A Gutenberg Migration Guide for Developers</a></p>\n<p><a href=\"https://wptavern.com/wordpress-theme-review-theme-launches-trusted-authors-program\">WordPress Theme Review Team Launches Trusted Authors Program</a></p>\n<p><a href=\"https://wptavern.com/wordsesh-5-scheduled-for-july-25th\">WordSesh 5 Scheduled for July 25th</a></p>\n<p><a href=\"https://jetpack.com/2018/05/01/jetpack-6-1-general-maintenance/\">Jetpack 6.1 Released</a></p>\n<p><a href=\"https://techcrunch.com/2018/04/26/square-acquires-weebly/\">Square Acquires Weebly for $365M</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 9th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #314:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 May 2018 21:41:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"HeroPress: Childhood to WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2522\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://heropress.com/essays/childhood-to-wordpress/#utm_source=rss&utm_medium=rss&utm_campaign=childhood-to-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:17064:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/050218-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: WordCamp is a way to meet new people, learn, and share knowledge!\" /><p><a href=\"https://heropress.com/feed/#gujarati\">આ નિબંધ ગુજરાતીમાં પણ ઉપલબ્ધ છે</a></p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR.jpg\"><img class=\"aligncenter size-large wp-image-2526\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR-1024x768.jpg\" alt=\"Pravin standing by a long sign that says I Heart WordPress\" width=\"960\" height=\"720\" /></a></p>\n<p>First of all, I want to say thank you to HeroPress for reaching out and letting so many people share their stories. I am a follower of HeroPress and read new stories every week! A few months ago my cousin Chetan Prajapati published a WordPress story, and I was inspired by him to share my own and how it has changed my way of working.</p>\n<p>I love WordPress because since childhood I am playing with WordPress. I was studying for a Diploma in Computer Engineering. For my last year I have an Industrial project and I was very confused about to how to create this project and how to choose the best framework and language so that after my college I can get a good job in IT.</p>\n<p>At one point my cousin was working on WordPress so I am discuss with the my last year project then he says &#8220;You choose WordPress!&#8221; and he created an eCommerce project within 10 minutes and I was very shocked. I can&#8217;t believe he created within 10 minutes a finished Project. He says &#8220;I have installed WooCommerce and a simple theme&#8221;. Then I Love WordPress and I do more and more research in WordPress and develop knowledge in WordPress.</p>\n<p>After completing my Diploma I got a job in a small company in Ahmedabad and am working as Junior WordPress Developer. Also I am attending Local Meetups and WordCamps.</p>\n<p>Now I also teach a class every weekend on how to make a career in WordPress.</p>\n<p>It was my first time speaking in Ahmedabad WooCommerce Local Meetup in a session on how to create and setup eCommerce with in 10 minutes.</p>\n<p><strong>Speaking at the Ahmedabad WooCommerce Local Meetup</strong></p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\"><img class=\"aligncenter size-full wp-image-2527\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\" alt=\"Pravin Teaching At WordCamp\" width=\"600\" height=\"450\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p><strong>My First WordCamp &#8211; WordCamp Udaipur 2017</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_132840/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_132840-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin and a woman showing WordCamp name tags\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_131922_hdr/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131922_HDR-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin in a cutout pink tuk tuk\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p><strong>My Second WordCamp &#8211; WordCamp Mumbai 2017</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_143547_1024/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20170325_143547_1024-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin by the WordCamp Mumbai tag\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_104005/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170325_104005-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin\'s Nametag\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p><strong>My Third WordCamp &#8211; WordCamp Nagpur</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5327/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5327-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5338/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5338-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>After much hardwork to achieve this event, it&#8217;s WordCamp Ahmedabad 2017.</p>\n<p><strong>My Fourth WordCamp &#8211; WordCamp Ahmedabad 2017 as Volunteer</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_081917/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_081917-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_153955/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_153955-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p><strong>My Fifth WordCamp &#8211; WordCamp Mumbai 2018 ( Second time )</strong></p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739.jpg\"><img class=\"aligncenter size-large wp-image-2541\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739-768x1024.jpg\" alt=\"\" width=\"768\" height=\"1024\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p>I am a WordCamp Lover. WordCamp is a way to meet new people, learn and share knowledge!</p>\n<p>Finally my dreams are coming true at WordCamp Europe 2018. Finally I am volunteer in WordCamp Europe 2018.</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\"><img class=\"aligncenter size-full wp-image-2540\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\" alt=\"WCEU Volunteer Badge\" width=\"600\" height=\"600\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<h1 id=\"gujarati\">હું WordPress પ્રેમી છું</h1>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR.jpg\"><img class=\"aligncenter size-large wp-image-2526\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR-1024x768.jpg\" alt=\"Pravin standing by a long sign that says I Heart WordPress\" width=\"960\" height=\"720\" /></a></p>\n<p>સૌ પ્રથમ, હું તમને કહેવા માગું છું કે હિરોપર્સને પહોંચવા માટે અને ઘણા લોકોને તેમના વાર્તાઓ શેર કરવા માટે આભાર. હું હિરોપ્રેસનો અનુયાયી છું અને દર અઠવાડિયે નવી કથાઓ વાંચી સંભળાવું છું! થોડા મહિના પહેલાં મારા પિતરાઇ ભાઇ ચેતન પ્રજાપતિએ એક વાર્તાની વાર્તા લખી હતી, અને મારા દ્વારા તેનો પોતાનો ભાગ લેવા માટે પ્રેરણા મળી હતી અને તે કેવી રીતે કામ કરવાની રીત બદલ્યો છે.</p>\n<p>હું WordPress સાથે રમવા માટે chilhood છું beacuse લવ. હું છેલ્લા વર્ષમાં ડિપ્લોમા ઇન કમ્પ્યુટર એન્જીનિયરિંગમાં અભ્યાસ કરતો હતો, મારી પાસે ઔદ્યોગિક પ્રોજેક્ટ છે, તેથી હું પ્રોજેક્ટમાં કેવી રીતે સર્જન કરું છું અને કેવી રીતે શ્રેષ્ઠ માળખા અને ભાષા પસંદ કરવી તે મારા કૉલેજ પછીથી હું આઇટીમાં શ્રેષ્ઠ કામ મેળવી શકું છું તે અંગે ભ્રમિત છું.</p>\n<p>એક મારા પિતરાઈ ભાઈ WordPress પર કામ કરી રહ્યા છે, તેથી હું મારા છેલ્લા વર્ષ પ્રોજેક્ટ અંગે ચર્ચા કરી રહ્યો છું પછી તે કહે છે કે તમે WordPress પસંદ કરો છો અને તે 10 મિનિટમાં ઈકોમર્સ પ્રોજેક્ટ બનાવશે અને હું ખૂબ જ વ્યસ્ત છું. હું તે સાથે તૈયાર કરી શકતો નથી, તે 10 મિનિટમાં પૂર્ણ થયેલ પ્રોજેક્ટમાં તે કહે છે કે મેં WooCommerce અને સરળ થીમ ઇન્સ્ટોલ કરી છે. પછી હું WordPress લવ અને હું WordPress માં વધુ અને વધુ સંશોધન છું અને WordPress માં જ્ઞાન વિકાસ.</p>\n<p>દરેક અઠવાડિયે મારા સત્ર પર WordPress સાથે કારકિર્દી કેવી રીતે શરૂ કરવી તે મારા સત્ર પર.</p>\n<p>મારી ડિપ્લોમા પૂરો કર્યા પછી મને અમદાવાદમાં નાની કંપનીમાં નોકરી મળી અને જુનિયર વર્ડપ્રેસ ડેવલપર તરીકે કામ કર્યું. પછી હું સ્થાનિક મીટઅપ અને વર્ડકેમ્પમાં હાજરી કરું છું. સત્રમાં અમદાવાદ વુકોમર્સ સ્થાનિક મેટઅપમાં મારો પ્રથમ વાર સ્પીકર હતો અને 10 મિનિટમાં ઈકોમર્સ કેવી રીતે બનાવવું અને કેવી રીતે સેટઅપ કરવું તે વિશે.</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\"><img class=\"aligncenter size-full wp-image-2527\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\" alt=\"Pravin Teaching At WordCamp\" width=\"600\" height=\"450\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p>મારો પ્રથમ વર્ડકેમ્પ &#8211; વર્ડકૅમ્પ ઉદયપુર 2017</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_132840/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_132840-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin and a woman showing WordCamp name tags\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_131922_hdr/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131922_HDR-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin in a cutout pink tuk tuk\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>મારી સેકન્ડ વર્ડકેમ્પ &#8211; વર્ડકેમ્પ મુંબઇ 2017</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_143547_1024/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20170325_143547_1024-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin by the WordCamp Mumbai tag\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_104005/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170325_104005-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin\'s Nametag\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>મારો ત્રીજો વર્ડકેમ્પ &#8211; વર્ડકેપ નાગપુર</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5327/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5327-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5338/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5338-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>આ ઇવેન્ટને તેના વર્ડકેમ્પ અમદાવાદ 2017 માં પહોંચાડવા માટે વધુ અને વધુ સખત મહેનત કર્યા પછી</p>\n<p>મારી ફોર્થ વર્ડકેમ્પ &#8211; વર્ડકેમ્પ અમદાવાદ 2017 સ્વયંસેવક તરીકે</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_081917/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_081917-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_153955/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_153955-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>મારો પાંચમા વર્ડકેમ્પ &#8211; વર્ડકામ મુંબઇ 2018 (સેકન્ડ ટાઇમ)</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739.jpg\"><img class=\"aligncenter size-large wp-image-2541\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739-768x1024.jpg\" alt=\"\" width=\"768\" height=\"1024\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p>હું એક WordCamp પ્રેમી છું વર્ડકેમ્પ નવા લોકોને મળે, જ્ઞાન અને જ્ઞાન વહેંચવાનો એક માર્ગ છે!</p>\n<p>છેલ્લે WordCamp યુરોપ 2018 માં સાચા મારા સપના. છેલ્લે હું WordCamp યુરોપ 2018 માં સ્વયંસેવક છું.</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\"><img class=\"aligncenter size-full wp-image-2540\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\" alt=\"WCEU Volunteer Badge\" width=\"600\" height=\"600\" /></a></p>\n<p>&#8220;કોડ કવિતા છે&#8221;</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Childhood to WordPress\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Childhood%20to%20WordPress&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fchildhood-to-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Childhood to WordPress\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fchildhood-to-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fchildhood-to-wordpress%2F&title=Childhood+to+WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Childhood to WordPress\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/childhood-to-wordpress/&media=https://heropress.com/wp-content/uploads/2018/05/050218-150x150.jpg&description=Childhood to WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Childhood to WordPress\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/childhood-to-wordpress/\" title=\"Childhood to WordPress\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/childhood-to-wordpress/\">Childhood to WordPress</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 12:45:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Pravin Parmar\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"Dev Blog: The Month in WordPress: April 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5891\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/05/the-month-in-wordpress-april-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4980:\"<p>This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>The WordPress 15th Anniversary is Coming</h2>\n\n<p>On May 27 2018, <a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">WordPress will turn 15 years old</a> — this is a huge milestone for the project, or, indeed, for any open-source platform. The Community Team has been hard at work helping communities around the world plan local anniversary parties.</p>\n\n<p>Check <a href=\"https://wp15.wordpress.net/\">the central anniversary website</a> to see if there’s already a party being planned near you. These parties are all organized by local communities — if there’s no local community in your area, you can <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">start one today</a> and host a party yourself.</p>\n\n<h2>Work has Started on a Gutenberg Migration Guide</h2>\n\n<p>With Gutenberg, the upcoming WordPress content editor, in rapid development, a lot of people have been wondering how they will convert their existing plugins to work with the new features. To mitigate the issues here and help people overcome any migration hurdles, <a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">a Gutenberg Migration Guide is underway</a> to assist developers with making their code Gutenberg-compatible.</p>\n\n<p>If you’d like to contribute to this guide, you can review <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">the existing documentation on GitHub</a> and <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/issues\">open a new issue</a> if you find something to add.</p>\n\n<h2>Theme Review Team Launches Trusted Authors Program</h2>\n\n<p>Reviews of themes submitted to the Theme Directory can take quite a while to complete. In order to combat this issue and to make the theme submission process smoother for everyone, <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">the Theme Review Team is introducing a Trusted Authors Program</a>.</p>\n\n<p>This program will allow frequent and reliable theme authors to apply for trusted status, allowing them to upload themes more frequently and to have their themes automatically approved. This will allow more high-quality themes to be added to the directory, as well as recognize the hard work that authors put in to build their themes.</p>\n\n<p>If you would like to get involved with reviewing themes, you can read <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">their getting started guide</a>, follow the <a href=\"https://make.wordpress.org/themes/\">team blog</a> and join the #themereview channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li><a href=\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\">WordPress 4.9.5 was released</a> early this month, fixing numerous bugs and potential security issues. The two leads for this release <a href=\"https://make.wordpress.org/core/2018/04/20/4-9-5-feedback-leading-a-wordpress-minor-release/\">published some interesting feedback</a> about the process.</li>\n    <li>In addition to the Trusted Authors Program mentioned above, the Theme Review Team is <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/\">making some changes to their review process</a> to minimize theme review delays.<br /></li>\n    <li>The Marketing Team produced <a href=\"https://make.wordpress.org/marketing/2018/04/24/contributor-day-onboarding-pdf/\">a handy Contributor Day onboarding PDF</a> for organizers to hand out to contributors attending WordCamps.</li>\n    <li>The Accessibility Team is actively looking for contributors for <a href=\"https://make.wordpress.org/accessibility/handbook/\">their handbook</a>.</li>\n    <li>A new type of WordCamp, <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">targeted at organizers</a>, is in the planning stages now.</li>\n    <li><a href=\"https://wordpress.org/about/\">The WordPress.org About pages</a> received a significant redesign to make them more clear and useful.</li>\n    <li>The Community Team <a href=\"https://make.wordpress.org/community/2018/04/27/wordcamp-incubator-program-2018-2019-roadmap/\">posted the roadmap</a> for this year’s WordCamp Incubator program.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 08:30:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"WPTavern: WordSesh 5 Scheduled for July 25th\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80677\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wptavern.com/wordsesh-5-scheduled-for-july-25th\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1124:\"<p>After not having an event in 2017, <a href=\"https://wordsesh.com/\">WordSesh</a>, a virtual WordPress conference, is returning July 25th. The event is being organized by Brian Richards, Founder of <a href=\"https://wpsessions.com/\">WPSessions</a> and a collection of partners. ﻿</p>\n\n<p>The <a href=\"https://wpsessions.com/\">schedule</a> is online and like previous events, there is a mixture of sessions and live podcasts. Based on the sessions, this year&#8217;s event leans towards consultants and developers. <br /></p>\n\n<img />\n    WordSesh 2018 Schedule\n\n\n<p>WordSesh five will have a hallway track that provides multiple ways for attendees to get in touch with speakers and other viewers. Attendees will also receive digital swag.</p>\n\n<p>Richards is encouraging Meetup organizers to host viewing parties. If you&#8217;d like to coordinate a viewing party for your meetup or co-working space, please contact Wordseshlive at gmail.com.</p>\n\n<p>Tickets are not yet available but those who sign up to the <a href=\"https://wordsesh.com/\">site&#8217;s email list</a> will be the first to know when they are.<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 05:10:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: WordPress Theme Review Team Launches Trusted Authors Program\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80587\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/wordpress-theme-review-team-launches-trusted-authors-program\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2669:\"<p>In an effort to further streamline the review process and take some of the burden off of reviewers, the WordPress Theme Review team <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">has launched</a> a Trusted Authors Program.</p>\n\n<p>The program is for authors who consistently submit themes that follow the <a href=\"https://make.wordpress.org/themes/handbook/review/required/\">WordPress theme review guidelines</a> and have three or fewer issues in multiple areas. Applications and approvals will be handled by team leaders only.</p>\n\n<p>To apply for the program, theme authors need to select a ticket for the team to take into consideration and submit it as a comment on the <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">announcement post</a>. This can either be a recently approved theme or a ticket in the new or final queue.</p>\n\n<p>In addition to following the guidelines, the theme must meet the following conditions.</p>\n\n<ol>\n    <li>Escaping/Sanitization with a maximum of three issues.</li>\n    <li>Needs to be 100% GPL with a maximum of three issues. This includes all of your products on your site or third-party sites.<br /></li>\n    <li>Can not create content and demo content must be used correctly.  <br /></li>\n    <li>The theme must not contain any PHP or JavaScript errors, plugin territory functionality, correct use of prefixing, enqueue, translations, and advertising. <br /></li>\n</ol>\n\n<p>Theme authors can submit a theme for review once every two weeks, must have at least one approved theme in the directory, and can not apply using a child theme. The privilege is non-transferable and themes that are approved can only be transferred to other accounts after six months.</p>\n\n<p>As with any program, there are consequences for breaking the rules. The announcement notes that the team will not take into consideration active installs counts, how old a theme is or a theme author&#8217;s financial distress and that suspensions will be given without hesitation.</p>\n\n<p>The team has already demonstrated their ability to enforce this thought process. Last year, <a href=\"https://wptavern.com/zerif-lite-returns-to-wordpress-org-after-5-month-suspension-and-63-decline-in-revenue\">Zerif Light was suspended</a> from the directory for five months, affecting 300K users and costing its parent company, ThemeIsle, $75k/month in lost revenue.</p>\n\n<p>If you have any questions or concerns about the program, you can contact any of the <a href=\"https://make.wordpress.org/themes/handbook/about/members/#team-repsleads\">team leads</a> on Slack. </p>\n\n<p></p>\n\n<p><br /></p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 04:23:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Matt: Chinese Bikeshare Photos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48075\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://ma.tt/2018/04/chinese-bikeshare-photos/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:641:\"<a href=\"https://www.theatlantic.com/photo/2018/03/bike-share-oversupply-in-china-huge-piles-of-abandoned-and-broken-bicycles/556268/\"><img /></a>\n    A worker rides a shared bicycle past piled-up shared bikes at a vacant lot in Xiamen, Fujian province, China December 13, 2017. Picture taken December 13, 2017. REUTERS/Stringer\n\n\n<p>I find myself frequently returning to <a href=\"https://www.theatlantic.com/photo/2018/03/bike-share-oversupply-in-china-huge-piles-of-abandoned-and-broken-bicycles/556268/\">this Atlantic photo essay on the Chinese bike share companies flooding the streets with bikes</a>. It&#8217;s strangely beautiful.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Apr 2018 17:53:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Matt: Rent-A-Family in Japan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48060\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ma.tt/2018/04/rent-a-family-in-japan/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:909:\"<p><a href=\"http://elifbatuman.com/\">Elif Batuman</a>, who was recently a Pulitzer finalist for her novel <a href=\"https://www.amazon.com/dp/B01HNJIJ3U/\"><em>The Idiot</em></a>, has a stunning story in the <em>New Yorker</em> on <a href=\"https://www.newyorker.com/magazine/2018/04/30/japans-rent-a-family-industry\">Japan’s Rent-a-Family Industry</a>, &#8220;People who are short on relatives can hire a husband, a mother, a grandson. The resulting relationships can be more real than you’d expect.&#8221;</p>\n\n<p>You think from the title it&#8217;s going to be one of those gee-whiz stories or vaguely condescending toward Japanese, but what follows is actually an incredibly poignant and powerful view of society through a lens I had never imagined before. It&#8217;s a <a href=\"https://longreads.com/\">#longread</a> but I hope you take the time to sit with it this weekend. You may need a swordsman.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 29 Apr 2018 01:05:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"Post Status: The meta episode — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45443\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://poststatus.com/the-meta-episode-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2308:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian and Brian discuss meta data in WordPress, including the challenge of implementing data into new tools, such as the REST API and the Gutenberg editor.</p>\n<p>With the endless options of data complexity that’s historically possible with meta fields, the way these features are implemented into new projects has to be well thought out. There is continued activity with both the REST API and Gutenberg to make sure meta is well supported. There are several things that are worth knowing, if you are a consultant or a product maker in regard to working with WordPress meta.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2018/04/26/completing-the-implementation-of-metadata-registration-with-the-rest-api/\">Completing the implementation of meta data registration with the REST API</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/04/23/gutenberg-rest-api-and-you/\">Gutenberg, REST API, and You</a></li>\n<li><a href=\"https://github.com/alleyinteractive/wordpress-fieldmanager\">Fields Manager</a></li>\n<li><a href=\"https://www.advancedcustomfields.com/\">Advanced Custom Fields</a></li>\n<li><a href=\"https://cmb2.io/\">CMB2</a></li>\n</ul>\n<h3>Sponsor: Pippin&#8217;s Plugins</h3>\n<p>This episode is sponsored by Pippin’s Plugins. <a href=\"http://pippinsplugins.com/\">Pippin’s Plugins</a> creates a suite of plugins that work great alone, or together. Whether you need to restrict content, sell downloads, or start an affiliate program, they’ve got you covered. For more information, check out their <a href=\"http://pippinsplugins.com/\">website</a> and thank you to Pippin’s Plugins for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 20:10:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WPTavern: A Gutenberg Migration Guide for Developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80527\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wptavern.com/a-gutenberg-migration-guide-for-developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1423:\"<p>In order to help developers learn how to migrate from the classic editor to Gutenberg, Daniel Bachhuber has launched a <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">Gutenberg Migration Guide</a>. Bachhuber is <a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">seeking the community&#8217;s help</a> in identifying and filling a database to document all of the ways the classic editor can be customized.<br /></p>\n\n<blockquote class=\"wp-block-quote\">\n    <p> Take a look through the <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">Gutenberg Migration Guide</a>. For each action, filter, and so on, we’d like to document real-world examples of how they’ve been used. Then, for each of those real-world examples, identify how the feature might be replicated in Gutenberg.</p><cite>Daniel Bachhuber</cite></blockquote>\n\n<p>He uses the media_buttons action as an example. This action is commonly used to add a button to the top of the editor. Developers can accomplish the same task in Gutenberg <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/blob/master/action-media-buttons.md\">using the block inserter</a>. </p>\n\n<p>If you have any questions or suggestions, you&#8217;re encouraged to <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/issues\">create a new issue</a> on GitHub. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 20:06:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: WPWeekly Episode 313 – BuddyPress, Gutenberg, and An Upcoming Anniversary\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80519&preview=true&preview_id=80519\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/wpweekly-episode-313-buddypress-gutenberg-and-an-upcoming-anniversary\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2714:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I start the show with a shout out to <a href=\"https://webdevstudios.com/2018/04/24/10-years-webdevstudios/\">WebDevStudios</a>, a web development agency that&#8217;s celebrating its 10th year in business. We then cover what&#8217;s new in BuddyPress 3.0, why plugins hosted on WordPress.org can no longer claim legal compliance, and what to expect from 0.7 of the AMP for WordPress plugin. Last but not least, we share what&#8217;s new in Gutenberg 2.7 and explain why you shouldn&#8217;t edit content written in Gutenberg with the WordPress for iOS app just yet.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">Celebrate the WordPress 15th Anniversary on May 27</a><br />\n<a href=\"https://wptavern.com/plugins-hosted-on-wordpress-org-can-no-longer-guarantee-legal-compliance\">Plugins Hosted on WordPress.org Can No Longer Guarantee Legal Compliance</a><br />\n<a href=\"https://wptavern.com/buddypress-3-0-beta-2-released\">BuddyPress 3.0 Beta 2 Released</a><br />\n<a href=\"https://wptavern.com/wordpress-accessibility-team-is-seeking-contributors-for-its-handbook-project\">WordPress Accessibility Team Is Seeking Contributors for Its Handbook Project</a><br />\n<a href=\"https://wptavern.com/amp-for-wordpress-0-7-rc-1-released\">AMP for WordPress 0.7 RC 1 Released</a><br />\n<a href=\"https://wptavern.com/gutenberg-2-7-released-adds-ability-to-edit-permalinks\">Gutenberg 2.7 Released, Adds Ability to Edit Permalinks</a><br />\n<a href=\"https://wptavern.com/wordpress-for-ios-and-gutenberg-dont-get-along\">WordPress for iOS and Gutenberg Don’t Get Along</a><br />\n<a href=\"https://wptavern.com/talking-gutenberg-on-episode-eight-of-the-drunken-ux-podcast\">Talking Gutenberg on Episode Eight of the Drunken UX Podcast</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href=\"https://deliciousbrains.com/building-wordpress-plugins/\">Delicious Brains explains how they create and release WordPress plugins.</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 2nd 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #313:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 02:08:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"WPTavern: AMP for WordPress 0.7 RC 1 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80438\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wptavern.com/amp-for-wordpress-0-7-rc-1-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1966:\"<p>XWP, Automattic, and Google&#8217;s AMP team, <a href=\"https://make.xwp.co/2018/04/23/wordpress-amp-plugin-0-7-rc1/\">has released</a> 0.7 Release Candidate 1 of the <a href=\"https://wordpress.org/plugins/amp/\">AMP for WordPress plugin﻿</a>. Hinted at during <a href=\"https://www.youtube.com/watch?v=GGS-tKTXw4Y\">AMP Conf 2018</a> earlier this year, 0.7 is a major release that contains significant new features.</p>\n\n<p>This release adds Native AMP support for all of the default widgets, embeds, and commenting. Notifications will be triggered for posts that contain content with validation errors or if you use a theme or plugin that adds invalid AMP markup.</p>\n\n<p>While earlier versions of AMP displayed content in a way that was different from a site&#8217;s theme, 0.7 creates a native experience. For example, if you visit the <a href=\"https://ampdemo.xwp.io/\">AMP Conf WordPress Theme Demo site</a> on an iPhone 7, the site looks exactly the same. As you can see in the image below, you can&#8217;t tell it&#8217;s running AMP. <br /></p>\n\n<img />\n    AMP Conf Demo Theme\n\n\n<p>Before 0.7 is officially released, the development team is asking for users to put 0.7 RC 1 through its paces and <a href=\"https://github.com/Automattic/amp-wp/issues\">report issues</a> on the project&#8217;s GitHub page. You can download the <a href=\"https://github.com/Automattic/amp-wp/releases/download/0.7-RC1/amp.zip\">pre-release version here</a>.﻿<br />.﻿<br /></p>\n\n<p>For more information on the AMP project, <a href=\"https://wptavern.com/wpweekly-episode-309-all-amped-up\">listen to episode 309 of WordPress Weekly</a> where I interviewed <a href=\"https://medinathoughts.com/\">Alberto Medina</a>, Developer Advocate working with the Web Content Ecosystems Team at Google, and <a href=\"https://weston.ruter.net/\">Weston Ruter</a>, CTO of XWP. In this interview, we covered why the project was created, its future, and its potential impacts on the Open Web. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Apr 2018 17:30:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: How Delicious Brains Creates and Releases WordPress Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80410\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/how-delicious-brains-creates-and-releases-wordpress-plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:420:\"<p>Delicious Brains have <a href=\"https://deliciousbrains.com/building-wordpress-plugins/\">published the process</a> they use for creating and releasing WordPress plugins. The post covers development, brainstorming, reviewing, testing, and wire frames. The team also describes the products and services they use and the roles they play within their projects. How is their process different or similar to yours?<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Apr 2018 16:32:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"HeroPress: Second Careers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2514\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://heropress.com/second-careers/#utm_source=rss&utm_medium=rss&utm_campaign=second-careers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3381:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/05/042418-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I\'d rather solve the right problem with code that has room for improvement, than solve the wrong problem with perfect code.\" /><p>I&#8217;m always fascinated by people who find second careers when they&#8217;re at the top of their game in the first one. To be really excellent at something and then switch to something else altogether is fascinating to see. Very often those people bubble to the top of whatever career they venture into.</p>\n<p>This week&#8217;s HeroPress replay is titled &#8220;<a href=\"https://heropress.com/essays/moving-on-from-moving-on-stage/\">Moving On From Moving On Stage</a>&#8221; by Karin Taliga. Karin is a dancer, and has had a rich and full career in that field. But the web called to her. Like the siren&#8217;s song, always keening &#8220;Come play here, it&#8217;s wonderful!&#8221;</p>\n<p>When someone recommended I contact Karin 2 years ago she was winding up her dancing career and moving into a full time career as a web developer. The whole concept of a second career sounds exciting. I&#8217;ve always thought of &#8220;career&#8221; as something you do your whole life. But Karin has more adult life ahead of her than behind her, and I&#8217;m super excited to see where she goes with it.</p>\n<p>Check out Karin&#8217;s original post from May of 2016.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/moving-on-from-moving-on-stage/\">Moving On From Moving On Stage</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Second Careers\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Second%20Careers&via=heropress&url=https%3A%2F%2Fheropress.com%2Fsecond-careers%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Second Careers\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fsecond-careers%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fsecond-careers%2F&title=Second+Careers\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Second Careers\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/second-careers/&media=https://heropress.com/wp-content/uploads/2016/05/042418-150x150.jpg&description=Second Careers\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Second Careers\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/second-careers/\" title=\"Second Careers\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/second-careers/\">Second Careers</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Apr 2018 11:30:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: WordPress for iOS and Gutenberg Don’t Get Along\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80236\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/wordpress-for-ios-and-gutenberg-dont-get-along\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3064:\"<p>When it comes to editing and crafting content on the go, the <a href=\"https://apps.wordpress.com/mobile/\">WordPress Mobile apps</a> are a good choice. The question is, how does the editor in the iOS app interact with content written in Gutenberg? Let&#8217;s find out.</p>\n\n<h2>Quick Edits Turn Into Lengthy, Frustrating Fixes<br /></h2>\n\n<p>For testing purposes, I used a simple scenario that many users may run into. I&#8217;ve written and published a post in Gutenberg using paragraph, unordered lists, and image blocks. I then used the WordPress for iOS mobile app to access the post, correct a typo, and save it. The goal is to see if content is affected by saving it in a different editor.<br /></p>\n\n<p>Here is what the content looks like written and published in Gutenberg.</p>\n\n<img />\n    Content Written and Published in Gutenberg\n\n\n<p>Here is what the post looks like in the iOS app. It displays what appears to be Comment shortcodes at the beginning of each paragraph.<br /></p>\n\n<img />\n    Gutenberg Content in WordPress for Ios\n\n\n<p>After correcting a typo and saving the changes, this is what happened to the post. As you can see, what was supposed to be a quick fix has turned into a lengthy process of fixing the entire article in Gutenberg.</p>\n\n<img />\n    Content Written in Gutenberg After Editing in the WordPress for iOS App\n\n\n<p>All of the content runs together as one giant block. To say that this is frustrating is an understatement, especially if you&#8217;re on the road and don&#8217;t have access to a desktop or tablet that can load the WordPress backend.  <br /></p>\n\n<p>Here is what the content looks like in Gutenberg after saving the edits in the iOS app. There are large gaps and a few of the blocks have warnings stating that they appear to have been modified externally.</p>\n\n<img />\n    Content in Gutenberg After It Was Edited in the WordPress for iOS App\n\n\n<p>Clicking the convert to block buttons turns the messages into blocks but it doesn&#8217;t return the formatting and in some cases, content goes missing. Before editing in the iOS app, this block contained a quote with a citation. Now it&#8217;s empty. <br /></p>\n\n<img />\n    Quote Block Is Missing Content\n\n\n<p>WordPress has post revisions so I was able to quickly restore the breaking changes introduced by the iOS app. But this user experience between Gutenberg and the WordPress for iOS app is a great example of how something so simple can easily turn into a perceived disaster by users and ultimately, tarnish the new editor&#8217;s reputation.</p>\n\n<p>Searching the Gutenberg repository on Github for iOS <a href=\"https://github.com/WordPress/gutenberg/issues?utf8=%E2%9C%93&q=is%3Aissue+is%3Aopen+ios\">produces some results</a>, but none refer to the compatibility issues I experienced. </p>\n\n<p>I found out the hard way and will not be making any more changes to posts written in Gutenberg in the iOS app until compatibility between both editors exists. I recommend you don&#8217;t as well unless you want to fix a lot more than a typo. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Apr 2018 23:33:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"Dev Blog: Celebrate the WordPress 15th Anniversary on May 27\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3246:\"<p>May 27, 2018 is the <strong>15th anniversary</strong> of the <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">first WordPress release</a> <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">﻿</a>— and we can&#8217;t wait to celebrate!</p>\n\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=342%2C268&ssl=1\" alt=\"\" class=\"wp-image-5841\" width=\"342\" height=\"268\" />\n\n<h2>Party time!</h2>\n\n<p>Join WordPress fans all over the world in celebrating the 15th Anniversary of WordPress by throwing your own party! Here&#8217;s how you can join in the fun:</p>\n\n<ol>\n    <li>Check the <a href=\"https://wp15.wordpress.net/about/\">WordPress 15th Anniversary website</a> to see if there&#8217;s a party already planned for your town. If there is, RSVP for the party and invite your friends!<br /></li>\n    <li>If there isn&#8217;t, then pick a place to go where a bunch of people can be merry — a park, a pub, a backyard; any family-friendly venue will do!</li>\n    <li>List your party with <a href=\"https://www.meetup.com/pro/wordpress/\">your local WordPress meetup group</a> (Don&#8217;t have a group? <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">Start one!</a>)  and then spread the word to other local meetups, tech groups, press, etc and get people to say they’ll come to your party.</li>\n    <li><a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/wordpress-15th-anniversary-celebrations/#request-wordpress-15th-anniversary-swag\">Request</a> some special 15th anniversary WordPress swag (no later than April 27, please, so we have time to ship it to you).<br /></li>\n    <li>Have party attendees post photos, videos, and the like with the #WP15 hashtag, and <a href=\"https://wp15.wordpress.net/live/\">check out the social media stream</a> to see how the rest of the world is sharing and celebrating.</li>\n</ol>\n\n<p>Don&#8217;t miss this chance to participate in a global celebration of WordPress!<br /></p>\n\n<h2>Special Swag</h2>\n\n<p>In honor of the 15th anniversary, we’ve added some <a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\">special 15th anniversary items</a> in the swag store — you can use the offer code <strong>CELEBRATEWP15</strong> to take 15% off this (and any other WordPress swag you buy), all the way through the end of 2018!</p>\n\n<p>Keep checking the swag store, because we&#8217;ll be adding more swag over the next few weeks!</p>\n\n<h2>Share the fun</h2>\n\n<p>However you celebrate the WordPress 15th anniversary — with <a href=\"https://wp15.wordpress.net/about/\">a party</a>, with <a href=\"https://wp15.wordpress.net/swag/\">commemorative swag</a>, by <a href=\"https://wp15.wordpress.net/live/\">telling the world</a> what WordPress means to you — remember to use the #WP15 hashtag to share it! And don&#8217;t forget to <a href=\"https://wp15.wordpress.net/live/\">check the stream of WordPress 15th anniversary posts</a>.</p>\n\n<p>When <a href=\"https://venturebeat.com/2018/03/05/wordpress-now-powers-30-of-websites/\">30% of the internet</a> has a reason to celebrate, you know it&#8217;s going to be great! </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 21:07:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Gutenberg 2.7 Released, Adds Ability to Edit Permalinks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80121\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/gutenberg-2-7-released-adds-ability-to-edit-permalinks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1977:\"<p>Gutenberg 2.7 <a href=\"https://wordpress.org/plugins/gutenberg/\">is available</a> for testing and not only does it refine the visuals around block controls, it adds the highly requested ability to <a href=\"https://github.com/WordPress/gutenberg/pull/5756\">edit permalinks</a>.</p>\n\n<img />\n    Editing Permalinks in Gutenberg 2.7\n\n\n<p>A new pagination block is available that adds a page break, allowing users to break posts into multiple pages. The block is located in the <strong>Blocks &#8211; Layout Elements</strong> section.</p>\n\n<p>There are a number of changes to the link insertion interface. Gutenberg 2.7 brings back the option to have links open in the same window.<br /></p>\n\n<img />\n    Toggle Determines Whether Links Open in a New Window\n\n\n<p>When editing linked text, the Unlink icon now stays in the toolbar instead of displaying within the link options modal. When adding links, there&#8217;s a URL suggestion tool similar to what&#8217;s available in WordPress&#8217; current editor.</p>\n\n<p>What will be welcomed news to plugin developers, the <a href=\"https://github.com/WordPress/gutenberg/pull/6031\">PluginSidebar API</a> is ﻿exposed and considered final. According to the pull request, this change does the following.</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>Refactors all the existing Sidebar components to share the same set components and removes duplicated custom CSS styles applied to <code>&lt;PluginSidebar /></code>. There are no changes to the public API of <code>&lt;PublicSidebar /></code> component, other than it is going to be available under <code>wp.editPost.PluginSidebar</code>.</p><cite>Grzegorz Ziółkowski<br /></cite></blockquote>\n\n<p>This release, like the others before it, has a changelog that&#8217;s a mile long. Please check out the <a href=\"https://make.wordpress.org/core/2018/04/18/whats-new-in-gutenberg-18th-april/\">release post</a> for a detailed list of changes and links to issues on GitHub. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 03:05:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: WordPress Accessibility Team Is Seeking Contributors for Its Handbook Project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80068\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wptavern.com/wordpress-accessibility-team-is-seeking-contributors-for-its-handbook-project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1290:\"<p>The <a href=\"https://make.wordpress.org/accessibility/\">WordPress Accessibility team</a> is seeking contributors for its <a href=\"https://make.wordpress.org/accessibility/handbook/\">handbook project</a>. It&#8217;s a collection of tips, resources, <a href=\"https://make.wordpress.org/accessibility/handbook/which-tools-can-i-use/\">tools</a>, and <a href=\"https://make.wordpress.org/accessibility/handbook/best-practices/\">best practices</a>. The goal is to educate users through summaries, articles, and reference materials.<br /></p>\n\n<p>The handbook was created after the accessibility team repeatedly noticed the same accessibility issues cropping up and not having a central place to send people to learn about them.</p>\n\n<p>The team is looking for people to review articles, discover resources to add to the handbook, and suggest topics to cover. If you&#8217;re interested in contributing, please join the #<a href=\"https://wordpress.slack.com/archives/C6PK2QCTY\">accessibility-docs</a> channel on <a href=\"https://make.wordpress.org/chat/\">Slack</a> where you can ask questions and learn more about the project.</p>\n\n<p>Also, consider following <a href=\"https://twitter.com/WPAccessibility\">WPAccessibility</a> on Twitter to keep tabs on team projects and links to resources. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 01:57:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WPTavern: BuddyPress 3.0 Beta 2 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79984\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wptavern.com/buddypress-3-0-beta-2-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1844:\"<p>The BuddyPress development team <a href=\"https://buddypress.org/2018/04/buddypress-3-0-beta-1/\">has released</a> Beta 2 of BuddyPress 3.0. BuddyPress 3.0 is a major release that contains some significant changes. A new template pack called Nouveau will replace the bp-legacy template packs introduced in BuddyPress 1.7.</p>\n\n<p>The new template pack has been refactored to be semantic, accessible, and use a new set of markup files. Loops, members, and activity areas now run under Backbone to provide a smoother experience. JavaScript has been rewritten to be more modular and have better structure. <br /></p>\n\n<img />\n    BuddyPress 3.0 Customizer Options\n\n\n<p>BuddyPress 3.0 utilizes the Customizer by providing options to manipulate the Nouveau template pack or the site itself. For example, you can modify a user&#8217;s navigation options from the frontend. There&#8217;s also an option to adjust the number of columns for the Members loop. </p>\n\n<p>There are <a href=\"https://buddypress.trac.wordpress.org/query?status=closed&milestone=3.0&page=2&col=id&col=summary&col=status&col=milestone&col=owner&col=type&col=priority&order=priority\">138 tickets closed</a> in this release. In addition to what&#8217;s noted above, 3.0 will <a href=\"https://buddypress.trac.wordpress.org/ticket/7722\">remove support for WordPress 4.3 and below</a> and BuddyPress functions for bbPress 1.x forums <a href=\"https://buddypress.trac.wordpress.org/ticket/6851\">will be deprecated</a>.</p>\n\n<p>Considering the scope and breadth of changes in 3.0, users are highly encouraged to test <a href=\"https://buddypress.org/2018/04/buddypress-3-0-beta-1/\">BuddyPress 3.0 Beta 2</a>. If you encounter any issues, please report them in the <a href=\"https://buddypress.org/support/forum/how-to/\">Troubleshooting and How-to</a> section of the support forums. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Apr 2018 22:55:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"HeroPress: Where WordPress REALLY Matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2509\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://heropress.com/where-wordpress-really-matters/#utm_source=rss&utm_medium=rss&utm_campaign=where-wordpress-really-matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3591:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/03/041818-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: The silence is there. But it no longer scares me.\" /><p>A couple years ago I was given possibly the biggest gift the WordPress community has ever given me. The organizers of WordCamp Pune called me to speak, and the community sent me. It was an amazing experience that changed my life.</p>\n<p>While I was there I met Mahangu Weerasinghe, a wonderful man from Sri Lanka. He spoke about things that really really resonated with me. His talk was about linguistic accessibility to the Internet in Southeast Asia. Many people told me that English is enough to communicate to all of India, but Mahangu pointed out that MILLIONS of people in Southeast Asia cannot read or understand a single language on the web, let alone English.</p>\n<p>WordPress can change that, and that&#8217;s where WordPress really matters.  It&#8217;s wonderful that people around the world can make a living with it, and it&#8217;s wonderful that it gives creative outlet to so many, but <strong>important</strong> that WordPress can give global voice to those who have none.</p>\n<p>Mahangu felt for a long time that he had no voice. WordPress changed that for him, and now he&#8217;s using WordPress to change that for everyone.  He&#8217;s been hugely inspirational to me, and I hope he is for you as well.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/breaking-the-silence/\">Breaking the Silence</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Where WordPress REALLY Matters\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Where%20WordPress%20REALLY%20Matters&via=heropress&url=https%3A%2F%2Fheropress.com%2Fwhere-wordpress-really-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Where WordPress REALLY Matters\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fwhere-wordpress-really-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fwhere-wordpress-really-matters%2F&title=Where+WordPress+REALLY+Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Where WordPress REALLY Matters\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/where-wordpress-really-matters/&media=https://heropress.com/wp-content/uploads/2016/03/041818-150x150.jpg&description=Where WordPress REALLY Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Where WordPress REALLY Matters\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/where-wordpress-really-matters/\" title=\"Where WordPress REALLY Matters\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/where-wordpress-really-matters/\">Where WordPress REALLY Matters</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Apr 2018 12:00:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Matt: Abstract Aluminum\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48051\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://ma.tt/2018/04/abstract-aluminum/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:346:\"<p>You probably haven&#8217;t thought much about beer cans, Abstract Aluminum Space, the Midwest Premium, and how it all ties into Goldman Sachs, so you should read <a href=\"https://www.bloomberg.com/view/articles/2014-09-03/the-goldman-sachs-aluminum-conspiracy-lawsuit-is-over\">how the Goldman Sachs aluminum conspiracy lawsuit is over</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Apr 2018 21:57:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"BuddyPress: BuddyPress 3.0 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=272059\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://buddypress.org/2018/04/buddypress-3-0-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3509:\"<p>It&#8217;s with a huge amount of pleasure and excitement that we&#8217;re announcing the Beta 2 release of BP 3.0 today ready for testing and feedback.</p>\n<p>BuddyPress 3.0 will be a major milestone release for us and one we&#8217;re all really excited about, it&#8217;s been a long time coming but finally we are close to releasing the first template pack for BP, this is a completely new &#8216;theme&#8217; or set of template files and functionality designed to replace bp-legacy which has served us so well since it&#8217;s inception way back in the  major release of 1.7 where we introduced &#8216;Theme Compatibility&#8217;, and we&#8217;re all really eager for any feedback during these beta phases you may grab a copy of our beta1 release <a href=\"https://downloads.wordpress.org/plugin/buddypress.3.0.0-beta1.zip\">here</a> to test with.</p>\n<p>Nouveau &#8211; as our new template pack has been named &#8211; provides an all new clean set of markup files, refactored from the ground up to be semantic and accessible. Styles are re-written and provided as Sass partials for developers if wanting to build out new packs. A lot of core functionality for components has been re-written and re-located to be sourced from include files by component in the template directory which allows even easier access to modify functions by overloading to a new theme or child theme. Our major loops, members, activity etc have been re-factored to run under Backbone for a smooth Ajax experience and indeed all the Javascript functionality is re-written to be far more modular than it was before and has a far better modern feel to it&#8217;s structuring.</p>\n<p>For the first time we have brought in the Customizer to provide user option choices and a range of layout configurations may be selected. In our initial offering we have provided various layout options for the main BP navigation elements  allowing for vertical navs or horizontal, tab effect where suitable. for the component loops such as members, Groups we provide an option to display in a grid layout &amp; at row quantity options or simply as a flat classic list layout.</p>\n<p>While we are really excited about Nouveau 3.0 also has many other improvements to offer and you can <a href=\"https://buddypress.trac.wordpress.org/query?status=closed&milestone=3.0&col=id&col=summary&col=status&col=milestone&col=owner&col=type&col=priority&order=priority\">view a list of all closed tickets for 3.0</a></p>\n<p>As always your feedback and testing is an invaluable part of our releases, helping us to catch any last minute bugs.<br />\nYou can download the beta release for testing at <a href=\"https://downloads.wordpress.org/plugin/buddypress.3.0.0-beta1.zip\">downloads.wordpress.org</a> and install on a local copy of WordPress ( please remember this is a beta release and should not be run on an active production site). Any issues found can be reported on our Trac by creating a <a href=\"https://buddypress.trac.wordpress.org/newticket\">new ticket</a></p>\n<p>If you&#8217;re a developer comfortable with SVN you might like to checkout a development copy which you can do <a href=\"https://svn.buddypress.org/trunk\">from this link</a> patches can be submitted to existing tickets or issues found reported on a new ticket.</p>\n<p>Further guidance on contributing to BuddyPress is covered on our <a href=\"https://codex.buddypress.org/participate-and-contribute/\">Contributor guidelines page</a> in our <a href=\"https://codex.buddypress.org/\">Codex</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Apr 2018 20:30:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Hugo Ashmore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: Talking Gutenberg on Episode Eight of the Drunken UX Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79942\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/talking-gutenberg-on-episode-eight-of-the-drunken-ux-podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:738:\"<p>Last week, I had the pleasure of joining Michael Fienen and Aaron Hill, hosts of the Drunken UX podcast, to <a href=\"https://drunkenux.com/podcast/8-sweet-home-automattic-where-we-use-gutenberg/\">discuss Gutenberg</a>. We covered a lot of topics, including, why Gutenberg was created, our experiences, its timeline, pros, cons, resources, our biggest concerns, and what developers and freelancers need to know.</p>\n\n<p>The show is one hour and thirty minutes in length. By the way, please don&#8217;t criticize my drink of choice.</p>\n\n\n    <blockquote class=\"wp-embedded-content\"><a href=\"https://drunkenux.com/podcast/8-sweet-home-automattic-where-we-use-gutenberg/\">#8: Sweet Home Automattic, Where We Use Gutenberg</a></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Apr 2018 00:14:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: Plugins Hosted on WordPress.org Can No Longer Guarantee Legal Compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79884\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/plugins-hosted-on-wordpress-org-can-no-longer-guarantee-legal-compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2105:\"<p>The plugin review team has amended <a href=\"https://developer.wordpress.org/plugins/wordpress-org/detailed-plugin-guidelines/#9-developers-and-their-plugins-must-not-do-anything-illegal-dishonest-or-morally-offensive\">guideline number nine</a> which states, <em>developers and their plugins must not do anything illegal, dishonest, or morally offensive</em>, to include the following statement:</p>\n\n<ul>\n    <li>Implying that a plugin can create, provide, automate, or guarantee legal compliance</li>\n</ul>\n\n<p>Mika Epstein, a member of the WordPress.org plugin review team, <a href=\"https://make.wordpress.org/plugins/2018/04/12/legal-compliance-added-to-guidelines/\">says</a> the change was made because plugins by themselves can not provide legal compliance. <br /></p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>Sadly, no plugin in and of itself can provide legal compliance. While a plugin can certainly <em>assist</em> in automating the steps on a compliance journey, or allow you to develop a workflow to solve the situation, they cannot protect a site administrator from mistakes or lack of compliance, nor can they protect site users from incorrect or incomplete legal compliance on the part of the web site.</p><cite>Mika Epstein</cite></blockquote>\n\n<p>Since sites can have any combination of WordPress plugins and themes activated, it&#8217;s nearly impossible for a single plugin to make sure they&#8217;re 100% legally compliant.</p>\n\n<p>Plugin developers affected by this change will be contacted by the review team and be asked to change their titles, descriptions, plugin header images, and or the text within the readme.</p>\n\n<p>Instead of claiming compliance, the team has published a <a href=\"https://developer.wordpress.org/plugins/wordpress-org/compliance-disclaimers/\">frequently asked questions</a> document that recommends plugin authors explain how the plugin will assist in compliance. If you have any questions, please leave a comment on the <a href=\"https://make.wordpress.org/plugins/2018/04/12/legal-compliance-added-to-guidelines/\">announcement post</a>. </p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Apr 2018 23:35:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"Post Status: All about you(r privacy) — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45249\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://poststatus.com/all-about-your-privacy-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2485:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p><span>In this episode, the two Brians discuss the current conversations and controversy surrounding data collection and visitor privacy on the web. The duo dig in to the General Data Protection Regulation (GDPR) and what it means for you both as site visitors and site owners and, in particular, how WordPress core and plugin authors are (or should be) responding to the new regulation. It’s a pretty deep topic with many implications and ramifications. Be sure to follow the episode links, too, so that you can be best informed and prepared for when GDPR goes into effect on May 25, 2018.</span></p>\n<p></p>\n<p>Links</p>\n<ul>\n<li><a href=\"https://www.cjr.org/tow_center_reports/understanding-general-data-protection-regulation.php\">CJR report on understanding the General Data Protection Regulation</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">Core&#8217;s roadmap for GDPR compliance</a></li>\n<li><a href=\"https://core.trac.wordpress.org/query?status=!closed&keywords=~gdpr\">Trac issues related to GDPR</a></li>\n<li><a href=\"https://pagely.com/blog/gdpr-wordpress-2018-resources/?mc_cid=a002d1fc74&mc_eid=58d2ea272a\">Pagely&#8217;s GDPR guide</a></li>\n<li><a href=\"https://www.smashingmagazine.com/2018/02/gdpr-for-web-developers/?mc_cid=a002d1fc74&mc_eid=58d2ea272a\">Heather Burns&#8217; detailed GDPR analysis in Smashing Magazine</a></li>\n</ul>\n<h3>Sponsor: Valet</h3>\n<p>This episode is sponsored by <a href=\"https://www.valet.io/\">Valet</a>. Valet helps keep your clients happy &amp; coming back. They offer expert services and keep the websites they manage functioning flawlessly. They offer preventative care that provides peace of mind around the clock. For more information, check out <a href=\"https://www.valet.io/\">their website</a> and thank you to Valet for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Apr 2018 12:56:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Matt: Russell’s Treadmill\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48043\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://ma.tt/2018/04/russells-treadmill/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:704:\"<p>From <a href=\"https://www.amazon.com/dp/B015D3X0YG\">Bertrand Russell&#8217;s A Conquest of Happiness</a>.</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>It is very singular how little men seem to realize that they are not caught in the grip of a mechanism from which there is no escape, but that the treadmill is one upon which they remain merely because they have not noticed that it fails to take them up to a higher level.</p>\n</blockquote>\n\n<p>He also says later, &#8220;﻿There are two motives for reading a book: one, that you enjoy it; the other, that you can boast about it.&#8221; <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f602.png\" alt=\"😂\" class=\"wp-smiley\" /></p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Apr 2018 20:22:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"Dev Blog: GDPR Compliance Tools in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5728\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2018/04/gdpr-compliance-tools-in-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3913:\"<p>GDPR compliance is an important consideration for all WordPress websites. The GDPR Compliance team is looking for help to test the privacy tools that are currently being developed in core. </p>\n\n<h2>What is GDPR?</h2>\n\n<p>GDPR stands for <a href=\"https://en.wikipedia.org/wiki/General_Data_Protection_Regulation\">General Data Protection Regulation</a> and is intended to strengthen and unify data protection for all individuals within the European Union. Its primary aim is to give control back to the EU residents over their personal data. <br /></p>\n\n<p>Why the urgency? Although the GDPR was introduced two years ago, it becomes  enforceable starting May 25, 2018.</p>\n\n<h2>Make WordPress GDPR Compliance Team</h2>\n\n<p>Currently, the GDPR Compliance Team understands that helping WordPress-based sites become compliant is a large and ongoing task. The team is focusing on creating a comprehensive core policy, plugin guidelines, privacy tools and documentation. All of this requires your help.<br /></p>\n\n<p>The GDPR Compliance Team is focusing on four main areas:</p>\n\n<ul>\n    <li>Add functionality to assist site owners in creating comprehensive privacy policies for their websites.</li>\n    <li>Create guidelines for plugins to become GDPR ready.</li>\n    <li>Add administration tools to facilitate compliance and encourage user privacy in general.</li>\n    <li>Add documentation to educate site owners on privacy, the main GDPR compliance requirements, and on how to use the new privacy tools.</li>\n</ul>\n\n<h2>Don’t we already have a privacy policy?</h2>\n\n<p>Yes and no. That said, The GDPR puts tighter guidelines and restrictions. Though we have many plugins that create privacy pages, we need means to generate a unified, comprehensive privacy policy. We will need tools for users to easily come into compliance.<br /></p>\n\n<p>Site owners will be able to create GDPR compliant privacy policy in three steps:</p>\n\n<ol>\n    <li>Adding a dedicated page for the policy.<br /></li>\n    <li>Adding privacy information from plugins.</li>\n    <li>Reviewing and publishing the policy.</li>\n</ol>\n\n<p>A new &#8220;postbox&#8221; will be added to the Edit Page screen when editing the policy. All plugins that collect or store user data will be able to add privacy information there. In addition it will alert the site owners when any privacy information changes after a plugin is activated, deactivated, or updated.<br /></p>\n\n<p>There is a new functionality to confirm user requests by email address. It is intended for site owners to be able to verify requests from users for displaying, downloading, or anonymizing of personal data.<br /></p>\n\n<p>A new &#8220;Privacy&#8221; page is added under the &#8220;Tools&#8221; menu. It will display new, confirmed requests from users, as well as already fulfilled requests. It will also contain the tools for exporting and anonymizing of personal data and for requesting email confirmation to avoid abuse attempts.<br /></p>\n\n<p>New section on privacy will be added to the <a href=\"https://developer.wordpress.org/plugins/\">Plugin Handbook</a>. It will contain some general information on user privacy, what a plugin should do to be compliant, and also tips and examples on how to use the new privacy related functionality in WordPress.<br /></p>\n\n<p>The new privacy tools are scheduled for release at the end of April or beginning of May 2018.</p>\n\n<h2>How can you get involved?</h2>\n\n<p>We would love to have your help. The first step is awareness and education. For more information about the upcoming privacy tools see ﻿<a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">the roadmap</a>.</p>\n\n<p>If you would like to get involved in building WordPress Core and testing the new privacy tools, please join the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress</a> Slack group.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Apr 2018 20:11:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Andrew Ozz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"WPTavern: WPWeekly Episode 312 – Dragon Drop, WordPress Accessibility Statement, and WooCommerce GDPR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=79862&preview=true&preview_id=79862\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"https://wptavern.com/wpweekly-episode-312-dragon-drop-wordpress-accessibility-statement-and-woocommerce-gdpr\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1888:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I start the show by sharing our thoughts on Mark Zuckberberg&#8217;s congressional hearing. We then discuss what&#8217;s new in Gutenberg 2.6 and describe our user experience. We let you know what&#8217;s in WooCommerce 3.3.5 and discuss what the development team is doing to prepare for GDPR compliance.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/gutenberg-2-6-introduces-drag-and-drop-block-sorting\">Gutenberg 2.6 Introduces Drag and Drop Block Sorting</a><br />\n<a href=\"https://wptavern.com/theme-review-changes-place-more-onus-onto-theme-authors\">Theme Review Changes Place More Onus Onto Theme Authors</a><br />\n<a href=\"https://wordpress.org/about/accessibility/\">WordPress Accessibility Statement</a><br />\n<a href=\"https://woocommerce.wordpress.com/2018/04/10/woocommerce-3-3-5-fix-release-notes/\">WooCommerce 3.3.5 Released</a><br />\n<a href=\"https://woocommerce.wordpress.com/2018/04/10/how-were-tackling-gdpr-in-woocommerce-core/\">How WooCommerce is tackling GDPR</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href=\"https://atomicblocks.com/introducing-the-atomic-blocks-plugin-and-theme/\">AtomBlocks by Mike McAlister</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, April 18th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #312:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Apr 2018 01:05:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"HeroPress: Growing Up Rural\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2503\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://heropress.com/growing-up-rural/#utm_source=rss&utm_medium=rss&utm_campaign=growing-up-rural\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2947:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2015/10/ImpactForOthers-HeroPress-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I hope and pray that in some small way I\'ll be able to take what I\'ve learned and make an impact for others.\" /><p>This week&#8217;s throwback essay is titled &#8220;<a href=\"https://heropress.com/essays/i-dont-know-anything-and-thats-ok/\">I don&#8217;t know anything, and that&#8217;s ok</a>&#8220;. It was written back in 2015 by my friend Kyle. He and I grew up in similar circumstances; far from a hub of civilization, in a relatively economically depressed area, without the best education opportunities.</p>\n<p>Yet he and I both managed to find the web, dive in, and find home. We support our families and find joy in the work we produce. I&#8217;m not sure there&#8217;s a better way to live than that.</p>\n<p>Check out Kyle&#8217;s essay and let him know what you think.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/i-dont-know-anything-and-thats-ok/\">I Don’t Know Anything and That’s OK</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Growing Up Rural\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Growing%20Up%20Rural&via=heropress&url=https%3A%2F%2Fheropress.com%2Fgrowing-up-rural%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Growing Up Rural\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fgrowing-up-rural%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fgrowing-up-rural%2F&title=Growing+Up+Rural\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Growing Up Rural\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/growing-up-rural/&media=https://heropress.com/wp-content/uploads/2015/10/ImpactForOthers-HeroPress-150x150.jpg&description=Growing Up Rural\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Growing Up Rural\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/growing-up-rural/\" title=\"Growing Up Rural\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/growing-up-rural/\">Growing Up Rural</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Apr 2018 12:15:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Theme Review Changes Place More Onus Onto Theme Authors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79771\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/theme-review-changes-place-more-onus-onto-theme-authors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2093:\"<p>The WordPress Theme Review team has <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/\">implemented changes</a> that simplify the process and places more responsibility onto theme authors. Theme reviewers now only need to check the following items to pass a theme.</p>\n\n<ul>\n    <li>Licensing</li>\n    <li>Malicious or egregious stuff</li>\n    <li>Content Creation</li>\n    <li>Security</li>\n</ul>\n\n<p>Although the bar to pass a theme is significantly lower, theme authors are still expected to follow the <a href=\"https://make.wordpress.org/themes/handbook/review/required/\">required</a> and <a href=\"https://make.wordpress.org/themes/handbook/review/recommended/\">recommended</a> requirements listed in the theme handbook.</p>\n\n<p>Moderators will check themes after they&#8217;ve gone live to make sure the author is following guidelines. If a moderator discovers any issues, a request will be made to the theme author to correct them. Failure to do so could lead to a temporary or permanent suspension.</p>\n\n<p>Justin Tadlock <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/#comment-43128\">clarified</a> in the comments examples of egregious issues.</p>\n\n<ul>\n    <li>Illegal</li>\n    <li>Dishonest</li>\n    <li>Morally offensive</li>\n    <li>PHP Errors</li>\n</ul>\n\n<p>In the past two years, The Theme Review Team has battled the theme review queue with moderate success. <a href=\"https://wptavern.com/wordpress-theme-review-team-making-progress-on-clearing-out-1000-review-backlog\">In early 2017</a>, the number of themes in the queue dropped below 200. Although there has been some work on automating the process, it&#8217;s largely reliant on humans.</p>\n\n<p>Even though it hasn&#8217;t been updated in more than a year, theme authors are highly encouraged to use the <a href=\"https://wordpress.org/plugins/theme-check/\">Theme Check plugin</a> before submitting themes for review.</p>\n\n<p>With a simplified process to get a theme live, reviewers are hoping it will free them up to focus on larger projects.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Apr 2018 23:45:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WPTavern: Gutenberg 2.6 Introduces Drag and Drop Block Sorting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79658\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/gutenberg-2-6-introduces-drag-and-drop-block-sorting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1729:\"<p><a href=\"https://wordpress.org/plugins/Gutenberg/\">Gutenberg 2.6</a> is available for download and with it, comes a new way of sorting blocks. In addition to using up and down arrows, this version introduces the ability to sort blocks by <a href=\"https://github.com/WordPress/gutenberg/issues/6041\">dragging and dropping</a>.</p>\n\n<p>If you hover the cursor over the up and down arrows on the left side of a block, you&#8217;ll see a hand icon. Simply click, hold, and drag the block up or down below or above the blue indicator.</p>\n\n\n    \n\n\n<p>In my limited testing, I found drag and drop to be hit or miss. Sometimes, when I try to drag and drop a block, the blue line doesn&#8217;t show up.</p>\n\n<p>The hand icon for the cursor is different for the top and bottom of the block. You can drag a block by hovering over the bottom of it but you can&#8217;t do it from the top.</p>\n\n<img />\n    Hovering the cursor at the top of the block\n\n\n<img />\n    Hovering the cursor at the bottom of the block\n\n\n<p>I also found it difficult to add a new block manually. For example, when I add a paragraph block, I don&#8217;t see the Plus icon to create a new block underneath it anymore.</p>\n\n<p>Pressing enter at the end of a paragraph creates a new Paragraph block automatically. But I don&#8217;t know how to transform it into an image block. I&#8217;ll need to do more testing to figure out what&#8217;s going on. <br /></p>\n\n<p>There&#8217;s a host of <a href=\"https://make.wordpress.org/core/2018/04/05/whats-new-in-gutenberg-5th-april/\">other improvements and bug fixes </a>in this release, some of which I covered <a href=\"https://wptavern.com/an-update-to-my-gutenberg-experience\">in this post</a>. ﻿<br />. ﻿<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Apr 2018 00:09:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Post Status: Designing the news — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45154\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://poststatus.com/designing-the-news-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1904:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p><span>In this episode, Brian and Brian discuss a variety of news topics spanning design, development, and business. Tune in to learn about the history of WordPress and the web, the newest TechCrunch redesign, a WordCamp for WordCamp organizers, and more.</span></p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://zeen101.com/for-developers/leakypaywall/\">Leaky Paywall</a></li>\n<li><a href=\"https://designintech.report/\">2018 Design in Tech report</a></li>\n<li><a href=\"https://gutenberg.courses/development/\">Gutenberg Development Course</a></li>\n<li><a href=\"https://techcrunch.com/2018/03/13/welcome-to-the-new-techcrunch/\">TechCrunch redesign</a></li>\n<li><a href=\"https://thehistoryoftheweb.com/the-story-of-wordpress/\">WordPress turns 15</a>, via History of the Web</li>\n<li><a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">Proposal for a WordCamp for WordCamp organizers </a></li>\n</ul>\n<h3>Sponsor: Gravity Forms</h3>\n<p><a href=\"http://www.gravityforms.com/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">Gravity Forms</a> makes the best web forms on the planet. Over a million WordPress sites are already using Gravity Forms. Is yours? Thanks to Gravity Forms for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 09 Apr 2018 18:36:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WPTavern: An Update to My Gutenberg Experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79564\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wptavern.com/an-update-to-my-gutenberg-experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2508:\"<p>Not long after I published <a href=\"https://wptavern.com/my-gutenberg-experience-thus-far\">my experience with Gutenberg</a>, developers reached out to me to work on some of the issues I mentioned. Riad Benguella <a href=\"https://github.com/WordPress/gutenberg/pull/5902\">figured out</a> why meta boxes were not collapsing or expanding.</p>\n\n<p>It turns out that some meta boxes depend on the post script which has a side effect of calling the window.postboxes.add_postbox_toggles( postType ) twice, causing meta boxes to break.</p>\n\n<p>Gutenberg 2.6 <a href=\"https://make.wordpress.org/core/2018/04/05/whats-new-in-gutenberg-5th-april/\">released earlier this week</a>, fixes the issue and all meta boxes function properly again. This also fixes the issue I had with the Telegram for WordPress plugin. <br /></p>\n\n<p><a href=\"https://wordpress.org/plugins/public-post-preview/\">Public Post Preview</a> still doesn&#8217;t work in Gutenberg but the plugin&#8217;s developer, Dominik Schilling, shared some experiments he has conducted with adding support for Gutenberg on Twitter.</p>\n\n\n    <blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Can\'t wait for seeing Gutenberg in WordPress core. So many new possibilities. Even for Public Post Preview (<a href=\"https://t.co/Xsw9hugxKT\">https://t.co/Xsw9hugxKT</a>). With just a few lines I was able to create this: <a href=\"https://t.co/fxyuBIMPOl\">pic.twitter.com/fxyuBIMPOl</a></p>&mdash; Dominik Schilling <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f30a.png\" alt=\"🌊\" class=\"wp-smiley\" /> (@ocean90) <a href=\"https://twitter.com/ocean90/status/980420608822562816?ref_src=twsrc%5Etfw\">April 1, 2018</a></blockquote>\n\n\n<p>In the preview video, you can see Public Post Preview&#8217;s options added to the sidebar and in addition to generating a link, you can choose when that URL expires which is better than what&#8217;s currently available in the plugin.</p>\n\n<p>I mentioned how Tags would sometimes disappear and there overall behavior was inconsistent. This <a href=\"https://github.com/WordPress/gutenberg/pull/5913\">pull request </a>that made it into Gutenberg 2.6, fixes the issue by only including the term in the Tag selector if it&#8217;s known.</p>\n\n<p>Although I&#8217;m still bummed that certain plugins are not yet compatible with Gutenberg, I&#8217;m pretty happy that two of the major pain points I experienced have been fixed. Thanks to Riad, Tammie Lister, and others for helping to solve these problems so quickly. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Apr 2018 21:29:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: A WordCamp for Organizers Is in the Planning Stages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79513\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wptavern.com/a-wordcamp-for-organizers-is-in-the-planning-stages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2684:\"<p>Last year, Drew Jaynes and Carol Stambaugh <a href=\"https://make.wordpress.org/community/2017/08/16/proposed-event-wordcamp-for-wordcamp-organizers/\">proposed</a> a new WordCamp event geared towards organizers to the WordPress Community Team. After fleshing out the details and discussing the idea over the course of seven months, the duo <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">has announced</a> that a WordCamp for Organizers is officially on the table.</p>\n\n<p>The goal of the event is to provide an opportunity for meetup and WordPress event organizers to share their experience with others in the community. The plan is to host a one-day event a day or two before <a href=\"https://2018.us.wordcamp.org/\">WordCamp US</a> in Nashville, TN, later this year.</p>\n\n<p>&#8220;The idea for WordCamp for Organizers – what some of us affectionately refer to as &#8216;dotOrganize&#8217; – was really borne out of many conversations I’ve had over the years with others in the WordPress community lamenting the lack of a ready knowledge sharing opportunity between event organizers,&#8221; Jaynes said.</p>\n\n<p>&#8220;One common thread seemed to be the idea of common lessons learned, and how awesome it would be to just have an event for organizers to get together and swap tips and tricks. </p>\n\n<p>&#8220;We’re all here organizing the same community, maybe we should get together and trade notes! And so we now have a new topic-based WordCamp just for organizers. </p>\n\n<p>&#8220;It’s kind of meta – organizing a WordCamp for Organizers, but I really feel like this could be a boon for anybody currently organizing or looking to start organizing in WordPress. Exciting!&#8221;</p>\n\n<p>Some of the session topics that could be presented on include:</p>\n\n<ul>\n    <li>Spreading the word about your community events</li>\n    <li>Tips for wrangling speakers, volunteers, and sponsors</li>\n    <li>Conflict resolution among organizing teams</li>\n    <li>How to respond to a code of conduct issue</li>\n    <li>Finding and using official organizing tools and resources<br /></li>\n</ul>\n\n<p>The team is seeking volunteers who can spend 2-4 hours per week to help organize the event. Although it&#8217;s focused on organizers, those who have attended many conferences, including WordCamps, with little event organizing experience, are encouraged to join the team.</p>\n\n<p>If you&#8217;re interested in volunteering, please leave a comment on the <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">official announcement post</a>. </p>\n\n<p><br /></p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Apr 2018 00:22:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPTavern: Jetpack 6.0 Takes Steps Towards GDPR Compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79459\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/jetpack-6-0-takes-steps-towards-gdpr-compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1148:\"<p>Jetpack 6.0 <a href=\"https://jetpack.com/2018/04/03/jetpack-6-0/\">is available</a> for upgrade. It comes with improvements to the social media icons widget, enhanced brute force protection, and better compatibility between WooCommerce and Jetpack.</p>\n\n<p>Its headlining features though are privacy related as the <a href=\"https://www.eugdpr.org/\">General Data Protection Regulation</a> (GDPR) is set to go into effect May 25th. In 6.0, Jetpack has a dedicated privacy settings page that links to privacy documents and includes a way to opt-out of activity tracking.</p>\n\n<p>These settings can be accessed by clicking the Privacy link at the bottom of the Jetpack Dashboard page. </p>\n\n<img />\n    Jetpack 6.0 Privacy Settings\n\n\n<p>The &#x27;<a href=\"https://jetpack.com/support/what-data-does-jetpack-sync/\">What Data Does Jetpack Sync</a>&#x27; page outlines what data is used, how it&#x27;s used, the relationship it has with the WordPress mobile apps, and provides an inside look at how Jetpack works.</p>\n\n<p>These are the first steps towards GDPR compliance with more updates planned before the regulation goes into effect next month. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Apr 2018 23:20:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"WPTavern: WPWeekly Episode 311 – Jetpack 6.0, WordPress 4.9.5, and A WordCamp for Organizers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=79447&preview=true&preview_id=79447\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wptavern.com/wpweekly-episode-311-jetpack-wordpress-4-9-5-and-a-wordcamp-for-organizers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1628:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss a <a href=\"https://glueckpress.com/9336/amp-and-wordpress/\">great article</a> published by Caspar Hübinger on AMP and WordPress. We cover what&#8217;s new in WordPress 4.9.5, Jetpack 6.0, and a WordCamp geared toward organizers.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/wordpress-4-9-5-squashes-25-bugs\">WordPress 4.9.5 Squashes 25 Bugs</a><br />\n<a href=\"https://wptavern.com/try-gutenberg-prompt-pushed-back-to-a-later-release\">‘Try Gutenberg’ Prompt Pushed Back to A Later Release</a><br />\n<a href=\"https://jetpack.com/2018/04/03/jetpack-6-0/\">Jetpack 6.0 Released</a><br />\n<a href=\"https://make.wordpress.org/community/2018/04/03/code-of-conduct-survey/\">Code of Conduct Survey</a><br />\n<a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">Want to Help Organize a WordCamp for Organizers?</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, April 11th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #311:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Apr 2018 01:15:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"HeroPress: The Year I Got Cancer Was The Year My WordPress Business Took Off\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2497\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:204:\"https://heropress.com/essays/the-year-i-got-cancer-was-the-year-my-wordpress-business-took-off/#utm_source=rss&utm_medium=rss&utm_campaign=the-year-i-got-cancer-was-the-year-my-wordpress-business-took-off\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8809:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/04/040418-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Take care of yourselves and of each other, it\'s very important.\" /><p>In 2010 I was beginning to take on client work creating WordPress web sites when I was diagnosed with ovarian cancer. Ironically, at 43 years old I was more fit and healthy than I had ever been in my entire life. I had been running road marathons and trail ultra marathons for a few years leading up to my diagnosis. Good thing too, because surgery and treatment were obviously very tough.</p>\n<p>I was transitioning my design studio from analog to digital. Previously, I was working as a professional artist and illustrator creating commission portraiture and college mascot illustrations with some moderate successes. My background is in Fine Art and Design. I studied Drawing, Sculpture, &amp; Time Arts. (2D, 3D &amp; 4D &#8211; 4D can be described as: Length, width, height, and time/ motion) Naturally, as a Time Arts artist/illustrator I love the web! I love designing for the web and mobile too. Web work is immediately gratifying. I do design for both the web and print but I have always felt drawn to the web as it is more accessible, more fluid, dynamic, interconnected, animated, media rich, and well … if you are reading this then you already get the picture. <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /></p>\n<blockquote><p>To get through treatment it was important to me that I still work every day.</p></blockquote>\n<p>Some days it was just a couple hours in the afternoon but it really helped me to cope and endure unplanned surgery and many painful chemotherapy treatments. I had recently completed a couple of websites with the help of my mentor Jerry Turk. Those sites had good reach. I mean they were the kind of sites that groups of people used and managed so I got some attention for the work and word of mouth spread locally.</p>\n<p>It was while getting through that period of treatment and the shock of a devastating diagnosis that my digital design agency really got legs. It could not have happened at a better time. So, my studio, C&amp;D Studios &#8211; <a href=\"https://CandDStudios.com\">https://CandDStudios.com</a> continued it’s move towards being 100% digital. No more analog photography and not much more drawing at the drawing table either. Now my work was nearly 100% focused on screens and it would also begin to pay the bills. That was eight years ago. I was very fortunate to learn using reliable frameworks, themes, plug-ins, and hosts that would also stand the test of time. Thank you Genesis Framework, StudioPress and Gravity Forms to name a few…</p>\n<p>Fast forward to 2016 after having been cancer free all those years and cranking out a lot of agency work, I had a cancer reoccurrence. I never wanted cancer to be part of my story and I tried to deny or overcome it in all ways but it had resurfaced in October of 2016. Professionally, I was involved in collaborating on very large scale enterprise sites with teams. I was spending the year testing the waters at a new level of production. It was not good timing to require another surgery and 18 more rounds of chemotherapy. Fortunately, I found support in the community from other designers and developers whom helped me to the finish lines with 3 large projects in areas of e-commerce, college membership and enterprise site work -one with a large volume of SVG animations. After surgery, in February of 2017 I completed 18 rounds of chemotherapy treatments.</p>\n<blockquote><p>I have survived and am cancer free once again!</p></blockquote>\n<p>While going through treatment the second time I was not really focused on what good thing will I be able to grow towards professionally. Honestly, when you go through these things in life &#8211; you just spend your energy getting through as best as you can. I think it is worth noting here that while a positive attitude is great and it can improve a patient’s overall experience. Please don’t tell people they will survive cancer because of their positive attitude. Cancer is horrible, it does not discriminate and when people can’t beat a disease with their mental attitude they end up blaming themselves unnecessarily. That is not good. That is not what people intend when then try to offer support in that way but that is something I wanted to share.</p>\n<p>Now I have landed on the other side of treatment again and as I reflect, it’s been a really epic year! Our WordPress community has been open and supportive, welcoming me at conferences, online, and in slack groups, whether I had hair, energy, or resources &#8211; always welcoming and always encouraging. Over the years I have made some wonderful friends through WordPress! Some of us have been at this for a long time and we now have many shared experiences and skills.</p>\n<h3>Having Survived Again I’m Launching a WordPress Product</h3>\n<p>Having survived again, and having been inspired at PressNomics in Tempe last spring, I’m busy launching a mobile product/service with my team Dr. Kendra Remington and Rita Best called <a href=\"https://docswithapps.com\">Docs With Apps</a>.</p>\n<p>I still accept some client work, and some retainer work but I’m pretty selective about the projects we work on “in house.”</p>\n<p>I love SVG animation work so in 2018 I’m overjoyed to be doing more contracted SVG animation work with my collaborator Jackie D’Elia. Hit us up!!</p>\n<p>These are some very wonderful times in technology and within the Internet of things. I feel very grateful to have been able to ride the digital wave into the present and future. At WCUS in Nashville I began the process of contributing to make WordPress after having spent many years empowering others with it.</p>\n<p>When I was young I needed a way to get my portfolio on line and that is how I got started. Thank you for the opportunity to share my story, to publicly thank my husband Dominic, my family, and friends too. The future is going to be awesome!</p>\n<p>Take care of yourself and of each other, it&#8217;s very important.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: The Year I Got Cancer Was The Year My WordPress Business Took Off\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=The%20Year%20I%20Got%20Cancer%20Was%20The%20Year%20My%20WordPress%20Business%20Took%20Off&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fthe-year-i-got-cancer-was-the-year-my-wordpress-business-took-off%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: The Year I Got Cancer Was The Year My WordPress Business Took Off\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fthe-year-i-got-cancer-was-the-year-my-wordpress-business-took-off%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fthe-year-i-got-cancer-was-the-year-my-wordpress-business-took-off%2F&title=The+Year+I+Got+Cancer+Was+The+Year+My+WordPress+Business+Took+Off\" rel=\"nofollow\" target=\"_blank\" title=\"Share: The Year I Got Cancer Was The Year My WordPress Business Took Off\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/the-year-i-got-cancer-was-the-year-my-wordpress-business-took-off/&media=https://heropress.com/wp-content/uploads/2018/04/040418-150x150.jpg&description=The Year I Got Cancer Was The Year My WordPress Business Took Off\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: The Year I Got Cancer Was The Year My WordPress Business Took Off\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/the-year-i-got-cancer-was-the-year-my-wordpress-business-took-off/\" title=\"The Year I Got Cancer Was The Year My WordPress Business Took Off\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/the-year-i-got-cancer-was-the-year-my-wordpress-business-took-off/\">The Year I Got Cancer Was The Year My WordPress Business Took Off</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Apr 2018 12:00:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Cathi Bosco\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"WPTavern: WordPress 4.9.5 Squashes 25 Bugs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79399\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wptavern.com/wordpress-4-9-5-squashes-25-bugs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:940:\"<p>WordPress 4.9.5 <a href=\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\">is available</a> for download and is a maintenance and security release. WordPress 4.9.4 and earlier versions are affected by three security issues. The following security hardening changes are in 4.9.5.</p>\n\n<ul>\n    <li>Localhost is no longer treated as the same host by default.<br /></li>\n    <li>Safe redirects are used when redirecting the login page if SSL is forced.</li>\n    <li>Versions strings are correctly escaped for use in generator tags.</li>\n</ul>\n\n<p>Twenty-five bugs are fixed in this release including, improve compatibility with PHP 7.2, previous styles on caption shortcodes are restored, and clearer error messages. To see a full list of changes along with their associated trac tickets, check out <a href=\"https://make.wordpress.org/core/2018/04/02/wordpress-4-9-5/\">the detailed release post</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Apr 2018 23:02:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Dev Blog: WordPress 4.9.5 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5645\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6336:\"<p>WordPress 4.9.5 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>\n\n<p>WordPress versions 4.9.4 and earlier are affected by three security issues. As part of the core team&#x27;s ongoing commitment to security hardening, the following fixes have been implemented in 4.9.5:</p>\n\n<ol>\n    <li>Don&#x27;t treat <code>localhost</code> as same host by default.</li>\n    <li>Use safe redirects when redirecting the login page if SSL is forced.</li>\n    <li>Make sure the version string is correctly escaped for use in generator tags.</li>\n</ol>\n\n<p>Thank you to the reporters of these issues for practicing <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">﻿coordinated security disclosure</a>: <a href=\"https://profiles.wordpress.org/xknown\">xknown</a> of the WordPress Security Team, <a href=\"https://hackerone.com/nitstorm\">Nitin Venkatesh (nitstorm)</a>, and <a href=\"https://twitter.com/voldemortensen\">Garth Mortensen</a> of the WordPress Security Team.</p>\n\n<p>Twenty-five other bugs were fixed in WordPress 4.9.5. Particularly of note were:</p>\n\n<ul>\n    <li>The previous styles on caption shortcodes have been restored.</li>\n    <li>Cropping on touch screen devices is now supported.</li>\n    <li>A variety of strings such as error messages have been updated for better clarity.</li>\n    <li>The position of an attachment placeholder during uploads has been fixed.</li>\n    <li>Custom nonce functionality in the REST API JavaScript client has been made consistent throughout the code base.</li>\n    <li>Improved compatibility with PHP 7.2.</li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/04/03/wordpress-4-9-5/\">This post has more information about all of the issues fixed in 4.9.5 if you&#x27;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.5</a> or venture over to Dashboard → Updates and click \"Update Now.\" Sites that support automatic background updates are already beginning to update automatically.</p>\n\n<p>Thank you to everyone who contributed to WordPress 4.9.5:</p>\n\n<p><a href=\"https://profiles.wordpress.org/1265578519-1/\">1265578519</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/alexgso/\">alexgso</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andrei0x309/\">andrei0x309</a>, <a href=\"https://profiles.wordpress.org/antipole/\">antipole</a>, <a href=\"https://profiles.wordpress.org/aranwer104/\">Anwer AR</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/blair-jersyer/\">Blair jersyer</a>, <a href=\"https://profiles.wordpress.org/bandonrandon/\">Brooke.</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/codegrau/\">codegrau</a>, <a href=\"https://profiles.wordpress.org/conner_bw/\">conner_bw</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/designsimply/\">designsimply</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/electricfeet/\">ElectricFeet</a>, <a href=\"https://profiles.wordpress.org/ericmeyer/\">ericmeyer</a>, <a href=\"https://profiles.wordpress.org/fpcsjames/\">FPCSJames</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jipmoors/\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnpgreen/\">johnpgreen</a>, <a href=\"https://profiles.wordpress.org/junaidkbr/\">Junaid Ahmed</a>, <a href=\"https://profiles.wordpress.org/kristastevens/\">kristastevens</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/lancewillett/\">Lance Willett</a>, <a href=\"https://profiles.wordpress.org/leemon/\">leemon</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mrmadhat/\">mrmadhat</a>, <a href=\"https://profiles.wordpress.org/nandorsky/\">nandorsky</a>, <a href=\"https://profiles.wordpress.org/jainnidhi/\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/qcmiao/\">qcmiao</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/larrach/\">Rachel Peter</a>, <a href=\"https://profiles.wordpress.org/ravanh/\">RavanH</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/sebastienthivinfocom/\">Sebastien SERRE</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/thomas-vitale/\">Thomas Vitale</a>, <a href=\"https://profiles.wordpress.org/kwonye/\">Will Kwon</a>, and <a href=\"https://profiles.wordpress.org/yahil/\">Yahil Madakiya</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Apr 2018 19:56:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: ‘Try Gutenberg’ Prompt Pushed Back to A Later Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79273\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wptavern.com/try-gutenberg-prompt-pushed-back-to-a-later-release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4312:\"<p>Last week, <a href=\"https://wptavern.com/in-wordpress-4-9-5-users-will-be-two-clicks-away-from-installing-and-activating-gutenberg-from-the-dashboard\">we reported</a> that WordPress 4.9.5 would ship with a call-out prompt that asks users if they want to try the new editor experience.</p>\n\n<p>Within the comments of the post, Gary Pendergast, who works for Automattic, is a WordPress core contributor, and a lead developer on the Gutenberg project, <a href=\"https://wptavern.com/in-wordpress-4-9-5-users-will-be-two-clicks-away-from-installing-and-activating-gutenberg-from-the-dashboard#comment-246119\">informed us</a> that the prompt would not be in WordPress 4.9.5. Instead, it will ship in a later version once it has gone through a few more refinements.</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>Change of plans, this won’t be happening in the 4.9.5 release: there are still a few issues we’d like to fix up the callout happens, they won’t be done in time for the 4.9.5 release. I expect there will be a smaller 4.9.6 release that contains this callout, and any bugfixes that happen to be ready.</p><cite>Gary Pendergast</cite></blockquote>\n\n<p>Reverting the call-out has <a href=\"https://core.trac.wordpress.org/ticket/41316\">extended the conversation</a> surrounding its implementation. Jadon N who works for InMotion hosting and is a contributor to the <a href=\"https://make.wordpress.org/chat/\">#hosting-community slack channel</a>, says the hosting-community group is working on ideas to help test popular plugins for Gutenberg compatibility.</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>We have been working to expand our collection of data about how well plugins function with Gutenberg. To help with that effort, we would like to explore using feedback collected from WordPress users through the Try Gutenberg effort to add to the existing database on WordPress plugin compatibility if that could be worked out. </p>\n    <p>The goal of this project is to make sure everyone can use Gutenberg without having to worry about plugin incompatibilities.</p><cite>Jadon N</cite></blockquote>\n\n<p>The <a href=\"https://plugincompat.danielbachhuber.com/\">Gutenberg Plugin Compatibility Database project</a> launched by Daniel Bachhuber last month attempts to determine which popular plugins are already compatible with Gutenberg by having volunteers test them in a sandboxed environment.</p>\n\n<p>Out of the 4,213 plugins in the database, 84% have an unknown compatibility status. Out of 610 plugins that have been tested, 82% don&#x27;t include editor functionality.</p>\n\n<p>Pendergast <a href=\"https://core.trac.wordpress.org/ticket/41316#comment:92\">supports the idea</a> of hosts collecting a wide range of testing data and turning it into actionable items for the team to work on. There&#x27;s also been some discussion on creating snapshots of plugin compatibility and filtering those results into Bachhuber&#x27;s project.</p>\n\n<p>Chris Lema, Vice President of Products at LiquidWeb, <a href=\"https://core.trac.wordpress.org/ticket/41316#comment:98\">responded</a> in the trac ticket with a suggestion that the team place as much emphasis on the Learn More and Report Issues sections as the Try Gutenberg message. He also added a prototype screenshot of what the call-out could look like. <br /></p>\n\n<img />\n    Gutenberg Call Out Prototype by Chris Lema\n\n\n<p>\"The reality is that people don&#x27;t read a lot, so people may not fully grasp the &#x27;testing&#x27; part given the proposed design,\" Lema said. \"When there are equal weight to the design, the message also carries with it the same equality.\"</p>\n\n<p>One of the best suggestions I&#x27;ve read comes <a href=\"https://core.trac.wordpress.org/ticket/41316#comment:98\">from Bachhuber</a>. He suggests displaying the prompt to a small percentage of WordPress sites to prevent thousands of users from re-reporting known issues with Gutenberg. It would also help lessen the load on the support forums.</p>\n\n<p>One of my main concerns with the call-out is the lack of upfront information to the user that it is beta software and it could cause adverse affects on their site. Lema&#x27;s prototype does a great job of informing the user of this possibility and a link to known issues is a great enhancement. What do you think?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Apr 2018 00:13:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"Matt: Goose-down Nape\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48011\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"https://ma.tt/2018/04/goose-down-nape/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1378:\"<p>There was a <a href=\"https://www.nytimes.com/2018/03/28/magazine/poem-the-nod.html\">beautiful poem by Kayo Chingonyi in the New York Magazine this week</a> titled The Nod:</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>When we’re strangers that pass each other<br />in the street, it will come down to this tilt<br />of the head — acknowledging another<br />version of events set in a new-build<br />years from now, a mess of a place filled<br />with books and records, our kids thick as thieves<br />redefining all notions of mischief.</p>\n    <p>Perhaps our paths will cross in a city<br />of seven hills as the light draws your face<br />out from the bliss of anonymity.<br />Maybe you’ll be stroking the goose-down nape<br />of a small child with eyes the exact shade<br />of those I met across a room at the start<br />of this pain-in-the-heart, this febrile dance.</p>\n</blockquote>\n\n<p>When I hear \"seven hills\" my mind immediately goes to Rome, then San Francisco, but <a href=\"https://en.wikipedia.org/wiki/List_of_cities_claimed_to_be_built_on_seven_hills\">Wikipedia has a helpful list of cities that claim to be built on seven hills</a>.</p>\n\n<p>A friend pointed out <em>The Nod</em> is a <a href=\"https://www.familyfriendpoems.com/poem/the-invitation-by-oriah-mountain-dreamer\">fine complement to <em>The Invitation</em> by Oriah Mountain Dreamer</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Apr 2018 00:05:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"Post Status: Contextualized Learning in or around WordPress — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=44987\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://poststatus.com/contextualized-learning-in-or-around-wordpress-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1838:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p><span>In this episode, the dynamic Brian duo discuss the highly-anticipated return of WordSesh, the different ways in which we all learn the same, and some of the problems we face in skill building. The guys also spend time finding and contacting the addressable market around WordPress, characterizing a business as WordPress-focused vs providing WordPress services in the context of a broader market, and some of the nuances of providing contextualized services (whether they be training, consulting, or otherwise).</span></p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://www.nbcnews.com/health/health-news/scientists-say-they-ve-discovered-unknown-human-organ-could-help-n860601\">New human organ</a></li>\n<li><a href=\"http://wordsesh.com/\">WordSesh.com</a></li>\n<li><a href=\"https://wpsessions.com/\">WPSessions.com</a></li>\n</ul>\n<h3>Sponsor: OptinMonster</h3>\n<p><a href=\"http://optinmonster.com\">OptinMonster</a> allows you to convert visitors into subscribers. You can easily create &amp; A/B test beautiful lead capture forms without a developer. Be sure to check out their new <a href=\"http://optinmonster.com/announcing-the-inactivitysensor-activity-logs-and-more/\">Inactivity Sensor</a> technology.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Apr 2018 19:31:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"Dev Blog: The Month in WordPress: March 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5632\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/04/the-month-in-wordpress-march-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4323:\"<p>With a significant new milestone and some great improvements to WordPress as a platform, this month has been an important one for the project. Read on to find out more about what happened during the month of March.\n\n</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>WordPress Now Powers 30% of the Internet</h2>\n\n<p>Over the last 15 years, the popularity and usage of WordPress has been steadily growing. That growth hit a significant milestone this month when <a href=\"https://w3techs.com/technologies/details/cm-wordpress/all/all\">W3Techs reported that WordPress now powers over 30% of sites on the web.</a></p>\n\n<p>The percentage is determined based on W3Techs’ review of the top 10 million sites on the web, and it’s a strong indicator of the popularity and flexibility of WordPress as a platform.</p>\n\n<p>If you would like to have hand in helping to grow WordPress even further, <a href=\"https://make.wordpress.org/\">you can get involved today</a>.</p>\n\n<h2>WordPress Jargon Glossary Goes Live</h2>\n\n<p>The WordPress Marketing Team has been hard at work lately putting together <a href=\"https://make.wordpress.org/marketing/2018/02/28/wordpress-jargon-glossary/\">a comprehensive glossary of WordPress jargon</a> to help newcomers to the project become more easily acquainted with things.</p>\n\n<p>The glossary <a href=\"https://make.wordpress.org/marketing/2018/02/28/wordpress-jargon-glossary/\">is available here</a> along with a downloadable PDF to make it simpler to reference offline.</p>\n\n<p>Publishing this resource is part of an overall effort to make WordPress more easily accessible for people who are not so familiar with the project. If you would like to assist the Marketing Team with this, you can follow <a href=\"https://make.wordpress.org/marketing/\">the team blog</a> and join the #marketing channel in the<a href=\"https://make.wordpress.org/chat/\"> Making WordPress Slack group</a>.</p>\n\n<h2>Focusing on Privacy in WordPress</h2>\n\n<p>Online privacy has been in the news this month for all the wrong reasons. It has reinforced the commitment of the GDPR Compliance Team to continue working on enhancements to WordPress core that allow site owners to improve privacy standards.</p>\n\n<p>The team&#x27;s work, and the wider privacy project, spans four areas: Adding tools which will allow site administrators to collect the information they need about their sites, examining the plugin guidelines with privacy in mind, enhancing privacy standards in WordPress core, and creating documentation focused on best practices in online privacy.</p>\n\n<p>To get involved with the project, you can <a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">view the roadmap</a>, <a href=\"https://make.wordpress.org/core/tag/gdpr-compliance/\">follow the updates</a>, <a href=\"https://core.trac.wordpress.org/query?status=!closed&keywords=~gdpr\">submit patches</a>, and join the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat\">Making WordPress Slack group</a>. Office hours are 15:00 UTC on Wednesdays.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li>The WordPress Foundation has published <a href=\"https://wordpressfoundation.org/2017-annual-report/\">their annual report for 2017</a> showing just how much the community has grown over the last year.</li>\n    <li>The dates for WordCamp US <a href=\"https://2018.us.wordcamp.org/2018/03/13/announcing-wordcamp-us-2018/\">have been announced</a> — this flagship WordCamp event will be held on 7-9 December this year in Nashville, Tennessee.</li>\n    <li>WordPress 4.9.5 is due for release on April 3 — <a href=\"https://make.wordpress.org/core/2018/03/21/wordpress-4-9-5-beta/\">find out more here</a>.</li>\n    <li>Version 2.5 of Gutenberg, the new editor for WordPress core, <a href=\"https://make.wordpress.org/core/2018/03/29/whats-new-in-gutenberg-29th-march/\">was released this month</a> with a host of great improvements.</li>\n    <li>WordSesh, a virtual WordPress conference, <a href=\"http://wordsesh.com/\">is returning in July this year</a>.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Apr 2018 08:00:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: WPWeekly Episode 310 – Community Management, PHP, and Hello Dolly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=79249&preview=true&preview_id=79249\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wptavern.com/wpweekly-episode-310-community-management-php-and-hello-dolly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2325:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss the news of the week including, the removal of offensive lyrics in Hello Dolly, a request for plugin developers to stop supporting legacy PHP versions, and changes coming in WordPress 4.9.5.</p>\n<p>We also talk about community management, the difference between comments and forums, and finally, John shares his concerns on how the Gutenberg call-out prompt is being built into core.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/a-plea-for-plugin-developers-to-stop-supporting-legacy-php-versions\">A Plea For Plugin Developers to Stop Supporting Legacy PHP Versions</a><br />\n<a href=\"https://wptavern.com/without-context-some-lyrics-inside-the-hello-dolly-plugin-are-degrading-to-women\">Without Context, Some Lyrics Inside the Hello Dolly Plugin Are Degrading to Women</a><br />\n<a href=\"https://wptavern.com/why-gutenberg-and-why-now\">Why Gutenberg and Why Now?</a><br />\n<a href=\"https://wptavern.com/noteworthy-changes-coming-in-wordpress-4-9-5\">Noteworthy Changes Coming in WordPress 4.9.5</a><br />\n<a href=\"https://wptavern.com/in-wordpress-4-9-5-users-will-be-two-clicks-away-from-installing-and-activating-gutenberg-from-the-dashboard\">In WordPress 4.9.5, Users Will Be Two Clicks Away From Installing and Activating Gutenberg From the Dashboard</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href=\"https://wptavern.com/how-to-disable-push-notification-requests-in-firefox\">How to Disable Push Notification Requests in Firefox</a></p>\n<p><a href=\"https://addons.mozilla.org/en-US/firefox/addon/facebook-container/\">Facebook Container Add-on for Firefox</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, April 4th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #310:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 29 Mar 2018 21:07:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 13 May 2018 11:17:42 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Sun, 13 May 2018 11:00:27 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20180508113220\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(964, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1526253454', 'no'),
(965, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1526210254', 'no'),
(966, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1526253454', 'no'),
(967, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ru.wordpress.org/news/2018/05/wordcamp-stpetersburg2018/\'>Конференция WordCamp Санкт-Петербург 2018</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-4-9-6-rc1-released\'>WPTavern: WordPress 4.9.6 RC1 Released</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wpweekly-episode-315-wordpress-4-9-6-gutenberg-and-stolen-goats\'>WPTavern: WPWeekly Episode 315 – WordPress 4.9.6, Gutenberg, and Stolen Goats</a></li><li><a class=\'rsswidget\' href=\'https://heropress.com/finding-family-wherever-you-can/#utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=finding-family-wherever-you-can\'>HeroPress: Finding Family Wherever You Can</a></li></ul></div>', 'no'),
(968, '_transient_orders-transient-version', '1526211342', 'yes'),
(971, '_transient_timeout_wc_term_counts', '1528803408', 'no'),
(972, '_transient_wc_term_counts', 'a:8:{i:25;s:1:\"3\";i:37;s:1:\"3\";i:38;s:1:\"3\";i:39;s:1:\"3\";i:40;s:1:\"3\";i:26;s:1:\"1\";i:27;s:0:\"\";i:28;s:0:\"\";}', 'no'),
(973, '_transient_timeout_wc_product_children_116', '1528803356', 'no'),
(974, '_transient_wc_product_children_116', 'a:2:{s:3:\"all\";a:3:{i:0;i:124;i:1;i:125;i:2;i:123;}s:7:\"visible\";a:3:{i:0;i:124;i:1;i:125;i:2;i:123;}}', 'no'),
(975, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:12:\"post-trashed\";s:1:\"1\";s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(977, '_transient_pll_languages_list', 'a:2:{i:0;a:27:{s:7:\"term_id\";i:29;s:4:\"name\";s:2:\"RU\";s:4:\"slug\";s:2:\"ru\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:29;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"ru_RU\";s:6:\"parent\";i:0;s:5:\"count\";i:4;s:10:\"tl_term_id\";i:30;s:19:\"tl_term_taxonomy_id\";i:30;s:8:\"tl_count\";i:1;s:6:\"locale\";R:9;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"ru-RU\";s:8:\"facebook\";s:5:\"ru_RU\";s:8:\"flag_url\";s:52:\"http://oils/wp-content/plugins/polylang/flags/ru.png\";s:4:\"flag\";s:616:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAE2SURBVHjaYvz69T8DAvz79w9CQVj/0MCffwwAAcQClObiAin6/x+okxHMgPCAbOb//5n+I4EXL74ABBALxGSwagTjPzbAyMgItAQggBg9Pf9nZPx//x7kjL9////9C2QAyf9//qCQQCQkxFhY+BEggFi2b/+nq8v46BEDSPQ3w+8//3//BqFfv9BJeXmQEwACCOSkP38YgHy4Bog0RN0vIOMXVOTPH6Cv/gEEEEgDxFKgHEgDXCmGDUAE1AAQQCybGZg1f/d8//XsH0jTn3+///z79RtE/v4NZfz68xfI/vOX+4/0ZoZFAAHE4gYMvD+3/v2+h91wCANo9Z+/jH9VxBkYAAKIBRg9TL//MEhKAuWAogxgZzGC2CCfgUggAoYdGAEVAwQQ41egu5AQAyoXTQoIAAIMAD+JZR7YOGEWAAAAAElFTkSuQmCC\" title=\"RU\" alt=\"RU\" />\";s:8:\"home_url\";s:12:\"http://oils/\";s:10:\"search_url\";s:12:\"http://oils/\";s:4:\"host\";N;s:5:\"mo_id\";s:3:\"107\";s:13:\"page_on_front\";s:1:\"5\";s:14:\"page_for_posts\";b:0;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:1:\"0\";s:9:\"flag_code\";s:2:\"ru\";}i:1;a:27:{s:7:\"term_id\";i:32;s:4:\"name\";s:2:\"UA\";s:4:\"slug\";s:2:\"uk\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:32;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:2:\"uk\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:33;s:19:\"tl_term_taxonomy_id\";i:33;s:8:\"tl_count\";i:1;s:6:\"locale\";R:36;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:2:\"uk\";s:8:\"facebook\";s:5:\"uk_UA\";s:8:\"flag_url\";s:52:\"http://oils/wp-content/plugins/polylang/flags/ua.png\";s:4:\"flag\";s:652:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAFQSURBVHjaYmRo/c8AB//+MfwBkgwg8s8/KPoFI4GIgQEgAIdycgMACAMxUAF6oygqoQ1q45dkzSH5N26XR/8zCEuepggsVEPFkxB+S9bcRwCxMDCBVD/5+h+o9O8/BqDE378Mv/+DpCGKfgERmCHLw8jw4x9AAIFs+AdUBLQWZDZI9a/////8BSuFawBzf/8FuQMggFiALvsLsh2k+g/cbCTVUBLkKgaGDwwAAcTCIHJKhFPh19+fIHf/+/cbpBNI/gO75x+I/RfKluFiY5A6AhBAjH8fMjDI5P///+A/wy8GoFf/A+34hZVkYlJ6f/wUQACxAEOSESwEDEhURSiqwbJ/gKENEEAgDcwgDlAIrgiLNgaGvyD0hwEggEAamP4DdUrCREE6GRl/gyMPQv6BqgYG+z8GgABi/HoTFL///kBJBjgbwmBAcEEcBgaAAAMASIdu6OFHDhsAAAAASUVORK5CYII=\" title=\"UA\" alt=\"UA\" />\";s:8:\"home_url\";s:23:\"http://oils/uk/golovna/\";s:10:\"search_url\";s:15:\"http://oils/uk/\";s:4:\"host\";N;s:5:\"mo_id\";s:3:\"108\";s:13:\"page_on_front\";i:109;s:14:\"page_for_posts\";b:0;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:1:\"0\";s:9:\"flag_code\";s:2:\"ua\";}}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_trash_meta_status', 'publish'),
(3, 4, '_wp_trash_meta_time', '1524516442'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1526211302:1'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1524601353'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 5, '_wp_page_template', 'main.php'),
(10, 10, '_edit_last', '1'),
(11, 10, '_edit_lock', '1525425502:1'),
(14, 5, 'gallery_0_mainImage', '100'),
(15, 5, '_gallery_0_mainImage', 'field_5adfb1a8acb36'),
(16, 5, 'gallery_0_mainText', 'Текст тест'),
(17, 5, '_gallery_0_mainText', 'field_5adfb1dfacb37'),
(18, 5, 'gallery', '6'),
(19, 5, '_gallery', 'field_5adfb164acb35'),
(20, 15, 'gallery_0_mainImage', '14'),
(21, 15, '_gallery_0_mainImage', 'field_5adfb1a8acb36'),
(22, 15, 'gallery_0_mainText', 'Текст тест'),
(23, 15, '_gallery_0_mainText', 'field_5adfb1dfacb37'),
(24, 15, 'gallery', '1'),
(25, 15, '_gallery', 'field_5adfb164acb35'),
(36, 5, 'gallery_1_mainImage', '101'),
(37, 5, '_gallery_1_mainImage', 'field_5adfb1a8acb36'),
(38, 5, 'gallery_1_mainText', ''),
(39, 5, '_gallery_1_mainText', 'field_5adfb1dfacb37'),
(40, 5, 'gallery_2_mainImage', '102'),
(41, 5, '_gallery_2_mainImage', 'field_5adfb1a8acb36'),
(42, 5, 'gallery_2_mainText', ''),
(43, 5, '_gallery_2_mainText', 'field_5adfb1dfacb37'),
(44, 5, 'gallery_3_mainImage', '103'),
(45, 5, '_gallery_3_mainImage', 'field_5adfb1a8acb36'),
(46, 5, 'gallery_3_mainText', ''),
(47, 5, '_gallery_3_mainText', 'field_5adfb1dfacb37'),
(48, 5, 'gallery_4_mainImage', '104'),
(49, 5, '_gallery_4_mainImage', 'field_5adfb1a8acb36'),
(50, 5, 'gallery_4_mainText', ''),
(51, 5, '_gallery_4_mainText', 'field_5adfb1dfacb37'),
(52, 5, 'gallery_5_mainImage', '105'),
(53, 5, '_gallery_5_mainImage', 'field_5adfb1a8acb36'),
(54, 5, 'gallery_5_mainText', ''),
(55, 5, '_gallery_5_mainText', 'field_5adfb1dfacb37'),
(56, 22, 'gallery_0_mainImage', '14'),
(57, 22, '_gallery_0_mainImage', 'field_5adfb1a8acb36'),
(58, 22, 'gallery_0_mainText', 'Текст тест'),
(59, 22, '_gallery_0_mainText', 'field_5adfb1dfacb37'),
(60, 22, 'gallery', '6'),
(61, 22, '_gallery', 'field_5adfb164acb35'),
(62, 22, 'gallery_1_mainImage', '21'),
(63, 22, '_gallery_1_mainImage', 'field_5adfb1a8acb36'),
(64, 22, 'gallery_1_mainText', ''),
(65, 22, '_gallery_1_mainText', 'field_5adfb1dfacb37'),
(66, 22, 'gallery_2_mainImage', '20'),
(67, 22, '_gallery_2_mainImage', 'field_5adfb1a8acb36'),
(68, 22, 'gallery_2_mainText', ''),
(69, 22, '_gallery_2_mainText', 'field_5adfb1dfacb37'),
(70, 22, 'gallery_3_mainImage', '19'),
(71, 22, '_gallery_3_mainImage', 'field_5adfb1a8acb36'),
(72, 22, 'gallery_3_mainText', ''),
(73, 22, '_gallery_3_mainText', 'field_5adfb1dfacb37'),
(74, 22, 'gallery_4_mainImage', '18'),
(75, 22, '_gallery_4_mainImage', 'field_5adfb1a8acb36'),
(76, 22, 'gallery_4_mainText', ''),
(77, 22, '_gallery_4_mainText', 'field_5adfb1dfacb37'),
(78, 22, 'gallery_5_mainImage', '17'),
(79, 22, '_gallery_5_mainImage', 'field_5adfb1a8acb36'),
(80, 22, 'gallery_5_mainText', ''),
(81, 22, '_gallery_5_mainText', 'field_5adfb1dfacb37'),
(82, 23, '_menu_item_type', 'post_type'),
(83, 23, '_menu_item_menu_item_parent', '0'),
(84, 23, '_menu_item_object_id', '5'),
(85, 23, '_menu_item_object', 'page'),
(86, 23, '_menu_item_target', ''),
(87, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 23, '_menu_item_xfn', ''),
(89, 23, '_menu_item_url', ''),
(90, 23, '_menu_item_orphaned', '1525442006'),
(91, 24, '_menu_item_type', 'post_type'),
(92, 24, '_menu_item_menu_item_parent', '0'),
(93, 24, '_menu_item_object_id', '5'),
(94, 24, '_menu_item_object', 'page'),
(95, 24, '_menu_item_target', ''),
(96, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 24, '_menu_item_xfn', ''),
(98, 24, '_menu_item_url', ''),
(100, 25, 'gallery_0_mainImage', '14'),
(101, 25, '_gallery_0_mainImage', 'field_5adfb1a8acb36'),
(102, 25, 'gallery_0_mainText', 'Текст тест'),
(103, 25, '_gallery_0_mainText', 'field_5adfb1dfacb37'),
(104, 25, 'gallery', '6'),
(105, 25, '_gallery', 'field_5adfb164acb35'),
(106, 25, 'gallery_1_mainImage', '21'),
(107, 25, '_gallery_1_mainImage', 'field_5adfb1a8acb36'),
(108, 25, 'gallery_1_mainText', ''),
(109, 25, '_gallery_1_mainText', 'field_5adfb1dfacb37'),
(110, 25, 'gallery_2_mainImage', '20'),
(111, 25, '_gallery_2_mainImage', 'field_5adfb1a8acb36'),
(112, 25, 'gallery_2_mainText', ''),
(113, 25, '_gallery_2_mainText', 'field_5adfb1dfacb37'),
(114, 25, 'gallery_3_mainImage', '19'),
(115, 25, '_gallery_3_mainImage', 'field_5adfb1a8acb36'),
(116, 25, 'gallery_3_mainText', ''),
(117, 25, '_gallery_3_mainText', 'field_5adfb1dfacb37'),
(118, 25, 'gallery_4_mainImage', '18'),
(119, 25, '_gallery_4_mainImage', 'field_5adfb1a8acb36'),
(120, 25, 'gallery_4_mainText', ''),
(121, 25, '_gallery_4_mainText', 'field_5adfb1dfacb37'),
(122, 25, 'gallery_5_mainImage', '17'),
(123, 25, '_gallery_5_mainImage', 'field_5adfb1a8acb36'),
(124, 25, 'gallery_5_mainText', ''),
(125, 25, '_gallery_5_mainText', 'field_5adfb1dfacb37'),
(126, 26, 'gallery_0_mainImage', '14'),
(127, 26, '_gallery_0_mainImage', 'field_5adfb1a8acb36'),
(128, 26, 'gallery_0_mainText', 'Текст тест'),
(129, 26, '_gallery_0_mainText', 'field_5adfb1dfacb37'),
(130, 26, 'gallery', '6'),
(131, 26, '_gallery', 'field_5adfb164acb35'),
(132, 26, 'gallery_1_mainImage', '21'),
(133, 26, '_gallery_1_mainImage', 'field_5adfb1a8acb36'),
(134, 26, 'gallery_1_mainText', ''),
(135, 26, '_gallery_1_mainText', 'field_5adfb1dfacb37'),
(136, 26, 'gallery_2_mainImage', '20'),
(137, 26, '_gallery_2_mainImage', 'field_5adfb1a8acb36'),
(138, 26, 'gallery_2_mainText', ''),
(139, 26, '_gallery_2_mainText', 'field_5adfb1dfacb37'),
(140, 26, 'gallery_3_mainImage', '19'),
(141, 26, '_gallery_3_mainImage', 'field_5adfb1a8acb36'),
(142, 26, 'gallery_3_mainText', ''),
(143, 26, '_gallery_3_mainText', 'field_5adfb1dfacb37'),
(144, 26, 'gallery_4_mainImage', '18'),
(145, 26, '_gallery_4_mainImage', 'field_5adfb1a8acb36'),
(146, 26, 'gallery_4_mainText', ''),
(147, 26, '_gallery_4_mainText', 'field_5adfb1dfacb37'),
(148, 26, 'gallery_5_mainImage', '17'),
(149, 26, '_gallery_5_mainImage', 'field_5adfb1a8acb36'),
(150, 26, 'gallery_5_mainText', ''),
(151, 26, '_gallery_5_mainText', 'field_5adfb1dfacb37'),
(152, 27, '_edit_last', '1'),
(153, 27, '_edit_lock', '1526211518:1'),
(154, 27, '_wp_page_template', 'template-selection.php'),
(155, 29, '_menu_item_type', 'post_type'),
(156, 29, '_menu_item_menu_item_parent', '0'),
(157, 29, '_menu_item_object_id', '27'),
(158, 29, '_menu_item_object', 'page'),
(159, 29, '_menu_item_target', ''),
(160, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(161, 29, '_menu_item_xfn', ''),
(162, 29, '_menu_item_url', ''),
(164, 30, '_edit_last', '1'),
(165, 30, '_edit_lock', '1525517545:1'),
(166, 27, 'tab-name', 'FULLMATCH'),
(167, 27, '_tab-name', 'field_5aed879cf47f3'),
(168, 27, 'name_tab_1', 'Что такое FULLMATCH?'),
(169, 27, '_name_tab_1', 'field_5aed8993f47f4'),
(170, 27, 'name_tab_2', 'Доступ к FULLMATCH'),
(171, 27, '_name_tab_2', 'field_5aed89e0f47f5'),
(172, 27, 'content_tab_1', '<b class=\"title medium\">Система Підбору Оливи для Вашого АВТО</b>\r\n\r\nИспользование соответствующей масла достаточно для обеспечения высоких рабочих характеристик Вашего авто. FULLMATCH - Система подбора Масла - это программа, которая порекомендует ряд масел для применения в автомобиле после введения определенных данных о транспортного средства.\r\n\r\nС помощью этой программы, разработанной в соответствии со стандартами, предусмотренных международными организациями API1 и ACEA2, технических спецификаций и требований, предусмотренных производителями транспортных средств можно легко определить те масла OPET, подходящие для Вашего автомобиля.\r\n\r\nТаким образом, данная система дает Вам возможность безопасно пользоваться Вашим автомобилем, предотвращая проблемы, которые возникают из-за применения несоответствующих масел.\r\n\r\n1: API Американский Институт Нефти\r\n\r\n2: ACEA: Европейская Ассоциация предприятий автомобильной промышленности.'),
(173, 27, '_content_tab_1', 'field_5aed8a38f47f6'),
(174, 27, 'content_tab_2', '<p style=\"text-align: center;\">Для подбора масла, кликните по иконке, соответствующей типу Вашего автомобиля. Затем выберите марку авто, его модель и тип.</p>\r\n\r\n\r\n        <iframe src=\"http://www.opetoil.com.tr/fullmatch/Default.aspx?Lang=eng&isKioskMode=0\" frameborder=\"0\" height=\"500\" width=\"100%\" style=\"margin-top: 20px;\"></iframe>'),
(175, 27, '_content_tab_2', 'field_5aed8a72f47f7'),
(176, 36, 'tab-name', 'FULLMATCH'),
(177, 36, '_tab-name', 'field_5aed879cf47f3'),
(178, 36, 'name_tab_1', 'Что такое FULLMATCH?'),
(179, 36, '_name_tab_1', 'field_5aed8993f47f4'),
(180, 36, 'name_tab_2', 'Доступ к FULLMATCH'),
(181, 36, '_name_tab_2', 'field_5aed89e0f47f5'),
(182, 36, 'content_tab_1', ''),
(183, 36, '_content_tab_1', 'field_5aed8a38f47f6'),
(184, 36, 'content_tab_2', ''),
(185, 36, '_content_tab_2', 'field_5aed8a72f47f7'),
(186, 27, 'title_tab_1', 'Что такое FULLMATCH?'),
(187, 27, '_title_tab_1', 'field_5aed8ce72b522'),
(188, 27, 'title_tab_2', 'OPET FULLMATCH'),
(189, 27, '_title_tab_2', 'field_5aed8d032b523'),
(190, 39, 'tab-name', 'FULLMATCH'),
(191, 39, '_tab-name', 'field_5aed879cf47f3'),
(192, 39, 'name_tab_1', 'Что такое FULLMATCH?'),
(193, 39, '_name_tab_1', 'field_5aed8993f47f4'),
(194, 39, 'name_tab_2', 'Доступ к FULLMATCH'),
(195, 39, '_name_tab_2', 'field_5aed89e0f47f5'),
(196, 39, 'content_tab_1', ''),
(197, 39, '_content_tab_1', 'field_5aed8a38f47f6'),
(198, 39, 'content_tab_2', ''),
(199, 39, '_content_tab_2', 'field_5aed8a72f47f7'),
(200, 39, 'title_tab_1', 'Что такое FULLMATCH?'),
(201, 39, '_title_tab_1', 'field_5aed8ce72b522'),
(202, 39, 'title_tab_2', ''),
(203, 39, '_title_tab_2', 'field_5aed8d032b523'),
(204, 40, 'tab-name', 'FULLMATCH'),
(205, 40, '_tab-name', 'field_5aed879cf47f3'),
(206, 40, 'name_tab_1', 'Что такое FULLMATCH?'),
(207, 40, '_name_tab_1', 'field_5aed8993f47f4'),
(208, 40, 'name_tab_2', 'Доступ к FULLMATCH'),
(209, 40, '_name_tab_2', 'field_5aed89e0f47f5'),
(210, 40, 'content_tab_1', '<b class=\"title medium\">Система Підбору Оливи для Вашого АВТО</b>\r\n\r\nИспользование соответствующей масла достаточно для обеспечения высоких рабочих характеристик Вашего авто. FULLMATCH - Система подбора Масла - это программа, которая порекомендует ряд масел для применения в автомобиле после введения определенных данных о транспортного средства.\r\n\r\nС помощью этой программы, разработанной в соответствии со стандартами, предусмотренных международными организациями API1 и ACEA2, технических спецификаций и требований, предусмотренных производителями транспортных средств можно легко определить те масла OPET, подходящие для Вашего автомобиля.\r\n\r\nТаким образом, данная система дает Вам возможность безопасно пользоваться Вашим автомобилем, предотвращая проблемы, которые возникают из-за применения несоответствующих масел.\r\n\r\n1: API Американский Институт Нефти\r\n\r\n2: ACEA: Европейская Ассоциация предприятий автомобильной промышленности.'),
(211, 40, '_content_tab_1', 'field_5aed8a38f47f6'),
(212, 40, 'content_tab_2', ''),
(213, 40, '_content_tab_2', 'field_5aed8a72f47f7'),
(214, 40, 'title_tab_1', 'Что такое FULLMATCH?'),
(215, 40, '_title_tab_1', 'field_5aed8ce72b522'),
(216, 40, 'title_tab_2', ''),
(217, 40, '_title_tab_2', 'field_5aed8d032b523'),
(218, 41, 'tab-name', 'FULLMATCH'),
(219, 41, '_tab-name', 'field_5aed879cf47f3'),
(220, 41, 'name_tab_1', 'Что такое FULLMATCH?'),
(221, 41, '_name_tab_1', 'field_5aed8993f47f4'),
(222, 41, 'name_tab_2', 'Доступ к FULLMATCH'),
(223, 41, '_name_tab_2', 'field_5aed89e0f47f5'),
(224, 41, 'content_tab_1', '<b class=\"title medium\">Система Підбору Оливи для Вашого АВТО</b>\r\n\r\nИспользование соответствующей масла достаточно для обеспечения высоких рабочих характеристик Вашего авто. FULLMATCH - Система подбора Масла - это программа, которая порекомендует ряд масел для применения в автомобиле после введения определенных данных о транспортного средства.\r\n\r\nС помощью этой программы, разработанной в соответствии со стандартами, предусмотренных международными организациями API1 и ACEA2, технических спецификаций и требований, предусмотренных производителями транспортных средств можно легко определить те масла OPET, подходящие для Вашего автомобиля.\r\n\r\nТаким образом, данная система дает Вам возможность безопасно пользоваться Вашим автомобилем, предотвращая проблемы, которые возникают из-за применения несоответствующих масел.\r\n\r\n1: API Американский Институт Нефти\r\n\r\n2: ACEA: Европейская Ассоциация предприятий автомобильной промышленности.'),
(225, 41, '_content_tab_1', 'field_5aed8a38f47f6'),
(226, 41, 'content_tab_2', ''),
(227, 41, '_content_tab_2', 'field_5aed8a72f47f7'),
(228, 41, 'title_tab_1', 'Что такое FULLMATCH?'),
(229, 41, '_title_tab_1', 'field_5aed8ce72b522'),
(230, 41, 'title_tab_2', 'OPET FULLMATCH'),
(231, 41, '_title_tab_2', 'field_5aed8d032b523'),
(232, 42, 'tab-name', 'FULLMATCH'),
(233, 42, '_tab-name', 'field_5aed879cf47f3'),
(234, 42, 'name_tab_1', 'Что такое FULLMATCH?'),
(235, 42, '_name_tab_1', 'field_5aed8993f47f4'),
(236, 42, 'name_tab_2', 'Доступ к FULLMATCH'),
(237, 42, '_name_tab_2', 'field_5aed89e0f47f5'),
(238, 42, 'content_tab_1', '<b class=\"title medium\">Система Підбору Оливи для Вашого АВТО</b>\r\n\r\nИспользование соответствующей масла достаточно для обеспечения высоких рабочих характеристик Вашего авто. FULLMATCH - Система подбора Масла - это программа, которая порекомендует ряд масел для применения в автомобиле после введения определенных данных о транспортного средства.\r\n\r\nС помощью этой программы, разработанной в соответствии со стандартами, предусмотренных международными организациями API1 и ACEA2, технических спецификаций и требований, предусмотренных производителями транспортных средств можно легко определить те масла OPET, подходящие для Вашего автомобиля.\r\n\r\nТаким образом, данная система дает Вам возможность безопасно пользоваться Вашим автомобилем, предотвращая проблемы, которые возникают из-за применения несоответствующих масел.\r\n\r\n1: API Американский Институт Нефти\r\n\r\n2: ACEA: Европейская Ассоциация предприятий автомобильной промышленности.'),
(239, 42, '_content_tab_1', 'field_5aed8a38f47f6'),
(240, 42, 'content_tab_2', 'Для подбора масла, кликните по иконке, соответствующей типу Вашего автомобиля. Затем выберите марку авто, его модель и тип.'),
(241, 42, '_content_tab_2', 'field_5aed8a72f47f7'),
(242, 42, 'title_tab_1', 'Что такое FULLMATCH?'),
(243, 42, '_title_tab_1', 'field_5aed8ce72b522'),
(244, 42, 'title_tab_2', 'OPET FULLMATCH'),
(245, 42, '_title_tab_2', 'field_5aed8d032b523'),
(246, 43, 'tab-name', 'FULLMATCH'),
(247, 43, '_tab-name', 'field_5aed879cf47f3'),
(248, 43, 'name_tab_1', 'Что такое FULLMATCH?'),
(249, 43, '_name_tab_1', 'field_5aed8993f47f4'),
(250, 43, 'name_tab_2', 'Доступ к FULLMATCH'),
(251, 43, '_name_tab_2', 'field_5aed89e0f47f5'),
(252, 43, 'content_tab_1', '<b class=\"title medium\">Система Підбору Оливи для Вашого АВТО</b>\r\n\r\nИспользование соответствующей масла достаточно для обеспечения высоких рабочих характеристик Вашего авто. FULLMATCH - Система подбора Масла - это программа, которая порекомендует ряд масел для применения в автомобиле после введения определенных данных о транспортного средства.\r\n\r\nС помощью этой программы, разработанной в соответствии со стандартами, предусмотренных международными организациями API1 и ACEA2, технических спецификаций и требований, предусмотренных производителями транспортных средств можно легко определить те масла OPET, подходящие для Вашего автомобиля.\r\n\r\nТаким образом, данная система дает Вам возможность безопасно пользоваться Вашим автомобилем, предотвращая проблемы, которые возникают из-за применения несоответствующих масел.\r\n\r\n1: API Американский Институт Нефти\r\n\r\n2: ACEA: Европейская Ассоциация предприятий автомобильной промышленности.'),
(253, 43, '_content_tab_1', 'field_5aed8a38f47f6'),
(254, 43, 'content_tab_2', '<p style=\"text-align: center;\">Для подбора масла, кликните по иконке, соответствующей типу Вашего автомобиля. Затем выберите марку авто, его модель и тип.</p>'),
(255, 43, '_content_tab_2', 'field_5aed8a72f47f7'),
(256, 43, 'title_tab_1', 'Что такое FULLMATCH?'),
(257, 43, '_title_tab_1', 'field_5aed8ce72b522'),
(258, 43, 'title_tab_2', 'OPET FULLMATCH'),
(259, 43, '_title_tab_2', 'field_5aed8d032b523'),
(260, 44, '_edit_last', '1'),
(261, 44, '_edit_lock', '1526211438:1'),
(262, 44, '_wp_page_template', 'template-selection.php'),
(263, 44, 'tab-name', 'FULLCHECK'),
(264, 44, '_tab-name', 'field_5aed879cf47f3'),
(265, 44, 'name_tab_1', 'Что такое FULLCHECK?'),
(266, 44, '_name_tab_1', 'field_5aed8993f47f4'),
(267, 44, 'name_tab_2', 'Преимущетсва FULLCHECK'),
(268, 44, '_name_tab_2', 'field_5aed89e0f47f5'),
(269, 44, 'title_tab_1', 'Что такое система FULLCHECK'),
(270, 44, '_title_tab_1', 'field_5aed8ce72b522'),
(271, 44, 'content_tab_1', '<strong>FULLCHECK</strong> - программа анализа использованной масла от OPET, является системой мониторинга оборудования, которая в дополнение к классическим анализов, предоставляющих информацию о состоянии смазочного материала, также включает анализы, которые способны показать степень износа системы смазки.\r\n\r\nОпыт OPET в проведении полевых исследований, регулярный мониторинг состояния масел путем отбора проб в критических точках системы смазки узлов и агрегатов, а также мониторинг жизненного цикла как смазочного материала, так и системы, в которой использовалась такая масло, внесли свой вклад в определение возможных неисправностей, которые могут возникнуть в оборудовании, позволяя уменьшить срок и стоимость проведения ремонтных работ.\r\n\r\nДля получения более надежной интерпретации данных, образцы из систем смазки нужно отбирать через регулярные промежутки времени, а результаты анализов нужно сравнивать с данными предыдущих анализов. В дополнение к этому, для эффективной оценки результатов анализа масла, нужно также учитывать рабочее состояние вашего оборудования и автомобилей.\r\n\r\nЗапустить приложение <a class=\"textLightBlue\" href=\"http://test1.pureservice.me/Content/FullcheckBrosur_Aralik_2016_eng.pdf\" target=\"_blank\" rel=\"noopener\">FULLCHECK E-Book .</a>\r\n\r\nПожалуста, <a href=\"http://www.fullcheck.com.tr/\" target=\"_blank\" rel=\"noopener\">кликните,</a> чтобы посетить веб-сайт OPET FULLCHECK.'),
(272, 44, '_content_tab_1', 'field_5aed8a38f47f6'),
(273, 44, 'title_tab_2', 'Преимущества FULLCHECK'),
(274, 44, '_title_tab_2', 'field_5aed8d032b523'),
(275, 44, 'content_tab_2', '<strong>Защита Вашего парка автомобилей или Оборудование</strong>\r\n\r\nБлагодаря FULLCHECK регулярный контроль над Вашим парком автомобилей или оборудованием:\r\n<ul>\r\n 	<li>Помогает определять приоритеты в техобслуживании.</li>\r\n 	<li>Сокращает время простоя Оборудование / Транспортного Средства.</li>\r\n 	<li>Помогает проверить проведения аварийных ремонтов.</li>\r\n 	<li>Помогает принять решение о необходимости ремонта оборудования / транспортного средства.</li>\r\n 	<li>Помогает повысить эффективность работы СТО.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<strong>Всеобъемлющий сервис</strong>\r\n\r\nБлагодаря системе FULLCHECK по проведению анализов использованной масла:\r\n<ul>\r\n 	<li>Вам оперативно доставляться подробные анализы по системе смазки.</li>\r\n 	<li>Вы получите возможность воспользоваться преимуществами современного высокочувствительного оборудования нашей лаборатории.</li>\r\n 	<li>С помощью цветной системы оповещений и четких предупреждений, Вы сможете оперативно принимать решения по оборудованию.</li>\r\n 	<li>У Вас будет возможность получать информацию о процессе анализа образца через интернет.</li>\r\n 	<li>Вы можете отслеживать актуальные результаты анализа и статистические оценки через интернет.</li>\r\n</ul>\r\nзапустить приложение <a class=\"textLightBlue\" href=\"http://test1.pureservice.me/Content/FullcheckBrosur_Aralik_2016_eng.pdf\">Fullcheck E-Book.</a>\r\n\r\nПожалуста, <a href=\"http://www.fullcheck.com.tr/\" target=\"_blank\" rel=\"noopener\">кликните,</a> чтобы посетить веб-сайт OPET FULLCHECK.'),
(276, 44, '_content_tab_2', 'field_5aed8a72f47f7'),
(277, 45, 'tab-name', ''),
(278, 45, '_tab-name', 'field_5aed879cf47f3'),
(279, 45, 'name_tab_1', ''),
(280, 45, '_name_tab_1', 'field_5aed8993f47f4'),
(281, 45, 'name_tab_2', ''),
(282, 45, '_name_tab_2', 'field_5aed89e0f47f5'),
(283, 45, 'title_tab_1', ''),
(284, 45, '_title_tab_1', 'field_5aed8ce72b522'),
(285, 45, 'content_tab_1', ''),
(286, 45, '_content_tab_1', 'field_5aed8a38f47f6'),
(287, 45, 'title_tab_2', ''),
(288, 45, '_title_tab_2', 'field_5aed8d032b523'),
(289, 45, 'content_tab_2', ''),
(290, 45, '_content_tab_2', 'field_5aed8a72f47f7'),
(291, 46, '_menu_item_type', 'post_type'),
(292, 46, '_menu_item_menu_item_parent', '0'),
(293, 46, '_menu_item_object_id', '44'),
(294, 46, '_menu_item_object', 'page'),
(295, 46, '_menu_item_target', ''),
(296, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(297, 46, '_menu_item_xfn', ''),
(298, 46, '_menu_item_url', ''),
(299, 47, 'tab-name', 'FULLMATCH'),
(300, 47, '_tab-name', 'field_5aed879cf47f3'),
(301, 47, 'name_tab_1', 'Что такое FULLMATCH?'),
(302, 47, '_name_tab_1', 'field_5aed8993f47f4'),
(303, 47, 'name_tab_2', 'Доступ к FULLMATCH'),
(304, 47, '_name_tab_2', 'field_5aed89e0f47f5'),
(305, 47, 'content_tab_1', '<b class=\"title medium\">Система Підбору Оливи для Вашого АВТО</b>\r\n\r\nИспользование соответствующей масла достаточно для обеспечения высоких рабочих характеристик Вашего авто. FULLMATCH - Система подбора Масла - это программа, которая порекомендует ряд масел для применения в автомобиле после введения определенных данных о транспортного средства.\r\n\r\nС помощью этой программы, разработанной в соответствии со стандартами, предусмотренных международными организациями API1 и ACEA2, технических спецификаций и требований, предусмотренных производителями транспортных средств можно легко определить те масла OPET, подходящие для Вашего автомобиля.\r\n\r\nТаким образом, данная система дает Вам возможность безопасно пользоваться Вашим автомобилем, предотвращая проблемы, которые возникают из-за применения несоответствующих масел.\r\n\r\n1: API Американский Институт Нефти\r\n\r\n2: ACEA: Европейская Ассоциация предприятий автомобильной промышленности.'),
(306, 47, '_content_tab_1', 'field_5aed8a38f47f6'),
(307, 47, 'content_tab_2', '<p style=\"text-align: center;\">Для подбора масла, кликните по иконке, соответствующей типу Вашего автомобиля. Затем выберите марку авто, его модель и тип.</p>\r\n\r\n\r\n        <iframe src=\"http://www.opetoil.com.tr/fullmatch/Default.aspx?Lang=eng&isKioskMode=0\" frameborder=\"0\" height=\"500\" width=\"100%\" style=\"margin-top: 20px;\"></iframe>'),
(308, 47, '_content_tab_2', 'field_5aed8a72f47f7'),
(309, 47, 'title_tab_1', 'Что такое FULLMATCH?'),
(310, 47, '_title_tab_1', 'field_5aed8ce72b522'),
(311, 47, 'title_tab_2', 'OPET FULLMATCH'),
(312, 47, '_title_tab_2', 'field_5aed8d032b523'),
(313, 48, 'tab-name', 'FULLCHECK'),
(314, 48, '_tab-name', 'field_5aed879cf47f3'),
(315, 48, 'name_tab_1', 'Что такое FULLCHECK?'),
(316, 48, '_name_tab_1', 'field_5aed8993f47f4'),
(317, 48, 'name_tab_2', 'Преимущетсва FULLCHECK'),
(318, 48, '_name_tab_2', 'field_5aed89e0f47f5'),
(319, 48, 'title_tab_1', 'Что такое система FULLCHECK'),
(320, 48, '_title_tab_1', 'field_5aed8ce72b522'),
(321, 48, 'content_tab_1', ''),
(322, 48, '_content_tab_1', 'field_5aed8a38f47f6'),
(323, 48, 'title_tab_2', ''),
(324, 48, '_title_tab_2', 'field_5aed8d032b523'),
(325, 48, 'content_tab_2', ''),
(326, 48, '_content_tab_2', 'field_5aed8a72f47f7'),
(327, 49, 'tab-name', 'FULLCHECK'),
(328, 49, '_tab-name', 'field_5aed879cf47f3'),
(329, 49, 'name_tab_1', 'Что такое FULLCHECK?'),
(330, 49, '_name_tab_1', 'field_5aed8993f47f4'),
(331, 49, 'name_tab_2', 'Преимущетсва FULLCHECK'),
(332, 49, '_name_tab_2', 'field_5aed89e0f47f5'),
(333, 49, 'title_tab_1', 'Что такое система FULLCHECK'),
(334, 49, '_title_tab_1', 'field_5aed8ce72b522'),
(335, 49, 'content_tab_1', 'FULLCHECK - програма аналізу використаної оливи від OPET, є системою моніторингу обладнання, яка на додаток до класичних аналізів, що надають інформацію про стан мастильного матеріалу, також включає аналізи, які здатні показати ступінь зносу системи змащування.\r\n\r\nДосвід OPET у проведенні польових досліджень, регулярний моніторинг стану олив шляхом відбору проб у найкритичніших точках системи змащування вузлів і агрегатів, а також моніторинг життєвого циклу як мастильного матеріалу, так і системи, в якій використовувалась така олива, зробили свій внесок у визначення вірогідних несправностей, які можуть виникнути в обладнанні, даючи змогу зменшити термін і вартість проведення ремонтних робіт.\r\n\r\nДля отримання більш надійної інтерпретації даних, зразки з систем змащування потрібно відбирати через регулярні проміжки часу, а результати аналізів потрібно порівнювати з даними попередніх аналізів. На додаток до цього, для ефективної оцінки результатів аналізу оливи, потрібно також враховувати робочий стан вашого обладнання і автомобілів.\r\n\r\nЗапустити додаток <a class=\"textLightBlue\" href=\"http://test1.pureservice.me/Content/FullcheckBrosur_Aralik_2016_eng.pdf\">FULLCHECK E-Book .</a>\r\n\r\nБудь-ласка, <a href=\"http://www.fullcheck.com.tr/\" target=\"_blank\" rel=\"noopener\">клацніть,</a> щоб відвідати веб-сайт OPET FULLCHECK.'),
(336, 49, '_content_tab_1', 'field_5aed8a38f47f6'),
(337, 49, 'title_tab_2', 'Преимущества FULLCHECK'),
(338, 49, '_title_tab_2', 'field_5aed8d032b523'),
(339, 49, 'content_tab_2', ''),
(340, 49, '_content_tab_2', 'field_5aed8a72f47f7'),
(341, 50, 'tab-name', 'FULLCHECK'),
(342, 50, '_tab-name', 'field_5aed879cf47f3'),
(343, 50, 'name_tab_1', 'Что такое FULLCHECK?'),
(344, 50, '_name_tab_1', 'field_5aed8993f47f4'),
(345, 50, 'name_tab_2', 'Преимущетсва FULLCHECK'),
(346, 50, '_name_tab_2', 'field_5aed89e0f47f5'),
(347, 50, 'title_tab_1', 'Что такое система FULLCHECK'),
(348, 50, '_title_tab_1', 'field_5aed8ce72b522'),
(349, 50, 'content_tab_1', '<strong>FULLCHECK</strong> - програма аналізу використаної оливи від OPET, є системою моніторингу обладнання, яка на додаток до класичних аналізів, що надають інформацію про стан мастильного матеріалу, також включає аналізи, які здатні показати ступінь зносу системи змащування.\r\n\r\nДосвід OPET у проведенні польових досліджень, регулярний моніторинг стану олив шляхом відбору проб у найкритичніших точках системи змащування вузлів і агрегатів, а також моніторинг життєвого циклу як мастильного матеріалу, так і системи, в якій використовувалась така олива, зробили свій внесок у визначення вірогідних несправностей, які можуть виникнути в обладнанні, даючи змогу зменшити термін і вартість проведення ремонтних робіт.\r\n\r\nДля отримання більш надійної інтерпретації даних, зразки з систем змащування потрібно відбирати через регулярні проміжки часу, а результати аналізів потрібно порівнювати з даними попередніх аналізів. На додаток до цього, для ефективної оцінки результатів аналізу оливи, потрібно також враховувати робочий стан вашого обладнання і автомобілів.\r\n\r\nЗапустити додаток <a class=\"textLightBlue\" href=\"http://test1.pureservice.me/Content/FullcheckBrosur_Aralik_2016_eng.pdf\" target=\"_blank\">FULLCHECK E-Book .</a>\r\n\r\nБудь-ласка, <a href=\"http://www.fullcheck.com.tr/\" target=\"_blank\" rel=\"noopener\">клацніть,</a> щоб відвідати веб-сайт OPET FULLCHECK.'),
(350, 50, '_content_tab_1', 'field_5aed8a38f47f6'),
(351, 50, 'title_tab_2', 'Преимущества FULLCHECK'),
(352, 50, '_title_tab_2', 'field_5aed8d032b523'),
(353, 50, 'content_tab_2', ''),
(354, 50, '_content_tab_2', 'field_5aed8a72f47f7'),
(355, 51, 'tab-name', 'FULLCHECK'),
(356, 51, '_tab-name', 'field_5aed879cf47f3'),
(357, 51, 'name_tab_1', 'Что такое FULLCHECK?'),
(358, 51, '_name_tab_1', 'field_5aed8993f47f4'),
(359, 51, 'name_tab_2', 'Преимущетсва FULLCHECK'),
(360, 51, '_name_tab_2', 'field_5aed89e0f47f5'),
(361, 51, 'title_tab_1', 'Что такое система FULLCHECK'),
(362, 51, '_title_tab_1', 'field_5aed8ce72b522'),
(363, 51, 'content_tab_1', '<strong>FULLCHECK</strong> - програма аналізу використаної оливи від OPET, є системою моніторингу обладнання, яка на додаток до класичних аналізів, що надають інформацію про стан мастильного матеріалу, також включає аналізи, які здатні показати ступінь зносу системи змащування.\r\n\r\nДосвід OPET у проведенні польових досліджень, регулярний моніторинг стану олив шляхом відбору проб у найкритичніших точках системи змащування вузлів і агрегатів, а також моніторинг життєвого циклу як мастильного матеріалу, так і системи, в якій використовувалась така олива, зробили свій внесок у визначення вірогідних несправностей, які можуть виникнути в обладнанні, даючи змогу зменшити термін і вартість проведення ремонтних робіт.\r\n\r\nДля отримання більш надійної інтерпретації даних, зразки з систем змащування потрібно відбирати через регулярні проміжки часу, а результати аналізів потрібно порівнювати з даними попередніх аналізів. На додаток до цього, для ефективної оцінки результатів аналізу оливи, потрібно також враховувати робочий стан вашого обладнання і автомобілів.\r\n\r\nЗапустити додаток <a class=\"textLightBlue\" href=\"http://test1.pureservice.me/Content/FullcheckBrosur_Aralik_2016_eng.pdf\" target=\"_blank\">FULLCHECK E-Book .</a>\r\n\r\nБудь-ласка, <a href=\"http://www.fullcheck.com.tr/\" target=\"_blank\" rel=\"noopener\">клацніть,</a> щоб відвідати веб-сайт OPET FULLCHECK.'),
(364, 51, '_content_tab_1', 'field_5aed8a38f47f6'),
(365, 51, 'title_tab_2', 'Преимущества FULLCHECK'),
(366, 51, '_title_tab_2', 'field_5aed8d032b523'),
(367, 51, 'content_tab_2', '<b class=\"title medium\">Захист Вашого Парку Автомобілів або Обладнання</b>\r\n\r\nЗавдяки FULLCHECK регулярний контроль над Вашим парком автомобілів або обладнанням:\r\n<ul>\r\n 	<li>Допомагає визначати пріоритети у техобслуговуванні.</li>\r\n 	<li>Скорочує час простою Обладнання/ Транспортного Засобу.</li>\r\n 	<li>Допомагає перевірити проведення аварійних ремонтів.</li>\r\n 	<li>Допомагає прийняти рішення щодо необхідності ремонту обладнання/транспортного засобу.</li>\r\n 	<li>Допомагає підвищити ефективність роботи СТО.</li>\r\n</ul>\r\n<strong>Всеохопний Сервіс</strong>\r\n\r\nЗавдяки системі FULLCHECK з проведення аналізів використаної оливи:\r\n<ul>\r\n 	<li>Вам оперативно доставлятимуться детальні аналізи щодо системи змащування.</li>\r\n 	<li>Ви отримаєте можливість скористатися перевагами сучасного високочутливого обладнання нашої лабораторії.</li>\r\n 	<li>За допомогою кольорової системи оповіщень і чітких попереджень, Ви зможете оперативно приймати рішення щодо обладнання.</li>\r\n 	<li>У Вас буде можливість отримувати інформацію щодо процесу аналізу зразка через інтернет.</li>\r\n 	<li>Ви можете відслідковувати актуальні результати аналізу і статистичні оцінки через інтернет.</li>\r\n</ul>\r\nЗапустити додаток <a class=\"textLightBlue\" href=\"http://test1.pureservice.me/Content/FullcheckBrosur_Aralik_2016_eng.pdf\">Fullcheck E-Book.</a>\r\n\r\nБудь-ласка, <a href=\"http://www.fullcheck.com.tr/\" target=\"_blank\" rel=\"noopener\">клацніть,</a> щоб відвідати веб-сайт OPET Fullcheck.'),
(368, 51, '_content_tab_2', 'field_5aed8a72f47f7'),
(369, 52, 'tab-name', 'FULLCHECK'),
(370, 52, '_tab-name', 'field_5aed879cf47f3'),
(371, 52, 'name_tab_1', 'Что такое FULLCHECK?'),
(372, 52, '_name_tab_1', 'field_5aed8993f47f4'),
(373, 52, 'name_tab_2', 'Преимущетсва FULLCHECK'),
(374, 52, '_name_tab_2', 'field_5aed89e0f47f5'),
(375, 52, 'title_tab_1', 'Что такое система FULLCHECK'),
(376, 52, '_title_tab_1', 'field_5aed8ce72b522'),
(377, 52, 'content_tab_1', '<strong>FULLCHECK</strong> - програма аналізу використаної оливи від OPET, є системою моніторингу обладнання, яка на додаток до класичних аналізів, що надають інформацію про стан мастильного матеріалу, також включає аналізи, які здатні показати ступінь зносу системи змащування.\r\n\r\nДосвід OPET у проведенні польових досліджень, регулярний моніторинг стану олив шляхом відбору проб у найкритичніших точках системи змащування вузлів і агрегатів, а також моніторинг життєвого циклу як мастильного матеріалу, так і системи, в якій використовувалась така олива, зробили свій внесок у визначення вірогідних несправностей, які можуть виникнути в обладнанні, даючи змогу зменшити термін і вартість проведення ремонтних робіт.\r\n\r\nДля отримання більш надійної інтерпретації даних, зразки з систем змащування потрібно відбирати через регулярні проміжки часу, а результати аналізів потрібно порівнювати з даними попередніх аналізів. На додаток до цього, для ефективної оцінки результатів аналізу оливи, потрібно також враховувати робочий стан вашого обладнання і автомобілів.\r\n\r\nЗапустити додаток <a class=\"textLightBlue\" href=\"http://test1.pureservice.me/Content/FullcheckBrosur_Aralik_2016_eng.pdf\" target=\"_blank\" rel=\"noopener\">FULLCHECK E-Book .</a>\r\n\r\nБудь-ласка, <a href=\"http://www.fullcheck.com.tr/\" target=\"_blank\" rel=\"noopener\">клацніть,</a> щоб відвідати веб-сайт OPET FULLCHECK.'),
(378, 52, '_content_tab_1', 'field_5aed8a38f47f6'),
(379, 52, 'title_tab_2', 'Преимущества FULLCHECK'),
(380, 52, '_title_tab_2', 'field_5aed8d032b523'),
(381, 52, 'content_tab_2', '<b class=\"title medium\">Захист Вашого Парку Автомобілів або Обладнання</b>\r\n\r\nЗавдяки FULLCHECK регулярний контроль над Вашим парком автомобілів або обладнанням:\r\n<ul>\r\n 	<li>Допомагає визначати пріоритети у техобслуговуванні.</li>\r\n 	<li>Скорочує час простою Обладнання/ Транспортного Засобу.</li>\r\n 	<li>Допомагає перевірити проведення аварійних ремонтів.</li>\r\n 	<li>Допомагає прийняти рішення щодо необхідності ремонту обладнання/транспортного засобу.</li>\r\n 	<li>Допомагає підвищити ефективність роботи СТО.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<strong>Всеохопний Сервіс</strong>\r\n\r\nЗавдяки системі FULLCHECK з проведення аналізів використаної оливи:\r\n<ul>\r\n 	<li>Вам оперативно доставлятимуться детальні аналізи щодо системи змащування.</li>\r\n 	<li>Ви отримаєте можливість скористатися перевагами сучасного високочутливого обладнання нашої лабораторії.</li>\r\n 	<li>За допомогою кольорової системи оповіщень і чітких попереджень, Ви зможете оперативно приймати рішення щодо обладнання.</li>\r\n 	<li>У Вас буде можливість отримувати інформацію щодо процесу аналізу зразка через інтернет.</li>\r\n 	<li>Ви можете відслідковувати актуальні результати аналізу і статистичні оцінки через інтернет.</li>\r\n</ul>\r\nЗапустити додаток <a class=\"textLightBlue\" href=\"http://test1.pureservice.me/Content/FullcheckBrosur_Aralik_2016_eng.pdf\">Fullcheck E-Book.</a>\r\n\r\nБудь-ласка, <a href=\"http://www.fullcheck.com.tr/\" target=\"_blank\" rel=\"noopener\">клацніть,</a> щоб відвідати веб-сайт OPET Fullcheck.'),
(382, 52, '_content_tab_2', 'field_5aed8a72f47f7'),
(383, 53, 'tab-name', 'FULLCHECK'),
(384, 53, '_tab-name', 'field_5aed879cf47f3'),
(385, 53, 'name_tab_1', 'Что такое FULLCHECK?'),
(386, 53, '_name_tab_1', 'field_5aed8993f47f4'),
(387, 53, 'name_tab_2', 'Преимущетсва FULLCHECK'),
(388, 53, '_name_tab_2', 'field_5aed89e0f47f5'),
(389, 53, 'title_tab_1', 'Что такое система FULLCHECK'),
(390, 53, '_title_tab_1', 'field_5aed8ce72b522'),
(391, 53, 'content_tab_1', '<strong>FULLCHECK</strong> - программа анализа использованной масла от OPET, является системой мониторинга оборудования, которая в дополнение к классическим анализов, предоставляющих информацию о состоянии смазочного материала, также включает анализы, которые способны показать степень износа системы смазки.\r\n\r\nОпыт OPET в проведении полевых исследований, регулярный мониторинг состояния масел путем отбора проб в критических точках системы смазки узлов и агрегатов, а также мониторинг жизненного цикла как смазочного материала, так и системы, в которой использовалась такая масло, внесли свой вклад в определение возможных неисправностей, которые могут возникнуть в оборудовании, позволяя уменьшить срок и стоимость проведения ремонтных работ.\r\n\r\nДля получения более надежной интерпретации данных, образцы из систем смазки нужно отбирать через регулярные промежутки времени, а результаты анализов нужно сравнивать с данными предыдущих анализов. В дополнение к этому, для эффективной оценки результатов анализа масла, нужно также учитывать рабочее состояние вашего оборудования и автомобилей.\r\n\r\nЗапустить приложение <a class=\"textLightBlue\" href=\"http://test1.pureservice.me/Content/FullcheckBrosur_Aralik_2016_eng.pdf\" target=\"_blank\" rel=\"noopener\">FULLCHECK E-Book .</a>\r\n\r\nПожалуста, <a href=\"http://www.fullcheck.com.tr/\" target=\"_blank\" rel=\"noopener\">кликните,</a> чтобы посетить веб-сайт OPET FULLCHECK.'),
(392, 53, '_content_tab_1', 'field_5aed8a38f47f6'),
(393, 53, 'title_tab_2', 'Преимущества FULLCHECK'),
(394, 53, '_title_tab_2', 'field_5aed8d032b523'),
(395, 53, 'content_tab_2', '<strong>Защита Вашего парка автомобилей или Оборудование</strong>\r\n\r\nБлагодаря FULLCHECK регулярный контроль над Вашим парком автомобилей или оборудованием:\r\n<ul>\r\n 	<li>Помогает определять приоритеты в техобслуживании.</li>\r\n 	<li>Сокращает время простоя Оборудование / Транспортного Средства.</li>\r\n 	<li>Помогает проверить проведения аварийных ремонтов.</li>\r\n 	<li>Помогает принять решение о необходимости ремонта оборудования / транспортного средства.</li>\r\n 	<li>Помогает повысить эффективность работы СТО.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<strong>Всеобъемлющий сервис</strong>\r\n\r\nБлагодаря системе FULLCHECK по проведению анализов использованной масла:\r\n<ul>\r\n 	<li>Вам оперативно доставляться подробные анализы по системе смазки.</li>\r\n 	<li>Вы получите возможность воспользоваться преимуществами современного высокочувствительного оборудования нашей лаборатории.</li>\r\n 	<li>С помощью цветной системы оповещений и четких предупреждений, Вы сможете оперативно принимать решения по оборудованию.</li>\r\n 	<li>У Вас будет возможность получать информацию о процессе анализа образца через интернет.</li>\r\n 	<li>Вы можете отслеживать актуальные результаты анализа и статистические оценки через интернет.</li>\r\n</ul>\r\nзапустить приложение <a class=\"textLightBlue\" href=\"http://test1.pureservice.me/Content/FullcheckBrosur_Aralik_2016_eng.pdf\">Fullcheck E-Book.</a>\r\n\r\nПожалуста, <a href=\"http://www.fullcheck.com.tr/\" target=\"_blank\" rel=\"noopener\">кликните,</a> чтобы посетить веб-сайт OPET FULLCHECK.'),
(396, 53, '_content_tab_2', 'field_5aed8a72f47f7'),
(397, 54, '_edit_last', '1'),
(398, 54, '_wp_page_template', 'default'),
(399, 54, '_edit_lock', '1525523560:1'),
(400, 54, '_wp_trash_meta_status', 'publish'),
(401, 54, '_wp_trash_meta_time', '1525523704'),
(402, 54, '_wp_desired_post_slug', '%d1%82%d0%b5%d1%85%d0%bd%d0%be%d0%bb%d0%be%d0%b3%d0%b8%d0%b8'),
(403, 56, '_edit_last', '1'),
(404, 56, '_edit_lock', '1526211571:1'),
(405, 56, '_wp_page_template', 'default'),
(406, 60, '_menu_item_type', 'post_type'),
(407, 60, '_menu_item_menu_item_parent', '0'),
(408, 60, '_menu_item_object_id', '56'),
(409, 60, '_menu_item_object', 'page'),
(410, 60, '_menu_item_target', ''),
(411, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(412, 60, '_menu_item_xfn', ''),
(413, 60, '_menu_item_url', ''),
(415, 64, '_menu_item_type', 'taxonomy'),
(416, 64, '_menu_item_menu_item_parent', '0'),
(417, 64, '_menu_item_object_id', '8'),
(418, 64, '_menu_item_object', 'category'),
(419, 64, '_menu_item_target', ''),
(420, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(421, 64, '_menu_item_xfn', ''),
(422, 64, '_menu_item_url', ''),
(423, 64, '_menu_item_orphaned', '1525526238'),
(433, 1, '_wp_trash_meta_status', 'publish'),
(434, 1, '_wp_trash_meta_time', '1525526551'),
(435, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(436, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(437, 67, '_edit_last', '1'),
(438, 67, '_edit_lock', '1526212424:1'),
(439, 67, '_wp_page_template', 'contacts.php'),
(440, 69, '_menu_item_type', 'post_type'),
(441, 69, '_menu_item_menu_item_parent', '0'),
(442, 69, '_menu_item_object_id', '67'),
(443, 69, '_menu_item_object', 'page'),
(444, 69, '_menu_item_target', ''),
(445, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(446, 69, '_menu_item_xfn', ''),
(447, 69, '_menu_item_url', ''),
(449, 70, '_edit_last', '1'),
(450, 70, '_edit_lock', '1526212300:1'),
(451, 67, 'company_name', 'ООО \"ПРЕМИУМ ОИЛ ЛТД\"'),
(452, 67, '_company_name', 'field_5aef36702972d'),
(453, 67, 'main_address', 'г.Харьков, пр.Московский, 67'),
(454, 67, '_main_address', 'field_5aef369cd139e'),
(455, 67, 'actual_address', 'г.Харьков, пр.Московский, 67'),
(456, 67, '_actual_address', 'field_5aef36f8b91de'),
(457, 67, 'phone', '+380734306034'),
(458, 67, '_phone', 'field_5aef3d16baffb'),
(459, 67, 'email', 'ltd.premiumoil@gmail.com'),
(460, 67, '_email', 'field_5aef3d5fbaffc'),
(461, 67, 'contact', 'Сивер Анна Сергеевна'),
(462, 67, '_contact', 'field_5aef3d85baffd'),
(463, 78, 'company_name', 'ООО \"ПРЕМИУМ ОИЛ ЛТД\"'),
(464, 78, '_company_name', 'field_5aef36702972d'),
(465, 78, 'main_address', ' г.Харьков, пр.Московский, 67'),
(466, 78, '_main_address', 'field_5aef369cd139e'),
(467, 78, 'actual_address', ' г.Харьков, пр.Московский, 67'),
(468, 78, '_actual_address', 'field_5aef36f8b91de'),
(469, 78, 'phone', '+380734306034'),
(470, 78, '_phone', 'field_5aef3d16baffb'),
(471, 78, 'email', 'ltd.premiumoil@gmail.com'),
(472, 78, '_email', 'field_5aef3d5fbaffc'),
(473, 78, 'contact', 'Сивер Анна Сергеевна'),
(474, 78, '_contact', 'field_5aef3d85baffd'),
(475, 67, 'territory', 'Официальный дистрибьютор на территории  Днепропетровской, Запорожской, Харьковской, Полтавской, Сумской, Донецкой, Луганской областей'),
(476, 67, '_territory', 'field_5aef41046f253'),
(477, 80, 'company_name', 'ООО \"ПРЕМИУМ ОИЛ ЛТД\"'),
(478, 80, '_company_name', 'field_5aef36702972d'),
(479, 80, 'main_address', 'г.Харьков, пр.Московский, 67'),
(480, 80, '_main_address', 'field_5aef369cd139e'),
(481, 80, 'actual_address', 'г.Харьков, пр.Московский, 67'),
(482, 80, '_actual_address', 'field_5aef36f8b91de'),
(483, 80, 'phone', '+380734306034'),
(484, 80, '_phone', 'field_5aef3d16baffb'),
(485, 80, 'email', 'ltd.premiumoil@gmail.com'),
(486, 80, '_email', 'field_5aef3d5fbaffc'),
(487, 80, 'contact', 'Сивер Анна Сергеевна'),
(488, 80, '_contact', 'field_5aef3d85baffd'),
(489, 80, 'territory', 'официальный дистрибьютор на территории  Днепропетровской, Запорожской, Харьковской, Полтавской, Сумской, Донецкой, Луганской областей'),
(490, 80, '_territory', 'field_5aef41046f253'),
(491, 81, 'company_name', 'ООО \"ПРЕМИУМ ОИЛ ЛТД\"'),
(492, 81, '_company_name', 'field_5aef36702972d'),
(493, 81, 'main_address', 'г.Харьков, пр.Московский, 67'),
(494, 81, '_main_address', 'field_5aef369cd139e'),
(495, 81, 'actual_address', 'г.Харьков, пр.Московский, 67'),
(496, 81, '_actual_address', 'field_5aef36f8b91de'),
(497, 81, 'phone', '+380734306034'),
(498, 81, '_phone', 'field_5aef3d16baffb'),
(499, 81, 'email', 'ltd.premiumoil@gmail.com'),
(500, 81, '_email', 'field_5aef3d5fbaffc'),
(501, 81, 'contact', 'Сивер Анна Сергеевна'),
(502, 81, '_contact', 'field_5aef3d85baffd'),
(503, 81, 'territory', 'Официальный дистрибьютор на территории  Днепропетровской, Запорожской, Харьковской, Полтавской, Сумской, Донецкой, Луганской областей'),
(504, 81, '_territory', 'field_5aef41046f253'),
(505, 83, '_edit_last', '1'),
(506, 83, '_edit_lock', '1525727029:1'),
(509, 85, '_edit_last', '1'),
(510, 85, '_edit_lock', '1526158297:1'),
(511, 85, '_wp_page_template', 'subcategory.php'),
(512, 87, '_edit_last', '1'),
(513, 87, '_edit_lock', '1526160051:1'),
(514, 87, '_wp_page_template', 'single-item.php'),
(515, 89, '_menu_item_type', 'taxonomy'),
(516, 89, '_menu_item_menu_item_parent', '0'),
(517, 89, '_menu_item_object_id', '7'),
(518, 89, '_menu_item_object', 'category'),
(519, 89, '_menu_item_target', ''),
(520, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(521, 89, '_menu_item_xfn', ''),
(522, 89, '_menu_item_url', ''),
(524, 90, '_menu_item_type', 'taxonomy'),
(525, 90, '_menu_item_menu_item_parent', '0'),
(526, 90, '_menu_item_object_id', '5'),
(527, 90, '_menu_item_object', 'category'),
(528, 90, '_menu_item_target', ''),
(529, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(530, 90, '_menu_item_xfn', ''),
(531, 90, '_menu_item_url', ''),
(533, 91, '_menu_item_type', 'taxonomy'),
(534, 91, '_menu_item_menu_item_parent', '0'),
(535, 91, '_menu_item_object_id', '4'),
(536, 91, '_menu_item_object', 'category'),
(537, 91, '_menu_item_target', ''),
(538, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(539, 91, '_menu_item_xfn', ''),
(540, 91, '_menu_item_url', ''),
(560, 94, '_menu_item_type', 'taxonomy'),
(561, 94, '_menu_item_menu_item_parent', '0'),
(562, 94, '_menu_item_object_id', '6'),
(563, 94, '_menu_item_object', 'category'),
(564, 94, '_menu_item_target', ''),
(565, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(566, 94, '_menu_item_xfn', ''),
(567, 94, '_menu_item_url', ''),
(568, 95, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(569, 95, '_mail', 'a:8:{s:7:\"subject\";s:21:\"oils \"[your-subject]\"\";s:6:\"sender\";s:28:\"[your-name] <wordpress@oils>\";s:4:\"body\";s:154:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on oils (http://oils)\";s:9:\"recipient\";s:22:\"polesskyvlad@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(570, 95, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:21:\"oils \"[your-subject]\"\";s:6:\"sender\";s:21:\"oils <wordpress@oils>\";s:4:\"body\";s:96:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on oils (http://oils)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:32:\"Reply-To: polesskyvlad@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(571, 95, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(572, 95, '_additional_settings', NULL),
(573, 95, '_locale', 'ru_RU'),
(574, 96, 'inline_featured_image', '0'),
(575, 97, 'inline_featured_image', '0'),
(576, 98, 'inline_featured_image', '0'),
(577, 99, 'inline_featured_image', '0'),
(578, 100, '_wp_attached_file', '2018/05/lubricants-1.jpg'),
(579, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:475;s:4:\"file\";s:24:\"2018/05/lubricants-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"lubricants-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"lubricants-1-300x74.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"lubricants-1-768x190.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"lubricants-1-1024x253.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"lubricants-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"lubricants-1-600x148.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"lubricants-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"lubricants-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"lubricants-1-600x148.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"lubricants-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(580, 101, '_wp_attached_file', '2018/05/factory.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(581, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:475;s:4:\"file\";s:19:\"2018/05/factory.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"factory-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"factory-300x74.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"factory-768x190.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"factory-1024x253.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"factory-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"factory-600x148.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"factory-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"factory-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"factory-600x148.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"factory-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(582, 102, '_wp_attached_file', '2018/05/available-oil.jpg'),
(583, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1919;s:6:\"height\";i:475;s:4:\"file\";s:25:\"2018/05/available-oil.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"available-oil-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"available-oil-300x74.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"available-oil-768x190.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"available-oil-1024x253.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"available-oil-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"available-oil-600x149.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"available-oil-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"available-oil-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"available-oil-600x149.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"available-oil-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(584, 103, '_wp_attached_file', '2018/05/auto-with-lpg.jpg'),
(585, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1919;s:6:\"height\";i:475;s:4:\"file\";s:25:\"2018/05/auto-with-lpg.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"auto-with-lpg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"auto-with-lpg-300x74.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"auto-with-lpg-768x190.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"auto-with-lpg-1024x253.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"auto-with-lpg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"auto-with-lpg-600x149.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"auto-with-lpg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"auto-with-lpg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"auto-with-lpg-600x149.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"auto-with-lpg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(586, 104, '_wp_attached_file', '2018/05/opet-antifreeze.jpg'),
(587, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1919;s:6:\"height\";i:475;s:4:\"file\";s:27:\"2018/05/opet-antifreeze.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"opet-antifreeze-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"opet-antifreeze-300x74.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"opet-antifreeze-768x190.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"opet-antifreeze-1024x253.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"opet-antifreeze-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"opet-antifreeze-600x149.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"opet-antifreeze-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"opet-antifreeze-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"opet-antifreeze-600x149.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"opet-antifreeze-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(588, 105, '_wp_attached_file', '2018/05/opet_banner.jpg'),
(589, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1919;s:6:\"height\";i:475;s:4:\"file\";s:23:\"2018/05/opet_banner.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"opet_banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"opet_banner-300x74.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:74;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"opet_banner-768x190.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"opet_banner-1024x253.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"opet_banner-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"opet_banner-600x149.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"opet_banner-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"opet_banner-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"opet_banner-600x149.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"opet_banner-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(590, 106, 'gallery_0_mainImage', '100'),
(591, 106, '_gallery_0_mainImage', 'field_5adfb1a8acb36'),
(592, 106, 'gallery_0_mainText', 'Текст тест'),
(593, 106, '_gallery_0_mainText', 'field_5adfb1dfacb37'),
(594, 106, 'gallery', '6'),
(595, 106, '_gallery', 'field_5adfb164acb35'),
(596, 106, 'gallery_1_mainImage', '101'),
(597, 106, '_gallery_1_mainImage', 'field_5adfb1a8acb36'),
(598, 106, 'gallery_1_mainText', ''),
(599, 106, '_gallery_1_mainText', 'field_5adfb1dfacb37'),
(600, 106, 'gallery_2_mainImage', '102'),
(601, 106, '_gallery_2_mainImage', 'field_5adfb1a8acb36'),
(602, 106, 'gallery_2_mainText', ''),
(603, 106, '_gallery_2_mainText', 'field_5adfb1dfacb37'),
(604, 106, 'gallery_3_mainImage', '103'),
(605, 106, '_gallery_3_mainImage', 'field_5adfb1a8acb36'),
(606, 106, 'gallery_3_mainText', ''),
(607, 106, '_gallery_3_mainText', 'field_5adfb1dfacb37'),
(608, 106, 'gallery_4_mainImage', '104'),
(609, 106, '_gallery_4_mainImage', 'field_5adfb1a8acb36'),
(610, 106, 'gallery_4_mainText', ''),
(611, 106, '_gallery_4_mainText', 'field_5adfb1dfacb37'),
(612, 106, 'gallery_5_mainImage', '105'),
(613, 106, '_gallery_5_mainImage', 'field_5adfb1a8acb36'),
(614, 106, 'gallery_5_mainText', ''),
(615, 106, '_gallery_5_mainText', 'field_5adfb1dfacb37'),
(616, 5, 'inline_featured_image', '0'),
(617, 107, '_pll_strings_translations', 'a:6:{i:0;a:2:{i:0;s:16:\"Product category\";i:1;s:37:\"Категории продуктов\";}i:1;a:2:{i:0;s:4:\"oils\";i:1;s:4:\"oils\";}i:2;a:2:{i:0;s:5:\"d.m.Y\";i:1;s:5:\"d.m.Y\";}i:3;a:2:{i:0;s:3:\"H:i\";i:1;s:3:\"H:i\";}i:4;a:2:{i:0;s:31:\"Which product is right for you?\";i:1;s:50:\"КАКОЙ ПРОДУКТ ВАМ ПОДХОДИТ?\";}i:5;a:2:{i:0;s:10:\"Categories\";i:1;s:18:\"Категории\";}}'),
(618, 108, '_pll_strings_translations', 'a:6:{i:0;a:2:{i:0;s:16:\"Product category\";i:1;s:37:\"Категорії продуктів\";}i:1;a:2:{i:0;s:4:\"oils\";i:1;s:4:\"oils\";}i:2;a:2:{i:0;s:5:\"d.m.Y\";i:1;s:5:\"d.m.Y\";}i:3;a:2:{i:0;s:3:\"H:i\";i:1;s:3:\"H:i\";}i:4;a:2:{i:0;s:31:\"Which product is right for you?\";i:1;s:31:\"Which product is right for you?\";}i:5;a:2:{i:0;s:10:\"Categories\";i:1;s:10:\"Categories\";}}'),
(619, 109, 'inline_featured_image', '0'),
(620, 109, '_wp_page_template', 'main.php'),
(621, 109, 'gallery_0_mainImage', '100'),
(622, 109, '_gallery_0_mainImage', 'field_5adfb1a8acb36'),
(623, 109, 'gallery_0_mainText', 'Текст тест'),
(624, 109, '_gallery_0_mainText', 'field_5adfb1dfacb37'),
(625, 109, 'gallery', '6'),
(626, 109, '_gallery', 'field_5adfb164acb35'),
(627, 109, 'gallery_1_mainImage', '101'),
(628, 109, '_gallery_1_mainImage', 'field_5adfb1a8acb36'),
(629, 109, 'gallery_1_mainText', ''),
(630, 109, '_gallery_1_mainText', 'field_5adfb1dfacb37'),
(631, 109, 'gallery_2_mainImage', '102'),
(632, 109, '_gallery_2_mainImage', 'field_5adfb1a8acb36'),
(633, 109, 'gallery_2_mainText', ''),
(634, 109, '_gallery_2_mainText', 'field_5adfb1dfacb37'),
(635, 109, 'gallery_3_mainImage', '103'),
(636, 109, '_gallery_3_mainImage', 'field_5adfb1a8acb36'),
(637, 109, 'gallery_3_mainText', ''),
(638, 109, '_gallery_3_mainText', 'field_5adfb1dfacb37'),
(639, 109, 'gallery_4_mainImage', '104'),
(640, 109, '_gallery_4_mainImage', 'field_5adfb1a8acb36'),
(641, 109, 'gallery_4_mainText', ''),
(642, 109, '_gallery_4_mainText', 'field_5adfb1dfacb37'),
(643, 109, 'gallery_5_mainImage', '105'),
(644, 109, '_gallery_5_mainImage', 'field_5adfb1a8acb36'),
(645, 109, 'gallery_5_mainText', ''),
(646, 109, '_gallery_5_mainText', 'field_5adfb1dfacb37'),
(647, 109, 'inline_featured_image', '0'),
(648, 109, '_dp_original', '5'),
(649, 109, '_edit_lock', '1525978242:1'),
(650, 109, '_edit_last', '1'),
(651, 110, 'gallery_0_mainImage', '100'),
(652, 110, '_gallery_0_mainImage', 'field_5adfb1a8acb36'),
(653, 110, 'gallery_0_mainText', 'Текст тест'),
(654, 110, '_gallery_0_mainText', 'field_5adfb1dfacb37'),
(655, 110, 'gallery', '6'),
(656, 110, '_gallery', 'field_5adfb164acb35'),
(657, 110, 'gallery_1_mainImage', '101'),
(658, 110, '_gallery_1_mainImage', 'field_5adfb1a8acb36'),
(659, 110, 'gallery_1_mainText', ''),
(660, 110, '_gallery_1_mainText', 'field_5adfb1dfacb37'),
(661, 110, 'gallery_2_mainImage', '102'),
(662, 110, '_gallery_2_mainImage', 'field_5adfb1a8acb36'),
(663, 110, 'gallery_2_mainText', ''),
(664, 110, '_gallery_2_mainText', 'field_5adfb1dfacb37'),
(665, 110, 'gallery_3_mainImage', '103'),
(666, 110, '_gallery_3_mainImage', 'field_5adfb1a8acb36'),
(667, 110, 'gallery_3_mainText', ''),
(668, 110, '_gallery_3_mainText', 'field_5adfb1dfacb37'),
(669, 110, 'gallery_4_mainImage', '104'),
(670, 110, '_gallery_4_mainImage', 'field_5adfb1a8acb36'),
(671, 110, 'gallery_4_mainText', ''),
(672, 110, '_gallery_4_mainText', 'field_5adfb1dfacb37'),
(673, 110, 'gallery_5_mainImage', '105'),
(674, 110, '_gallery_5_mainImage', 'field_5adfb1a8acb36'),
(675, 110, 'gallery_5_mainText', ''),
(676, 110, '_gallery_5_mainText', 'field_5adfb1dfacb37'),
(677, 111, '_wp_attached_file', '2018/05/oil.png'),
(678, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:217;s:6:\"height\";i:286;s:4:\"file\";s:15:\"2018/05/oil.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"oil-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"oil-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"oil-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(679, 112, '_wp_trash_meta_status', 'publish'),
(680, 112, '_wp_trash_meta_time', '1525979285'),
(681, 114, 'gallery_0_mainImage', '100'),
(682, 114, '_gallery_0_mainImage', 'field_5adfb1a8acb36'),
(683, 114, 'gallery_0_mainText', 'Текст тест'),
(684, 114, '_gallery_0_mainText', 'field_5adfb1dfacb37'),
(685, 114, 'gallery', '6'),
(686, 114, '_gallery', 'field_5adfb164acb35'),
(687, 114, 'gallery_1_mainImage', '101'),
(688, 114, '_gallery_1_mainImage', 'field_5adfb1a8acb36'),
(689, 114, 'gallery_1_mainText', ''),
(690, 114, '_gallery_1_mainText', 'field_5adfb1dfacb37'),
(691, 114, 'gallery_2_mainImage', '102'),
(692, 114, '_gallery_2_mainImage', 'field_5adfb1a8acb36'),
(693, 114, 'gallery_2_mainText', ''),
(694, 114, '_gallery_2_mainText', 'field_5adfb1dfacb37'),
(695, 114, 'gallery_3_mainImage', '103'),
(696, 114, '_gallery_3_mainImage', 'field_5adfb1a8acb36'),
(697, 114, 'gallery_3_mainText', ''),
(698, 114, '_gallery_3_mainText', 'field_5adfb1dfacb37'),
(699, 114, 'gallery_4_mainImage', '104'),
(700, 114, '_gallery_4_mainImage', 'field_5adfb1a8acb36'),
(701, 114, 'gallery_4_mainText', ''),
(702, 114, '_gallery_4_mainText', 'field_5adfb1dfacb37'),
(703, 114, 'gallery_5_mainImage', '105'),
(704, 114, '_gallery_5_mainImage', 'field_5adfb1a8acb36'),
(705, 114, 'gallery_5_mainText', ''),
(706, 114, '_gallery_5_mainText', 'field_5adfb1dfacb37'),
(707, 96, '_edit_lock', '1525981543:1'),
(708, 115, '_wp_attached_file', '2018/05/drop.png'),
(709, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:173;s:6:\"height\";i:122;s:4:\"file\";s:16:\"2018/05/drop.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"drop-150x122.png\";s:5:\"width\";i:150;s:6:\"height\";i:122;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"drop-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"drop-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(710, 116, 'inline_featured_image', '0'),
(711, 116, '_wc_review_count', '0'),
(712, 116, '_wc_rating_count', 'a:0:{}'),
(713, 116, '_wc_average_rating', '0'),
(714, 117, '_wp_attached_file', '2018/05/oil-1.png'),
(715, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:217;s:6:\"height\";i:286;s:4:\"file\";s:17:\"2018/05/oil-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"oil-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"oil-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"oil-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(716, 116, '_edit_last', '1'),
(717, 116, '_thumbnail_id', '117'),
(718, 116, '_sku', ''),
(719, 116, '_regular_price', '600'),
(720, 116, '_sale_price', ''),
(721, 116, '_sale_price_dates_from', ''),
(722, 116, '_sale_price_dates_to', ''),
(723, 116, 'total_sales', '1'),
(724, 116, '_tax_status', 'taxable'),
(725, 116, '_tax_class', ''),
(726, 116, '_manage_stock', 'yes'),
(727, 116, '_backorders', 'yes'),
(728, 116, '_sold_individually', 'no'),
(729, 116, '_weight', ''),
(730, 116, '_length', ''),
(731, 116, '_width', ''),
(732, 116, '_height', ''),
(733, 116, '_upsell_ids', 'a:0:{}'),
(734, 116, '_crosssell_ids', 'a:0:{}'),
(735, 116, '_purchase_note', ''),
(736, 116, '_default_attributes', 'a:0:{}'),
(737, 116, '_virtual', 'no'),
(738, 116, '_downloadable', 'no'),
(739, 116, '_product_image_gallery', ''),
(740, 116, '_download_limit', '-1'),
(741, 116, '_download_expiry', '-1'),
(742, 116, '_stock', '499'),
(743, 116, '_stock_status', 'instock'),
(744, 116, '_product_version', '3.3.5'),
(746, 116, '_edit_lock', '1526068314:1'),
(747, 97, '_edit_lock', '1525983174:1'),
(748, 118, '_wp_trash_meta_status', 'publish'),
(749, 118, '_wp_trash_meta_time', '1525984408'),
(750, 119, 'inline_featured_image', '0'),
(751, 119, '_edit_last', '1'),
(752, 119, '_edit_lock', '1526147246:1'),
(753, 119, '_wp_page_template', 'template-pro_cat.php'),
(754, 121, 'inline_featured_image', '0'),
(755, 121, '_sku', ''),
(756, 121, '_regular_price', ''),
(757, 121, '_sale_price', ''),
(758, 121, '_sale_price_dates_from', ''),
(759, 121, '_sale_price_dates_to', ''),
(760, 121, 'total_sales', '0'),
(761, 121, '_tax_status', 'taxable'),
(762, 121, '_tax_class', ''),
(763, 121, '_manage_stock', 'no'),
(764, 121, '_backorders', 'no'),
(765, 121, '_sold_individually', 'no'),
(766, 121, '_weight', ''),
(767, 121, '_length', ''),
(768, 121, '_width', ''),
(769, 121, '_height', ''),
(770, 121, '_upsell_ids', 'a:0:{}'),
(771, 121, '_crosssell_ids', 'a:0:{}'),
(772, 121, '_purchase_note', ''),
(773, 121, '_default_attributes', 'a:0:{}'),
(774, 121, '_virtual', 'no'),
(775, 121, '_downloadable', 'no'),
(776, 121, '_product_image_gallery', ''),
(777, 121, '_download_limit', '-1'),
(778, 121, '_download_expiry', '-1'),
(779, 121, '_thumbnail_id', '117'),
(780, 121, '_stock', NULL),
(781, 121, '_stock_status', 'outofstock'),
(782, 121, '_wc_average_rating', '0'),
(783, 121, '_wc_rating_count', 'a:0:{}'),
(784, 121, '_wc_review_count', '0'),
(785, 121, '_downloadable_files', 'a:0:{}'),
(786, 121, '_product_attributes', 'a:0:{}'),
(787, 121, '_product_version', '3.3.5'),
(788, 121, '_price', ''),
(789, 121, 'inline_featured_image', '0'),
(790, 121, '_edit_lock', '1526065473:1'),
(791, 121, '_edit_last', '1'),
(792, 122, 'inline_featured_image', '0'),
(793, 122, '_sku', ''),
(794, 122, '_regular_price', ''),
(795, 122, '_sale_price', ''),
(796, 122, '_sale_price_dates_from', ''),
(797, 122, '_sale_price_dates_to', ''),
(798, 122, 'total_sales', '0'),
(799, 122, '_tax_status', 'taxable'),
(800, 122, '_tax_class', ''),
(801, 122, '_manage_stock', 'no'),
(802, 122, '_backorders', 'no'),
(803, 122, '_sold_individually', 'no'),
(804, 122, '_weight', ''),
(805, 122, '_length', ''),
(806, 122, '_width', ''),
(807, 122, '_height', ''),
(808, 122, '_upsell_ids', 'a:0:{}'),
(809, 122, '_crosssell_ids', 'a:0:{}'),
(810, 122, '_purchase_note', ''),
(811, 122, '_default_attributes', 'a:0:{}'),
(812, 122, '_virtual', 'no'),
(813, 122, '_downloadable', 'no'),
(814, 122, '_product_image_gallery', ''),
(815, 122, '_download_limit', '-1'),
(816, 122, '_download_expiry', '-1'),
(817, 122, '_thumbnail_id', '117'),
(818, 122, '_stock', NULL),
(819, 122, '_stock_status', 'outofstock'),
(820, 122, '_wc_average_rating', '0'),
(821, 122, '_wc_rating_count', 'a:0:{}'),
(822, 122, '_wc_review_count', '0'),
(823, 122, '_downloadable_files', 'a:0:{}'),
(824, 122, '_product_attributes', 'a:0:{}'),
(825, 122, '_product_version', '3.3.5'),
(826, 122, '_price', ''),
(827, 122, 'inline_featured_image', '0'),
(828, 122, 'inline_featured_image', '0'),
(829, 122, '_edit_lock', '1526065513:1'),
(830, 122, '_edit_last', '1'),
(831, 116, '_product_attributes', 'a:1:{s:16:\"pa_vyberite-obem\";a:6:{s:4:\"name\";s:16:\"pa_vyberite-obem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(832, 123, '_variation_description', ''),
(833, 123, '_sku', ''),
(834, 123, '_regular_price', '2100'),
(835, 123, '_sale_price', ''),
(836, 123, '_sale_price_dates_from', ''),
(837, 123, '_sale_price_dates_to', ''),
(838, 123, 'total_sales', '0'),
(839, 123, '_tax_status', 'taxable'),
(840, 123, '_tax_class', 'parent'),
(841, 123, '_manage_stock', 'no'),
(842, 123, '_backorders', 'no'),
(843, 123, '_sold_individually', 'no'),
(844, 123, '_weight', ''),
(845, 123, '_length', ''),
(846, 123, '_width', ''),
(847, 123, '_height', ''),
(848, 123, '_upsell_ids', 'a:0:{}'),
(849, 123, '_crosssell_ids', 'a:0:{}'),
(850, 123, '_purchase_note', ''),
(851, 123, '_default_attributes', 'a:0:{}'),
(852, 123, '_virtual', 'no'),
(853, 123, '_downloadable', 'no'),
(854, 123, '_product_image_gallery', ''),
(855, 123, '_download_limit', '-1'),
(856, 123, '_download_expiry', '-1'),
(857, 123, '_stock', '0'),
(858, 123, '_stock_status', 'instock'),
(859, 123, '_wc_average_rating', '0'),
(860, 123, '_wc_rating_count', 'a:0:{}'),
(861, 123, '_wc_review_count', '0'),
(862, 123, '_downloadable_files', 'a:0:{}'),
(863, 123, '_price', '2100'),
(864, 123, '_product_version', '3.3.5'),
(865, 124, '_variation_description', ''),
(866, 124, '_sku', ''),
(867, 124, '_regular_price', '800'),
(868, 124, '_sale_price', ''),
(869, 124, '_sale_price_dates_from', ''),
(870, 124, '_sale_price_dates_to', ''),
(871, 124, 'total_sales', '0'),
(872, 124, '_tax_status', 'taxable'),
(873, 124, '_tax_class', 'parent'),
(874, 124, '_manage_stock', 'no'),
(875, 124, '_backorders', 'no'),
(876, 124, '_sold_individually', 'no'),
(877, 124, '_weight', ''),
(878, 124, '_length', ''),
(879, 124, '_width', ''),
(880, 124, '_height', ''),
(881, 124, '_upsell_ids', 'a:0:{}'),
(882, 124, '_crosssell_ids', 'a:0:{}'),
(883, 124, '_purchase_note', ''),
(884, 124, '_default_attributes', 'a:0:{}'),
(885, 124, '_virtual', 'no'),
(886, 124, '_downloadable', 'no'),
(887, 124, '_product_image_gallery', ''),
(888, 124, '_download_limit', '-1'),
(889, 124, '_download_expiry', '-1'),
(890, 124, '_stock', '0'),
(891, 124, '_stock_status', 'instock'),
(892, 124, '_wc_average_rating', '0'),
(893, 124, '_wc_rating_count', 'a:0:{}'),
(894, 124, '_wc_review_count', '0'),
(895, 124, '_downloadable_files', 'a:0:{}'),
(896, 124, 'attribute_pa_vyberite-obem', '4l'),
(897, 124, '_price', '800'),
(898, 124, '_product_version', '3.3.5'),
(899, 125, '_variation_description', ''),
(900, 125, '_sku', ''),
(901, 125, '_regular_price', '150'),
(902, 125, '_sale_price', ''),
(903, 125, '_sale_price_dates_from', ''),
(904, 125, '_sale_price_dates_to', ''),
(905, 125, 'total_sales', '0'),
(906, 125, '_tax_status', 'taxable'),
(907, 125, '_tax_class', 'parent'),
(908, 125, '_manage_stock', 'no'),
(909, 125, '_backorders', 'no'),
(910, 125, '_sold_individually', 'no'),
(911, 125, '_weight', ''),
(912, 125, '_length', ''),
(913, 125, '_width', ''),
(914, 125, '_height', ''),
(915, 125, '_upsell_ids', 'a:0:{}'),
(916, 125, '_crosssell_ids', 'a:0:{}'),
(917, 125, '_purchase_note', ''),
(918, 125, '_default_attributes', 'a:0:{}'),
(919, 125, '_virtual', 'no'),
(920, 125, '_downloadable', 'no'),
(921, 125, '_product_image_gallery', ''),
(922, 125, '_download_limit', '-1'),
(923, 125, '_download_expiry', '-1'),
(924, 125, '_stock', '0'),
(925, 125, '_stock_status', 'instock'),
(926, 125, '_wc_average_rating', '0'),
(927, 125, '_wc_rating_count', 'a:0:{}'),
(928, 125, '_wc_review_count', '0'),
(929, 125, '_downloadable_files', 'a:0:{}'),
(930, 125, 'attribute_pa_vyberite-obem', '1l'),
(931, 125, '_price', '150'),
(932, 125, '_product_version', '3.3.5'),
(933, 123, 'attribute_pa_vyberite-obem', '10l'),
(937, 116, '_price', '150'),
(938, 116, '_price', '800'),
(939, 116, '_price', '2100'),
(940, 126, 'inline_featured_image', '0'),
(941, 127, 'inline_featured_image', '0'),
(942, 127, '_sku', ''),
(943, 127, '_regular_price', ''),
(944, 127, '_sale_price', ''),
(945, 127, '_sale_price_dates_from', ''),
(946, 127, '_sale_price_dates_to', ''),
(947, 127, 'total_sales', '0'),
(948, 127, '_tax_status', 'taxable'),
(949, 127, '_tax_class', ''),
(950, 127, '_manage_stock', 'yes'),
(951, 127, '_backorders', 'yes'),
(952, 127, '_sold_individually', 'no'),
(953, 127, '_weight', ''),
(954, 127, '_length', ''),
(955, 127, '_width', ''),
(956, 127, '_height', ''),
(957, 127, '_upsell_ids', 'a:0:{}'),
(958, 127, '_crosssell_ids', 'a:0:{}'),
(959, 127, '_purchase_note', ''),
(960, 127, '_default_attributes', 'a:0:{}'),
(961, 127, '_virtual', 'no'),
(962, 127, '_downloadable', 'no'),
(963, 127, '_product_image_gallery', ''),
(964, 127, '_download_limit', '-1'),
(965, 127, '_download_expiry', '-1'),
(966, 127, '_thumbnail_id', '117'),
(967, 127, '_stock', '500'),
(968, 127, '_stock_status', 'instock'),
(969, 127, '_wc_average_rating', '0'),
(970, 127, '_wc_rating_count', 'a:0:{}'),
(971, 127, '_wc_review_count', '0'),
(972, 127, '_downloadable_files', 'a:0:{}'),
(973, 127, '_product_attributes', 'a:1:{s:16:\"pa_vyberite-obem\";a:6:{s:4:\"name\";s:16:\"pa_vyberite-obem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(974, 127, '_product_version', '3.3.5'),
(976, 127, 'inline_featured_image', '0'),
(977, 128, '_variation_description', ''),
(978, 128, '_sku', ''),
(979, 128, '_regular_price', '800'),
(980, 128, '_sale_price', ''),
(981, 128, '_sale_price_dates_from', ''),
(982, 128, '_sale_price_dates_to', ''),
(983, 128, 'total_sales', '0'),
(984, 128, '_tax_status', 'taxable'),
(985, 128, '_tax_class', 'parent'),
(986, 128, '_manage_stock', 'no'),
(987, 128, '_backorders', 'no'),
(988, 128, '_sold_individually', 'no'),
(989, 128, '_weight', ''),
(990, 128, '_length', ''),
(991, 128, '_width', ''),
(992, 128, '_height', ''),
(993, 128, '_upsell_ids', 'a:0:{}'),
(994, 128, '_crosssell_ids', 'a:0:{}'),
(995, 128, '_purchase_note', ''),
(996, 128, '_default_attributes', 'a:0:{}'),
(997, 128, '_virtual', 'no'),
(998, 128, '_downloadable', 'no'),
(999, 128, '_product_image_gallery', ''),
(1000, 128, '_download_limit', '-1'),
(1001, 128, '_download_expiry', '-1'),
(1002, 128, '_stock', '0'),
(1003, 128, '_stock_status', 'instock'),
(1004, 128, '_wc_average_rating', '0'),
(1005, 128, '_wc_rating_count', 'a:0:{}'),
(1006, 128, '_wc_review_count', '0'),
(1007, 128, '_downloadable_files', 'a:0:{}'),
(1008, 128, 'attribute_pa_vyberite-obem', '4l'),
(1009, 128, '_price', '800'),
(1010, 128, '_product_version', '3.3.5'),
(1011, 129, '_variation_description', ''),
(1012, 129, '_sku', ''),
(1013, 129, '_regular_price', '150'),
(1014, 129, '_sale_price', ''),
(1015, 129, '_sale_price_dates_from', ''),
(1016, 129, '_sale_price_dates_to', ''),
(1017, 129, 'total_sales', '0'),
(1018, 129, '_tax_status', 'taxable'),
(1019, 129, '_tax_class', 'parent'),
(1020, 129, '_manage_stock', 'no'),
(1021, 129, '_backorders', 'no'),
(1022, 129, '_sold_individually', 'no'),
(1023, 129, '_weight', ''),
(1024, 129, '_length', ''),
(1025, 129, '_width', ''),
(1026, 129, '_height', ''),
(1027, 129, '_upsell_ids', 'a:0:{}'),
(1028, 129, '_crosssell_ids', 'a:0:{}'),
(1029, 129, '_purchase_note', ''),
(1030, 129, '_default_attributes', 'a:0:{}'),
(1031, 129, '_virtual', 'no'),
(1032, 129, '_downloadable', 'no'),
(1033, 129, '_product_image_gallery', ''),
(1034, 129, '_download_limit', '-1'),
(1035, 129, '_download_expiry', '-1'),
(1036, 129, '_stock', '0'),
(1037, 129, '_stock_status', 'instock'),
(1038, 129, '_wc_average_rating', '0'),
(1039, 129, '_wc_rating_count', 'a:0:{}'),
(1040, 129, '_wc_review_count', '0'),
(1041, 129, '_downloadable_files', 'a:0:{}'),
(1042, 129, 'attribute_pa_vyberite-obem', '1l'),
(1043, 129, '_price', '150'),
(1044, 129, '_product_version', '3.3.5'),
(1045, 130, '_variation_description', ''),
(1046, 130, '_sku', ''),
(1047, 130, '_regular_price', '2100'),
(1048, 130, '_sale_price', ''),
(1049, 130, '_sale_price_dates_from', ''),
(1050, 130, '_sale_price_dates_to', ''),
(1051, 130, 'total_sales', '0'),
(1052, 130, '_tax_status', 'taxable'),
(1053, 130, '_tax_class', 'parent'),
(1054, 130, '_manage_stock', 'no'),
(1055, 130, '_backorders', 'no'),
(1056, 130, '_sold_individually', 'no'),
(1057, 130, '_weight', ''),
(1058, 130, '_length', ''),
(1059, 130, '_width', ''),
(1060, 130, '_height', ''),
(1061, 130, '_upsell_ids', 'a:0:{}'),
(1062, 130, '_crosssell_ids', 'a:0:{}'),
(1063, 130, '_purchase_note', ''),
(1064, 130, '_default_attributes', 'a:0:{}'),
(1065, 130, '_virtual', 'no'),
(1066, 130, '_downloadable', 'no'),
(1067, 130, '_product_image_gallery', ''),
(1068, 130, '_download_limit', '-1'),
(1069, 130, '_download_expiry', '-1'),
(1070, 130, '_stock', '0'),
(1071, 130, '_stock_status', 'instock'),
(1072, 130, '_wc_average_rating', '0'),
(1073, 130, '_wc_rating_count', 'a:0:{}'),
(1074, 130, '_wc_review_count', '0'),
(1075, 130, '_downloadable_files', 'a:0:{}'),
(1076, 130, 'attribute_pa_vyberite-obem', '10l'),
(1077, 130, '_price', '2100'),
(1078, 130, '_product_version', '3.3.5'),
(1079, 127, '_price', '150'),
(1080, 127, '_price', '800'),
(1081, 127, '_price', '2100'),
(1082, 127, '_edit_lock', '1526152721:1'),
(1083, 127, '_edit_last', '1'),
(1084, 131, '_menu_item_type', 'post_type'),
(1085, 131, '_menu_item_menu_item_parent', '0'),
(1086, 131, '_menu_item_object_id', '96'),
(1087, 131, '_menu_item_object', 'page'),
(1088, 131, '_menu_item_target', ''),
(1089, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1090, 131, '_menu_item_xfn', ''),
(1091, 131, '_menu_item_url', ''),
(1093, 132, '_order_key', 'wc_order_5af8230e47e8e'),
(1094, 132, '_customer_user', '1'),
(1095, 132, '_payment_method', 'cod'),
(1096, 132, '_payment_method_title', 'Оплата при доставке'),
(1097, 132, '_transaction_id', ''),
(1098, 132, '_customer_ip_address', '127.0.0.1'),
(1099, 132, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.139 safari/537.36'),
(1100, 132, '_created_via', 'checkout'),
(1101, 132, '_date_completed', ''),
(1102, 132, '_completed_date', ''),
(1103, 132, '_date_paid', ''),
(1104, 132, '_paid_date', ''),
(1105, 132, '_cart_hash', '372c4f13c7218da31873c8c925968f55'),
(1106, 132, '_billing_first_name', 'TEst'),
(1107, 132, '_billing_last_name', 'TEst'),
(1108, 132, '_billing_company', ''),
(1109, 132, '_billing_address_1', '13'),
(1110, 132, '_billing_address_2', ''),
(1111, 132, '_billing_city', 'Харьков'),
(1112, 132, '_billing_state', 'Украина'),
(1113, 132, '_billing_postcode', '69874'),
(1114, 132, '_billing_country', 'UA'),
(1115, 132, '_billing_email', 'polesskyvlad@gmail.com'),
(1116, 132, '_billing_phone', '+3809712365478'),
(1117, 132, '_shipping_first_name', ''),
(1118, 132, '_shipping_last_name', ''),
(1119, 132, '_shipping_company', ''),
(1120, 132, '_shipping_address_1', ''),
(1121, 132, '_shipping_address_2', ''),
(1122, 132, '_shipping_city', ''),
(1123, 132, '_shipping_state', ''),
(1124, 132, '_shipping_postcode', ''),
(1125, 132, '_shipping_country', ''),
(1126, 132, '_order_currency', 'UAH'),
(1127, 132, '_cart_discount', '0'),
(1128, 132, '_cart_discount_tax', '0'),
(1129, 132, '_order_shipping', '0.00'),
(1130, 132, '_order_shipping_tax', '0'),
(1131, 132, '_order_tax', '0'),
(1132, 132, '_order_total', '800.00'),
(1133, 132, '_order_version', '3.3.5'),
(1134, 132, '_prices_include_tax', 'no'),
(1135, 132, '_billing_address_index', 'TEst TEst  13  Харьков Украина 69874 UA polesskyvlad@gmail.com +3809712365478'),
(1136, 132, '_shipping_address_index', '        '),
(1137, 132, '_download_permissions_granted', 'yes'),
(1138, 132, '_recorded_sales', 'yes'),
(1139, 132, '_recorded_coupon_usage_counts', 'yes'),
(1140, 132, '_order_stock_reduced', 'yes'),
(1141, 67, 'mapia', 'a:3:{s:7:\"address\";s:53:\"Харьковская область, Украина\";s:3:\"lat\";s:7:\"49.9935\";s:3:\"lng\";s:18:\"36.230383000000074\";}'),
(1142, 67, '_mapia', 'field_5aef4402c2abd'),
(1143, 134, 'company_name', 'ООО \"ПРЕМИУМ ОИЛ ЛТД\"'),
(1144, 134, '_company_name', 'field_5aef36702972d'),
(1145, 134, 'main_address', 'г.Харьков, пр.Московский, 67'),
(1146, 134, '_main_address', 'field_5aef369cd139e'),
(1147, 134, 'actual_address', 'г.Харьков, пр.Московский, 67'),
(1148, 134, '_actual_address', 'field_5aef36f8b91de'),
(1149, 134, 'phone', '+380734306034'),
(1150, 134, '_phone', 'field_5aef3d16baffb'),
(1151, 134, 'email', 'ltd.premiumoil@gmail.com'),
(1152, 134, '_email', 'field_5aef3d5fbaffc'),
(1153, 134, 'contact', 'Сивер Анна Сергеевна'),
(1154, 134, '_contact', 'field_5aef3d85baffd'),
(1155, 134, 'territory', 'Официальный дистрибьютор на территории  Днепропетровской, Запорожской, Харьковской, Полтавской, Сумской, Донецкой, Луганской областей'),
(1156, 134, '_territory', 'field_5aef41046f253'),
(1157, 134, 'mapia', 'a:3:{s:7:\"address\";s:53:\"Харьковская область, Украина\";s:3:\"lat\";s:7:\"49.9935\";s:3:\"lng\";s:18:\"36.230383000000074\";}'),
(1158, 134, '_mapia', 'field_5aef4402c2abd'),
(1159, 67, 'inline_featured_image', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-23 22:34:42', '2018-04-23 19:34:42', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2018-05-05 16:22:31', '2018-05-05 13:22:31', '', 0, 'http://oils/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-23 22:34:42', '2018-04-23 19:34:42', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://oils/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-04-24 23:22:34', '2018-04-24 20:22:34', '', 0, 'http://oils/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-04-23 23:47:22', '2018-04-23 20:47:22', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-23 20:47:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '16454e2b-6bf5-4659-8adc-df2d69164ce7', '', '', '2018-04-23 23:47:22', '2018-04-23 20:47:22', '', 0, 'http://oils/2018/04/23/16454e2b-6bf5-4659-8adc-df2d69164ce7/', 0, 'customize_changeset', '', 0),
(5, 1, '2018-04-24 23:18:49', '2018-04-24 20:18:49', 'Одна из крупнейших компаний-дистрибьюторов топлива в Турции - OPET - делает шаги по дальнейшему развитию сегмента смазочных материалов, создав новую серию масел \"Full Series\".\r\n\r\nПолучив многочисленные награды за рубежом и внутри страны за свою канистру особого дизайна, Моторные Масла серии Full Series соответствуют всем требованиям автомобилей с высокими эксплуатационными характеристиками, выпускаемых современной автомобильной промышленностью по новейшим разработкам. В соответствии с этим моторные масла Full Series, выпускаемых под брендом OPET, одобренные производителями автомобилей, такими как Mercedes-Benz, МАН, ВОЛЬВО и Форд.\r\n\r\nДействуя по принципу «постоянного развития и перемен», OPET создает продукты, отвечающие ожиданиям рынка для применения в любой сфере, где требуется использование смазочных материалов. Продемонстрировано сферы применения этих продуктов и каталог, где показано уровне эксплуатационных показателей этих продуктов при их использовании.', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2018-05-10 22:41:10', '2018-05-10 19:41:10', '', 0, 'http://oils/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-04-24 23:18:49', '2018-04-24 20:18:49', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-04-24 23:18:49', '2018-04-24 20:18:49', '', 5, 'http://oils/2018/04/24/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-24 23:22:34', '2018-04-24 20:22:34', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://oils/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-24 23:22:34', '2018-04-24 20:22:34', '', 2, 'http://oils/2018/04/24/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-04-25 01:39:13', '2018-04-24 22:39:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"main.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Главная', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', 'publish', 'closed', 'closed', '', 'group_5adfb14d5d599', '', '', '2018-04-25 01:39:13', '2018-04-24 22:39:13', '', 0, 'http://oils/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2018-04-25 01:39:13', '2018-04-24 22:39:13', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Галерея', 'gallery', 'publish', 'closed', 'closed', '', 'field_5adfb164acb35', '', '', '2018-04-25 01:39:13', '2018-04-24 22:39:13', '', 10, 'http://oils/?post_type=acf-field&p=11', 0, 'acf-field', '', 0),
(12, 1, '2018-04-25 01:39:13', '2018-04-24 22:39:13', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображение', 'mainImage', 'publish', 'closed', 'closed', '', 'field_5adfb1a8acb36', '', '', '2018-04-25 01:39:13', '2018-04-24 22:39:13', '', 11, 'http://oils/?post_type=acf-field&p=12', 0, 'acf-field', '', 0),
(13, 1, '2018-04-25 01:39:13', '2018-04-24 22:39:13', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Текст', 'mainText', 'publish', 'closed', 'closed', '', 'field_5adfb1dfacb37', '', '', '2018-04-25 01:39:13', '2018-04-24 22:39:13', '', 11, 'http://oils/?post_type=acf-field&p=13', 1, 'acf-field', '', 0),
(15, 1, '2018-04-25 01:39:58', '2018-04-24 22:39:58', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-04-25 01:39:58', '2018-04-24 22:39:58', '', 5, 'http://oils/2018/04/25/5-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-05-04 12:14:32', '2018-05-04 09:14:32', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-05-04 12:14:32', '2018-05-04 09:14:32', '', 5, 'http://oils/2018/05/04/5-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-05-04 16:53:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-04 16:53:26', '0000-00-00 00:00:00', '', 0, 'http://oils/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-05-04 16:58:49', '2018-05-04 13:58:49', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-05-13 14:18:30', '2018-05-13 11:18:30', '', 0, 'http://oils/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-05-04 17:05:19', '2018-05-04 14:05:19', '<h1 class=\"title underline\">Opet - лидер инноваций в сегменте смазочных материалов</h1>\r\n            <p>Одна из крупнейших компаний-дистрибьюторов топлива в Турции - OPET - делает шаги по дальнейшему развитию сегмента смазочных материалов, создав новую серию масел \"Full Series\".</p>\r\n            <p>Получив многочисленные награды за рубежом и внутри страны за свою канистру особого дизайна, Моторные Масла серии Full Series соответствуют всем требованиям автомобилей с высокими эксплуатационными характеристиками, выпускаемых современной автомобильной промышленностью по новейшим разработкам. В соответствии с этим моторные масла Full Series, выпускаемых под брендом OPET, одобренные производителями автомобилей, такими как Mercedes-Benz, МАН, ВОЛЬВО и Форд.</p>\r\n            <p>Действуя по принципу «постоянного развития и перемен», OPET создает продукты, отвечающие ожиданиям рынка для применения в любой сфере, где требуется использование смазочных материалов. Продемонстрировано сферы применения этих продуктов и каталог, где показано уровне эксплуатационных показателей этих продуктов при их использовании.</p>\r\n        ', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-05-04 17:05:19', '2018-05-04 14:05:19', '', 5, 'http://oils/2018/05/04/5-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-05-04 17:30:48', '2018-05-04 14:30:48', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-05-04 17:30:48', '2018-05-04 14:30:48', '', 5, 'http://oils/2018/05/04/5-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-05-05 10:56:17', '2018-05-05 07:56:17', '', 'Selection', '', 'publish', 'closed', 'closed', '', 'selection', '', '', '2018-05-05 14:56:03', '2018-05-05 11:56:03', '', 0, 'http://oils/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-05-05 10:56:17', '2018-05-05 07:56:17', '', 'Selection', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-05 10:56:17', '2018-05-05 07:56:17', '', 27, 'http://oils/2018/05/05/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-05-05 11:46:35', '2018-05-05 08:46:35', '', 'FULLMATCH', '', 'publish', 'closed', 'closed', '', 'fullmatch', '', '', '2018-05-13 14:18:30', '2018-05-13 11:18:30', '', 0, 'http://oils/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2018-05-05 13:42:01', '2018-05-05 10:42:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"template-selection.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Табы', '%d1%82%d0%b0%d0%b1%d1%8b', 'publish', 'closed', 'closed', '', 'group_5aed8768ee840', '', '', '2018-05-05 13:53:16', '2018-05-05 10:53:16', '', 0, 'http://oils/?post_type=acf-field-group&#038;p=30', 0, 'acf-field-group', '', 0),
(31, 1, '2018-05-05 13:42:01', '2018-05-05 10:42:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Название', 'tab-name', 'publish', 'closed', 'closed', '', 'field_5aed879cf47f3', '', '', '2018-05-05 13:42:01', '2018-05-05 10:42:01', '', 30, 'http://oils/?post_type=acf-field&p=31', 0, 'acf-field', '', 0),
(32, 1, '2018-05-05 13:42:01', '2018-05-05 10:42:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Название Таб 1', 'name_tab_1', 'publish', 'closed', 'closed', '', 'field_5aed8993f47f4', '', '', '2018-05-05 13:42:01', '2018-05-05 10:42:01', '', 30, 'http://oils/?post_type=acf-field&p=32', 1, 'acf-field', '', 0),
(33, 1, '2018-05-05 13:42:01', '2018-05-05 10:42:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Название Таб 2', 'name_tab_2', 'publish', 'closed', 'closed', '', 'field_5aed89e0f47f5', '', '', '2018-05-05 13:42:01', '2018-05-05 10:42:01', '', 30, 'http://oils/?post_type=acf-field&p=33', 2, 'acf-field', '', 0),
(34, 1, '2018-05-05 13:42:01', '2018-05-05 10:42:01', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Контент Таб1', 'content_tab_1', 'publish', 'closed', 'closed', '', 'field_5aed8a38f47f6', '', '', '2018-05-05 13:53:16', '2018-05-05 10:53:16', '', 30, 'http://oils/?post_type=acf-field&#038;p=34', 4, 'acf-field', '', 0),
(35, 1, '2018-05-05 13:42:01', '2018-05-05 10:42:01', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Контент Таб2', 'content_tab_2', 'publish', 'closed', 'closed', '', 'field_5aed8a72f47f7', '', '', '2018-05-05 13:53:16', '2018-05-05 10:53:16', '', 30, 'http://oils/?post_type=acf-field&#038;p=35', 6, 'acf-field', '', 0),
(36, 1, '2018-05-05 13:49:55', '2018-05-05 10:49:55', '', 'Selection', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-05 13:49:55', '2018-05-05 10:49:55', '', 27, 'http://oils/2018/05/05/27-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-05-05 13:53:04', '2018-05-05 10:53:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок Таб 1', 'title_tab_1', 'publish', 'closed', 'closed', '', 'field_5aed8ce72b522', '', '', '2018-05-05 13:53:16', '2018-05-05 10:53:16', '', 30, 'http://oils/?post_type=acf-field&#038;p=37', 3, 'acf-field', '', 0),
(38, 1, '2018-05-05 13:53:04', '2018-05-05 10:53:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок Таб 2', 'title_tab_2', 'publish', 'closed', 'closed', '', 'field_5aed8d032b523', '', '', '2018-05-05 13:53:16', '2018-05-05 10:53:16', '', 30, 'http://oils/?post_type=acf-field&#038;p=38', 5, 'acf-field', '', 0),
(39, 1, '2018-05-05 13:54:59', '2018-05-05 10:54:59', '', 'Selection', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-05 13:54:59', '2018-05-05 10:54:59', '', 27, 'http://oils/2018/05/05/27-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-05-05 14:19:52', '2018-05-05 11:19:52', '', 'Selection', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-05 14:19:52', '2018-05-05 11:19:52', '', 27, 'http://oils/2018/05/05/27-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-05-05 14:23:07', '2018-05-05 11:23:07', '', 'Selection', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-05 14:23:07', '2018-05-05 11:23:07', '', 27, 'http://oils/2018/05/05/27-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-05-05 14:25:36', '2018-05-05 11:25:36', '', 'Selection', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-05 14:25:36', '2018-05-05 11:25:36', '', 27, 'http://oils/2018/05/05/27-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-05-05 14:28:10', '2018-05-05 11:28:10', '', 'Selection', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-05 14:28:10', '2018-05-05 11:28:10', '', 27, 'http://oils/2018/05/05/27-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-05-05 14:33:40', '2018-05-05 11:33:40', '', 'Fullcheck', '', 'publish', 'closed', 'closed', '', 'fullcheck', '', '', '2018-05-05 15:30:22', '2018-05-05 12:30:22', '', 0, 'http://oils/?page_id=44', 0, 'page', '', 0),
(45, 1, '2018-05-05 14:33:40', '2018-05-05 11:33:40', '', 'Fullcheck', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-05 14:33:40', '2018-05-05 11:33:40', '', 44, 'http://oils/2018/05/05/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-05-05 14:34:16', '2018-05-05 11:34:16', '', 'FULLCHECK', '', 'publish', 'closed', 'closed', '', 'fullcheck', '', '', '2018-05-13 14:18:30', '2018-05-13 11:18:30', '', 0, 'http://oils/?p=46', 4, 'nav_menu_item', '', 0),
(47, 1, '2018-05-05 14:56:03', '2018-05-05 11:56:03', '', 'Selection', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-05 14:56:03', '2018-05-05 11:56:03', '', 27, 'http://oils/2018/05/05/27-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-05-05 14:59:15', '2018-05-05 11:59:15', '', 'Fullcheck', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-05 14:59:15', '2018-05-05 11:59:15', '', 44, 'http://oils/2018/05/05/44-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-05-05 15:08:14', '2018-05-05 12:08:14', '', 'Fullcheck', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-05 15:08:14', '2018-05-05 12:08:14', '', 44, 'http://oils/2018/05/05/44-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-05-05 15:11:06', '2018-05-05 12:11:06', '', 'Fullcheck', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-05 15:11:06', '2018-05-05 12:11:06', '', 44, 'http://oils/2018/05/05/44-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-05-05 15:24:36', '2018-05-05 12:24:36', '', 'Fullcheck', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-05 15:24:36', '2018-05-05 12:24:36', '', 44, 'http://oils/2018/05/05/44-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-05-05 15:25:07', '2018-05-05 12:25:07', '', 'Fullcheck', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-05 15:25:07', '2018-05-05 12:25:07', '', 44, 'http://oils/2018/05/05/44-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-05-05 15:30:22', '2018-05-05 12:30:22', '', 'Fullcheck', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-05-05 15:30:22', '2018-05-05 12:30:22', '', 44, 'http://oils/2018/05/05/44-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-05-05 15:33:12', '2018-05-05 12:33:12', '', 'Технологии', '', 'trash', 'closed', 'closed', '', '%d1%82%d0%b5%d1%85%d0%bd%d0%be%d0%bb%d0%be%d0%b3%d0%b8%d0%b8__trashed', '', '', '2018-05-05 15:35:04', '2018-05-05 12:35:04', '', 0, 'http://oils/?page_id=54', 0, 'page', '', 0),
(55, 1, '2018-05-05 15:33:12', '2018-05-05 12:33:12', '', 'Технологии', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-05-05 15:33:12', '2018-05-05 12:33:12', '', 54, 'http://oils/2018/05/05/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-05-05 15:36:52', '2018-05-05 12:36:52', '<span class=\"title underline\">Лидер инноваций в сегменте смазочных материалов</span>\r\n\r\nОдна из крупнейших компаний-дистрибьюторов топлива в Турции - OPET - делает шаги по дальнейшему развитию сегмента смазочных материалов, создав новую серию масел \"Full Series\".\r\n\r\nПолучив многочисленные награды за рубежом и внутри страны за свою канистру особого дизайна, Моторные Масла серии Full Series соответствуют всем требованиям автомобилей с высокими эксплуатационными характеристиками, выпускаемых современной автомобильной промышленностью по новейшим разработкам. В соответствии с этим моторные масла Full Series, выпускаемых под брендом OPET, одобренные производителями автомобилей, такими как Mercedes-Benz, МАН, ВОЛЬВО и Форд.\r\n\r\nДействуя по принципу «постоянного развития и перемен», OPET создает продукты, отвечающие ожиданиям рынка для применения в любой сфере, где требуется использование смазочных материалов. Продемонстрировано сферы применения этих продуктов и каталог, где показано уровне эксплуатационных показателей этих продуктов при их использовании.\r\n\r\n<span class=\"title underline\">FULLTECH</span>\r\n<p style=\"text-align: center;\"><strong>Высокие эксплуатационные показатели для поклонников скорости и силы</strong></p>\r\nДрайвовая моторное масло для тех, кто любит скорость, отдачу, острые ощущения, кто заботится о каждом отдельном деталь своего авто и с каждым пройденным километром пытается доказать его работу к вершинам совершенства - OPET FULLTECH ...\r\n\r\nМасла OPET FULLTECH, разработанные с применением высококачественных базовых масел и усовершенствованной технологии присадок, обеспечивающих отличные эксплуатационные показатели даже при самых тяжелых дорожных условий.\r\n\r\nИмея специальную формулу, масло обеспечивает легкий запуск двигателя в условиях холодной погоды, отличную защиту от абразивного износа, долгий срок службы двигателя и экономию топлива.\r\n\r\n<span class=\"title underline\">FULLTECH</span>\r\n<p style=\"text-align: center;\"><strong>Максимальная защита двигателя Вашего авто</strong></p>\r\nМоторное масло, что обеспечит максимальную защиту двигателя во время поездок длинными автомагистралями и в большом городе, для тех, кто любит свой авто и заботится о нем - OPET FULLMAX ...\r\n\r\nПри поездках в условиях большого города постоянный режим работы «старт-стоп», частое ускорение и торможение вредит двигателю Вашего автомобиля и приводит к его перегреву. Это приводит к возникновению коррозии деталей двигателя, сокращая срок его службы.\r\n\r\nМасла OPET FULLMAX, разработанные путем специальной комбинации высококачественных базовых масел с применением усовершенствованной технологии присадок, защищают двигатель от коррозии во время поездок в тяжелых дорожных условиях и в режиме «старт-стоп» в условиях городского цикла.\r\n\r\nСпециальная формула масел FULLMAX предотвращает образование отложений и шлама, которые формируются в условиях высоких температур и при работе в режиме «старт-стоп» и поддерживает детали двигателя в чистоте.\r\n\r\n<span class=\"title underline\">FULLLIFE</span>\r\n<p style=\"text-align: center;\"><strong>Уникальный Режим Смазка течение Четырех Сезонов</strong></p>\r\nС увеличением своего возраста автомобили требуют все большего ухода; для тех, кто желает эффективной работы своего авто, кто не хочет иметь проблем от процессов трения и хочет поддерживать рабочие показатели своего двигателя на уровне нового, это именно те масла, которые предлагают квалифицированное решение проблем.\r\n\r\nФормула этих масел, содержит соответствующие базовые масла и специальные присадки, обеспечивает оптимальную защиту двигателя во время всего срока его службы. Специфика формулы масел делает их целесообразными для использования в изношенных двигателях, поддерживая уникальный режим смазки в течение четырех сезонов года.\r\n\r\n<span class=\"title underline\">FULLPRO</span>\r\n<p style=\"text-align: center;\"><strong>Для парков коммерческой техники и автопредприятий; Высокая степень защиты Полная поддержка</strong></p>\r\nНовая и мощная предложение от OPET для парков коммерческой техники и автопредприятий - OPET FULLPRO ...\r\n\r\nСерия масел OPET FULLPRO, формула которых разработана путем специальной комбинации высококачественных базовых масел с применением передовой технологии присадок, соответствует требованиям ведущих автопроизводителей, непревзойденное качество этих масел испытано в тяжелых условиях эксплуатации в автомобилях ведущих автопроизводителей, по результатам которых масла FULLPRO получили соответствующие одобрения.\r\n\r\nОсобенно рекомендуется для пользователей, которые имеют широкий и разнообразный парк автомобилей.\r\n\r\nМаслам характерно высокое качество защиты, они обеспечивают поддержание уровня рабочих показателей, характерного для техники в новом состоянии, на длительный период времени. Создавая необходимый уровень защиты всех деталей двигателя, масла OPET FULLPRO предотвращают возникновение серьезных неисправностей, вызванных трением, повышая уровень эксплуатационных показателей автомобилей и обеспечивая экономическую и беспроблемную работу техники.\r\n\r\nПоэтому преимуществ с OPET FULLPRO больше, а проблем меньше!\r\n\r\n<span class=\"title underline\">FULLMASTER</span>\r\n<p style=\"text-align: center;\"><strong>Мощность, эффективность и отличную защиту в условиях высоких нагрузок и в дальнем путешествии...</strong></p>\r\nДля тяжелой коммерческой техники, работающей в условиях бездорожья и высоких нагрузок; для водителей в их поединке с дорогами - новый собрат в пути: OPET FULLMASTER ...\r\n\r\nЗащищая двигатель, не снижая при этом уровня работы двигателя в тяжелых условиях эксплуатации и повышая его рабочие показатели, масло FULLMASTER будет выбором номер один для всех водителей, перед которыми лежит долгий путь путешествия и тяжелый груз с его сильным сопротивлением...\r\n\r\nСерия масел FULLMASTER с ее широким ассортиментом продуктов, способна удовлетворить потребности в смазке, защите и обеспечении необходимых рабочих показателей для всех дизельных двигателей крупнотоннажных коммерческих автомобилей и гусеничной техники, позволяет найти решение для каждого.', 'Technologies', '', 'publish', 'closed', 'closed', '', 'technologies', '', '', '2018-05-05 16:01:24', '2018-05-05 13:01:24', '', 0, 'http://oils/?page_id=56', 0, 'page', '', 0),
(57, 1, '2018-05-05 15:36:52', '2018-05-05 12:36:52', '', 'Technologies', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-05-05 15:36:52', '2018-05-05 12:36:52', '', 56, 'http://oils/2018/05/05/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-05-05 15:59:40', '2018-05-05 12:59:40', '<span class=\"title underline\">Лидер инноваций в сегменте смазочных материалов</span>\n\nОдна из крупнейших компаний-дистрибьюторов топлива в Турции - OPET - делает шаги по дальнейшему развитию сегмента смазочных материалов, создав новую серию масел \"Full Series\".\n\nПолучив многочисленные награды за рубежом и внутри страны за свою канистру особого дизайна, Моторные Масла серии Full Series соответствуют всем требованиям автомобилей с высокими эксплуатационными характеристиками, выпускаемых современной автомобильной промышленностью по новейшим разработкам. В соответствии с этим моторные масла Full Series, выпускаемых под брендом OPET, одобренные производителями автомобилей, такими как Mercedes-Benz, МАН, ВОЛЬВО и Форд.\n\nДействуя по принципу «постоянного развития и перемен», OPET создает продукты, отвечающие ожиданиям рынка для применения в любой сфере, где требуется использование смазочных материалов. Продемонстрировано сферы применения этих продуктов и каталог, где показано уровне эксплуатационных показателей этих продуктов при их использовании.\n\n<span class=\"title underline\">FULLTECH</span>\n\n<strong>Высокие эксплуатационные показатели для поклонников скорости и силы</strong>\n\nДрайвовая моторное масло для тех, кто любит скорость, отдачу, острые ощущения, кто заботится о каждом отдельном деталь своего авто и с каждым пройденным километром пытается доказать его работу к вершинам совершенства - OPET FULLTECH ...\n\nМасла OPET FULLTECH, разработанные с применением высококачественных базовых масел и усовершенствованной технологии присадок, обеспечивающих отличные эксплуатационные показатели даже при самых тяжелых дорожных условий.\n\nИмея специальную формулу, масло обеспечивает легкий запуск двигателя в условиях холодной погоды, отличную защиту от абразивного износа, долгий срок службы двигателя и экономию топлива.\n\n<span class=\"title underline\">FULLTECH</span>\n\n<strong>Максимальная защита двигателя Вашего авто</strong>\n\nМоторна олива, що забезпечить максимальний захист двигуна під час поїздок довгими автомагістралями та у великому місті, для тих, хто любить свій авто і дбає про нього – OPET FULLMAX…\n\nПри поїздках в умовах великого міста постійний режим роботи «старт-стоп», часте прискорення і гальмування шкодить двигуну Вашого авто і призводить до його перегріву. Це призводить до виникнення корозії деталей двигуна, скорочуючи термін його служби.\n\nОливи OPET FULLMAX, розроблені шляхом спеціальної комбінації високоякісних базових олив із застосуванням вдосконаленої технології присадок, захищають двигун від корозії під час поїздок у важких дорожніх умовах та у режимі «старт-стоп» в умовах міського циклу.\n\nСпеціальна формула олив FULLMAX запобігає утворенню відкладень і шламу, які формуються в умовах високих температур і під час роботи у режимі «старт-стоп» та підтримує деталі двигуна у чистоті.\n\n<span class=\"title underline\">FULLLIFE</span>\n\n<strong>Унікальний Режим Змащування упродовж Чотирьох Сезонів</strong>\n\nЗі збільшенням свого віку автомобілі потребують дедалі більшого догляду; для тих, хто бажає ефективної роботи свого авто, хто не хоче мати проблем від процесів тертя і хоче підтримувати робочі показники свого двигуна на рівні нового, це саме ті оливи, що пропонують кваліфіковане вирішення проблем.\n\nФормула цих олив, що містить відповідні базові оливи та спеціальні присадки, забезпечує оптимальний захист двигуна під час усього терміну його служби. Специфіка формули олив робить їх доцільними для використання у зношених двигунах, підтримуючи унікальний режим змащування упродовж чотирьох сезонів року.\n\n<span class=\"title underline\">FULLPRO</span>\n\n<strong>Для парків комерційної техніки та автопідприємств; Високий ступінь захисту, Повна підтримка</strong>\n\nНова і потужна пропозиція від OPET для парків комерційної техніки і автопідприємств – OPET FULLPRO...\n\nСерія олив OPET FULLPRO, формула яких розроблена шляхом спеціальної комбінації високоякісних базових олив із застосуванням передової технології присадок, відповідає вимогам провідних автовиробників, неперевершену якість цих олив випробувано в найтяжчих умовах експлуатації у автомобілях провідних автовиробників, за результатами яких оливи FULLPRO отримали відповідні схвалення.\n\nОсобливо рекомендується для користувачів, які мають широкий та різноманітний парк автомобілів.\n\nОливам притаманна висока якість захисту, вони забезпечують підтримання рівня робочих показників, характерного для техніки в новому стані, на довший період часу. Створюючи необхідний рівень захисту для всіх деталей двигуна, оливи OPET FULLPRO запобігають виникненню серйозних несправностей, спричинюваних тертям, підвищуючи рівень експлуатаційних показників автомобілів і забезпечуючи економічну і безпроблемну роботу техніки.\n\nВідтак переваг з OPET FULLPRO більше, а проблем менше!\n\n<span class=\"title underline\">FULLMASTER</span>\n\n<strong>Потужність, ефективність і відмінний захист в умовах високих навантажень та у далекій подорожі …</strong>\n\nДля важкої комерційної техніки, що працює в умовах бездоріжжя та високих навантажень; для водіїв у їх двобої з дорогами – новий побратим у дорозі: OPET FULLMASTER…\n\nЗахищаючи двигун, не знижуючи при цьому рівня роботи двигуна у важких умовах експлуатації і підвищуючи його робочі показники, олива FULLMASTER буде вибором номер один для усіх водіїв, перед якими лежить довгий шлях подорожі і важкий вантаж з його сильним опором...\n\nСерія олив FULLMASTER з її широким асортиментом продуктів, здатна задовольнити потреби в змащуванні, захисті й забезпеченні необхідних робочих показників для всіх дизельних двигунів великотоннажних комерційних автомобілів і гусеничної техніки, дає змогу знайти рішення для кожного.', 'Technologies', '', 'inherit', 'closed', 'closed', '', '56-autosave-v1', '', '', '2018-05-05 15:59:40', '2018-05-05 12:59:40', '', 56, 'http://oils/2018/05/05/56-autosave-v1/', 0, 'revision', '', 0),
(59, 1, '2018-05-05 15:43:18', '2018-05-05 12:43:18', '<span class=\"title underline\">Лідер Інновацій в Сегменті Мастильних Матеріалів</span>\r\n\r\nОдна із найбільших компаній-дистриб’юторів пального в Турції – OPET – робить кроки з подальшого розвитку сегменту мастильних матеріалів, створивши нову серію олив \"Full Series\".\r\n\r\nОтримавши численні нагороди за кордоном та всередині країни за свою каністру особливого дизайну, Моторні Оливи серії Full Series відповідають усім вимогам автомобілів з найвищими експлуатаційними характеристиками, що випускаються сучасною автомобільною промисловістю за найновішими розробками. Відповідно до цього моторні оливи Full Series, що випускаються під брендом OPET, схвалені виробниками автомобілів, такими як Мерседес-Бенц, МАН, ВОЛЬВО та Форд.\r\n\r\nДіючи за принципом «постійного розвитку і змін» , OPET створює продукти, що відповідають очікуванням ринку для застосування у будь-якій сфері, де потрібне використання мастильних матеріалів. Продемонстровано сфери застосування цих продуктів і каталог, де показано рівні експлуатаційних показників цих продуктів при їх використанні.\r\n\r\n<span class=\"title underline\">FULLTECH</span>\r\n\r\n<strong>Високі експлуатаційні показники для шанувальників швидкості й сили</strong>\r\n\r\nДрайвова моторна олива для тих, хто любить швидкість, віддачу, гострі відчуття, хто дбає про кожну окрему деталь свого авто і з кожним пройденим кілометром намагається довести його роботу до вершин досконалості – OPET FULLTECH…\r\n\r\nОливи OPET FULLTECH, розроблені з застосуванням високоякісних базових олив та вдосконаленої технології присадок, забезпечують відмінні експлуатаційні показники навіть за найважчих дорожніх умов.\r\n\r\nМаючи спеціальну формулу, олива забезпечує легкий запуск двигуна в умовах холодної погоди, відмінний захист від абразивного зносу, довгий строк служби двигуна та економію пального.\r\n\r\n<span class=\"title underline\">FULLTECH</span>\r\n\r\n<strong>Максимальний захист двигуна Вашого авто</strong>\r\n\r\nМоторна олива, що забезпечить максимальний захист двигуна під час поїздок довгими автомагістралями та у великому місті, для тих, хто любить свій авто і дбає про нього – OPET FULLMAX…\r\n\r\nПри поїздках в умовах великого міста постійний режим роботи «старт-стоп», часте прискорення і гальмування шкодить двигуну Вашого авто і призводить до його перегріву. Це призводить до виникнення корозії деталей двигуна, скорочуючи термін його служби.\r\n\r\nОливи OPET FULLMAX, розроблені шляхом спеціальної комбінації високоякісних базових олив із застосуванням вдосконаленої технології присадок, захищають двигун від корозії під час поїздок у важких дорожніх умовах та у режимі «старт-стоп» в умовах міського циклу.\r\n\r\nСпеціальна формула олив FULLMAX запобігає утворенню відкладень і шламу, які формуються в умовах високих температур і під час роботи у режимі «старт-стоп» та підтримує деталі двигуна у чистоті.\r\n\r\n<span class=\"title underline\">FULLLIFE</span>\r\n\r\n<strong>Унікальний Режим Змащування упродовж Чотирьох Сезонів</strong>\r\n\r\nЗі збільшенням свого віку автомобілі потребують дедалі більшого догляду; для тих, хто бажає ефективної роботи свого авто, хто не хоче мати проблем від процесів тертя і хоче підтримувати робочі показники свого двигуна на рівні нового, це саме ті оливи, що пропонують кваліфіковане вирішення проблем.\r\n\r\nФормула цих олив, що містить відповідні базові оливи та спеціальні присадки, забезпечує оптимальний захист двигуна під час усього терміну його служби. Специфіка формули олив робить їх доцільними для використання у зношених двигунах, підтримуючи унікальний режим змащування упродовж чотирьох сезонів року.\r\n\r\n<span class=\"title underline\">FULLPRO</span>\r\n\r\n<strong>Для парків комерційної техніки та автопідприємств; Високий ступінь захисту, Повна підтримка</strong>\r\n\r\nНова і потужна пропозиція від OPET для парків комерційної техніки і автопідприємств – OPET FULLPRO...\r\n\r\nСерія олив OPET FULLPRO, формула яких розроблена шляхом спеціальної комбінації високоякісних базових олив із застосуванням передової технології присадок, відповідає вимогам провідних автовиробників, неперевершену якість цих олив випробувано в найтяжчих умовах експлуатації у автомобілях провідних автовиробників, за результатами яких оливи FULLPRO отримали відповідні схвалення.\r\n\r\nОсобливо рекомендується для користувачів, які мають широкий та різноманітний парк автомобілів.\r\n\r\nОливам притаманна висока якість захисту, вони забезпечують підтримання рівня робочих показників, характерного для техніки в новому стані, на довший період часу. Створюючи необхідний рівень захисту для всіх деталей двигуна, оливи OPET FULLPRO запобігають виникненню серйозних несправностей, спричинюваних тертям, підвищуючи рівень експлуатаційних показників автомобілів і забезпечуючи економічну і безпроблемну роботу техніки.\r\n\r\nВідтак переваг з OPET FULLPRO більше, а проблем менше!\r\n\r\n<span class=\"title underline\">FULLMASTER</span>\r\n\r\n<strong>Потужність, ефективність і відмінний захист в умовах високих навантажень та у далекій подорожі …</strong>\r\n\r\nДля важкої комерційної техніки, що працює в умовах бездоріжжя та високих навантажень; для водіїв у їх двобої з дорогами – новий побратим у дорозі: OPET FULLMASTER…\r\n\r\nЗахищаючи двигун, не знижуючи при цьому рівня роботи двигуна у важких умовах експлуатації і підвищуючи його робочі показники, олива FULLMASTER буде вибором номер один для усіх водіїв, перед якими лежить довгий шлях подорожі і важкий вантаж з його сильним опором...\r\n\r\nСерія олив FULLMASTER з її широким асортиментом продуктів, здатна задовольнити потреби в змащуванні, захисті й забезпеченні необхідних робочих показників для всіх дизельних двигунів великотоннажних комерційних автомобілів і гусеничної техніки, дає змогу знайти рішення для кожного.', 'Technologies', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-05-05 15:43:18', '2018-05-05 12:43:18', '', 56, 'http://oils/2018/05/05/56-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-05-05 15:43:45', '2018-05-05 12:43:45', '', 'Технологии', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b5%d1%85%d0%bd%d0%be%d0%bb%d0%be%d0%b3%d0%b8%d0%b8', '', '', '2018-05-13 14:18:30', '2018-05-13 11:18:30', '', 0, 'http://oils/?p=60', 3, 'nav_menu_item', '', 0),
(61, 1, '2018-05-05 16:00:38', '2018-05-05 13:00:38', '<span class=\"title underline\">Лидер инноваций в сегменте смазочных материалов</span>\r\n\r\nОдна из крупнейших компаний-дистрибьюторов топлива в Турции - OPET - делает шаги по дальнейшему развитию сегмента смазочных материалов, создав новую серию масел \"Full Series\".\r\n\r\nПолучив многочисленные награды за рубежом и внутри страны за свою канистру особого дизайна, Моторные Масла серии Full Series соответствуют всем требованиям автомобилей с высокими эксплуатационными характеристиками, выпускаемых современной автомобильной промышленностью по новейшим разработкам. В соответствии с этим моторные масла Full Series, выпускаемых под брендом OPET, одобренные производителями автомобилей, такими как Mercedes-Benz, МАН, ВОЛЬВО и Форд.\r\n\r\nДействуя по принципу «постоянного развития и перемен», OPET создает продукты, отвечающие ожиданиям рынка для применения в любой сфере, где требуется использование смазочных материалов. Продемонстрировано сферы применения этих продуктов и каталог, где показано уровне эксплуатационных показателей этих продуктов при их использовании.\r\n\r\n<span class=\"title underline\">FULLTECH</span>\r\n\r\n<strong>Высокие эксплуатационные показатели для поклонников скорости и силы</strong>\r\n\r\nДрайвовая моторное масло для тех, кто любит скорость, отдачу, острые ощущения, кто заботится о каждом отдельном деталь своего авто и с каждым пройденным километром пытается доказать его работу к вершинам совершенства - OPET FULLTECH ...\r\n\r\nМасла OPET FULLTECH, разработанные с применением высококачественных базовых масел и усовершенствованной технологии присадок, обеспечивающих отличные эксплуатационные показатели даже при самых тяжелых дорожных условий.\r\n\r\nИмея специальную формулу, масло обеспечивает легкий запуск двигателя в условиях холодной погоды, отличную защиту от абразивного износа, долгий срок службы двигателя и экономию топлива.\r\n\r\n<span class=\"title underline\">FULLTECH</span>\r\n\r\n<strong>Максимальная защита двигателя Вашего авто</strong>\r\n\r\nМоторное масло, что обеспечит максимальную защиту двигателя во время поездок длинными автомагистралями и в большом городе, для тех, кто любит свой авто и заботится о нем - OPET FULLMAX ...\r\n\r\nПри поездках в условиях большого города постоянный режим работы «старт-стоп», частое ускорение и торможение вредит двигателю Вашего автомобиля и приводит к его перегреву. Это приводит к возникновению коррозии деталей двигателя, сокращая срок его службы.\r\n\r\nМасла OPET FULLMAX, разработанные путем специальной комбинации высококачественных базовых масел с применением усовершенствованной технологии присадок, защищают двигатель от коррозии во время поездок в тяжелых дорожных условиях и в режиме «старт-стоп» в условиях городского цикла.\r\n\r\nСпециальная формула масел FULLMAX предотвращает образование отложений и шлама, которые формируются в условиях высоких температур и при работе в режиме «старт-стоп» и поддерживает детали двигателя в чистоте.\r\n\r\n<span class=\"title underline\">FULLLIFE</span>\r\n\r\n<strong>Уникальный Режим Смазка течение Четырех Сезонов</strong>\r\n\r\nС увеличением своего возраста автомобили требуют все большего ухода; для тех, кто желает эффективной работы своего авто, кто не хочет иметь проблем от процессов трения и хочет поддерживать рабочие показатели своего двигателя на уровне нового, это именно те масла, которые предлагают квалифицированное решение проблем.\r\n\r\nФормула этих масел, содержит соответствующие базовые масла и специальные присадки, обеспечивает оптимальную защиту двигателя во время всего срока его службы. Специфика формулы масел делает их целесообразными для использования в изношенных двигателях, поддерживая уникальный режим смазки в течение четырех сезонов года.\r\n\r\n<span class=\"title underline\">FULLPRO</span>\r\n\r\n<strong>Для парков коммерческой техники и автопредприятий; Высокая степень защиты Полная поддержка</strong>\r\n\r\nНовая и мощная предложение от OPET для парков коммерческой техники и автопредприятий - OPET FULLPRO ...\r\n\r\nСерия масел OPET FULLPRO, формула которых разработана путем специальной комбинации высококачественных базовых масел с применением передовой технологии присадок, соответствует требованиям ведущих автопроизводителей, непревзойденное качество этих масел испытано в тяжелых условиях эксплуатации в автомобилях ведущих автопроизводителей, по результатам которых масла FULLPRO получили соответствующие одобрения.\r\n\r\nОсобенно рекомендуется для пользователей, которые имеют широкий и разнообразный парк автомобилей.\r\n\r\nМаслам характерно высокое качество защиты, они обеспечивают поддержание уровня рабочих показателей, характерного для техники в новом состоянии, на длительный период времени. Создавая необходимый уровень защиты всех деталей двигателя, масла OPET FULLPRO предотвращают возникновение серьезных неисправностей, вызванных трением, повышая уровень эксплуатационных показателей автомобилей и обеспечивая экономическую и беспроблемную работу техники.\r\n\r\nПоэтому преимуществ с OPET FULLPRO больше, а проблем меньше!\r\n\r\n<span class=\"title underline\">FULLMASTER</span>\r\n\r\n<strong>Мощность, эффективность и отличную защиту в условиях высоких нагрузок и в дальнем путешествии...</strong>\r\n\r\nДля тяжелой коммерческой техники, работающей в условиях бездорожья и высоких нагрузок; для водителей в их поединке с дорогами - новый собрат в пути: OPET FULLMASTER ...\r\n\r\nЗащищая двигатель, не снижая при этом уровня работы двигателя в тяжелых условиях эксплуатации и повышая его рабочие показатели, масло FULLMASTER будет выбором номер один для всех водителей, перед которыми лежит долгий путь путешествия и тяжелый груз с его сильным сопротивлением...\r\n\r\nСерия масел FULLMASTER с ее широким ассортиментом продуктов, способна удовлетворить потребности в смазке, защите и обеспечении необходимых рабочих показателей для всех дизельных двигателей крупнотоннажных коммерческих автомобилей и гусеничной техники, позволяет найти решение для каждого.', 'Technologies', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-05-05 16:00:38', '2018-05-05 13:00:38', '', 56, 'http://oils/2018/05/05/56-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(62, 1, '2018-05-05 16:01:24', '2018-05-05 13:01:24', '<span class=\"title underline\">Лидер инноваций в сегменте смазочных материалов</span>\r\n\r\nОдна из крупнейших компаний-дистрибьюторов топлива в Турции - OPET - делает шаги по дальнейшему развитию сегмента смазочных материалов, создав новую серию масел \"Full Series\".\r\n\r\nПолучив многочисленные награды за рубежом и внутри страны за свою канистру особого дизайна, Моторные Масла серии Full Series соответствуют всем требованиям автомобилей с высокими эксплуатационными характеристиками, выпускаемых современной автомобильной промышленностью по новейшим разработкам. В соответствии с этим моторные масла Full Series, выпускаемых под брендом OPET, одобренные производителями автомобилей, такими как Mercedes-Benz, МАН, ВОЛЬВО и Форд.\r\n\r\nДействуя по принципу «постоянного развития и перемен», OPET создает продукты, отвечающие ожиданиям рынка для применения в любой сфере, где требуется использование смазочных материалов. Продемонстрировано сферы применения этих продуктов и каталог, где показано уровне эксплуатационных показателей этих продуктов при их использовании.\r\n\r\n<span class=\"title underline\">FULLTECH</span>\r\n<p style=\"text-align: center;\"><strong>Высокие эксплуатационные показатели для поклонников скорости и силы</strong></p>\r\nДрайвовая моторное масло для тех, кто любит скорость, отдачу, острые ощущения, кто заботится о каждом отдельном деталь своего авто и с каждым пройденным километром пытается доказать его работу к вершинам совершенства - OPET FULLTECH ...\r\n\r\nМасла OPET FULLTECH, разработанные с применением высококачественных базовых масел и усовершенствованной технологии присадок, обеспечивающих отличные эксплуатационные показатели даже при самых тяжелых дорожных условий.\r\n\r\nИмея специальную формулу, масло обеспечивает легкий запуск двигателя в условиях холодной погоды, отличную защиту от абразивного износа, долгий срок службы двигателя и экономию топлива.\r\n\r\n<span class=\"title underline\">FULLTECH</span>\r\n<p style=\"text-align: center;\"><strong>Максимальная защита двигателя Вашего авто</strong></p>\r\nМоторное масло, что обеспечит максимальную защиту двигателя во время поездок длинными автомагистралями и в большом городе, для тех, кто любит свой авто и заботится о нем - OPET FULLMAX ...\r\n\r\nПри поездках в условиях большого города постоянный режим работы «старт-стоп», частое ускорение и торможение вредит двигателю Вашего автомобиля и приводит к его перегреву. Это приводит к возникновению коррозии деталей двигателя, сокращая срок его службы.\r\n\r\nМасла OPET FULLMAX, разработанные путем специальной комбинации высококачественных базовых масел с применением усовершенствованной технологии присадок, защищают двигатель от коррозии во время поездок в тяжелых дорожных условиях и в режиме «старт-стоп» в условиях городского цикла.\r\n\r\nСпециальная формула масел FULLMAX предотвращает образование отложений и шлама, которые формируются в условиях высоких температур и при работе в режиме «старт-стоп» и поддерживает детали двигателя в чистоте.\r\n\r\n<span class=\"title underline\">FULLLIFE</span>\r\n<p style=\"text-align: center;\"><strong>Уникальный Режим Смазка течение Четырех Сезонов</strong></p>\r\nС увеличением своего возраста автомобили требуют все большего ухода; для тех, кто желает эффективной работы своего авто, кто не хочет иметь проблем от процессов трения и хочет поддерживать рабочие показатели своего двигателя на уровне нового, это именно те масла, которые предлагают квалифицированное решение проблем.\r\n\r\nФормула этих масел, содержит соответствующие базовые масла и специальные присадки, обеспечивает оптимальную защиту двигателя во время всего срока его службы. Специфика формулы масел делает их целесообразными для использования в изношенных двигателях, поддерживая уникальный режим смазки в течение четырех сезонов года.\r\n\r\n<span class=\"title underline\">FULLPRO</span>\r\n<p style=\"text-align: center;\"><strong>Для парков коммерческой техники и автопредприятий; Высокая степень защиты Полная поддержка</strong></p>\r\nНовая и мощная предложение от OPET для парков коммерческой техники и автопредприятий - OPET FULLPRO ...\r\n\r\nСерия масел OPET FULLPRO, формула которых разработана путем специальной комбинации высококачественных базовых масел с применением передовой технологии присадок, соответствует требованиям ведущих автопроизводителей, непревзойденное качество этих масел испытано в тяжелых условиях эксплуатации в автомобилях ведущих автопроизводителей, по результатам которых масла FULLPRO получили соответствующие одобрения.\r\n\r\nОсобенно рекомендуется для пользователей, которые имеют широкий и разнообразный парк автомобилей.\r\n\r\nМаслам характерно высокое качество защиты, они обеспечивают поддержание уровня рабочих показателей, характерного для техники в новом состоянии, на длительный период времени. Создавая необходимый уровень защиты всех деталей двигателя, масла OPET FULLPRO предотвращают возникновение серьезных неисправностей, вызванных трением, повышая уровень эксплуатационных показателей автомобилей и обеспечивая экономическую и беспроблемную работу техники.\r\n\r\nПоэтому преимуществ с OPET FULLPRO больше, а проблем меньше!\r\n\r\n<span class=\"title underline\">FULLMASTER</span>\r\n<p style=\"text-align: center;\"><strong>Мощность, эффективность и отличную защиту в условиях высоких нагрузок и в дальнем путешествии...</strong></p>\r\nДля тяжелой коммерческой техники, работающей в условиях бездорожья и высоких нагрузок; для водителей в их поединке с дорогами - новый собрат в пути: OPET FULLMASTER ...\r\n\r\nЗащищая двигатель, не снижая при этом уровня работы двигателя в тяжелых условиях эксплуатации и повышая его рабочие показатели, масло FULLMASTER будет выбором номер один для всех водителей, перед которыми лежит долгий путь путешествия и тяжелый груз с его сильным сопротивлением...\r\n\r\nСерия масел FULLMASTER с ее широким ассортиментом продуктов, способна удовлетворить потребности в смазке, защите и обеспечении необходимых рабочих показателей для всех дизельных двигателей крупнотоннажных коммерческих автомобилей и гусеничной техники, позволяет найти решение для каждого.', 'Technologies', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-05-05 16:01:24', '2018-05-05 13:01:24', '', 56, 'http://oils/2018/05/05/56-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-05-05 16:17:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-05 16:17:18', '0000-00-00 00:00:00', '', 0, 'http://oils/?p=64', 1, 'nav_menu_item', '', 0),
(66, 1, '2018-05-05 16:22:31', '2018-05-05 13:22:31', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-05-05 16:22:31', '2018-05-05 13:22:31', '', 1, 'http://oils/2018/05/05/1-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-05-06 20:05:42', '2018-05-06 17:05:42', '', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2018-05-13 14:53:41', '2018-05-13 11:53:41', '', 0, 'http://oils/?page_id=67', 0, 'page', '', 0),
(68, 1, '2018-05-06 20:05:42', '2018-05-06 17:05:42', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-05-06 20:05:42', '2018-05-06 17:05:42', '', 67, 'http://oils/2018/05/06/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-05-06 20:06:22', '2018-05-06 17:06:22', '', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2018-05-13 14:18:30', '2018-05-13 11:18:30', '', 0, 'http://oils/?p=69', 6, 'nav_menu_item', '', 0),
(70, 1, '2018-05-06 20:08:31', '2018-05-06 17:08:31', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"contacts.php\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Контакты', 'kontakty', 'publish', 'closed', 'closed', '', 'group_5aef36685fcc4', '', '', '2018-05-13 14:51:37', '2018-05-13 11:51:37', '', 0, 'http://oils/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2018-05-06 20:08:31', '2018-05-06 17:08:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Название компании', 'company_name', 'publish', 'closed', 'closed', '', 'field_5aef36702972d', '', '', '2018-05-06 20:08:31', '2018-05-06 17:08:31', '', 70, 'http://oils/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2018-05-06 20:10:12', '2018-05-06 17:10:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Главный адрес', 'main_address', 'publish', 'closed', 'closed', '', 'field_5aef369cd139e', '', '', '2018-05-06 20:54:07', '2018-05-06 17:54:07', '', 70, 'http://oils/?post_type=acf-field&#038;p=72', 2, 'acf-field', '', 0),
(73, 1, '2018-05-06 20:12:31', '2018-05-06 17:12:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Фактический адрес', 'actual_address', 'publish', 'closed', 'closed', '', 'field_5aef36f8b91de', '', '', '2018-05-06 20:54:07', '2018-05-06 17:54:07', '', 70, 'http://oils/?post_type=acf-field&#038;p=73', 3, 'acf-field', '', 0),
(74, 1, '2018-05-06 20:12:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-06 20:12:38', '0000-00-00 00:00:00', '', 0, 'http://oils/?post_type=acf-field-group&p=74', 0, 'acf-field-group', '', 0),
(75, 1, '2018-05-06 20:38:45', '2018-05-06 17:38:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон', 'phone', 'publish', 'closed', 'closed', '', 'field_5aef3d16baffb', '', '', '2018-05-06 20:54:07', '2018-05-06 17:54:07', '', 70, 'http://oils/?post_type=acf-field&#038;p=75', 4, 'acf-field', '', 0),
(76, 1, '2018-05-06 20:38:45', '2018-05-06 17:38:45', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_5aef3d5fbaffc', '', '', '2018-05-06 20:54:07', '2018-05-06 17:54:07', '', 70, 'http://oils/?post_type=acf-field&#038;p=76', 5, 'acf-field', '', 0),
(77, 1, '2018-05-06 20:38:45', '2018-05-06 17:38:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Контактное лицо', 'contact', 'publish', 'closed', 'closed', '', 'field_5aef3d85baffd', '', '', '2018-05-06 20:54:07', '2018-05-06 17:54:07', '', 70, 'http://oils/?post_type=acf-field&#038;p=77', 6, 'acf-field', '', 0),
(78, 1, '2018-05-06 20:53:01', '2018-05-06 17:53:01', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-05-06 20:53:01', '2018-05-06 17:53:01', '', 67, 'http://oils/2018/05/06/67-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-05-06 20:54:00', '2018-05-06 17:54:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Территория', 'territory', 'publish', 'closed', 'closed', '', 'field_5aef41046f253', '', '', '2018-05-06 20:54:07', '2018-05-06 17:54:07', '', 70, 'http://oils/?post_type=acf-field&#038;p=79', 1, 'acf-field', '', 0),
(80, 1, '2018-05-06 20:56:44', '2018-05-06 17:56:44', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-05-06 20:56:44', '2018-05-06 17:56:44', '', 67, 'http://oils/2018/05/06/67-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-05-06 20:59:49', '2018-05-06 17:59:49', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-05-06 20:59:49', '2018-05-06 17:59:49', '', 67, 'http://oils/2018/05/06/67-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-05-06 21:06:57', '2018-05-06 18:06:57', 'a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'Адрес на карте', 'mapia', 'publish', 'closed', 'closed', '', 'field_5aef4402c2abd', '', '', '2018-05-13 14:51:37', '2018-05-13 11:51:37', '', 70, 'http://oils/?post_type=acf-field&#038;p=82', 7, 'acf-field', '', 0),
(83, 1, '2018-05-07 23:57:34', '2018-05-07 20:57:34', '', 'FULLTECH 10W-60', '', 'publish', 'open', 'open', '', 'fulltech-10w-60', '', '', '2018-05-07 23:57:34', '2018-05-07 20:57:34', '', 0, 'http://oils/?p=83', 0, 'post', '', 0),
(84, 1, '2018-05-07 23:57:34', '2018-05-07 20:57:34', '', 'FULLTECH 10W-60', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-05-07 23:57:34', '2018-05-07 20:57:34', '', 83, 'http://oils/2018/05/07/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-05-08 00:46:38', '2018-05-07 21:46:38', '', 'Subcategory', '', 'publish', 'closed', 'closed', '', 'subcategory', '', '', '2018-05-08 00:46:38', '2018-05-07 21:46:38', '', 0, 'http://oils/?page_id=85', 0, 'page', '', 0),
(86, 1, '2018-05-08 00:46:38', '2018-05-07 21:46:38', '', 'Subcategory', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-05-08 00:46:38', '2018-05-07 21:46:38', '', 85, 'http://oils/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-05-08 07:25:46', '2018-05-08 04:25:46', '', 'single', '', 'publish', 'closed', 'closed', '', 'single', '', '', '2018-05-08 07:25:46', '2018-05-08 04:25:46', '', 0, 'http://oils/?page_id=87', 0, 'page', '', 0),
(88, 1, '2018-05-08 07:25:46', '2018-05-08 04:25:46', '', 'single', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-05-08 07:25:46', '2018-05-08 04:25:46', '', 87, 'http://oils/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-05-08 08:38:46', '2018-05-08 05:38:46', '', '<span>Индустриальные и прочие смазочные материалы</span>', '', 'publish', 'closed', 'closed', '', '89', '', '', '2018-05-12 21:22:51', '2018-05-12 18:22:51', '', 8, 'http://oils/?p=89', 2, 'nav_menu_item', '', 0),
(90, 1, '2018-05-08 08:38:46', '2018-05-08 05:38:46', '', '<span>Масла для грузовых автомобилей</span>', '', 'publish', 'closed', 'closed', '', '90', '', '', '2018-05-12 21:22:51', '2018-05-12 18:22:51', '', 8, 'http://oils/?p=90', 3, 'nav_menu_item', '', 0),
(91, 1, '2018-05-08 08:38:46', '2018-05-08 05:38:46', '', '<span>Масла для легковых и лёгких коммерческих авто</span>', '', 'publish', 'closed', 'closed', '', '91', '', '', '2018-05-12 21:22:51', '2018-05-12 18:22:51', '', 8, 'http://oils/?p=91', 1, 'nav_menu_item', '', 0),
(94, 1, '2018-05-08 08:38:46', '2018-05-08 05:38:46', '', '<span>Масла для сельскохозяйственной и садовой техники</span>', '', 'publish', 'closed', 'closed', '', '94', '', '', '2018-05-12 21:22:51', '2018-05-12 18:22:51', '', 8, 'http://oils/?p=94', 4, 'nav_menu_item', '', 0),
(95, 1, '2018-05-10 20:47:55', '2018-05-10 17:47:55', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\noils \"[your-subject]\"\n[your-name] <wordpress@oils>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on oils (http://oils)\npolesskyvlad@gmail.com\nReply-To: [your-email]\n\n0\n0\n\noils \"[your-subject]\"\noils <wordpress@oils>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on oils (http://oils)\n[your-email]\nReply-To: polesskyvlad@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-05-10 20:47:55', '2018-05-10 17:47:55', '', 0, 'http://oils/?post_type=wpcf7_contact_form&p=95', 0, 'wpcf7_contact_form', '', 0),
(96, 1, '2018-05-10 21:02:36', '2018-05-10 18:02:36', '', 'Магазин', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-05-10 21:02:36', '2018-05-10 18:02:36', '', 0, 'http://oils/shop/', 0, 'page', '', 0),
(97, 1, '2018-05-10 21:02:36', '2018-05-10 18:02:36', '[woocommerce_cart]', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-05-10 21:02:36', '2018-05-10 18:02:36', '', 0, 'http://oils/cart/', 0, 'page', '', 0),
(98, 1, '2018-05-10 21:02:36', '2018-05-10 18:02:36', '[woocommerce_checkout]', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-05-10 21:02:36', '2018-05-10 18:02:36', '', 0, 'http://oils/checkout/', 0, 'page', '', 0),
(99, 1, '2018-05-10 21:02:36', '2018-05-10 18:02:36', '[woocommerce_my_account]', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-05-10 21:02:36', '2018-05-10 18:02:36', '', 0, 'http://oils/my-account/', 0, 'page', '', 0),
(100, 1, '2018-05-10 21:07:15', '2018-05-10 18:07:15', '', 'lubricants-1', '', 'inherit', 'open', 'closed', '', 'lubricants-1-2', '', '', '2018-05-10 21:07:15', '2018-05-10 18:07:15', '', 5, 'http://oils/wp-content/uploads/2018/05/lubricants-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-05-10 21:08:13', '2018-05-10 18:08:13', '', 'factory', '', 'inherit', 'open', 'closed', '', 'factory', '', '', '2018-05-10 21:08:13', '2018-05-10 18:08:13', '', 5, 'http://oils/wp-content/uploads/2018/05/factory.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2018-05-10 21:08:34', '2018-05-10 18:08:34', '', 'available-oil', '', 'inherit', 'open', 'closed', '', 'available-oil', '', '', '2018-05-10 21:08:34', '2018-05-10 18:08:34', '', 5, 'http://oils/wp-content/uploads/2018/05/available-oil.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2018-05-10 21:08:56', '2018-05-10 18:08:56', '', 'auto-with-lpg', '', 'inherit', 'open', 'closed', '', 'auto-with-lpg', '', '', '2018-05-10 21:08:56', '2018-05-10 18:08:56', '', 5, 'http://oils/wp-content/uploads/2018/05/auto-with-lpg.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2018-05-10 21:09:17', '2018-05-10 18:09:17', '', 'opet-antifreeze', '', 'inherit', 'open', 'closed', '', 'opet-antifreeze', '', '', '2018-05-10 21:09:17', '2018-05-10 18:09:17', '', 5, 'http://oils/wp-content/uploads/2018/05/opet-antifreeze.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2018-05-10 21:09:37', '2018-05-10 18:09:37', '', 'opet_banner', '', 'inherit', 'open', 'closed', '', 'opet_banner', '', '', '2018-05-10 21:09:37', '2018-05-10 18:09:37', '', 5, 'http://oils/wp-content/uploads/2018/05/opet_banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2018-05-10 21:09:49', '2018-05-10 18:09:49', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-05-10 21:09:49', '2018-05-10 18:09:49', '', 5, 'http://oils/5-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-05-10 21:18:59', '2018-05-10 18:18:59', '', 'polylang_mo_29', '', 'private', 'closed', 'closed', '', 'polylang_mo_29', '', '', '2018-05-10 21:18:59', '2018-05-10 18:18:59', '', 0, 'http://oils/?post_type=polylang_mo&p=107', 0, 'polylang_mo', '', 0),
(108, 1, '2018-05-10 21:19:28', '2018-05-10 18:19:28', '', 'polylang_mo_32', '', 'private', 'closed', 'closed', '', 'polylang_mo_32', '', '', '2018-05-10 21:19:28', '2018-05-10 18:19:28', '', 0, 'http://oils/?post_type=polylang_mo&p=108', 0, 'polylang_mo', '', 0),
(109, 1, '2018-05-10 21:28:52', '2018-05-10 18:28:52', '', 'Головна', '', 'publish', 'closed', 'closed', '', 'golovna', '', '', '2018-05-10 21:28:52', '2018-05-10 18:28:52', '', 0, 'http://oils/?page_id=109', 0, 'page', '', 0),
(110, 1, '2018-05-10 21:28:52', '2018-05-10 18:28:52', '', 'Головна', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-05-10 21:28:52', '2018-05-10 18:28:52', '', 109, 'http://oils/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-05-10 21:54:20', '2018-05-10 18:54:20', '', 'oil', '', 'inherit', 'open', 'closed', '', 'oil', '', '', '2018-05-10 21:54:20', '2018-05-10 18:54:20', '', 0, 'http://oils/wp-content/uploads/2018/05/oil.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2018-05-10 22:08:04', '2018-05-10 19:08:04', '{\n    \"woocommerce_shop_page_display\": {\n        \"value\": \"subcategories\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-10 19:08:04\"\n    },\n    \"woocommerce_category_archive_display\": {\n        \"value\": \"subcategories\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-10 19:08:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '536576c4-a1d8-4f90-99de-deab4ddae903', '', '', '2018-05-10 22:08:04', '2018-05-10 19:08:04', '', 0, 'http://oils/536576c4-a1d8-4f90-99de-deab4ddae903/', 0, 'customize_changeset', '', 0),
(113, 1, '2018-05-10 22:40:55', '2018-05-10 19:40:55', 'Одна из крупнейших компаний-дистрибьюторов топлива в Турции - OPET - делает шаги по дальнейшему развитию сегмента смазочных материалов, создав новую серию масел \"Full Series\".\n\nПолучив многочисленные награды за рубежом и внутри страны за свою канистру особого дизайна, Моторные Масла серии Full Series соответствуют всем требованиям автомобилей с высокими эксплуатационными характеристиками, выпускаемых современной автомобильной промышленностью по новейшим разработкам. В соответствии с этим моторные масла Full Series, выпускаемых под брендом OPET, одобренные производителями автомобилей, такими как Mercedes-Benz, МАН, ВОЛЬВО и Форд.\n\nДействуя по принципу «постоянного развития и перемен», OPET создает продукты, отвечающие ожиданиям рынка для применения в любой сфере, где требуется использование смазочных материалов. Продемонстрировано сферы применения этих продуктов и каталог, где показано уровне эксплуатационных показателей этих продуктов при их использовании.', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2018-05-10 22:40:55', '2018-05-10 19:40:55', '', 5, 'http://oils/5-autosave-v1/', 0, 'revision', '', 0),
(114, 1, '2018-05-10 22:41:10', '2018-05-10 19:41:10', 'Одна из крупнейших компаний-дистрибьюторов топлива в Турции - OPET - делает шаги по дальнейшему развитию сегмента смазочных материалов, создав новую серию масел \"Full Series\".\r\n\r\nПолучив многочисленные награды за рубежом и внутри страны за свою канистру особого дизайна, Моторные Масла серии Full Series соответствуют всем требованиям автомобилей с высокими эксплуатационными характеристиками, выпускаемых современной автомобильной промышленностью по новейшим разработкам. В соответствии с этим моторные масла Full Series, выпускаемых под брендом OPET, одобренные производителями автомобилей, такими как Mercedes-Benz, МАН, ВОЛЬВО и Форд.\r\n\r\nДействуя по принципу «постоянного развития и перемен», OPET создает продукты, отвечающие ожиданиям рынка для применения в любой сфере, где требуется использование смазочных материалов. Продемонстрировано сферы применения этих продуктов и каталог, где показано уровне эксплуатационных показателей этих продуктов при их использовании.', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-05-10 22:41:10', '2018-05-10 19:41:10', '', 5, 'http://oils/5-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-05-10 22:48:38', '2018-05-10 19:48:38', '', 'drop', '', 'inherit', 'open', 'closed', '', 'drop', '', '', '2018-05-10 22:48:38', '2018-05-10 19:48:38', '', 0, 'http://oils/wp-content/uploads/2018/05/drop.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2018-05-10 22:58:57', '2018-05-10 19:58:57', 'Fulltech 10W-60, синтетична моторна олива, розроблена за інноваційною мастильною технологією.\r\nСучасна технологія присадок забезпечує неперевершену ефективність роботи двигуна при екстремальній\r\nїзді та в екстремальних дорожніх умовах. Спеціальна формула забезпечує легкий холодний пуск,\r\nстворюючи тривку масляну плівку на поверхні деталей двигуна, та забезпечує низьку витрату оливи', 'FULLTECH 10W-60', '', 'publish', 'closed', 'closed', '', 'fulltech-10w-60', '', '', '2018-05-13 14:35:53', '2018-05-13 11:35:53', '', 0, 'http://oils/?post_type=product&#038;p=116', 0, 'product', '', 0),
(117, 1, '2018-05-10 22:57:57', '2018-05-10 19:57:57', '', 'oil', '', 'inherit', 'open', 'closed', '', 'oil-2', '', '', '2018-05-10 22:57:57', '2018-05-10 19:57:57', '', 116, 'http://oils/wp-content/uploads/2018/05/oil-1.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2018-05-10 23:33:28', '2018-05-10 20:33:28', '{\n    \"woocommerce_catalog_columns\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-10 20:33:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cb5a29f8-0bd4-4c01-9d9a-377243154f25', '', '', '2018-05-10 23:33:28', '2018-05-10 20:33:28', '', 0, 'http://oils/cb5a29f8-0bd4-4c01-9d9a-377243154f25/', 0, 'customize_changeset', '', 0),
(119, 1, '2018-05-10 23:53:35', '2018-05-10 20:53:35', '', 'Категории товаров', '', 'publish', 'closed', 'closed', '', 'kategorii-tovarov', '', '', '2018-05-10 23:53:35', '2018-05-10 20:53:35', '', 0, 'http://oils/?page_id=119', 0, 'page', '', 0),
(120, 1, '2018-05-10 23:53:35', '2018-05-10 20:53:35', '', 'Категории товаров', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-05-10 23:53:35', '2018-05-10 20:53:35', '', 119, 'http://oils/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-05-11 22:05:49', '2018-05-11 19:05:49', 'Fulltech 10W-60, синтетична моторна олива, розроблена за інноваційною мастильною технологією.\r\nСучасна технологія присадок забезпечує неперевершену ефективність роботи двигуна при екстремальній\r\nїзді та в екстремальних дорожніх умовах. Спеціальна формула забезпечує легкий холодний пуск,\r\nстворюючи тривку масляну плівку на поверхні деталей двигуна, та забезпечує низьку витрату оливи', 'FULLTECH 10W-60 (10л)', '', 'publish', 'closed', 'closed', '', 'fulltech-10w-60-10l', '', '', '2018-05-11 22:06:31', '2018-05-11 19:06:31', '', 0, 'http://oils/?post_type=product&#038;p=121', 0, 'product', '', 0),
(122, 1, '2018-05-11 22:07:05', '2018-05-11 19:07:05', 'Fulltech 10W-60, синтетична моторна олива, розроблена за інноваційною мастильною технологією.\r\nСучасна технологія присадок забезпечує неперевершену ефективність роботи двигуна при екстремальній\r\nїзді та в екстремальних дорожніх умовах. Спеціальна формула забезпечує легкий холодний пуск,\r\nстворюючи тривку масляну плівку на поверхні деталей двигуна, та забезпечує низьку витрату оливи', 'FULLTECH 10W-60 (4л)', '', 'publish', 'closed', 'closed', '', 'fulltech-10w-60-4l', '', '', '2018-05-11 22:07:27', '2018-05-11 19:07:27', '', 0, 'http://oils/?post_type=product&#038;p=122', 0, 'product', '', 0),
(123, 1, '2018-05-11 22:18:18', '2018-05-11 19:18:18', '', 'FULLTECH 10W-60 - 10л', '', 'publish', 'closed', 'closed', '', 'fulltech-10w-60', '', '', '2018-05-11 22:22:13', '2018-05-11 19:22:13', '', 116, 'http://oils/product/fulltech-10w-60/', 3, 'product_variation', '', 0),
(124, 1, '2018-05-11 22:21:21', '2018-05-11 19:21:21', '', 'FULLTECH 10W-60 - 4л', '', 'publish', 'closed', 'closed', '', 'fulltech-10w-60-2', '', '', '2018-05-11 22:22:13', '2018-05-11 19:22:13', '', 116, 'http://oils/product/fulltech-10w-60/', 1, 'product_variation', '', 0),
(125, 1, '2018-05-11 22:21:56', '2018-05-11 19:21:56', '', 'FULLTECH 10W-60 - 1л', '', 'publish', 'closed', 'closed', '', 'fulltech-10w-60-3', '', '', '2018-05-11 22:22:13', '2018-05-11 19:22:13', '', 116, 'http://oils/product/fulltech-10w-60/', 2, 'product_variation', '', 0),
(126, 1, '2018-05-12 20:03:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-12 20:03:38', '0000-00-00 00:00:00', '', 0, 'http://oils/?p=126', 0, 'post', '', 0),
(127, 1, '2018-05-12 21:41:57', '2018-05-12 18:41:57', 'Fulltech 10W-60, синтетична моторна олива, розроблена за інноваційною мастильною технологією.\r\nСучасна технологія присадок забезпечує неперевершену ефективність роботи двигуна при екстремальній\r\nїзді та в екстремальних дорожніх умовах. Спеціальна формула забезпечує легкий холодний пуск,\r\nстворюючи тривку масляну плівку на поверхні деталей двигуна, та забезпечує низьку витрату оливи', 'FULLTECH 10W-60 (грузовые)', '', 'publish', 'closed', 'closed', '', 'fulltech-10w-60-gruzovye', '', '', '2018-05-12 21:42:27', '2018-05-12 18:42:27', '', 0, 'http://oils/?post_type=product&#038;p=127', 0, 'product', '', 0),
(128, 1, '2018-05-11 22:21:21', '2018-05-11 19:21:21', '', 'FULLTECH 10W-60 (грузовые) - 4л', '', 'publish', 'closed', 'closed', '', 'fulltech-10w-60-2-2', '', '', '2018-05-11 22:21:21', '2018-05-11 19:21:21', '', 127, 'http://oils/?post_type=product&p=127', 1, 'product_variation', '', 0),
(129, 1, '2018-05-11 22:21:56', '2018-05-11 19:21:56', '', 'FULLTECH 10W-60 (грузовые) - 1л', '', 'publish', 'closed', 'closed', '', 'fulltech-10w-60-3-2', '', '', '2018-05-11 22:21:56', '2018-05-11 19:21:56', '', 127, 'http://oils/?post_type=product&p=127', 2, 'product_variation', '', 0),
(130, 1, '2018-05-11 22:18:18', '2018-05-11 19:18:18', '', 'FULLTECH 10W-60 (грузовые) - 10л', '', 'publish', 'closed', 'closed', '', 'fulltech-10w-60-4', '', '', '2018-05-11 22:18:18', '2018-05-11 19:18:18', '', 127, 'http://oils/?post_type=product&p=127', 3, 'product_variation', '', 0),
(131, 1, '2018-05-13 14:18:30', '2018-05-13 11:18:30', '', 'Продукты', '', 'publish', 'closed', 'closed', '', 'produkty', '', '', '2018-05-13 14:18:30', '2018-05-13 11:18:30', '', 0, 'http://oils/?p=131', 2, 'nav_menu_item', '', 0),
(132, 1, '2018-05-13 14:35:42', '2018-05-13 11:35:42', '', 'Order &ndash; Май 13, 2018 @ 02:35 ПП', '', 'wc-processing', 'open', 'closed', 'order_5af8230e4a987', 'zakaz-13-may-2018-v-1135', '', '', '2018-05-13 14:35:42', '2018-05-13 11:35:42', '', 0, 'http://oils/?post_type=shop_order&#038;p=132', 0, 'shop_order', '', 2),
(133, 1, '2018-05-13 14:39:26', '2018-05-13 11:39:26', '', 'Fullcheck', '', 'inherit', 'closed', 'closed', '', '44-autosave-v1', '', '', '2018-05-13 14:39:26', '2018-05-13 11:39:26', '', 44, 'http://oils/44-autosave-v1/', 0, 'revision', '', 0),
(134, 1, '2018-05-13 14:53:41', '2018-05-13 11:53:41', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-05-13 14:53:41', '2018-05-13 11:53:41', '', 67, 'http://oils/67-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_relevanssi`
--

CREATE TABLE `wp_relevanssi` (
  `doc` bigint(20) NOT NULL DEFAULT '0',
  `term` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `term_reverse` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `content` mediumint(9) NOT NULL DEFAULT '0',
  `title` mediumint(9) NOT NULL DEFAULT '0',
  `comment` mediumint(9) NOT NULL DEFAULT '0',
  `tag` mediumint(9) NOT NULL DEFAULT '0',
  `link` mediumint(9) NOT NULL DEFAULT '0',
  `author` mediumint(9) NOT NULL DEFAULT '0',
  `category` mediumint(9) NOT NULL DEFAULT '0',
  `excerpt` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy` mediumint(9) NOT NULL DEFAULT '0',
  `customfield` mediumint(9) NOT NULL DEFAULT '0',
  `mysqlcolumn` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy_detail` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customfield_detail` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mysqlcolumn_detail` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(210) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `item` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_relevanssi`
--

INSERT INTO `wp_relevanssi` (`doc`, `term`, `term_reverse`, `content`, `title`, `comment`, `tag`, `link`, `author`, `category`, `excerpt`, `taxonomy`, `customfield`, `mysqlcolumn`, `taxonomy_detail`, `customfield_detail`, `mysqlcolumn_detail`, `type`, `item`) VALUES
(5, 'benz', 'zneb', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'full', 'lluf', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'mercedes', 'sedecrem', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'opet', 'tepo', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'series', 'seires', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'автомобилей', 'йелибомотва', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'автомобильной', 'йоньлибомотва', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'брендом', 'моднерб', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'внутри', 'иртунв', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'вольво', 'овьлов', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'выпускаемых', 'хымеаксупыв', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'высокими', 'имикосыв', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'главная', 'яанвалг', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'дальнейшему', 'умешйеньлад', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'действуя', 'яувтсйед', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'делает', 'теалед', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'дизайна', 'анйазид', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'дистрибьюторов', 'воротюьбиртсид', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'использование', 'еинавозьлопси', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'использовании', 'иинавозьлопси', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'канистру', 'уртсинак', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'каталог', 'голатак', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'компаний', 'йинапмок', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'крупнейших', 'хишйенпурк', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'любой', 'йобюл', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'ман', 'нам', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'масел', 'лесам', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'масла', 'алсам', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'материалов', 'волаиретам', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'моторные', 'еынротом', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'награды', 'ыдарган', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'новейшим', 'мишйевон', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'новую', 'юувон', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'одна', 'андо', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'одобренные', 'еыннербодо', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'ожиданиям', 'мяинадижо', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'особого', 'огобосо', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'отвечающие', 'еищюачевто', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'перемен', 'немереп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'показано', 'оназакоп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'показателей', 'йелетазакоп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'получив', 'вичулоп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'постоянного', 'огонняотсоп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'применения', 'яиненемирп', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'принципу', 'упицнирп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'продемонстрировано', 'онавориртсномедорп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'продуктов', 'воткудорп', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'продукты', 'ыткудорп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'производителями', 'имялетидовзиорп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'промышленностью', 'юьтсоннелшыморп', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'развитию', 'юитивзар', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'развития', 'яитивзар', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'разработкам', 'мактобарзар', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'рубежом', 'можебур', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'рынка', 'акныр', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'сегмента', 'атнемгес', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'серии', 'иирес', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'серию', 'юирес', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'смазочных', 'хынчозамс', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'современной', 'йоннемервос', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'создав', 'вадзос', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'создает', 'теадзос', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'соответствии', 'иивтстевтоос', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'соответствуют', 'тюувтстевтоос', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'страны', 'ынартс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'сфере', 'ерефс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'сферы', 'ырефс', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'такими', 'имикат', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'топлива', 'авилпот', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'требованиям', 'мяинавоберт', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'требуется', 'ястеуберт', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'турции', 'иицрут', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'уровне', 'енвору', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'форд', 'дроф', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'характеристиками', 'имакитсиреткарах', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'шаги', 'игаш', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'эксплуатационными', 'имынноицатаулпскэ', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'эксплуатационных', 'хынноицатаулпскэ', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(5, 'этих', 'хитэ', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(67, 'contacts', 'stcatnoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(96, 'магазин', 'низагам', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(97, 'cart', 'trac', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(97, 'woocommerce', 'ecremmocoow', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(97, 'корзина', 'анизрок', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(98, 'checkout', 'tuokcehc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(98, 'woocommerce', 'ecremmocoow', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(98, 'заказа', 'азаказ', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(98, 'оформление', 'еинелмрофо', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(99, 'account', 'tnuocca', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(99, 'woocommerce', 'ecremmocoow', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(99, 'аккаунт', 'тнуакка', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(109, 'головна', 'анволог', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(119, 'категории', 'иирогетак', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0),
(119, 'товаров', 'воравот', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_relevanssi_log`
--

CREATE TABLE `wp_relevanssi_log` (
  `id` bigint(9) NOT NULL,
  `query` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hits` mediumint(9) NOT NULL DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_relevanssi_stopwords`
--

CREATE TABLE `wp_relevanssi_stopwords` (
  `stopword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_relevanssi_stopwords`
--

INSERT INTO `wp_relevanssi_stopwords` (`stopword`) VALUES
('а'),
('алло'),
('без'),
('близко'),
('более'),
('больше'),
('большинстве'),
('большой'),
('будем'),
('будет'),
('будете'),
('будешь'),
('будто'),
('буду'),
('будут'),
('будь'),
('бы'),
('бывает'),
('бывь'),
('был'),
('была'),
('были'),
('было'),
('быть'),
('в'),
('важная'),
('важное'),
('важные'),
('важный'),
('вам'),
('вами'),
('вас'),
('ваш'),
('ваше'),
('ваши'),
('вверх'),
('вдали'),
('вдруг'),
('ведь'),
('везде'),
('весь'),
('виде'),
('вниз'),
('внизу'),
('во'),
('вокруг'),
('вон'),
('восемнадцатый'),
('восемнадцать'),
('восемь'),
('восьмой'),
('вот'),
('впрочем'),
('времени'),
('время'),
('все'),
('всегда'),
('всего'),
('всем'),
('всеми'),
('всему'),
('всех'),
('всею'),
('всю'),
('всюду'),
('вся'),
('всё'),
('второй'),
('вы'),
('г'),
('где'),
('говорил'),
('говорит'),
('год'),
('года'),
('году'),
('да'),
('давно'),
('даже'),
('далеко'),
('дальше'),
('даром'),
('два'),
('двадцатый'),
('двадцать'),
('две'),
('двенадцатый'),
('двенадцать'),
('двух'),
('девятнадцатый'),
('девятнадцать'),
('девятый'),
('девять'),
('действительно'),
('дел'),
('день'),
('десятый'),
('десять'),
('для'),
('до'),
('довольно'),
('долго'),
('должно'),
('другая'),
('другие'),
('других'),
('друго'),
('другое'),
('е'),
('его'),
('ее'),
('ей'),
('ему'),
('если'),
('есть'),
('еще'),
('ещё'),
('ею'),
('её'),
('ж'),
('же'),
('жизнь'),
('за'),
('занят'),
('занята'),
('занято'),
('заняты'),
('затем'),
('зато'),
('зачем'),
('здесь'),
('знать'),
('значит'),
('и'),
('из'),
('или'),
('им'),
('именно'),
('иметь'),
('ими'),
('имя'),
('иногда'),
('их'),
('к'),
('каждая'),
('каждое'),
('каждые'),
('каждый'),
('кажется'),
('как'),
('какая'),
('какой'),
('кем'),
('когда'),
('кого'),
('ком'),
('кому'),
('конечно'),
('которая'),
('которого'),
('которой'),
('которую'),
('которые'),
('который'),
('которых'),
('кроме'),
('кругом'),
('кто'),
('куда'),
('лет'),
('ли'),
('лишь'),
('лучше'),
('люди'),
('м'),
('мало'),
('между'),
('меля'),
('менее'),
('меньше'),
('меня'),
('миллионов'),
('мимо'),
('мира'),
('мне'),
('много'),
('многочисленная'),
('многочисленное'),
('многочисленные'),
('многочисленный'),
('мной'),
('мною'),
('мог'),
('могут'),
('мож'),
('может'),
('можно'),
('можхо'),
('мой'),
('мор'),
('мочь'),
('моя'),
('моё'),
('мы'),
('на'),
('наверху'),
('над'),
('надо'),
('назад'),
('наиболее'),
('наконец'),
('нам'),
('нас'),
('начала'),
('наш'),
('наша'),
('наше'),
('наши'),
('не'),
('него'),
('недавно'),
('недалеко'),
('нее'),
('ней'),
('нельзя'),
('нем'),
('немного'),
('нему'),
('непрерывно'),
('нередко'),
('несколько'),
('нет'),
('нею'),
('неё'),
('ни'),
('нибудь'),
('ниже'),
('низко'),
('никогда'),
('никуда'),
('ними'),
('них'),
('ничего'),
('но'),
('ну'),
('нужно'),
('нх'),
('о'),
('об'),
('оба'),
('обычно'),
('один'),
('одиннадцатый'),
('одиннадцать'),
('однажды'),
('однако'),
('одного'),
('одной'),
('около'),
('он'),
('она'),
('они'),
('оно'),
('оный'),
('опять'),
('особенно'),
('от'),
('ото'),
('отовсюду'),
('отсюда'),
('очень'),
('первый'),
('перед'),
('по'),
('под'),
('пожалуйста'),
('позже'),
('пока'),
('пор'),
('пора'),
('после'),
('посреди'),
('потом'),
('потому'),
('почему'),
('почти'),
('прекрасно'),
('при'),
('про'),
('просто'),
('против'),
('процентов'),
('пятнадцатый'),
('пятнадцать'),
('пятый'),
('пять'),
('раз'),
('разве'),
('раньше'),
('рядом'),
('с'),
('сам'),
('сама'),
('сами'),
('самим'),
('самими'),
('самих'),
('само'),
('самой'),
('самом'),
('самому'),
('саму'),
('свое'),
('своего'),
('своей'),
('свои'),
('своих'),
('свой'),
('свою'),
('своя'),
('сеаой'),
('себе'),
('себя'),
('сегодня'),
('седьмой'),
('сейчас'),
('семнадцатый'),
('семнадцать'),
('семь'),
('сих'),
('сказал'),
('сказала'),
('сказать'),
('сколько'),
('следовательно'),
('слишком'),
('сначала'),
('снова'),
('со'),
('собой'),
('собою'),
('совсем'),
('соответственно'),
('спасибо'),
('стал'),
('суть'),
('т'),
('та'),
('так'),
('такая'),
('также'),
('такие'),
('такое'),
('такой'),
('там'),
('твой'),
('твоя'),
('твоё'),
('те'),
('тебе'),
('тебя'),
('тем'),
('теми'),
('теперь'),
('тех'),
('то'),
('тобой'),
('тобою'),
('тогда'),
('того'),
('только'),
('том'),
('тому'),
('тот'),
('тою'),
('третий'),
('три'),
('тринадцатый'),
('тринадцать'),
('ту'),
('тут'),
('ты'),
('тысяч'),
('у'),
('уж'),
('уже'),
('уметь'),
('хорошо'),
('хотеть'),
('хоть'),
('хотя'),
('хочешь'),
('часто'),
('чаще'),
('чего'),
('человек'),
('чем'),
('чему'),
('через'),
('четвертый'),
('четыре'),
('четырнадцатый'),
('четырнадцать'),
('что'),
('чтоб'),
('чтобы'),
('чуть'),
('шестнадцатый'),
('шестнадцать'),
('шестой'),
('шесть'),
('эта'),
('эти'),
('этим'),
('этими'),
('это'),
('этого'),
('этой'),
('этом'),
('этому'),
('этот'),
('эту'),
('я');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 25, 'display_type', ''),
(2, 25, 'thumbnail_id', '111'),
(3, 26, 'order', '0'),
(4, 26, 'display_type', ''),
(5, 26, 'thumbnail_id', '111'),
(6, 27, 'order', '0'),
(7, 27, 'display_type', ''),
(8, 27, 'thumbnail_id', '111'),
(9, 28, 'order', '0'),
(10, 28, 'display_type', ''),
(11, 28, 'thumbnail_id', '111'),
(12, 37, 'order', '0'),
(13, 37, 'display_type', ''),
(14, 37, 'thumbnail_id', '115'),
(15, 38, 'order', '0'),
(16, 38, 'display_type', ''),
(17, 38, 'thumbnail_id', '115'),
(18, 25, 'product_count_product_cat', '3'),
(19, 37, 'product_count_product_cat', '3'),
(20, 38, 'product_count_product_cat', '3'),
(21, 39, 'order', '0'),
(22, 39, 'display_type', ''),
(23, 39, 'thumbnail_id', '115'),
(24, 40, 'order', '0'),
(25, 40, 'display_type', ''),
(26, 40, 'thumbnail_id', '115'),
(27, 39, 'product_count_product_cat', '3'),
(28, 40, 'product_count_product_cat', '3'),
(30, 42, 'order_pa_vyberite-obem', '0'),
(31, 43, 'order_pa_vyberite-obem', '0'),
(32, 44, 'order_pa_vyberite-obem', '0'),
(33, 45, 'order', '0'),
(34, 45, 'display_type', ''),
(35, 45, 'thumbnail_id', '115'),
(36, 26, 'product_count_product_cat', '1'),
(37, 45, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0, 0),
(3, 'menu', 'menu', 0, 0),
(4, 'Масла для легковых и лёгких коммерческих авто', 'passenger-cars', 0, 0),
(5, 'Масла для грузовых автомобилей', 'freight-cars', 0, 0),
(6, 'Масла для сельскохозяйственной и садовой техники', 'agricultural-machinery', 0, 0),
(7, 'Индустриальные и прочие смазочные материалы', 'lubricants', 0, 0),
(8, 'Продукты', 'products', 0, 0),
(9, 'Моторные масла', '%d0%bc%d0%be%d1%82%d0%be%d1%80%d0%bd%d1%8b%d0%b5-%d0%bc%d0%b0%d1%81%d0%bb%d0%b0', 0, 0),
(10, 'Масла для мостов и универсальные трансмиссионные масла', '%d0%bc%d0%b0%d1%81%d0%bb%d0%b0-%d0%b4%d0%bb%d1%8f-%d0%bc%d0%be%d1%81%d1%82%d0%be%d0%b2-%d0%b8-%d1%83%d0%bd%d0%b8%d0%b2%d0%b5%d1%80%d1%81%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d1%82%d1%80%d0%b0%d0%bd', 0, 0),
(11, 'Aside menu', 'aside-menu', 0, 0),
(12, 'simple', 'simple', 0, 0),
(13, 'grouped', 'grouped', 0, 0),
(14, 'variable', 'variable', 0, 0),
(15, 'external', 'external', 0, 0),
(16, 'exclude-from-search', 'exclude-from-search', 0, 0),
(17, 'exclude-from-catalog', 'exclude-from-catalog', 0, 0),
(18, 'featured', 'featured', 0, 0),
(19, 'outofstock', 'outofstock', 0, 0),
(20, 'rated-1', 'rated-1', 0, 0),
(21, 'rated-2', 'rated-2', 0, 0),
(22, 'rated-3', 'rated-3', 0, 0),
(23, 'rated-4', 'rated-4', 0, 0),
(24, 'rated-5', 'rated-5', 0, 0),
(25, 'Масла для легковых и лёгких коммерческих авто', 'masla-dlya-legkovyx-i-lyogkix-kommercheskix-avto', 0, 0),
(26, 'Масла для грузовых автомобилей', 'masla-dlya-gruzovyx-avtomobilej', 0, 0),
(27, 'Индустриальные и прочие смазочные материалы', 'industrialnye-i-prochie-smazochnye-materialy', 0, 0),
(28, 'Масла для сельскохозяйственной и садовой техники', 'masla-dlya-selskoxozyajstvennoj-i-sadovoj-texniki', 0, 0),
(29, 'RU', 'ru', 0, 0),
(30, 'RU', 'pll_ru', 0, 0),
(31, 'pll_5af48d1349a42', 'pll_5af48d1349a42', 0, 0),
(32, 'UA', 'uk', 0, 0),
(33, 'UA', 'pll_uk', 0, 0),
(34, 'Без рубрики', 'bez-rubriki-uk', 0, 0),
(36, 'pll_5af48f63ebf85', 'pll_5af48f63ebf85', 0, 0),
(37, 'Моторные масла', 'motornye-masla', 0, 0),
(38, 'Трансмиссионные масла и Масла для автоматических трансмиссий', 'transmissionnye-masla-i-masla-dlya-avtomaticheskix-transmissij', 0, 0),
(39, 'Моторные масла 2', 'motornye-masla-2', 0, 0),
(40, 'Трансмиссионные масла и Масла для автоматических трансмиссий 2', 'transmissionnye-masla-i-masla-dlya-avtomaticheskix-transmissij-2', 0, 0),
(42, '1л', '1l', 0, 0),
(43, '4л', '4l', 0, 0),
(44, '10л', '10l', 0, 0),
(45, 'Масло в категории для грузовых', 'maslo-v-kategorii-dlya-gruzovyx', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 30, 0),
(1, 31, 0),
(5, 29, 0),
(5, 36, 0),
(24, 3, 0),
(29, 3, 0),
(34, 31, 0),
(34, 33, 0),
(46, 3, 0),
(60, 3, 0),
(67, 29, 0),
(69, 3, 0),
(83, 9, 0),
(89, 11, 0),
(90, 11, 0),
(91, 11, 0),
(94, 11, 0),
(109, 32, 0),
(109, 36, 0),
(111, 29, 0),
(115, 29, 0),
(116, 14, 0),
(116, 25, 0),
(116, 37, 0),
(116, 38, 0),
(116, 39, 0),
(116, 40, 0),
(116, 42, 0),
(116, 43, 0),
(116, 44, 0),
(117, 29, 0),
(119, 29, 0),
(121, 14, 0),
(121, 19, 0),
(121, 25, 0),
(121, 37, 0),
(121, 38, 0),
(121, 39, 0),
(121, 40, 0),
(122, 14, 0),
(122, 19, 0),
(122, 25, 0),
(122, 37, 0),
(122, 38, 0),
(122, 39, 0),
(122, 40, 0),
(126, 29, 0),
(127, 14, 0),
(127, 26, 0),
(127, 42, 0),
(127, 43, 0),
(127, 44, 0),
(127, 45, 0),
(131, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'category', '', 8, 0),
(5, 5, 'category', '', 8, 0),
(6, 6, 'category', '', 8, 0),
(7, 7, 'category', '', 8, 0),
(8, 8, 'category', '', 0, 0),
(9, 9, 'category', '', 4, 1),
(10, 10, 'category', '', 4, 0),
(11, 11, 'nav_menu', '', 0, 4),
(12, 12, 'product_type', '', 0, 0),
(13, 13, 'product_type', '', 0, 0),
(14, 14, 'product_type', '', 0, 4),
(15, 15, 'product_type', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 2),
(20, 20, 'product_visibility', '', 0, 0),
(21, 21, 'product_visibility', '', 0, 0),
(22, 22, 'product_visibility', '', 0, 0),
(23, 23, 'product_visibility', '', 0, 0),
(24, 24, 'product_visibility', '', 0, 0),
(25, 25, 'product_cat', '', 0, 3),
(26, 26, 'product_cat', '', 0, 1),
(27, 27, 'product_cat', '', 0, 0),
(28, 28, 'product_cat', '', 0, 0),
(29, 29, 'language', 'a:3:{s:6:\"locale\";s:5:\"ru_RU\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"ru\";}', 0, 4),
(30, 30, 'term_language', '', 0, 1),
(31, 31, 'term_translations', 'a:2:{s:2:\"ru\";i:1;s:2:\"uk\";i:34;}', 0, 2),
(32, 32, 'language', 'a:3:{s:6:\"locale\";s:2:\"uk\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"ua\";}', 0, 1),
(33, 33, 'term_language', '', 0, 1),
(34, 34, 'category', '', 0, 0),
(36, 36, 'post_translations', 'a:2:{s:2:\"uk\";i:109;s:2:\"ru\";i:5;}', 0, 2),
(37, 37, 'product_cat', '', 25, 3),
(38, 38, 'product_cat', '', 25, 3),
(39, 39, 'product_cat', '', 25, 3),
(40, 40, 'product_cat', '', 25, 3),
(42, 42, 'pa_vyberite-obem', '', 0, 2),
(43, 43, 'pa_vyberite-obem', '', 0, 2),
(44, 44, 'pa_vyberite-obem', '', 0, 2),
(45, 45, 'product_cat', '', 26, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'TEst'),
(3, 1, 'last_name', 'TEst'),
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
(14, 1, 'dismissed_wp_pointers', 'pll_lgt'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '126'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(23, 1, 'acf_user_settings', 'a:0:{}'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(25, 1, 'wp_user-settings-time', '1525525280'),
(29, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(30, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(32, 1, 'nav_menu_recently_edited', '3'),
(33, 1, 'session_tokens', 'a:3:{s:64:\"84e37b6f53a335886c5c106a93e101ed427ff41ce3059a8ed4e62190bc5bf68f\";a:4:{s:10:\"expiration\";i:1526236467;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36\";s:5:\"login\";i:1526063667;}s:64:\"0ca9ea7ba54dbe93d1aa8eea293abc5359b7bda79dcebdd4e1c4a2ed1ee7d364\";a:4:{s:10:\"expiration\";i:1526317416;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36\";s:5:\"login\";i:1526144616;}s:64:\"1298fc34cfc997aad4dbf44b43f6691552418bbd2dd4b4f778e8478d6d48174e\";a:4:{s:10:\"expiration\";i:1526383043;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36\";s:5:\"login\";i:1526210243;}}'),
(34, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(35, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(37, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:104:\"woocommerce_dashboard_status,dashboard_right_now,dashboard_activity,woocommerce_dashboard_recent_reviews\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(38, 1, 'last_update', '1526211342'),
(39, 1, 'billing_first_name', 'TEst'),
(40, 1, 'billing_last_name', 'TEst'),
(41, 1, 'billing_address_1', '13'),
(42, 1, 'billing_city', 'Харьков'),
(43, 1, 'billing_state', 'Украина'),
(44, 1, 'billing_postcode', '69874'),
(45, 1, 'billing_country', 'UA'),
(46, 1, 'billing_email', 'polesskyvlad@gmail.com'),
(47, 1, 'billing_phone', '+3809712365478'),
(48, 1, 'shipping_method', ''),
(50, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bb00zsTu8JaKdlvaohwZPOEYbzbw.U1', 'admin', 'polesskyvlad@gmail.com', '', '2018-04-23 19:34:42', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(4, 'vyberite-obem', 'Выберите объем', 'select', 'menu_order', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '116'),
(2, 1, '_variation_id', '124'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '800'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '800'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 1, 'pa_vyberite-obem', '4l');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'FULLTECH 10W-60 - 4л', 'line_item', 132);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(18, '1', 'a:10:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:813:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-05-13T11:35:42+00:00\";s:8:\"postcode\";s:5:\"69874\";s:4:\"city\";s:14:\"Харьков\";s:9:\"address_1\";s:2:\"13\";s:7:\"address\";s:2:\"13\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:14:\"Украина\";s:7:\"country\";s:2:\"UA\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:14:\"Украина\";s:16:\"shipping_country\";s:2:\"UA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:4:\"TEst\";s:9:\"last_name\";s:4:\"TEst\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:14:\"+3809712365478\";s:5:\"email\";s:22:\"polesskyvlad@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:3:\"cod\";s:22:\"order_awaiting_payment\";N;}', 1526384073);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_relevanssi`
--
ALTER TABLE `wp_relevanssi`
  ADD UNIQUE KEY `doctermitem` (`doc`,`term`,`item`),
  ADD KEY `terms` (`term`(20)),
  ADD KEY `relevanssi_term_reverse_idx` (`term_reverse`(10)),
  ADD KEY `docs` (`doc`),
  ADD KEY `typeitem` (`type`(190),`item`);

--
-- Индексы таблицы `wp_relevanssi_log`
--
ALTER TABLE `wp_relevanssi_log`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `query` (`query`(190));

--
-- Индексы таблицы `wp_relevanssi_stopwords`
--
ALTER TABLE `wp_relevanssi_stopwords`
  ADD UNIQUE KEY `stopword` (`stopword`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=978;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1160;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT для таблицы `wp_relevanssi_log`
--
ALTER TABLE `wp_relevanssi_log`
  MODIFY `id` bigint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
