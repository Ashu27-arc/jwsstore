-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2024 at 01:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewellerywholesalestoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `house` text DEFAULT NULL,
  `landmark` text DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `analytics` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `position` tinyint(4) NOT NULL DEFAULT 1,
  `link` text DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `message` text DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cover`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rhodium Plated', 'EarHWbGswN2JFj5nhpGSyaxFn1zyNWEls0oc35RA.jpg', NULL, 1, '2024-01-20 01:16:45', '2024-01-20 01:16:45'),
(2, 'Gold Plated Jewellery', 'w6mNtZVF91syZQdOY2ddorJcrX70C8DogXiZfdRL.png', NULL, 1, '2024-01-20 01:17:52', '2024-01-20 01:17:52'),
(3, 'Silver Jewellery', 'eriqKma8qhqGJ1bh0E98awJiY0rWUw0OtmMDyAd1.png', NULL, 1, '2024-01-20 01:18:39', '2024-01-20 01:18:39');

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `from_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `message_type` varchar(255) NOT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_room`
--

CREATE TABLE `chat_room` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `lat`, `lng`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Delhi', '40.7143528', '-74.0059731', NULL, 1, '2024-01-20 02:32:59', '2024-01-20 02:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `issue_with` tinyint(4) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `reason_id` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `short_message` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `date` date DEFAULT NULL,
  `city` int(11) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `fcm_token` text DEFAULT NULL,
  `current` varchar(255) DEFAULT NULL,
  `others` text DEFAULT NULL,
  `stripe_key` text DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `first_name`, `last_name`, `email`, `password`, `country_code`, `mobile`, `address`, `date`, `city`, `cover`, `lat`, `lng`, `gender`, `verified`, `fcm_token`, `current`, `others`, `stripe_key`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Akhilesh', 'Singh', 'akhilesh@veloxn.com', '$2y$10$SnVSt0okIFX76gQTMy0i3eukFJVRbRmZ0luJyCAblT5Ptoohnys6a', '+91', '8521220157', 'Shyam Building Street No1, Badarpur Border, Delhi - 110044', NULL, 1, 'ktSMJ6Awj7IU04Qlpl1PbIMJCwsJ0roWp7mujXVh.jpg', '40.7143528', '-74.0059731', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, '2024-01-22 05:23:06', '2024-01-22 05:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `driver_request`
--

CREATE TABLE `driver_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` int(11) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
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
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flush`
--

CREATE TABLE `flush` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` text NOT NULL,
  `value` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `min` double(10,2) DEFAULT NULL,
  `free` double(10,2) DEFAULT NULL,
  `tax` double(10,2) DEFAULT NULL,
  `shipping` varchar(255) DEFAULT NULL,
  `shippingPrice` double(10,2) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`id`, `name`, `mobile`, `email`, `address`, `city`, `state`, `zip`, `country`, `min`, `free`, `tax`, `shipping`, `shippingPrice`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, 'Silver Jewellery Wholesale Store', '7292001010', 'info@veloxn.com', 'Badarpur', 'New Delhi', 'Delhi', '110044', 'India', 1.00, 10.00, 10.00, 'km', 10.00, 1, NULL, '2024-01-22 05:13:37', '2024-01-22 05:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `is_default` tinyint(4) NOT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

CREATE TABLE `manage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_close` tinyint(4) NOT NULL DEFAULT 1,
  `message` text DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_06_222923_create_transactions_table', 1),
(4, '2018_11_07_192923_create_transfers_table', 1),
(5, '2018_11_15_124230_create_wallets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2021_11_02_202021_update_wallets_uuid_table', 1),
(9, '2023_04_24_120334_create_pages_table', 1),
(10, '2023_04_24_120357_create_address_table', 1),
(11, '2023_04_24_120421_create_banners_table', 1),
(12, '2023_04_24_120445_create_category_table', 1),
(13, '2023_04_24_120504_create_cities_table', 1),
(14, '2023_04_24_120524_create_favourite_table', 1),
(15, '2023_04_24_120544_create_flush_table', 1),
(16, '2023_04_24_120604_create_general_table', 1),
(17, '2023_04_24_120623_create_languages_table', 1),
(18, '2023_04_24_120642_create_otp_table', 1),
(19, '2023_04_24_120704_create_popup_table', 1),
(20, '2023_04_24_120725_create_store_table', 1),
(21, '2023_04_24_120747_create_sub_category_table', 1),
(22, '2023_04_24_120808_create_chat_message_table', 1),
(23, '2023_04_24_120828_create_chat_room_table', 1),
(24, '2023_04_24_120848_create_contacts_table', 1),
(25, '2023_04_24_120910_create_drivers_table', 1),
(26, '2023_04_24_120932_create_manage_table', 1),
(27, '2023_04_24_120951_create_offers_table', 1),
(28, '2023_04_24_121008_create_products_table', 1),
(29, '2023_04_24_121100_create_rating_table', 1),
(30, '2023_04_24_121119_create_subscriber_table', 1),
(31, '2023_04_24_121142_create_analytics_table', 1),
(32, '2023_04_24_121251_create_referral_table', 1),
(33, '2023_04_24_121342_create_referralcodes_table', 1),
(34, '2023_04_24_121401_create_redeem_table', 1),
(35, '2023_04_24_121426_create_orders_table', 1),
(36, '2023_04_24_121448_create_store_request_table', 1),
(37, '2023_04_24_121509_create_complaints_table', 1),
(38, '2023_04_24_121529_create_driver_request_table', 1),
(39, '2023_04_24_121549_create_settings_table', 1),
(40, '2023_04_24_121611_create_payments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `off` double(10,2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `upto` double(10,2) DEFAULT NULL,
  `min` double(10,2) DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `manage` tinyint(4) NOT NULL DEFAULT 0,
  `store_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `store_id` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `paid_method` varchar(255) NOT NULL,
  `order_to` varchar(255) NOT NULL,
  `orders` text NOT NULL,
  `notes` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `driver_id` varchar(255) DEFAULT NULL,
  `assignee` text DEFAULT NULL,
  `total` double(10,2) DEFAULT NULL,
  `tax` double(10,2) DEFAULT NULL,
  `grand_total` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `delivery_charge` double(10,2) DEFAULT NULL,
  `wallet_used` tinyint(4) NOT NULL DEFAULT 0,
  `wallet_price` double(10,2) DEFAULT NULL,
  `coupon_code` text DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `pay_key` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `payStatus` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `otp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `otp`, `email`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, '177731', 'gvaishnava@gmail.com', 0, NULL, '2024-01-22 05:05:09', '2024-01-22 05:05:09'),
(2, '291518', 'store1@gmail.com', 0, NULL, '2024-01-22 05:32:41', '2024-01-22 05:32:41'),
(3, '999311', 'store2@gmail.com', 0, NULL, '2024-01-22 05:35:00', '2024-01-22 05:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `content` text NOT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About us', 'About us', 'NA', 1, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(2, 'Privacy', 'Privacy', 'NA', 1, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(3, 'Terms & Conditions', 'Terms & Conditions', 'NA', 1, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(4, 'Refund Policy', 'Refund Policy', 'NA', 1, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(5, 'Frequently Asked Questions', 'Frequently Asked Questions', 'NA', 1, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(6, 'Help', 'Help', 'NA', 1, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(7, 'Legal Mentions', 'Legal Mentions', 'NA', 1, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(8, 'Cookies', 'Cookies', 'NA', 1, '2024-01-13 12:55:50', '2024-01-13 12:55:50');

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
  `name` varchar(255) NOT NULL,
  `env` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `creds` text DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `env`, `status`, `currency_code`, `cover`, `creds`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, 'COD', 1, 1, 'USD', 'NA', NULL, NULL, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(2, 'Stripe', 1, 1, 'USD', 'NA', NULL, NULL, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(3, 'PayPal', 1, 1, 'USD', 'NA', NULL, NULL, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(4, 'PayTM', 1, 1, 'INR', 'NA', NULL, NULL, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(5, 'RazorPay', 1, 1, 'INR', 'NA', NULL, NULL, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(6, 'InstaMOJO', 1, 1, 'INR', 'NA', NULL, NULL, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(7, 'PayStack', 1, 1, 'NGN', 'NA', NULL, NULL, '2024-01-13 12:55:50', '2024-01-13 12:55:50'),
(8, 'Flutterwave', 1, 1, 'NGN', 'NA', NULL, NULL, '2024-01-13 12:55:50', '2024-01-13 12:55:50');

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
-- Table structure for table `popup`
--

CREATE TABLE `popup` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shown` tinyint(4) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL,
  `cover` text NOT NULL,
  `name` text NOT NULL,
  `images` text NOT NULL,
  `original_price` double(10,2) DEFAULT NULL,
  `sell_price` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `kind` tinyint(4) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `sub_cate_id` int(11) DEFAULT NULL,
  `in_home` tinyint(4) DEFAULT NULL,
  `is_single` tinyint(4) DEFAULT NULL,
  `have_gram` tinyint(4) DEFAULT NULL,
  `gram` varchar(255) DEFAULT NULL,
  `have_kg` tinyint(4) DEFAULT NULL,
  `kg` varchar(255) DEFAULT NULL,
  `have_pcs` tinyint(4) DEFAULT NULL,
  `pcs` varchar(255) DEFAULT NULL,
  `have_liter` tinyint(4) DEFAULT NULL,
  `liter` varchar(255) DEFAULT NULL,
  `have_ml` tinyint(4) DEFAULT NULL,
  `ml` varchar(255) DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `key_features` text DEFAULT NULL,
  `disclaimer` text DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `type_of` tinyint(4) NOT NULL DEFAULT 2,
  `in_offer` tinyint(4) NOT NULL DEFAULT 2,
  `in_stoke` tinyint(4) NOT NULL DEFAULT 0,
  `rating` double(10,2) DEFAULT NULL,
  `total_rating` int(11) DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `size` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `store_id`, `cover`, `name`, `images`, `original_price`, `sell_price`, `discount`, `kind`, `cate_id`, `sub_cate_id`, `in_home`, `is_single`, `have_gram`, `gram`, `have_kg`, `kg`, `have_pcs`, `pcs`, `have_liter`, `liter`, `have_ml`, `ml`, `descriptions`, `key_features`, `disclaimer`, `exp_date`, `type_of`, `in_offer`, `in_stoke`, `rating`, `total_rating`, `variations`, `size`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, 2, 'KIqmiBd8sGsUPr0TpwWialTbXbh9Wud80wk1SAAM.jpg', 'Alphabet Pendants (Regular size)', '[\"UH7ki7HgLyjfS8T48gJHLwpgcS7zQmLGso4ARJKx.jpg\",\"4Qj9eAsvcCn46KziyJsXXCWx4yMz2UCMNkw2bVw6.jpg\",\"tOYFhLXC7rE96lDj4qFyDm3zd9mh4w2d6UCVhbU5.jpg\",\"fadmZ3LUFH1e7qbuvzJAHmvgmFuYZl5jFNv8W23R.jpg\",\"PZkOfTHkfDesZ3Mz8WJ1PhDDLIfYe4HlNnRYOr7u.jpg\",\"ndjUC2tkBjarLEoOkyCDgasgAZaSERk0dSdSqHQ2.jpg\"]', 100.00, 90.00, 10.00, 0, 3, 4, 0, 0, 1, '10', 0, '0', 1, '100', 0, '0', 0, '0', 'This is Silver  Jewellery Alphabet Pendants (Regular size).', 'Alphabet Pendants (Regular size)', 'This Product is good.', '2026-06-10', 1, 0, 1, 0.00, 0, '[{\"title\":\"size\",\"type\":\"radio\",\"items\":[{\"title\":\"Regular Size\",\"price\":10,\"discount\":2},{\"title\":\"Small Size\",\"price\":5,\"discount\":1}]}]', 1, 1, NULL, '2024-01-22 06:16:07', '2024-01-22 08:29:14'),
(2, 2, 'K88N19hqW4u1CNGZ0yUgzzJkXXZATtCJemUBA18u.jpg', 'Alphabet Pendants', '[\"tsmoG9hGFMh5FL8sMFInROldvU0Fg7Dy9TYPDeTk.jpg\",\"eqBOqHw2gObePSh28SEhLW9PNcYndb9AxEajJt76.jpg\",\"JGQ0xmb6sCCqSPbVnxYoSHvAhyyLqaGya7VqW6P3.jpg\",\"08m1zIJBEY0a1lt90nyJV4UBU7ts112LHm8k24oS.jpg\",\"OALNFRED7kkf9ganEQ7cqwafAlBzn0HVehcPkOQv.jpg\",\"2iwiDczFVzYAskCt1PRbX5mxIQaEqarV0yGSLr1u.jpg\"]', 200.00, 180.00, 10.00, 0, 2, 16, 0, 0, 1, '10', 0, '0', 0, '0', 0, '0', 0, '0', 'This is Gold plated Alphabet Pendants Regular Size', 'Alphabet Pendants', 'This is Gold plated Alphabet Pendants Regular Size only', '2026-12-31', 1, 0, 1, 0.00, 0, '[{\"title\":\"size\",\"type\":\"radio\",\"items\":[{\"title\":\"Regular Size\",\"price\":20,\"discount\":2}]}]', 1, 1, NULL, '2024-01-22 08:10:08', '2024-01-22 08:10:08'),
(3, 2, 'PoGSNSrT72pWLiB04liUIA2WoWaOb4lKM1LcDtta.jpg', 'Alphabet Pendants (Small Size)', '[\"CAamcesnzYezsIyfLtYBmnZ6iU4mIa1chVLcya84.jpg\",\"xDkGpQ8Lw8cJXoXeztaNnzhhmgk8zDyXJH8tOo2L.jpg\",\"JmZ74pt7DrDm1phzsPEVOhPbnJKbYFGBEksv5MY6.jpg\",\"DNaOSDLQNPuh13T9f1Th5niPnIjfdDdUbdtmYkVZ.jpg\",\"r1OUH4VTzzeO8zSZyQqb3R6XpyDNBg6P6R7bbRIj.jpg\",\"YNagDDmUedtlgsJBGoni8WCBP18OBn7n1ok50WX4.jpg\"]', 100.00, 90.00, 10.00, 1, 3, 5, 0, 0, 1, '10', 0, '0', 1, '100', 0, '0', 0, '0', 'This is Silver Jewellery Alphabet Pendants (Small Size).', 'Alphabet Pendants', 'This is Silver Jewellery Alphabet Pendants (Small Size) only.', '2026-02-05', 1, 0, 1, 0.00, 0, '[{\"title\":\"size\",\"type\":\"radio\",\"items\":[{\"title\":\"Size\",\"price\":10,\"discount\":2}]}]', 1, 1, NULL, '2024-01-22 08:40:48', '2024-01-22 08:40:48'),
(4, 2, 'xZUWPij2oNC5mdAJjUNj5627BB5fH7QDYBsgdRs5.jpg', 'Alphabet Pendants (Small Size)', '[\"78Z0PGVsm2FVjZrZucji848KLWXpjxKaMvILM7tw.jpg\",\"5Wo1LutXkd7De7oJZjJh1dWOw5dSXdHRIpHxa0VA.jpg\",\"R4XgV1tYp2sTky4bD5H7FXpRveT2MtJMhlKdt1Zv.jpg\",\"5j0SnI8SLRh7WtGd29fV54D7UHkxW0ghUYna22l4.jpg\",\"IPF1LbVmm3T7UDmglF7vs0JWHqXx4UQWq9f1YE2c.jpg\",\"tixidt5fL03uMJPta56pUPDmYudviMMcqx8JIBdo.jpg\"]', 300.00, 270.00, 10.00, 0, 2, 17, 0, 0, 1, '10', 0, '0', 1, '100', 0, '0', 0, '0', 'This is Silver Jeweller Alphabet Pendants (Small Size).', 'Alphabet Pendants', 'This Product is good.', '2027-10-22', 1, 0, 1, 0.00, 0, '[{\"title\":\"size\",\"type\":\"radio\",\"items\":[{\"title\":\"size\",\"price\":30,\"discount\":2}]}]', 1, 1, NULL, '2024-01-22 08:50:41', '2024-01-22 08:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `rate` double(10,2) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `way` varchar(255) DEFAULT NULL,
  `timestamp` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `redeem`
--

CREATE TABLE `redeem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner` int(11) NOT NULL,
  `redeemer` int(11) NOT NULL,
  `code` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(10,2) NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `limit` int(11) NOT NULL,
  `who_received` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referralcodes`
--

CREATE TABLE `referralcodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `code` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `extra_field` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currencySymbol` varchar(255) NOT NULL,
  `currencySide` varchar(255) NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `appDirection` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `sms_name` varchar(255) NOT NULL,
  `sms_creds` text NOT NULL,
  `delivery` tinyint(4) NOT NULL,
  `findType` tinyint(4) NOT NULL DEFAULT 0,
  `makeOrders` tinyint(4) NOT NULL DEFAULT 0,
  `reset_pwd` tinyint(4) NOT NULL DEFAULT 0,
  `user_login` tinyint(4) NOT NULL DEFAULT 0,
  `store_login` tinyint(4) NOT NULL DEFAULT 0,
  `user_verify_with` tinyint(4) NOT NULL DEFAULT 0,
  `search_radius` double(10,2) NOT NULL DEFAULT 10.00,
  `driver_login` tinyint(4) NOT NULL DEFAULT 0,
  `web_login` tinyint(4) NOT NULL DEFAULT 0,
  `login_style` tinyint(4) NOT NULL DEFAULT 1,
  `register_style` tinyint(4) NOT NULL DEFAULT 1,
  `home_page_style_app` tinyint(4) NOT NULL DEFAULT 1,
  `country_modal` text NOT NULL,
  `web_category` text NOT NULL,
  `default_country_code` varchar(255) NOT NULL,
  `default_city_id` varchar(255) DEFAULT NULL,
  `default_delivery_zip` varchar(255) DEFAULT NULL,
  `social` text DEFAULT NULL,
  `app_color` text NOT NULL,
  `app_status` tinyint(4) NOT NULL DEFAULT 1,
  `driver_assign` tinyint(4) NOT NULL DEFAULT 0,
  `fcm_token` text DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currencySymbol`, `currencySide`, `currencyCode`, `appDirection`, `logo`, `sms_name`, `sms_creds`, `delivery`, `findType`, `makeOrders`, `reset_pwd`, `user_login`, `store_login`, `user_verify_with`, `search_radius`, `driver_login`, `web_login`, `login_style`, `register_style`, `home_page_style_app`, `country_modal`, `web_category`, `default_country_code`, `default_city_id`, `default_delivery_zip`, `social`, `app_color`, `app_status`, `driver_assign`, `fcm_token`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, '₹', 'left', 'INR', 'ltr', 'JGL3RLPvkZIOr0TdeZoKaCXE4f8UU1otVGy7iof1.png', '2', '{\"twilloCreds\":{\"sid\":\"\",\"token\":\"\",\"from\":\"\"},\"msg\":{\"key\":\"\",\"sender\":\"\"}}', 0, 0, 0, 0, 0, 0, 0, 10.00, 0, 0, 1, 1, 1, '[{\"isChecked\":true,\"country_code\":\"IN\",\"country_name\":\"India\",\"dialling_code\":\"91\"}]', '3,2,1', '91', '1', '110001', '{\"fb\":\"#\",\"insta\":\"#\",\"twitter\":\"#\",\"linkedIn\":\"#\",\"googlePlay\":\"#\",\"appleStore\":\"#\"}', '#000000', 1, 0, 'DTiZQpRiVO8FTYRCR-nXIwO-KpOkylti2y5JlFWT', NULL, 1, '2024-01-22 01:40:58', '2024-01-22 01:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `cover` text DEFAULT NULL,
  `commission` double(10,2) DEFAULT NULL,
  `open_time` varchar(255) DEFAULT NULL,
  `close_time` varchar(255) DEFAULT NULL,
  `isClosed` tinyint(4) DEFAULT NULL,
  `certificate_url` varchar(255) DEFAULT NULL,
  `certificate_type` varchar(255) DEFAULT NULL,
  `rating` double(10,2) DEFAULT NULL,
  `total_rating` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `zipcode` text DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `uid`, `name`, `mobile`, `lat`, `lng`, `verified`, `address`, `descriptions`, `images`, `cover`, `commission`, `open_time`, `close_time`, `isClosed`, `certificate_url`, `certificate_type`, `rating`, `total_rating`, `cid`, `zipcode`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Silver Jewellery Store', '7292001010', '40.7143528', '-74.0059731', 1, 'New Delhi', 'This is Wholesale Silver Jewellery Store', NULL, 'UmaDLgEBSUFalY9mzK11ueqvZfi8K8SREtzeDZF2.jpg', 10.00, '10:00', '21:00', NULL, NULL, NULL, NULL, NULL, 1, '110044', NULL, 1, '2024-01-20 02:40:58', '2024-01-20 02:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `store_request`
--

CREATE TABLE `store_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `descriptions` text DEFAULT NULL,
  `cover` text DEFAULT NULL,
  `open_time` varchar(255) DEFAULT NULL,
  `close_time` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `zipcode` text DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `extra_field` text DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`, `cover`, `cate_id`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 'God Pendants (Regular Size)', 'zVsBm4BRxnpswVx3cdlxCpJpnDYIJNhE2MeDePgZ.png', 3, NULL, 1, '2024-01-20 03:57:16', '2024-01-20 03:57:16'),
(2, 'God Pendants (Small Size)', 'bogFwTqyHyWtSu25PSGJ42Vk4FQcj8EplRybk4iK.jpg', 3, NULL, 1, '2024-01-20 03:58:51', '2024-01-20 03:58:51'),
(3, 'God Pendants (Big Size)', 'RxY7F2TiRyfkiHAyzVZr8ImiahG66EwQyhQKBhH9.png', 3, NULL, 1, '2024-01-20 03:59:40', '2024-01-20 03:59:40'),
(4, 'Alphabet Pendants (Regular size)', 'ufQ9frJuEa6Pqnw879jRc2iVGrmPUAZBqTm4mYne.jpg', 3, NULL, 1, '2024-01-20 04:06:47', '2024-01-20 04:06:47'),
(5, 'Alphabet Pendants (Small Size)', 'nrK0t4JgRocfn0RzZ9ZCkAyz2iStjUOyENelBunI.png', 3, NULL, 1, '2024-01-20 04:07:27', '2024-01-20 04:07:27'),
(6, 'Trendy Pendants', 'mDwAVOjvX6XWBvVn0BKhBT3oKO3Zr1itsurC40EP.png', 3, NULL, 1, '2024-01-20 04:08:27', '2024-01-20 04:08:27'),
(7, 'God Idols', 'VMDWhczdcKuJBOfurMUm6TCN4FNkJaBjw3cU4dhh.jpg', 3, NULL, 1, '2024-01-20 04:09:48', '2024-01-20 04:09:48'),
(8, 'Pooja Articles', 'WuWDHZFEkfsRBGZHmX7m1RNWxnj9xgZtx4cguW6j.jpg', 3, NULL, 1, '2024-01-20 04:10:35', '2024-01-20 04:10:35'),
(9, 'Yantra', 'M5GNM1FrM4MUyVFxKrnx2fyrr1Enwpi9ZZFWIm8L.png', 3, NULL, 1, '2024-01-20 04:11:48', '2024-01-20 04:11:48'),
(10, 'Chain-22 Inches', '3pfxZjH6axfpgZ5hhIl4lPyG6yydOwVlzwqW6Ks0.png', 3, NULL, 1, '2024-01-20 04:12:26', '2024-01-20 04:12:26'),
(11, 'Chain-18 Inches', 'rkSbbt4iV1JDAWPCAhRyWeEnOuGSTlkUZHjW3P5U.jpg', 3, NULL, 1, '2024-01-20 04:13:11', '2024-01-20 04:13:11'),
(12, 'Mans Bracelet', 'TuPpf3OI2wO7YItMT8KvDUYUAH6yTPg8FQSRNUxi.jpg', 3, NULL, 1, '2024-01-20 04:15:44', '2024-01-20 04:15:44'),
(13, 'God Pendants (Big Size)', 'XTu2lFIggVCx35m9tuJxTHfymiMjNjJrIVyWouLF.png', 2, NULL, 1, '2024-01-20 04:18:10', '2024-01-20 04:18:10'),
(14, 'God Pendants (Regular Size)', 'YtJEymH6QCE40bdouzafUT1WoBbi9lnKIEQWMgv1.png', 2, NULL, 1, '2024-01-20 04:19:29', '2024-01-20 04:19:29'),
(15, 'God Pendants (Small Size)', 'gEr8ox7gzTQDrsNHfzX9XLtPKUFx4nQOKU20EfBW.jpg', 2, NULL, 1, '2024-01-20 04:20:22', '2024-01-20 04:20:22'),
(16, 'Alphabet Pendants (Regular size)', 'GzS7UvfQcJkXyt3x3cn1qTqp1AymYcozGnDp1hhn.jpg', 2, NULL, 1, '2024-01-20 04:21:08', '2024-01-20 04:21:08'),
(17, 'Alphabet Pendants (Small Size)', '0geaz3cjbdCQAABO9TQMaT1Hk4xPfMduAHpJfRp4.png', 2, NULL, 1, '2024-01-20 04:21:45', '2024-01-20 04:21:45'),
(18, 'Trendy Pendants', 'axnxbdFjvgyQP3EBcd8AHiIKfO5SSMtJPsjd94nZ.png', 2, NULL, 1, '2024-01-20 04:22:33', '2024-01-20 04:22:33'),
(19, 'God Idols', 'AMsRqEQk7YFby03Y37GjpahFhvyI5xzq0kRfG9Js.jpg', 2, NULL, 1, '2024-01-20 04:23:22', '2024-01-20 04:23:22'),
(20, 'Pooja Articles', 'sVxCtAIcysh5RMXlgrKby9fQhvHIK7iFksZtl40N.jpg', 2, NULL, 1, '2024-01-20 04:24:26', '2024-01-20 04:24:26'),
(21, 'Yantra', 'Bm2d1zJ7Uu9nQoIEsqKWeHyhIySOIxHR80H1dzvw.png', 2, NULL, 1, '2024-01-20 04:24:57', '2024-01-20 04:24:57'),
(22, 'Chain-22 Inches', 'fdYEOIv8AZ9zYJGuqdm5iFsod3AmHnVjWp1svfmz.png', 2, NULL, 1, '2024-01-20 04:25:45', '2024-01-20 04:25:45'),
(23, 'Chain-18 Inches', 'Qq0PU5G7XVhuzoQc7Rn7sHi5qGFwq9xvedV8kK2b.jpg', 2, NULL, 1, '2024-01-20 04:27:02', '2024-01-20 04:27:02'),
(24, 'Mans Bracelet', 'a3dkCz7BcKWqEM69cbBPjBq04Aa7ko7pNchyr14Y.jpg', 2, NULL, 1, '2024-01-20 04:28:18', '2024-01-20 04:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payable_type` varchar(255) NOT NULL,
  `payable_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('deposit','withdraw') NOT NULL,
  `amount` decimal(64,0) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `uuid` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_type` varchar(255) NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_type` varchar(255) NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('exchange','transfer','paid','refund','gift') NOT NULL DEFAULT 'transfer',
  `status_last` enum('exchange','transfer','paid','refund','gift') DEFAULT NULL,
  `deposit_id` bigint(20) UNSIGNED NOT NULL,
  `withdraw_id` bigint(20) UNSIGNED NOT NULL,
  `discount` decimal(64,0) NOT NULL DEFAULT 0,
  `fee` decimal(64,0) NOT NULL DEFAULT 0,
  `uuid` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `fcm_token` text DEFAULT NULL,
  `others` text DEFAULT NULL,
  `stripe_key` text DEFAULT NULL,
  `extra_field` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `country_code`, `mobile`, `cover`, `lat`, `lng`, `gender`, `verified`, `type`, `dob`, `date`, `fcm_token`, `others`, `stripe_key`, `extra_field`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sanjay', 'Sirohi', 'test@gmail.com', '$2y$10$..v2fyRbeKJrc.Zd1c7/0uXMbtepgtHNBsSFAPByN34ECIST0zqlW', '+91', '7292001010', 'NA', '0', '0', 1, NULL, 'admin', '1997-07-15', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2024-01-18 05:27:38', '2024-01-22 05:15:32'),
(2, 'Sanjay', 'Sirohi', 'store@gmail.com', '$2y$10$SnVSt0okIFX76gQTMy0i3eukFJVRbRmZ0luJyCAblT5Ptoohnys6a', '+91', '7292001010', 'NA', '0', '0', 1, 1, 'store', '1997-07-15', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2024-01-20 02:40:58', '2024-01-20 02:40:58'),
(3, 'Admin', '.', 'admin@veloxn.com', '$2y$10$6ODM0asU1s74IlOtos1ZyuunAddiEyqKvEv2Tu3vtQT4JN5ABVFoO', '91', '7292001010', 'NA', '0', '0', 1, 1, 'admin', '1997-07-15', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2024-01-22 05:30:09', '2024-01-22 05:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `holder_type` varchar(255) NOT NULL,
  `holder_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `uuid` char(36) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `balance` decimal(64,0) NOT NULL DEFAULT 0,
  `decimal_places` smallint(5) UNSIGNED NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_room`
--
ALTER TABLE `chat_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drivers_email_unique` (`email`);

--
-- Indexes for table `driver_request`
--
ALTER TABLE `driver_request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `driver_request_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flush`
--
ALTER TABLE `flush`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `popup`
--
ALTER TABLE `popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redeem`
--
ALTER TABLE `redeem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referralcodes`
--
ALTER TABLE `referralcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_request`
--
ALTER TABLE `store_request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_request_email_unique` (`email`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_uuid_unique` (`uuid`),
  ADD KEY `transactions_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_payable_id_ind` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_ind` (`payable_type`,`payable_id`,`type`),
  ADD KEY `payable_confirmed_ind` (`payable_type`,`payable_id`,`confirmed`),
  ADD KEY `payable_type_confirmed_ind` (`payable_type`,`payable_id`,`type`,`confirmed`),
  ADD KEY `transactions_type_index` (`type`),
  ADD KEY `transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfers_uuid_unique` (`uuid`),
  ADD KEY `transfers_from_type_from_id_index` (`from_type`,`from_id`),
  ADD KEY `transfers_to_type_to_id_index` (`to_type`,`to_id`),
  ADD KEY `transfers_deposit_id_foreign` (`deposit_id`),
  ADD KEY `transfers_withdraw_id_foreign` (`withdraw_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_holder_type_holder_id_slug_unique` (`holder_type`,`holder_id`,`slug`),
  ADD UNIQUE KEY `wallets_uuid_unique` (`uuid`),
  ADD KEY `wallets_holder_type_holder_id_index` (`holder_type`,`holder_id`),
  ADD KEY `wallets_slug_index` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_room`
--
ALTER TABLE `chat_room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver_request`
--
ALTER TABLE `driver_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flush`
--
ALTER TABLE `flush`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general`
--
ALTER TABLE `general`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage`
--
ALTER TABLE `manage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popup`
--
ALTER TABLE `popup`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redeem`
--
ALTER TABLE `redeem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referralcodes`
--
ALTER TABLE `referralcodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_request`
--
ALTER TABLE `store_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_deposit_id_foreign` FOREIGN KEY (`deposit_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_withdraw_id_foreign` FOREIGN KEY (`withdraw_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
