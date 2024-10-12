-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2024 at 03:57 PM
-- Server version: 10.6.18-MariaDB
-- PHP Version: 8.1.28

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
  `country_code` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL,
  `block` varchar(255) DEFAULT NULL,
  `road` varchar(255) DEFAULT NULL,
  `building_no` varchar(255) DEFAULT NULL,
  `floor_no` varchar(255) DEFAULT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `apartmentType` varchar(255) DEFAULT NULL,
  `additional_directions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `client_id`, `country_code`, `country_id`, `lat`, `long`, `city`, `address1`, `address2`, `state`, `region_id`, `block`, `road`, `building_no`, `floor_no`, `apartment`, `apartmentType`, `additional_directions`, `created_at`, `updated_at`) VALUES
(27, 2, 'EG', 7, '30.1639102', '51.54548730907849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5978+PM9, Al Khankah, Al-Qalyubia Governorate 6344317, Egypt', NULL, '2024-07-13 13:18:35'),
(28, 2, 'EG', 7, '30.4613064', '30.3462002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F86W+GF Al Delengat, Egypt', NULL, NULL),
(33, 2, 'BH', 1, '26.214036603622922', '50.587239526992924', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adliya, Manama, Capital Governorate, Bahrain', '2024-07-13 12:56:38', '2024-07-13 12:56:38'),
(34, 2, 'QA', 5, '25.902344450041284', '51.1516878442449', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Al Khor and Al Thakhira, Qatar', '2024-07-13 12:56:59', '2024-07-13 12:56:59'),
(36, 2, 'BH', 1, '26.228065707338775', '50.54511054084796', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Al-Burhama, Manama, Capital Governorate, 404, Bahrain', '2024-07-22 10:30:17', '2024-07-22 10:30:17'),
(37, 2, 'BH', 1, '26.2340608', '50.54464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Seef, Manama, Capital Governorate, 428, Bahrain', '2024-07-22 10:30:49', '2024-07-22 10:30:49'),
(38, 2, 'BH', 1, '26.2340608', '50.54464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Seef, Manama, Capital Governorate, 428, Bahrain', '2024-07-22 10:31:51', '2024-07-22 10:31:51'),
(39, 2, 'BH', 1, '26.2340608', '50.54464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Seef, Manama, Capital Governorate, 428, Bahrain', '2024-07-22 10:35:03', '2024-07-22 10:35:03'),
(42, 22, 'BH', 1, '26.269313037053525', '50.60022472780946', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Al Dair, Muharraq, Muharraq Governorate, 225, Bahrain', '2024-07-24 16:46:31', '2024-07-24 16:46:31'),
(43, 2, 'BH', 1, '26.2340608', '50.54464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Seef, Manama, Capital Governorate, 428, Bahrain', '2024-07-28 08:09:49', '2024-07-28 08:09:49'),
(44, 2, 'BH', 1, '26.22683380110154', '50.54622597225304', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Al-Burhama, Manama, Capital Governorate, 404, Bahrain', '2024-07-28 12:37:26', '2024-07-28 12:37:26'),
(45, 2, 'SA', 2, '26.42138972529502', '50.0817819360408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dammam Governorate, Eastern Province, Saudi Arabia', '2024-07-28 12:38:56', '2024-07-28 12:38:56'),
(46, 24, 'QA', 5, '25.28529143184331', '51.52708699200184', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mushayrib, Mushayrib Downtown Doha, Doha, Qatar', '2024-07-28 12:54:09', '2024-07-28 12:54:09'),
(47, 27, 'SA', 2, '24.574289745894905', '46.66760444641114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Al Zahrah, Al-Urayja Municipality, Riyadh governorate, Riyadh Region, 12983, Saudi Arabia', '2024-08-07 15:56:37', '2024-08-07 15:56:37'),
(52, 31, 'OM', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-14 11:49:37', '2024-08-14 11:49:37'),
(79, 22, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 05:13:11', '2024-08-17 05:13:11'),
(87, 41, 'SA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-19 07:05:20', '2024-08-19 07:05:20'),
(88, 41, 'SA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-19 07:09:18', '2024-08-19 07:09:18'),
(102, 2, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18', '10', '2', '12', '13', '3', NULL, NULL, '2024-08-19 09:54:24', '2024-08-19 09:54:24'),
(103, 2, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16', '10', '2', '3', '13', '5', NULL, NULL, '2024-08-19 09:56:02', '2024-08-19 09:56:02'),
(112, 2, 'SA', NULL, NULL, NULL, 'y', 'tk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-19 10:27:07', '2024-08-19 10:27:07'),
(183, 2, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '12', '12', '12', '12', '12', NULL, NULL, '2024-08-24 08:40:42', '2024-08-24 08:40:42'),
(184, 69, 'KW', NULL, NULL, NULL, 'KuwaitAdan', 'Adan', 'House 25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-24 15:00:21', '2024-08-24 15:00:21'),
(192, 73, 'KW', NULL, NULL, NULL, 'Kuwait', 'Ardiya', 'Black 10 street 2 home 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-26 07:04:14', '2024-08-26 07:04:14'),
(196, 2, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', '12', '12', '12', '12', '21', '12', '12', '2024-08-26 09:06:44', '2024-08-26 09:06:44'),
(199, 81, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', '5', '5', '5', '5', '5', NULL, NULL, '2024-08-26 11:58:17', '2024-08-26 11:58:17'),
(200, 82, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', '6', '6', '6', '7', '9', NULL, NULL, '2024-08-26 12:17:35', '2024-08-26 12:17:35'),
(201, 83, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', '7', '7', '7', '7', '7', NULL, NULL, '2024-08-26 12:23:27', '2024-08-26 12:23:27'),
(202, 84, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', '14', '541', '41', '41', '41', '41', NULL, '2024-08-26 13:08:14', '2024-08-26 13:08:14'),
(203, 85, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19', '45', '34', '5', '44', '4', '4', '4', '2024-08-26 13:10:54', '2024-08-26 13:10:54'),
(204, 87, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16', '1', '11', '3', '4', '5', NULL, NULL, '2024-08-26 13:49:17', '2024-08-26 13:49:17'),
(205, 88, 'AE', NULL, NULL, NULL, 'Yy', 'Fhh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-26 14:13:41', '2024-08-26 14:13:41'),
(206, 89, 'SA', NULL, NULL, NULL, 'Dharan', '206-I', 'Haramliya Court', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-26 14:15:31', '2024-08-26 14:15:31'),
(207, 88, 'BH', NULL, NULL, NULL, '', '', NULL, NULL, '50', '243', '42', '42', '42', '42', '42', NULL, '2024-08-26 14:13:41', '2024-08-26 14:13:41'),
(208, 73, 'KW', NULL, NULL, NULL, 'ardiya', 'block 10', 'street 2 - home 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-27 08:34:38', '2024-08-27 08:34:38'),
(209, 92, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16', '1', '2', '3', '4', '5', '6', NULL, '2024-08-27 10:36:30', '2024-08-27 10:36:30'),
(211, 41, 'SA', NULL, NULL, NULL, 'Jeddah', 'Almanar', NULL, 'Almanar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 04:37:11', '2024-08-28 04:37:11'),
(212, 41, 'SA', NULL, NULL, NULL, 'Jeddah', 'Almanar', NULL, 'Almanar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 04:37:45', '2024-08-28 04:37:45'),
(213, 41, 'SA', NULL, NULL, NULL, 'Jeddah', 'Almanar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 04:38:38', '2024-08-28 04:38:38'),
(214, 94, 'SA', NULL, NULL, NULL, 'riadh', 'wer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 06:36:00', '2024-08-28 06:36:00'),
(215, 95, 'SA', NULL, NULL, NULL, 'riad', 'ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 06:39:32', '2024-08-28 06:39:32'),
(216, 86, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '10', '2', '55', '4', '5', NULL, NULL, '2024-08-28 11:06:53', '2024-08-28 11:06:53'),
(217, 86, 'AE', NULL, NULL, NULL, '98', 'l8l', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 12:01:18', '2024-08-28 12:01:18'),
(218, 86, 'US', NULL, NULL, NULL, 'ttt', 'ttt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 12:06:52', '2024-08-28 12:06:52'),
(219, 96, 'SA', NULL, NULL, NULL, 'hhh', 'h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 12:43:31', '2024-08-28 12:43:31'),
(220, 97, 'SA', NULL, NULL, NULL, 'sa', 'sa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 12:52:31', '2024-08-28 12:52:31'),
(221, 41, 'SA', NULL, NULL, NULL, 'Jeddah', 'Almanar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-28 13:11:55', '2024-08-28 13:11:55'),
(222, 96, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17', '3', '3', '3', '3', '3', NULL, NULL, '2024-08-28 13:31:54', '2024-08-28 13:31:54'),
(223, 96, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19', '4', '4', '4', '4', '4', NULL, NULL, '2024-08-28 13:34:51', '2024-08-28 13:34:51'),
(224, 98, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18', '2', '2', '22', '2', '2', NULL, NULL, '2024-08-28 13:36:24', '2024-08-28 13:36:24'),
(225, 102, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '9', '9', '9', '9', '9', NULL, NULL, '2024-08-28 14:31:48', '2024-08-28 14:31:48'),
(226, 89, 'SA', NULL, NULL, NULL, 'Dharan', '206-I', 'Haramliya Court', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-04 17:18:41', '2024-09-04 17:18:41'),
(227, 107, 'SA', NULL, NULL, NULL, 'Riyadh', 'Isa Ath Thaqafi , hitteen , 13512', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-22 05:40:50', '2024-09-22 05:40:50'),
(228, 99, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16', '32', '423', '432', '43', '1422', NULL, 'rwe', '2024-09-30 16:57:30', '2024-09-30 16:57:30'),
(229, 91, 'BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '423', '4', '23', '423', '42', NULL, NULL, '2024-09-30 17:11:31', '2024-09-30 17:11:31'),
(230, 109, 'SA', NULL, NULL, NULL, 'Qatif', 'Albsateen', '3175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-01 15:42:52', '2024-10-01 15:42:52'),
(231, 110, 'SA', NULL, NULL, NULL, 'Riyadh', 'Al Malqa dist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-10 11:08:13', '2024-10-10 11:08:13');

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
(1, 'admin', 'admin@admin.com', '123456', NULL, NULL, '973', 'BH', 1, 1, NULL, '$2y$10$Ux05A7MTagNwS51QpRoEDe.nX1mKZyOy1xSLl1TjyeJP9O4Oy5i.2', 'u3vXgnbkkpysqwy9k0i0rDcFjwSzkusGURPkioMGnqd3amQOlhQHVmtUdqyN', NULL, '2022-10-09 11:52:15', '2023-11-28 13:48:05'),
(3, 'test', 'test@gmail.com', '123456789', NULL, NULL, '973', 'BH', 1, 1, NULL, '$2y$10$A3YAcGfNkKjpu2YhbTTOzujufTqhQ18vAwHVpwOqXl2XWXS.asA6S', NULL, '2024-03-10 14:55:44', '2024-03-10 14:55:01', '2024-03-10 14:55:44'),
(4, 'aya', 'test@gmail.com', '1234567', NULL, NULL, '973', 'BH', 1, 1, NULL, '$2y$10$LbwGDEMO4K30EIOy8sW.ROCarP9bkCIJ.VJSzA59uHOlja9varTp.', NULL, '2024-03-10 15:56:55', '2024-03-10 15:55:45', '2024-03-10 15:56:55'),
(5, 'test', 'test@gmail.com', '12345678', NULL, NULL, '973', 'BH', 1, 1, NULL, '$2y$10$3nOiE7OR4YznoP/ILrwgIuk7DREgxBP08oW28u3JgL0P2GTjwzlJK', NULL, '2024-03-10 16:03:01', '2024-03-10 16:02:25', '2024-03-10 16:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `client_id` varchar(20) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `width_id` bigint(20) DEFAULT NULL,
  `chest_width_id` bigint(20) DEFAULT NULL,
  `quantity` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `note`, `client_id`, `product_id`, `color_id`, `size_id`, `width_id`, `chest_width_id`, `quantity`, `created_at`, `updated_at`) VALUES
(60, NULL, '23', 4, 1, 8, NULL, NULL, 1, '2024-07-22 10:41:34', '2024-07-22 10:41:49'),
(63, NULL, '25', 11, 3, 10, NULL, NULL, 1, '2024-07-23 11:58:33', '2024-07-23 11:58:44'),
(64, NULL, '24', 6, 5, 10, NULL, NULL, 1, '2024-07-24 15:02:14', '2024-07-24 15:02:14'),
(65, NULL, '22', 11, 3, 1, NULL, NULL, 1, '2024-07-24 16:44:16', '2024-07-24 16:44:16'),
(66, NULL, '2', 8, 1, 1, NULL, NULL, 2, '2024-07-28 08:07:28', '2024-07-28 12:42:19'),
(113, NULL, '44', 13, 3, 1, NULL, NULL, 1, '2024-08-19 08:42:08', '2024-08-19 08:42:08'),
(114, NULL, '45', 22, 8, 1, NULL, NULL, 1, '2024-08-19 08:45:33', '2024-08-19 08:45:33'),
(206, NULL, '61', 13, 3, 1, NULL, NULL, 1, '2024-08-21 12:27:39', '2024-08-21 12:27:39'),
(210, NULL, '68', 28, 8, 1, NULL, NULL, 1, '2024-08-21 13:42:52', '2024-08-21 13:42:52'),
(211, NULL, '35', 15, 7, 1, NULL, NULL, 1, '2024-08-21 16:00:52', '2024-08-21 16:00:52'),
(231, NULL, '66', 15, 7, 1, NULL, NULL, 3, '2024-08-25 13:00:10', '2024-08-25 13:00:28'),
(255, NULL, '91', 15, 7, 1, NULL, NULL, 1, '2024-08-27 13:24:31', '2024-08-27 13:24:31'),
(256, NULL, '93', 25, 13, 1, NULL, NULL, 2, '2024-08-27 13:31:04', '2024-08-27 13:31:17'),
(257, NULL, 'guest_eyr22y', 15, 7, 1, NULL, NULL, 1, '2024-08-27 13:43:06', '2024-08-27 13:43:06'),
(258, NULL, '2', 15, 7, 1, NULL, NULL, 1, '2024-08-27 14:07:40', '2024-08-27 14:07:40'),
(259, NULL, 'guest_bkaMA9', 24, 4, 8, NULL, NULL, 1, '2024-08-27 17:10:47', '2024-08-27 17:10:47'),
(260, NULL, 'guest_Krlbxp', 50, 8, 1, NULL, NULL, 2, '2024-08-27 19:23:52', '2024-08-27 19:24:43'),
(261, NULL, 'guest_UKkuJ5', 50, 8, 1, NULL, NULL, 1, '2024-08-27 23:04:50', '2024-08-27 23:04:50'),
(262, NULL, 'guest_dImmWu', 50, 8, 1, NULL, NULL, 1, '2024-08-28 04:32:48', '2024-08-28 04:32:48'),
(263, NULL, 'guest_a1am6q', 50, 8, 1, NULL, NULL, 1, '2024-08-28 04:36:09', '2024-08-28 04:36:09'),
(264, NULL, 'guest_JSXhnI', 50, 8, 1, NULL, NULL, 1, '2024-08-28 06:35:16', '2024-08-28 06:35:16'),
(265, NULL, '86', 13, 3, 1, NULL, NULL, 3, '2024-08-28 12:00:04', '2024-08-28 12:07:03'),
(274, NULL, 'guest_dsukCL', 13, 3, 1, NULL, NULL, 1, '2024-08-28 13:52:16', '2024-08-28 14:04:29'),
(275, NULL, 'guest_8lKpYS', 15, 7, 1, NULL, NULL, 1, '2024-08-28 14:08:39', '2024-08-28 14:17:00'),
(278, NULL, 'guest_Ba0p71', 13, 3, 1, NULL, NULL, 1, '2024-08-29 12:44:07', '2024-08-29 12:47:54'),
(280, NULL, 'guest_RchBmF', 24, 4, 1, NULL, NULL, 1, '2024-09-05 08:52:21', '2024-09-05 08:52:21'),
(282, NULL, 'guest_Qo2XnF', 15, 7, 8, NULL, NULL, 1, '2024-09-22 16:42:37', '2024-09-22 16:42:37'),
(283, NULL, 'guest_sOT5AS', 15, 7, 1, NULL, NULL, 1, '2024-09-24 11:09:08', '2024-09-24 11:09:08'),
(284, NULL, 'guest_rkUHu2', 15, 7, 1, NULL, NULL, 1, '2024-09-24 13:02:27', '2024-09-24 13:02:27'),
(285, NULL, 'guest_PdL5lg', 13, 3, 1, NULL, NULL, 1, '2024-09-24 14:25:47', '2024-09-24 14:25:47'),
(286, NULL, 'guest_pSQ0Zb', 13, 3, 1, NULL, NULL, 1, '2024-09-24 14:26:25', '2024-09-24 14:26:25'),
(287, NULL, 'guest_s7yCAe', 15, 7, 1, NULL, NULL, 1, '2024-09-24 17:50:39', '2024-09-24 17:50:39'),
(288, NULL, 'guest_jPd23v', 19, 8, 1, NULL, NULL, 1, '2024-09-25 07:03:58', '2024-09-25 07:05:21'),
(289, NULL, 'guest_N4GlgD', 14, 4, 1, NULL, NULL, 1, '2024-09-25 08:43:48', '2024-09-25 08:43:48'),
(290, NULL, 'guest_5RKM8x', 15, 7, 1, NULL, NULL, 1, '2024-09-25 09:22:37', '2024-09-25 09:22:37'),
(291, NULL, 'guest_6sELBo', 19, 8, 11, NULL, NULL, 1, '2024-09-25 17:26:53', '2024-09-25 17:26:53'),
(292, NULL, 'guest_odpS3U', 53, 18, 1, NULL, NULL, 1, '2024-09-27 12:23:29', '2024-09-27 12:25:11'),
(293, NULL, 'guest_vccyec', 53, 18, 7, NULL, NULL, 1, '2024-09-27 12:44:33', '2024-09-27 12:44:33'),
(294, NULL, 'guest_qnQ4q3', 13, 3, 7, NULL, NULL, 1, '2024-09-29 06:22:17', '2024-09-29 06:22:17'),
(295, NULL, 'guest_qnQ4q3', 14, 4, 1, NULL, NULL, 1, '2024-09-29 06:22:46', '2024-09-29 06:22:46'),
(297, NULL, 'guest_TOT7Xl', 53, 18, 1, NULL, NULL, 1, '2024-09-30 13:30:09', '2024-09-30 13:30:09'),
(298, NULL, 'guest_NNtw1d', 15, 7, 1, NULL, NULL, 1, '2024-09-30 14:18:45', '2024-09-30 14:18:45'),
(301, NULL, 'guest_MwkK32', 55, 18, 1, NULL, NULL, 1, '2024-10-01 14:44:18', '2024-10-01 14:44:18'),
(304, NULL, 'guest_8hBbOi', 55, 19, 8, NULL, NULL, 1, '2024-10-01 16:45:04', '2024-10-01 16:45:04'),
(305, NULL, 'guest_qWj1gz', 15, 7, 1, NULL, NULL, 1, '2024-10-02 08:42:30', '2024-10-02 08:42:30'),
(306, NULL, 'guest_1ldgVD', 15, 7, 1, NULL, NULL, 1, '2024-10-02 08:55:47', '2024-10-02 08:55:47'),
(307, NULL, 'guest_GNNtCb', 15, 7, 1, NULL, NULL, 1, '2024-10-02 09:07:40', '2024-10-02 09:07:40'),
(308, NULL, 'guest_cHtD9z', 55, 19, 12, NULL, NULL, 1, '2024-10-03 17:48:53', '2024-10-03 17:48:53'),
(309, NULL, 'guest_24zF8c', 55, 19, 3, NULL, NULL, 1, '2024-10-05 09:37:30', '2024-10-05 09:37:30'),
(310, NULL, 'guest_Lvj3Dm', 15, 7, 8, NULL, NULL, 1, '2024-10-06 09:47:43', '2024-10-06 09:47:43'),
(311, NULL, 'guest_8oE6o0', 59, 13, 7, 4, NULL, 1, '2024-10-06 12:23:48', '2024-10-06 12:23:48'),
(312, NULL, 'guest_Lvj3Dm', 59, 13, 1, 2, NULL, 1, '2024-10-06 12:26:56', '2024-10-06 12:26:56'),
(313, NULL, 'guest_k7rUZB', 59, 8, 3, 3, NULL, 1, '2024-10-09 04:02:49', '2024-10-09 08:01:12'),
(314, NULL, 'guest_k7rUZB', 20, 14, 15, NULL, NULL, 1, '2024-10-09 08:01:07', '2024-10-09 08:01:07'),
(315, NULL, 'guest_9Am4iX', 25, 13, 2, NULL, NULL, 1, '2024-10-09 08:53:17', '2024-10-09 08:53:17'),
(316, NULL, 'guest_Px2Atu', 55, 18, 7, NULL, NULL, 1, '2024-10-10 07:27:43', '2024-10-10 07:27:43');

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
(4, 'ملابس العمل', 'WORK ATTIRE', 1, '2024-02-25 13:58:49', '2024-02-25 13:58:49'),
(8, 'يوميه', 'EVERYDAY', 1, '2024-09-27 12:03:36', '2024-09-27 12:03:36'),
(9, 'everyday', 'everyday', 0, '2024-10-05 11:22:13', '2024-10-05 11:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `chest_width`
--

CREATE TABLE `chest_width` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chest_width`
--

INSERT INTO `chest_width` (`id`, `title_ar`, `title_en`, `status`, `created_at`, `updated_at`) VALUES
(17, '1214', '1221', 0, '2024-09-30 14:52:05', '2024-09-30 14:53:50'),
(18, '312', '312', 0, '2024-09-30 14:55:00', '2024-09-30 14:55:00'),
(19, '5454', '5454', 0, '2024-09-30 14:55:17', '2024-09-30 14:55:17');

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
(2, 'Mostafa Mohamed', 'mostafazarea69@gmail.com', '33467117', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$nHllRfMliRe5ZLiLZbGzievD2RwLLNdm0uVr967YX.xCxefnd0ooG', NULL, NULL, '2024-02-27 16:07:35', '2024-02-28 14:02:26'),
(22, 'Maryam', 'meemalmahmood@gmail.com', '38868876', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$TTJox49NCsp0QMOcsA/Wzuze93G/gOCTAp9JzIvfEUgFAB0CRGag2', NULL, NULL, '2024-07-20 16:41:34', '2024-07-20 16:41:34'),
(23, 'maryam', 'meemalmahmood@gmail.com', '38868876', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$sagF97CHZx9fcAvKsJkJbuNy6dv/LpWLPT6h6m3RZdvY.m.Us5Ma6', NULL, NULL, '2024-07-22 08:29:53', '2024-07-22 08:29:53'),
(24, 'Maryam', 'maryaamzainal@gmail.com', '32227206', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$Vq5fOiGvQbwZ9aZ98TOd6ebspZ.m10d22whhEfzIBdkAgTB8qYi9S', NULL, NULL, '2024-07-22 08:48:39', '2024-07-22 08:48:39'),
(25, 'Khalid', 'khalidalmansourii91@gmail.com', '66669254', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$hVlMHgqG5OLyM23cy.lS7e831OKTKALKsQx/mfJDIPr4gb/UHKUp.', NULL, NULL, '2024-07-23 11:54:33', '2024-07-23 11:54:33'),
(26, 'Ahmed', 'ahmedybuch@hotmail.com', '32220865', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$uwBiGcUrwnA1/YqU5LhIXeLC/CuKlKijTmSdSgsRRyeMhiHynwrAC', NULL, NULL, '2024-07-31 21:49:16', '2024-07-31 21:49:16'),
(27, 'Ghaliah Turki Alakeel', 'ghaliakeel@gmail.com', '558952509', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$JqZ/YuUB37F8vGyoaur5..IGS6p/gBTIV/2HQYK5DX.sVvZdmV886', NULL, NULL, '2024-08-07 15:55:46', '2024-08-07 15:55:46'),
(29, 'Mariam Bhaijee', 'mariambhaijee@yahoo.co.uk', '7801591014', 0, 'logo.png', '+44', '44', '44', 1, NULL, '$2y$10$KD10/hCd0YG7XicCXBittudPFgfBtO7N3kS1H2FZL6xs3/7cWxnEe', NULL, NULL, '2024-08-12 07:40:35', '2024-08-12 07:40:35'),
(31, 'ali', 'eqw@admin.com', '44234234', 0, 'logo.png', '+385', '385', '385', 1, NULL, '$2y$10$26yLoGQK3H3ImaoHyee5n.NWmEJfQH65zfaP1.NTHq3hayR3vbqZG', NULL, NULL, '2024-08-14 11:49:37', '2024-08-14 11:49:37'),
(36, 'Hessa Alblooshi', 'hessahaikal@hotmail.com', '523300303', 0, 'logo.png', '+971', '971', '971', 1, NULL, '$2y$10$iLRkjYAefWRdJ1Z2EJQWfOsSgb9.Zuv4DpFAo/wnMVIqkMc7lbe9q', NULL, NULL, '2024-08-15 05:04:05', '2024-08-15 05:04:05'),
(41, 'Batoul Kattan', 'batoulkattan71@gmail.com', '567032716', 0, 'logo.png', '+966', '966', '966', 1, NULL, '$2y$10$CEykM5Z2PZZXocPh5Kv/vulJLhiQMJKIxP.ihbBGOh/dZFUR/Uf3O', NULL, NULL, '2024-08-19 07:05:20', '2024-08-19 07:05:20'),
(69, 'Wassan', 'wassan86@gmail.com', '56660776', 0, 'logo.png', '+965', '965', '965', 1, NULL, '$2y$10$yTAe28uoVOGhlv60vY.U8uZArtnBvNrEIS2ghWAMD8rtsDMREI/Xq', NULL, NULL, '2024-08-24 15:00:21', '2024-08-24 15:00:21'),
(73, 'Reham alotaibi', NULL, '55588124', 0, 'logo.png', '+965', '965', '965', 1, NULL, '$2y$10$hYIk8F1qn9VDpJBPKxHWY.Vf7fgaRuX.LES8BrvfckPgVc6PJ3.mm', NULL, NULL, '2024-08-26 07:04:14', '2024-08-26 07:04:14'),
(81, 'Tyyyuu', NULL, '56790008', 0, 'logo.png', '+973', '973', '973', 1, NULL, '$2y$10$ynjC/I1/RkZsASVfPdrDTuw6rU0LNvkSp1xCOsCHII0.TVTpTdH2a', NULL, '2024-08-26 12:53:47', '2024-08-26 11:58:17', '2024-08-26 12:53:47'),
(82, 'Ghhj', NULL, '56789909', 0, 'logo.png', '+973', '973', '973', 1, NULL, '$2y$10$xMuepDT3DpJk8FnXvKuaEuCZIBnwFL4IF6PXT0xs6ZdV55mNQDt6e', NULL, '2024-08-26 12:53:44', '2024-08-26 12:17:35', '2024-08-26 12:53:44'),
(83, 'ghrhrthrt', NULL, '34647645', 0, 'logo.png', '+973', '973', '973', 1, NULL, '$2y$10$Bm7w32YutEoUgx3NuhHlI.WswbsjINZn9b46F6BahDyUIczYVAe2a', NULL, '2024-08-26 12:53:37', '2024-08-26 12:23:27', '2024-08-26 12:53:37'),
(84, 'يبيب', NULL, '141717717777', 0, 'logo.png', '+973', '973', '973', 1, NULL, '$2y$10$/WQAzex6we/fEiau3BRys.SzMAXigC0ptwUHyuGKSJBSHiagbwcLy', NULL, NULL, '2024-08-26 13:08:14', '2024-08-26 13:08:14'),
(85, 'س', NULL, '345353453', 0, 'logo.png', '+973', '973', '973', 1, NULL, '$2y$10$Sn2JRNMFrxDM.kyzDzt95.XtKUKvS.A4nh7p30H64bUcYLhM43RfC', NULL, NULL, '2024-08-26 13:10:54', '2024-08-26 13:10:54'),
(86, 'test', 'rodainaosama00@gmail.com', '12345671', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$h7U7QqOCsQ63MHhaL3zLBOiCg4Hay1xqKCgsi4L1QnZMx7kemGeOy', NULL, '2024-08-28 12:41:27', '2024-08-26 13:33:09', '2024-08-28 12:41:27'),
(87, 'wefwf', NULL, '2132321424', 0, 'logo.png', '+973', '973', '973', 1, NULL, '$2y$10$aNa7XamGd31QPZBSp2yx7ukf/TV/aXxnau422NMEPQhJ.pXzYeVbC', NULL, '2024-08-28 09:22:22', '2024-08-26 13:49:17', '2024-08-28 09:22:22'),
(88, 'Tyy', NULL, '567899', 0, 'logo.png', '+973', '973', '973', 1, NULL, '$2y$10$xynt1vvuHgasRGiZw.NN9e8poyPyhAI3MzfnXQdExrZdyjHMyfJcW', NULL, '2024-08-28 09:22:37', '2024-08-26 14:13:41', '2024-08-28 09:22:37'),
(89, 'Lian Alshoaibi', 'lialshoaibi@gmail.com', '538183379', 0, 'logo.png', '+966', '966', '966', 1, NULL, '$2y$10$PlwGich1UcttnHqkPbd.Uutd7oGGQFyKRA6dxOT31KagOMgew3fY6', NULL, NULL, '2024-08-26 14:15:31', '2024-08-26 14:15:31'),
(91, 'sallam', 'sallam@gmail.com', '1551831192', 0, 'logo.png', '+20', 'EG', 'EG', 1, NULL, '$2y$10$z7a6rDnnsurqbjDINlMt0.jAtTj7HYGZZUJk.XrZnqwWTJKcX71aW', NULL, NULL, '2024-08-26 18:00:22', '2024-08-29 08:24:11'),
(92, 'test', 'test@emcan.com', '11111111', 0, 'logo.png', '+973', '973', '973', 1, NULL, '$2y$10$qESK.WaV4je5dCmQ3RHZTOPN6nD3A/x7IozueX0/BGxMy3268ik0S', NULL, '2024-08-28 09:22:02', '2024-08-27 10:36:30', '2024-08-28 09:22:02'),
(93, 'testtt', 'basma@test.com', '120 672 16', 0, 'logo.png', '+20', 'EG', 'EG', 1, NULL, '$2y$10$/Us3pF/CztuVR7pmceLxh.qQQ1hgARv/G1IPxwN2YtRw4zq1HAbdq', NULL, NULL, '2024-08-27 13:28:14', '2024-08-29 11:53:46'),
(94, 'ali', NULL, '234234', 0, 'logo.png', '+973', '973', '973', 1, NULL, '$2y$10$FmXwYqBc2PyM7qA9Qqb93.IKdjnWQhKWcyFNwdcNonSMOB.yuU/Em', NULL, NULL, '2024-08-28 06:36:00', '2024-08-28 06:36:00'),
(95, 'test sallam', NULL, '324', 0, 'logo.png', '+973', '973', '973', 1, NULL, '$2y$10$gUvrWYRhhbiATR9rKGna6utrR3gYxWJsCyQgFrNfTRGjh3KrV4nvq', NULL, NULL, '2024-08-28 06:39:32', '2024-08-28 06:39:32'),
(96, 'rodaina test emcan', 'rodainaosama00@gmail.com', '1090414929', 0, 'logo.png', '+20', 'EG', 'EG', 1, NULL, '$2y$10$Ds1NbajuNdVo5sWAIZfl.uaJqpy7gClPFbiMnfBGT8BVbsrvU1bCK', NULL, '2024-08-28 13:35:36', '2024-08-28 12:39:45', '2024-08-28 13:35:36'),
(97, 'sallamco', 'sallamco@admin.com', '12345678', 0, '/uploads/Clients/1724929513_4789.jpg', '+973', 'BH', 'BH', 1, NULL, '$2y$10$WQhY3JAEBqzpwE0bMQHvwu7mZaeiGnJBOFXdiBsE5sV1PZIsSR4K6', NULL, NULL, '2024-08-28 12:52:31', '2024-08-29 12:09:36'),
(98, 'hht', 'rodainaosama00@gmail.com', '1090414929', 0, 'logo.png', '+20', '20', '20', 1, NULL, '$2y$10$ERhdX17mphznFhKHNF8myum3NX2uBHLKggxmzkRdq.G8Az7QD7RiO', NULL, '2024-08-28 14:20:23', '2024-08-28 13:36:24', '2024-08-28 14:20:23'),
(99, 'sallam test3', 'sallamtest3@hotmail.com', '1551831193', 0, 'logo.png', '+20', 'EG', 'EG', 1, NULL, '$2y$10$TdtZMawJjQrtXPMQNJ.iG.3ecvtcuFc6BAUCSp8HXYyuWko9tepNC', NULL, NULL, '2024-08-28 13:41:41', '2024-08-28 13:41:41'),
(100, 'yyy', NULL, '1090414929', 0, 'logo.png', '+20', 'EG', 'EG', 1, NULL, '$2y$10$s8/ux4P3Uk9biBVLu0aWu.zbFWdgJsllb6elTaHrtCsCcX9Ix45Ly', NULL, '2024-08-28 14:20:15', '2024-08-28 14:17:38', '2024-08-28 14:20:15'),
(101, 'lll', NULL, '1090414929', 0, 'logo.png', '+20', 'EG', 'EG', 1, NULL, '$2y$10$LiRwgyVD.E0F.w3n9fq/ZOYDrx9QrXEkTMAXoyrNXzTMDx1OyE5oq', NULL, '2024-08-28 14:20:04', '2024-08-28 14:19:34', '2024-08-28 14:20:04'),
(102, 'rodaina test emcan', 'rodainaosama00@gmail.com', '1090414929', 0, 'logo.png', '+20', 'EG', 'EG', 1, NULL, '$2y$10$cdQTB5cJ7OWnIGvLfPhrnORJpJSZiZWgjmj7fUnkWTC3wSyyk7vQG', NULL, NULL, '2024-08-28 14:22:14', '2024-08-29 12:37:53'),
(104, 'ewdw', NULL, '1090414929', 0, 'logo.png', '+20', 'EG', 'EG', 1, NULL, '$2y$10$MTxp7nIxm2RZ3V5czCsnBO8cNc23E2pxiE1QhwqTD6l1ey0FDWGLO', NULL, '2024-08-29 12:34:54', '2024-08-29 12:33:49', '2024-08-29 12:34:54'),
(105, 'tuyujt', 'rodainaosama00@gmail.com', '1090414929', 0, 'logo.png', '+20', 'EG', 'EG', 1, NULL, '$2y$10$jfsrts4YBg4xWH3WhJRuS.BhI2M8HerAt0.n3gv2atljelFH2wXjS', NULL, '2024-08-29 12:35:28', '2024-08-29 12:35:17', '2024-08-29 12:35:28'),
(106, 'Thank you for registering - it was incredible and pleasant all the best cucumber  ladonna 602426', 'xrum001@24red.ru', 'Thank you for Thank you for registering - it was incredible and pleasant all the best http://bymariams.com ladonna cucumber', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$bFi5ubokF1sl9cXCfuOR9uRP2bgpWbO7roLLNND18aYktxLDjti.G', NULL, NULL, '2024-09-15 02:48:27', '2024-09-15 02:48:27'),
(107, 'Rofan Alsultan', 'rovan1418s@outlook.com', '533311313', 0, 'logo.png', '966', '966', '966', 1, NULL, '$2y$10$6I/42nG2MY3A4IPgQAlNqe4dbLi99o12g96ElvVfRqBIthIhiSw52', NULL, NULL, '2024-09-22 05:40:50', '2024-09-22 05:40:50'),
(108, 'Thank you for registering - it was incredible and pleasant all the best cucumber  ladonna 430365', 'xrum003@24red.ru', 'Thank you for Thank you for registering - it was incredible and pleasant all the best http://bymariams.com ladonna cucumber', 0, 'logo.png', '+973', 'BH', 'BH', 1, NULL, '$2y$10$XZVdoR5HtYdJIgaeOCWj1eN55fRdrElA5LaRoGVDiik8ZeHMC1cm6', NULL, NULL, '2024-09-23 21:53:25', '2024-09-23 21:53:25'),
(109, 'Kauther Albadrani', 'kjalbadra@hotmail.com', '539689873', 0, 'logo.png', '966', '966', '966', 1, NULL, '$2y$10$fivWTXsgoW3vxazQ9kU5quSa2TY5QQEjW7NKsnMjtt1emTiPp7NjK', NULL, NULL, '2024-10-01 15:42:52', '2024-10-01 15:42:52'),
(110, 'Waad Almatrafi', 'waadalmatrafii@gmail.com', '547091232', 0, 'logo.png', '966', '966', '966', 1, NULL, '$2y$10$F5HZYysEKUdCz8ZgAd6dHOxjzQlnw/NXS.SEyMDm432fYLIC8jeIq', NULL, NULL, '2024-10-10 11:08:13', '2024-10-10 11:08:13');

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
(3, 'أخضر', 'Green', '#40f000', 0, '2021-06-07 08:22:08', '2022-03-04 18:36:41'),
(4, 'أزرق', 'Blue', '#2206b2', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:44'),
(5, 'نيلى', 'Indigo', '#4B0082', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:46'),
(6, 'بنفسجى', 'Violet', '#8F00FF', 1, '2021-06-07 08:22:08', '2022-03-04 18:36:52'),
(7, 'الزيتي', 'Dark green', '#013220 ', 1, '2021-06-14 15:33:35', '2022-03-04 18:36:50'),
(8, 'أسود', 'Black', '#000', 1, '2021-06-14 15:33:57', '2022-03-04 18:36:56'),
(9, 'أبيض', 'White', '#ffffff', 1, '2021-06-14 15:34:18', '2022-03-04 18:36:54'),
(10, 'سماوي', 'Light blue', '#ADD8E6', 1, '2021-06-14 15:34:47', '2022-03-04 18:37:08'),
(11, 'وردي', 'Pink', '#FFC0CB ', 1, '2021-06-15 04:38:41', '2022-03-04 18:37:07'),
(12, 'ماروني', 'Maroon', '#800000', 1, '2021-06-15 06:20:03', '2022-03-04 18:37:04'),
(13, 'بيج', 'Beige', '#ffd8af', 1, '2021-06-15 07:27:35', '2024-08-16 07:40:20'),
(14, 'بني', 'Brown', '#964b00', 1, '2021-06-15 08:25:03', '2024-08-26 14:59:10'),
(18, 'dark gray', 'dark gay', '#474747', 1, '2024-09-27 11:59:52', '2024-09-27 11:59:52'),
(19, 'light gray', 'light gray', '#adadad', 1, '2024-09-27 12:00:07', '2024-09-27 12:00:07'),
(20, 'beige', 'beige', '#eae6dc', 1, '2024-09-27 12:02:32', '2024-09-27 12:02:32'),
(21, 'beige & blue', 'beige & blue', '#ffffff', 1, '2024-10-05 10:08:58', '2024-10-05 10:08:58'),
(22, 'black & gray', 'black &gray', '#ffffff', 1, '2024-10-05 10:35:34', '2024-10-05 10:35:34'),
(23, 'blue & blue', 'blue & blue', '#ffffff', 1, '2024-10-05 10:35:46', '2024-10-05 10:35:46'),
(24, 'gray', 'gray', '#707070', 1, '2024-10-05 10:36:08', '2024-10-05 10:36:08');

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
(1, 'Emery Clark', '+1 (452) 621-7461', 'xibibar@mailinator.com', 'Laboris voluptatem o', 'Fugiat dolor aliqua', '2024-02-28 12:37:29', '2024-02-28 12:37:29'),
(2, 'Frederick D', '3128780396', 'pat@aneesho.com', 'Design Work', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?   We charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', '2024-04-06 10:27:47', '2024-04-06 10:27:47'),
(3, 'Frederick D', '3128780396', 'pat@aneesho.com', 'Design Work', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?   We charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', '2024-04-06 10:31:34', '2024-04-06 10:31:34'),
(4, 'ttt', '213214234', 'wtwe', 'rfe', 'ege', '2024-08-19 09:22:25', '2024-08-19 09:22:25'),
(5, 'cucumber naw and  ladonna and good and addon spark, all people good  http://ya.ru', 'cucumber naw and  ladonna and good and addon spark, all people good  http://ya.ru', 'amd01@24red.ru', 'cucumber naw and  ladonna and good and addon spark, all people good  http://ya.ru', 'cucumber naw and  ladonna and good and addon spark, all people good  http://ya.ru', '2024-10-09 10:09:51', '2024-10-09 10:09:51');

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
  `currancy_value` decimal(9,3) NOT NULL DEFAULT 0.000,
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
(1, 'البحرين', 'Bahrain', 'دينار بحريني', 'BHD', 1.000, '+973', 'BH', '25.93041400', '50.63777200', 1, 1, 8, 3, '/countries/Bahrain.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(2, 'المملكة العربية السعودية', 'Saudi Arabia', 'ريال سعودي', 'SAR', 10.000, '+966', 'SA', '23.88594200', '45.07916200', 1, 1, 9, 1, '/countries/SaudiArabia.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(3, 'سلطنة عمان', 'Oman', 'ريال عماني', 'OR', 1.020, '+968', 'OM', '21.51258300', '55.92325500', 1, 1, 10, 1, '/countries/Oman.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(4, 'الإمارات العربية المتحدة', 'United Arab Emirates', 'درهم إماراتي', 'AED', 10.000, '+971', 'AE', '23.42407600', '53.84781800', 1, 1, 9, 1, '/countries/UnitedArabEmirates.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(5, 'قطر', 'Qatar', 'ريال قطري', 'QR', 10.000, '+974', 'QA', '25.35482600', '51.18388400', 1, 1, 10, 1, '/countries/Qatar.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(6, 'الكويت', 'Kuwait', 'دينار كويتي', 'KWD', 0.810, '+965', 'KW', '29.31166000', '47.48176600', 1, 1, 10, 1, '/countries/Kuwait.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(7, 'انجلترا', 'England', 'جنيه استرلينى', 'GBP', 2.010, '+44', 'EN', '52.7204885', ',-7.6159144', 1, 1, 10, 1, '/countries/england.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(8, 'الولايات المتحدة الأمريكية', 'United States', 'دولار أمريكي', 'USD', 2.650, '+1', 'US', '37.0902', '-95.7129', 1, 1, 8, 2, '/countries/usa.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(9, 'الاتحاد الأوروبى', 'European Union', 'يورو', 'EUR', 2.390, '', 'EUR', '', '', 1, 1, 10, 1, '/countries/euoro.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(10, 'مصر', 'Egypt', 'جنيه مصري', 'EGP', 129.000, '+20', 'EG', '26.82055300', '30.80249800', 1, 1, 10, 1, '/countries/Egypt.png', '2022-10-09 13:52:15', '2023-10-15 16:19:25'),
(15, 'العراق', 'Iraq', 'دينار عراقي', 'IQD', 1.000, '+964', 'IQ', '33.3152', '44.3661', 1, 1, 8, 3, '/countries/Iraq.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(16, 'الأردن', 'Jordan', 'دينار أردني', 'JOD', 1.410, '+962', 'JO', '31.9632', '35.9304', 1, 1, 8, 3, '/countries/Jordan.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(17, 'لبنان', 'Lebanon', 'ليرة لبنانية', 'LBP', 0.001, '+961', 'LB', '33.8547', '35.8623', 1, 1, 8, 3, '/countries/Lebanon.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(18, 'سوريا', 'Syria', 'ليرة سورية', 'SYP', 0.002, '+963', 'SY', '34.8021', '38.9968', 1, 1, 8, 3, '/countries/Syria.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(19, 'المغرب', 'Morocco', 'درهم مغربي', 'MAD', 0.110, '+212', 'MA', '31.7917', '-7.0926', 1, 1, 8, 3, '/countries/Morocco.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(20, 'تونس', 'Tunisia', 'دينار تونسي', 'TND', 0.350, '+216', 'TN', '33.8869', '9.5375', 1, 1, 8, 3, '/countries/Tunisia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(21, 'الجزائر', 'Algeria', 'دينار جزائري', 'DZD', 0.007, '+213', 'DZ', '28.0339', '1.6596', 1, 1, 8, 3, '/countries/Algeria.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(22, 'ليبيا', 'Libya', 'دينار ليبي', 'LYD', 0.200, '+218', 'LY', '26.3351', '17.2283', 1, 1, 8, 3, '/countries/Libya.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(23, 'فلسطين', 'Palestine', 'شيكل إسرائيلي جديد', 'ILS', 0.280, '+970', 'PS', '31.9522', '35.2332', 1, 1, 8, 3, '/countries/Palestine.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(24, 'السودان', 'Sudan', 'جنيه سوداني', 'SDG', 0.002, '+249', 'SD', '12.8628', '30.2176', 1, 1, 8, 3, '/countries/Sudan.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(25, 'اليمن', 'Yemen', 'ريال يمني', 'YER', 0.004, '+967', 'YE', '15.5527', '48.5164', 1, 1, 8, 3, '/countries/Yemen.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(26, 'ألمانيا', 'Germany', 'يورو', 'EUR', 1.000, '+49', 'DE', '51.1657', '10.4515', 1, 1, 8, 2, '/countries/Germany.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(27, 'فرنسا', 'France', 'يورو', 'EUR', 1.000, '+33', 'FR', '46.6034', '1.8883', 1, 1, 8, 2, '/countries/France.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(28, 'إيطاليا', 'Italy', 'يورو', 'EUR', 1.000, '+39', 'IT', '41.8719', '12.5674', 1, 1, 8, 2, '/countries/Italy.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(29, 'إسبانيا', 'Spain', 'يورو', 'EUR', 1.000, '+34', 'ES', '40.4637', '-3.7492', 1, 1, 8, 2, '/countries/Spain.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(30, 'البرتغال', 'Portugal', 'يورو', 'EUR', 1.000, '+351', 'PT', '39.3999', '-8.2245', 1, 1, 8, 2, '/countries/Portugal.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(31, 'المملكة المتحدة', 'United Kingdom', 'جنيه إسترليني', 'GBP', 0.760, '+44', 'GB', '55.3781', '-3.4360', 1, 1, 8, 2, '/countries/United_Kingdom.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(32, 'أستراليا', 'Australia', 'دولار أسترالي', 'AUD', 0.670, '+61', 'AU', '-25.2744', '133.7751', 1, 1, 8, 2, '/countries/Australia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(33, 'كندا', 'Canada', 'دولار كندي', 'CAD', 0.740, '+1', 'CA', '56.1304', '-106.3468', 1, 1, 8, 2, '/countries/Canada.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(34, 'البرازيل', 'Brazil', 'ريال برازيلي', 'BRL', 0.190, '+55', 'BR', '-14.2350', '-51.9253', 1, 1, 8, 2, '/countries/Brazil.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(35, 'الأرجنتين', 'Argentina', 'بيزو أرجنتيني', 'ARS', 0.004, '+54', 'AR', '-38.4161', '-63.6167', 1, 1, 8, 2, '/countries/Argentina.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(36, 'المكسيك', 'Mexico', 'بيزو مكسيكي', 'MXN', 0.055, '+52', 'MX', '23.6345', '-102.5528', 1, 1, 8, 2, '/countries/Mexico.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(38, 'ألبانيا', 'Albania', 'ليك', 'ALL', 0.009, '+355', 'AL', '41.1533', '20.1683', 1, 1, 8, 2, '/countries/Albania.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(39, 'أندورا', 'Andorra', 'يورو', 'EUR', 1.000, '+376', 'AD', '42.5078', '1.5211', 1, 1, 8, 2, '/countries/Andorra.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(40, 'أرمينيا', 'Armenia', 'درام أرمني', 'AMD', 0.003, '+374', 'AM', '40.0694', '45.0382', 1, 1, 8, 2, '/countries/Armenia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(41, 'أستراليا', 'Australia', 'دولار أسترالي', 'AUD', 0.670, '+61', 'AU', '-25.2744', '133.7751', 1, 1, 8, 2, '/countries/Australia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(42, 'النمسا', 'Austria', 'يورو', 'EUR', 1.000, '+43', 'AT', '47.5162', '14.5501', 1, 1, 8, 2, '/countries/Austria.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(43, 'أذربيجان', 'Azerbaijan', 'منات أذربيجاني', 'AZN', 0.590, '+994', 'AZ', '40.1431', '47.5769', 1, 1, 8, 2, '/countries/Azerbaijan.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(44, 'بيلاروس', 'Belarus', 'روبل بيلاروسي', 'BYN', 0.390, '+375', 'BY', '53.7098', '27.9534', 1, 1, 8, 2, '/countries/Belarus.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(45, 'بلجيكا', 'Belgium', 'يورو', 'EUR', 1.000, '+32', 'BE', '50.8503', '4.3517', 1, 1, 8, 2, '/countries/Belgium.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(46, 'بنين', 'Benin', 'فرنك غرب أفريقي', 'XOF', 0.002, '+229', 'BJ', '9.3085', '2.3158', 1, 1, 8, 3, '/countries/Benin.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(47, 'بوتان', 'Bhutan', 'نغولترم بوتاني', 'BTN', 0.012, '+975', 'BT', '27.5142', '90.4336', 1, 1, 8, 3, '/countries/Bhutan.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(48, 'بوليفيا', 'Bolivia', 'بوليفيانو', 'BOB', 0.140, '+591', 'BO', '-16.5000', '-68.1193', 1, 1, 8, 2, '/countries/Bolivia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(49, 'البوسنة والهرسك', 'Bosnia and Herzegovina', 'مارك بوسني', 'BAM', 0.550, '+387', 'BA', '43.9159', '17.6791', 1, 1, 8, 2, '/countries/Bosnia_and_Herzegovina.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(50, 'بوتسوانا', 'Botswana', 'بولا بوتسواني', 'BWP', 0.091, '+267', 'BW', '-22.3285', '23.1682', 1, 1, 8, 2, '/countries/Botswana.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(51, 'بروناي', 'Brunei', 'دولار بروناي', 'BND', 0.730, '+673', 'BN', '4.5353', '114.7277', 1, 1, 8, 2, '/countries/Brunei.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(52, 'بلغاريا', 'Bulgaria', 'ليف بلغاري', 'BGN', 0.560, '+359', 'BG', '42.7339', '25.4858', 1, 1, 8, 2, '/countries/Bulgaria.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(53, 'بوروندي', 'Burundi', 'فرنك بوروندي', 'BIF', 0.001, '+257', 'BI', '-3.3731', '29.9189', 1, 1, 8, 3, '/countries/Burundi.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(54, 'كابو فيردي', 'Cape Verde', 'إسكودو كاب فيردي', 'CVE', 0.009, '+238', 'CV', '16.0024', '-24.0132', 1, 1, 8, 2, '/countries/Cape_Verde.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(55, 'كامبوديا', 'Cambodia', 'ريال كمبودي', 'KHR', 0.000, '+855', 'KH', '12.5657', '104.9910', 1, 1, 8, 3, '/countries/Cambodia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(56, 'الكاميرون', 'Cameroon', 'فرنك إفريقي', 'XAF', 0.002, '+237', 'CM', '7.3697', '12.3547', 1, 1, 8, 3, '/countries/Cameroon.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(57, 'كندا', 'Canada', 'دولار كندي', 'CAD', 0.740, '+1', 'CA', '56.1304', '-106.3468', 1, 1, 8, 2, '/countries/Canada.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(58, 'تشيلي', 'Chile', 'بيزو تشيلي', 'CLP', 0.001, '+56', 'CL', '-35.6751', '-71.5430', 1, 1, 8, 3, '/countries/Chile.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(59, 'الصين', 'China', 'يوان صيني', 'CNY', 0.140, '+86', 'CN', '35.8617', '104.1954', 1, 1, 8, 2, '/countries/China.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(60, 'كولومبيا', 'Colombia', 'بيزو كولومبي', 'COP', 0.000, '+57', 'CO', '4.5709', '-74.2973', 1, 1, 8, 2, '/countries/Colombia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(61, 'جزر القمر', 'Comoros', 'فرنك القمر', 'KMF', 0.002, '+269', 'KM', '-11.8750', '43.8722', 1, 1, 8, 3, '/countries/Comoros.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(62, 'الكونغو', 'Congo', 'فرنك كونغولي', 'CDF', 0.001, '+243', 'CD', '-4.0383', '21.7587', 1, 1, 8, 3, '/countries/Congo.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(63, 'كوستاريكا', 'Costa Rica', 'كولون كوستاريكي', 'CRC', 0.002, '+506', 'CR', '9.7489', '-83.7534', 1, 1, 8, 2, '/countries/Costa_Rica.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(64, 'كرواتيا', 'Croatia', ' kuna ', 'HRK', 0.140, '+385', 'HR', '45.1000', '15.2000', 1, 1, 8, 2, '/countries/Croatia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(65, 'كوبا', 'Cuba', 'بيزو كوبا', 'CUP', 0.041, '+53', 'CU', '21.5218', '-77.7812', 1, 1, 8, 2, '/countries/Cuba.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(66, 'قبرص', 'Cyprus', 'يورو', 'EUR', 1.000, '+357', 'CY', '35.1264', '33.4299', 1, 1, 8, 2, '/countries/Cyprus.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(67, 'جمهورية التشيك', 'Czech Republic', 'كرونة تشيكية', 'CZK', 0.045, '+420', 'CZ', '49.8175', '15.4730', 1, 1, 8, 2, '/countries/Czech_Republic.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(68, 'الدنمارك', 'Denmark', 'كرونة دنماركية', 'DKK', 0.140, '+45', 'DK', '56.2639', '9.5018', 1, 1, 8, 2, '/countries/Denmark.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(69, 'جمهورية الدومينيكان', 'Dominican Republic', 'بيزو دومينيكاني', 'DOP', 0.018, '+1', 'DO', '18.7357', '-70.1627', 1, 1, 8, 2, '/countries/Dominican_Republic.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(70, 'تيمور الشرقية', 'East Timor', 'دولار تيموري', 'USD', 1.000, '+670', 'TL', '-8.8742', '125.7275', 1, 1, 8, 2, '/countries/East_Timor.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(71, 'الإكوادور', 'Ecuador', 'دولار أمريكي', 'USD', 1.000, '+593', 'EC', '-1.8312', '-78.1834', 1, 1, 8, 2, '/countries/Ecuador.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(72, 'مصر', 'Egypt', 'جنيه مصري', 'EGP', 0.032, '+20', 'EG', '26.8205', '30.8025', 1, 1, 8, 2, '/countries/Egypt.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(73, 'السلفادور', 'El Salvador', 'دولار أمريكي', 'USD', 1.000, '+503', 'SV', '13.7942', '-88.8965', 1, 1, 8, 2, '/countries/El_Salvador.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(74, 'غينيا الاستوائية', 'Equatorial Guinea', 'فرنك وسط أفريقي', 'XAF', 0.002, '+240', 'GQ', '1.6500', '10.2679', 1, 1, 8, 3, '/countries/Equatorial_Guinea.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(75, 'إريتريا', 'Eritrea', 'ناكفا إريتري', 'ERN', 0.067, '+291', 'ER', '15.1792', '39.7823', 1, 1, 8, 3, '/countries/Eritrea.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(76, 'إستونيا', 'Estonia', 'يورو', 'EUR', 1.000, '+372', 'EE', '58.5953', '25.0136', 1, 1, 8, 2, '/countries/Estonia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(77, 'إثيوبيا', 'Ethiopia', 'بير', 'ETB', 0.020, '+251', 'ET', '9.1450', '40.4897', 1, 1, 8, 2, '/countries/Ethiopia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(78, 'فيجي', 'Fiji', 'دولار فيجي', 'FJD', 0.450, '+679', 'FJ', '-17.7134', '178.0650', 1, 1, 8, 2, '/countries/Fiji.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(79, 'فنلندا', 'Finland', 'يورو', 'EUR', 1.000, '+358', 'FI', '61.9241', '25.7482', 1, 1, 8, 2, '/countries/Finland.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(81, 'الغابون', 'Gabon', 'فرنك وسط أفريقي', 'XAF', 0.002, '+241', 'GA', '-0.8037', '11.6094', 1, 1, 8, 3, '/countries/Gabon.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(82, 'غامبيا', 'Gambia', 'دولار جامبي', 'GMD', 0.020, '+220', 'GM', '13.4432', '-15.3101', 1, 1, 8, 3, '/countries/Gambia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(83, 'جورجيا', 'Georgia', 'لاري جورجي', 'GEL', 0.370, '+995', 'GE', '42.3154', '43.3569', 1, 1, 8, 2, '/countries/Georgia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(84, 'ألمانيا', 'Germany', 'يورو', 'EUR', 1.000, '+49', 'DE', '51.1657', '10.4515', 1, 1, 8, 2, '/countries/Germany.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(85, 'غانا', 'Ghana', 'سيدي غاني', 'GHS', 0.075, '+233', 'GH', '7.9465', '-1.0232', 1, 1, 8, 2, '/countries/Ghana.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(86, 'غرينادا', 'Grenada', 'دولار غرينادي', 'XCD', 0.370, '+1', 'GD', '12.1165', '-61.6784', 1, 1, 8, 2, '/countries/Grenada.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(87, 'غواتيمالا', 'Guatemala', 'كيال غواتيمالي', 'GTQ', 0.130, '+502', 'GT', '15.7835', '-90.2308', 1, 1, 8, 2, '/countries/Guatemala.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(88, 'غينيا', 'Guinea', 'فرنك غيني', 'GNF', 0.000, '+224', 'GN', '9.9456', '-9.6966', 1, 1, 8, 3, '/countries/Guinea.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(89, 'غينيا بيساو', 'Guinea-Bissau', 'فرنك غرب أفريقي', 'XOF', 0.002, '+245', 'GW', '11.8037', '-15.1804', 1, 1, 8, 3, '/countries/Guinea-Bissau.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(90, 'غيان', 'Guyana', 'دولار غياني', 'GYD', 0.005, '+592', 'GY', '4.8604', '-58.9302', 1, 1, 8, 2, '/countries/Guyana.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(91, 'هايتي', 'Haiti', 'جورد هاييتي', 'HTG', 0.072, '+509', 'HT', '18.9712', '-72.2852', 1, 1, 8, 3, '/countries/Haiti.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(92, 'هندوراس', 'Honduras', 'لمبيرا هندوراسي', 'HNL', 0.040, '+504', 'HN', '13.5000', '-83.0000', 1, 1, 8, 2, '/countries/Honduras.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(93, 'المجر', 'Hungary', 'فورنت مجري', 'HUF', 0.003, '+36', 'HU', '47.1625', '19.5033', 1, 1, 8, 2, '/countries/Hungary.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(94, 'أيسلندا', 'Iceland', 'كرونة أيسلندية', 'ISK', 0.007, '+354', 'IS', '64.9631', '-19.0208', 1, 1, 8, 2, '/countries/Iceland.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(95, 'الهند', 'India', 'روبية هندية', 'INR', 0.012, '+91', 'IN', '20.5937', '78.9629', 1, 1, 8, 2, '/countries/India.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(96, 'إندونيسيا', 'Indonesia', 'روبية إندونيسية', 'IDR', 0.000, '+62', 'ID', '-0.7893', '113.9213', 1, 1, 8, 3, '/countries/Indonesia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(97, 'إيران', 'Iran', 'ريال إيراني', 'IRR', 0.000, '+98', 'IR', '32.4279', '53.6880', 1, 1, 8, 3, '/countries/Iran.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(98, 'العراق', 'Iraq', 'دينار عراقي', 'IQD', 0.001, '+964', 'IQ', '33.2232', '43.6793', 1, 1, 8, 3, '/countries/Iraq.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(99, 'أيرلندا', 'Ireland', 'يورو', 'EUR', 1.000, '+353', 'IE', '53.4129', '-8.2439', 1, 1, 8, 2, '/countries/Ireland.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(100, 'إسرائيل', 'Israel', 'شيكل إسرائيلي', 'ILS', 0.280, '+972', 'IL', '31.0461', '34.8516', 1, 1, 8, 2, '/countries/Israel.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(101, 'إيطاليا', 'Italy', 'يورو', 'EUR', 1.000, '+39', 'IT', '41.8719', '12.5674', 1, 1, 8, 2, '/countries/Italy.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(102, 'جامايكا', 'Jamaica', 'دولار جامايكي', 'JMD', 0.007, '+1', 'JM', '18.1096', '-77.2975', 1, 1, 8, 3, '/countries/Jamaica.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(103, 'اليابان', 'Japan', 'ين ياباني', 'JPY', 0.007, '+81', 'JP', '36.2048', '138.2529', 1, 1, 8, 2, '/countries/Japan.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(104, 'الأردن', 'Jordan', 'دينار أردني', 'JOD', 1.410, '+962', 'JO', '30.5852', '36.2384', 1, 1, 8, 3, '/countries/Jordan.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(105, 'كازاخستان', 'Kazakhstan', 'تنج', 'KZT', 0.002, '+7', 'KZ', '48.0196', '66.9237', 1, 1, 8, 2, '/countries/Kazakhstan.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(106, 'كينيا', 'Kenya', 'شيلينغ كيني', 'KES', 0.007, '+254', 'KE', '-0.0236', '37.9062', 1, 1, 8, 3, '/countries/Kenya.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(107, 'كيريباتي', 'Kiribati', 'دولار كيريباسي', 'AUD', 0.001, '+686', 'KI', '-3.3704', '-168.734', 1, 1, 8, 3, '/countries/Kiribati.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(108, 'كوريا الشمالية', 'North Korea', 'وون كوري شمالي', 'KPW', 0.001, '+850', 'KP', '40.3399', '127.5101', 1, 1, 8, 3, '/countries/North_Korea.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(109, 'كوريا الجنوبية', 'South Korea', 'وون كوري جنوبي', 'KRW', 0.001, '+82', 'KR', '35.9078', '127.7669', 1, 1, 8, 2, '/countries/South_Korea.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(110, 'كوسوفو', 'Kosovo', 'يورو', 'EUR', 1.000, '+383', 'XK', '42.6026', '20.9028', 1, 1, 8, 2, '/countries/Kosovo.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(111, 'كرواتيا', 'Croatia', ' kuna', 'HRK', 0.140, '+385', 'HR', '45.1', '15.2', 1, 1, 8, 2, '/countries/Croatia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(112, 'كينيا', 'Kenya', 'شيلينغ كيني', 'KES', 0.007, '+254', 'KE', '-0.0236', '37.9062', 1, 1, 8, 3, '/countries/Kenya.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(113, 'لاوس', 'Laos', 'كيب', 'LAK', 0.000, '+856', 'LA', '19.8563', '102.4955', 1, 1, 8, 3, '/countries/Laos.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(114, 'لاتفيا', 'Latvia', 'يورو', 'EUR', 1.000, '+371', 'LV', '56.8796', '24.6032', 1, 1, 8, 2, '/countries/Latvia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(115, 'لبنان', 'Lebanon', 'ليرة لبنانية', 'LBP', 0.001, '+961', 'LB', '33.8547', '35.8623', 1, 1, 8, 3, '/countries/Lebanon.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(116, 'ليسوتو', 'Lesotho', 'راند لوسوتي', 'LSL', 0.053, '+266', 'LS', '-29.6094', '28.2336', 1, 1, 8, 3, '/countries/Lesotho.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(117, 'ليبيريا', 'Liberia', 'دولار ليبيري', 'LRD', 0.005, '+231', 'LR', '6.4281', '-9.4295', 1, 1, 8, 3, '/countries/Liberia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(118, 'ليبيا', 'Libya', 'دينار ليبي', 'LYD', 0.180, '+218', 'LY', '26.3351', '17.2286', 1, 1, 8, 3, '/countries/Libya.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(119, 'الليتوانيا', 'Lithuania', 'يورو', 'EUR', 1.000, '+370', 'LT', '55.1694', '23.8813', 1, 1, 8, 2, '/countries/Lithuania.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(120, 'لوكسمبورغ', 'Luxembourg', 'يورو', 'EUR', 1.000, '+352', 'LU', '49.8153', '6.1296', 1, 1, 8, 2, '/countries/Luxembourg.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(121, 'مدغشقر', 'Madagascar', 'أرياري مداجاسكري', 'MGA', 0.000, '+261', 'MG', '-18.7669', '46.8691', 1, 1, 8, 3, '/countries/Madagascar.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(122, 'مالي', 'Mali', 'فرنك غرب أفريقي', 'XOF', 0.002, '+223', 'ML', '17.5707', '-3.9962', 1, 1, 8, 3, '/countries/Mali.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(123, 'مالطا', 'Malta', 'يورو', 'EUR', 1.000, '+356', 'MT', '35.9375', '14.3754', 1, 1, 8, 2, '/countries/Malta.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(124, 'ماروكو', 'Morocco', 'درهم مغربي', 'MAD', 0.095, '+212', 'MA', '31.7917', '-7.0926', 1, 1, 8, 2, '/countries/Morocco.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(125, 'موزمبيق', 'Mozambique', 'ميتكال', 'MZN', 0.017, '+258', 'MZ', '-18.6657', '35.5296', 1, 1, 8, 3, '/countries/Mozambique.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(126, 'ميانمار', 'Myanmar', 'كيات', 'MMK', 0.000, '+95', 'MM', '21.9137', '95.9560', 1, 1, 8, 3, '/countries/Myanmar.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(127, 'ناميبيا', 'Namibia', 'دولار ناميبي', 'NAD', 0.053, '+264', 'NA', '-22.9576', '18.4904', 1, 1, 8, 3, '/countries/Namibia.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(128, 'ناورو', 'Nauru', 'دولار أسترالي', 'AUD', 0.001, '+674', 'NR', '-0.5228', '166.9314', 1, 1, 8, 3, '/countries/Nauru.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(129, 'نيوزيلندا', 'New Zealand', 'دولار نيوزيلندي', 'NZD', 0.001, '+64', 'NZ', '-40.9006', '174.8860', 1, 1, 8, 2, '/countries/New_Zealand.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(130, 'نيبال', 'Nepal', 'روبية نيبالية', 'NPR', 0.007, '+977', 'NP', '28.3949', '84.1240', 1, 1, 8, 3, '/countries/Nepal.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(131, 'نيجيريا', 'Nigeria', 'نايرا نيجيرية', 'NGN', 0.001, '+234', 'NG', '9.0820', '8.6753', 1, 1, 8, 3, '/countries/Nigeria.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(132, 'هولندا', 'Netherlands', 'يورو', 'EUR', 1.000, '+31', 'NL', '52.3676', '4.9041', 1, 1, 8, 2, '/countries/Netherlands.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(133, 'هندوراس', 'Honduras', 'لمبيرا', 'HNL', 0.040, '+504', 'HN', '13.5000', '-83.0000', 1, 1, 8, 3, '/countries/Honduras.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(134, 'هونغ كونغ', 'Hong Kong', 'دولار هونغ كونغ', 'HKD', 0.000, '+852', 'HK', '22.3193', '114.1694', 1, 1, 8, 3, '/countries/Hong_Kong.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(136, 'الأوروغواي', 'Uruguay', 'بيزو أوروغوياني', 'UYU', 0.027, '+598', 'UY', '-32.5228', '-55.7650', 1, 1, 8, 3, '/countries/Uruguay.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(137, 'أوزبكستان', 'Uzbekistan', 'سوم أوزبكي', 'UZS', 0.001, '+998', 'UZ', '41.3775', '64.5854', 1, 1, 8, 3, '/countries/Uzbekistan.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(138, 'فانواتو', 'Vanuatu', 'فاتو', 'VUV', 0.013, '+678', 'VU', '-15.3763', '166.9591', 1, 1, 8, 3, '/countries/Vanuatu.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(139, 'فنزويلا', 'Venezuela', 'بوليفار', 'VES', 0.000, '+58', 'VE', '6.4238', '-66.5897', 1, 1, 8, 3, '/countries/Venezuela.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(140, 'فيتنام', 'Vietnam', 'دونغ فيتنامي', 'VND', 0.000, '+84', 'VN', '14.0583', '108.2772', 1, 1, 8, 3, '/countries/Vietnam.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(141, 'اليمن', 'Yemen', 'ريال يمني', 'YER', 0.004, '+967', 'YE', '15.5524', '48.5164', 1, 1, 8, 3, '/countries/Yemen.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00'),
(142, 'زمبابوي', 'Zimbabwe', 'دولار زيمبابوي', 'ZWL', 0.000, '+263', 'ZW', '-19.0154', '29.1549', 1, 1, 8, 3, '/countries/Zimbabwe.png', '2022-10-09 13:52:15', '2023-10-14 21:00:00');

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
(2, 'إستلام من  المحل', 'Pick Up', '', 0, '2022-08-23 09:36:28', '2022-08-23 09:36:28');

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

--
-- Dumping data for table `mail_offers`
--

INSERT INTO `mail_offers` (`id`, `title`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 'test', '<p>test offer</p>', '/uploads/mail_offer/1710074050_1911.jpg', '2024-03-10 13:34:10', '2024-03-10 13:34:10'),
(2, 'test', '<p>test offer</p>', '/uploads/mail_offer/1710074115_3004.jpg', '2024-03-10 13:35:15', '2024-03-10 13:35:15'),
(3, 'test', 'test sallam', '/uploads/mail_offer/1724684519_8501.jpg', '2024-08-26 15:01:59', '2024-08-26 15:01:59'),
(4, 'test', 'test', '/uploads/mail_offer/1724845985_3090.png', '2024-08-28 11:53:05', '2024-08-28 11:53:05'),
(5, 'test', 'test', '/uploads/mail_offer/1724846091_3771.png', '2024-08-28 11:54:51', '2024-08-28 11:54:51');

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
  `transaction_number` varchar(255) DEFAULT NULL,
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

INSERT INTO `orders` (`id`, `transaction_number`, `delivery_id`, `client_id`, `address_id`, `payment_id`, `sub_total`, `discount`, `discount_percentage`, `vat`, `vat_percentage`, `coupon`, `coupon_text`, `coupon_percentage`, `charge_cost`, `net_total`, `status`, `follow`, `use_points`, `points_number`, `gained_points`, `client_points`, `mobile_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(43, 'chg_LV02E3020241946l8N92407544', 1, 22, 42, 2, 60.000, 0.000, 0, 0.000, 10, 0.000, NULL, 0, 2.000, 62.000, 5, 0, 0, 0, 0, 0, NULL, NULL, '2024-07-24 13:46:31', '2024-07-24 13:46:33'),
(47, 'chg_LV04E0920241554o0M92807056', 1, 24, 46, 2, 60.000, 0.000, 0, 0.000, 10, 0.000, NULL, 0, 5.000, 65.000, 5, 0, 0, 0, 0, 0, NULL, NULL, '2024-07-28 09:54:09', '2024-07-28 09:54:10'),
(48, 'chg_LV07E3920241856Hx840708522', 1, 27, 47, 2, 35.000, 0.000, 0, 0.000, 10, 0.000, NULL, 0, 5.000, 40.000, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-08-07 12:56:37', '2024-09-02 17:00:33'),
(80, 'chg_LV04E0420240804Qc0r1508971', 1, 36, NULL, 2, 41.000, 0.000, 0, 0.000, 10, 0.000, NULL, 0, NULL, 41.000, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-08-15 02:04:05', '2024-08-26 15:12:54'),
(81, 'chg_LV06E1720240840o3BM1508959', 1, 36, NULL, 5, 5.000, 0.000, 0, 0.000, 10, 0.000, NULL, 0, NULL, 5.000, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-08-15 02:40:18', '2024-08-26 15:13:07'),
(86, 'chg_LV03E1220240813Zs371708540', 1, 22, 79, 2, 52.000, 0.000, 0, 0.000, 10, 0.000, NULL, 0, NULL, 52.000, 5, 0, 0, 0, 0, 0, NULL, NULL, '2024-08-17 02:13:11', '2024-08-17 02:13:14'),
(95, 'chg_LV07E2020241005u7X31908574', 1, 41, 87, 5, 340.000, 0.000, 0, 0.000, 10, 0.000, NULL, 0, NULL, 340.000, 5, 0, 0, 0, 0, 0, NULL, NULL, '2024-08-19 04:05:20', '2024-08-19 04:05:21'),
(96, 'chg_LV01E1820241009q4LY1908946', 1, 41, 88, 5, 340.000, 0.000, 0, 0.000, 10, 0.000, NULL, 0, NULL, 340.000, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-08-19 04:09:18', '2024-09-02 17:00:29'),
(243, 'chg_LV05E2020241800Hl642408795', 1, 69, 184, 3, 84.000, 0.000, 0, 0.000, 0, 0.000, NULL, 0, 8.000, 92.000, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-08-24 12:00:21', '2024-08-26 15:13:24'),
(256, 'chg_LV03E4220241713Mi732608694', 1, 88, 205, 5, 35.000, 0.000, 0, 0.000, 0, 0.000, NULL, 0, 5.000, 40.000, 2, 0, 0, 0, 0, 0, NULL, NULL, '2024-08-26 14:13:41', '2024-09-22 05:35:10'),
(257, 'chg_LV03E3120241715Fk302608936', 1, 89, 206, 5, 52.000, 0.000, 0, 0.000, 0, 0.000, NULL, 0, 5.000, 57.000, 1, 1, 0, 0, 0, 0, NULL, NULL, '2024-08-26 14:15:31', '2024-08-26 14:28:20'),
(258, 'chg_LV06E3920241134Mh0l2708382', 1, 73, 208, 2, 40.000, 0.000, 0, 0.000, 0, 0.000, NULL, 0, 5.062, 45.062, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-08-26 08:34:38', '2024-09-22 05:42:03'),
(264, 'chg_LV07E5620241611Ku302808136', 1, 41, 221, 5, 0.000, 0.000, 0, 0.000, 0, 0.000, NULL, 0, 5.000, 5.000, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-08-28 13:11:55', '2024-09-02 17:00:41'),
(272, 'chg_LV03E4120242018Ds340409309', 1, 89, 226, 5, 52.000, 0.000, 0, 0.000, 0, 0.000, NULL, 0, 5.000, 57.000, 1, 3, 0, 0, 0, 0, NULL, NULL, '2024-09-04 17:18:41', '2024-09-22 05:41:58'),
(273, 'chg_LV04C5020240840Oc032209576', 1, 107, 227, 5, 52.000, 0.000, 0, 0.000, 0, 0.000, NULL, 0, 5.000, 57.000, 1, 2, 0, 0, 0, 0, NULL, NULL, '2024-09-22 05:40:50', '2024-10-05 09:43:03'),
(274, 'chg_TS05A5920241956Bj8c3009938', 1, 99, 228, 2, 380.000, 0.000, 0, 0.000, 0, 0.000, NULL, 0, 17.600, 397.600, 5, 0, 0, 0, 0, 0, NULL, NULL, '2024-09-30 16:57:30', '2024-09-30 16:57:36'),
(275, 'chg_TS03A5820242010Jj3s3009131', 1, 91, 229, 3, 380.000, 0.000, 0, 0.000, 0, 0.000, NULL, 0, 17.600, 397.600, 2, 0, 0, 0, 0, 0, NULL, NULL, '2024-09-30 17:11:31', '2024-10-01 17:11:13'),
(276, 'chg_LV05E5220241842g9XO0110694', 1, 109, 230, 5, 80.000, 0.000, 0, 0.000, 0, 0.000, NULL, 0, 8.000, 88.000, 1, 1, 0, 0, 0, 0, NULL, NULL, '2024-10-01 15:42:52', '2024-10-01 17:11:23'),
(277, 'chg_LV02E1320241408Ki341010157', 1, 110, 231, 5, 39.000, 0.000, 0, 0.000, 0, 0.000, NULL, 0, 5.000, 44.000, 0, 0, 0, 0, 0, 0, NULL, NULL, '2024-10-10 11:08:13', '2024-10-10 11:08:52');

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
  `width_id` bigint(20) DEFAULT NULL,
  `chest_width_id` bigint(20) DEFAULT NULL,
  `price` decimal(8,3) DEFAULT NULL,
  `quantity` smallint(6) NOT NULL,
  `total` decimal(9,3) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `color_id`, `size_id`, `width_id`, `chest_width_id`, `price`, `quantity`, `total`, `note`, `created_at`, `updated_at`) VALUES
(95, 81, 21, 8, 2, NULL, NULL, 5.000, 1, 5.000, NULL, '2024-08-15 02:40:18', '2024-08-15 02:40:18'),
(282, 256, 13, 3, 1, NULL, NULL, 35.000, 1, 35.000, NULL, '2024-08-26 14:13:41', '2024-08-26 14:13:41'),
(283, 257, 15, 7, 8, NULL, NULL, 52.000, 1, 52.000, 'احتاج مقاس سمول من عند الكتف و الصدر و الطول يكون ٥٣ . االرجاء اضافة ازرار اضافي عن الموجود', '2024-08-26 14:15:31', '2024-08-26 14:15:31'),
(284, 258, 35, 8, 8, NULL, NULL, 40.000, 1, 40.000, NULL, '2024-08-27 08:34:38', '2024-08-27 08:34:38'),
(290, 264, 50, 8, 1, NULL, NULL, 0.000, 1, 0.000, NULL, '2024-08-28 13:11:55', '2024-08-28 13:11:55'),
(298, 272, 15, 7, 8, NULL, NULL, 52.000, 1, 52.000, 'المقاس من فوق صغيرو الرجاء اضافة ازرار اضافة لازرار الموجود', '2024-09-04 17:18:41', '2024-09-04 17:18:41'),
(299, 273, 15, 7, 9, NULL, NULL, 52.000, 1, 52.000, 'If possible to have the abaya is size 54 but the length 53', '2024-09-22 05:40:50', '2024-09-22 05:40:50'),
(300, 274, 15, 7, 1, NULL, NULL, 52.000, 1, 52.000, NULL, '2024-09-30 16:57:30', '2024-09-30 16:57:30'),
(301, 274, 54, 4, 2, NULL, NULL, 328.000, 1, 328.000, NULL, '2024-09-30 16:57:30', '2024-09-30 16:57:30'),
(302, 275, 15, 7, 1, NULL, NULL, 52.000, 1, 52.000, NULL, '2024-09-30 17:11:31', '2024-09-30 17:11:31'),
(303, 275, 54, 4, 2, 6, 18, 328.000, 1, 328.000, NULL, '2024-09-30 17:11:31', '2024-09-30 17:11:31'),
(304, 276, 53, 18, 13, NULL, NULL, 45.000, 1, 45.000, NULL, '2024-10-01 15:42:52', '2024-10-01 15:42:52'),
(305, 276, 19, 8, 13, NULL, NULL, 35.000, 1, 35.000, NULL, '2024-10-01 15:42:52', '2024-10-01 15:42:52'),
(306, 277, 64, 8, 12, NULL, NULL, 39.000, 1, 39.000, NULL, '2024-10-10 11:08:13', '2024-10-10 11:08:13');

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
(1, 'كاش', 'cash', 0, '/uploads/PaymentMethods/1697900757_2398.webp', '2022-10-06 06:56:58', '2024-03-10 13:20:18'),
(2, 'ديبت كارد', 'Debit Card', 1, '/uploads/PaymentMethods/1697900766_7660.webp', '2022-10-06 06:57:16', '2024-08-26 08:20:03'),
(3, 'بطاقة الإئتمان', 'Credit Card', 1, '/uploads/PaymentMethods/1697900773_7679.webp', '2022-10-06 06:57:31', '2023-10-21 12:06:13'),
(4, 'بنفت باي', 'Benefit Pay', 0, '/uploads/PaymentMethods/1697900780_3097.webp', '2022-10-06 06:57:46', '2023-10-21 12:06:20'),
(5, 'ابل باي', 'Apple Pay', 1, '/uploads/PaymentMethods/1697900788_3799.webp', '2022-12-20 13:55:39', '2023-10-21 12:06:48');

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
  `quantity` int(11) DEFAULT 10,
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
(3, 'بشت رمضان', 'Ramdhan bisht', '<p style=\"text-align: right;\">قماش السلعة: 100% كتان<br>الحزام متضمن: لا<br>العناية بالملابس: تنظيف جاف<br>ملاحظة المصمم: يرجى ذكر طول عبايتك المعتادة</p>', '<p style=\"text-align: left;\">Item fabric : 100% Linen<br>Belt Included : No<br>Garment Care : Dry Clean<br>Designer note : Please mention your usual abaya lenth</p>', NULL, 3, 'inclusive', 0, 0, 1, 60.000, 10, NULL, NULL, NULL, '2024-08-03 12:45:00', '2024-02-25 10:04:54', '2024-08-03 12:45:00'),
(4, 'كروشيه', 'Hand Crochet', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">عباية سوداء فاخرة مزينة بتفاصيل مزخرفة. يأتي مع فستان مطابق</p>\r\n</div>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Luxurious black abaya adorned with embellished detailing. Comes with a matching dress</p>\r\n</div>', NULL, 4, 'inclusive', 1, 0, 1, 42.000, 10, 0.000, NULL, NULL, '2024-08-03 12:44:59', '2024-02-27 07:54:51', '2024-08-03 12:44:59'),
(5, 'عباية RM23', 'RM’23 Abaya', '<p>عباية سوداء بتطريز ذهبي. يأتي مع وشاح للرأس.</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Black abaya with golden embroidery. Comes with a headscarf.</p>\r\n</div>', '263174', 5, 'inclusive', 0, 1, 1, 80.000, 10, 0.000, NULL, NULL, '2024-08-03 12:44:58', '2024-02-27 07:55:39', '2024-08-03 12:44:58'),
(6, 'M147 بشت', 'M147 Bisht', '<p>عباية بشت باللون الكحلي مع تفاصيل مزخرفة. يأتي مع غطاء رأس مطابق.</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Navy bisht abaya with embellished details. Comes with a matching headscarf.</p>\r\n</div>', NULL, 6, 'inclusive', 0, 1, 1, 90.000, 10, 0.000, NULL, NULL, '2024-08-03 12:44:56', '2024-02-27 07:56:19', '2024-08-03 12:44:56'),
(7, 'فلورا', 'Flora', '<p>جلابية مصنوعة يدوياً مع زخرفة من قماش الأربادا</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Handmade Jalabiya with Embellishment in arbada fabric</p>\r\n</div>', '3344553', 7, 'inclusive', 1, 0, 1, 45.000, 10, 0.000, NULL, NULL, '2024-08-03 12:44:55', '2024-02-27 07:57:17', '2024-08-03 12:44:55'),
(8, 'E27 الأزرق', 'E27 Blue', '<p>تشكيلة عبايات كاجوال. عباية بياقة وجيوب أمامية وزخارف مطرزة.</p>', '<div class=\"d-block\">\r\n<p class=\"short_description d-inline-block d-lg-block txt-revolve\">Casual Abaya collection. Collared abaya with front pockets and stitched trimmings.</p>\r\n</div>', '258963', 8, 'inclusive', 0, 1, 1, 65.000, 10, 50.000, '2024-03-09', '2024-03-12', '2024-08-03 12:44:54', '2024-02-27 07:58:07', '2024-08-03 12:44:54'),
(10, 'rmdhan bisht', 'Ramdhan Bisht', NULL, NULL, NULL, 10, 'inclusive', 0, 0, 1, 56.000, 10, NULL, NULL, NULL, '2024-07-14 16:44:52', '2024-07-14 16:33:19', '2024-07-14 16:44:52'),
(11, 'beaded blazer', 'beaded blazer', NULL, NULL, NULL, 11, 'inclusive', 0, 1, 1, 52.000, 10, NULL, NULL, NULL, '2024-08-03 12:44:53', '2024-07-20 13:36:45', '2024-08-03 12:44:53'),
(12, 'The Stars', 'The Stars', NULL, NULL, NULL, 12, 'exclusive', 0, 0, 1, 42.000, 10, NULL, NULL, NULL, '2024-08-03 13:36:37', '2024-08-03 13:15:28', '2024-08-03 13:36:37'),
(13, 'Sage Elemental', 'Sage Elemental', NULL, NULL, NULL, 13, 'inclusive', 0, 0, 1, 35.000, 10, NULL, NULL, NULL, NULL, '2024-08-03 13:18:11', '2024-08-04 07:15:24'),
(14, 'Underlayed', 'Underlayed', NULL, NULL, NULL, 14, 'inclusive', 0, 0, 1, 37.000, 10, NULL, NULL, NULL, NULL, '2024-08-03 13:19:57', '2024-08-04 07:15:09'),
(15, 'Ceremonial Blazer', 'Ceremonial Blazer', NULL, NULL, NULL, 15, 'inclusive', 1, 0, 1, 52.000, 10, NULL, NULL, NULL, NULL, '2024-08-03 13:34:20', '2024-08-26 13:31:28'),
(16, 'The Stars', 'The Stars', NULL, NULL, NULL, 16, 'inclusive', 0, 0, 1, 42.000, 10, NULL, NULL, NULL, NULL, '2024-08-03 13:35:47', '2024-08-04 07:14:40'),
(17, 'Underlayed', 'Underlayed', NULL, NULL, NULL, 17, 'inclusive', 0, 0, 1, 37.000, 10, NULL, NULL, NULL, NULL, '2024-08-03 13:38:03', '2024-08-03 13:38:03'),
(18, 'Barbie Beads', 'Barbie Beads', NULL, NULL, NULL, 18, 'inclusive', 0, 0, 1, 56.000, 10, NULL, NULL, NULL, NULL, '2024-08-03 13:39:39', '2024-08-04 07:13:56'),
(19, 'Scarf Art', 'Scarf Art', NULL, NULL, NULL, 19, 'inclusive', 0, 1, 1, 35.000, 10, NULL, NULL, NULL, NULL, '2024-08-03 20:34:39', '2024-08-03 20:39:41'),
(20, 'Textie Linen', 'Textie Linen', NULL, NULL, NULL, 20, 'inclusive', 0, 0, 1, 41.000, 10, NULL, NULL, NULL, NULL, '2024-08-15 04:11:43', '2024-08-15 04:11:43'),
(21, 'shipping', 'shipping', NULL, NULL, NULL, 21, 'inclusive', 0, 0, 0, 5.000, 10, NULL, NULL, NULL, '2024-08-18 19:59:15', '2024-08-15 05:36:14', '2024-08-18 19:59:15'),
(22, 'Hand Crochet', 'Hand Crochet', NULL, NULL, NULL, 22, 'inclusive', 0, 0, 0, 42.000, 10, NULL, NULL, NULL, NULL, '2024-08-16 07:02:49', '2024-08-16 07:02:49'),
(23, 'Barbie Reversible', 'Barbie Reversible', NULL, NULL, NULL, 23, 'inclusive', 0, 0, 0, 42.000, 10, NULL, NULL, NULL, NULL, '2024-08-16 07:09:51', '2024-08-16 07:09:51'),
(24, 'Azure', 'Azure', NULL, NULL, NULL, 24, 'inclusive', 0, 0, 1, 48.000, 10, NULL, NULL, NULL, NULL, '2024-08-16 07:43:13', '2024-08-16 07:43:13'),
(25, 'dark nude', 'dark nude', NULL, NULL, NULL, 25, 'inclusive', 0, 0, 1, 42.000, 10, NULL, NULL, NULL, NULL, '2024-08-16 07:44:42', '2024-08-16 07:44:42'),
(26, 'Soft Blue', 'soft blue', NULL, NULL, NULL, 26, 'inclusive', 0, 0, 0, 37.000, 10, NULL, NULL, NULL, NULL, '2024-08-16 07:46:05', '2024-08-16 07:46:05'),
(27, 'Pearly Swan', 'pearly swan', NULL, NULL, NULL, 27, 'inclusive', 1, 0, 0, 47.000, 10, NULL, NULL, NULL, NULL, '2024-08-16 14:01:45', '2024-08-26 13:36:05'),
(28, 'Jamsine in Black', 'Jasmine in Black', '<span style=\"display: inline !important;\">Please note that this product is available in black only and the displayed picture does represent a different color</span><br>', '<p><span style=\"display: inline !important;\">Please note that this product is available in black only and the displayed picture does represent a different color</span><br></p>', NULL, 28, 'inclusive', 0, 0, 0, 34.000, 10, NULL, NULL, NULL, NULL, '2024-08-18 19:58:25', '2024-08-18 19:58:25'),
(31, 'Midnight', 'Midnight', NULL, NULL, NULL, 31, 'inclusive', 0, 0, 1, 40.000, 10, NULL, NULL, NULL, '2024-08-26 06:38:12', '2024-08-26 06:21:36', '2024-08-26 06:38:12'),
(32, 'Midnight', 'Midnight', NULL, NULL, NULL, 32, 'inclusive', 0, 0, 1, 40.000, 10, NULL, NULL, NULL, '2024-08-26 06:37:51', '2024-08-26 06:22:09', '2024-08-26 06:37:51'),
(33, 'Midnight', 'Midnight', NULL, NULL, NULL, 33, 'inclusive', 0, 0, 1, 40.000, 10, NULL, NULL, NULL, '2024-08-26 06:37:52', '2024-08-26 06:22:14', '2024-08-26 06:37:52'),
(34, 'Midnight', 'Midnight', NULL, NULL, NULL, 34, 'inclusive', 0, 0, 1, 40.000, 10, NULL, NULL, NULL, '2024-08-26 06:38:10', '2024-08-26 06:23:06', '2024-08-26 06:38:10'),
(35, 'Midnight', 'Midnight', NULL, NULL, NULL, 35, 'exclusive', 0, 0, 0, 40.000, 10, NULL, NULL, NULL, NULL, '2024-08-26 06:24:43', '2024-08-26 06:24:43'),
(40, 'Midnight', 'Midnight', NULL, NULL, NULL, 40, 'exclusive', 0, 0, 1, 40.000, 10, NULL, NULL, NULL, '2024-08-26 06:39:28', '2024-08-26 06:35:57', '2024-08-26 06:39:28'),
(41, 'Midnight', 'Midnight', NULL, NULL, NULL, 41, 'exclusive', 0, 0, 1, 40.000, 10, NULL, NULL, NULL, '2024-08-26 06:38:56', '2024-08-26 06:36:03', '2024-08-26 06:38:56'),
(50, 'Shipping', 'Shipping', NULL, NULL, NULL, 50, 'inclusive', 0, 0, 0, 0.000, 10, NULL, NULL, NULL, NULL, '2024-08-26 12:45:41', '2024-08-26 16:10:05'),
(51, 'test', 'test', '<p>test</p>', '<p>test</p>', '21500', 51, 'exclusive', 0, 0, 0, 15.000, 10, NULL, NULL, NULL, '2024-08-26 14:24:46', '2024-08-26 14:21:37', '2024-08-26 14:24:46'),
(52, 'test 2', 'test 2', '<p>jkjk</p>', '<p>jhyfgfg</p>', NULL, 52, 'exclusive', 0, 0, 1, 131.000, 10, NULL, NULL, NULL, '2024-08-28 11:30:28', '2024-08-28 11:30:07', '2024-08-28 11:30:28'),
(53, 'galaxy core', 'galaxy core', NULL, NULL, NULL, 53, 'inclusive', 1, 0, 1, 45.000, 10, NULL, NULL, NULL, NULL, '2024-09-27 11:58:01', '2024-09-27 11:58:01'),
(54, 'Product Tactics Associate', 'Internal Mobility Administrator', '<p>rerreqrerwe</p>', '<p>erqrqer</p>', '31063-0076', 54, 'inclusive', 0, 0, 0, 328.000, 10, NULL, NULL, NULL, NULL, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(55, 'Galaxy one', 'Galaxy one', NULL, NULL, NULL, 55, 'inclusive', 1, 0, 1, 42.000, 10, NULL, NULL, NULL, NULL, '2024-10-01 14:37:29', '2024-10-01 14:39:55'),
(56, 'frostbite', 'frostbite', NULL, NULL, NULL, 56, 'inclusive', 0, 0, 1, 39.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(57, 'blue beige reversible', 'blue beige reversible', NULL, NULL, NULL, 57, 'inclusive', 0, 0, 1, 37.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 10:06:13', '2024-10-05 10:06:13'),
(58, 'reversible gray black', 'reversible gray black', NULL, NULL, NULL, 58, 'inclusive', 0, 0, 1, 37.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 10:24:51', '2024-10-05 10:24:51'),
(59, 'flower garden', 'flower garden', NULL, '<p>Please add chest width if needed.&nbsp;</p>', NULL, 59, 'inclusive', 0, 1, 1, 56.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(60, 'ceremonial gray waves', 'ceremonial gray waves', NULL, NULL, NULL, 60, 'inclusive', 0, 0, 1, 59.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 11:54:11', '2024-10-05 12:31:17'),
(61, 'ceremonial blue waves', 'ceremonial blue waves', NULL, NULL, NULL, 61, 'exclusive', 0, 0, 1, 59.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 12:08:14', '2024-10-05 12:08:14'),
(62, 'Classic Ruffles', 'Classic Ruffles', NULL, NULL, NULL, 62, 'inclusive', 1, 0, 1, 47.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(63, 'Oatly Ruffles', 'Oatly Ruffles', NULL, NULL, NULL, 63, 'inclusive', 0, 0, 1, 47.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(64, 'Wooded', 'Wooded', NULL, NULL, NULL, 64, 'inclusive', 0, 0, 1, 39.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(65, 'Stars in Black', 'Stars in Black', NULL, NULL, NULL, 65, 'inclusive', 0, 0, 1, 42.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(66, 'Twilight', 'Twilight', NULL, NULL, NULL, 66, 'inclusive', 0, 0, 1, 59.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(67, 'Tulips', 'Tulips', NULL, NULL, NULL, 67, 'inclusive', 0, 0, 1, 52.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(68, 'Calligraphy', 'Calligraphy', NULL, NULL, NULL, 68, 'inclusive', 0, 0, 1, 45.000, 10, NULL, NULL, NULL, NULL, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(69, 'بلو ليس', 'Blue Lace', NULL, NULL, NULL, 69, 'exclusive', 0, 0, 1, 33.000, 10, NULL, NULL, NULL, '2024-10-05 20:29:00', '2024-10-05 20:27:50', '2024-10-05 20:29:00'),
(70, 'بلو ليس', 'Blue Lace', NULL, NULL, NULL, 70, 'exclusive', 0, 0, 1, 33.000, 10, NULL, NULL, NULL, '2024-10-05 20:45:33', '2024-10-05 20:35:26', '2024-10-05 20:45:33'),
(71, 'Blue Lace', 'Blue Lace', NULL, NULL, NULL, 71, 'exclusive', 0, 0, 1, 33.000, 10, NULL, NULL, NULL, '2024-10-06 08:12:50', '2024-10-05 20:50:04', '2024-10-06 08:12:50'),
(72, 'بلو ليس', 'Blue Lace', NULL, NULL, NULL, 72, 'exclusive', 0, 0, 1, 33.000, 10, NULL, NULL, NULL, NULL, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(73, 'بلو رفرسبل', 'Blue x Blue Reversible', NULL, NULL, NULL, 73, 'exclusive', 0, 0, 1, 37.000, 10, NULL, NULL, NULL, NULL, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(74, 'كالياقرفي', 'CALLIGRAPHY in grey', NULL, NULL, NULL, 74, 'exclusive', 0, 0, 1, 45.000, 10, NULL, NULL, NULL, NULL, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(75, 'بيرلي سوان', 'Pearly Swan', NULL, NULL, NULL, 75, 'exclusive', 0, 0, 1, 47.000, 10, NULL, NULL, NULL, NULL, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(76, 'جست رافلز', 'Just Ruffles', NULL, NULL, NULL, 76, 'exclusive', 0, 0, 1, 47.000, 10, NULL, NULL, NULL, '2024-10-07 11:25:48', '2024-10-06 17:16:27', '2024-10-07 11:25:48'),
(77, 'بربل ازور', 'Azure', NULL, NULL, NULL, 77, 'exclusive', 0, 0, 1, 48.000, 10, NULL, NULL, NULL, NULL, '2024-10-06 17:23:23', '2024-10-06 17:23:23');

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
(31, 1, 5, NULL, NULL),
(32, 2, 5, NULL, NULL),
(33, 3, 5, NULL, NULL),
(41, 1, 10, NULL, NULL),
(42, 1, 3, NULL, NULL),
(43, 3, 4, NULL, NULL),
(44, 1, 11, NULL, NULL),
(45, 2, 12, NULL, NULL),
(46, 2, 13, NULL, NULL),
(48, 1, 15, NULL, NULL),
(49, 2, 16, NULL, NULL),
(50, 2, 17, NULL, NULL),
(51, 4, 18, NULL, NULL),
(52, 2, 19, NULL, NULL),
(53, 2, 20, NULL, NULL),
(54, 2, 21, NULL, NULL),
(55, 3, 22, NULL, NULL),
(56, 2, 23, NULL, NULL),
(57, 1, 24, NULL, NULL),
(58, 2, 24, NULL, NULL),
(59, 2, 25, NULL, NULL),
(60, 2, 26, NULL, NULL),
(61, 2, 27, NULL, NULL),
(62, 2, 28, NULL, NULL),
(65, 1, 31, NULL, NULL),
(66, 1, 32, NULL, NULL),
(67, 1, 33, NULL, NULL),
(68, 1, 34, NULL, NULL),
(69, 1, 35, NULL, NULL),
(74, 1, 40, NULL, NULL),
(75, 1, 41, NULL, NULL),
(84, 1, 50, NULL, NULL),
(85, 1, 51, NULL, NULL),
(86, 1, 52, NULL, NULL),
(87, 1, 53, NULL, NULL),
(88, 8, 14, NULL, NULL),
(89, 1, 54, NULL, NULL),
(90, 3, 54, NULL, NULL),
(91, 8, 55, NULL, NULL),
(92, 8, 56, NULL, NULL),
(93, 8, 57, NULL, NULL),
(94, 8, 58, NULL, NULL),
(95, 8, 59, NULL, NULL),
(96, 8, 60, NULL, NULL),
(97, 8, 61, NULL, NULL),
(98, 8, 62, NULL, NULL),
(99, 8, 63, NULL, NULL),
(100, 8, 64, NULL, NULL),
(101, 8, 65, NULL, NULL),
(102, 1, 66, NULL, NULL),
(103, 1, 67, NULL, NULL),
(104, 8, 67, NULL, NULL),
(105, 1, 68, NULL, NULL),
(106, 8, 68, NULL, NULL),
(107, 8, 69, NULL, NULL),
(108, 4, 70, NULL, NULL),
(109, 8, 70, NULL, NULL),
(110, 4, 71, NULL, NULL),
(111, 8, 71, NULL, NULL),
(113, 8, 72, NULL, NULL),
(114, 8, 73, NULL, NULL),
(115, 1, 74, NULL, NULL),
(116, 1, 75, NULL, NULL),
(117, 1, 76, NULL, NULL),
(118, 1, 77, NULL, NULL),
(119, 2, 72, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_chest_width`
--

CREATE TABLE `product_chest_width` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `chest_width_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_chest_width`
--

INSERT INTO `product_chest_width` (`id`, `product_id`, `chest_width_id`, `created_at`, `updated_at`) VALUES
(1, 54, 18, NULL, NULL),
(2, 54, 19, NULL, NULL);

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
(59, 8, 10, NULL, NULL),
(64, 10, 8, NULL, NULL),
(65, 3, 8, NULL, NULL),
(66, 11, 3, NULL, NULL),
(68, 12, 4, NULL, NULL),
(69, 13, 3, NULL, NULL),
(70, 14, 4, NULL, NULL),
(71, 15, 7, NULL, NULL),
(72, 16, 4, NULL, NULL),
(73, 17, 8, NULL, NULL),
(74, 18, 11, NULL, NULL),
(75, 19, 8, NULL, NULL),
(76, 20, 14, NULL, NULL),
(77, 21, 8, NULL, NULL),
(78, 22, 8, NULL, NULL),
(79, 23, 11, NULL, NULL),
(80, 24, 4, NULL, NULL),
(81, 25, 13, NULL, NULL),
(82, 26, 10, NULL, NULL),
(83, 27, 9, NULL, NULL),
(84, 28, 8, NULL, NULL),
(87, 31, 8, NULL, NULL),
(88, 32, 8, NULL, NULL),
(89, 33, 8, NULL, NULL),
(90, 34, 8, NULL, NULL),
(91, 35, 8, NULL, NULL),
(96, 40, 8, NULL, NULL),
(97, 41, 8, NULL, NULL),
(112, 51, 1, NULL, NULL),
(113, 51, 2, NULL, NULL),
(114, 50, 8, NULL, NULL),
(115, 52, 2, NULL, NULL),
(118, 53, 18, NULL, NULL),
(119, 53, 8, NULL, NULL),
(120, 54, 1, NULL, NULL),
(121, 54, 4, NULL, NULL),
(122, 54, 5, NULL, NULL),
(123, 54, 7, NULL, NULL),
(124, 54, 8, NULL, NULL),
(125, 54, 13, NULL, NULL),
(126, 54, 14, NULL, NULL),
(127, 55, 18, NULL, NULL),
(128, 55, 19, NULL, NULL),
(129, 56, 4, NULL, NULL),
(130, 56, 8, NULL, NULL),
(132, 57, 21, NULL, NULL),
(134, 58, 22, NULL, NULL),
(135, 56, 24, NULL, NULL),
(136, 59, 8, NULL, NULL),
(137, 59, 13, NULL, NULL),
(138, 59, 19, NULL, NULL),
(140, 60, 24, NULL, NULL),
(141, 61, 4, NULL, NULL),
(142, 62, 8, NULL, NULL),
(143, 62, 9, NULL, NULL),
(144, 62, 13, NULL, NULL),
(145, 63, 8, NULL, NULL),
(146, 63, 9, NULL, NULL),
(147, 63, 13, NULL, NULL),
(148, 64, 8, NULL, NULL),
(149, 65, 8, NULL, NULL),
(150, 66, 4, NULL, NULL),
(151, 67, 8, NULL, NULL),
(152, 68, 8, NULL, NULL),
(153, 69, 4, NULL, NULL),
(154, 69, 20, NULL, NULL),
(155, 70, 4, NULL, NULL),
(156, 71, 4, NULL, NULL),
(157, 72, 4, NULL, NULL),
(158, 73, 4, NULL, NULL),
(159, 74, 24, NULL, NULL),
(160, 75, 9, NULL, NULL),
(161, 76, 8, NULL, NULL),
(162, 77, 6, NULL, NULL);

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
(8, '/uploads/products/1709020687_8412.jpg', 1, 1, NULL, 8, '2024-02-27 07:58:07', '2024-02-27 07:58:07'),
(12, '/uploads/products/1720974799_7295.jpg', 1, 1, NULL, 10, '2024-07-14 16:33:19', '2024-07-14 16:33:19'),
(13, '/uploads/products/1721482605_2225.jpg', 1, 1, NULL, 11, '2024-07-20 13:36:45', '2024-07-22 06:18:37'),
(14, '/uploads/products/1721482605_2777.jpg', 1, 0, NULL, 11, '2024-07-20 13:36:45', '2024-07-22 06:18:37'),
(15, '/uploads/products/1721482605_3480.jpg', 1, 0, NULL, 11, '2024-07-20 13:36:45', '2024-07-22 06:18:37'),
(16, '/uploads/products/1721482605_6459.jpg', 1, 0, NULL, 11, '2024-07-20 13:36:45', '2024-07-22 06:18:37'),
(17, '/uploads/products/1722690928_8749.jpg', 1, 1, NULL, 12, '2024-08-03 13:15:28', '2024-08-03 13:15:28'),
(18, '/uploads/products/1722690928_9397.jpg', 1, 1, NULL, 12, '2024-08-03 13:15:28', '2024-08-03 13:15:28'),
(19, '/uploads/products/1722691091_6023.jpg', 1, 1, NULL, 13, '2024-08-03 13:18:11', '2024-08-03 13:18:11'),
(20, '/uploads/products/1722691091_8429.jpg', 1, 1, NULL, 13, '2024-08-03 13:18:11', '2024-08-03 13:18:11'),
(21, '/uploads/products/1722691091_9982.jpg', 1, 1, NULL, 13, '2024-08-03 13:18:11', '2024-08-03 13:18:11'),
(22, '/uploads/products/1722691197_3055.jpg', 1, 1, NULL, 14, '2024-08-03 13:19:57', '2024-08-03 13:19:57'),
(23, '/uploads/products/1722691197_5300.jpg', 1, 1, NULL, 14, '2024-08-03 13:19:57', '2024-08-03 13:19:57'),
(24, '/uploads/products/1722691197_4776.jpg', 1, 1, NULL, 14, '2024-08-03 13:19:57', '2024-08-03 13:19:57'),
(25, '/uploads/products/1722692060_6140.jpg', 1, 1, NULL, 15, '2024-08-03 13:34:20', '2024-08-03 13:34:20'),
(26, '/uploads/products/1722692060_4796.jpg', 1, 1, NULL, 15, '2024-08-03 13:34:20', '2024-08-03 13:34:20'),
(27, '/uploads/products/1722692060_2142.jpg', 1, 1, NULL, 15, '2024-08-03 13:34:20', '2024-08-03 13:34:20'),
(28, '/uploads/products/1722692060_3567.jpg', 1, 1, NULL, 15, '2024-08-03 13:34:20', '2024-08-03 13:34:20'),
(29, '/uploads/products/1722692060_8245.jpg', 1, 1, NULL, 15, '2024-08-03 13:34:20', '2024-08-03 13:34:20'),
(30, '/uploads/products/1722692147_7337.jpg', 1, 1, NULL, 16, '2024-08-03 13:35:47', '2024-08-26 06:41:07'),
(31, '/uploads/products/1722692147_4444.jpg', 1, 0, NULL, 16, '2024-08-03 13:35:47', '2024-08-26 06:41:07'),
(32, '/uploads/products/1722692147_4275.jpg', 1, 0, NULL, 16, '2024-08-03 13:35:47', '2024-08-26 06:41:07'),
(33, '/uploads/products/1722692147_1028.jpg', 1, 0, NULL, 16, '2024-08-03 13:35:47', '2024-08-26 06:41:07'),
(34, '/uploads/products/1722692283_7336.jpg', 1, 1, NULL, 17, '2024-08-03 13:38:03', '2024-08-03 13:38:03'),
(35, '/uploads/products/1722692283_6008.jpg', 1, 1, NULL, 17, '2024-08-03 13:38:03', '2024-08-03 13:38:03'),
(36, '/uploads/products/1722692283_4456.jpg', 1, 1, NULL, 17, '2024-08-03 13:38:03', '2024-08-03 13:38:03'),
(37, '/uploads/products/1722692283_1894.jpg', 1, 1, NULL, 17, '2024-08-03 13:38:03', '2024-08-03 13:38:03'),
(38, '/uploads/products/1722692283_9946.jpg', 1, 1, NULL, 17, '2024-08-03 13:38:03', '2024-08-03 13:38:03'),
(40, '/uploads/products/1722692379_3371.jpg', 1, 0, NULL, 18, '2024-08-03 13:39:39', '2024-08-26 06:44:44'),
(42, '/uploads/products/1722692379_5551.jpg', 1, 1, NULL, 18, '2024-08-03 13:39:39', '2024-08-26 06:44:44'),
(43, '/uploads/products/1722692379_5943.jpg', 1, 0, NULL, 18, '2024-08-03 13:39:39', '2024-08-26 06:44:44'),
(44, '/uploads/products/1722717333_6332.jpg', 1, 1, NULL, 19, '2024-08-03 20:35:33', '2024-08-03 20:37:18'),
(45, '/uploads/products/1722717333_5234.jpg', 1, 0, NULL, 19, '2024-08-03 20:35:33', '2024-08-03 20:37:18'),
(46, '/uploads/products/1722717333_2317.jpg', 1, 0, NULL, 19, '2024-08-03 20:35:33', '2024-08-03 20:37:18'),
(47, '/uploads/products/1722717333_2870.jpg', 1, 0, NULL, 19, '2024-08-03 20:35:33', '2024-08-03 20:37:18'),
(48, '/uploads/products/1722717333_9186.jpg', 1, 0, NULL, 19, '2024-08-03 20:35:33', '2024-08-03 20:37:18'),
(49, '/uploads/products/1723695103_8031.jpg', 1, 1, NULL, 20, '2024-08-15 04:11:43', '2024-08-15 04:16:20'),
(50, '/uploads/products/1723695103_6987.jpg', 1, 0, NULL, 20, '2024-08-15 04:11:43', '2024-08-15 04:16:20'),
(51, '/uploads/products/1723695103_6225.jpg', 1, 0, NULL, 20, '2024-08-15 04:11:43', '2024-08-15 04:16:20'),
(54, '/uploads/products/1723791769_1404.jpg', 1, 1, NULL, 22, '2024-08-16 07:02:49', '2024-08-16 07:02:49'),
(55, '/uploads/products/1723791769_7655.jpg', 1, 1, NULL, 22, '2024-08-16 07:02:49', '2024-08-16 07:02:49'),
(56, '/uploads/products/1723791769_2248.jpg', 1, 1, NULL, 22, '2024-08-16 07:02:49', '2024-08-16 07:02:49'),
(57, '/uploads/products/1723791769_8421.jpg', 1, 1, NULL, 22, '2024-08-16 07:02:49', '2024-08-16 07:02:49'),
(58, '/uploads/products/1723791769_1846.jpg', 1, 1, NULL, 22, '2024-08-16 07:02:49', '2024-08-16 07:02:49'),
(59, '/uploads/products/1723791769_1962.jpg', 1, 1, NULL, 22, '2024-08-16 07:02:49', '2024-08-16 07:02:49'),
(60, '/uploads/products/1723791769_4596.jpg', 1, 1, NULL, 22, '2024-08-16 07:02:49', '2024-08-16 07:02:49'),
(61, '/uploads/products/1723792191_7581.jpg', 1, 1, NULL, 23, '2024-08-16 07:09:51', '2024-08-16 07:09:51'),
(62, '/uploads/products/1723792191_7247.jpg', 1, 1, NULL, 23, '2024-08-16 07:09:51', '2024-08-16 07:09:51'),
(63, '/uploads/products/1723792191_4718.jpg', 1, 1, NULL, 23, '2024-08-16 07:09:51', '2024-08-16 07:09:51'),
(66, '/uploads/products/1723794193_3078.jpg', 1, 0, NULL, 24, '2024-08-16 07:43:13', '2024-08-26 06:46:09'),
(67, '/uploads/products/1723794193_5218.jpg', 1, 1, NULL, 24, '2024-08-16 07:43:13', '2024-08-26 06:46:09'),
(68, '/uploads/products/1723794193_2983.jpg', 1, 0, NULL, 24, '2024-08-16 07:43:13', '2024-08-26 06:46:09'),
(69, '/uploads/products/1723794193_5699.jpg', 1, 0, NULL, 24, '2024-08-16 07:43:13', '2024-08-26 06:46:09'),
(70, '/uploads/products/1723794282_4336.jpg', 1, 1, NULL, 25, '2024-08-16 07:44:42', '2024-08-16 07:44:42'),
(71, '/uploads/products/1723794282_4797.jpg', 1, 1, NULL, 25, '2024-08-16 07:44:42', '2024-08-16 07:44:42'),
(72, '/uploads/products/1723794365_6568.jpg', 1, 1, NULL, 26, '2024-08-16 07:46:05', '2024-08-16 07:46:05'),
(73, '/uploads/products/1723794365_1109.jpg', 1, 1, NULL, 26, '2024-08-16 07:46:05', '2024-08-16 07:46:05'),
(74, '/uploads/products/1723794365_7493.jpg', 1, 1, NULL, 26, '2024-08-16 07:46:05', '2024-08-16 07:46:05'),
(75, '/uploads/products/1723794365_5005.jpg', 1, 1, NULL, 26, '2024-08-16 07:46:05', '2024-08-16 07:46:05'),
(76, '/uploads/products/1723816905_4108.jpg', 1, 0, NULL, 27, '2024-08-16 14:01:45', '2024-08-23 09:17:13'),
(77, '/uploads/products/1723816905_9935.jpg', 1, 1, NULL, 27, '2024-08-16 14:01:45', '2024-08-23 09:17:13'),
(78, '/uploads/products/1723816905_4183.jpg', 1, 0, NULL, 27, '2024-08-16 14:01:45', '2024-08-23 09:17:13'),
(79, '/uploads/products/1724011223_8402.jpg', 1, 1, NULL, 28, '2024-08-18 20:00:23', '2024-08-18 20:00:23'),
(80, '/uploads/products/1724011223_1310.jpg', 1, 1, NULL, 28, '2024-08-18 20:00:23', '2024-08-18 20:00:23'),
(81, '/uploads/products/1724011223_7165.jpg', 1, 1, NULL, 28, '2024-08-18 20:00:23', '2024-08-18 20:00:23'),
(84, '/uploads/products/1724653296_5791.jpg', 1, 1, NULL, 31, '2024-08-26 06:21:36', '2024-08-26 06:21:36'),
(85, '/uploads/products/1724653296_3173.jpg', 1, 1, NULL, 31, '2024-08-26 06:21:36', '2024-08-26 06:21:36'),
(86, '/uploads/products/1724653296_4518.jpg', 1, 1, NULL, 31, '2024-08-26 06:21:36', '2024-08-26 06:21:36'),
(87, '/uploads/products/1724653296_7286.jpg', 1, 1, NULL, 31, '2024-08-26 06:21:36', '2024-08-26 06:21:36'),
(88, '/uploads/products/1724653329_3842.jpg', 1, 1, NULL, 32, '2024-08-26 06:22:09', '2024-08-26 06:22:09'),
(89, '/uploads/products/1724653329_5712.jpg', 1, 1, NULL, 32, '2024-08-26 06:22:09', '2024-08-26 06:22:09'),
(90, '/uploads/products/1724653329_8567.jpg', 1, 1, NULL, 32, '2024-08-26 06:22:09', '2024-08-26 06:22:09'),
(91, '/uploads/products/1724653329_7750.jpg', 1, 1, NULL, 32, '2024-08-26 06:22:09', '2024-08-26 06:22:09'),
(92, '/uploads/products/1724653334_3094.jpg', 1, 1, NULL, 33, '2024-08-26 06:22:14', '2024-08-26 06:22:14'),
(93, '/uploads/products/1724653334_9725.jpg', 1, 1, NULL, 33, '2024-08-26 06:22:14', '2024-08-26 06:22:14'),
(94, '/uploads/products/1724653334_6047.jpg', 1, 1, NULL, 33, '2024-08-26 06:22:14', '2024-08-26 06:22:14'),
(95, '/uploads/products/1724653334_8033.jpg', 1, 1, NULL, 33, '2024-08-26 06:22:14', '2024-08-26 06:22:14'),
(96, '/uploads/products/1724653386_7364.jpg', 1, 1, NULL, 34, '2024-08-26 06:23:06', '2024-08-26 06:23:06'),
(97, '/uploads/products/1724653386_9212.jpg', 1, 1, NULL, 34, '2024-08-26 06:23:06', '2024-08-26 06:23:06'),
(98, '/uploads/products/1724653386_4967.jpg', 1, 1, NULL, 34, '2024-08-26 06:23:06', '2024-08-26 06:23:06'),
(99, '/uploads/products/1724653386_4203.jpg', 1, 1, NULL, 34, '2024-08-26 06:23:06', '2024-08-26 06:23:06'),
(100, '/uploads/products/1724653483_1811.jpg', 1, 1, NULL, 35, '2024-08-26 06:24:43', '2024-08-26 06:24:43'),
(101, '/uploads/products/1724653483_7553.jpg', 1, 1, NULL, 35, '2024-08-26 06:24:43', '2024-08-26 06:24:43'),
(102, '/uploads/products/1724653483_6263.jpg', 1, 1, NULL, 35, '2024-08-26 06:24:43', '2024-08-26 06:24:43'),
(103, '/uploads/products/1724653483_8453.jpg', 1, 1, NULL, 35, '2024-08-26 06:24:43', '2024-08-26 06:24:43'),
(104, '/uploads/products/1724654157_1910.jpg', 1, 1, NULL, 40, '2024-08-26 06:35:57', '2024-08-26 06:35:57'),
(105, '/uploads/products/1724654157_2235.jpg', 1, 1, NULL, 40, '2024-08-26 06:35:57', '2024-08-26 06:35:57'),
(106, '/uploads/products/1724654157_6663.jpg', 1, 1, NULL, 40, '2024-08-26 06:35:57', '2024-08-26 06:35:57'),
(107, '/uploads/products/1724654157_7521.jpg', 1, 1, NULL, 40, '2024-08-26 06:35:57', '2024-08-26 06:35:57'),
(108, '/uploads/products/1724654163_6620.jpg', 1, 1, NULL, 41, '2024-08-26 06:36:03', '2024-08-26 06:36:03'),
(109, '/uploads/products/1724654163_1995.jpg', 1, 1, NULL, 41, '2024-08-26 06:36:03', '2024-08-26 06:36:03'),
(110, '/uploads/products/1724654163_1557.jpg', 1, 1, NULL, 41, '2024-08-26 06:36:03', '2024-08-26 06:36:03'),
(111, '/uploads/products/1724654163_1579.jpg', 1, 1, NULL, 41, '2024-08-26 06:36:03', '2024-08-26 06:36:03'),
(112, '/uploads/products/1724682097_2094.jpg', 1, 1, NULL, 51, '2024-08-26 14:21:37', '2024-08-26 14:21:37'),
(113, '/uploads/products/1727438281_9190.jpg', 1, 1, NULL, 53, '2024-09-27 11:58:01', '2024-09-27 11:58:01'),
(114, '/uploads/products/1727438281_7745.jpg', 1, 1, NULL, 53, '2024-09-27 11:58:01', '2024-09-27 11:58:01'),
(115, '/uploads/products/1727438281_3100.jpg', 1, 1, NULL, 53, '2024-09-27 11:58:01', '2024-09-27 11:58:01'),
(116, '/uploads/products/1727438281_8288.jpg', 1, 1, NULL, 53, '2024-09-27 11:58:01', '2024-09-27 11:58:01'),
(117, '/uploads/products/1727438281_2413.jpg', 1, 1, NULL, 53, '2024-09-27 11:58:01', '2024-09-27 11:58:01'),
(118, '/uploads/products/1727438281_3844.jpg', 1, 1, NULL, 53, '2024-09-27 11:58:01', '2024-09-27 11:58:01'),
(119, '/uploads/products/1727438281_4976.jpg', 1, 1, NULL, 53, '2024-09-27 11:58:01', '2024-09-27 11:58:01'),
(120, '/uploads/products/1727710321_7975.jpg', 1, 1, NULL, 54, '2024-09-30 15:32:01', '2024-09-30 15:32:01'),
(121, '/uploads/products/1727710321_7794.jpg', 1, 1, NULL, 54, '2024-09-30 15:32:01', '2024-09-30 15:32:01'),
(122, '/uploads/products/1727710321_8264.jpg', 1, 1, NULL, 54, '2024-09-30 15:32:01', '2024-09-30 15:32:01'),
(123, '/uploads/products/1727710321_3046.jpg', 1, 1, NULL, 54, '2024-09-30 15:32:01', '2024-09-30 15:32:01'),
(129, '/uploads/products/1727793449_7474.jpg', 1, 0, NULL, 55, '2024-10-01 14:37:29', '2024-10-01 14:38:54'),
(130, '/uploads/products/1727793449_9864.jpg', 1, 0, NULL, 55, '2024-10-01 14:37:29', '2024-10-01 14:38:54'),
(131, '/uploads/products/1727793449_2735.jpg', 1, 0, NULL, 55, '2024-10-01 14:37:29', '2024-10-01 14:38:54'),
(132, '/uploads/products/1727793595_7199.jpg', 1, 1, NULL, 55, '2024-10-01 14:39:55', '2024-10-01 14:39:55'),
(137, '/uploads/products/1728121939_9043.jpg', 1, 0, NULL, 56, '2024-10-05 09:52:19', '2024-10-05 10:47:21'),
(138, '/uploads/products/1728121939_8551.jpg', 1, 0, NULL, 56, '2024-10-05 09:52:19', '2024-10-05 10:47:21'),
(139, '/uploads/products/1728121939_2094.jpg', 1, 1, NULL, 56, '2024-10-05 09:52:19', '2024-10-05 10:47:21'),
(140, '/uploads/products/1728121939_2828.jpg', 1, 0, NULL, 56, '2024-10-05 09:52:19', '2024-10-05 10:47:21'),
(141, '/uploads/products/1728121939_4175.jpg', 1, 0, NULL, 56, '2024-10-05 09:52:19', '2024-10-05 10:47:21'),
(142, '/uploads/products/1728122773_6997.jpg', 1, 0, NULL, 57, '2024-10-05 10:06:13', '2024-10-05 10:13:04'),
(143, '/uploads/products/1728122773_3942.jpg', 1, 0, NULL, 57, '2024-10-05 10:06:13', '2024-10-05 10:13:04'),
(144, '/uploads/products/1728122773_6160.jpg', 1, 0, NULL, 57, '2024-10-05 10:06:13', '2024-10-05 10:13:04'),
(145, '/uploads/products/1728122773_4924.jpg', 1, 1, NULL, 57, '2024-10-05 10:06:13', '2024-10-05 10:13:04'),
(146, '/uploads/products/1728122773_3441.jpg', 1, 0, NULL, 57, '2024-10-05 10:06:13', '2024-10-05 10:13:04'),
(147, '/uploads/products/1728123891_5344.jpg', 1, 0, NULL, 58, '2024-10-05 10:24:51', '2024-10-05 10:43:45'),
(148, '/uploads/products/1728123891_5257.jpg', 1, 1, NULL, 58, '2024-10-05 10:24:51', '2024-10-05 10:43:45'),
(149, '/uploads/products/1728123891_3024.jpg', 1, 0, NULL, 58, '2024-10-05 10:24:51', '2024-10-05 10:43:45'),
(150, '/uploads/products/1728123891_8047.jpg', 1, 0, NULL, 58, '2024-10-05 10:24:51', '2024-10-05 10:43:45'),
(151, '/uploads/products/1728127161_3028.jpg', 1, 1, NULL, 56, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(152, '/uploads/products/1728127161_4085.jpg', 1, 1, NULL, 56, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(153, '/uploads/products/1728127161_6521.jpg', 1, 1, NULL, 56, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(162, '/uploads/products/1728129251_8724.jpg', 1, 1, NULL, 60, '2024-10-05 11:54:11', '2024-10-05 11:54:11'),
(163, '/uploads/products/1728129251_8899.jpg', 1, 1, NULL, 60, '2024-10-05 11:54:12', '2024-10-05 11:54:12'),
(165, '/uploads/products/1728130094_2065.jpg', 1, 1, NULL, 61, '2024-10-05 12:08:15', '2024-10-05 12:27:13'),
(166, '/uploads/products/1728130095_6745.jpg', 1, 0, NULL, 61, '2024-10-05 12:08:15', '2024-10-05 12:27:13'),
(171, '/uploads/products/1728130558_7718.jpg', 1, 0, NULL, 61, '2024-10-05 12:15:58', '2024-10-05 12:27:13'),
(172, '/uploads/products/1728131421_2936.jpg', 1, 1, NULL, 60, '2024-10-05 12:30:21', '2024-10-05 12:30:21'),
(173, '/uploads/products/1728131683_2891.jpg', 1, 0, NULL, 62, '2024-10-05 12:34:43', '2024-10-05 12:39:15'),
(174, '/uploads/products/1728131683_4166.jpg', 1, 1, NULL, 62, '2024-10-05 12:34:43', '2024-10-05 12:39:15'),
(175, '/uploads/products/1728131683_6943.jpg', 1, 0, NULL, 62, '2024-10-05 12:34:43', '2024-10-05 12:39:15'),
(176, '/uploads/products/1728131877_2444.jpg', 1, 1, NULL, 63, '2024-10-05 12:37:57', '2024-10-05 12:43:44'),
(177, '/uploads/products/1728131877_7052.jpg', 1, 0, NULL, 63, '2024-10-05 12:37:57', '2024-10-05 12:43:44'),
(178, '/uploads/products/1728132321_6691.jpg', 1, 1, NULL, 64, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(179, '/uploads/products/1728132321_1690.jpg', 1, 1, NULL, 64, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(180, '/uploads/products/1728132321_2141.jpg', 1, 1, NULL, 64, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(181, '/uploads/products/1728132321_4778.jpg', 1, 1, NULL, 64, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(182, '/uploads/products/1728132321_3047.jpg', 1, 1, NULL, 64, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(183, '/uploads/products/1728132321_6932.jpg', 1, 1, NULL, 64, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(184, '/uploads/products/1728134676_7789.jpg', 1, 0, NULL, 59, '2024-10-05 13:24:36', '2024-10-05 13:24:45'),
(185, '/uploads/products/1728134676_6543.jpg', 1, 0, NULL, 59, '2024-10-05 13:24:36', '2024-10-05 13:24:45'),
(186, '/uploads/products/1728134676_7201.jpg', 1, 0, NULL, 59, '2024-10-05 13:24:36', '2024-10-05 13:24:45'),
(187, '/uploads/products/1728134676_6173.jpg', 1, 0, NULL, 59, '2024-10-05 13:24:36', '2024-10-05 13:24:45'),
(188, '/uploads/products/1728134676_5643.jpg', 1, 1, NULL, 59, '2024-10-05 13:24:36', '2024-10-05 13:24:45'),
(189, '/uploads/products/1728134940_2787.jpg', 1, 1, NULL, 65, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(190, '/uploads/products/1728134940_9516.jpg', 1, 1, NULL, 65, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(191, '/uploads/products/1728134940_4535.jpg', 1, 1, NULL, 65, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(192, '/uploads/products/1728134940_8167.jpg', 1, 1, NULL, 65, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(193, '/uploads/products/1728153761_7754.jpg', 1, 1, NULL, 66, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(194, '/uploads/products/1728153761_2694.jpg', 1, 1, NULL, 66, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(195, '/uploads/products/1728153761_7453.jpg', 1, 1, NULL, 66, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(196, '/uploads/products/1728156821_1811.jpg', 1, 1, NULL, 67, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(197, '/uploads/products/1728156821_4909.jpg', 1, 1, NULL, 67, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(198, '/uploads/products/1728156821_6772.jpg', 1, 1, NULL, 67, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(200, '/uploads/products/1728157052_4047.jpg', 1, 0, NULL, 68, '2024-10-05 19:37:32', '2024-10-05 19:38:18'),
(201, '/uploads/products/1728157052_1200.jpg', 1, 1, NULL, 68, '2024-10-05 19:37:32', '2024-10-05 19:38:18'),
(202, '/uploads/products/1728157052_1026.jpg', 1, 0, NULL, 68, '2024-10-05 19:37:32', '2024-10-05 19:38:18'),
(203, '/uploads/products/1728160070_1890.png', 1, 1, NULL, 69, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(204, '/uploads/products/1728160070_5468.png', 1, 1, NULL, 69, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(205, '/uploads/products/1728160070_6353.png', 1, 1, NULL, 69, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(206, '/uploads/products/1728160526_7848.jpg', 1, 1, NULL, 70, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(207, '/uploads/products/1728160526_3680.jpg', 1, 1, NULL, 70, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(208, '/uploads/products/1728160526_5151.jpg', 1, 1, NULL, 70, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(209, '/uploads/products/1728161404_2197.jpg', 1, 1, NULL, 71, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(210, '/uploads/products/1728161404_9702.jpg', 1, 1, NULL, 71, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(211, '/uploads/products/1728161404_4912.jpg', 1, 1, NULL, 71, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(212, '/uploads/products/1728202731_8545.jpg', 1, 1, NULL, 72, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(213, '/uploads/products/1728202731_2603.jpg', 1, 1, NULL, 72, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(214, '/uploads/products/1728202731_4403.jpg', 1, 1, NULL, 72, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(215, '/uploads/products/1728203261_3147.jpg', 1, 1, NULL, 73, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(216, '/uploads/products/1728203261_2512.jpg', 1, 1, NULL, 73, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(217, '/uploads/products/1728234208_7363.jpg', 1, 1, NULL, 74, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(218, '/uploads/products/1728234208_3805.jpg', 1, 1, NULL, 74, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(219, '/uploads/products/1728234667_7742.jpg', 1, 1, NULL, 75, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(220, '/uploads/products/1728234667_1127.jpg', 1, 1, NULL, 75, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(221, '/uploads/products/1728234667_6365.jpg', 1, 1, NULL, 75, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(222, '/uploads/products/1728234987_1596.jpg', 1, 1, NULL, 76, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(223, '/uploads/products/1728235403_2000.jpg', 1, 1, NULL, 77, '2024-10-06 17:23:23', '2024-10-06 17:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_quantity`
--

CREATE TABLE `product_quantity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) DEFAULT 10,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_quantity`
--

INSERT INTO `product_quantity` (`id`, `product_id`, `size_id`, `color_id`, `quantity`, `created_at`, `updated_at`) VALUES
(188, 13, 1, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:51:25'),
(189, 13, 2, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(190, 13, 3, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(191, 13, 7, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(192, 13, 8, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(193, 13, 9, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(194, 13, 10, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(195, 13, 11, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(196, 13, 12, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(197, 13, 13, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(198, 13, 14, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(199, 13, 15, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(200, 13, 16, 3, 10, '2024-08-26 13:27:48', '2024-08-26 13:27:48'),
(201, 14, 1, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(202, 14, 2, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(203, 14, 3, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(204, 14, 7, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(205, 14, 8, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(206, 14, 9, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(207, 14, 10, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(208, 14, 11, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(209, 14, 12, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(210, 14, 13, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(211, 14, 14, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(212, 14, 15, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(213, 14, 16, 4, 10, '2024-08-26 13:31:11', '2024-08-26 13:31:11'),
(214, 15, 1, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(215, 15, 2, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(216, 15, 3, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(217, 15, 7, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(218, 15, 8, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(219, 15, 9, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(220, 15, 10, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(221, 15, 11, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(222, 15, 12, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(223, 15, 13, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(224, 15, 14, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(225, 15, 15, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(226, 15, 16, 7, 10, '2024-08-26 13:31:28', '2024-08-26 13:31:28'),
(227, 16, 1, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(228, 16, 2, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(229, 16, 3, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(230, 16, 7, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(231, 16, 8, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(232, 16, 9, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(233, 16, 10, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(234, 16, 11, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(235, 16, 12, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(236, 16, 13, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(237, 16, 14, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(238, 16, 15, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(239, 16, 16, 4, 10, '2024-08-26 13:31:48', '2024-08-26 13:31:48'),
(240, 17, 1, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(241, 17, 2, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(242, 17, 3, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(243, 17, 7, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(244, 17, 8, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(245, 17, 9, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(246, 17, 10, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(247, 17, 11, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(248, 17, 12, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(249, 17, 13, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(250, 17, 14, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(251, 17, 15, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(252, 17, 16, 8, 10, '2024-08-26 13:32:31', '2024-08-26 13:32:31'),
(253, 18, 1, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(254, 18, 2, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(255, 18, 3, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(256, 18, 7, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(257, 18, 8, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(258, 18, 9, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(259, 18, 10, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(260, 18, 11, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(261, 18, 12, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(262, 18, 13, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(263, 18, 14, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(264, 18, 15, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(265, 18, 16, 11, 10, '2024-08-26 13:32:48', '2024-08-26 13:32:48'),
(266, 19, 1, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(267, 19, 2, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(268, 19, 3, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(269, 19, 7, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(270, 19, 8, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(271, 19, 9, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(272, 19, 10, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(273, 19, 11, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(274, 19, 12, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(275, 19, 13, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(276, 19, 14, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(277, 19, 15, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(278, 19, 16, 8, 10, '2024-08-26 13:33:17', '2024-08-26 13:33:17'),
(279, 20, 1, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(280, 20, 2, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(281, 20, 3, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(282, 20, 7, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(283, 20, 8, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(284, 20, 9, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(285, 20, 10, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(286, 20, 11, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(287, 20, 12, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(288, 20, 13, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(289, 20, 14, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(290, 20, 15, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(291, 20, 16, 14, 10, '2024-08-26 13:33:44', '2024-08-26 13:33:44'),
(292, 22, 1, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(293, 22, 2, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(294, 22, 3, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(295, 22, 7, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(296, 22, 8, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(297, 22, 9, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(298, 22, 10, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(299, 22, 11, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(300, 22, 12, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(301, 22, 13, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(302, 22, 14, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(303, 22, 15, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(304, 22, 16, 8, 10, '2024-08-26 13:33:51', '2024-08-26 13:33:51'),
(305, 23, 1, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(306, 23, 2, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(307, 23, 3, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(308, 23, 7, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(309, 23, 8, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(310, 23, 9, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(311, 23, 10, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(312, 23, 11, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(313, 23, 12, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(314, 23, 13, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(315, 23, 14, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(316, 23, 15, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(317, 23, 16, 11, 10, '2024-08-26 13:34:01', '2024-08-26 13:34:01'),
(318, 24, 1, 4, 10, '2024-08-26 13:35:12', '2024-08-26 13:35:12'),
(319, 24, 2, 4, 10, '2024-08-26 13:35:12', '2024-08-26 13:35:12'),
(320, 24, 3, 4, 10, '2024-08-26 13:35:12', '2024-08-26 13:35:12'),
(321, 24, 7, 4, 10, '2024-08-26 13:35:12', '2024-08-26 13:35:12'),
(322, 24, 8, 4, 10, '2024-08-26 13:35:12', '2024-08-26 13:35:12'),
(323, 24, 9, 4, 10, '2024-08-26 13:35:12', '2024-08-26 13:35:12'),
(324, 24, 10, 4, 10, '2024-08-26 13:35:12', '2024-08-26 13:35:12'),
(325, 24, 11, 4, 10, '2024-08-26 13:35:12', '2024-08-26 13:35:12'),
(326, 24, 12, 4, 10, '2024-08-26 13:35:12', '2024-08-26 13:35:12'),
(327, 25, 1, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(328, 25, 2, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(329, 25, 3, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(330, 25, 7, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(331, 25, 8, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(332, 25, 9, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(333, 25, 10, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(334, 25, 11, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(335, 25, 12, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(336, 25, 13, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(337, 25, 14, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(338, 25, 15, 13, 10, '2024-08-26 13:35:23', '2024-08-26 13:35:23'),
(339, 26, 1, 10, 10, '2024-08-26 13:35:34', '2024-08-26 13:35:34'),
(340, 27, 1, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(341, 27, 2, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(342, 27, 3, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(343, 27, 7, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(344, 27, 8, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(345, 27, 9, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(346, 27, 10, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(347, 27, 11, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(348, 27, 12, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(349, 27, 13, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(350, 27, 14, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(351, 27, 15, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(352, 27, 16, 9, 10, '2024-08-26 13:36:05', '2024-08-26 13:36:05'),
(353, 28, 1, 8, 10, '2024-08-26 13:36:24', '2024-08-26 13:36:24'),
(354, 28, 2, 8, 10, '2024-08-26 13:36:24', '2024-08-26 13:36:24'),
(355, 28, 3, 8, 10, '2024-08-26 13:36:24', '2024-08-26 13:36:24'),
(356, 28, 7, 8, 10, '2024-08-26 13:36:24', '2024-08-26 13:36:24'),
(357, 28, 8, 8, 10, '2024-08-26 13:36:24', '2024-08-26 13:36:24'),
(358, 28, 9, 8, 10, '2024-08-26 13:36:24', '2024-08-26 13:36:24'),
(359, 28, 10, 8, 10, '2024-08-26 13:36:24', '2024-08-26 13:36:24'),
(360, 28, 11, 8, 10, '2024-08-26 13:36:24', '2024-08-26 13:36:24'),
(361, 28, 12, 8, 10, '2024-08-26 13:36:24', '2024-08-26 13:36:24'),
(362, 28, 13, 8, 10, '2024-08-26 13:36:24', '2024-08-26 13:36:24'),
(363, 35, 2, 8, 10, '2024-08-26 13:36:32', '2024-08-26 13:36:32'),
(364, 35, 3, 8, 10, '2024-08-26 13:36:32', '2024-08-26 13:36:32'),
(365, 35, 7, 8, 10, '2024-08-26 13:36:32', '2024-08-26 13:36:32'),
(366, 35, 8, 8, 10, '2024-08-26 13:36:32', '2024-08-26 13:36:32'),
(367, 35, 9, 8, 10, '2024-08-26 13:36:32', '2024-08-26 13:36:32'),
(368, 35, 10, 8, 10, '2024-08-26 13:36:32', '2024-08-26 13:36:32'),
(369, 35, 11, 8, 10, '2024-08-26 13:36:32', '2024-08-26 13:36:32'),
(370, 35, 12, 8, 9, '2024-08-26 13:36:32', '2024-08-26 13:50:06'),
(371, 35, 13, 8, 10, '2024-08-26 13:36:32', '2024-08-26 13:36:32'),
(374, 51, 1, 1, 30, '2024-08-26 14:21:37', '2024-08-26 14:22:31'),
(375, 51, 1, 2, 10, '2024-08-26 14:21:37', '2024-08-26 14:21:37'),
(376, 51, 2, 1, 10, '2024-08-26 14:21:37', '2024-08-26 14:21:37'),
(377, 51, 2, 2, 90, '2024-08-26 14:21:37', '2024-08-26 14:24:25'),
(378, 50, 1, 8, 10, '2024-08-26 16:10:05', '2024-08-26 16:10:05'),
(379, 52, 1, 2, 10, '2024-08-28 11:30:07', '2024-08-28 11:30:07'),
(406, 53, 1, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(407, 53, 2, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(408, 53, 3, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(409, 53, 7, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(410, 53, 8, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(411, 53, 9, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(412, 53, 10, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(413, 53, 11, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(414, 53, 12, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(415, 53, 13, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(416, 53, 14, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(417, 53, 15, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(418, 53, 16, 18, 10, '2024-09-27 12:22:43', '2024-09-27 12:22:43'),
(419, 53, 1, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(420, 53, 2, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(421, 53, 3, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(422, 53, 7, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(423, 53, 8, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(424, 53, 9, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(425, 53, 10, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(426, 53, 11, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(427, 53, 12, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(428, 53, 13, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(429, 53, 14, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(430, 53, 15, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(431, 53, 16, 8, 10, '2024-09-27 13:10:47', '2024-09-27 13:10:47'),
(432, 54, 2, 1, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(433, 54, 2, 4, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(434, 54, 2, 5, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(435, 54, 2, 7, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(436, 54, 2, 8, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(437, 54, 2, 13, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(438, 54, 2, 14, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(439, 54, 3, 1, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(440, 54, 3, 4, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(441, 54, 3, 5, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(442, 54, 3, 7, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(443, 54, 3, 8, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(444, 54, 3, 13, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(445, 54, 3, 14, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(446, 54, 8, 1, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(447, 54, 8, 4, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(448, 54, 8, 5, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(449, 54, 8, 7, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(450, 54, 8, 8, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(451, 54, 8, 13, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(452, 54, 8, 14, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(453, 54, 9, 1, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(454, 54, 9, 4, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(455, 54, 9, 5, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(456, 54, 9, 7, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(457, 54, 9, 8, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(458, 54, 9, 13, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(459, 54, 9, 14, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(460, 54, 10, 1, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(461, 54, 10, 4, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(462, 54, 10, 5, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(463, 54, 10, 7, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(464, 54, 10, 8, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(465, 54, 10, 13, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(466, 54, 10, 14, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(467, 54, 14, 1, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(468, 54, 14, 4, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(469, 54, 14, 5, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(470, 54, 14, 7, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(471, 54, 14, 8, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(472, 54, 14, 13, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(473, 54, 14, 14, 10, '2024-09-30 15:28:09', '2024-09-30 15:28:09'),
(474, 55, 1, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(475, 55, 1, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(476, 55, 2, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(477, 55, 2, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(478, 55, 3, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(479, 55, 3, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(480, 55, 7, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(481, 55, 7, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(482, 55, 8, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(483, 55, 8, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(484, 55, 9, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(485, 55, 9, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(486, 55, 10, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(487, 55, 10, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(488, 55, 11, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(489, 55, 11, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(490, 55, 12, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(491, 55, 12, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(492, 55, 13, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(493, 55, 13, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(494, 55, 14, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(495, 55, 14, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(496, 55, 15, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(497, 55, 15, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(498, 55, 16, 18, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(499, 55, 16, 19, 10, '2024-10-01 14:37:29', '2024-10-01 14:37:29'),
(500, 56, 1, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(501, 56, 1, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(502, 56, 2, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(503, 56, 2, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(504, 56, 3, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(505, 56, 3, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(506, 56, 7, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(507, 56, 7, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(508, 56, 8, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(509, 56, 8, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(510, 56, 9, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(511, 56, 9, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(512, 56, 10, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(513, 56, 10, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(514, 56, 11, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(515, 56, 11, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(516, 56, 12, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(517, 56, 12, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(518, 56, 13, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(519, 56, 13, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(520, 56, 14, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(521, 56, 14, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(522, 56, 15, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(523, 56, 15, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(524, 56, 16, 4, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(525, 56, 16, 8, 10, '2024-10-05 09:52:19', '2024-10-05 09:52:19'),
(539, 57, 1, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(540, 57, 2, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(541, 57, 3, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(542, 57, 7, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(543, 57, 8, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(544, 57, 9, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(545, 57, 10, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(546, 57, 11, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(547, 57, 12, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(548, 57, 13, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(549, 57, 14, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(550, 57, 15, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(551, 57, 16, 21, 10, '2024-10-05 10:13:10', '2024-10-05 10:13:10'),
(565, 58, 1, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(566, 58, 2, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(567, 58, 3, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(568, 58, 7, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(569, 58, 8, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(570, 58, 9, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(571, 58, 10, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(572, 58, 11, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(573, 58, 12, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(574, 58, 13, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(575, 58, 14, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(576, 58, 15, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(577, 58, 16, 22, 10, '2024-10-05 10:43:39', '2024-10-05 10:43:39'),
(578, 56, 1, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(579, 56, 2, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(580, 56, 3, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(581, 56, 7, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(582, 56, 8, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(583, 56, 9, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(584, 56, 10, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(585, 56, 11, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(586, 56, 12, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(587, 56, 13, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(588, 56, 14, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(589, 56, 15, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(590, 56, 16, 24, 10, '2024-10-05 11:19:21', '2024-10-05 11:19:21'),
(591, 59, 1, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(592, 59, 1, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(593, 59, 1, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(594, 59, 2, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(595, 59, 2, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(596, 59, 2, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(597, 59, 3, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(598, 59, 3, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(599, 59, 3, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(600, 59, 7, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(601, 59, 7, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(602, 59, 7, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(603, 59, 8, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(604, 59, 8, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(605, 59, 8, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(606, 59, 9, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(607, 59, 9, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(608, 59, 9, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(609, 59, 10, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(610, 59, 10, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(611, 59, 10, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(612, 59, 11, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(613, 59, 11, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(614, 59, 11, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(615, 59, 12, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(616, 59, 12, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(617, 59, 12, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(618, 59, 13, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(619, 59, 13, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(620, 59, 13, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(621, 59, 14, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(622, 59, 14, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(623, 59, 14, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(624, 59, 15, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(625, 59, 15, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(626, 59, 15, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(627, 59, 16, 8, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(628, 59, 16, 13, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(629, 59, 16, 19, 10, '2024-10-05 11:25:33', '2024-10-05 11:25:33'),
(643, 60, 1, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(644, 60, 2, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(645, 60, 3, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(646, 60, 7, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(647, 60, 8, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(648, 60, 9, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(649, 60, 10, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(650, 60, 11, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(651, 60, 12, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(652, 60, 13, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(653, 60, 14, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(654, 60, 15, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(655, 60, 16, 24, 10, '2024-10-05 11:59:52', '2024-10-05 11:59:52'),
(656, 61, 1, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(657, 61, 2, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(658, 61, 3, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(659, 61, 7, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(660, 61, 8, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(661, 61, 9, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(662, 61, 10, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(663, 61, 11, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(664, 61, 12, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(665, 61, 13, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(666, 61, 14, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(667, 61, 15, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(668, 61, 16, 4, 10, '2024-10-05 12:08:15', '2024-10-05 12:08:15'),
(669, 62, 1, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(670, 62, 1, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(671, 62, 1, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(672, 62, 2, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(673, 62, 2, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(674, 62, 2, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(675, 62, 3, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(676, 62, 3, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(677, 62, 3, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(678, 62, 7, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(679, 62, 7, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(680, 62, 7, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(681, 62, 8, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(682, 62, 8, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(683, 62, 8, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(684, 62, 9, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(685, 62, 9, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(686, 62, 9, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(687, 62, 10, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(688, 62, 10, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(689, 62, 10, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(690, 62, 11, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(691, 62, 11, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(692, 62, 11, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(693, 62, 12, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(694, 62, 12, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(695, 62, 12, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(696, 62, 13, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(697, 62, 13, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(698, 62, 13, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(699, 62, 14, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(700, 62, 14, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(701, 62, 14, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(702, 62, 15, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(703, 62, 15, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(704, 62, 15, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(705, 62, 16, 8, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(706, 62, 16, 9, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(707, 62, 16, 13, 10, '2024-10-05 12:34:43', '2024-10-05 12:34:43'),
(708, 63, 1, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(709, 63, 1, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(710, 63, 1, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(711, 63, 2, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(712, 63, 2, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(713, 63, 2, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(714, 63, 3, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(715, 63, 3, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(716, 63, 3, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(717, 63, 7, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(718, 63, 7, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(719, 63, 7, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(720, 63, 8, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(721, 63, 8, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(722, 63, 8, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(723, 63, 9, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(724, 63, 9, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(725, 63, 9, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(726, 63, 10, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(727, 63, 10, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(728, 63, 10, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(729, 63, 11, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(730, 63, 11, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(731, 63, 11, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(732, 63, 12, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(733, 63, 12, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(734, 63, 12, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(735, 63, 13, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(736, 63, 13, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(737, 63, 13, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(738, 63, 14, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(739, 63, 14, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(740, 63, 14, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(741, 63, 15, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(742, 63, 15, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(743, 63, 15, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(744, 63, 16, 8, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(745, 63, 16, 9, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(746, 63, 16, 13, 10, '2024-10-05 12:37:57', '2024-10-05 12:37:57'),
(747, 64, 1, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(748, 64, 2, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(749, 64, 3, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(750, 64, 7, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(751, 64, 8, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(752, 64, 9, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(753, 64, 10, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(754, 64, 11, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(755, 64, 12, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(756, 64, 13, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(757, 64, 14, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(758, 64, 15, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(759, 64, 16, 8, 10, '2024-10-05 12:45:21', '2024-10-05 12:45:21'),
(760, 65, 1, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(761, 65, 2, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(762, 65, 3, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(763, 65, 7, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(764, 65, 8, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(765, 65, 9, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(766, 65, 10, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(767, 65, 11, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(768, 65, 12, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(769, 65, 13, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(770, 65, 14, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(771, 65, 15, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(772, 65, 16, 8, 10, '2024-10-05 13:29:00', '2024-10-05 13:29:00'),
(773, 66, 1, 4, 10, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(774, 66, 2, 4, 10, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(775, 66, 3, 4, 10, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(776, 66, 7, 4, 10, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(777, 66, 8, 4, 10, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(778, 66, 9, 4, 10, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(779, 66, 10, 4, 10, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(780, 66, 11, 4, 10, '2024-10-05 18:42:41', '2024-10-05 18:42:41'),
(781, 67, 1, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(782, 67, 2, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(783, 67, 3, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(784, 67, 7, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(785, 67, 8, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(786, 67, 9, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(787, 67, 10, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(788, 67, 11, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(789, 67, 12, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(790, 67, 13, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(791, 67, 14, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(792, 67, 15, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(793, 67, 16, 8, 10, '2024-10-05 19:33:41', '2024-10-05 19:33:41'),
(794, 68, 1, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(795, 68, 2, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(796, 68, 3, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(797, 68, 7, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(798, 68, 8, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(799, 68, 9, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(800, 68, 10, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(801, 68, 11, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(802, 68, 12, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(803, 68, 13, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(804, 68, 14, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(805, 68, 15, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(806, 68, 16, 8, 10, '2024-10-05 19:37:32', '2024-10-05 19:37:32'),
(807, 69, 9, 4, 10, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(808, 69, 9, 20, 10, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(809, 69, 10, 4, 10, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(810, 69, 10, 20, 10, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(811, 69, 11, 4, 10, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(812, 69, 11, 20, 10, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(813, 69, 12, 4, 10, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(814, 69, 12, 20, 10, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(815, 69, 13, 4, 10, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(816, 69, 13, 20, 10, '2024-10-05 20:27:50', '2024-10-05 20:27:50'),
(817, 70, 1, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(818, 70, 2, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(819, 70, 3, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(820, 70, 7, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(821, 70, 8, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(822, 70, 9, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(823, 70, 10, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(824, 70, 11, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(825, 70, 12, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(826, 70, 13, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(827, 70, 14, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(828, 70, 15, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(829, 70, 16, 4, 10, '2024-10-05 20:35:26', '2024-10-05 20:35:26'),
(830, 71, 1, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(831, 71, 2, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(832, 71, 3, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(833, 71, 7, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(834, 71, 8, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(835, 71, 9, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(836, 71, 10, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(837, 71, 11, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(838, 71, 12, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(839, 71, 13, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(840, 71, 14, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(841, 71, 15, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(842, 71, 16, 4, 10, '2024-10-05 20:50:04', '2024-10-05 20:50:04'),
(843, 72, 1, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(844, 72, 2, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(845, 72, 3, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(846, 72, 7, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(847, 72, 8, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(848, 72, 9, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(849, 72, 10, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(850, 72, 11, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(851, 72, 12, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(852, 72, 13, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(853, 72, 14, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(854, 72, 15, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(855, 72, 16, 4, 10, '2024-10-06 08:18:51', '2024-10-06 08:18:51'),
(856, 73, 1, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(857, 73, 2, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(858, 73, 3, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(859, 73, 7, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(860, 73, 8, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(861, 73, 9, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(862, 73, 10, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(863, 73, 11, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(864, 73, 12, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(865, 73, 13, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(866, 73, 14, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(867, 73, 15, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(868, 73, 16, 4, 10, '2024-10-06 08:27:41', '2024-10-06 08:27:41'),
(869, 74, 1, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(870, 74, 2, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(871, 74, 3, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(872, 74, 7, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(873, 74, 8, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(874, 74, 9, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(875, 74, 10, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(876, 74, 11, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(877, 74, 12, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(878, 74, 13, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(879, 74, 14, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(880, 74, 15, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(881, 74, 16, 24, 10, '2024-10-06 17:03:28', '2024-10-06 17:03:28'),
(882, 75, 1, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(883, 75, 2, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(884, 75, 3, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(885, 75, 7, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(886, 75, 8, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(887, 75, 9, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(888, 75, 10, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(889, 75, 11, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(890, 75, 12, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(891, 75, 13, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(892, 75, 14, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(893, 75, 15, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(894, 75, 16, 9, 10, '2024-10-06 17:11:07', '2024-10-06 17:11:07'),
(895, 76, 1, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(896, 76, 2, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(897, 76, 3, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(898, 76, 7, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(899, 76, 8, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(900, 76, 9, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(901, 76, 10, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(902, 76, 11, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(903, 76, 12, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(904, 76, 13, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(905, 76, 14, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(906, 76, 15, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(907, 76, 16, 8, 10, '2024-10-06 17:16:27', '2024-10-06 17:16:27'),
(908, 77, 1, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(909, 77, 2, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(910, 77, 3, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(911, 77, 7, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(912, 77, 8, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(913, 77, 9, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(914, 77, 10, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(915, 77, 11, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(916, 77, 12, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(917, 77, 13, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(918, 77, 14, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(919, 77, 15, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23'),
(920, 77, 16, 6, 10, '2024-10-06 17:23:23', '2024-10-06 17:23:23');

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
(18, 8, 3, NULL, NULL),
(22, 10, 1, NULL, NULL),
(23, 10, 2, NULL, NULL),
(24, 10, 3, NULL, NULL),
(25, 3, 3, NULL, NULL),
(26, 11, 1, NULL, NULL),
(27, 11, 2, NULL, NULL),
(28, 11, 3, NULL, NULL),
(29, 3, 7, NULL, NULL),
(30, 3, 8, NULL, NULL),
(31, 3, 9, NULL, NULL),
(32, 3, 10, NULL, NULL),
(33, 3, 11, NULL, NULL),
(34, 3, 12, NULL, NULL),
(35, 3, 13, NULL, NULL),
(36, 3, 14, NULL, NULL),
(37, 3, 15, NULL, NULL),
(38, 3, 16, NULL, NULL),
(39, 4, 7, NULL, NULL),
(40, 4, 8, NULL, NULL),
(41, 4, 9, NULL, NULL),
(42, 4, 10, NULL, NULL),
(43, 4, 11, NULL, NULL),
(44, 4, 12, NULL, NULL),
(45, 4, 13, NULL, NULL),
(46, 4, 14, NULL, NULL),
(47, 4, 15, NULL, NULL),
(48, 4, 16, NULL, NULL),
(49, 5, 7, NULL, NULL),
(50, 5, 8, NULL, NULL),
(51, 5, 9, NULL, NULL),
(52, 5, 10, NULL, NULL),
(53, 5, 11, NULL, NULL),
(54, 5, 12, NULL, NULL),
(55, 5, 13, NULL, NULL),
(56, 5, 14, NULL, NULL),
(57, 5, 15, NULL, NULL),
(58, 5, 16, NULL, NULL),
(59, 6, 7, NULL, NULL),
(60, 6, 8, NULL, NULL),
(61, 6, 9, NULL, NULL),
(62, 6, 10, NULL, NULL),
(63, 6, 11, NULL, NULL),
(64, 6, 12, NULL, NULL),
(65, 6, 13, NULL, NULL),
(66, 6, 14, NULL, NULL),
(67, 6, 15, NULL, NULL),
(68, 6, 16, NULL, NULL),
(69, 7, 7, NULL, NULL),
(70, 7, 8, NULL, NULL),
(71, 7, 9, NULL, NULL),
(72, 7, 10, NULL, NULL),
(73, 7, 11, NULL, NULL),
(74, 7, 12, NULL, NULL),
(75, 7, 13, NULL, NULL),
(76, 7, 14, NULL, NULL),
(77, 7, 15, NULL, NULL),
(78, 7, 16, NULL, NULL),
(79, 8, 7, NULL, NULL),
(80, 8, 8, NULL, NULL),
(81, 8, 9, NULL, NULL),
(82, 8, 10, NULL, NULL),
(83, 8, 11, NULL, NULL),
(84, 8, 12, NULL, NULL),
(85, 8, 13, NULL, NULL),
(86, 8, 14, NULL, NULL),
(87, 8, 15, NULL, NULL),
(88, 8, 16, NULL, NULL),
(89, 11, 7, NULL, NULL),
(90, 11, 8, NULL, NULL),
(91, 11, 9, NULL, NULL),
(92, 11, 10, NULL, NULL),
(93, 11, 11, NULL, NULL),
(94, 11, 12, NULL, NULL),
(95, 11, 13, NULL, NULL),
(96, 11, 14, NULL, NULL),
(97, 11, 15, NULL, NULL),
(98, 11, 16, NULL, NULL),
(99, 12, 1, NULL, NULL),
(100, 12, 2, NULL, NULL),
(101, 13, 1, NULL, NULL),
(102, 13, 2, NULL, NULL),
(103, 13, 3, NULL, NULL),
(104, 13, 7, NULL, NULL),
(105, 13, 8, NULL, NULL),
(106, 13, 9, NULL, NULL),
(107, 13, 10, NULL, NULL),
(108, 13, 11, NULL, NULL),
(109, 13, 12, NULL, NULL),
(110, 13, 13, NULL, NULL),
(111, 13, 14, NULL, NULL),
(112, 13, 15, NULL, NULL),
(113, 13, 16, NULL, NULL),
(114, 14, 1, NULL, NULL),
(115, 14, 2, NULL, NULL),
(116, 14, 3, NULL, NULL),
(117, 14, 7, NULL, NULL),
(118, 14, 8, NULL, NULL),
(119, 14, 9, NULL, NULL),
(120, 14, 10, NULL, NULL),
(121, 14, 11, NULL, NULL),
(122, 14, 12, NULL, NULL),
(123, 14, 13, NULL, NULL),
(124, 14, 14, NULL, NULL),
(125, 14, 15, NULL, NULL),
(126, 14, 16, NULL, NULL),
(127, 15, 1, NULL, NULL),
(128, 15, 2, NULL, NULL),
(129, 15, 3, NULL, NULL),
(130, 15, 7, NULL, NULL),
(131, 15, 8, NULL, NULL),
(132, 15, 9, NULL, NULL),
(133, 15, 10, NULL, NULL),
(134, 15, 11, NULL, NULL),
(135, 15, 12, NULL, NULL),
(136, 15, 13, NULL, NULL),
(137, 15, 14, NULL, NULL),
(138, 15, 15, NULL, NULL),
(139, 15, 16, NULL, NULL),
(140, 16, 1, NULL, NULL),
(141, 16, 2, NULL, NULL),
(142, 16, 3, NULL, NULL),
(143, 16, 7, NULL, NULL),
(144, 16, 8, NULL, NULL),
(145, 16, 9, NULL, NULL),
(146, 16, 10, NULL, NULL),
(147, 16, 11, NULL, NULL),
(148, 16, 12, NULL, NULL),
(149, 16, 13, NULL, NULL),
(150, 16, 14, NULL, NULL),
(151, 16, 15, NULL, NULL),
(152, 16, 16, NULL, NULL),
(153, 17, 1, NULL, NULL),
(154, 17, 2, NULL, NULL),
(155, 17, 3, NULL, NULL),
(156, 17, 7, NULL, NULL),
(157, 17, 8, NULL, NULL),
(158, 17, 9, NULL, NULL),
(159, 17, 10, NULL, NULL),
(160, 17, 11, NULL, NULL),
(161, 17, 12, NULL, NULL),
(162, 17, 13, NULL, NULL),
(163, 17, 14, NULL, NULL),
(164, 17, 15, NULL, NULL),
(165, 17, 16, NULL, NULL),
(166, 18, 1, NULL, NULL),
(167, 18, 2, NULL, NULL),
(168, 18, 3, NULL, NULL),
(169, 18, 7, NULL, NULL),
(170, 18, 8, NULL, NULL),
(171, 18, 9, NULL, NULL),
(172, 18, 10, NULL, NULL),
(173, 18, 11, NULL, NULL),
(174, 18, 12, NULL, NULL),
(175, 18, 13, NULL, NULL),
(176, 18, 14, NULL, NULL),
(177, 18, 15, NULL, NULL),
(178, 18, 16, NULL, NULL),
(179, 19, 1, NULL, NULL),
(180, 19, 2, NULL, NULL),
(181, 19, 3, NULL, NULL),
(182, 19, 7, NULL, NULL),
(183, 19, 8, NULL, NULL),
(184, 19, 9, NULL, NULL),
(185, 19, 10, NULL, NULL),
(186, 19, 11, NULL, NULL),
(187, 19, 12, NULL, NULL),
(188, 19, 13, NULL, NULL),
(189, 19, 14, NULL, NULL),
(190, 19, 15, NULL, NULL),
(191, 19, 16, NULL, NULL),
(192, 20, 1, NULL, NULL),
(193, 20, 2, NULL, NULL),
(194, 20, 3, NULL, NULL),
(195, 20, 7, NULL, NULL),
(196, 20, 8, NULL, NULL),
(197, 20, 9, NULL, NULL),
(198, 20, 10, NULL, NULL),
(199, 20, 11, NULL, NULL),
(200, 20, 12, NULL, NULL),
(201, 20, 13, NULL, NULL),
(202, 20, 14, NULL, NULL),
(203, 20, 15, NULL, NULL),
(204, 20, 16, NULL, NULL),
(205, 21, 2, NULL, NULL),
(206, 22, 1, NULL, NULL),
(207, 22, 2, NULL, NULL),
(208, 22, 3, NULL, NULL),
(209, 22, 7, NULL, NULL),
(210, 22, 8, NULL, NULL),
(211, 22, 9, NULL, NULL),
(212, 22, 10, NULL, NULL),
(213, 22, 11, NULL, NULL),
(214, 22, 12, NULL, NULL),
(215, 22, 13, NULL, NULL),
(216, 22, 14, NULL, NULL),
(217, 22, 15, NULL, NULL),
(218, 22, 16, NULL, NULL),
(219, 23, 1, NULL, NULL),
(220, 23, 2, NULL, NULL),
(221, 23, 3, NULL, NULL),
(222, 23, 7, NULL, NULL),
(223, 23, 8, NULL, NULL),
(224, 23, 9, NULL, NULL),
(225, 23, 10, NULL, NULL),
(226, 23, 11, NULL, NULL),
(227, 23, 12, NULL, NULL),
(228, 23, 13, NULL, NULL),
(229, 23, 14, NULL, NULL),
(230, 23, 15, NULL, NULL),
(231, 23, 16, NULL, NULL),
(232, 24, 1, NULL, NULL),
(233, 24, 2, NULL, NULL),
(234, 24, 3, NULL, NULL),
(235, 24, 7, NULL, NULL),
(236, 24, 8, NULL, NULL),
(237, 24, 9, NULL, NULL),
(238, 24, 10, NULL, NULL),
(239, 24, 11, NULL, NULL),
(240, 24, 12, NULL, NULL),
(241, 25, 1, NULL, NULL),
(242, 25, 2, NULL, NULL),
(243, 25, 3, NULL, NULL),
(244, 25, 7, NULL, NULL),
(245, 25, 8, NULL, NULL),
(246, 25, 9, NULL, NULL),
(247, 25, 10, NULL, NULL),
(248, 25, 11, NULL, NULL),
(249, 25, 12, NULL, NULL),
(250, 25, 13, NULL, NULL),
(251, 25, 14, NULL, NULL),
(252, 25, 15, NULL, NULL),
(253, 26, 1, NULL, NULL),
(254, 27, 1, NULL, NULL),
(255, 27, 2, NULL, NULL),
(256, 27, 3, NULL, NULL),
(257, 27, 7, NULL, NULL),
(258, 27, 8, NULL, NULL),
(259, 27, 9, NULL, NULL),
(260, 27, 10, NULL, NULL),
(261, 27, 11, NULL, NULL),
(262, 27, 12, NULL, NULL),
(263, 27, 13, NULL, NULL),
(264, 27, 14, NULL, NULL),
(265, 27, 15, NULL, NULL),
(266, 27, 16, NULL, NULL),
(267, 28, 1, NULL, NULL),
(268, 28, 2, NULL, NULL),
(269, 28, 3, NULL, NULL),
(270, 28, 7, NULL, NULL),
(271, 28, 8, NULL, NULL),
(272, 28, 9, NULL, NULL),
(273, 28, 10, NULL, NULL),
(274, 28, 11, NULL, NULL),
(275, 28, 12, NULL, NULL),
(276, 28, 13, NULL, NULL),
(280, 31, 1, NULL, NULL),
(281, 31, 2, NULL, NULL),
(282, 31, 3, NULL, NULL),
(283, 31, 7, NULL, NULL),
(284, 31, 8, NULL, NULL),
(285, 31, 9, NULL, NULL),
(286, 31, 10, NULL, NULL),
(287, 31, 11, NULL, NULL),
(288, 31, 12, NULL, NULL),
(289, 31, 13, NULL, NULL),
(290, 31, 14, NULL, NULL),
(291, 32, 1, NULL, NULL),
(292, 32, 2, NULL, NULL),
(293, 32, 3, NULL, NULL),
(294, 32, 7, NULL, NULL),
(295, 32, 8, NULL, NULL),
(296, 32, 9, NULL, NULL),
(297, 32, 10, NULL, NULL),
(298, 32, 11, NULL, NULL),
(299, 32, 12, NULL, NULL),
(300, 32, 13, NULL, NULL),
(301, 32, 14, NULL, NULL),
(302, 33, 1, NULL, NULL),
(303, 33, 2, NULL, NULL),
(304, 33, 3, NULL, NULL),
(305, 33, 7, NULL, NULL),
(306, 33, 8, NULL, NULL),
(307, 33, 9, NULL, NULL),
(308, 33, 10, NULL, NULL),
(309, 33, 11, NULL, NULL),
(310, 33, 12, NULL, NULL),
(311, 33, 13, NULL, NULL),
(312, 33, 14, NULL, NULL),
(313, 34, 1, NULL, NULL),
(314, 34, 2, NULL, NULL),
(315, 34, 3, NULL, NULL),
(316, 34, 7, NULL, NULL),
(317, 34, 8, NULL, NULL),
(318, 34, 9, NULL, NULL),
(319, 34, 10, NULL, NULL),
(320, 34, 11, NULL, NULL),
(321, 34, 12, NULL, NULL),
(322, 34, 13, NULL, NULL),
(323, 35, 2, NULL, NULL),
(324, 35, 3, NULL, NULL),
(325, 35, 7, NULL, NULL),
(326, 35, 8, NULL, NULL),
(327, 35, 9, NULL, NULL),
(328, 35, 10, NULL, NULL),
(329, 35, 11, NULL, NULL),
(330, 35, 12, NULL, NULL),
(331, 35, 13, NULL, NULL),
(336, 40, 2, NULL, NULL),
(337, 40, 3, NULL, NULL),
(338, 40, 7, NULL, NULL),
(339, 40, 8, NULL, NULL),
(340, 40, 9, NULL, NULL),
(341, 40, 10, NULL, NULL),
(342, 40, 11, NULL, NULL),
(343, 40, 12, NULL, NULL),
(344, 40, 13, NULL, NULL),
(345, 41, 2, NULL, NULL),
(346, 41, 3, NULL, NULL),
(347, 41, 7, NULL, NULL),
(348, 41, 8, NULL, NULL),
(349, 41, 9, NULL, NULL),
(350, 41, 10, NULL, NULL),
(351, 41, 11, NULL, NULL),
(352, 41, 12, NULL, NULL),
(353, 41, 13, NULL, NULL),
(364, 50, 1, NULL, NULL),
(365, 51, 1, NULL, NULL),
(366, 51, 2, NULL, NULL),
(367, 52, 1, NULL, NULL),
(368, 53, 1, NULL, NULL),
(369, 53, 2, NULL, NULL),
(370, 53, 3, NULL, NULL),
(371, 53, 7, NULL, NULL),
(372, 53, 8, NULL, NULL),
(373, 53, 9, NULL, NULL),
(374, 53, 10, NULL, NULL),
(375, 53, 11, NULL, NULL),
(376, 53, 12, NULL, NULL),
(377, 53, 13, NULL, NULL),
(378, 53, 14, NULL, NULL),
(379, 53, 15, NULL, NULL),
(380, 53, 16, NULL, NULL),
(381, 54, 2, NULL, NULL),
(382, 54, 3, NULL, NULL),
(383, 54, 8, NULL, NULL),
(384, 54, 9, NULL, NULL),
(385, 54, 10, NULL, NULL),
(386, 54, 14, NULL, NULL),
(387, 55, 1, NULL, NULL),
(388, 55, 2, NULL, NULL),
(389, 55, 3, NULL, NULL),
(390, 55, 7, NULL, NULL),
(391, 55, 8, NULL, NULL),
(392, 55, 9, NULL, NULL),
(393, 55, 10, NULL, NULL),
(394, 55, 11, NULL, NULL),
(395, 55, 12, NULL, NULL),
(396, 55, 13, NULL, NULL),
(397, 55, 14, NULL, NULL),
(398, 55, 15, NULL, NULL),
(399, 55, 16, NULL, NULL),
(400, 56, 1, NULL, NULL),
(401, 56, 2, NULL, NULL),
(402, 56, 3, NULL, NULL),
(403, 56, 7, NULL, NULL),
(404, 56, 8, NULL, NULL),
(405, 56, 9, NULL, NULL),
(406, 56, 10, NULL, NULL),
(407, 56, 11, NULL, NULL),
(408, 56, 12, NULL, NULL),
(409, 56, 13, NULL, NULL),
(410, 56, 14, NULL, NULL),
(411, 56, 15, NULL, NULL),
(412, 56, 16, NULL, NULL),
(413, 57, 1, NULL, NULL),
(414, 57, 2, NULL, NULL),
(415, 57, 3, NULL, NULL),
(416, 57, 7, NULL, NULL),
(417, 57, 8, NULL, NULL),
(418, 57, 9, NULL, NULL),
(419, 57, 10, NULL, NULL),
(420, 57, 11, NULL, NULL),
(421, 57, 12, NULL, NULL),
(422, 57, 13, NULL, NULL),
(423, 57, 14, NULL, NULL),
(424, 57, 15, NULL, NULL),
(425, 57, 16, NULL, NULL),
(426, 58, 1, NULL, NULL),
(427, 58, 2, NULL, NULL),
(428, 58, 3, NULL, NULL),
(429, 58, 7, NULL, NULL),
(430, 58, 8, NULL, NULL),
(431, 58, 9, NULL, NULL),
(432, 58, 10, NULL, NULL),
(433, 58, 11, NULL, NULL),
(434, 58, 12, NULL, NULL),
(435, 58, 13, NULL, NULL),
(436, 58, 14, NULL, NULL),
(437, 58, 15, NULL, NULL),
(438, 58, 16, NULL, NULL),
(439, 59, 1, NULL, NULL),
(440, 59, 2, NULL, NULL),
(441, 59, 3, NULL, NULL),
(442, 59, 7, NULL, NULL),
(443, 59, 8, NULL, NULL),
(444, 59, 9, NULL, NULL),
(445, 59, 10, NULL, NULL),
(446, 59, 11, NULL, NULL),
(447, 59, 12, NULL, NULL),
(448, 59, 13, NULL, NULL),
(449, 59, 14, NULL, NULL),
(450, 59, 15, NULL, NULL),
(451, 59, 16, NULL, NULL),
(452, 60, 1, NULL, NULL),
(453, 60, 2, NULL, NULL),
(454, 60, 3, NULL, NULL),
(455, 60, 7, NULL, NULL),
(456, 60, 8, NULL, NULL),
(457, 60, 9, NULL, NULL),
(458, 60, 10, NULL, NULL),
(459, 60, 11, NULL, NULL),
(460, 60, 12, NULL, NULL),
(461, 60, 13, NULL, NULL),
(462, 60, 14, NULL, NULL),
(463, 60, 15, NULL, NULL),
(464, 60, 16, NULL, NULL),
(465, 61, 1, NULL, NULL),
(466, 61, 2, NULL, NULL),
(467, 61, 3, NULL, NULL),
(468, 61, 7, NULL, NULL),
(469, 61, 8, NULL, NULL),
(470, 61, 9, NULL, NULL),
(471, 61, 10, NULL, NULL),
(472, 61, 11, NULL, NULL),
(473, 61, 12, NULL, NULL),
(474, 61, 13, NULL, NULL),
(475, 61, 14, NULL, NULL),
(476, 61, 15, NULL, NULL),
(477, 61, 16, NULL, NULL),
(478, 62, 1, NULL, NULL),
(479, 62, 2, NULL, NULL),
(480, 62, 3, NULL, NULL),
(481, 62, 7, NULL, NULL),
(482, 62, 8, NULL, NULL),
(483, 62, 9, NULL, NULL),
(484, 62, 10, NULL, NULL),
(485, 62, 11, NULL, NULL),
(486, 62, 12, NULL, NULL),
(487, 62, 13, NULL, NULL),
(488, 62, 14, NULL, NULL),
(489, 62, 15, NULL, NULL),
(490, 62, 16, NULL, NULL),
(491, 63, 1, NULL, NULL),
(492, 63, 2, NULL, NULL),
(493, 63, 3, NULL, NULL),
(494, 63, 7, NULL, NULL),
(495, 63, 8, NULL, NULL),
(496, 63, 9, NULL, NULL),
(497, 63, 10, NULL, NULL),
(498, 63, 11, NULL, NULL),
(499, 63, 12, NULL, NULL),
(500, 63, 13, NULL, NULL),
(501, 63, 14, NULL, NULL),
(502, 63, 15, NULL, NULL),
(503, 63, 16, NULL, NULL),
(504, 64, 1, NULL, NULL),
(505, 64, 2, NULL, NULL),
(506, 64, 3, NULL, NULL),
(507, 64, 7, NULL, NULL),
(508, 64, 8, NULL, NULL),
(509, 64, 9, NULL, NULL),
(510, 64, 10, NULL, NULL),
(511, 64, 11, NULL, NULL),
(512, 64, 12, NULL, NULL),
(513, 64, 13, NULL, NULL),
(514, 64, 14, NULL, NULL),
(515, 64, 15, NULL, NULL),
(516, 64, 16, NULL, NULL),
(517, 65, 1, NULL, NULL),
(518, 65, 2, NULL, NULL),
(519, 65, 3, NULL, NULL),
(520, 65, 7, NULL, NULL),
(521, 65, 8, NULL, NULL),
(522, 65, 9, NULL, NULL),
(523, 65, 10, NULL, NULL),
(524, 65, 11, NULL, NULL),
(525, 65, 12, NULL, NULL),
(526, 65, 13, NULL, NULL),
(527, 65, 14, NULL, NULL),
(528, 65, 15, NULL, NULL),
(529, 65, 16, NULL, NULL),
(530, 66, 1, NULL, NULL),
(531, 66, 2, NULL, NULL),
(532, 66, 3, NULL, NULL),
(533, 66, 7, NULL, NULL),
(534, 66, 8, NULL, NULL),
(535, 66, 9, NULL, NULL),
(536, 66, 10, NULL, NULL),
(537, 66, 11, NULL, NULL),
(538, 67, 1, NULL, NULL),
(539, 67, 2, NULL, NULL),
(540, 67, 3, NULL, NULL),
(541, 67, 7, NULL, NULL),
(542, 67, 8, NULL, NULL),
(543, 67, 9, NULL, NULL),
(544, 67, 10, NULL, NULL),
(545, 67, 11, NULL, NULL),
(546, 67, 12, NULL, NULL),
(547, 67, 13, NULL, NULL),
(548, 67, 14, NULL, NULL),
(549, 67, 15, NULL, NULL),
(550, 67, 16, NULL, NULL),
(551, 68, 1, NULL, NULL),
(552, 68, 2, NULL, NULL),
(553, 68, 3, NULL, NULL),
(554, 68, 7, NULL, NULL),
(555, 68, 8, NULL, NULL),
(556, 68, 9, NULL, NULL),
(557, 68, 10, NULL, NULL),
(558, 68, 11, NULL, NULL),
(559, 68, 12, NULL, NULL),
(560, 68, 13, NULL, NULL),
(561, 68, 14, NULL, NULL),
(562, 68, 15, NULL, NULL),
(563, 68, 16, NULL, NULL),
(564, 69, 9, NULL, NULL),
(565, 69, 10, NULL, NULL),
(566, 69, 11, NULL, NULL),
(567, 69, 12, NULL, NULL),
(568, 69, 13, NULL, NULL),
(569, 70, 1, NULL, NULL),
(570, 70, 2, NULL, NULL),
(571, 70, 3, NULL, NULL),
(572, 70, 7, NULL, NULL),
(573, 70, 8, NULL, NULL),
(574, 70, 9, NULL, NULL),
(575, 70, 10, NULL, NULL),
(576, 70, 11, NULL, NULL),
(577, 70, 12, NULL, NULL),
(578, 70, 13, NULL, NULL),
(579, 70, 14, NULL, NULL),
(580, 70, 15, NULL, NULL),
(581, 70, 16, NULL, NULL),
(582, 71, 1, NULL, NULL),
(583, 71, 2, NULL, NULL),
(584, 71, 3, NULL, NULL),
(585, 71, 7, NULL, NULL),
(586, 71, 8, NULL, NULL),
(587, 71, 9, NULL, NULL),
(588, 71, 10, NULL, NULL),
(589, 71, 11, NULL, NULL),
(590, 71, 12, NULL, NULL),
(591, 71, 13, NULL, NULL),
(592, 71, 14, NULL, NULL),
(593, 71, 15, NULL, NULL),
(594, 71, 16, NULL, NULL),
(595, 72, 1, NULL, NULL),
(596, 72, 2, NULL, NULL),
(597, 72, 3, NULL, NULL),
(598, 72, 7, NULL, NULL),
(599, 72, 8, NULL, NULL),
(600, 72, 9, NULL, NULL),
(601, 72, 10, NULL, NULL),
(602, 72, 11, NULL, NULL),
(603, 72, 12, NULL, NULL),
(604, 72, 13, NULL, NULL),
(605, 72, 14, NULL, NULL),
(606, 72, 15, NULL, NULL),
(607, 72, 16, NULL, NULL),
(608, 73, 1, NULL, NULL),
(609, 73, 2, NULL, NULL),
(610, 73, 3, NULL, NULL),
(611, 73, 7, NULL, NULL),
(612, 73, 8, NULL, NULL),
(613, 73, 9, NULL, NULL),
(614, 73, 10, NULL, NULL),
(615, 73, 11, NULL, NULL),
(616, 73, 12, NULL, NULL),
(617, 73, 13, NULL, NULL),
(618, 73, 14, NULL, NULL),
(619, 73, 15, NULL, NULL),
(620, 73, 16, NULL, NULL),
(621, 74, 1, NULL, NULL),
(622, 74, 2, NULL, NULL),
(623, 74, 3, NULL, NULL),
(624, 74, 7, NULL, NULL),
(625, 74, 8, NULL, NULL),
(626, 74, 9, NULL, NULL),
(627, 74, 10, NULL, NULL),
(628, 74, 11, NULL, NULL),
(629, 74, 12, NULL, NULL),
(630, 74, 13, NULL, NULL),
(631, 74, 14, NULL, NULL),
(632, 74, 15, NULL, NULL),
(633, 74, 16, NULL, NULL),
(634, 75, 1, NULL, NULL),
(635, 75, 2, NULL, NULL),
(636, 75, 3, NULL, NULL),
(637, 75, 7, NULL, NULL),
(638, 75, 8, NULL, NULL),
(639, 75, 9, NULL, NULL),
(640, 75, 10, NULL, NULL),
(641, 75, 11, NULL, NULL),
(642, 75, 12, NULL, NULL),
(643, 75, 13, NULL, NULL),
(644, 75, 14, NULL, NULL),
(645, 75, 15, NULL, NULL),
(646, 75, 16, NULL, NULL),
(647, 76, 1, NULL, NULL),
(648, 76, 2, NULL, NULL),
(649, 76, 3, NULL, NULL),
(650, 76, 7, NULL, NULL),
(651, 76, 8, NULL, NULL),
(652, 76, 9, NULL, NULL),
(653, 76, 10, NULL, NULL),
(654, 76, 11, NULL, NULL),
(655, 76, 12, NULL, NULL),
(656, 76, 13, NULL, NULL),
(657, 76, 14, NULL, NULL),
(658, 76, 15, NULL, NULL),
(659, 76, 16, NULL, NULL),
(660, 77, 1, NULL, NULL),
(661, 77, 2, NULL, NULL),
(662, 77, 3, NULL, NULL),
(663, 77, 7, NULL, NULL),
(664, 77, 8, NULL, NULL),
(665, 77, 9, NULL, NULL),
(666, 77, 10, NULL, NULL),
(667, 77, 11, NULL, NULL),
(668, 77, 12, NULL, NULL),
(669, 77, 13, NULL, NULL),
(670, 77, 14, NULL, NULL),
(671, 77, 15, NULL, NULL),
(672, 77, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_width`
--

CREATE TABLE `product_width` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `width_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_width`
--

INSERT INTO `product_width` (`id`, `product_id`, `width_id`, `created_at`, `updated_at`) VALUES
(1, 54, 4, NULL, NULL),
(2, 54, 6, NULL, NULL),
(3, 54, 7, NULL, NULL),
(4, 59, 1, NULL, NULL),
(5, 59, 2, NULL, NULL),
(6, 59, 3, NULL, NULL),
(7, 59, 4, NULL, NULL),
(8, 60, 1, NULL, NULL),
(9, 60, 2, NULL, NULL),
(10, 60, 3, NULL, NULL),
(11, 60, 4, NULL, NULL),
(12, 61, 1, NULL, NULL),
(13, 61, 2, NULL, NULL),
(14, 61, 3, NULL, NULL),
(15, 61, 4, NULL, NULL),
(16, 62, 1, NULL, NULL),
(17, 62, 2, NULL, NULL),
(18, 62, 3, NULL, NULL),
(19, 62, 4, NULL, NULL),
(20, 63, 1, NULL, NULL),
(21, 63, 2, NULL, NULL),
(22, 63, 3, NULL, NULL),
(23, 63, 4, NULL, NULL),
(24, 66, 1, NULL, NULL),
(25, 66, 2, NULL, NULL),
(26, 66, 3, NULL, NULL),
(27, 66, 4, NULL, NULL);

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
(1, 'about_ar', '<div id=\"tw-target-text-container\" class=\"tw-ta-container F0azHf tw-lfl\" tabindex=\"0\">\r\n<p><b>مرحبًا بكم في شركة By Mariams، التي تأسست عام 2015، تنسج علامتنا التجارية قصة شغف بالجودة وبراعة الملابس العربية التقليدية.</b></p><p><br></p><p><br></p><p>يعكس شعارنا \"<span style=\"display: inline !important;\">Made with Love</span>\" تفانينا في ابتكار ملابس تجسد التراث الغني للملابس العربية بأكثر الطرق عصرية وعصرية والتي تجلب السعادة للنساء اللاتي يرتدينها.</p></div>', 'about', 1, '2022-10-09 11:52:15', '2024-10-06 10:43:28'),
(2, 'about_en', '<p style=\"font-stretch: normal; line-height: normal;\" class=\"\"><b><span style=\"text-align: var(--bs-body-text-align); display: inline !important;\">Welcome to By Mariams founded in 2015, our brand weaves a story of passion for the quality and craftsmanship of traditional arabic clothing.</span><br></b></p><p style=\"font-stretch: normal; line-height: normal;\"><br></p><p style=\"font-stretch: normal; line-height: normal;\"><br></p><p style=\"font-stretch: normal; line-height: normal;\"><span lucida=\"\" grande\";\"=\"\"></span></p><p style=\"font-stretch: normal; line-height: normal;\" class=\"\">Our slogan “Made with Love” reflects our dedication to creating clothing that embodies the rich heritage of Arabic wear in the most contemporary and fashionable ways that bring joy to the women who wear it.</p><p style=\"font-stretch: normal; line-height: normal;\"><span style=\"font-family: \" lucida=\"\" grande\";\"=\"\"><br></span></p><p style=\"font-stretch: normal; line-height: normal;\"><span style=\"font-family: \" lucida=\"\" grande\";\"=\"\"><br></span></p><p style=\"font-stretch: normal; line-height: normal;\"><span style=\"font-family: \" lucida=\"\" grande\";\"=\"\"><br></span></p><span style=\"font-family: \" courier=\"\" new\";\"=\"\" helvetica=\"\" neue\";\"=\"\">\r\n</span><p><br><span style=\"font-family: \" courier=\"\" new\";\"=\"\">﻿</span><br></p>', 'about', 1, '2022-10-09 11:52:15', '2024-10-06 10:43:28'),
(3, 'about_image', '/uploads/settings/1710075847_5949.png', 'about', 1, '2022-10-09 11:52:15', '2024-03-10 14:04:07'),
(4, 'privacy_ar', '<p>pending . . . <br></p><p class=\"\" style=\"margin-bottom: 1rem; font-family: sans-serif; color: rgb(27, 27, 27); font-stretch: normal; line-height: normal;\"><br></p><div><br></div>', 'privacy', 1, '2022-10-09 11:52:15', '2024-10-06 11:35:28'),
(5, 'privacy_en', '<div>\r\n<p>pending . . .</p>\r\n</div>', 'privacy', 1, '2022-10-09 11:52:15', '2024-10-06 11:35:28'),
(6, 'privacy_image', '/uploads/settings/1710077647_9115.png', 'privacy', 1, '2022-10-09 11:52:15', '2024-03-10 14:34:07'),
(7, 'title_ar', 'By Mariams', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(8, 'title_en', 'By Mariams', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(9, 'terms_ar', '<p>pending . . .</p>', 'terms', 1, '2022-10-09 11:52:15', '2024-08-19 06:18:16'),
(10, 'terms_en', 'pending . . .', 'terms', 1, '2022-10-09 11:52:15', '2024-08-19 06:18:16'),
(11, 'terms_image', '/uploads/settings/1710078184_4266.png', 'terms', 1, '2022-10-09 11:52:15', '2024-03-10 14:43:04'),
(12, 'logo', '/uploads/settings/1727253315_5989.svg', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(13, 'email', 'by.mariamss@gmail.com', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(14, 'phone', '97338868876', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(15, 'whatsapp', '97338868876', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(16, 'desc', '𝒇𝒂𝒃𝒓𝒊𝒄𝒂𝒕𝒆𝒅 𝒘𝒊𝒕𝒉 𝒍𝒐𝒗𝒆 find us @incconcept.bh', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(17, 'keywords', '𝒇𝒂𝒃𝒓𝒊𝒄𝒂𝒕𝒆𝒅 𝒘𝒊𝒕𝒉 𝒍𝒐𝒗𝒆 find us @incconcept.bh', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(18, 'author', 'By Mariams', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(20, 'VAT', '0', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(24, 'min_order', '1', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(34, 'main_color', '#000000', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(37, 'DefaultLang', 'en', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-09-25 08:35:15'),
(46, 'snapchat_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(47, 'twitter_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(48, 'facebbok_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(49, 'google_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(50, 'tiktok_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(51, 'instagram_services', NULL, 'advertising', 1, NULL, '2023-04-10 10:05:48'),
(52, 'product_care_ar', '<p>pending . . .</p>', 'product_care', 1, '2022-10-09 11:52:15', '2024-08-19 06:18:50'),
(53, 'product_care_en', '<p>pending . . .</p>', 'product_care', 1, '2022-10-09 11:52:15', '2024-08-19 06:18:50'),
(54, 'product_care_image', '/uploads/settings/1710078408_2013.png', 'product_care', 1, '2022-10-09 11:52:15', '2024-03-10 14:46:48'),
(55, 'SizeGuide', '/uploads/settings/1724770146_4117.png', 'publicSettings', 1, '2022-10-09 11:52:15', '2024-08-27 14:49:06');

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
(1, '49', '49', 1, '2024-02-25 09:52:30', '2024-02-25 09:52:30'),
(2, '50', '50', 1, '2024-02-25 09:52:35', '2024-02-25 09:52:35'),
(3, '51', '51', 1, '2024-02-25 09:52:42', '2024-02-25 09:52:42'),
(7, '52', '52', 1, '2024-02-25 09:52:30', '2024-02-25 09:52:30'),
(8, '53', '53', 1, '2024-02-25 09:52:35', '2024-02-25 09:52:35'),
(9, '54', '54', 1, '2024-02-25 09:52:42', '2024-02-25 09:52:42'),
(10, '55', '55', 1, '2024-02-25 09:52:30', '2024-02-25 09:52:30'),
(11, '56', '56', 1, '2024-02-25 09:52:35', '2024-02-25 09:52:35'),
(12, '57', '57', 1, '2024-02-25 09:52:42', '2024-02-25 09:52:42'),
(13, '58', '58', 1, '2024-02-25 09:52:30', '2024-02-25 09:52:30'),
(14, '59', '59', 1, '2024-02-25 09:52:35', '2024-02-25 09:52:35'),
(15, '60', '60', 1, '2024-02-25 09:52:42', '2024-02-25 09:52:42'),
(16, '61', '61', 1, '2024-02-25 09:52:42', '2024-02-25 09:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_sm` varchar(255) DEFAULT NULL,
  `image_lg` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image_sm`, `image_lg`, `created_at`, `updated_at`) VALUES
(1, '/uploads/Images/1728287443_5431.png', '/uploads/Images/1709021247_1914.svg', '2024-02-27 08:07:27', '2024-10-07 07:50:43'),
(2, '/uploads/Images/1724931705_8531.png', '/uploads/Images/1724931830_1245.png', '2024-02-27 08:08:41', '2024-08-29 11:43:50');

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
(7, 'fa-brands fa-instagram', 'https://www.instagram.com/by.mariams', '2023-12-23 15:11:03', '2023-12-23 15:11:03'),
(11, 'fa-brands fa-whatsapp', 'https://wa.me/97338868876', '2024-03-11 11:47:39', '2024-03-11 11:47:39'),
(12, 'fa fa-envelope', 'mailto:by.mariamss@gmail.com', '2024-03-11 11:47:39', '2024-03-11 11:47:39');

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
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `client_id`, `order_id`, `transaction_number`, `value`, `result`, `type`, `created_at`, `updated_at`) VALUES
(22, 36, 81, 'chg_LV06E1720240840o3BM1508959', 5.000, 'CAPTURED', 'TAP', '2024-08-15 05:40:48', '2024-08-15 05:40:48'),
(37, 2, 257, 'chg_LV06E4420241206m3KX2608864', 54.000, 'CANCELLED', 'TAP', '2024-08-26 09:09:42', '2024-08-26 09:09:42'),
(40, 88, 256, 'chg_LV03E4220241713Mi732608694', 0.100, 'CAPTURED', 'TAP', '2024-08-26 14:14:14', '2024-08-26 14:14:14'),
(41, 89, 257, 'chg_LV03E3120241715Fk302608936', 0.100, 'CAPTURED', 'TAP', '2024-08-26 14:15:57', '2024-08-26 14:15:57'),
(42, 41, 264, 'chg_LV07E5620241611Ku302808136', 5.000, 'CAPTURED', 'TAP', '2024-08-28 13:12:27', '2024-08-28 13:12:27'),
(43, 89, 272, 'chg_LV03E4120242018Ds340409309', 57.000, 'CAPTURED', 'TAP', '2024-09-04 17:19:06', '2024-09-04 17:19:06'),
(44, 107, 273, 'chg_LV04C5020240840Oc032209576', 57.000, 'CAPTURED', 'TAP', '2024-09-22 05:41:25', '2024-09-22 05:41:25'),
(45, 91, 275, 'chg_TS03A5820242010Jj3s3009131', 397.600, 'CAPTURED', 'TAP', '2024-09-30 17:17:53', '2024-09-30 17:17:53'),
(46, 109, 276, 'chg_LV05E5220241842g9XO0110694', 88.000, 'CAPTURED', 'TAP', '2024-10-01 15:43:26', '2024-10-01 15:43:26'),
(47, 110, 277, 'chg_LV02E1320241408Ki341010157', 44.000, 'CAPTURED', 'TAP', '2024-10-10 11:08:52', '2024-10-10 11:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `width`
--

CREATE TABLE `width` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `width`
--

INSERT INTO `width` (`id`, `title_ar`, `title_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 'صغير', 'Small', 1, NULL, NULL),
(2, 'متوسط', 'Medium', 1, NULL, NULL),
(3, 'كبير', 'Large', 1, NULL, NULL),
(4, 'كبير جداً', 'Extra Large', 1, NULL, NULL),
(5, 'صغير جداً', 'Extra Small', 1, NULL, NULL),
(6, 'مقاس زائد', 'Plus Size', 1, NULL, NULL),
(7, 'مقاس عادي', 'Regular Size', 1, NULL, NULL);

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
  ADD KEY `cart_product_id_foreign` (`product_id`),
  ADD KEY `cart_color_id_foreign` (`color_id`),
  ADD KEY `cart_size_id_foreign` (`size_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chest_width`
--
ALTER TABLE `chest_width`
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
-- Indexes for table `product_chest_width`
--
ALTER TABLE `product_chest_width`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_color_product_id_foreign` (`product_id`),
  ADD KEY `product_color_color_id_foreign` (`chest_width_id`);

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
-- Indexes for table `product_quantity`
--
ALTER TABLE `product_quantity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_color_product_id_foreign` (`product_id`),
  ADD KEY `product_size_color_size_id_foreign` (`size_id`),
  ADD KEY `product_size_color_color_id_foreign` (`color_id`);

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
-- Indexes for table `product_width`
--
ALTER TABLE `product_width`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_color_product_id_foreign` (`product_id`),
  ADD KEY `product_color_color_id_foreign` (`width_id`);

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
-- Indexes for table `width`
--
ALTER TABLE `width`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chest_width`
--
ALTER TABLE `chest_width`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `product_chest_width`
--
ALTER TABLE `product_chest_width`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `product_favourites`
--
ALTER TABLE `product_favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `product_quantity`
--
ALTER TABLE `product_quantity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=921;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;

--
-- AUTO_INCREMENT for table `product_width`
--
ALTER TABLE `product_width`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `shetabit_visits`
--
ALTER TABLE `shetabit_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `social_media_icons`
--
ALTER TABLE `social_media_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `width`
--
ALTER TABLE `width`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- Constraints for table `product_chest_width`
--
ALTER TABLE `product_chest_width`
  ADD CONSTRAINT `chest_width_id` FOREIGN KEY (`chest_width_id`) REFERENCES `chest_width` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id_products_chest_width` FOREIGN KEY (`chest_width_id`) REFERENCES `chest_width` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `product_quantity`
--
ALTER TABLE `product_quantity`
  ADD CONSTRAINT `product_size_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_size_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_size_color_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `product_width`
--
ALTER TABLE `product_width`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `width_id` FOREIGN KEY (`width_id`) REFERENCES `width` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
