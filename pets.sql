-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2018 a las 00:44:13
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pets`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-11-23 05:49:45', '2018-11-23 05:49:45'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-11-23 05:49:45', '2018-11-23 05:49:45'),
(3, NULL, 1, 'Ensayo', 'ensayo', '2018-11-24 04:43:09', '2018-11-24 04:43:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-11-23 05:49:38', '2018-11-23 05:49:38'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-11-23 05:49:38', '2018-11-23 05:49:38'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-11-23 05:49:38', '2018-11-23 05:49:38'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-11-23 05:49:45', '2018-11-23 05:49:45'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-11-23 05:49:45', '2018-11-23 05:49:45'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-11-23 05:49:46', '2018-11-23 05:49:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-11-23 05:49:39', '2018-11-23 05:49:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-11-23 05:49:39', '2018-11-23 05:49:39', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-11-23 05:49:39', '2018-11-23 05:49:39', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-11-23 05:49:39', '2018-11-23 05:49:39', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-11-23 05:49:39', '2018-11-23 05:49:39', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-11-23 05:49:39', '2018-11-23 05:49:39', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-11-23 05:49:39', '2018-11-23 05:49:39', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-11-23 05:49:39', '2018-11-23 05:49:39', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-11-23 05:49:39', '2018-11-23 05:49:39', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-11-23 05:49:39', '2018-11-23 05:49:39', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-11-23 05:49:39', '2018-11-23 05:49:39', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-11-23 05:49:45', '2018-11-23 05:49:45', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-11-23 05:49:46', '2018-11-23 05:49:46', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-11-23 05:49:47', '2018-11-23 05:49:47', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2018-11-23 05:49:49', '2018-11-23 05:49:49', 'voyager.hooks', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 2),
(4, '2016_01_01_000000_create_data_types_table', 2),
(5, '2016_05_19_173453_create_menu_table', 2),
(6, '2016_10_21_190000_create_roles_table', 2),
(7, '2016_10_21_190000_create_settings_table', 2),
(8, '2016_11_30_135954_create_permission_table', 2),
(9, '2016_11_30_141208_create_permission_role_table', 2),
(10, '2016_12_26_201236_data_types__add__server_side', 2),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(12, '2017_01_14_005015_create_translations_table', 2),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(17, '2017_08_05_000000_add_group_to_settings_table', 2),
(18, '2017_11_26_013050_add_user_role_relationship', 2),
(19, '2017_11_26_015000_create_user_roles_table', 2),
(20, '2018_03_11_000000_add_user_settings', 2),
(21, '2018_03_14_000000_add_details_to_data_types_table', 2),
(22, '2018_03_16_000000_make_settings_value_nullable', 2),
(23, '2016_01_01_000000_create_pages_table', 3),
(24, '2016_01_01_000000_create_posts_table', 3),
(25, '2016_02_15_204651_create_categories_table', 3),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-11-23 05:49:47', '2018-11-23 05:49:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('daniel.agudelo5169@unaula.edu.co', '$2y$10$okKqhmNVl/2/TQ8BfHI4IO5oEQjA5gEVgk0kWPgauskX06WAvnEhu', '2018-11-24 02:12:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(2, 'browse_bread', NULL, '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(3, 'browse_database', NULL, '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(4, 'browse_media', NULL, '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(5, 'browse_compass', NULL, '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(6, 'browse_menus', 'menus', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(7, 'read_menus', 'menus', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(8, 'edit_menus', 'menus', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(9, 'add_menus', 'menus', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(10, 'delete_menus', 'menus', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(11, 'browse_roles', 'roles', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(12, 'read_roles', 'roles', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(13, 'edit_roles', 'roles', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(14, 'add_roles', 'roles', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(15, 'delete_roles', 'roles', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(16, 'browse_users', 'users', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(17, 'read_users', 'users', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(18, 'edit_users', 'users', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(19, 'add_users', 'users', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(20, 'delete_users', 'users', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(21, 'browse_settings', 'settings', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(22, 'read_settings', 'settings', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(23, 'edit_settings', 'settings', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(24, 'add_settings', 'settings', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(25, 'delete_settings', 'settings', '2018-11-23 05:49:40', '2018-11-23 05:49:40'),
(26, 'browse_categories', 'categories', '2018-11-23 05:49:45', '2018-11-23 05:49:45'),
(27, 'read_categories', 'categories', '2018-11-23 05:49:45', '2018-11-23 05:49:45'),
(28, 'edit_categories', 'categories', '2018-11-23 05:49:45', '2018-11-23 05:49:45'),
(29, 'add_categories', 'categories', '2018-11-23 05:49:45', '2018-11-23 05:49:45'),
(30, 'delete_categories', 'categories', '2018-11-23 05:49:45', '2018-11-23 05:49:45'),
(31, 'browse_posts', 'posts', '2018-11-23 05:49:46', '2018-11-23 05:49:46'),
(32, 'read_posts', 'posts', '2018-11-23 05:49:46', '2018-11-23 05:49:46'),
(33, 'edit_posts', 'posts', '2018-11-23 05:49:46', '2018-11-23 05:49:46'),
(34, 'add_posts', 'posts', '2018-11-23 05:49:46', '2018-11-23 05:49:46'),
(35, 'delete_posts', 'posts', '2018-11-23 05:49:46', '2018-11-23 05:49:46'),
(36, 'browse_pages', 'pages', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(37, 'read_pages', 'pages', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(38, 'edit_pages', 'pages', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(39, 'add_pages', 'pages', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(40, 'delete_pages', 'pages', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(41, 'browse_hooks', NULL, '2018-11-23 05:49:49', '2018-11-23 05:49:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(5, 1, 2, '¡New Post!', 'Cuidados para perro', 'Hi guys. There\'s a new post on our web. Try it out!', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus blandit enim nec convallis. Nulla aliquet pretium commodo. Vivamus suscipit orci id vehicula iaculis. Curabitur sagittis neque sem, at imperdiet ipsum posuere et. Cras vel convallis odio. Vivamus sed tellus eu sem imperdiet venenatis luctus ac lectus. Sed bibendum placerat diam id blandit. Nulla leo magna, hendrerit quis nulla ut, sodales eleifend mauris.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Suspendisse sagittis risus ac quam lacinia, ut bibendum ante porta. Duis rhoncus nibh at risus hendrerit pretium. Vestibulum egestas mauris at condimentum posuere. Morbi et ultrices eros. Duis sit amet volutpat sem. Donec volutpat odio ac diam vulputate, ut varius urna tincidunt. Vivamus pellentesque dui et libero bibendum eleifend. Aliquam tempus metus ornare urna molestie vehicula. Nullam volutpat orci et ligula ultricies commodo.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis pretium tortor et massa pulvinar molestie. Suspendisse interdum leo ex, ac hendrerit metus condimentum et. Proin porttitor augue vitae erat volutpat accumsan. Nunc dapibus eros massa, eu placerat orci aliquam nec. Donec suscipit mollis sapien, ac cursus ipsum ornare in. Nunc ut nulla hendrerit, facilisis dolor sit amet, tempus tellus. Aenean semper, risus nec aliquam tincidunt, ex elit auctor urna, nec vehicula arcu nunc ut felis. Ut venenatis urna non nisl aliquet, non posuere risus pellentesque.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Donec volutpat tristique bibendum. Aliquam consectetur massa augue, sit amet dictum velit ultrices quis. Pellentesque laoreet eu velit ac semper. Etiam tempor lorem a risus scelerisque blandit. Proin tincidunt nec nibh nec faucibus. Vestibulum et pellentesque nibh, sed vestibulum augue. Aliquam luctus consectetur vulputate. Curabitur eleifend ac urna quis porta.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Cras ut blandit metus. Ut nibh sem, feugiat eget mi tempus, rutrum malesuada odio. Nullam lorem sapien, mattis quis lacinia venenatis, finibus mattis neque. In imperdiet sed dui a commodo. Donec vulputate ipsum est. Pellentesque eros dui, sollicitudin et porttitor at, tincidunt id lacus. Sed eu vulputate purus. Aenean nec egestas purus. Maecenas feugiat, velit ac cursus sagittis, nulla nisi vulputate lacus, vitae scelerisque leo lectus a mauris.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\"><iframe title=\"Jealous Dog Want Attention Compilation NEW\" src=\"https://www.youtube.com/embed/SfLV8hD7zX4?wmode=opaque&amp;theme=dark\" width=\"592\" height=\"333\" frameborder=\"0\" allowfullscreen=\"\"></iframe></p>', 'posts\\November2018\\fkbA6a266fuo7Hyi09D9.jpg', 'new-post', 'cuidados para perro', 'perro', 'PUBLISHED', 0, '2018-11-24 03:59:20', '2018-11-24 04:32:22'),
(6, 1, 1, '¡Another one!', NULL, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus blandit enim nec convallis. Nulla aliquet pretium commodo. Vivamus suscipit orci id vehicula <strong>iaculis. Curabitur sagittis neque sem, at imperdiet ipsu</strong>m posuere et. Cras vel convallis odio. Vivamus sed tellus eu sem imperdiet venenatis luctus ac lectus. Sed bibendum placerat diam id blandit. Nulla leo magna, hendrerit quis nulla ut, sodales eleifend mauris.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Suspendisse sagittis risus ac quam lacinia,<span style=\"color: #00ff00;\"> ut bibendum ante porta. Duis rhoncus nibh at risus hendrerit pretium. Vestibulum egestas mauris at condimentum posuere. Morbi et ultrices eros. Duis sit amet volutpat sem. Donec vo</span>lutpat odio ac diam vulputate, ut varius urna tincidunt. Vivamus pellentesque dui et libero bibendum eleifend. Aliquam tempus metus ornare urna molestie vehicula. Nullam volutpat orci et ligula ultricies commodo.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis pretium tortor et massa pulvinar molestie. Suspendisse interdum leo ex, ac hendrerit metus condimentum et. Proin porttitor augue vitae erat volutpat accumsan. Nunc dapibus eros massa, eu placerat orci aliquam nec. Donec suscipit mollis sapien, ac cursus ipsum ornare in. Nunc ut nulla hendrerit, facilisis dolor sit amet, tempus tellus. Aenean semper, risus nec aliquam tincidunt, ex elit auctor urna, nec vehicula arcu nunc ut felis. Ut venenatis urna non nisl aliquet, non posuere risus pellentesque.</p>', 'posts\\November2018\\WA7bGraky10sVAzNeU57.jpg', 'another-one', NULL, NULL, 'PUBLISHED', 0, '2018-11-24 04:02:26', '2018-11-24 04:02:26'),
(7, 2, 2, '¡Post from another user!', 'post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut porta purus, sit amet viverra erat. S', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">orem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut porta purus, sit amet viverra erat. Sed viverra iaculis neque, vitae placerat urna molestie vitae. Aliquam erat volutpat. Donec mauris nunc, placerat at facilisis placerat, consequat ac lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed ac dictum elit. Sed non mi tristique, vulputate sem semper, tristique magna. In rhoncus malesuada tellus nec auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus semper quis massa ut convallis. Quisque at nulla rhoncus purus feugiat iaculis cursus sit amet lacus. Duis elit metus, tempus a porta at, faucibus vel velit. Phasellus ornare bibendum turpis, at ultricies mauris congue finibus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Aenean vulputate nibh et eros consequat, sed sodales felis sodales. Morbi sed massa ut eros ultricies vehicula id eu ipsum. Maecenas tempus, ante at rutrum vehicula, lorem mi consequat turpis, sed dapibus ante quam eget purus. Curabitur tristique diam nunc, ac auctor lorem semper nec. Nunc luctus mi at tellus tristique, id vulputate enim fringilla. Vivamus ac porttitor massa, quis imperdiet augue. Pellentesque interdum porta augue, nec tristique leo. Sed maximus lectus a dapibus sollicitudin. Curabitur auctor turpis in nunc pellentesque, ac congue magna iaculis. Duis a facilisis sem. Ut risus nibh, pharetra nec nunc vel, gravida tincidunt massa. Aliquam elit magna, fringilla sit amet fringilla id, porttitor sollicitudin eros. Donec porta diam a turpis sagittis finibus sed eu ex. Sed blandit nec ex at laoreet. Etiam turpis ipsum, facilisis vel ex in, aliquet feugiat nunc.</p>\r\n<table style=\"height: 289px;\" width=\"898\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 121px;\">At least baby</td>\r\n<td style=\"width: 121px;\">5</td>\r\n<td style=\"width: 122px;\">5</td>\r\n<td style=\"width: 122px;\">5</td>\r\n<td style=\"width: 122px;\">5</td>\r\n<td style=\"width: 122px;\">5</td>\r\n<td style=\"width: 122px;\">5</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 121px;\">5</td>\r\n<td style=\"width: 121px;\">&nbsp;</td>\r\n<td style=\"width: 122px;\">5</td>\r\n<td style=\"width: 122px;\">5</td>\r\n<td style=\"width: 122px;\">5</td>\r\n<td style=\"width: 122px;\">5</td>\r\n<td style=\"width: 122px;\">5</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 121px;\">5</td>\r\n<td style=\"width: 121px;\">5</td>\r\n<td style=\"width: 122px;\">5</td>\r\n<td style=\"width: 122px;\">5</td>\r\n<td style=\"width: 122px;\">&nbsp;</td>\r\n<td style=\"width: 122px;\">5</td>\r\n<td style=\"width: 122px;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 121px;\">&nbsp;</td>\r\n<td style=\"width: 121px;\">&nbsp;</td>\r\n<td style=\"width: 122px;\">&nbsp;</td>\r\n<td style=\"width: 122px;\">&nbsp;</td>\r\n<td style=\"width: 122px;\">&nbsp;</td>\r\n<td style=\"width: 122px;\">&nbsp;</td>\r\n<td style=\"width: 122px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'posts\\November2018\\P762OVeEL12sNX4ZxArO.jpg', 'post-from-another-user', 'post', 'post new', 'PUBLISHED', 0, '2018-11-24 04:40:38', '2018-11-24 04:41:06'),
(8, 1, 3, 'Christmas gifts for our pets!', 'christmas pets', 'Happy New Year!', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">orem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut porta purus, sit amet viverra erat. Sed viverra iaculis neque, vitae placerat urna molestie vitae. Aliquam erat volutpat. Donec mauris nunc, placerat at facilisis placerat, consequat ac lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed ac dictum elit. Sed non mi tristique, vulputate sem semper, tristique magna. In rhoncus malesuada tellus nec auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus semper quis massa ut convallis. Quisque at nulla rhoncus purus feugiat iaculis cursus sit amet lacus. Duis elit metus, tempus a porta at, faucibus vel velit. Phasellus ornare bibendum turpis, at ultricies mauris congue finibus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Aenean vulputate nibh et eros consequat, sed sodales felis sodales. Morbi sed massa ut eros ultricies vehicula id eu ipsum. Maecenas tempus, ante at rutrum vehicula, lorem mi consequat turpis, sed dapibus ante quam eget purus. Curabitur tristique diam nunc, ac auctor lorem semper nec. Nunc luctus mi at tellus tristique, id vulputate enim fringilla. Vivamus ac porttitor massa, quis imperdiet augue. Pellentesque interdum porta augue, nec tristique leo. Sed maximus lectus a dapibus sollicitudin. Curabitur auctor turpis in nunc pellentesque, ac congue magna iaculis. Duis a facilisis sem. Ut risus nibh, pharetra nec nunc vel, gravida tincidunt massa. Aliquam elit magna, fringilla sit amet fringilla id, porttitor sollicitudin eros. Donec porta diam a turpis sagittis finibus sed eu ex. Sed blandit nec ex at laoreet. Etiam turpis ipsum, facilisis vel ex in, aliquet feugiat nunc.</p>', 'posts\\November2018\\HDuX4PCboEkPPWIHAd4L.jpg', 'christmas-gifts-for-our-pets', NULL, 'christmas, pets, gifts', 'PUBLISHED', 0, '2018-11-24 04:43:53', '2018-12-12 02:36:24'),
(9, 1, 2, 'Merry christmas!', NULL, 'Merry Christmas!', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse faucibus neque nibh, in imperdiet purus aliquet nec. Aliquam vehicula nec ipsum vel vehicula. Donec luctus sem non diam viverra congue. Cras vel purus convallis, facilisis tortor blandit, ultrices enim. Sed a elit dapibus, sodales mi eget, congue sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque rhoncus sodales iaculis. Fusce tristique nulla pretium dolor auctor, sit amet efficitur risus malesuada. Duis sodales dictum ante at mollis. In quam ipsum, tincidunt sit amet ornare nec, consequat non tortor. Proin eu luctus ex, quis vulputate ligula. In in lacus eu arcu rutrum porta. Donec mattis leo sit amet ex viverra ultrices eu sed lacus. Maecenas fringilla sit amet mi in placerat.</span></p>', 'posts\\December2018\\PL8BkH5ZhpPWD0lxRlZM.jpg', 'merry-christmas', NULL, 'christmas', 'PENDING', 0, '2018-12-11 10:28:26', '2018-12-11 10:31:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(3) NOT NULL,
  `nombre_producto` text COLLATE utf8_spanish_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `updated_at`, `created_at`) VALUES
(1, 'collar perro', '2018-11-24 08:35:28', '2018-11-24 08:35:28'),
(2, 'Collar gato', '2018-11-24 08:38:26', '2018-11-24 08:38:26'),
(3, 'Collar conejo', '2018-11-24 08:39:40', '2018-11-24 08:39:40'),
(4, 'Disfraz perro', '2018-11-24 08:41:27', '2018-11-24 08:41:27'),
(5, 'disfraz superman gato', '2018-11-24 08:43:38', '2018-11-24 08:43:38'),
(6, 'jajaja', '2018-11-24 08:43:54', '2018-11-24 08:43:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-11-23 05:49:39', '2018-11-23 05:49:39'),
(2, 'user', 'Normal User', '2018-11-23 05:49:40', '2018-11-23 05:49:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\November2018\\RGgcSJN0fSYaPweCdevH.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Pets', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\November2018\\2dulOiVLcT1cyToGueyO.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.mainimage', 'MainImage', 'settings\\November2018\\Ya8SC1MYVKYTSUlIoBsP.jpg', NULL, 'image', 6, 'Site'),
(12, 'site.mainlabel', 'MainLabel', 'Encuentra tu mascota', NULL, 'text', 7, 'Site');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-11-23 05:49:47', '2018-11-23 05:49:47'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-11-23 05:49:48', '2018-11-23 05:49:48'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-11-23 05:49:48', '2018-11-23 05:49:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Daniel Agudelo', 'daniel.agudelo5169@unaula.edu.co', 'users/default.png', NULL, '$2y$10$XZ0J.zN.t2T/gEWpwErUTOINKLyvKi491Pd9Rfik9opctMF.HXBLm', 'gQFJNekEb6o1PYfANobW2SIEbNOwpKOasxQNtHxjdTYDvUmMjyagzpCUSby6', NULL, '2018-11-21 04:01:12', '2018-11-23 05:50:27'),
(2, 1, 'Dani Agudelo', 'dagudelot07@hotmail.com', 'users\\November2018\\UW0w3KcyPvUAvvWZM04S.jpg', NULL, '$2y$10$c7aHMngN66s9Qho32BI1CeV71ofLN40bjgoacDJWORukPlqpwDyq2', 'EOMgfP9HqfrSUBoHY0TqqH5Su6enGMk3Zf55eMJsiPuKW6LYBTQxsHri9BRz', '{\"locale\":\"en\"}', '2018-11-23 02:10:22', '2018-11-24 04:38:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
