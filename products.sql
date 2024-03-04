-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2024 at 07:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`, `status`) VALUES
(19, 'PUSTI HAPPY TIME', 'PUSTI HAPPY TIME', NULL, NULL, NULL, NULL, '2024-01-23 23:41:54', '2024-01-24 22:59:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `is_fixed_discount` tinyint(1) DEFAULT NULL,
  `discount_amount` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `sku_name` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `distributor` varchar(255) DEFAULT NULL,
  `discount_offer` varchar(255) DEFAULT NULL,
  `if_buy_quantity` int(11) DEFAULT NULL,
  `free_offer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `product_id`, `is_fixed_discount`, `discount_amount`, `start_date`, `end_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `ip`, `browser`, `sku_name`, `division`, `region`, `zone`, `distributor`, `discount_offer`, `if_buy_quantity`, `free_offer`) VALUES
(8, 17, 0, '80', '2024-01-15', '2024-01-31', 1, NULL, NULL, '2024-01-23 23:57:08', '2024-01-24 23:17:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 0, 0, '40.00', '2024-01-16', '2024-01-16', NULL, NULL, NULL, '2024-01-24 03:40:58', '2024-01-24 03:40:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(15, '2024_01_17_043059_update_column_name_in_products_meta_data_table', 9),
(16, '2024_02_29_055842_add_column_to_the_table', 10),
(17, '2024_02_29_073252_add_column_to_products_table', 11),
(18, '2024_03_04_050050_drop_column_from_table', 12),
(19, '2024_03_04_051439_drop_columbn_from_table', 13),
(20, '2024_03_04_052215_add_column_to_table', 14),
(21, '2024_03_04_060046_drop_column_from_table', 15),
(22, '2024_03_04_060343_add_column_to_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `packaging_units`
--

CREATE TABLE `packaging_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packaging_units`
--

INSERT INTO `packaging_units` (`id`, `name`, `status`, `created_by`, `modified_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(6, 'Tonne', 0, NULL, NULL, NULL, NULL, '2024-01-23 23:45:12', '2024-01-23 23:45:12'),
(7, 'Liter', 0, NULL, NULL, NULL, NULL, '2024-01-23 23:45:23', '2024-01-23 23:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `product_english_name` varchar(255) NOT NULL,
  `product_bengali_name` varchar(255) NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `factory1` varchar(255) DEFAULT NULL,
  `factory2` varchar(255) DEFAULT NULL,
  `sku_name` varchar(255) NOT NULL,
  `distribution_price` double(8,2) NOT NULL,
  `trade_price` double(8,2) NOT NULL,
  `erp_id` bigint(20) UNSIGNED NOT NULL,
  `unit` varchar(255) NOT NULL,
  `weight_pcs` int(11) NOT NULL,
  `pcs_ctn` int(11) NOT NULL,
  `product_open_date` date DEFAULT NULL,
  `closing_date` date DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `status_new` tinyint(1) DEFAULT 1,
  `status` tinyint(1) DEFAULT 1,
  `marketing_communication_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_english_name`, `product_bengali_name`, `brand_id`, `category_id`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`, `factory1`, `factory2`, `sku_name`, `distribution_price`, `trade_price`, `erp_id`, `unit`, `weight_pcs`, `pcs_ctn`, `product_open_date`, `closing_date`, `image_url`, `status_new`, `status`, `marketing_communication_link`) VALUES
(17, 'WATER.500 ML', 'ড্রিংকিং ওয়াটার ৫০০ মি.লি.', 19, 17, NULL, NULL, NULL, NULL, '2024-01-23 23:50:01', '2024-03-04 00:23:22', NULL, NULL, '', 0.00, 0.00, 0, '', 0, 0, NULL, NULL, NULL, 1, 0, NULL),
(21, 'dss', 'sjd', 19, 15, NULL, NULL, NULL, NULL, '2024-02-28 03:15:06', '2024-02-28 03:15:06', NULL, NULL, '', 0.00, 0.00, 0, '', 0, 0, NULL, NULL, NULL, 1, 1, NULL),
(22, 'dss', 'sjd', 19, 15, NULL, NULL, NULL, NULL, '2024-02-28 03:18:43', '2024-02-28 03:18:43', NULL, NULL, '', 0.00, 0.00, 0, '', 0, 0, NULL, NULL, NULL, 1, 1, NULL),
(23, 'dss', 'sjd', 19, 15, NULL, NULL, NULL, NULL, '2024-02-28 03:21:50', '2024-02-28 03:21:50', NULL, NULL, '', 0.00, 0.00, 0, '', 0, 0, NULL, NULL, NULL, 1, 1, NULL),
(24, 'dss', 'sjd', 19, 15, NULL, NULL, NULL, NULL, '2024-02-28 03:21:59', '2024-02-28 03:21:59', NULL, NULL, '', 0.00, 0.00, 0, '', 0, 0, NULL, NULL, NULL, 1, 1, NULL),
(25, 'dss', 'sjd', 19, 15, NULL, NULL, NULL, NULL, '2024-02-28 03:54:38', '2024-02-28 03:54:38', NULL, NULL, '', 0.00, 0.00, 0, '', 0, 0, NULL, NULL, NULL, 1, 1, NULL),
(26, 'pp', 'pp', 19, 12, NULL, NULL, NULL, NULL, '2024-03-04 00:04:37', '2024-03-04 00:04:37', 'ppl', 'pcl', 'deff33', 2.89, 3.90, 3, 'metric', 3, 2, NULL, NULL, NULL, 1, 1, NULL),
(27, 'pp', 'pp', 19, 12, NULL, NULL, NULL, NULL, '2024-03-04 00:08:37', '2024-03-04 00:24:44', 'ppl', 'pcl', 'deff33', 2.89, 3.90, 89, 'metric', 3, 2, NULL, NULL, NULL, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_meta_data`
--

CREATE TABLE `products_meta_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_meta_data`
--

INSERT INTO `products_meta_data` (`id`, `product_id`, `image_url`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(12, 17, 'https://techknowgram.com/static/media/navlogo.af0c3c7e6269ac45867d.png', 1, NULL, NULL, NULL, NULL, '2024-01-23 23:54:58', '2024-01-25 00:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(12, 'CANDY', 1, NULL, NULL, NULL, NULL, '2024-01-23 23:42:22', '2024-01-24 23:57:17'),
(13, 'COOKIES', 1, NULL, NULL, NULL, NULL, '2024-01-23 23:42:33', '2024-01-24 23:56:52'),
(14, 'DAIRY MILK', 0, NULL, NULL, NULL, NULL, '2024-01-23 23:42:44', '2024-01-23 23:42:44'),
(15, 'DRY CAKE', 0, NULL, NULL, NULL, NULL, '2024-01-23 23:43:02', '2024-01-23 23:43:02'),
(16, 'HONEY', 0, NULL, NULL, NULL, NULL, '2024-01-23 23:43:12', '2024-01-23 23:43:12'),
(17, 'DRINKING WATER', 0, NULL, NULL, NULL, NULL, '2024-01-23 23:47:37', '2024-01-23 23:47:37'),
(19, 'mobile', 0, 'me', 'me', '0.0.0.0', 'chrome', '2024-01-24 00:24:15', '2024-01-24 00:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `product_items`
--

CREATE TABLE `product_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `erp_id` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `sku_number` varchar(255) NOT NULL,
  `distribution_price` varchar(255) NOT NULL,
  `trade_price` varchar(255) NOT NULL,
  `weight_per_unit` varchar(255) NOT NULL,
  `packing_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `selling_pack_size` varchar(255) NOT NULL,
  `selling_cartoon_size` varchar(255) NOT NULL,
  `is_new_product` tinyint(1) NOT NULL,
  `is_offer_running` tinyint(1) NOT NULL,
  `is_distribution_git_available` tinyint(1) NOT NULL,
  `is_sms_active` tinyint(1) NOT NULL,
  `is_product_in_stock` tinyint(1) NOT NULL,
  `opening_date` varchar(255) NOT NULL,
  `closing_date` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_items`
--

INSERT INTO `product_items` (`id`, `erp_id`, `product_id`, `sku_number`, `distribution_price`, `trade_price`, `weight_per_unit`, `packing_unit_id`, `selling_pack_size`, `selling_cartoon_size`, `is_new_product`, `is_offer_running`, `is_distribution_git_available`, `is_sms_active`, `is_product_in_stock`, `opening_date`, `closing_date`, `is_active`, `status`, `created_by`, `updated_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(17, '401', 17, 'FG.PUSTI.WATER.500ML', '20000', '1200', '60L', 7, '12', '24', 1, 1, 1, 1, 0, '2024-01-01', '2024-01-31', 1, 1, NULL, NULL, NULL, NULL, '2024-01-23 23:54:48', '2024-01-25 00:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_marketing_links`
--

CREATE TABLE `product_marketing_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_marketing_links`
--

INSERT INTO `product_marketing_links` (`id`, `link`, `product_id`, `created_by`, `modified_by`, `ip`, `browser`, `created_at`, `updated_at`) VALUES
(9, 'https://techknowgram.com', 17, NULL, NULL, NULL, NULL, '2024-01-23 23:55:21', '2024-01-23 23:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `packaging_units`
--
ALTER TABLE `packaging_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products_meta_data`
--
ALTER TABLE `products_meta_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_items`
--
ALTER TABLE `product_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_marketing_links`
--
ALTER TABLE `product_marketing_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
