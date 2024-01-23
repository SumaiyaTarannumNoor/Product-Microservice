-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 12:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Huawei', 'good', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 03:07:21', '2024-01-16 03:07:21', 'true'),
(4, 'Huawei', 'good', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 21:39:23', '2024-01-16 21:39:23', 'true'),
(6, 'Huawei', 'good', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 23:33:38', '2024-01-16 23:33:38', 'true'),
(7, 'Huawei', 'good', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 23:41:21', '2024-01-16 23:41:21', 'true'),
(8, 'Huawei', 'good', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 23:49:35', '2024-01-16 23:49:35', 'true'),
(9, 'Huawei', 'good', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-17 00:38:56', '2024-01-17 00:38:56', 'true'),
(10, 'Huawei', 'good', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-17 02:04:21', '2024-01-17 02:04:21', 'true'),
(11, 'Huawei', 'good', 'me', 'me', NULL, NULL, '2024-01-20 23:54:52', '2024-01-20 23:54:52', '0'),
(12, 'Huawei', 'good', 'me', 'me', NULL, NULL, '2024-01-20 23:57:12', '2024-01-20 23:57:12', '0'),
(13, 'Huawei', 'good', 'me', 'me', NULL, NULL, '2024-01-20 23:58:07', '2024-01-20 23:58:07', '0'),
(14, 'Huawei', 'good', 'me', 'me', NULL, NULL, '2024-01-21 00:03:01', '2024-01-21 00:03:01', '0'),
(15, 'Huawei', 'good', NULL, NULL, NULL, NULL, '2024-01-21 00:06:28', '2024-01-21 00:06:28', '0'),
(16, 'Huawei', 'good', NULL, NULL, NULL, NULL, '2024-01-21 04:20:14', '2024-01-21 04:20:14', '0'),
(17, 'Huawei', 'good', NULL, NULL, NULL, NULL, '2024-01-21 04:20:21', '2024-01-21 04:20:21', '0');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_fixed_discount` tinyint(1) NOT NULL,
  `discount_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `product_id`, `is_fixed_discount`, `discount_amount`, `start_date`, `end_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `ip`, `browser`) VALUES
(1, NULL, 0, '40.00', '2024-01-16', '2024-01-16', 'nice', 'me', 'me', '2024-01-16 03:30:51', '2024-01-16 03:30:51', '0.0.0.0', 'chrome'),
(2, NULL, 0, '60.00', '2024-01-16', '2024-01-16', 'nice', 'me', 'me', '2024-01-16 03:31:22', '2024-01-16 03:33:41', '0.0.0.0', 'chrome'),
(4, NULL, 0, '40.00', '2024-01-16', '2024-01-16', 'nice', 'me', 'me', '2024-01-16 21:41:34', '2024-01-16 21:41:34', '0.0.0.0', 'chrome'),
(5, NULL, 0, '40.00', '2024-01-16', '2024-01-16', '1', NULL, NULL, '2024-01-21 00:20:06', '2024-01-21 00:20:06', NULL, NULL),
(6, NULL, 0, '40.00', '2024-01-16', '2024-01-16', '1', NULL, NULL, '2024-01-21 04:20:24', '2024-01-21 04:20:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_14_110636_create_brands_table', 1),
(6, '2024_01_14_110927_create_product_categories_table', 1),
(7, '2024_01_15_031307_create_packaging_units_table', 2),
(8, '2024_01_15_032549_create_products_table', 2),
(9, '2024_01_16_033852_create_product_items_table', 3),
(10, '2024_01_16_034238_create_product_marketing_links_table', 4),
(11, '2024_01_16_034355_create_discounts_table', 5),
(12, '2024_01_16_034741_create_products_meta_data_table', 6),
(13, '2024_01_16_090546_add_status_to_brands_table', 7),
(14, '2024_01_16_092549_add_status_to_discounts_table', 8),
(15, '2024_01_17_043059_update_column_name_in_products_meta_data_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `packaging_units`
--

CREATE TABLE `packaging_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packaging_units`
--

INSERT INTO `packaging_units` (`id`, `name`, `status`, `created_by`, `modified_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka_branch', 'full', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 03:37:26', '2024-01-16 03:37:26'),
(2, 'laptop', 'useful', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 03:37:40', '2024-01-16 05:08:26'),
(4, 'Dhaka_branch', '1', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-20 23:33:02', '2024-01-20 23:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `product_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_english_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_bengali_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_book` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marketing_communication_link_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `benchmark_line` enum('ATL','BTL','TTL') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ATL',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_key`, `product_english_name`, `product_bengali_name`, `summary`, `product_book`, `marketing_communication_link_id`, `brand_id`, `category_id`, `benchmark_line`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, '23-434-545', 'sKJASAA', 'sjd', 'good product', 'er', 'www.ssk', 0, 0, 'ATL', 'nice', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 21:31:12', '2024-01-16 23:03:20'),
(2, '23-434-545', 'dss', 'sjd', 'good product', 'er', 'www.ssk', 0, 0, 'ATL', 'nice', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 23:02:29', '2024-01-16 23:02:29'),
(4, '23-434-545', 'dss', 'sjd', 'good product', 'er', 'www.ssk', 0, 0, 'ATL', 'nice', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 23:02:32', '2024-01-16 23:02:32'),
(5, '545', 'dss', 'sjd', 'good product', 'er', 'www.ssk', 1, 4, 'ATL', '1', NULL, NULL, NULL, NULL, '2024-01-22 00:32:02', '2024-01-22 00:32:02'),
(6, '546', 'dss', 'sjd', 'good product', 'er', 'www.ssk', 1, 4, 'ATL', '1', NULL, NULL, NULL, NULL, '2024-01-22 00:37:04', '2024-01-22 00:37:04'),
(7, '547', 'dss', 'sjd', 'good product', 'er', 'www.ssk', 1, 4, 'ATL', '1', NULL, NULL, NULL, NULL, '2024-01-22 00:37:14', '2024-01-22 00:37:14'),
(8, '549', 'test to add', 'sjd', 'good product', 'er', 'www.ssk', 1, 4, 'ATL', '1', NULL, NULL, NULL, NULL, '2024-01-22 00:37:25', '2024-01-22 00:37:25'),
(9, 'test', 'test', 'test', 'ikyu', 'daf', 'sddsf', 14, 5, 'ATL', '1', NULL, NULL, NULL, NULL, '2024-01-22 00:59:47', '2024-01-22 00:59:47'),
(10, 'testf', 'test', 'test', 'nn', 'daf', 'sddsf', 6, 5, 'ATL', '1', NULL, NULL, NULL, NULL, '2024-01-22 04:02:33', '2024-01-22 04:02:33'),
(11, '984847nb', 'test', 'test', 'hj', 'daf', 'sddsf', 4, 5, 'ATL', '1', NULL, NULL, NULL, NULL, '2024-01-22 04:09:30', '2024-01-22 04:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `products_meta_data`
--

CREATE TABLE `products_meta_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_meta_data`
--

INSERT INTO `products_meta_data` (`id`, `product_id`, `image_url`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, NULL, 'http://sasj', 'nice', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 22:39:18', '2024-01-16 22:39:18'),
(2, NULL, 'http://kjdssdk', 'nice', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 22:39:20', '2024-01-16 22:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(4, 'mobile', 'useful', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 05:10:38', '2024-01-16 05:10:38'),
(5, 'mobile', 'useful', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 05:14:27', '2024-01-16 05:14:27'),
(7, 'mobile', 'useful', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 21:27:26', '2024-01-16 21:27:26'),
(8, 'mobile', 'nice', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 21:56:41', '2024-01-16 21:56:41'),
(9, 'mobile', 'nice', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 21:56:46', '2024-01-16 21:56:46'),
(10, 'mobile', 'nice', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 21:56:48', '2024-01-16 21:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_items`
--

CREATE TABLE `product_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `erp_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `sku_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distribution_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trade_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight_per_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `packing_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `selling_pack_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_cartoon_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_new_product` tinyint(1) NOT NULL,
  `is_offer_running` tinyint(1) NOT NULL,
  `is_distribution_git_available` tinyint(1) NOT NULL,
  `is_sms_active` tinyint(1) NOT NULL,
  `is_product_in_stock` tinyint(1) NOT NULL,
  `opening_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_items`
--

INSERT INTO `product_items` (`id`, `erp_id`, `product_id`, `sku_number`, `distribution_price`, `trade_price`, `weight_per_unit`, `packing_unit_id`, `selling_pack_size`, `selling_cartoon_size`, `is_new_product`, `is_offer_running`, `is_distribution_git_available`, `is_sms_active`, `is_product_in_stock`, `opening_date`, `closing_date`, `is_active`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, '0', 0, '45600', '339', '2738', '100g', NULL, '300', '9000', 1, 0, 0, 0, 1, '2024-01-16', '2024-01-16', 1, 'nice', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 22:15:38', '2024-01-16 22:15:38'),
(2, '0', 0, '8900000', '339', '2738', '100g', NULL, '300', '9000', 1, 0, 0, 0, 1, '2024-01-16', '2024-01-16', 1, 'nice', 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 22:15:40', '2024-01-16 22:17:25'),
(4, '2', 11, '45600', '339', '2738', '100g', 1, '300', '9000', 1, 0, 0, 0, 1, '2024-01-16', '2024-01-16', 1, '1', NULL, NULL, NULL, NULL, '2024-01-22 04:31:32', '2024-01-22 04:31:32'),
(5, '2', 11, '45600', '339', '2738', '100g', 1, '300', '9000', 1, 0, 0, 0, 1, '2024-01-16', '2024-01-16', 1, '1', NULL, NULL, NULL, NULL, '2024-01-22 04:33:11', '2024-01-22 04:33:11'),
(6, '1', 11, '45600', '339', '2738', '100g', 1, '300', '9000', 1, 0, 0, 0, 1, '2024-01-16', '2024-01-16', 1, '1', NULL, NULL, NULL, NULL, '2024-01-22 04:33:17', '2024-01-22 04:33:17'),
(7, '1', 11, '45600', '339', '2738', '100g', 1, '300', '9000', 1, 0, 0, 0, 1, '2024-01-16', '2024-01-16', 1, '1', NULL, NULL, NULL, NULL, '2024-01-22 04:38:43', '2024-01-22 04:38:43'),
(8, '1', 11, '44', '12', '52', '345', 1, '45', '345', 1, 1, 1, 1, 1, '2024-01-22', '2024-01-22', 1, '1', NULL, NULL, NULL, NULL, '2024-01-22 04:39:12', '2024-01-22 04:39:12'),
(9, '5', 11, '44', '12', '52', '345', 1, '45', '345', 1, 1, 1, 1, 1, '2024-01-22', '2024-01-22', 1, '1', NULL, NULL, NULL, NULL, '2024-01-22 04:40:07', '2024-01-22 04:40:07'),
(10, 'abc45', 11, '45600', '339', '2738', '100g', 1, '300', '9000', 1, 0, 0, 0, 1, '2024-01-16', '2024-01-16', 1, '1', NULL, NULL, NULL, NULL, '2024-01-22 04:43:30', '2024-01-22 04:43:30'),
(11, '8', 11, '44', '12', '52', '345', 1, '45', '345', 1, 1, 1, 1, 1, '2024-01-22', '2024-01-22', 1, '1', NULL, NULL, NULL, NULL, '2024-01-22 05:02:16', '2024-01-22 05:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `product_marketing_links`
--

CREATE TABLE `product_marketing_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_marketing_links`
--

INSERT INTO `product_marketing_links` (`id`, `link`, `product_id`, `created_by`, `modified_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(1, 'www.abhs', NULL, 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 22:23:01', '2024-01-16 22:23:01'),
(2, 'www.abhs', NULL, 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 22:23:04', '2024-01-16 22:23:04'),
(3, 'www.wxyz', NULL, 'me', 'me', '0.0.0.0', 'chrome', '2024-01-16 22:23:05', '2024-01-16 22:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discounts_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packaging_units`
--
ALTER TABLE `packaging_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `products_meta_data`
--
ALTER TABLE `products_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_meta_data_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_items`
--
ALTER TABLE `product_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_items_product_id_foreign` (`product_id`),
  ADD KEY `product_items_packing_unit_id_foreign` (`packing_unit_id`);

--
-- Indexes for table `product_marketing_links`
--
ALTER TABLE `product_marketing_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_marketing_links_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `packaging_units`
--
ALTER TABLE `packaging_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products_meta_data`
--
ALTER TABLE `products_meta_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_items`
--
ALTER TABLE `product_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_marketing_links`
--
ALTER TABLE `product_marketing_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_meta_data`
--
ALTER TABLE `products_meta_data`
  ADD CONSTRAINT `products_meta_data_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_items`
--
ALTER TABLE `product_items`
  ADD CONSTRAINT `product_items_packing_unit_id_foreign` FOREIGN KEY (`packing_unit_id`) REFERENCES `packaging_units` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_marketing_links`
--
ALTER TABLE `product_marketing_links`
  ADD CONSTRAINT `product_marketing_links_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
