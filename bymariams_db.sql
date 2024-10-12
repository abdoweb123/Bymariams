-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2024 at 03:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bymariams_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `additional_directions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `client_id`, `country_id`, `lat`, `long`, `additional_directions`, `created_at`, `updated_at`) VALUES
(3, 1, 0, '26.2348668', '50.5445705', 'Ewan Tower, Unit 62, Building 923 Seef Area, ضاحية السيف، البحرين', NULL, '2024-02-27 17:48:29'),
(6, 1, 0, '26.3815116', '50.09886119999999', 'EDMA6713، 6713 الامير متعب ابن عبدالعزيز، 3872، حي الواحة، الدمام 32254, Saudi Arabia', '2024-02-28 10:23:16', '2024-02-28 13:39:57'),
(7, 1, 0, '26.2273885', '50.5465576', 'Block 408, road 16, Building146 Manama, السنابس، البحرين', '2024-02-28 14:07:15', '2024-02-28 14:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `phone_code` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `theme` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `image`, `code`, `phone_code`, `country_code`, `status`, `theme`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '123456', NULL, NULL, '973', 'BH', 1, 1, NULL, '$2y$10$Ux05A7MTagNwS51QpRoEDe.nX1mKZyOy1xSLl1TjyeJP9O4Oy5i.2', '9DbPi7kNxhQGMWONAudNQ7DiiP7OPK9e68VgPOVOsZHxWeAZATzcQHtagFf1', NULL, '2022-10-09 11:52:15', '2023-11-28 13:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title_ar`, `title_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 'موسمي', 'SEASONAL', 1, '2024-02-25 13:55:55', '2024-02-25 13:55:55'),
(2, 'ملابس الصيف', 'SUMMER WEAR', 1, '2024-02-25 13:58:23', '2024-02-25 13:58:23'),
(3, 'ملابس الشتاء', 'WINTER WEAR', 1, '2024-02-25 13:58:33', '2024-02-25 13:58:33'),
(4, 'ملابس العمل', 'WORK ATTIRE', 1, '2024-02-25 13:58:49', '2024-02-25 13:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL DEFAULT 'logo.png',
  `phone_code` varchar(255) NOT NULL DEFAULT '+973',
  `code` varchar(255) NOT NULL DEFAULT 'BH',
  `country_code` varchar(255) NOT NULL DEFAULT 'BH',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `points`, `image`, `phone_code`, `code`, `country_code`, `status`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mostafa Mohamed', NULL, '33467117', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$nHllRfMliRe5ZLiLZbGzievD2RwLLNdm0uVr967YX.xCxefnd0ooG', NULL, NULL, '2024-02-27 16:07:23', '2024-02-28 14:02:26'),
(2, 'Mostafa Mohamed', 'mostafazarea69@gmail.com', '33467117', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$nHllRfMliRe5ZLiLZbGzievD2RwLLNdm0uVr967YX.xCxefnd0ooG', NULL, NULL, '2024-02-27 16:07:35', '2024-02-28 14:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `hexa` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `title_ar`, `title_en`, `hexa`, `status`, `created_at`, `updated_at`) VALUES
(1, 'أحمر', 'Red', '#ff0000', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:33'),
(2, 'أصفر', 'Yellow', '#fbe80e', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:39'),
(3, 'أخضر', 'Green', '#40f000', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:41'),
(4, 'أزرق', 'Blue', '#2206b2', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:44'),
(5, 'نيلى', 'Indigo', '#4B0082', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:46'),
(6, 'بنفسجى', 'Violet', '#8F00FF', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:52'),
(7, 'الزيتي', 'Dark green', '#013220 ', 1, '2021-06-14 15:33:35', '2022-03-04 18:36:50'),
(8, 'أسود', 'Black', '#000', 1, '2021-06-14 15:33:57', '2022-03-04 18:36:56'),
(9, 'أبيض', 'White', '#ffffff', 1, '2021-06-14 15:34:18', '2022-03-04 18:36:54'),
(10, 'سماوي', 'Light blue', '#ADD8E6', 1, '2021-06-14 15:34:47', '2022-03-04 18:37:08'),
(11, 'وردي', 'Pink', '#FFC0CB ', 1, '2021-06-15 04:38:41', '2022-03-04 18:37:07'),
(12, 'ماروني', 'Maroon', '#800000', 1, '2021-06-15 06:20:03', '2022-03-04 18:37:04'),
(13, 'بيج', 'Node', '#215732', 1, '2021-06-15 07:27:35', '2022-03-04 18:37:02'),
(14, 'بني', 'Brown', '#964B00', 1, '2021-06-15 08:25:03', '2022-08-15 10:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Emery Clark', '+1 (452) 621-7461', 'xibibar@mailinator.com', 'Laboris voluptatem o', 'Fugiat dolor aliqua', '2024-02-28 12:37:29', '2024-02-28 12:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `currancy_code_ar` varchar(255) DEFAULT NULL,
  `currancy_code_en` varchar(255) DEFAULT NULL,
  `currancy_value` decimal(5,3) NOT NULL DEFAULT 0.000,
  `phone_code` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `accept_orders` tinyint(1) NOT NULL DEFAULT 1,
  `length` int(11) NOT NULL DEFAULT 10,
  `decimals` int(11) NOT NULL DEFAULT 3,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title_ar`, `title_en`, `currancy_code_ar`, `currancy_code_en`, `currancy_value`, `phone_code`, `country_code`, `lat`, `long`, `status`, `accept_orders`, `length`, `decimals`, `image`, `created_at`, `updated_at`) VALUES
(1, 'البحرين', 'Bahrain', 'دينار بحريني', 'BHD', 0.100, '+973', 'BH', '25.93041400', '50.63777200', 1, 1, 8, 3, '/countries/Bahrain.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(2, 'المملكة العربية السعودية', 'Saudi Arabia', 'ريال سعودي', 'SAR', 1.000, '+966', 'SA', '23.88594200', '45.07916200', 1, 1, 9, 2, '/countries/SaudiArabia.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(3, 'سلطنة عمان', 'Oman', 'ريال عماني', 'OR', 0.102, '+968', 'OM', '21.51258300', '55.92325500', 1, 1, 10, 3, '/countries/Oman.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(4, 'الإمارات العربية المتحدة', 'United Arab Emirates', 'درهم إماراتي', 'AED', 1.000, '+971', 'AE', '23.42407600', '53.84781800', 1, 1, 9, 3, '/countries/UnitedArabEmirates.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(5, 'قطر', 'Qatar', 'ريال قطري', 'QR', 1.000, '+974', 'QA', '25.35482600', '51.18388400', 1, 1, 10, 3, '/countries/Qatar.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(6, 'الكويت', 'Kuwait', 'دينار كويتي', 'KWD', 0.081, '+965', 'KW', '29.31166000', '47.48176600', 1, 1, 10, 3, '/countries/Kuwait.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(7, 'مصر', 'Egypt', 'جنيه مصري', 'EGP', 6.141, '+20', 'EG', '26.82055300', '30.80249800', 0, 1, 10, 3, '/countries/Egypt.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('discount','percent_off') NOT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivries`
--

CREATE TABLE `delivries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivries`
--

INSERT INTO `delivries` (`id`, `title_ar`, `title_en`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'توصيل إلى المنزل', 'Delivery', '', 1, '2022-08-23 09:36:08', '2022-08-23 09:36:08'),
(2, 'إستلام من  المحل', 'Pick Up', '', 1, '2022-08-23 09:36:28', '2022-08-23 09:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `device_tokens`
--

CREATE TABLE `device_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `device_token` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_a_q_s`
--

CREATE TABLE `f_a_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_ar` varchar(255) DEFAULT NULL,
  `question_en` varchar(255) DEFAULT NULL,
  `answer_ar` text DEFAULT NULL,
  `answer_en` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_offers`
--

CREATE TABLE `mail_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_000000_create_countries_table', 1),
(2, '2014_10_11_000000_create_days_table', 1),
(3, '2014_10_12_000000_create_admins_table', 1),
(4, '2014_10_12_000000_create_clients_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_device_tokens_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2022_04_18_080645_create_settings_table', 1),
(10, '2022_04_18_084603_create_contacts_table', 1),
(11, '2022_04_18_084626_create_f_a_q_s_table', 1),
(12, '2022_04_19_100517_create_payment_methods_table', 1),
(13, '2022_04_21_113420_create_sliders_table', 1),
(14, '2022_05_10_080543_create_coupons_table', 1),
(15, '2022_05_11_072964_create_colors_table', 1),
(16, '2022_06_12_113616_create_sizes_table', 1),
(17, '2022_06_12_120004_create_products_table', 1),
(18, '2022_07_31_120624_create_delivries_table', 1),
(19, '2022_07_31_120839_create_orders_table', 1),
(20, '2022_07_31_120840_create_transactions_table', 1),
(21, '2022_09_19_140023_create_visits_table', 1),
(22, '2022_12_04_145833_create_mail_offers_table', 1),
(23, '2022_12_20_145248_create_social_media_icons_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` decimal(9,3) DEFAULT 0.000,
  `discount` decimal(9,3) DEFAULT 0.000,
  `discount_percentage` int(11) DEFAULT 0,
  `vat` decimal(9,3) DEFAULT 0.000,
  `vat_percentage` int(11) DEFAULT 0,
  `coupon` decimal(9,3) DEFAULT 0.000,
  `coupon_text` varchar(255) DEFAULT NULL,
  `coupon_percentage` int(11) DEFAULT 0,
  `charge_cost` decimal(9,3) DEFAULT 0.000,
  `net_total` decimal(9,3) DEFAULT 0.000,
  `status` int(11) DEFAULT 0,
  `follow` int(11) DEFAULT 0,
  `use_points` tinyint(1) DEFAULT 0,
  `points_number` int(11) DEFAULT 0,
  `gained_points` int(11) DEFAULT 0,
  `client_points` int(11) DEFAULT 0,
  `mobile_type` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `delivery_id`, `client_id`, `address_id`, `payment_id`, `sub_total`, `discount`, `discount_percentage`, `vat`, `vat_percentage`, `coupon`, `coupon_text`, `coupon_percentage`, `charge_cost`, `net_total`, `status`, `follow`, `use_points`, `points_number`, `gained_points`, `client_points`, `mobile_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 3, 1, 4.000, 4.000, 0, 0.400, 10, 0.000, NULL, 0, NULL, 4.400, 2, 0, 0, 0, 0, 0, NULL, NULL, '2024-02-28 10:19:12', '2024-02-28 12:53:57'),
(3, 1, 1, 6, 1, 2.000, 2.000, 0, 0.200, 10, 0.000, NULL, 0, NULL, 2.200, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-02-28 10:23:16', '2024-02-28 12:54:06'),
(4, 1, 1, 7, 1, 2.000, 2.000, 0, 0.200, 10, 0.000, NULL, 0, NULL, 2.200, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-02-28 14:07:15', '2024-02-28 14:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(8,3) DEFAULT NULL,
  `quantity` smallint(6) NOT NULL,
  `total` decimal(9,3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `color_id`, `size_id`, `price`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 12, 1, 1.000, 4, 4.000, '2024-02-28 10:19:12', '2024-02-28 10:19:12'),
(2, 3, 8, 10, 2, 1.000, 1, 1.000, '2024-02-28 10:23:16', '2024-02-28 10:23:16'),
(3, 3, 8, NULL, 1, 1.000, 1, 1.000, '2024-02-28 10:23:16', '2024-02-28 10:23:16'),
(4, 4, 7, NULL, 1, 1.000, 1, 1.000, '2024-02-28 14:07:15', '2024-02-28 14:07:15'),
(5, 4, 7, 2, 2, 1.000, 1, 1.000, '2024-02-28 14:07:15', '2024-02-28 14:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `title_ar`, `title_en`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'كاش', 'Cash', 1, '/uploads/PaymentMethods/1697900757_2398.webp', '2022-10-06 06:56:58', '2023-10-21 12:05:57'),
(2, 'ديبت كارد', 'Detbit Card', 0, '/uploads/PaymentMethods/1697900766_7660.webp', '2022-10-06 06:57:16', '2023-10-21 12:06:06'),
(3, 'بطاقة الإئتمان', 'Credit Card', 0, '/uploads/PaymentMethods/1697900773_7679.webp', '2022-10-06 06:57:31', '2023-10-21 12:06:13'),
(4, 'بنفت باي', 'Benefit Pay', 0, '/uploads/PaymentMethods/1697900780_3097.webp', '2022-10-06 06:57:46', '2023-10-21 12:06:20'),
(5, 'ابل باي', 'Apple Pay', 0, '/uploads/PaymentMethods/1697900788_3799.webp', '2022-12-20 13:55:39', '2023-10-21 12:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `desc_ar` text DEFAULT NULL,
  `desc_en` text DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `arrangement` int(11) NOT NULL DEFAULT 0,
  `VAT` enum('inclusive','exclusive') NOT NULL,
  `most_selling` tinyint(1) NOT NULL DEFAULT 0,
  `popular` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(8,3) NOT NULL DEFAULT 0.000,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `discount` decimal(8,3) DEFAULT 0.000,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `code`, `arrangement`, `VAT`, `most_selling`, `popular`, `status`, `price`, `quantity`, `discount`, `from`, `to`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, '‎رمضــان ٢٠٢٤ ✨', '✨ ramadhan bisht', '<p style=\"text-align: right;\">قماش السلعة: 100% كتان<br>الحزام متضمن: لا<br>العناية بالملابس: تنظيف جاف<br>ملاحظة المصمم: يرجى ذكر طول عبايتك المعتادة</p>', '<p style=\"text-align: left;\">Item fabric : 100% Linen<br>Belt Included : No<br>Garment Care : Dry Clean<br>Designer note : Please mention your usual abaya lenth</p>', '26317', 3, 'exclusive', 0, 1, 1, 20.000, 0, 50.000, '2024-02-01', '2024-03-27', NULL, '2024-02-25 10:04:54', '2024-02-27 17:53:31'),
(4, 'عباية أنيقة', 'Elegant Abaya', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">عباية سوداء فاخرة مزينة بتفاصيل مزخرفة. يأتي مع فستان مطابق</p>\r\n</div>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Luxurious black abaya adorned with embellished detailing. Comes with a matching dress</p>\r\n</div>', '651152', 4, 'exclusive', 1, 0, 1, 30.000, 0, 0.000, NULL, NULL, NULL, '2024-02-27 07:54:51', '2024-02-28 07:36:31'),
(5, 'عباية RM23', 'RM’23 Abaya', '<p>عباية سوداء بتطريز ذهبي. يأتي مع وشاح للرأس.</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Black abaya with golden embroidery. Comes with a headscarf.</p>\r\n</div>', '263174', 5, 'exclusive', 0, 1, 1, 80.000, 0, 0.000, NULL, NULL, NULL, '2024-02-27 07:55:39', '2024-02-28 07:36:44'),
(6, 'M147 بشت', 'M147 Bisht', '<p>عباية بشت باللون الكحلي مع تفاصيل مزخرفة. يأتي مع غطاء رأس مطابق.</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Navy bisht abaya with embellished details. Comes with a matching headscarf.</p>\r\n</div>', NULL, 6, 'exclusive', 1, 0, 1, 90.000, 0, 0.000, NULL, NULL, NULL, '2024-02-27 07:56:19', '2024-02-28 07:36:56'),
(7, 'فلورا', 'Flora', '<p>جلابية مصنوعة يدوياً مع زخرفة من قماش الأربادا</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Handmade Jalabiya with Embellishment in arbada fabric</p>\r\n</div>', '3344553', 7, 'exclusive', 0, 1, 1, 45.000, 0, 0.000, NULL, NULL, NULL, '2024-02-27 07:57:17', '2024-02-28 07:37:08'),
(8, 'E27 الأزرق', 'E27 Blue', '<p>تشكيلة عبايات كاجوال. عباية بياقة وجيوب أمامية وزخارف مطرزة.</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Casual Abaya collection. Collared abaya with front pockets and stitched trimmings.</p>\r\n</div>', '258963', 8, 'exclusive', 1, 0, 1, 65.000, 0, 0.000, NULL, NULL, NULL, '2024-02-27 07:58:07', '2024-02-28 07:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 2, 3, NULL, NULL),
(3, 3, 3, NULL, NULL),
(5, 1, 4, NULL, NULL),
(6, 2, 4, NULL, NULL),
(7, 3, 4, NULL, NULL),
(9, 1, 5, NULL, NULL),
(10, 2, 5, NULL, NULL),
(11, 3, 5, NULL, NULL),
(13, 1, 6, NULL, NULL),
(14, 2, 6, NULL, NULL),
(15, 3, 6, NULL, NULL),
(16, 2, 7, NULL, NULL),
(17, 4, 7, NULL, NULL),
(18, 2, 8, NULL, NULL),
(19, 3, 8, NULL, NULL),
(20, 4, 8, NULL, NULL),
(21, 1, 3, NULL, NULL),
(22, 2, 3, NULL, NULL),
(23, 3, 3, NULL, NULL),
(25, 1, 3, NULL, NULL),
(26, 2, 3, NULL, NULL),
(27, 3, 3, NULL, NULL),
(28, 1, 4, NULL, NULL),
(29, 2, 4, NULL, NULL),
(30, 3, 4, NULL, NULL),
(31, 1, 5, NULL, NULL),
(32, 2, 5, NULL, NULL),
(33, 3, 5, NULL, NULL),
(34, 1, 4, NULL, NULL),
(35, 2, 4, NULL, NULL),
(36, 3, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 5, NULL, NULL),
(6, 3, 10, NULL, NULL),
(7, 3, 11, NULL, NULL),
(8, 3, 12, NULL, NULL),
(9, 3, 13, NULL, NULL),
(10, 3, 14, NULL, NULL),
(11, 4, 1, NULL, NULL),
(12, 4, 2, NULL, NULL),
(13, 4, 3, NULL, NULL),
(14, 4, 4, NULL, NULL),
(15, 4, 5, NULL, NULL),
(16, 4, 6, NULL, NULL),
(17, 4, 7, NULL, NULL),
(18, 4, 8, NULL, NULL),
(19, 4, 9, NULL, NULL),
(20, 4, 10, NULL, NULL),
(21, 4, 11, NULL, NULL),
(22, 4, 12, NULL, NULL),
(23, 4, 13, NULL, NULL),
(24, 4, 14, NULL, NULL),
(25, 5, 1, NULL, NULL),
(26, 5, 2, NULL, NULL),
(27, 5, 3, NULL, NULL),
(28, 5, 4, NULL, NULL),
(29, 5, 5, NULL, NULL),
(30, 5, 7, NULL, NULL),
(31, 5, 8, NULL, NULL),
(32, 5, 9, NULL, NULL),
(33, 6, 1, NULL, NULL),
(34, 6, 2, NULL, NULL),
(35, 6, 3, NULL, NULL),
(36, 6, 4, NULL, NULL),
(37, 6, 5, NULL, NULL),
(38, 6, 10, NULL, NULL),
(39, 6, 11, NULL, NULL),
(40, 6, 12, NULL, NULL),
(41, 6, 13, NULL, NULL),
(42, 6, 14, NULL, NULL),
(43, 7, 1, NULL, NULL),
(44, 7, 2, NULL, NULL),
(45, 7, 3, NULL, NULL),
(46, 7, 4, NULL, NULL),
(47, 7, 5, NULL, NULL),
(48, 7, 7, NULL, NULL),
(49, 7, 8, NULL, NULL),
(50, 7, 9, NULL, NULL),
(51, 7, 10, NULL, NULL),
(52, 8, 1, NULL, NULL),
(53, 8, 2, NULL, NULL),
(54, 8, 3, NULL, NULL),
(55, 8, 4, NULL, NULL),
(56, 8, 5, NULL, NULL),
(57, 8, 8, NULL, NULL),
(58, 8, 9, NULL, NULL),
(59, 8, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_favourites`
--

CREATE TABLE `product_favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_favourites`
--

INSERT INTO `product_favourites` (`id`, `client_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `main` int(11) NOT NULL DEFAULT 1,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `status`, `main`, `color_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, '/uploads/products/1708855494_3939.jpg', 1, 1, NULL, 3, '2024-02-25 10:04:54', '2024-02-27 10:13:35'),
(4, '/uploads/products/1709020491_7934.jpg', 1, 1, NULL, 4, '2024-02-27 07:54:52', '2024-02-27 10:13:47'),
(5, '/uploads/products/1709020539_1006.jpg', 1, 1, NULL, 5, '2024-02-27 07:55:39', '2024-02-27 10:13:57'),
(6, '/uploads/products/1709020579_5569.jpg', 1, 1, NULL, 6, '2024-02-27 07:56:19', '2024-02-27 07:56:19'),
(7, '/uploads/products/1709020637_9679.jpg', 1, 1, NULL, 7, '2024-02-27 07:57:17', '2024-02-27 07:57:17'),
(8, '/uploads/products/1709020687_8412.jpg', 1, 1, NULL, 8, '2024-02-27 07:58:07', '2024-02-27 07:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rate` enum('1','2','3','4','5') NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 4, 2, NULL, NULL),
(6, 4, 3, NULL, NULL),
(7, 5, 1, NULL, NULL),
(8, 5, 2, NULL, NULL),
(9, 5, 3, NULL, NULL),
(10, 6, 1, NULL, NULL),
(11, 6, 2, NULL, NULL),
(12, 6, 3, NULL, NULL),
(13, 7, 1, NULL, NULL),
(14, 7, 2, NULL, NULL),
(15, 7, 3, NULL, NULL),
(16, 8, 1, NULL, NULL),
(17, 8, 2, NULL, NULL),
(18, 8, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `delivery_cost` decimal(9,3) NOT NULL DEFAULT 0.000,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `country_id`, `title_ar`, `title_en`, `lat`, `long`, `delivery_cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'العكر', ' Al Eker', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(3, 1, 'القدم', 'Al Qadam', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(4, 1, 'القرية', 'Quraiyah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(5, 1, 'القضيبية', 'Qudaibiya', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(6, 1, 'قلالي', 'Qalali', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(7, 1, 'القلعة', 'Al Qalah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(8, 1, 'كرانة', 'Karranah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(9, 1, 'الحجر', 'Al Hajar', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(10, 1, 'كرباباد', 'Karbabad', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(11, 1, 'كرزكان', 'Karzakan', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(12, 1, 'الماحوز', 'Mahooz', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(13, 1, 'المالكية', 'Malkiah', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(14, 1, 'مدينة حمد من دوار 1 إلى دوار 10', 'Madinat Hamad From R 1 to R 10', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(15, 1, 'مدينة زايد', 'Zayed Town', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(16, 1, 'مدينة عيسي', 'Isa Town', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(17, 1, 'المحرق', 'Al Muharraq', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(18, 1, 'مقابة', 'Maqabah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(19, 1, 'المقشع', 'Al Maqsha', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(20, 1, 'المنامة', 'Manama', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(21, 1, 'النبيه صالح', 'Nabih Saleh', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(22, 1, 'النعيم', 'Alnaim', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(23, 1, 'النويدرات', 'Nuwaidrat', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(24, 1, 'الهملة', 'Al Hamala', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(25, 1, 'البلاد القديم', 'Bilad Al Qadeem', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(26, 1, 'الكورة', 'Kawarah', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(27, 1, 'سلماباد', 'Salmabad', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(28, 1, 'أبو صيبع', 'Abu Saiba', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(29, 1, 'أبوقوة', 'Bu Quwah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(30, 1, 'أم الحصم', 'Umm Al Hassam', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(31, 1, 'المصلي', 'Al Musalla', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(32, 1, 'توبلي', 'Tubli', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(33, 1, 'باربار', 'Barbar', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(34, 1, 'البديع', 'Budaiya', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(35, 1, 'البسيتين', 'Busaiten', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(36, 1, 'بوكوارة', 'Bu Kowarah', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(37, 1, 'البحير', 'Al Bahair', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(38, 1, 'بني جمرة', 'Bani Jamra', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(39, 1, 'بوري', 'Buri', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(40, 1, 'جبلة حبشي', 'Jeblat Hebshi', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(41, 1, 'جد الحاج', 'Jid Al Haj', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(42, 1, 'جد حفص', 'Jidhafs', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(43, 1, 'جد علي', 'Jid Ali', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(44, 1, 'جرداب', 'Jurdab', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(46, 1, 'الجسرة', 'Aljasrah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(47, 1, 'الجفير', 'AlJuffair', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(48, 1, 'الجنبية', 'ُEljanabiya', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(49, 1, 'جنوسان', 'Jannusan', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(50, 1, 'جو', 'Jaw', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(51, 1, 'الحد', 'AL Hidd', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(52, 1, 'الحجيات', 'Alhajiyat', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(53, 1, 'حلة العبد الصالح', 'Hillat Abdul Saleh', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(54, 1, 'الحورة', 'Al Hoora', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(55, 1, 'الخميس', 'Khamis', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(56, 1, 'دار كليب', 'Dar Kulaib', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(57, 1, 'المنطقة الدبلوماسية', 'Diplomatic Area', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(58, 1, 'الدراز', 'Diraz', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(59, 1, 'دمستان', 'Dimstan', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(60, 1, 'الدير', 'Aldair', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(61, 1, 'الديه', 'Daih', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(62, 1, 'رأس رمان', 'Ras Rumman', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(63, 1, 'الرفاع(الشرقي)', 'East Riffa', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(64, 1, 'الرفاع(الغربي)', 'West Riffa', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(65, 1, 'الزلاق', 'Al zallaq', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(66, 1, 'الزنج', 'Zinj', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(67, 1, 'السقيه', 'AL SAGYAH', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(68, 1, 'سار', 'Saar', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(69, 1, 'سترة', 'sitra', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(70, 1, 'سماهيج', 'Samahej', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(71, 1, 'السنابس', 'Sanabis', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(72, 1, 'سند', 'Sanad', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(73, 1, 'السهلة(الشمالية والجنوبية)', 'Sehla', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(74, 1, 'ضاحية السيف', 'seef', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(75, 1, 'الشاخورة', 'Shakhurah', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(76, 1, 'شهركان', 'Sharakan', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(77, 1, 'جامعة البحرين ', 'university of bahrain', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(78, 1, 'الصالحيه', 'Salihiya', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(79, 1, 'صدد', 'Sadad', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(80, 1, 'عالي', 'Aali', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(81, 1, 'العدلية', 'Adliya', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(82, 1, 'عذاري', 'AZARY', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(83, 1, 'عراد', 'Arad', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(84, 1, 'عسكر', 'askr', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(85, 1, 'مدينة حمد من دوار 11 إلى دوار 22', 'Madinat Hamad From R 11 to R 22', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(86, 1, 'اللوزي', 'Al lozy', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(87, 1, 'المرخ', 'Al Markh', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(88, 1, 'مدينة سلمان', 'Salman City', NULL, NULL, 2.000, 1, NULL, '2024-01-24 16:44:24'),
(91, 1, 'القفول', 'Algufool', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(92, 1, 'المعامير', 'Maameer', NULL, NULL, 2.000, 0, NULL, '2024-01-24 16:44:24'),
(93, 1, 'عوالي', 'Awali', '26.227934462972144', '50.58910840410498', 2.000, 0, '2023-04-01 19:16:46', '2024-01-24 16:44:24'),
(94, 2, 'تبوك', 'Tabuk', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(95, 2, 'الرياض', 'Riyadh', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(96, 2, 'الطائف', 'At Taif', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(97, 2, 'مكة المكرمة', 'Makkah Al Mukarramah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(98, 2, 'حائل', 'Hail', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(99, 2, 'بريدة', 'Buraydah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(100, 2, 'الهفوف', 'Al Hufuf', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(101, 2, 'الدمام', 'Ad Dammam', '26.227934462972', '50.589108404105', 15.000, 1, NULL, '2023-05-09 08:52:37'),
(102, 2, 'المدينة المنورة', 'Al Madinah Al Munawwarah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(103, 2, 'ابها', 'Abha', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(104, 2, 'جازان', 'Jazan', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(105, 2, 'جدة', 'Jeddah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(106, 2, 'المجمعة', 'Al Majmaah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(107, 2, 'الخبر', 'Al Khubar', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(108, 2, 'حفر الباطن', 'Hafar Al Batin', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(109, 2, 'خميس مشيط', 'Khamis Mushayt', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(110, 2, 'احد رفيده', 'Ahad Rifaydah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(111, 2, 'القطيف', 'Al Qatif', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(112, 2, 'عنيزة', 'Unayzah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(113, 2, 'قرية العليا', 'Qaryat Al Ulya', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(114, 2, 'الجبيل', 'Al Jubail', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(115, 2, 'النعيرية', 'An Nuayriyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(116, 2, 'الظهران', 'Dhahran', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(117, 2, 'الوجه', 'Al Wajh', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(118, 2, 'بقيق', 'Buqayq', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(119, 2, 'الزلفي', 'Az Zulfi', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(120, 2, 'خيبر', 'Khaybar', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(121, 2, 'الغاط', 'Al Ghat', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(122, 2, 'املج', 'Umluj', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(123, 2, 'رابغ', 'Rabigh', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(124, 2, 'عفيف', 'Afif', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(125, 2, 'ثادق', 'Thadiq', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(126, 2, 'سيهات', 'Sayhat', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(127, 2, 'تاروت', 'Tarut', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(128, 2, 'ينبع', 'Yanbu', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(129, 2, 'شقراء', 'Shaqra', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(130, 2, 'الدوادمي', 'Ad Duwadimi', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(131, 2, 'الدرعية', 'Ad Diriyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(132, 2, 'القويعية', 'Quwayiyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(133, 2, 'المزاحمية', 'Al Muzahimiyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(134, 2, 'بدر', 'Badr', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(135, 2, 'الخرج', 'Al Kharj', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(136, 2, 'الدلم', 'Ad Dilam', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(137, 2, 'الشنان', 'Ash Shinan', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(138, 2, 'الخرمة', 'Al Khurmah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(139, 2, 'الجموم', 'Al Jumum', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(140, 2, 'المجاردة', 'Al Majardah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(141, 2, 'السليل', 'As Sulayyil', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(142, 2, 'تثليث', 'Tathilith', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(143, 2, 'بيشة', 'Bishah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(144, 2, 'الباحة', 'Al Baha', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(145, 2, 'القنفذة', 'Al Qunfidhah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(146, 2, 'محايل', 'Muhayil', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(147, 2, 'ثول', 'Thuwal', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(148, 2, 'ضبا', 'Duba', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(149, 2, 'تربه', 'Turbah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(150, 2, 'صفوى', 'Safwa', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(151, 2, 'عنك', 'Inak', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(152, 2, 'طريف', 'Turaif', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(153, 2, 'عرعر', 'Arar', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(154, 2, 'القريات', 'Al Qurayyat', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(155, 2, 'سكاكا', 'Sakaka', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(156, 2, 'رفحاء', 'Rafha', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(157, 2, 'دومة الجندل', 'Dawmat Al Jandal', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(158, 2, 'الرس', 'Ar Rass', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(159, 2, 'المذنب', 'Al Midhnab', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(160, 2, 'الخفجي', 'Al Khafji', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(161, 2, 'رياض الخبراء', 'Riyad Al Khabra', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(162, 2, 'البدائع', 'Al Badai', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(163, 2, 'رأس تنورة', 'Ras Tannurah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(164, 2, 'البكيرية', 'Al Bukayriyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(165, 2, 'الشماسية', 'Ash Shimasiyah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(166, 2, 'الحريق', 'Al Hariq', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(167, 2, 'حوطة بني تميم', 'Hawtat Bani Tamim', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(168, 2, 'ليلى', 'Layla', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(169, 2, 'بللسمر', 'Billasmar', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(170, 2, 'شرورة', 'Sharurah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(171, 2, 'نجران', 'Najran', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(172, 2, 'صبيا', 'Sabya', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(173, 2, 'ابو عريش', 'Abu Arish', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(174, 2, 'صامطة', 'Samtah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(175, 2, 'احد المسارحة', 'Ahad Al Musarihah', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(176, 2, 'مدينة الملك عبدالله الاقتصادية', 'King Abdullah Economic City', NULL, NULL, 25.000, 1, NULL, '2023-05-09 08:52:25'),
(177, 2, 'Riyadh Province', 'Riyadh Province', NULL, NULL, 25.000, 1, '2023-01-03 13:35:51', '2023-05-09 08:52:25'),
(178, 2, 'Al Madinah Province', 'Al Madinah Province', NULL, NULL, 25.000, 1, '2023-01-03 13:37:10', '2023-05-09 08:52:25'),
(179, 2, 'Medina', 'Medina', NULL, NULL, 25.000, 1, '2023-01-03 13:37:10', '2023-05-09 08:52:25'),
(180, 2, 'Makkah Province', 'Makkah Province', NULL, NULL, 25.000, 1, '2023-01-03 13:37:13', '2023-05-09 08:52:25'),
(181, 2, 'Asfan', 'Asfan', NULL, NULL, 25.000, 1, '2023-01-03 13:37:13', '2023-05-09 08:52:25'),
(182, 2, 'Maysaan', 'Maysaan', NULL, NULL, 25.000, 1, '2023-01-03 13:37:48', '2023-05-09 08:52:25'),
(183, 2, 'Quday\'an', 'Quday\'an', NULL, NULL, 25.000, 1, '2023-01-03 13:41:28', '2023-05-09 08:52:25'),
(184, 2, 'Halban', 'Halban', NULL, NULL, 25.000, 1, '2023-01-03 13:41:37', '2023-05-09 08:52:25'),
(185, 2, 'Al Wahwahi', 'Al Wahwahi', NULL, NULL, 25.000, 1, '2023-01-03 13:41:40', '2023-05-09 08:52:25'),
(186, 2, 'Al Khasrah', 'Al Khasrah', NULL, NULL, 25.000, 1, '2023-01-03 13:41:49', '2023-05-09 08:52:25'),
(187, 2, 'منطقة الرياض', 'منطقة الرياض', NULL, NULL, 25.000, 1, '2023-01-03 13:45:50', '2023-05-09 08:52:25'),
(188, 2, 'الحصاة', 'الحصاة', NULL, NULL, 25.000, 1, '2023-01-03 13:45:50', '2023-05-09 08:52:25'),
(189, 2, 'Alquwayiyah', 'Alquwayiyah', NULL, NULL, 25.000, 1, '2023-01-03 13:46:23', '2023-05-09 08:52:25'),
(190, 2, 'Miz\'il', 'Miz\'il', NULL, NULL, 25.000, 1, '2023-01-03 13:49:20', '2023-05-09 08:52:25'),
(191, 2, 'Al Duwadimi', 'Al Duwadimi', NULL, NULL, 25.000, 1, '2023-01-03 13:49:26', '2023-05-09 08:52:25'),
(192, 2, 'Jilah', 'Jilah', NULL, NULL, 25.000, 1, '2023-01-03 13:49:32', '2023-05-09 08:52:25'),
(193, 2, 'Al Quwaiiyah', 'Al Quwaiiyah', NULL, NULL, 25.000, 1, '2023-01-03 13:49:38', '2023-05-09 08:52:25'),
(194, 2, 'Al Qassim Province', 'Al Qassim Province', NULL, NULL, 25.000, 1, '2023-01-03 13:50:34', '2023-05-09 08:52:25'),
(195, 2, 'Dariyah', 'Dariyah', NULL, NULL, 25.000, 1, '2023-01-03 13:50:34', '2023-05-09 08:52:25'),
(196, 2, 'Al Humaij', 'Al Humaij', NULL, NULL, 25.000, 1, '2023-01-03 13:50:36', '2023-05-09 08:52:25'),
(197, 2, 'Yanbu Al Nakhal', 'Yanbu Al Nakhal', NULL, NULL, 25.000, 1, '2023-01-03 13:50:43', '2023-05-09 08:52:25'),
(198, 2, 'Al Figrah', 'Al Figrah', NULL, NULL, 25.000, 1, '2023-01-03 13:50:52', '2023-05-09 08:52:25'),
(199, 2, 'Alyutamah', 'Alyutamah', NULL, NULL, 25.000, 1, '2023-01-03 13:50:54', '2023-05-09 08:52:25'),
(200, 2, 'Mahd Al Thahab', 'Mahd Al Thahab', NULL, NULL, 25.000, 1, '2023-01-03 13:50:56', '2023-05-09 08:52:25'),
(201, 2, 'Ad Dumayriyah', 'Ad Dumayriyah', NULL, NULL, 25.000, 1, '2023-01-03 13:50:58', '2023-05-09 08:52:25'),
(202, 2, 'Al Uyaynah', 'Al Uyaynah', NULL, NULL, 25.000, 1, '2023-01-03 13:51:47', '2023-05-09 08:52:25'),
(203, 2, 'Rughabah', 'Rughabah', NULL, NULL, 25.000, 1, '2023-01-03 13:51:52', '2023-05-09 08:52:25'),
(204, 2, 'Shaqra', 'Shaqra', NULL, NULL, 25.000, 1, '2023-01-03 13:51:54', '2023-05-09 08:52:25'),
(205, 2, 'الفيضة بالسر', 'الفيضة بالسر', NULL, NULL, 25.000, 1, '2023-01-03 13:51:56', '2023-05-09 08:52:25'),
(206, 2, 'Muhayriqah', 'Muhayriqah', NULL, NULL, 25.000, 1, '2023-01-03 13:54:27', '2023-05-09 08:52:25'),
(207, 2, 'الجله الأعلى', 'الجله الأعلى', NULL, NULL, 25.000, 1, '2023-01-03 13:55:03', '2023-05-09 08:52:25'),
(208, 2, 'الثقبة', 'Al-Thuqbah', '26.30587656348251', '50.189212716533525', 1.000, 1, '2023-09-05 11:04:57', '2023-09-05 11:04:57'),
(209, 2, 'الجسر', 'Bridge', '26.185203022364654', '50.318986449166935', 1.000, 1, '2023-09-05 11:06:05', '2023-09-05 11:06:05'),
(210, 2, 'العزيزية', 'Aziziyah', '26.18835199672054', '50.213627919987026', 1.000, 1, '2023-09-05 11:07:08', '2023-09-05 11:07:08'),
(211, 2, 'الاسكان', 'Aliskan', '26.38785247402411', '50.112405096216605', 1.000, 1, '2023-09-05 11:07:55', '2023-09-05 11:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'about_ar', '<div>\r\n<div>مرحبا بكم في B Y M A R I &Lambda; M S، منصة التسوق الإلكترونية التي تقدم لكم تصاميم أصيلة وراقية من إبداع المواهب المستقلة .</div>\r\n<br>\r\n<div>لقد اخترنا اسم بقشة لمنصتنا لما يحمل من معنى أصيل خدم سوق الإمارات والخليج &nbsp;قديما، فمصطلح B Y M A R I &Lambda; M S هو مصطلح من اللغة العربية الفصيحة و يمارس في اللهجة الخليجية، وتعني تلك القطعة من القماش التي توضع بها صرة من الملابس غالبا أو الحلي وكل مايسهل حمله، والتي تربط زواياه أو أطرافه الأربعة في بعضه لحماية القطع و سهولة التنقل. وكان الباعة قديماً (غالباً من النساء) يحملن &nbsp;البقشة إلى الأسواق أو المنازل لعرض المنتجات على الزبائن</div>\r\n</div>', 'about', 1, '2022-10-09 11:52:15', '2024-02-27 10:50:28'),
(2, 'about_en', '<div class=\"_a9zs\">\r\n<div>\r\n<div>ABOUT US</div>\r\n<div>Welcome to B Y M A R I &Lambda; M S, the region\'s leading online marketplace for unparalleled Khaleeji modest couture. B Y M A R I &Lambda; M S prides in showcasing beautiful and distinctive fashionable pieces for stylish women created by over a thousand independent homegrown designers and boutiques.</div>\r\n<br>\r\n<div>The name B Y M A R I &Lambda; M S is derived from the Arab Gulf dialect and refers to a piece of fabric tied from the corners to form a single large knot on the top and it&rsquo;s used as a head carrier by women sellers to store their goods; primarily clothing and jewelry, and anything that can be easily carried and displayed. Back in the 1900s, women used to travel considerable distances to reach the destination of the market place known to Arabs as the Souq. When they traveled, they utilized the B Y M A R I &Lambda; M S as a daytime lounger and a nighttime cushion to ease their journey. Once at the marketplace, the women would place their B Y M A R I &Lambda; M S on the ground and showcase their items for sale.</div>\r\n<br>\r\n<div>Today, the platform \'B Y M A R I &Lambda; M S\' revives the concept of B Y M A R I &Lambda; M S by allowing women to easily expose their creativity to a wide customer base while also catering to the needs of today\'s world with quick and easy trading. B Y M A R I &Lambda; M S promotes the empowerment of the Arab world\'s hardworking female segment and is dedicated to becoming the leading portal in showcasing the region&rsquo;s based female-owned brands. B Y M A R I &Lambda; M S now features over 25,000 exclusive products ranging from abayas, kaftans, dresses, accessories, and fragrances, with a concentration on the Khaleeji fashion.</div>\r\n<br>\r\n<div>The dedicated team is always available to serve both our trendy Boutiques and our esteemed Shoppers, ensuring a secure and seamless shopping experience is achieved every single time. Our fashion-savvy Shoppers are able to browse through thousands of unique pieces that can be customized to fit, while the Boutiques are supported with an array of tools to manage their business efficiently and effectively.</div>\r\n<br><br>\r\n<div>We hope you enjoy discovering the great talents represented on B Y M A R I &Lambda; M S and the authentic products that are catered for you. Happy Shopping</div>\r\n</div>\r\n</div>', 'about', 1, '2022-10-09 11:52:15', '2024-02-27 10:50:28'),
(3, 'about_image', '/uploads/settings/1709031028_4323.png', 'about', 1, '2022-10-09 11:52:15', '2024-02-27 10:50:28'),
(4, 'privacy_ar', '<div>\r\n<div style=\"text-align: left;\">B Y M A R I &Lambda; M S Platform LLC (&ldquo;B Y M A R I &Lambda; M S&rdquo;) owns, manages and maintains the B Y M A R I &Lambda; M S.com Website (\"Site\"). Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to B Y M A R I &Lambda; M S. The following are the terms of use that govern use of the Site (\"Terms of Use\"). By using the Site you expressly agree to be bound by these Terms of Use and the B Y M A R I &Lambda; M S privacy policy and to follow these Terms of Use and all applicable laws and regulations governing use of the Site.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">&ldquo;Using&rdquo; this Site includes, but is not limited to, registering an account, viewing online Boutiques or products, browsing web pages, viewing member or user profiles or articles, or any uses via mobile applications, mobile devices, personal computers, email, telephones or other electronic devices.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">B Y M A R I &Lambda; M S reserves the right to change these Terms of Use at any time, effective immediately upon posting on the Site. Please check this page of the Site periodically. We will note when there are updates to the Terms of Use at the bottom of the Terms of Use. If you violate these Terms of Use, B Y M A R I &Lambda; M S may terminate your use of the Site, bar you from future use of the Site, and/or take appropriate legal action against you. Also, B Y M A R I &Lambda; M S may in its sole discretion bar any Boutique, Shopper or other user that in B Y M A R I &Lambda; M S&rsquo;s opinion presents an imminent risk of harm to B Y M A R I &Lambda; M S or any website user. Any new features or tools which are added to the current store shall also be subject to the Terms of Service.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">Site Operation</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">The United Arab Emirates &ldquo;U.A.E&rdquo; is our Country of Domicile. B Y M A R I &Lambda; M S controls this Site from the U.A.E. B Y M A R I &Lambda; M S makes no representation that this Site is appropriate for use in other locations. If you use this Site from other locations, you are responsible for ensuring compliance with local laws. You may not use, export or re-export any materials from this Site in violation of any applicable laws or regulations, including, but not limited to any U.A.E export laws and regulations.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">Eligibility for Membership</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">B Y M A R I &Lambda; M S wishes to ensure that its members (Shoppers and Boutiques) are able to form legally binding contracts and further that minors do not purchase unsuitable content. Therefore, membership of the Site is not available to persons under the age of 18 years. You represent that you are 18 years of age or over the age of 18 years before you become a member of the Site. Without prejudice to any other rights and remedies of B Y M A R I &Lambda; M S under this User Agreement or at law, B Y M A R I &Lambda; M S reserves the right to limit or withdraw access to the Site or the membership of any person if B Y M A R I &Lambda; M S believes that person is under the age of 18 years. The Site is not available to persons whose membership has been suspended or withdrawn by B Y M A R I &Lambda; M S. Further, if you are registering as a business entity, you represent that you have the authority to bind that entity to this User Agreement and that you and the business entity will comply with all applicable laws relating to online trading. No person or business entity may register as a member of the Site more than once.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">Registration Obligations and Account Privacy</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">When you register as a member on the Site you have been or will be required to provide certain information and register a username and password for use on this Site.</div>\r\n<br>\r\n<div style=\"text-align: left;\">On becoming a member of the Site, you agree:</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You are responsible for maintaining the confidentiality of, and restricting access to and use of, your account and password, and accept responsibility for all activities that occur under your account and password. You agree to immediately notify B Y M A R I &Lambda; M S.com of any unauthorized use of your password or account or any other breach of security. In no event will B Y M A R I &Lambda; M S.com be liable for any direct, indirect or consequential loss or loss of profits, goodwill or damage whatsoever resulting from the disclosure of your username and/or password. You may not use another person&rsquo;s account at any time, without the express permission of the account holder.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You agree to reimburse B Y M A R I &Lambda; M S.com for any improper, unauthorized or illegal use of your account by you or by any person obtaining access to the Site, services or otherwise by using your designated username and password, whether or not you authorized such access.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You will provide true, accurate, current and complete information about yourself as prompted by B Y M A R I &Lambda; M S.com registration form.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You will not include: any of your contact details, including but not limited to email addresses, telephone numbers or other personal details in your registration user ID.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You will treat any other member&rsquo;s information provided to you by B Y M A R I &Lambda; M S.com or any other user as confidential.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You will maintain and promptly update the registration data to keep it true, accurate, current and complete. If you provide any information that is untrue, inaccurate, not current or incomplete or if B Y M A R I &Lambda; M S.com has reasonable grounds to suspect that such information is untrue, inaccurate, not current or incomplete, or not in accordance with this Terms and Conditions, without prejudice to any other rights and remedies of B Y M A R I &Lambda; M S.com under this Terms and Conditions or at law, B Y M A R I &Lambda; M S.com has the right to indefinitely suspend, limit or withdraw your access to the Site and/or your membership of the Site. B Y M A R I &Lambda; M S.com may (in its sole discretion and at any time), make any inquiries it considers necessary (whether directly or through a third party), and request that you provide it with further information or documentation, including without limitation to verify your identity and/or ownership of your financial instruments. Without limiting the foregoing, if you are a business entity or registered on behalf of a business entity such information or documentation may include your trade license, other incorporation documents and/or documentation showing any person&rsquo;s authority to act on your behalf. You agree to provide any information and/or documentation to B Y M A R I &Lambda; M S.com upon such requests.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You acknowledge and agree that if you do not, B Y M A R I &Lambda; M S.com without liability may limit, suspend or withdraw your access to the Site and/or your membership of the Site. We also reserve the right to cancel unconfirmed / unverified accounts or accounts that have been inactive for a long time.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You must not transmit any worms or viruses or any code of a destructive nature.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">A breach or violation of any of the Terms will result in an immediate termination of your Services.</div>\r\n</div>', 'privacy', 1, '2022-10-09 11:52:15', '2024-02-27 10:50:18'),
(5, 'privacy_en', '<div>\r\n<div style=\"text-align: left;\">B Y M A R I &Lambda; M S Platform LLC (&ldquo;B Y M A R I &Lambda; M S&rdquo;) owns, manages and maintains the B Y M A R I &Lambda; M S.com Website (\"Site\"). Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to B Y M A R I &Lambda; M S. The following are the terms of use that govern use of the Site (\"Terms of Use\"). By using the Site you expressly agree to be bound by these Terms of Use and the B Y M A R I &Lambda; M S privacy policy and to follow these Terms of Use and all applicable laws and regulations governing use of the Site.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">&ldquo;Using&rdquo; this Site includes, but is not limited to, registering an account, viewing online Boutiques or products, browsing web pages, viewing member or user profiles or articles, or any uses via mobile applications, mobile devices, personal computers, email, telephones or other electronic devices.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">B Y M A R I &Lambda; M S reserves the right to change these Terms of Use at any time, effective immediately upon posting on the Site. Please check this page of the Site periodically. We will note when there are updates to the Terms of Use at the bottom of the Terms of Use. If you violate these Terms of Use, B Y M A R I &Lambda; M S may terminate your use of the Site, bar you from future use of the Site, and/or take appropriate legal action against you. Also, B Y M A R I &Lambda; M S may in its sole discretion bar any Boutique, Shopper or other user that in B Y M A R I &Lambda; M S&rsquo;s opinion presents an imminent risk of harm to B Y M A R I &Lambda; M S or any website user. Any new features or tools which are added to the current store shall also be subject to the Terms of Service.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">Site Operation</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">The United Arab Emirates &ldquo;U.A.E&rdquo; is our Country of Domicile. B Y M A R I &Lambda; M S controls this Site from the U.A.E. B Y M A R I &Lambda; M S makes no representation that this Site is appropriate for use in other locations. If you use this Site from other locations, you are responsible for ensuring compliance with local laws. You may not use, export or re-export any materials from this Site in violation of any applicable laws or regulations, including, but not limited to any U.A.E export laws and regulations.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">Eligibility for Membership</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">B Y M A R I &Lambda; M S wishes to ensure that its members (Shoppers and Boutiques) are able to form legally binding contracts and further that minors do not purchase unsuitable content. Therefore, membership of the Site is not available to persons under the age of 18 years. You represent that you are 18 years of age or over the age of 18 years before you become a member of the Site. Without prejudice to any other rights and remedies of B Y M A R I &Lambda; M S under this User Agreement or at law, B Y M A R I &Lambda; M S reserves the right to limit or withdraw access to the Site or the membership of any person if B Y M A R I &Lambda; M S believes that person is under the age of 18 years. The Site is not available to persons whose membership has been suspended or withdrawn by B Y M A R I &Lambda; M S. Further, if you are registering as a business entity, you represent that you have the authority to bind that entity to this User Agreement and that you and the business entity will comply with all applicable laws relating to online trading. No person or business entity may register as a member of the Site more than once.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">Registration Obligations and Account Privacy</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">When you register as a member on the Site you have been or will be required to provide certain information and register a username and password for use on this Site.</div>\r\n<br>\r\n<div style=\"text-align: left;\">On becoming a member of the Site, you agree:</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You are responsible for maintaining the confidentiality of, and restricting access to and use of, your account and password, and accept responsibility for all activities that occur under your account and password. You agree to immediately notify B Y M A R I &Lambda; M S.com of any unauthorized use of your password or account or any other breach of security. In no event will B Y M A R I &Lambda; M S.com be liable for any direct, indirect or consequential loss or loss of profits, goodwill or damage whatsoever resulting from the disclosure of your username and/or password. You may not use another person&rsquo;s account at any time, without the express permission of the account holder.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You agree to reimburse B Y M A R I &Lambda; M S.com for any improper, unauthorized or illegal use of your account by you or by any person obtaining access to the Site, services or otherwise by using your designated username and password, whether or not you authorized such access.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You will provide true, accurate, current and complete information about yourself as prompted by B Y M A R I &Lambda; M S.com registration form.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You will not include: any of your contact details, including but not limited to email addresses, telephone numbers or other personal details in your registration user ID.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You will treat any other member&rsquo;s information provided to you by B Y M A R I &Lambda; M S.com or any other user as confidential.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You will maintain and promptly update the registration data to keep it true, accurate, current and complete. If you provide any information that is untrue, inaccurate, not current or incomplete or if B Y M A R I &Lambda; M S.com has reasonable grounds to suspect that such information is untrue, inaccurate, not current or incomplete, or not in accordance with this Terms and Conditions, without prejudice to any other rights and remedies of B Y M A R I &Lambda; M S.com under this Terms and Conditions or at law, B Y M A R I &Lambda; M S.com has the right to indefinitely suspend, limit or withdraw your access to the Site and/or your membership of the Site. B Y M A R I &Lambda; M S.com may (in its sole discretion and at any time), make any inquiries it considers necessary (whether directly or through a third party), and request that you provide it with further information or documentation, including without limitation to verify your identity and/or ownership of your financial instruments. Without limiting the foregoing, if you are a business entity or registered on behalf of a business entity such information or documentation may include your trade license, other incorporation documents and/or documentation showing any person&rsquo;s authority to act on your behalf. You agree to provide any information and/or documentation to B Y M A R I &Lambda; M S.com upon such requests.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You acknowledge and agree that if you do not, B Y M A R I &Lambda; M S.com without liability may limit, suspend or withdraw your access to the Site and/or your membership of the Site. We also reserve the right to cancel unconfirmed / unverified accounts or accounts that have been inactive for a long time.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">You must not transmit any worms or viruses or any code of a destructive nature.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">A breach or violation of any of the Terms will result in an immediate termination of your Services.</div>\r\n</div>', 'privacy', 1, '2022-10-09 11:52:15', '2024-02-27 10:50:18'),
(6, 'privacy_image', '/uploads/settings/1709031018_8679.png', 'privacy', 1, '2022-10-09 11:52:15', '2024-02-27 10:50:18'),
(7, 'title_ar', 'By Mariams', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(8, 'title_en', 'By Mariams', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(9, 'terms_ar', '<ul>\r\n<li style=\"text-align: right;\">\r\n<div>\r\n<div style=\"text-align: left;\">This is bymariams.com&rsquo;s (&ldquo;bymariams.com&rdquo;) online privacy policy (&ldquo;Policy&rdquo;). This policy applies only to activities bymariams.com engages in on its website and does not apply to bymariams.com activities that are \"offline\" or unrelated to the website.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com collects certain anonymous data regarding the usage of the website. This information does not personally identify users, by itself or in combination with other information, and is gathered to improve the performance of the website. The anonymous data collected by the bymariams.com website can include information such as the type of browser you are using and the length of the visit to the website. You may also be asked to provide personally identifiable information on the bymariams.com website, which may include your name, address, telephone number and e-mail address. This information can be gathered when feedback or e-mails are sent to bymariams.com, when you register for services, or make purchases on the website. In all such cases you have the option of providing us with personally identifiable information.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">1. USE AND DISCLOSURE OF INFORMATION. Except as otherwise stated below, we do not sell, trade or rent your personally identifiable information collected on the website to others. The information collected by our website is used to process orders, to keep you informed about your order status, to notify you of products or special offers that may be of interest to you, and for statistical purposes for improving our website. We will disclose your Delivery information to third parties for order tracking purposes or process your check or money order, as appropriate, fill your order, improve the functionality of our website, perform statistical and data analyses deliver your order and deliver promotional emails to you from us. For example, we must release your mailing address information to the delivery service to deliver products that you ordered.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">2. All credit/debit cards&rsquo; details and personally identifiable information will NOT be stored, sold, shared, rented or leased to any third parties.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">COOKIES. Cookies are small bits of data cached in a user&rsquo;s browser. bymariams.com utilizes cookies to determine whether or not you have visited the home page in the past. However, no other user information is gathered.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com may use non-personal \"aggregated data\" to enhance the operation of our website, or analyze interest in the areas of our website. Additionally, if you provide bymariams.com with content for publishing or feedback, we may publish your user name or other identifying data with your permission.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com may also disclose personally identifiable information in order to respond to a subpoena, court order or other such request. bymariams.com may also provide such personally identifiable information in response to a law enforcement agencies request or as otherwise required by law. Your personally identifiable information may be provided to a party if bymariams.com files for bankruptcy, or there is a transfer of the assets or ownership of bymariams.com in connection with proposed or consummated corporate reorganizations, such as mergers or acquisitions.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">3. SECURITY. bymariams.com takes appropriate steps to ensure data privacy and security including through various hardware and software methodologies. However, bymariams.com cannot guarantee the security of any information that is disclosed online.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">4. OTHER WEBSITES. bymariams.com is not responsible for the privacy policies of websites to which it links. If you provide any information to such third parties different rules regarding the collection and use of your personal information may apply. We strongly suggest you review such third party&rsquo;s privacy policies before providing any data to them. We are not responsible for the policies or practices of third parties. Please be aware that our website may contain links to other websites on the Internet that are owned and operated by third parties. The information practices of those websites linked are not covered by this Policy. Those linked websites may send their own cookies or clear GIFs to users, collect data or solicit personally identifiable information. We cannot control this collection of information. You should contact these entities directly if you have any questions about their use of the information that they collect.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">MINORS. bymariams.com does not knowingly collect personal information from minors under the age of 18. Minors are not permitted to use the bymariams.com website or services, and bymariams.com requests that minors under the age of 18 not submit any personal information to the website. Since information regarding minors under the age of 18 is not collected, bymariams.com does not knowingly distribute personal information regarding minors under the age of 18.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">CORRECTIONS AND UPDATES. If you wish to modify or update any information bymariams.com has received, please contact hello@bymariams.com.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">5. MODIFICATIONS OF THE PRIVACY POLICY. bymariams.com. The Website Policies and Terms &amp; Conditions will be changed or updated occasionally to meet the requirements and standards. Therefore the Customers&rsquo; are encouraged to frequently visit these sections in order to be updated about the changes on the website. Modifications will be effective on the day they are posted.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">6. Some of the advertisements you see on the website are selected and delivered by third parties, such as ad networks, advertising agencies, advertisers, and audience segment providers. These third parties may collect information about you and your online activities, either on our website or on other websites, through cookies, web beacons, and other technologies in an effort to understand your interests and deliver to you advertisements that are tailored to your interests. Please remember that we do not have access to, or control over, the information these third parties may collect. The information practices of these third parties are not covered by this privacy policy.</div>\r\n</div>\r\n</li>\r\n</ul>', 'terms', 1, '2022-10-09 11:52:15', '2024-02-27 10:46:14'),
(10, 'terms_en', '<ul>\r\n<li>\r\n<div>\r\n<div style=\"text-align: left;\">This is bymariams.com&rsquo;s (&ldquo;bymariams.com&rdquo;) online privacy policy (&ldquo;Policy&rdquo;). This policy applies only to activities bymariams.com engages in on its website and does not apply to bymariams.com activities that are \"offline\" or unrelated to the website.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com collects certain anonymous data regarding the usage of the website. This information does not personally identify users, by itself or in combination with other information, and is gathered to improve the performance of the website. The anonymous data collected by the bymariams.com website can include information such as the type of browser you are using and the length of the visit to the website. You may also be asked to provide personally identifiable information on the bymariams.com website, which may include your name, address, telephone number and e-mail address. This information can be gathered when feedback or e-mails are sent to bymariams.com, when you register for services, or make purchases on the website. In all such cases you have the option of providing us with personally identifiable information.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">1. USE AND DISCLOSURE OF INFORMATION. Except as otherwise stated below, we do not sell, trade or rent your personally identifiable information collected on the website to others. The information collected by our website is used to process orders, to keep you informed about your order status, to notify you of products or special offers that may be of interest to you, and for statistical purposes for improving our website. We will disclose your Delivery information to third parties for order tracking purposes or process your check or money order, as appropriate, fill your order, improve the functionality of our website, perform statistical and data analyses deliver your order and deliver promotional emails to you from us. For example, we must release your mailing address information to the delivery service to deliver products that you ordered.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">2. All credit/debit cards&rsquo; details and personally identifiable information will NOT be stored, sold, shared, rented or leased to any third parties.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">COOKIES. Cookies are small bits of data cached in a user&rsquo;s browser. bymariams.com utilizes cookies to determine whether or not you have visited the home page in the past. However, no other user information is gathered.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com may use non-personal \"aggregated data\" to enhance the operation of our website, or analyze interest in the areas of our website. Additionally, if you provide bymariams.com with content for publishing or feedback, we may publish your user name or other identifying data with your permission.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com may also disclose personally identifiable information in order to respond to a subpoena, court order or other such request. bymariams.com may also provide such personally identifiable information in response to a law enforcement agencies request or as otherwise required by law. Your personally identifiable information may be provided to a party if bymariams.com files for bankruptcy, or there is a transfer of the assets or ownership of bymariams.com in connection with proposed or consummated corporate reorganizations, such as mergers or acquisitions.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">3. SECURITY. bymariams.com takes appropriate steps to ensure data privacy and security including through various hardware and software methodologies. However, bymariams.com cannot guarantee the security of any information that is disclosed online.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">4. OTHER WEBSITES. bymariams.com is not responsible for the privacy policies of websites to which it links. If you provide any information to such third parties different rules regarding the collection and use of your personal information may apply. We strongly suggest you review such third party&rsquo;s privacy policies before providing any data to them. We are not responsible for the policies or practices of third parties. Please be aware that our website may contain links to other websites on the Internet that are owned and operated by third parties. The information practices of those websites linked are not covered by this Policy. Those linked websites may send their own cookies or clear GIFs to users, collect data or solicit personally identifiable information. We cannot control this collection of information. You should contact these entities directly if you have any questions about their use of the information that they collect.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">MINORS. bymariams.com does not knowingly collect personal information from minors under the age of 18. Minors are not permitted to use the bymariams.com website or services, and bymariams.com requests that minors under the age of 18 not submit any personal information to the website. Since information regarding minors under the age of 18 is not collected, bymariams.com does not knowingly distribute personal information regarding minors under the age of 18.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">CORRECTIONS AND UPDATES. If you wish to modify or update any information bymariams.com has received, please contact hello@bymariams.com.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">5. MODIFICATIONS OF THE PRIVACY POLICY. bymariams.com. The Website Policies and Terms &amp; Conditions will be changed or updated occasionally to meet the requirements and standards. Therefore the Customers&rsquo; are encouraged to frequently visit these sections in order to be updated about the changes on the website. Modifications will be effective on the day they are posted.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">6. Some of the advertisements you see on the website are selected and delivered by third parties, such as ad networks, advertising agencies, advertisers, and audience segment providers. These third parties may collect information about you and your online activities, either on our website or on other websites, through cookies, web beacons, and other technologies in an effort to understand your interests and deliver to you advertisements that are tailored to your interests. Please remember that we do not have access to, or control over, the information these third parties may collect. The information practices of these third parties are not covered by this privacy policy.</div>\r\n</div>\r\n</li>\r\n</ul>', 'terms', 1, '2022-10-09 11:52:15', '2024-02-27 10:46:14'),
(11, 'terms_image', '/uploads/settings/1709030774_1451.png', 'terms', 1, '2022-10-09 11:52:15', '2024-02-27 10:46:15'),
(12, 'logo', '/uploads/settings/1708853683_7491.png', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(13, 'email', 'info@bymariams.com', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(14, 'phone', '97338868876', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(15, 'whatsapp', '97338868876', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(16, 'desc', '𝒇𝒂𝒃𝒓𝒊𝒄𝒂𝒕𝒆𝒅 𝒘𝒊𝒕𝒉 𝒍𝒐𝒗𝒆 find us @incconcept.bh', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(17, 'keywords', '𝒇𝒂𝒃𝒓𝒊𝒄𝒂𝒕𝒆𝒅 𝒘𝒊𝒕𝒉 𝒍𝒐𝒗𝒆 find us @incconcept.bh', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(18, 'author', 'By Mariams', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(20, 'VAT', '10', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(24, 'min_order', '1', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(34, 'main_color', '#000000', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(37, 'DefaultLang', 'ar', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-02-25 09:34:43'),
(46, 'snapchat_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(47, 'twitter_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(48, 'facebbok_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(49, 'google_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(50, 'tiktok_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(51, 'instagram_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(52, 'product_care_ar', '<ul>\r\n<li style=\"text-align: right;\">\r\n<div>\r\n<div style=\"text-align: left;\">This is bymariams.com&rsquo;s (&ldquo;bymariams.com&rdquo;) online privacy policy (&ldquo;Policy&rdquo;). This policy applies only to activities bymariams.com engages in on its website and does not apply to bymariams.com activities that are \"offline\" or unrelated to the website.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com collects certain anonymous data regarding the usage of the website. This information does not personally identify users, by itself or in combination with other information, and is gathered to improve the performance of the website. The anonymous data collected by the bymariams.com website can include information such as the type of browser you are using and the length of the visit to the website. You may also be asked to provide personally identifiable information on the bymariams.com website, which may include your name, address, telephone number and e-mail address. This information can be gathered when feedback or e-mails are sent to bymariams.com, when you register for services, or make purchases on the website. In all such cases you have the option of providing us with personally identifiable information.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">1. USE AND DISCLOSURE OF INFORMATION. Except as otherwise stated below, we do not sell, trade or rent your personally identifiable information collected on the website to others. The information collected by our website is used to process orders, to keep you informed about your order status, to notify you of products or special offers that may be of interest to you, and for statistical purposes for improving our website. We will disclose your Delivery information to third parties for order tracking purposes or process your check or money order, as appropriate, fill your order, improve the functionality of our website, perform statistical and data analyses deliver your order and deliver promotional emails to you from us. For example, we must release your mailing address information to the delivery service to deliver products that you ordered.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">2. All credit/debit cards&rsquo; details and personally identifiable information will NOT be stored, sold, shared, rented or leased to any third parties.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">COOKIES. Cookies are small bits of data cached in a user&rsquo;s browser. bymariams.com utilizes cookies to determine whether or not you have visited the home page in the past. However, no other user information is gathered.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com may use non-personal \"aggregated data\" to enhance the operation of our website, or analyze interest in the areas of our website. Additionally, if you provide bymariams.com with content for publishing or feedback, we may publish your user name or other identifying data with your permission.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com may also disclose personally identifiable information in order to respond to a subpoena, court order or other such request. bymariams.com may also provide such personally identifiable information in response to a law enforcement agencies request or as otherwise required by law. Your personally identifiable information may be provided to a party if bymariams.com files for bankruptcy, or there is a transfer of the assets or ownership of bymariams.com in connection with proposed or consummated corporate reorganizations, such as mergers or acquisitions.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">3. SECURITY. bymariams.com takes appropriate steps to ensure data privacy and security including through various hardware and software methodologies. However, bymariams.com cannot guarantee the security of any information that is disclosed online.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">4. OTHER WEBSITES. bymariams.com is not responsible for the privacy policies of websites to which it links. If you provide any information to such third parties different rules regarding the collection and use of your personal information may apply. We strongly suggest you review such third party&rsquo;s privacy policies before providing any data to them. We are not responsible for the policies or practices of third parties. Please be aware that our website may contain links to other websites on the Internet that are owned and operated by third parties. The information practices of those websites linked are not covered by this Policy. Those linked websites may send their own cookies or clear GIFs to users, collect data or solicit personally identifiable information. We cannot control this collection of information. You should contact these entities directly if you have any questions about their use of the information that they collect.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">MINORS. bymariams.com does not knowingly collect personal information from minors under the age of 18. Minors are not permitted to use the bymariams.com website or services, and bymariams.com requests that minors under the age of 18 not submit any personal information to the website. Since information regarding minors under the age of 18 is not collected, bymariams.com does not knowingly distribute personal information regarding minors under the age of 18.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">CORRECTIONS AND UPDATES. If you wish to modify or update any information bymariams.com has received, please contact hello@bymariams.com.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">5. MODIFICATIONS OF THE PRIVACY POLICY. bymariams.com. The Website Policies and Terms &amp; Conditions will be changed or updated occasionally to meet the requirements and standards. Therefore the Customers&rsquo; are encouraged to frequently visit these sections in order to be updated about the changes on the website. Modifications will be effective on the day they are posted.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">6. Some of the advertisements you see on the website are selected and delivered by third parties, such as ad networks, advertising agencies, advertisers, and audience segment providers. These third parties may collect information about you and your online activities, either on our website or on other websites, through cookies, web beacons, and other technologies in an effort to understand your interests and deliver to you advertisements that are tailored to your interests. Please remember that we do not have access to, or control over, the information these third parties may collect. The information practices of these third parties are not covered by this privacy policy.</div>\r\n</div>\r\n</li>\r\n</ul>', 'product_care', 1, '2022-10-09 11:52:15', '2024-02-27 10:46:14');
INSERT INTO `settings` (`id`, `key`, `value`, `type`, `status`, `created_at`, `updated_at`) VALUES
(53, 'product_care_en', '<ul>\r\n<li>\r\n<div>\r\n<div style=\"text-align: left;\">This is bymariams.com&rsquo;s (&ldquo;bymariams.com&rdquo;) online privacy policy (&ldquo;Policy&rdquo;). This policy applies only to activities bymariams.com engages in on its website and does not apply to bymariams.com activities that are \"offline\" or unrelated to the website.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com collects certain anonymous data regarding the usage of the website. This information does not personally identify users, by itself or in combination with other information, and is gathered to improve the performance of the website. The anonymous data collected by the bymariams.com website can include information such as the type of browser you are using and the length of the visit to the website. You may also be asked to provide personally identifiable information on the bymariams.com website, which may include your name, address, telephone number and e-mail address. This information can be gathered when feedback or e-mails are sent to bymariams.com, when you register for services, or make purchases on the website. In all such cases you have the option of providing us with personally identifiable information.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">1. USE AND DISCLOSURE OF INFORMATION. Except as otherwise stated below, we do not sell, trade or rent your personally identifiable information collected on the website to others. The information collected by our website is used to process orders, to keep you informed about your order status, to notify you of products or special offers that may be of interest to you, and for statistical purposes for improving our website. We will disclose your Delivery information to third parties for order tracking purposes or process your check or money order, as appropriate, fill your order, improve the functionality of our website, perform statistical and data analyses deliver your order and deliver promotional emails to you from us. For example, we must release your mailing address information to the delivery service to deliver products that you ordered.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">2. All credit/debit cards&rsquo; details and personally identifiable information will NOT be stored, sold, shared, rented or leased to any third parties.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">COOKIES. Cookies are small bits of data cached in a user&rsquo;s browser. bymariams.com utilizes cookies to determine whether or not you have visited the home page in the past. However, no other user information is gathered.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com may use non-personal \"aggregated data\" to enhance the operation of our website, or analyze interest in the areas of our website. Additionally, if you provide bymariams.com with content for publishing or feedback, we may publish your user name or other identifying data with your permission.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">bymariams.com may also disclose personally identifiable information in order to respond to a subpoena, court order or other such request. bymariams.com may also provide such personally identifiable information in response to a law enforcement agencies request or as otherwise required by law. Your personally identifiable information may be provided to a party if bymariams.com files for bankruptcy, or there is a transfer of the assets or ownership of bymariams.com in connection with proposed or consummated corporate reorganizations, such as mergers or acquisitions.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">3. SECURITY. bymariams.com takes appropriate steps to ensure data privacy and security including through various hardware and software methodologies. However, bymariams.com cannot guarantee the security of any information that is disclosed online.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">4. OTHER WEBSITES. bymariams.com is not responsible for the privacy policies of websites to which it links. If you provide any information to such third parties different rules regarding the collection and use of your personal information may apply. We strongly suggest you review such third party&rsquo;s privacy policies before providing any data to them. We are not responsible for the policies or practices of third parties. Please be aware that our website may contain links to other websites on the Internet that are owned and operated by third parties. The information practices of those websites linked are not covered by this Policy. Those linked websites may send their own cookies or clear GIFs to users, collect data or solicit personally identifiable information. We cannot control this collection of information. You should contact these entities directly if you have any questions about their use of the information that they collect.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">MINORS. bymariams.com does not knowingly collect personal information from minors under the age of 18. Minors are not permitted to use the bymariams.com website or services, and bymariams.com requests that minors under the age of 18 not submit any personal information to the website. Since information regarding minors under the age of 18 is not collected, bymariams.com does not knowingly distribute personal information regarding minors under the age of 18.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">CORRECTIONS AND UPDATES. If you wish to modify or update any information bymariams.com has received, please contact hello@bymariams.com.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">5. MODIFICATIONS OF THE PRIVACY POLICY. bymariams.com. The Website Policies and Terms &amp; Conditions will be changed or updated occasionally to meet the requirements and standards. Therefore the Customers&rsquo; are encouraged to frequently visit these sections in order to be updated about the changes on the website. Modifications will be effective on the day they are posted.</div>\r\n<br><br><br>\r\n<div style=\"text-align: left;\">6. Some of the advertisements you see on the website are selected and delivered by third parties, such as ad networks, advertising agencies, advertisers, and audience segment providers. These third parties may collect information about you and your online activities, either on our website or on other websites, through cookies, web beacons, and other technologies in an effort to understand your interests and deliver to you advertisements that are tailored to your interests. Please remember that we do not have access to, or control over, the information these third parties may collect. The information practices of these third parties are not covered by this privacy policy.</div>\r\n</div>\r\n</li>\r\n</ul>', 'product_care', 1, '2022-10-09 11:52:15', '2024-02-27 10:46:14'),
(54, 'product_care_image', '/uploads/settings/1709030774_1451.png', 'product_care', 1, '2022-10-09 11:52:15', '2024-02-27 10:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `shetabit_visits`
--

CREATE TABLE `shetabit_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `request` mediumtext DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `referer` mediumtext DEFAULT NULL,
  `languages` text DEFAULT NULL,
  `useragent` text DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `device` text DEFAULT NULL,
  `platform` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `visitable_type` varchar(255) DEFAULT NULL,
  `visitable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_type` varchar(255) DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `title_ar`, `title_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 'S', 'S', 1, '2024-02-25 09:52:30', '2024-02-25 09:52:30'),
(2, 'M', 'M', 1, '2024-02-25 09:52:35', '2024-02-25 09:52:35'),
(3, 'L', 'L', 1, '2024-02-25 09:52:42', '2024-02-25 09:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `desc_ar` text DEFAULT NULL,
  `desc_en` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title_ar`, `title_en`, `desc_ar`, `desc_en`, `status`, `created_at`, `updated_at`) VALUES
(1, '/uploads/Images/1709021247_1914.svg', 'ByMariams ليست متجر بيع إلكتروني فقط، بل هي العالم التي تحتضن مواهب محلية فريدة من نوعها', 'ByMariams is not only an online store, it is the world that embraces unique local talents', NULL, NULL, 1, '2024-02-27 08:07:27', '2024-02-27 08:07:27'),
(2, '/uploads/Images/1709021321_8707.jpg', 'يمكنك تجربة أناقة وأسلوب عباياتنا الرائعة', 'YOU CAN EXPERIENCE THE ELEGANCE AND STYLE OF OUR EXQUISITE ABAYAS', NULL, NULL, 1, '2024-02-27 08:08:41', '2024-02-27 08:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_icons`
--

CREATE TABLE `social_media_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media_icons`
--

INSERT INTO `social_media_icons` (`id`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(7, 'fa-brands fa-instagram', 'https://www.instagram.com/by.mariams', '2023-12-23 15:11:03', '2023-12-23 15:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_number` varchar(255) DEFAULT NULL,
  `value` decimal(9,3) NOT NULL,
  `result` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_client_id_foreign` (`client_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_client_id_foreign` (`client_id`),
  ADD KEY `cart_product_id_foreign` (`product_id`),
  ADD KEY `cart_color_id_foreign` (`color_id`),
  ADD KEY `cart_size_id_foreign` (`size_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_products_product_id_foreign` (`product_id`),
  ADD KEY `coupon_products_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivries`
--
ALTER TABLE `delivries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_tokens_client_id_foreign` (`client_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_offers`
--
ALTER TABLE `mail_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_delivery_id_foreign` (`delivery_id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`),
  ADD KEY `order_product_color_id_foreign` (`color_id`),
  ADD KEY `order_product_size_id_foreign` (`size_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`),
  ADD KEY `product_categories_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_color_product_id_foreign` (`product_id`),
  ADD KEY `product_color_color_id_foreign` (`color_id`);

--
-- Indexes for table `product_favourites`
--
ALTER TABLE `product_favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_favourites_client_id_foreign` (`client_id`),
  ADD KEY `product_favourites_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_color_id_foreign` (`color_id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_client_id_foreign` (`client_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_product_id_foreign` (`product_id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_country_id_foreign` (`country_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shetabit_visits`
--
ALTER TABLE `shetabit_visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shetabit_visits_visitable_type_visitable_id_index` (`visitable_type`,`visitable_id`),
  ADD KEY `shetabit_visits_visitor_type_visitor_id_index` (`visitor_type`,`visitor_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_icons`
--
ALTER TABLE `social_media_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_client_id_foreign` (`client_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_products`
--
ALTER TABLE `coupon_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivries`
--
ALTER TABLE `delivries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `device_tokens`
--
ALTER TABLE `device_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_offers`
--
ALTER TABLE `mail_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `product_favourites`
--
ALTER TABLE `product_favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `shetabit_visits`
--
ALTER TABLE `shetabit_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_media_icons`
--
ALTER TABLE `social_media_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD CONSTRAINT `device_tokens_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `delivries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `product_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_favourites`
--
ALTER TABLE `product_favourites`
  ADD CONSTRAINT `product_favourites_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_favourites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
