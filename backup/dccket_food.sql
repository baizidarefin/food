-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2024 at 05:36 AM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dccket_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` json DEFAULT NULL,
  `item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `analytic_sections`
--

CREATE TABLE `analytic_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `analytic_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` tinyint(4) NOT NULL DEFAULT '5',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `email`, `phone`, `latitude`, `longitude`, `city`, `state`, `zip_code`, `address`, `status`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'Tangail', 'suruchirestaurant9210@gmail.com', '+8801615642306', '24.2518012', '89.8481612', 'Tangail', 'Dhaka', '1900', 'Dream Touch APartment, Ground Floor, Old Bus Terminal', 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `capture_payment_notifications`
--

CREATE TABLE `capture_payment_notifications` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` decimal(13,6) NOT NULL,
  `discount_type` tinyint(4) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `minimum_order` decimal(13,6) NOT NULL DEFAULT '0.000000',
  `maximum_discount` decimal(13,6) NOT NULL DEFAULT '0.000000',
  `limit_per_user` bigint(20) DEFAULT '0',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_cryptocurrency` tinyint(3) UNSIGNED NOT NULL,
  `exchange_rate` decimal(13,2) DEFAULT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) UNSIGNED DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `is_cryptocurrency`, `exchange_rate`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'Bangladeshi Taka', '৳', 'BDT', 10, 1.00, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_access`
--

CREATE TABLE `default_access` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `default_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `default_access`
--

INSERT INTO `default_access` (`id`, `name`, `user_id`, `default_id`, `created_at`, `updated_at`) VALUES
(1, 'branch_id', 1, 1, '2024-04-25 08:23:06', '2024-04-25 08:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `dining_tables`
--

CREATE TABLE `dining_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) DEFAULT NULL,
  `qr_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateway_options`
--

CREATE TABLE `gateway_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_id` bigint(20) NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(4) NOT NULL,
  `activities` longtext COLLATE utf8mb4_unicode_ci,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_options`
--

INSERT INTO `gateway_options` (`id`, `model_id`, `model_type`, `option`, `value`, `type`, `activities`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 3, 'App\\Models\\PaymentGateway', 'paypal_app_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(2, 3, 'App\\Models\\PaymentGateway', 'paypal_client_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(3, 3, 'App\\Models\\PaymentGateway', 'paypal_client_secret', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(4, 3, 'App\\Models\\PaymentGateway', 'paypal_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(5, 3, 'App\\Models\\PaymentGateway', 'paypal_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(6, 4, 'App\\Models\\PaymentGateway', 'stripe_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(7, 4, 'App\\Models\\PaymentGateway', 'stripe_secret', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(8, 4, 'App\\Models\\PaymentGateway', 'stripe_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(9, 4, 'App\\Models\\PaymentGateway', 'stripe_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(10, 5, 'App\\Models\\PaymentGateway', 'flutterwave_public_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(11, 5, 'App\\Models\\PaymentGateway', 'flutterwave_secret_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(12, 5, 'App\\Models\\PaymentGateway', 'flutterwave_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(13, 5, 'App\\Models\\PaymentGateway', 'flutterwave_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(14, 6, 'App\\Models\\PaymentGateway', 'paystack_public_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(15, 6, 'App\\Models\\PaymentGateway', 'paystack_secret_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(16, 6, 'App\\Models\\PaymentGateway', 'paystack_payment_url', 'https://api.paystack.co', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(17, 6, 'App\\Models\\PaymentGateway', 'paystack_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(18, 6, 'App\\Models\\PaymentGateway', 'paystack_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(19, 7, 'App\\Models\\PaymentGateway', 'sslcommerz_store_name', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(20, 7, 'App\\Models\\PaymentGateway', 'sslcommerz_store_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(21, 7, 'App\\Models\\PaymentGateway', 'sslcommerz_store_password', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(22, 7, 'App\\Models\\PaymentGateway', 'sslcommerz_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(23, 7, 'App\\Models\\PaymentGateway', 'sslcommerz_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(24, 8, 'App\\Models\\PaymentGateway', 'mollie_api_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(25, 8, 'App\\Models\\PaymentGateway', 'mollie_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(26, 8, 'App\\Models\\PaymentGateway', 'mollie_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(27, 9, 'App\\Models\\PaymentGateway', 'senangpay_merchant_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(28, 9, 'App\\Models\\PaymentGateway', 'senangpay_secret_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(29, 9, 'App\\Models\\PaymentGateway', 'senangpay_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(30, 9, 'App\\Models\\PaymentGateway', 'senangpay_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(31, 10, 'App\\Models\\PaymentGateway', 'bkash_app_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(32, 10, 'App\\Models\\PaymentGateway', 'bkash_app_secret', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(33, 10, 'App\\Models\\PaymentGateway', 'bkash_username', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(34, 10, 'App\\Models\\PaymentGateway', 'bkash_password', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(35, 10, 'App\\Models\\PaymentGateway', 'bkash_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(36, 10, 'App\\Models\\PaymentGateway', 'bkash_status', '', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(37, 11, 'App\\Models\\PaymentGateway', 'paytm_merchant_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(38, 11, 'App\\Models\\PaymentGateway', 'paytm_merchant_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(39, 11, 'App\\Models\\PaymentGateway', 'paytm_merchant_website', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(40, 11, 'App\\Models\\PaymentGateway', 'paytm_channel', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(41, 11, 'App\\Models\\PaymentGateway', 'paytm_industry_type', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(42, 11, 'App\\Models\\PaymentGateway', 'paytm_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(43, 11, 'App\\Models\\PaymentGateway', 'paytm_status', '', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(44, 12, 'App\\Models\\PaymentGateway', 'razorpay_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(45, 12, 'App\\Models\\PaymentGateway', 'razorpay_secret', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(46, 12, 'App\\Models\\PaymentGateway', 'razorpay_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(47, 12, 'App\\Models\\PaymentGateway', 'razorpay_status', '', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(48, 13, 'App\\Models\\PaymentGateway', 'mercadopago_client_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(49, 13, 'App\\Models\\PaymentGateway', 'mercadopago_client_secret', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(50, 13, 'App\\Models\\PaymentGateway', 'mercadopago_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(51, 13, 'App\\Models\\PaymentGateway', 'mercadopago_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(52, 14, 'App\\Models\\PaymentGateway', 'cashfree_app_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(53, 14, 'App\\Models\\PaymentGateway', 'cashfree_secret_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(54, 14, 'App\\Models\\PaymentGateway', 'cashfree_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(55, 14, 'App\\Models\\PaymentGateway', 'cashfree_status', '', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(56, 15, 'App\\Models\\PaymentGateway', 'payfast_merchant_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(57, 15, 'App\\Models\\PaymentGateway', 'payfast_merchant_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(58, 15, 'App\\Models\\PaymentGateway', 'payfast_passphrase', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(59, 15, 'App\\Models\\PaymentGateway', 'payfast_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(60, 15, 'App\\Models\\PaymentGateway', 'payfast_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(61, 16, 'App\\Models\\PaymentGateway', 'skrill_merchant_email', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(62, 16, 'App\\Models\\PaymentGateway', 'skrill_merchant_api_password', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(63, 16, 'App\\Models\\PaymentGateway', 'skrill_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(64, 16, 'App\\Models\\PaymentGateway', 'skrill_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(65, 17, 'App\\Models\\PaymentGateway', 'phonepe_merchant_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(66, 17, 'App\\Models\\PaymentGateway', 'phonepe_merchant_user_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(67, 17, 'App\\Models\\PaymentGateway', 'phonepe_key_index', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(68, 17, 'App\\Models\\PaymentGateway', 'phonepe_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(69, 17, 'App\\Models\\PaymentGateway', 'phonepe_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(70, 17, 'App\\Models\\PaymentGateway', 'phonepe_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(71, 18, 'App\\Models\\PaymentGateway', 'telr_store_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(72, 18, 'App\\Models\\PaymentGateway', 'telr_store_auth_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(73, 18, 'App\\Models\\PaymentGateway', 'telr_mode', '', 10, '{\"5\":\"sandbox\",\"10\":\"live\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(74, 18, 'App\\Models\\PaymentGateway', 'telr_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(75, 1, 'App\\Models\\SmsGateway', 'twilio_account_sid', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(76, 1, 'App\\Models\\SmsGateway', 'twilio_auth_token', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(77, 1, 'App\\Models\\SmsGateway', 'twilio_from', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(78, 1, 'App\\Models\\SmsGateway', 'twilio_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(79, 2, 'App\\Models\\SmsGateway', 'clickatell_apikey', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(80, 2, 'App\\Models\\SmsGateway', 'clickatell_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(81, 3, 'App\\Models\\SmsGateway', 'nexmo_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(82, 3, 'App\\Models\\SmsGateway', 'nexmo_secret', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(83, 3, 'App\\Models\\SmsGateway', 'nexmo_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(84, 4, 'App\\Models\\SmsGateway', 'msg91_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(85, 4, 'App\\Models\\SmsGateway', 'msg91_sender_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(86, 4, 'App\\Models\\SmsGateway', 'msg91_template_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(87, 4, 'App\\Models\\SmsGateway', 'msg91_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(88, 5, 'App\\Models\\SmsGateway', 'twofactor_module', 'PROMO_SMS', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(89, 5, 'App\\Models\\SmsGateway', 'twofactor_from', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(90, 5, 'App\\Models\\SmsGateway', 'twofactor_api_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(91, 5, 'App\\Models\\SmsGateway', 'twofactor_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(92, 6, 'App\\Models\\SmsGateway', 'bulksms_username', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(93, 6, 'App\\Models\\SmsGateway', 'bulksms_password', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(94, 6, 'App\\Models\\SmsGateway', 'bulksms_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(95, 7, 'App\\Models\\SmsGateway', 'bulksmsbd_api_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(96, 7, 'App\\Models\\SmsGateway', 'bulksmsbd_sender_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(97, 7, 'App\\Models\\SmsGateway', 'bulksmsbd_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(98, 8, 'App\\Models\\SmsGateway', 'telesign_api_key', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(99, 8, 'App\\Models\\SmsGateway', 'telesign_customer_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(100, 8, 'App\\Models\\SmsGateway', 'telesign_sender_id', '', 5, '\"\"', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(101, 8, 'App\\Models\\SmsGateway', 'telesign_status', '10', 10, '{\"5\":\"enable\",\"10\":\"disable\"}', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_category_id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caution` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` decimal(13,6) NOT NULL DEFAULT '0.000000',
  `status` tinyint(4) NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `item_type` tinyint(4) NOT NULL DEFAULT '5',
  `order` bigint(20) NOT NULL DEFAULT '1',
  `is_featured` tinyint(4) NOT NULL DEFAULT '5',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_category_id`, `tax_id`, `name`, `slug`, `caution`, `description`, `price`, `status`, `item_type`, `order`, `is_featured`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'সাদা ভাত', 'sada-vat', NULL, NULL, 40.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, '2024-04-27 20:21:47', '2024-04-27 05:22:00', '2024-04-27 20:21:47'),
(2, 1, 1, 'ঘন ডাল', 'ghn-dal', NULL, NULL, 30.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 05:28:53', '2024-04-27 05:29:56'),
(3, 1, 1, 'খাসি ভুনা', 'khasi-vuna', NULL, NULL, 230.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 05:29:44', '2024-04-27 05:30:06'),
(4, 1, 1, 'খাসি কারী', 'khasi-karee', NULL, NULL, 220.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:37:52'),
(5, 1, 1, 'চিকেন ঝাল ফ্রই', 'ciken-jhal-fri', NULL, NULL, 170.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:38:44'),
(6, 1, 1, 'চিকেন কারী / রোস্ট', 'ciken-karee-rost', NULL, NULL, 150.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:39:30'),
(7, 1, 1, 'বোয়াল ফিশ', 'boyal-fis', NULL, NULL, 380.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:40:20'),
(8, 1, 1, 'রুই ফিশ', 'rui-fis', NULL, NULL, 300.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:40:52'),
(9, 1, 1, 'রূপচাঁদা কারী/ফ্রই', 'ruupcannda-kareefri', NULL, NULL, 550.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:41:34'),
(10, 1, 1, 'ইলিশ  ফিশ', 'ilis-fis', NULL, NULL, 350.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:41:58'),
(11, 1, 1, 'বাইম ফিশ', 'baim-fis', NULL, NULL, 220.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:42:31'),
(12, 1, 1, 'ছোট ফিশ', 'chot-fis', NULL, NULL, 200.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:43:03'),
(13, 1, 1, 'হাঁস ভুনা', 'hanns-vuna', NULL, NULL, 300.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:43:30'),
(14, 1, 1, 'ভর্তা', 'vrta', NULL, NULL, 40.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:44:41'),
(15, 1, 1, 'পানি', 'pani', NULL, NULL, 15.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:50:37'),
(18, 1, 1, 'সফট ড্রিংক', 'sft-dringk', NULL, NULL, 25.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:46:54'),
(19, 1, 1, 'বোরহানি গ্লাস', 'borhani-glas', NULL, NULL, 50.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:47:21'),
(20, 1, 1, 'বোরহানি লিটার', 'borhani-litar', NULL, NULL, 90.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 05:58:12'),
(22, 2, 1, 'পরটা', 'prta', NULL, NULL, 15.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:10:07', '2024-04-27 06:10:07'),
(23, 2, 1, 'তন্দুল রুটি', 'tndul-ruti', NULL, NULL, 20.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:10:40', '2024-04-27 06:10:40'),
(24, 2, 1, 'সবজি', 'sbji', NULL, NULL, 30.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:11:25', '2024-04-27 06:11:25'),
(25, 2, 1, 'বুটের ডাল', 'buter-dal', NULL, NULL, 30.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:13:24', '2024-04-27 06:13:24'),
(26, 2, 1, 'ডিম অমলেট', 'dim-omlet', NULL, NULL, 25.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:15:14', '2024-04-27 06:15:14'),
(27, 2, 1, 'কলিজা  ভুনা', 'klija-vuna', NULL, NULL, 170.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:17:16', '2024-04-27 06:17:16'),
(28, 2, 1, 'খাসির কাঁড়ি', 'khasir-kannri', NULL, NULL, 220.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:20:16', '2024-04-27 06:20:16'),
(29, 2, 1, 'ভুনা খিচুড়ি', 'vuna-khicuri', NULL, NULL, 220.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:20:55', '2024-04-27 06:20:55'),
(30, 2, 1, 'চা', 'ca', NULL, NULL, 25.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:24:39', '2024-04-27 06:24:39'),
(31, 2, 1, 'প্লেন খিচুড়ি (ডিম)', 'plen-khicuri-dim', NULL, NULL, 100.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:25:56', '2024-04-27 06:25:56'),
(32, 3, 1, 'থাই নুডলস', 'thai-nudls', NULL, NULL, 380.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:31:43', '2024-04-27 06:31:43'),
(33, 3, 1, 'Regular নুডলস', 'regular-nudls', NULL, NULL, 200.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:33:35', '2024-04-27 06:42:13'),
(34, 3, 1, 'ভেজিটেবল  নুডলস', 'vejitebl-nudls', NULL, NULL, 220.000000, 5, 5, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:41:57', '2024-04-27 06:41:57'),
(35, 3, 1, 'Egg নুডলস', 'egg-nudls', NULL, NULL, 180.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:43:36', '2024-04-27 06:43:36'),
(36, 3, 1, 'চপ্সি', 'cpsi', NULL, NULL, 280.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:44:14', '2024-04-27 06:44:14'),
(37, 4, 1, 'চিকেন ভেজিটেবল', 'ciken-vejitebl', NULL, NULL, 180.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:54:30', '2024-04-27 07:09:13'),
(38, 4, 1, 'থাই ভেজিটেবল', 'thai-vejitebl', NULL, NULL, 180.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:02:45', '2024-04-27 07:02:45'),
(39, 4, 1, 'Prawn ভেজিটেবল', 'prawn-vejitebl', NULL, NULL, 280.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:05:16', '2024-04-27 07:05:16'),
(40, 4, 1, 'চাইনীজ ভেজিটেবল', 'caineej-vejitebl', NULL, NULL, 220.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:06:18', '2024-04-27 07:06:18'),
(41, 4, 1, 'মিক্সড ভেজিটেবল', 'miksd-vejitebl', NULL, NULL, 200.000000, 5, 5, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:07:41', '2024-04-27 07:07:41'),
(42, 4, 1, 'ভেজিটেবল উইথ মাশরুম', 'vejitebl-uith-masrum', NULL, NULL, 180.000000, 5, 5, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:10:07', '2024-04-27 07:10:07'),
(43, 5, 1, 'ক্লাব Sandwitch', 'klab-sandwitch', NULL, NULL, 80.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:14:45', '2024-04-27 07:14:45'),
(44, 5, 1, 'Nachos', 'nachos', NULL, NULL, 280.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:15:51', '2024-04-27 07:15:51'),
(45, 6, 1, 'Salad Item', 'salad-item', NULL, NULL, 140.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:18:31', '2024-04-27 07:18:31'),
(46, 6, 1, 'Casonate সালাদ', 'casonate-salad', NULL, NULL, 300.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:19:47', '2024-04-27 07:19:47'),
(47, 7, 1, 'কর্ণ সুপ', 'krn-sup', NULL, NULL, 180.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:24:38', '2024-04-27 07:24:38'),
(48, 7, 1, 'থাই সুপ', 'thai-sup', NULL, NULL, 200.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:27:34', '2024-04-27 07:27:34'),
(49, 7, 1, 'সুপ ফুল', 'sup-ful', NULL, NULL, 200.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:33:00', '2024-04-27 07:33:00'),
(50, 7, 1, 'হট এন্ড সাওউর সুপ', 'ht-end-saoour-sup', NULL, NULL, 180.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:35:09', '2024-04-27 07:35:09'),
(51, 8, 1, 'ফ্রেঞ্ছ ফ্রাই', 'french-frai', NULL, NULL, 120.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:40:43', '2024-04-27 07:40:43'),
(52, 8, 1, 'KFC চিকেন ফ্রাই', 'kfc-ciken-frai', NULL, NULL, 90.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:41:19', '2024-04-27 07:41:19'),
(53, 8, 1, 'অন্থন', 'onthn', NULL, NULL, 160.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:42:08', '2024-04-27 07:42:08'),
(54, 8, 1, 'চিকেন ফ্রাই', 'ciken-frai', NULL, NULL, 200.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:45:18', '2024-04-27 07:45:18'),
(55, 8, 1, 'চিকেন বল', 'ciken-bl', NULL, NULL, 400.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:46:18', '2024-04-27 07:46:18'),
(56, 8, 1, 'Wings ফ্রাই', 'wings-frai', NULL, NULL, 280.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:46:46', '2024-04-27 07:46:46'),
(57, 9, 1, 'চিকেন বিরিয়ানি', 'ciken-biriyani', NULL, NULL, 160.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:48:56', '2024-04-27 07:48:56'),
(58, 9, 1, 'মোরগ পোলাও', 'morg-polaoo', NULL, NULL, 200.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:49:27', '2024-04-27 07:49:27'),
(59, 9, 1, 'কাচ্চি বিরিয়ানি', 'kacci-biriyani', NULL, NULL, 270.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:50:03', '2024-04-27 07:50:03'),
(60, 9, 1, 'সুরুচি স্পেশাল বাসমতী কাচ্চি', 'suruci-spesal-basmtee-kacci', NULL, NULL, 300.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:51:11', '2024-04-27 07:51:11'),
(61, 9, 1, 'মাটন তেহারি', 'matn-tehari', NULL, NULL, 220.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:51:37', '2024-04-27 07:51:37'),
(62, 9, 1, 'সুরুচি স্পেশাল কড়াই খিচুড়ি', 'suruci-spesal-krai-khicuri', NULL, NULL, 280.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:52:41', '2024-04-27 07:52:41'),
(63, 9, 1, 'প্লেইন পোলাও', 'plein-polaoo', NULL, NULL, 80.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:54:09', '2024-04-27 07:54:09'),
(64, 9, 1, 'বাসমতী কাচ্চি', 'basmtee-kacci', NULL, NULL, 100.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:54:32', '2024-04-27 07:54:32'),
(65, 10, 1, 'স্পেশাল ফ্রাইড রাইস', 'spesal-fraid-rais', NULL, NULL, 250.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 08:56:14', '2024-04-27 08:56:14'),
(66, 10, 1, 'মিক্সড ফ্রাইড রাইস', 'miksd-fraid-rais', NULL, NULL, 240.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 08:57:30', '2024-04-27 08:57:30'),
(67, 10, 1, 'থাই ফ্রাইড রাইস', 'thai-fraid-rais', NULL, NULL, 260.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 08:59:03', '2024-04-27 08:59:03'),
(68, 10, 1, 'এগ  ফ্রাইড রাইস', 'eg-fraid-rais', NULL, NULL, 200.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:00:20', '2024-04-27 09:00:20'),
(69, 10, 1, 'চিকেন ফ্রাইড রাইস', 'ciken-fraid-rais', NULL, NULL, 200.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:02:21', '2024-04-27 09:02:21'),
(70, 10, 1, 'Prawn ফ্রাইড রাইস', 'prawn-fraid-rais', NULL, NULL, 220.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:03:20', '2024-04-27 09:03:20'),
(71, 10, 1, 'ছিচুয়ান ফ্রাইড রাইস', 'chicuyan-fraid-rais', NULL, NULL, 280.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:04:12', '2024-04-27 09:04:12'),
(72, 10, 1, 'Vegetable ফ্রাইড রাইস', 'vegetable-fraid-rais', NULL, NULL, 250.000000, 5, 5, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:05:02', '2024-04-27 09:05:02'),
(73, 11, 1, 'চিকেন কারি', 'ciken-kari', NULL, NULL, 220.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:11:39', '2024-04-27 09:13:28'),
(74, 11, 1, 'চিকেন', 'ciken', NULL, NULL, 200.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:18:04', '2024-04-27 09:18:04'),
(75, 11, 1, 'Prawn', 'prawn', NULL, NULL, 230.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:22:04', '2024-04-27 09:22:04'),
(76, 11, 1, 'চিকেন (অন্যান্য)', 'ciken-onzanz', NULL, NULL, 280.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:25:56', '2024-04-27 09:25:56'),
(77, 11, 1, 'চিকেন মাসালা', 'ciken-masala', NULL, NULL, 240.000000, 5, 10, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:27:53', '2024-04-27 09:27:53'),
(78, 13, 1, 'নান', 'nan', NULL, NULL, 40.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:29:44', '2024-04-27 09:29:44'),
(79, 13, 1, 'শাহি পড়টা', 'sahi-prta', NULL, NULL, 25.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:31:44', '2024-04-27 09:31:44'),
(80, 13, 1, 'চিকেন চাপ', 'ciken-cap', NULL, NULL, 140.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:32:17', '2024-04-27 09:32:17'),
(81, 13, 1, 'গ্রিল (১/৪)', 'gril-14', NULL, NULL, 130.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:32:47', '2024-04-27 09:32:47'),
(82, 12, 1, 'ফ্রেস জুস', 'fres-jus', NULL, NULL, 140.000000, 5, 10, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:34:09', '2024-04-27 09:34:09'),
(83, 12, 1, 'কফি', 'kfi', NULL, NULL, 80.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:36:29', '2024-04-27 09:36:29'),
(84, 12, 1, 'লাচ্চি', 'lacci', NULL, NULL, 120.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:37:35', '2024-04-27 09:37:35'),
(85, 12, 1, 'ফালুদা', 'faluda', NULL, NULL, 150.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:38:17', '2024-04-27 09:54:08'),
(86, 1, 1, 'সাদা ভাত', 'sada-vat', NULL, NULL, 40.000000, 5, 5, 1, 10, NULL, NULL, NULL, NULL, NULL, '2024-04-27 20:22:04', '2024-04-27 20:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `item_addons`
--

CREATE TABLE `item_addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `addon_item_id` bigint(20) UNSIGNED NOT NULL,
  `addon_item_variation` json DEFAULT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_addons`
--

INSERT INTO `item_addons` (`id`, `item_id`, `addon_item_id`, `addon_item_variation`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 60, 64, '{}', NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:54:52', '2024-04-27 07:54:52'),
(2, 58, 63, '{}', NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:55:51', '2024-04-27 07:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `item_attributes`
--

CREATE TABLE `item_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_attributes`
--

INSERT INTO `item_attributes` (`id`, `name`, `status`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'পরিমান', 5, NULL, NULL, NULL, NULL, '2024-04-27 05:50:07', '2024-04-27 05:54:51'),
(2, 'ধরন', 5, NULL, NULL, NULL, NULL, '2024-04-27 06:22:43', '2024-04-27 06:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `sort` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `name`, `slug`, `description`, `status`, `sort`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'বাংলা  খাবার', 'bangla-khabar', NULL, 5, 1, NULL, NULL, NULL, NULL, '2024-04-25 08:53:44', '2024-04-27 09:08:57'),
(2, 'সকালের নাস্তা', 'skaler-nasta', NULL, 5, 5, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 09:08:57'),
(3, 'নুডলস', 'nudls', NULL, 5, 6, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 09:08:57'),
(4, 'ভেজিটেবল', 'vejitebl', NULL, 5, 7, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 09:08:57'),
(5, 'ফাস্টফুড', 'fastfud', NULL, 5, 8, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 09:08:57'),
(6, 'সালাদ', 'salad', NULL, 5, 9, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 09:08:57'),
(7, 'সুপ', 'sup', NULL, 5, 10, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 09:08:57'),
(8, 'ফ্রাই', 'frai', NULL, 5, 8, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 07:36:57'),
(9, 'বিরিয়ানি/খিচুড়ি', 'biriyanikhicuri', NULL, 5, 9, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 07:47:51'),
(10, 'ফ্রাইড রাইস', 'fraid-rais', NULL, 5, 10, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-04-27 08:54:00'),
(11, 'কারি', 'kari', NULL, 5, 2, NULL, NULL, NULL, NULL, '2024-04-27 05:11:47', '2024-04-27 09:09:44'),
(12, 'জুস', 'jus', NULL, 5, 3, NULL, NULL, NULL, NULL, '2024-04-27 05:12:05', '2024-04-27 09:09:54'),
(13, 'বিকেলের নাস্তা', 'bikeler-nasta', NULL, 5, 4, NULL, NULL, NULL, NULL, '2024-04-27 05:14:45', '2024-04-27 09:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `item_extras`
--

CREATE TABLE `item_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(13,6) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_extras`
--

INSERT INTO `item_extras` (`id`, `item_id`, `name`, `price`, `status`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 20, '১০০০ মিলি.', 90.000000, 5, NULL, NULL, NULL, NULL, '2024-04-27 06:01:06', '2024-04-27 06:00:30', '2024-04-27 06:01:06'),
(2, 57, 'প্লেইন পোলাও', 80.000000, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:56:31', '2024-04-27 07:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `item_variations`
--

CREATE TABLE `item_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(13,6) NOT NULL DEFAULT '0.000000',
  `caution` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_variations`
--

INSERT INTO `item_variations` (`id`, `item_id`, `item_attribute_id`, `name`, `price`, `caution`, `status`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 15, 1, '৫০০ মিলি.', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 05:51:08', '2024-04-27 05:51:08'),
(2, 15, 1, '১০০০ মিলি.', 10.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 05:51:45', '2024-04-27 05:51:45'),
(3, 15, 1, '২০০০ মিলি.', 20.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 05:52:12', '2024-04-27 05:52:12'),
(4, 20, 1, '৫০০ মিলি.', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 05:58:53', '2024-04-27 05:58:53'),
(5, 20, 1, '১০০০ মিলি.', 90.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:01:17', '2024-04-27 06:01:17'),
(6, 29, 2, 'মুরগি', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:23:18', '2024-04-27 06:23:18'),
(7, 29, 2, 'খাসি', 40.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:23:38', '2024-04-27 06:23:38'),
(8, 33, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:34:13', '2024-04-27 06:34:13'),
(9, 33, 2, 'মিক্সড', 20.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:34:41', '2024-04-27 06:36:12'),
(10, 33, 1, 'ফুল', 100.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:35:16', '2024-04-27 06:35:16'),
(11, 33, 2, 'চিকেন', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:36:03', '2024-04-27 06:36:03'),
(12, 33, 2, 'Prawn', 20.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:38:20', '2024-04-27 06:38:20'),
(13, 36, 2, 'চাইনীজ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:44:38', '2024-04-27 06:44:38'),
(14, 36, 2, 'আমেরিকান', 50.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:45:08', '2024-04-27 06:45:08'),
(15, 37, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:55:08', '2024-04-27 06:55:08'),
(16, 37, 1, 'ফুল', 100.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 06:56:32', '2024-04-27 06:56:32'),
(17, 37, 2, 'চিকেন', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, '2024-04-27 07:09:28', '2024-04-27 06:57:14', '2024-04-27 07:09:28'),
(18, 37, 2, 'ভেজিটেবল উইথ মাশরুম', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, '2024-04-27 07:09:31', '2024-04-27 07:00:00', '2024-04-27 07:09:31'),
(19, 38, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:03:59', '2024-04-27 07:03:59'),
(20, 38, 1, 'ফুল', 140.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:04:19', '2024-04-27 07:04:19'),
(21, 40, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:06:32', '2024-04-27 07:06:32'),
(22, 40, 1, 'ফুল', 50.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:06:51', '2024-04-27 07:06:51'),
(23, 41, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:07:59', '2024-04-27 07:07:59'),
(24, 41, 1, 'ফুল', 120.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:08:18', '2024-04-27 07:08:18'),
(25, 42, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:10:19', '2024-04-27 07:10:19'),
(26, 42, 1, 'ফুল', 100.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:10:39', '2024-04-27 07:10:39'),
(27, 45, 2, 'গ্রিন', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:18:49', '2024-04-27 07:18:49'),
(28, 45, 2, 'ছিসুয়ান', 160.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:19:05', '2024-04-27 07:19:05'),
(29, 46, 2, 'চিকেন', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:20:06', '2024-04-27 07:20:06'),
(30, 46, 2, 'মিক্সড', 30.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:20:21', '2024-04-27 07:20:21'),
(31, 47, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:24:54', '2024-04-27 07:24:54'),
(32, 47, 1, 'ফুল', 100.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:25:26', '2024-04-27 07:25:26'),
(33, 47, 2, 'Regular', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:25:53', '2024-04-27 07:25:53'),
(34, 47, 2, 'Special', 20.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:26:06', '2024-04-27 07:26:39'),
(35, 48, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:27:58', '2024-04-27 07:27:58'),
(36, 48, 1, 'ফুল', 120.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:28:18', '2024-04-27 07:28:18'),
(37, 48, 2, 'Regular', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:28:46', '2024-04-27 07:28:46'),
(38, 48, 2, 'Special', 20.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:29:09', '2024-04-27 07:29:09'),
(39, 49, 2, 'ভেজিটেবল', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:33:43', '2024-04-27 07:33:43'),
(40, 49, 2, 'সিস ওয়ান', 80.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:34:12', '2024-04-27 07:34:12'),
(41, 49, 2, 'থাই ক্লিয়ার', 80.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:34:30', '2024-04-27 07:34:30'),
(42, 50, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:35:23', '2024-04-27 07:35:23'),
(43, 50, 1, 'ফুল', 100.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:35:37', '2024-04-27 07:35:37'),
(44, 53, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:42:52', '2024-04-27 07:42:52'),
(45, 53, 1, 'ফুল', 120.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:43:22', '2024-04-27 07:43:22'),
(46, 53, 2, 'চিকেন', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:44:03', '2024-04-27 07:44:03'),
(47, 53, 2, 'স্পেশাল', 20.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:44:22', '2024-04-27 07:44:22'),
(48, 54, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:45:30', '2024-04-27 07:45:30'),
(49, 54, 1, 'ফুল', 200.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 07:45:48', '2024-04-27 07:45:48'),
(50, 65, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 08:56:26', '2024-04-27 08:56:26'),
(51, 65, 1, 'ফুল', 130.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 08:56:44', '2024-04-27 08:56:44'),
(52, 66, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 08:57:43', '2024-04-27 08:57:43'),
(53, 66, 1, 'ফুল', 120.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 08:58:24', '2024-04-27 08:58:24'),
(54, 67, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 08:59:15', '2024-04-27 08:59:15'),
(55, 67, 1, 'ফুল', 120.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 08:59:41', '2024-04-27 08:59:41'),
(56, 68, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:01:02', '2024-04-27 09:01:02'),
(57, 68, 1, 'ফুল', 120.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:01:27', '2024-04-27 09:01:27'),
(58, 69, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:02:32', '2024-04-27 09:02:32'),
(59, 69, 1, 'ফুল', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:02:48', '2024-04-27 09:02:48'),
(60, 70, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:03:30', '2024-04-27 09:03:30'),
(61, 70, 1, 'ফুল', 120.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:03:46', '2024-04-27 09:03:46'),
(62, 73, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:12:29', '2024-04-27 09:12:29'),
(63, 73, 1, 'ফুল', 100.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:12:47', '2024-04-27 09:12:47'),
(64, 73, 2, 'চিলি', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:14:58', '2024-04-27 09:14:58'),
(65, 73, 2, 'গারলিক', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:15:19', '2024-04-27 09:15:19'),
(66, 73, 2, 'থাই (গ্রেভি)', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:15:55', '2024-04-27 09:16:04'),
(67, 74, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:18:28', '2024-04-27 09:18:28'),
(68, 74, 1, 'ফুল', 120.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:18:46', '2024-04-27 09:18:46'),
(69, 74, 2, 'অনিওন', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:19:55', '2024-04-27 09:19:55'),
(70, 74, 2, 'লেমন', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:20:30', '2024-04-27 09:20:30'),
(71, 74, 2, 'মাশরুম', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:20:49', '2024-04-27 09:20:49'),
(72, 75, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:22:33', '2024-04-27 09:22:33'),
(73, 75, 1, 'ফুল', 150.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:22:47', '2024-04-27 09:22:47'),
(74, 75, 2, 'মাশরুম', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:23:08', '2024-04-27 09:23:08'),
(75, 75, 2, 'মাসালা', 40.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:23:33', '2024-04-27 09:23:33'),
(76, 76, 2, 'কাপ্সিকাম', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:26:21', '2024-04-27 09:26:21'),
(77, 76, 2, 'Sizzling', 40.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:26:43', '2024-04-27 09:26:43'),
(78, 76, 2, 'ছিছুয়ান', 40.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:26:58', '2024-04-27 09:26:58'),
(79, 76, 2, 'সুইট এন্ড সাওউর', 40.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:27:11', '2024-04-27 09:27:11'),
(80, 77, 1, 'হাফ', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:28:05', '2024-04-27 09:28:05'),
(81, 77, 1, 'ফুল', 180.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:28:19', '2024-04-27 09:28:19'),
(82, 78, 2, 'বাটার', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:30:02', '2024-04-27 09:30:02'),
(83, 78, 2, 'প্যাচ', 10.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:30:16', '2024-04-27 09:30:16'),
(84, 78, 2, 'গারলিক', 40.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:30:29', '2024-04-27 09:30:29'),
(85, 78, 2, 'বিস্কুট', 40.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:30:44', '2024-04-27 09:30:44'),
(86, 78, 2, 'স্পেশাল', 60.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:30:58', '2024-04-27 09:30:58'),
(87, 82, 2, 'পেঁপে', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:34:41', '2024-04-27 09:34:41'),
(88, 82, 2, 'বেল', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:35:00', '2024-04-27 09:35:00'),
(89, 82, 2, 'আম', 20.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:35:23', '2024-04-27 09:35:23'),
(90, 82, 2, 'অ্যাপল', 20.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:35:40', '2024-04-27 09:35:40'),
(91, 82, 2, 'মালটা', 20.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:35:56', '2024-04-27 09:35:56'),
(92, 83, 2, 'হট', 0.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:36:47', '2024-04-27 09:36:47'),
(93, 83, 2, 'কোল্ড', 70.000000, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-27 09:37:03', '2024-04-27 09:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_mode` tinyint(3) UNSIGNED NOT NULL DEFAULT '5',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `display_mode`, `status`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 5, 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(2, 'Bangla', 'bn', 5, 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\PaymentGateway', 1, '3301048a-5b07-494c-be5a-91c51440d5e1', 'payment-gateway', 'cash-on-delivery', 'cash-on-delivery.png', 'image/png', 'public', 'public', 3437, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(2, 'App\\Models\\PaymentGateway', 2, 'd1adec4f-d70f-4ec9-a21f-9bc84eab9de5', 'payment-gateway', 'credit', 'credit.png', 'image/png', 'public', 'public', 3885, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(3, 'App\\Models\\PaymentGateway', 3, '58ded930-89bc-4319-94a2-808aa804adbb', 'payment-gateway', 'paypal', 'paypal.png', 'image/png', 'public', 'public', 3809, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(4, 'App\\Models\\PaymentGateway', 4, 'a2b33e0c-97b5-4c80-b674-ca41982845b8', 'payment-gateway', 'stripe', 'stripe.png', 'image/png', 'public', 'public', 3635, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(5, 'App\\Models\\PaymentGateway', 5, 'f06c76c6-c038-4276-b121-2a5719bd46cd', 'payment-gateway', 'flutterwave', 'flutterwave.png', 'image/png', 'public', 'public', 5191, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(6, 'App\\Models\\PaymentGateway', 6, '9be856ce-6f29-422e-9f5c-1ed3740029c0', 'payment-gateway', 'paystack', 'paystack.png', 'image/png', 'public', 'public', 4195, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(7, 'App\\Models\\PaymentGateway', 7, '1fbfd33d-07a4-4d0c-ba0a-a97ce2e119a7', 'payment-gateway', 'sslcommerz', 'sslcommerz.png', 'image/png', 'public', 'public', 4546, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(8, 'App\\Models\\PaymentGateway', 8, '074e43ba-0ba0-4c72-9e94-ff2c82e5ce04', 'payment-gateway', 'mollie', 'mollie.png', 'image/png', 'public', 'public', 8116, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(9, 'App\\Models\\PaymentGateway', 9, '78917d01-9903-4cfc-bcea-b10318e8d4a2', 'payment-gateway', 'senangpay', 'senangpay.png', 'image/png', 'public', 'public', 6541, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(10, 'App\\Models\\PaymentGateway', 10, '36fe7d04-4f1a-403d-a845-04ae97d2c219', 'payment-gateway', 'bkash', 'bkash.png', 'image/png', 'public', 'public', 5282, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(11, 'App\\Models\\PaymentGateway', 11, 'b92620b1-44f0-4cf0-b272-c78c961c7140', 'payment-gateway', 'paytm', 'paytm.png', 'image/png', 'public', 'public', 3285, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(12, 'App\\Models\\PaymentGateway', 12, '6e206223-c2b9-4eb3-9615-51b2de050925', 'payment-gateway', 'razorpay', 'razorpay.png', 'image/png', 'public', 'public', 4847, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(13, 'App\\Models\\PaymentGateway', 13, '89c05821-7510-4923-a099-0d2e1b821226', 'payment-gateway', 'mercadopago', 'mercadopago.png', 'image/png', 'public', 'public', 11423, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(14, 'App\\Models\\PaymentGateway', 14, 'd46e7d83-4da2-4d9c-ac61-02b796d6df37', 'payment-gateway', 'cashfree', 'cashfree.png', 'image/png', 'public', 'public', 4940, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(15, 'App\\Models\\PaymentGateway', 15, 'ad8bd5f1-5bc9-4c54-8e05-eb7b1735af79', 'payment-gateway', 'payfast', 'payfast.png', 'image/png', 'public', 'public', 2173, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(16, 'App\\Models\\PaymentGateway', 16, '3d2208d0-e652-425d-88be-e19ea53bb30c', 'payment-gateway', 'skrill', 'skrill.png', 'image/png', 'public', 'public', 7074, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(17, 'App\\Models\\PaymentGateway', 17, 'b7df6028-9e07-4329-8eaf-a44ef22e6494', 'payment-gateway', 'phonepe', 'phonepe.png', 'image/png', 'public', 'public', 4417, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(18, 'App\\Models\\PaymentGateway', 18, 'e1d32f18-8eb5-4d00-9deb-23752da026ee', 'payment-gateway', 'telr', 'telr.png', 'image/png', 'public', 'public', 7594, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(19, 'App\\Models\\Language', 1, '027f97f8-d289-4219-9477-e12f7db7ce54', 'language', 'english', 'english.png', 'image/png', 'public', 'public', 1149, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(20, 'App\\Models\\Language', 2, '0ad5f2a8-cb6f-4cd3-bac4-dbadb8d40c89', 'language', 'bangla', 'bangla.png', 'image/png', 'public', 'public', 1309, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(23, 'App\\Models\\ThemeSetting', 59, '122e8d1a-26f9-460a-a518-057376a37093', 'theme-logo', 'logo', 'logo.png', 'image/png', 'public', 'public', 11152, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:36:05', '2024-04-25 08:36:05'),
(24, 'App\\Models\\ThemeSetting', 60, 'ffc01a3a-0ae7-4e65-a997-bc6352356e31', 'theme-favicon-logo', 'favicon', 'favicon.png', 'image/png', 'public', 'public', 10484, '[]', '[]', '[]', '[]', 1, '2024-04-25 08:36:05', '2024-04-25 08:36:05'),
(27, 'App\\Models\\ItemCategory', 2, '9447923f-65ed-41fb-adf9-8e7c36bde75c', 'item-category', 'breakfast', 'breakfast.png', 'image/png', 'public', 'public', 12773, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-25 09:04:07', '2024-04-25 09:04:07'),
(28, 'App\\Models\\ItemCategory', 1, '6132eb71-5c42-4da9-b8c2-e510a348dbbb', 'item-category', 'bangla-khabar', 'bangla-khabar.png', 'image/png', 'public', 'public', 14864, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-25 09:04:16', '2024-04-25 09:04:16'),
(29, 'App\\Models\\ItemCategory', 3, '417dfecc-b27f-4985-96c3-09d0766dc3ac', 'item-category', 'noodles', 'noodles.png', 'image/png', 'public', 'public', 16965, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-25 09:06:23', '2024-04-25 09:06:23'),
(30, 'App\\Models\\ThemeSetting', 61, '776bec2a-da7a-47bd-b086-c063e78d97e5', 'theme-footer-logo', 'footer-logo', 'footer-logo.png', 'image/png', 'public', 'public', 12437, '[]', '[]', '[]', '[]', 1, '2024-04-25 09:10:22', '2024-04-25 09:10:22'),
(31, 'App\\Models\\ItemCategory', 4, 'e010039f-64d4-43da-b60b-542189398ee3', 'item-category', 'vegetable', 'vegetable.png', 'image/png', 'public', 'public', 9939, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-25 09:21:00', '2024-04-25 09:21:01'),
(32, 'App\\Models\\ItemCategory', 5, '9699c22f-75f7-40c2-8263-a5289b792ffa', 'item-category', 'fastfood', 'fastfood.png', 'image/png', 'public', 'public', 5285, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-25 09:23:37', '2024-04-25 09:23:37'),
(33, 'App\\Models\\ItemCategory', 6, '81c531eb-81cd-4bc2-bc20-de964a5e895a', 'item-category', 'salad', 'salad.png', 'image/png', 'public', 'public', 9365, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-25 09:24:58', '2024-04-25 09:24:58'),
(34, 'App\\Models\\ItemCategory', 7, 'c2dccc94-0e0f-46ac-ae82-36bccfe06ed6', 'item-category', 'soup', 'soup.png', 'image/png', 'public', 'public', 10591, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-25 09:26:52', '2024-04-25 09:26:52'),
(35, 'App\\Models\\ItemCategory', 8, '5472c620-e2aa-4d71-aadd-05cbc13d2a12', 'item-category', 'fry-items', 'fry-items.png', 'image/png', 'public', 'public', 9387, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-25 09:29:17', '2024-04-25 09:29:17'),
(36, 'App\\Models\\ItemCategory', 9, '6d6190cc-8fab-483c-8559-1baa994707ed', 'item-category', 'biryani', 'biryani.png', 'image/png', 'public', 'public', 11774, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-25 09:32:09', '2024-04-25 09:32:09'),
(37, 'App\\Models\\ItemCategory', 10, 'fd088758-0811-4bc1-957e-211410ba8d03', 'item-category', 'fried-rice', 'fried-rice.png', 'image/png', 'public', 'public', 7660, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-25 09:33:23', '2024-04-25 09:33:23'),
(38, 'App\\Models\\Slider', 1, '515b83c6-85b0-429c-a41c-2f6908416f19', 'slider', 'slider', 'slider.png', 'image/png', 'public', 'public', 672659, '[]', '[]', '{\"cover\": true}', '[]', 1, '2024-04-25 09:56:51', '2024-04-25 09:56:51'),
(39, 'App\\Models\\ItemCategory', 11, '93bf4cc6-116f-4077-8eff-f06626fe95be', 'item-category', 'curry', 'curry.png', 'image/png', 'public', 'public', 12699, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-27 05:11:47', '2024-04-27 05:11:47'),
(40, 'App\\Models\\ItemCategory', 12, 'b9084e5c-ae42-4bba-bc69-ac36c7280927', 'item-category', 'juice', 'juice.png', 'image/png', 'public', 'public', 4211, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-27 05:12:05', '2024-04-27 05:12:05'),
(41, 'App\\Models\\ItemCategory', 13, '99343a5c-ec1f-4cc4-aed9-f090cf2c5f9d', 'item-category', 'snack', 'snack.png', 'image/png', 'public', 'public', 6413, '[]', '[]', '{\"cover\": true, \"thumb\": true}', '[]', 1, '2024-04-27 05:14:45', '2024-04-27 05:14:45'),
(44, 'App\\Models\\Item', 2, 'cd3469f9-29b9-41ae-b74c-88b786c4eaea', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:28:53', '2024-04-27 05:28:54'),
(45, 'App\\Models\\Item', 3, '4834c0c4-fd9a-4926-8852-8b9afb4adff8', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:29:44', '2024-04-27 05:29:44'),
(46, 'App\\Models\\Item', 4, '7cd56de4-ced8-4dc9-b411-2b7ed9da85ec', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:37:52', '2024-04-27 05:37:52'),
(47, 'App\\Models\\Item', 5, '7313bd38-293e-42fd-936d-03c1645dd420', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:38:44', '2024-04-27 05:38:44'),
(48, 'App\\Models\\Item', 6, '89fb03cc-c1bf-416e-ab73-6a1b58679156', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:39:30', '2024-04-27 05:39:30'),
(49, 'App\\Models\\Item', 7, '1da2f288-14d5-4842-86cc-8d204555c7fd', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:40:20', '2024-04-27 05:40:20'),
(50, 'App\\Models\\Item', 8, 'a87a7efc-504d-49b8-85f8-96aacaa4f937', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:40:52', '2024-04-27 05:40:52'),
(51, 'App\\Models\\Item', 9, 'bcfe5fc3-bdcc-4e33-9009-484706b7195c', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:41:34', '2024-04-27 05:41:35'),
(52, 'App\\Models\\Item', 10, '97a87046-bc67-40df-9ce4-00d1a1b7d820', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:41:58', '2024-04-27 05:41:58'),
(53, 'App\\Models\\Item', 11, 'a9107358-eb10-47c3-804b-87a7a8cd5440', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:42:31', '2024-04-27 05:42:31'),
(54, 'App\\Models\\Item', 12, '67bff28c-71f7-46af-b191-76ebbaae9e9c', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:43:03', '2024-04-27 05:43:03'),
(55, 'App\\Models\\Item', 13, 'e96fd1f8-f2d3-43df-afbb-2f610e1c0268', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:43:30', '2024-04-27 05:43:31'),
(56, 'App\\Models\\Item', 14, 'b6856060-a5ca-41ef-afde-0c25b2308099', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:44:41', '2024-04-27 05:44:41'),
(57, 'App\\Models\\Item', 15, '082a9a22-4681-407d-89a4-fc0e57c15872', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:45:17', '2024-04-27 05:45:17'),
(58, 'App\\Models\\Item', 16, 'dec3a821-0fe2-4ca8-8845-751bd6a266e9', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:45:47', '2024-04-27 05:45:47'),
(59, 'App\\Models\\Item', 17, '54dec349-5bf1-452e-bf0b-ba98d93ae2a3', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:46:16', '2024-04-27 05:46:16'),
(60, 'App\\Models\\Item', 18, '393e484b-bb77-4619-88fb-f7b7f20cc1bc', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:46:54', '2024-04-27 05:46:54'),
(61, 'App\\Models\\Item', 19, '62019648-b216-45fd-a18f-783590c931cb', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:47:21', '2024-04-27 05:47:21'),
(62, 'App\\Models\\Item', 20, 'ceed64f9-c5c2-4829-a241-fdd09ac86209', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 05:58:12', '2024-04-27 05:58:12'),
(63, 'App\\Models\\Item', 22, '457023bb-5b3e-489b-9617-234ae49892cc', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:10:08', '2024-04-27 06:10:08'),
(64, 'App\\Models\\Item', 23, '4c8d034e-9f47-422e-8e32-1e952fbe3427', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:10:40', '2024-04-27 06:10:40'),
(65, 'App\\Models\\Item', 24, '70990c74-e8a3-4dbd-a949-30c1a3721a21', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:11:25', '2024-04-27 06:11:26'),
(66, 'App\\Models\\Item', 25, 'f7aa9857-90d1-4925-a224-c9b8a4ab12b3', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:13:24', '2024-04-27 06:13:24'),
(67, 'App\\Models\\Item', 26, '82d7d22b-bd16-4b51-b15f-0cc43830bd5a', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:15:14', '2024-04-27 06:15:14'),
(68, 'App\\Models\\Item', 27, '8b13d31c-0978-4c52-86e7-dc9482903ffd', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:17:16', '2024-04-27 06:17:16'),
(69, 'App\\Models\\Item', 29, 'c71ca9e0-68c1-4d0e-ad5e-3b686e325311', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:20:55', '2024-04-27 06:20:55'),
(70, 'App\\Models\\Item', 30, 'c49e10bd-af83-4c08-a138-73496a97a078', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:24:39', '2024-04-27 06:24:40'),
(71, 'App\\Models\\Item', 32, '915d0eed-c162-46f8-b928-338194dfe9d8', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:31:43', '2024-04-27 06:31:43'),
(72, 'App\\Models\\Item', 33, 'f8ee866d-16ed-4179-9af1-a4b738da8f36', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:33:35', '2024-04-27 06:33:35'),
(73, 'App\\Models\\Item', 28, 'fe048838-f711-40cd-88a8-92671562778d', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:40:02', '2024-04-27 06:40:02'),
(74, 'App\\Models\\Item', 31, '956554a8-40b7-41b0-af95-edae3fcb8936', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:40:33', '2024-04-27 06:40:34'),
(75, 'App\\Models\\Item', 34, '61fbd935-eaae-46e0-857c-6d022619ea1a', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:41:57', '2024-04-27 06:41:57'),
(76, 'App\\Models\\Item', 35, '96f290bd-58bf-4e3d-b3b0-8e5bbab4a3a0', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:43:36', '2024-04-27 06:43:36'),
(77, 'App\\Models\\Item', 36, '333c9c03-4c52-456a-96e2-784334b86f8d', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:44:14', '2024-04-27 06:44:14'),
(78, 'App\\Models\\Item', 37, '04b89686-6f69-4a1b-9c4a-d80574b7b7a3', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 06:54:30', '2024-04-27 06:54:31'),
(79, 'App\\Models\\Item', 39, 'f744dc42-8336-40ed-a970-72bbd94375ea', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:05:16', '2024-04-27 07:05:17'),
(80, 'App\\Models\\Item', 40, 'dba783bf-09cb-4d44-9a35-c1ca6593ad87', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:06:18', '2024-04-27 07:06:18'),
(81, 'App\\Models\\Item', 41, 'fc88d71f-e2d3-4367-9969-c734303ce31d', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:07:41', '2024-04-27 07:07:42'),
(82, 'App\\Models\\Item', 42, 'b287465c-db8f-46e9-8ea9-e9fcdb5cc433', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:10:07', '2024-04-27 07:10:07'),
(83, 'App\\Models\\Item', 43, '6c462bc5-2468-4050-bdfb-312f66639a1b', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:14:45', '2024-04-27 07:14:45'),
(84, 'App\\Models\\Item', 44, 'b74d70a5-6405-446b-b0e1-35035338596f', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:15:51', '2024-04-27 07:15:51'),
(85, 'App\\Models\\Item', 45, '342c6b1e-6210-42a7-a893-62f4b1fd30ec', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:18:31', '2024-04-27 07:18:31'),
(86, 'App\\Models\\Item', 46, '5476ea4a-280f-464b-87ea-a5648a9928be', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:19:47', '2024-04-27 07:19:47'),
(87, 'App\\Models\\Item', 47, '73496e3e-4377-4c51-905d-c7c313abe7c6', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:24:38', '2024-04-27 07:24:39'),
(88, 'App\\Models\\Item', 48, '3582b80d-2738-46fa-bc43-0bf2ed40ca54', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:27:34', '2024-04-27 07:27:35'),
(89, 'App\\Models\\Item', 49, 'e08ada42-a3bf-4177-95ff-09d7a41fbbe4', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:33:00', '2024-04-27 07:33:00'),
(90, 'App\\Models\\Item', 50, '8cc7cb55-ddfd-49d6-9eef-30cd1816d17b', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:35:09', '2024-04-27 07:35:09'),
(91, 'App\\Models\\Item', 51, '60e1ab68-2838-4bfe-beed-aa0e95e73964', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:40:44', '2024-04-27 07:40:44'),
(92, 'App\\Models\\Item', 52, '3496708a-b3ce-49b9-b63e-f2a002855e65', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:41:19', '2024-04-27 07:41:19'),
(93, 'App\\Models\\Item', 53, '9519ca5e-2f74-4dfb-a309-d29af38a34fa', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:42:08', '2024-04-27 07:42:08'),
(94, 'App\\Models\\Item', 54, 'c98bfe24-ed8c-43d8-9fa2-9bc2d52353fe', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:45:18', '2024-04-27 07:45:19'),
(95, 'App\\Models\\Item', 55, 'e5b8f06a-650a-48e3-b510-0b13901e09c0', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:46:18', '2024-04-27 07:46:18'),
(96, 'App\\Models\\Item', 56, '0f46f9fb-516d-4e50-bf1a-1487abe65878', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:46:46', '2024-04-27 07:46:46'),
(97, 'App\\Models\\Item', 57, '48292771-aea8-4072-a7a5-d3c7c12a2f35', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:48:56', '2024-04-27 07:48:56'),
(98, 'App\\Models\\Item', 58, '0c5ae0b3-0b4e-43f9-9e7b-89f59aae3870', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:49:27', '2024-04-27 07:49:27'),
(99, 'App\\Models\\Item', 59, '4b00ff13-b428-4218-a605-d89beb3abcda', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:50:03', '2024-04-27 07:50:04'),
(100, 'App\\Models\\Item', 60, 'f96c39dd-82d8-4755-bd46-071a0de76979', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:51:11', '2024-04-27 07:51:11'),
(101, 'App\\Models\\Item', 61, 'a411273c-2d69-4694-9731-abb6c92faba7', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:51:37', '2024-04-27 07:51:37'),
(102, 'App\\Models\\Item', 62, '3b01b0db-c5d1-417d-a96d-755487d4482f', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:52:41', '2024-04-27 07:52:41'),
(103, 'App\\Models\\Item', 63, '06e22955-eca6-40fa-bff1-cc0167164869', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:54:09', '2024-04-27 07:54:09'),
(104, 'App\\Models\\Item', 64, 'ea93553c-e96b-405f-9811-e3e56311ee83', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 07:54:32', '2024-04-27 07:54:32'),
(105, 'App\\Models\\Item', 65, '85a2823d-a952-45ee-a7f6-dcf3811f7ae9', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 08:56:14', '2024-04-27 08:56:14'),
(106, 'App\\Models\\Item', 66, '90dfcc72-46d3-405c-b352-25c0a2f9c1b0', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 08:57:30', '2024-04-27 08:57:30'),
(107, 'App\\Models\\Item', 67, '141c8739-feb1-4bb8-a439-54607761d955', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 08:59:03', '2024-04-27 08:59:04'),
(108, 'App\\Models\\Item', 68, '567251b8-f81b-449d-a353-99ad09164eae', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:00:20', '2024-04-27 09:00:20'),
(109, 'App\\Models\\Item', 69, '9a4e0331-1370-4c7a-beb4-3ed6c72529b4', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:02:21', '2024-04-27 09:02:21'),
(110, 'App\\Models\\Item', 70, '7b06fe09-2013-4a5d-a69f-5110d1d0a3ff', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:03:20', '2024-04-27 09:03:20'),
(111, 'App\\Models\\Item', 71, '2c10905e-597f-46fe-acd4-37b1e06c8df0', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:04:12', '2024-04-27 09:04:12'),
(112, 'App\\Models\\Item', 72, 'd5313e63-cafa-4a71-910d-89624a0b2238', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:05:02', '2024-04-27 09:05:02'),
(113, 'App\\Models\\Item', 73, '8688c520-cdaf-4fd8-a7f1-940f5a3397a8', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:11:39', '2024-04-27 09:11:39'),
(114, 'App\\Models\\Item', 73, '63898aea-88df-48be-b1e6-ef0ca82ccb8c', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 2, '2024-04-27 09:13:28', '2024-04-27 09:13:28'),
(115, 'App\\Models\\Item', 74, '75633d9c-044a-4bca-b789-fb9112cfc579', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:18:04', '2024-04-27 09:18:05'),
(116, 'App\\Models\\Item', 75, '426b2b9a-3134-4d22-9580-1e3f0d71c51b', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:22:04', '2024-04-27 09:22:04'),
(117, 'App\\Models\\Item', 76, 'b34ec950-bcdc-433b-8582-f365eab0cd12', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:25:56', '2024-04-27 09:25:56'),
(118, 'App\\Models\\Item', 77, '0edfd9e2-dcd1-4a99-ad17-4bba2f3ada82', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:27:53', '2024-04-27 09:27:53'),
(119, 'App\\Models\\Item', 78, '9d098f53-d82c-46d2-a318-9391da11b079', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:29:44', '2024-04-27 09:29:44'),
(120, 'App\\Models\\Item', 79, '51480e59-43fe-484b-ad9d-2782e232fcd9', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:31:44', '2024-04-27 09:31:44'),
(121, 'App\\Models\\Item', 80, 'f4279650-4a0a-48b2-b0d8-934fe42d59e8', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:32:17', '2024-04-27 09:32:17'),
(122, 'App\\Models\\Item', 81, '665b0109-b1cc-440a-a0e9-49f930447c26', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:32:47', '2024-04-27 09:32:47'),
(123, 'App\\Models\\Item', 82, '31a2b70f-23c1-4327-8238-f88e8e896159', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:34:09', '2024-04-27 09:34:09'),
(124, 'App\\Models\\Item', 83, 'e0e0562a-6bcc-4bca-94d4-f82cafd7734d', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:36:29', '2024-04-27 09:36:29'),
(125, 'App\\Models\\Item', 84, 'df96c577-3ff5-45eb-9f85-092f2262542c', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 09:37:35', '2024-04-27 09:37:35'),
(133, 'App\\Models\\Item', 85, '26dbcdc8-ba49-49a5-9c50-9c830108a444', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 18:36:50', '2024-04-27 18:36:51'),
(136, 'App\\Models\\Item', 1, '0b2c8594-2db3-429a-888e-c0649c14fb23', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 20:09:14', '2024-04-27 20:09:14'),
(137, 'App\\Models\\Item', 86, '9dd013ee-0ab5-49b7-9b64-860d8336973e', 'item', 'product', 'product.png', 'image/png', 'public', 'public', 26439, '[]', '[]', '{\"cover\": true, \"thumb\": true, \"preview\": true}', '[]', 1, '2024-04-27 20:22:04', '2024-04-27 20:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `priority` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `language`, `url`, `icon`, `status`, `parent`, `type`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', 'dashboard', 'lab lab-dashboard', 1, 0, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(2, 'Items', 'items', 'items', 'lab lab-items', 1, 0, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(3, 'Dining Tables', 'dining_tables', 'dining-tables', 'lab lab-dining-table', 1, 0, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(4, 'Pos & Orders', 'pos_and_orders', '#', 'lab lab-pos', 1, 0, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(5, 'POS', 'pos', 'pos', 'lab lab-pos', 1, 4, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(6, 'POS Orders', 'pos_orders', 'pos-orders', 'lab lab-pos-orders', 1, 4, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(7, 'Online Orders', 'online_orders', 'online-orders', 'lab lab-online-orders', 1, 4, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(8, 'Table Orders', 'table_orders', 'table-orders', 'lab lab-reserve-line', 1, 4, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(9, 'Promo', 'promo', '#', 'lab ', 1, 0, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(10, 'Coupons', 'coupons', 'coupons', 'lab lab-coupons', 1, 9, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(11, 'Offers', 'offers', 'offers', 'lab lab-offers', 1, 9, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(12, 'Communications', 'communications', '#', 'lab ', 1, 0, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(13, 'Push Notifications', 'push_notifications', 'push-notifications', 'lab lab-push-notification', 1, 12, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(14, 'Messages', 'messages', 'messages', 'lab lab-messages', 1, 12, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(15, 'Subscribers', 'subscribers', 'subscribers', 'lab lab-subscribers', 1, 12, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(16, 'Users', 'users', '#', 'lab ', 1, 0, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(17, 'Administrators', 'administrators', 'administrators', 'lab lab-administrators', 1, 16, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(18, 'Delivery Boys', 'delivery_boys', 'delivery-boys', 'lab lab-delivery-boys', 1, 16, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(19, 'Customers', 'customers', 'customers', 'lab lab-customers', 1, 16, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(20, 'Employees', 'employees', 'employees', 'lab lab-employee', 1, 16, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(21, 'Accounts', 'accounts', '#', 'lab ', 1, 0, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(22, 'Transactions', 'transactions', 'transactions', 'lab lab-transactions', 1, 21, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(23, 'Reports', 'reports', '#', 'lab ', 1, 0, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(24, 'Sales Report', 'sales_report', 'sales-report', 'lab lab-sales-report', 1, 23, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(25, 'Items Report', 'items_report', 'items-report', 'lab lab-items-report', 1, 23, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(26, 'Credit Balance Report', 'credit_balance_report', 'credit-balance-report', 'lab lab-credit-balance-report', 1, 23, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(27, 'Setup', 'setup', '#', 'lab ', 1, 0, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(28, 'Settings', 'settings', 'settings', 'lab lab-settings', 1, 27, 1, 100, '2024-04-25 08:22:31', '2024-04-25 08:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `menu_sections`
--

CREATE TABLE `menu_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_sections`
--

INSERT INTO `menu_sections` (`id`, `name`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'Header Section', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(2, 'Footer Section', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `menu_templates`
--

CREATE TABLE `menu_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_templates`
--

INSERT INTO `menu_templates` (`id`, `name`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_histories`
--

CREATE TABLE `message_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_09_10_080029_create_menus_table', 1),
(6, '2022_05_01_142407_create_permission_tables', 1),
(7, '2022_05_24_204620_create_settings_table', 1),
(8, '2022_05_25_124629_create_currencies_table', 1),
(9, '2022_06_26_055545_create_default_access_table', 1),
(10, '2022_08_10_143500_create_media_table', 1),
(11, '2022_11_10_075751_create_subscribers_table', 1),
(12, '2022_11_17_110125_create_branches_table', 1),
(13, '2022_11_17_110157_create_languages_table', 1),
(14, '2022_11_17_110300_create_addresses_table', 1),
(15, '2022_11_17_110319_create_sliders_table', 1),
(16, '2022_11_17_110428_create_item_categories_table', 1),
(17, '2022_11_17_110455_create_offers_table', 1),
(18, '2022_11_17_110459_create_taxes_table', 1),
(19, '2022_11_17_110514_create_items_table', 1),
(20, '2022_11_17_110541_create_item_attributes_table', 1),
(21, '2022_11_17_110621_create_item_variations_table', 1),
(22, '2022_11_17_110650_create_item_extras_table', 1),
(23, '2022_11_17_110810_create_orders_table', 1),
(24, '2022_11_17_110832_create_order_items_table', 1),
(25, '2022_11_17_110910_create_coupons_table', 1),
(26, '2022_11_17_111737_create_offer_items_table', 1),
(27, '2022_11_17_113842_create_menu_sections_table', 1),
(28, '2022_11_17_114040_create_menu_templates_table', 1),
(29, '2022_11_17_114144_create_analytics_table', 1),
(30, '2022_11_17_114516_create_analytics_sections_table', 1),
(31, '2022_11_17_114835_create_payment_gateways_table', 1),
(32, '2022_11_17_115136_create_sms_gateways_table', 1),
(33, '2022_11_17_115341_create_gateway_options_table', 1),
(34, '2022_11_17_115716_create_addons_table', 1),
(35, '2022_11_17_120130_create_notifications_table', 1),
(36, '2022_11_17_120408_create_messages_table', 1),
(37, '2022_11_17_120624_create_message_histories_table', 1),
(38, '2022_11_17_120625_create_order_coupons_table', 1),
(39, '2022_11_17_120626_create_pages_table', 1),
(40, '2022_11_17_120627_create_item_addons_table', 1),
(41, '2022_11_23_125038_create_push_notifications_table', 1),
(42, '2023_01_09_111734_create_time_slots_table', 1),
(43, '2023_02_20_180253_create_order_addresses_table', 1),
(44, '2023_03_06_154954_create_otps_table', 1),
(45, '2023_03_23_143747_create_transactions_table', 1),
(46, '2023_03_23_170303_create_capture_payment_notifications_table', 1),
(47, '2023_03_27_140107_create_notification_alerts_table', 1),
(48, '2023_07_19_135307_add_soft_delete_column_to_users_table', 1),
(49, '2023_07_20_095727_add_total_tax_to_orders_table', 1),
(50, '2023_07_20_095843_add_tax_to_order_items_table', 1),
(51, '2023_09_05_133748_create_dining_tables_table', 1),
(52, '2023_11_18_154743_add_dining_table_id_to_order_table', 1),
(53, '2024_01_22_172712_add_display_mode_to_languages_table', 1),
(54, '2024_02_29_095727_add_sort_to_item_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_alerts`
--

CREATE TABLE `notification_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_notification_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `push_notification` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_alerts`
--

INSERT INTO `notification_alerts` (`id`, `name`, `language`, `mail_message`, `sms_message`, `push_notification_message`, `mail`, `sms`, `push_notification`, `created_at`, `updated_at`) VALUES
(1, 'Order Pending Message', 'order_pending_message', 'Your order is successfully placed.', 'Your order is successfully placed.', 'Your order is successfully placed.', 10, 10, 10, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(2, 'Order Confirmation Message', 'order_confirmation_message', 'Your order is Confirmed.', 'Your order is Confirmed.', 'Your order is Confirmed.', 10, 10, 10, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(3, 'Order Processing Message', 'order_processing_message', 'Your order is being Processed.', 'Your order is being Processed.', 'Your order is being Processed.', 10, 10, 10, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(4, 'Order Out For Delivery Message', 'order_out_for_delivery_message', 'Your order is Out for delivery.', 'Your order is Out for delivery.', 'Your order is Out for delivery.', 10, 10, 10, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(5, 'Order Delivered Message', 'order_delivered_message', 'Your order is Successfully delivered.', 'Your order is Successfully delivered.', 'Your order is Successfully delivered.', 10, 10, 10, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(6, 'Order Canceled Message', 'order_canceled_message', 'Your order is Canceled.', 'Your order is Canceled.', 'Your order is Canceled.', 10, 10, 10, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(7, 'Order Rejected Message', 'order_rejected_message', 'Your order is Rejected.', 'Your order is Rejected.', 'Your order is Rejected.', 10, 10, 10, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(8, 'Order Returned Message', 'order_returned_message', 'Your order is Returned.', 'Your order is Returned.', 'Your order is Returned.', 10, 10, 10, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(9, 'Delivery Boy After Assign Message', 'delivery_boy_after_assign_message', 'You have been assigned an order for delivery.', 'You have been assigned an order for delivery.', 'You have been assigned an order for delivery.', 10, 10, 10, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(10, 'Admin And Branch Manager New Order Message', 'admin_and_branch_manager_new_order_message', 'You have a new order.', 'You have a new order.', 'You have a new order.', 10, 10, 10, '2024-04-25 08:22:32', '2024-04-25 08:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(13,6) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer_items`
--

CREATE TABLE `offer_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_serial_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(13,6) NOT NULL,
  `discount` decimal(13,6) DEFAULT '0.000000',
  `delivery_charge` decimal(13,6) DEFAULT '0.000000',
  `total_tax` decimal(13,6) DEFAULT NULL,
  `total` decimal(13,6) NOT NULL,
  `order_type` tinyint(4) NOT NULL DEFAULT '5',
  `order_datetime` timestamp NOT NULL DEFAULT '2024-04-25 08:04:29',
  `delivery_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preparation_time` int(11) NOT NULL DEFAULT '0',
  `is_advance_order` tinyint(4) NOT NULL DEFAULT '5',
  `payment_method` bigint(20) NOT NULL DEFAULT '1',
  `payment_status` tinyint(4) NOT NULL DEFAULT '10',
  `status` tinyint(4) NOT NULL,
  `dining_table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_boy_id` bigint(20) DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_addresses`
--

CREATE TABLE `order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_coupons`
--

CREATE TABLE `order_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `discount` decimal(13,6) NOT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `discount` decimal(13,6) NOT NULL,
  `tax_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_rate` decimal(13,6) DEFAULT NULL,
  `tax_type` tinyint(4) DEFAULT NULL,
  `tax_amount` decimal(13,6) DEFAULT NULL,
  `price` decimal(13,6) NOT NULL,
  `item_variations` longtext COLLATE utf8mb4_unicode_ci,
  `item_extras` longtext COLLATE utf8mb4_unicode_ci,
  `item_variation_total` decimal(13,6) DEFAULT '0.000000',
  `item_extra_total` decimal(13,6) DEFAULT '0.000000',
  `total_price` decimal(13,6) DEFAULT '0.000000',
  `instruction` text COLLATE utf8mb4_unicode_ci,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_section_id` bigint(20) UNSIGNED NOT NULL,
  `template_id` bigint(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `description`, `menu_section_id`, `template_id`, `status`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'Contact', 'contact', '<p><span style=\"color: rgb(5, 5, 5);\">Taste Is Our Identity . Quality Food . Unique Service</span></p>', 2, 1, 5, NULL, NULL, NULL, NULL, '2024-04-25 09:49:30', '2024-04-25 09:49:30'),
(2, 'Service', 'service', '<p><span style=\"color: var(--primary-text);\">Delivery · Dine in · Online booking</span></p>', 2, 0, 5, NULL, NULL, NULL, NULL, '2024-04-25 09:50:16', '2024-04-25 09:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `misc` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `slug`, `misc`, `status`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', 'cash-on-delivery', 'null', 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(2, 'Credit', 'credit', 'null', 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(3, 'Paypal', 'paypal', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(4, 'Stripe', 'stripe', '{\"input\":[\"stripe.stripeInput.blade.php\"],\"js\":[\"stripe.stripeJs.blade.php\"],\"submit\":true}', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(5, 'Flutterwave', 'flutterwave', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(6, 'Paystack', 'paystack', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(7, 'SslCommerz', 'sslcommerz', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(8, 'Mollie', 'mollie', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(9, 'Senangpay', 'senangpay', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(10, 'Bkash', 'bkash', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(11, 'Paytm', 'paytm', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(12, 'Razorpay', 'razorpay', '{\"input\":[],\"js\":[\"razorpay.razorpayJs.blade.php\"],\"submit\":false}', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(13, 'Mercadopago', 'mercadopago', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(14, 'Cashfree', 'cashfree', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(15, 'Payfast', 'payfast', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(16, 'Skrill', 'skrill', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(17, 'PhonePe', 'phonepe', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(18, 'Telr', 'telr', 'null', 10, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` bigint(20) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `name`, `guard_name`, `url`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', 'sanctum', 'dashboard', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(2, 'Items', 'items', 'sanctum', 'items', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(3, 'Items Create', 'items_create', 'sanctum', 'items/create', 2, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(4, 'Items Edit', 'items_edit', 'sanctum', 'items/edit', 2, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(5, 'Items Delete', 'items_delete', 'sanctum', 'items/delete', 2, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(6, 'Items Show', 'items_show', 'sanctum', 'items/show', 2, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(7, 'Dining Tables', 'dining-tables', 'sanctum', 'dining-tables', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(8, 'Dining Tables Create', 'dining_tables_create', 'sanctum', 'dining-table/create', 7, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(9, 'Dining Tables Edit', 'dining_tables_edit', 'sanctum', 'dining-table/edit', 7, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(10, 'Dining Tables Delete', 'dining_tables_delete', 'sanctum', 'dining-tables/delete', 7, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(11, 'Dining Tables Show', 'dining_tables_show', 'sanctum', 'dining-tables/show', 7, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(12, 'POS', 'pos', 'sanctum', 'pos', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(13, 'POS Orders', 'pos-orders', 'sanctum', 'pos-orders', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(14, 'Online Orders', 'online-orders', 'sanctum', 'online-orders', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(15, 'Table Orders', 'table-orders', 'sanctum', 'table-orders', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(16, 'Coupons', 'coupons', 'sanctum', 'coupons', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(17, 'Coupons Create', 'coupons_create', 'sanctum', 'coupons/create', 16, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(18, 'Coupons Edit', 'coupons_edit', 'sanctum', 'coupons/edit', 16, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(19, 'Coupons Delete', 'coupons_delete', 'sanctum', 'coupons/delete', 16, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(20, 'Coupons Show', 'coupons_show', 'sanctum', 'coupons/show', 16, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(21, 'Offers', 'offers', 'sanctum', 'offers', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(22, 'Offers Create', 'offers_create', 'sanctum', 'offers/create', 21, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(23, 'Offers Edit', 'offers_edit', 'sanctum', 'offers/edit', 21, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(24, 'Offers Delete', 'offers_delete', 'sanctum', 'offers/delete', 21, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(25, 'Offers Show', 'offers_show', 'sanctum', 'offers/show', 21, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(26, 'Push Notifications', 'push-notifications', 'sanctum', 'push-notifications', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(27, 'Push Notifications Create', 'push-notifications_create', 'sanctum', 'push-notifications/create', 26, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(28, 'Push Notifications Edit', 'push-notifications_edit', 'sanctum', 'push-notifications/edit', 26, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(29, 'Push Notifications Delete', 'push-notifications_delete', 'sanctum', 'push-notifications/delete', 26, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(30, 'Push Notifications Show', 'push-notifications_show', 'sanctum', 'push-notifications/show', 26, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(31, 'Messages', 'messages', 'sanctum', 'messages', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(32, 'Subscribers', 'subscribers', 'sanctum', 'subscribers', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(33, 'Administrators', 'administrators', 'sanctum', 'administrators', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(34, 'Administrators Create', 'administrators_create', 'sanctum', 'administrators/create', 33, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(35, 'Administrators Edit', 'administrators_edit', 'sanctum', 'administrators/edit', 33, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(36, 'Administrators Delete', 'administrators_delete', 'sanctum', 'administrators/delete', 33, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(37, 'Administrators Show', 'administrators_show', 'sanctum', 'administrators/show', 33, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(38, 'Delivery Boys', 'delivery-boys', 'sanctum', 'delivery-boys', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(39, 'Delivery Boys Create', 'delivery-boys_create', 'sanctum', 'delivery-boys/create', 38, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(40, 'Delivery Boys Edit', 'delivery-boys_edit', 'sanctum', 'delivery-boys/edit', 38, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(41, 'Delivery Boys Delete', 'delivery-boys_delete', 'sanctum', 'delivery-boys/delete', 38, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(42, 'Delivery Boys Show', 'delivery-boys_show', 'sanctum', 'delivery-boys/show', 38, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(43, 'Customers', 'customers', 'sanctum', 'customers', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(44, 'Customers Create', 'customers_create', 'sanctum', 'customers/create', 43, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(45, 'Customers Edit', 'customers_edit', 'sanctum', 'customers/edit', 43, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(46, 'Customers Delete', 'customers_delete', 'sanctum', 'customers/delete', 43, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(47, 'Customers Show', 'customers_show', 'sanctum', 'customers/show', 43, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(48, 'Employees', 'employees', 'sanctum', 'employees', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(49, 'Employees Create', 'employees_create', 'sanctum', 'employees/create', 48, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(50, 'Employees Edit', 'employees_edit', 'sanctum', 'employees/edit', 48, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(51, 'Employees Delete', 'employees_delete', 'sanctum', 'employees/delete', 48, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(52, 'Employees Show', 'employees_show', 'sanctum', 'employees/show', 48, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(53, 'Transactions', 'transactions', 'sanctum', 'transactions', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(54, 'Sales Report', 'sales-report', 'sanctum', 'sales-report', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(55, 'Items Report', 'items-report', 'sanctum', 'items-report', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(56, 'Credit Balance Report', 'credit-balance-report', 'sanctum', 'credit-balance-report', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(57, 'Settings', 'settings', 'sanctum', 'settings', 0, '2024-04-25 08:22:31', '2024-04-25 08:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '3a34f0e42a2ca327753af11aa0cf3476aa004efaa39c57c34407cd3fcd40004f', '[\"*\"]', '2024-04-27 18:03:50', NULL, '2024-04-25 08:23:06', '2024-04-27 18:03:50'),
(2, 'App\\Models\\User', 1, 'auth_token', '1933e376fee8ef7a5872f572dcb51ffac4bf2ce1aaee24ee4436bddde72a5ed0', '[\"*\"]', '2024-04-25 15:51:12', NULL, '2024-04-25 15:43:43', '2024-04-25 15:51:12'),
(3, 'App\\Models\\User', 1, 'auth_token', '35c4926fac31fac5dd3173d1efff8c02bfb0c376b4be585a03b7f8795ed325f4', '[\"*\"]', '2024-04-27 20:22:17', NULL, '2024-04-27 18:06:12', '2024-04-27 20:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'sanctum', '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(2, 'Customer', 'sanctum', '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(3, 'Delivery Boy', 'sanctum', '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(4, 'Waiter', 'sanctum', '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(5, 'Chef', 'sanctum', '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(6, 'Branch Manager', 'sanctum', '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(7, 'POS Operator', 'sanctum', '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(8, 'Stuff', 'sanctum', '2024-04-25 08:22:31', '2024-04-25 08:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(1, 6),
(7, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(1, 7),
(12, 7),
(13, 7);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` json NOT NULL,
  `settingable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settingable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `group`, `key`, `payload`, `settingable_type`, `settingable_id`, `created_at`, `updated_at`) VALUES
(1, 'company', 'company_name', '{\"$cast\": null, \"$value\": \"Suruchi Restaurant\"}', NULL, NULL, '2024-04-25 08:27:38', '2024-04-25 08:27:38'),
(2, 'company', 'company_email', '{\"$cast\": null, \"$value\": \"suruchirestaurant9210@gmail.com\"}', NULL, NULL, '2024-04-25 08:27:38', '2024-04-25 08:27:38'),
(3, 'company', 'company_phone', '{\"$cast\": null, \"$value\": \"+8801615642306\"}', NULL, NULL, '2024-04-25 08:27:38', '2024-04-25 08:27:38'),
(4, 'company', 'company_website', '{\"$cast\": null, \"$value\": \"https://food.golpocom.com\"}', NULL, NULL, '2024-04-25 08:27:38', '2024-04-25 08:27:38'),
(5, 'company', 'company_city', '{\"$cast\": null, \"$value\": \"Tangail\"}', NULL, NULL, '2024-04-25 08:27:38', '2024-04-25 08:27:38'),
(6, 'company', 'company_state', '{\"$cast\": null, \"$value\": \"Dhaka\"}', NULL, NULL, '2024-04-25 08:27:38', '2024-04-25 08:27:38'),
(7, 'company', 'company_country_code', '{\"$cast\": null, \"$value\": \"BGD\"}', NULL, NULL, '2024-04-25 08:27:38', '2024-04-25 08:27:38'),
(8, 'company', 'company_zip_code', '{\"$cast\": null, \"$value\": \"1900\"}', NULL, NULL, '2024-04-25 08:27:38', '2024-04-25 08:27:38'),
(9, 'company', 'company_address', '{\"$cast\": null, \"$value\": \"Dream Touch APartment, Ground Floor, Old Bus Terminal\"}', NULL, NULL, '2024-04-25 08:27:38', '2024-04-25 08:27:38'),
(10, 'site', 'site_date_format', '{\"$cast\": null, \"$value\": \"d-m-Y\"}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(11, 'site', 'site_time_format', '{\"$cast\": null, \"$value\": \"h:i A\"}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(12, 'site', 'site_default_timezone', '{\"$cast\": null, \"$value\": \"Asia/Dhaka\"}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(13, 'site', 'site_default_branch', '{\"$cast\": null, \"$value\": 1}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(14, 'site', 'site_default_currency', '{\"$cast\": null, \"$value\": 1}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(15, 'site', 'site_default_currency_symbol', '{\"$cast\": null, \"$value\": \"৳\"}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(16, 'site', 'site_currency_position', '{\"$cast\": null, \"$value\": 5}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(17, 'site', 'site_digit_after_decimal_point', '{\"$cast\": null, \"$value\": \"2\"}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(18, 'site', 'site_email_verification', '{\"$cast\": null, \"$value\": 5}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(19, 'site', 'site_phone_verification', '{\"$cast\": null, \"$value\": 10}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(20, 'site', 'site_default_language', '{\"$cast\": null, \"$value\": 1}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(21, 'site', 'site_google_map_key', '{\"$cast\": null, \"$value\": \"AIzaSyAOVYRIgupAurZup5y1PRh8Ismb1A3lLao\"}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(22, 'site', 'site_android_app_link', '{\"$cast\": null, \"$value\": null}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(23, 'site', 'site_ios_app_link', '{\"$cast\": null, \"$value\": null}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(24, 'site', 'site_copyright', '{\"$cast\": null, \"$value\": \"Copyright ©️ All Reserved. Suruchi. 2024\"}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(25, 'site', 'site_language_switch', '{\"$cast\": null, \"$value\": 5}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(26, 'site', 'site_app_debug', '{\"$cast\": null, \"$value\": 10}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(27, 'site', 'site_auto_update', '{\"$cast\": null, \"$value\": 10}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(28, 'site', 'site_online_payment_gateway', '{\"$cast\": null, \"$value\": 10}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(29, 'site', 'site_default_sms_gateway', '{\"$cast\": null, \"$value\": null}', NULL, NULL, '2024-04-25 09:44:34', '2024-04-25 09:44:34'),
(30, 'mail', 'mail_mailer', '{\"$cast\": null, \"$value\": \"smtp\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(31, 'mail', 'mail_host', '{\"$cast\": null, \"$value\": \"food.golpocom.com\"}', NULL, NULL, '2024-04-27 09:50:12', '2024-04-27 09:50:12'),
(32, 'mail', 'mail_port', '{\"$cast\": null, \"$value\": \"465\"}', NULL, NULL, '2024-04-27 09:50:12', '2024-04-27 09:50:12'),
(33, 'mail', 'mail_username', '{\"$cast\": null, \"$value\": \"info@food.golpocom.com\"}', NULL, NULL, '2024-04-27 09:50:12', '2024-04-27 09:50:12'),
(34, 'mail', 'mail_password', '{\"$cast\": null, \"$value\": \"Asdqwe123!@#\"}', NULL, NULL, '2024-04-27 09:50:12', '2024-04-27 09:50:12'),
(35, 'mail', 'mail_encryption', '{\"$cast\": null, \"$value\": \"ssl\"}', NULL, NULL, '2024-04-27 09:50:12', '2024-04-27 09:50:12'),
(36, 'mail', 'mail_from_name', '{\"$cast\": null, \"$value\": \"Suruchi Restaurant\"}', NULL, NULL, '2024-04-27 09:50:12', '2024-04-27 09:50:12'),
(37, 'mail', 'mail_from_email', '{\"$cast\": null, \"$value\": \"info@food.golpocom.com\"}', NULL, NULL, '2024-04-27 09:50:12', '2024-04-27 09:50:12'),
(38, 'order_setup', 'order_setup_food_preparation_time', '{\"$cast\": null, \"$value\": \"30\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(39, 'order_setup', 'order_setup_schedule_order_slot_duration', '{\"$cast\": null, \"$value\": \"30\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(40, 'order_setup', 'order_setup_takeaway', '{\"$cast\": null, \"$value\": 5}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(41, 'order_setup', 'order_setup_delivery', '{\"$cast\": null, \"$value\": 5}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(42, 'order_setup', 'order_setup_free_delivery_kilometer', '{\"$cast\": null, \"$value\": \"2\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(43, 'order_setup', 'order_setup_basic_delivery_charge', '{\"$cast\": null, \"$value\": \"1\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(44, 'order_setup', 'order_setup_charge_per_kilo', '{\"$cast\": null, \"$value\": \"1\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(45, 'otp', 'otp_type', '{\"$cast\": null, \"$value\": \"5\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(46, 'otp', 'otp_digit_limit', '{\"$cast\": null, \"$value\": \"4\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(47, 'otp', 'otp_expire_time', '{\"$cast\": null, \"$value\": \"10\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(48, 'notification', 'notification_fcm_secret_key', '{\"$cast\": null, \"$value\": \"\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(49, 'notification', 'notification_fcm_public_vapid_key', '{\"$cast\": null, \"$value\": \"\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(50, 'notification', 'notification_fcm_api_key', '{\"$cast\": null, \"$value\": \"\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(51, 'notification', 'notification_fcm_auth_domain', '{\"$cast\": null, \"$value\": \"\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(52, 'notification', 'notification_fcm_project_id', '{\"$cast\": null, \"$value\": \"\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(53, 'notification', 'notification_fcm_storage_bucket', '{\"$cast\": null, \"$value\": \"\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(54, 'notification', 'notification_fcm_messaging_sender_id', '{\"$cast\": null, \"$value\": \"\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(55, 'notification', 'notification_fcm_app_id', '{\"$cast\": null, \"$value\": \"\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(56, 'notification', 'notification_fcm_measurement_id', '{\"$cast\": null, \"$value\": \"\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(57, 'cookies', 'cookies_details_page_id', '{\"$cast\": null, \"$value\": null}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(58, 'cookies', 'cookies_summary', '{\"$cast\": null, \"$value\": \"\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(59, 'theme', 'theme_logo', '{\"$cast\": null, \"$value\": {}}', NULL, NULL, '2024-04-25 08:36:05', '2024-04-25 08:36:05'),
(60, 'theme', 'theme_favicon_logo', '{\"$cast\": null, \"$value\": {}}', NULL, NULL, '2024-04-25 08:36:05', '2024-04-25 08:36:05'),
(61, 'theme', 'theme_footer_logo', '{\"$cast\": null, \"$value\": {}}', NULL, NULL, '2024-04-25 09:10:22', '2024-04-25 09:10:22'),
(62, 'license', 'license_key', '{\"$cast\": null, \"$value\": \"123456\"}', NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32'),
(63, 'social_media', 'social_media_facebook', '{\"$cast\": null, \"$value\": \"https://www.facebook.com/SuruchiRestaurant.fb\"}', NULL, NULL, '2024-04-25 09:53:00', '2024-04-25 09:53:00'),
(64, 'social_media', 'social_media_youtube', '{\"$cast\": null, \"$value\": null}', NULL, NULL, '2024-04-25 09:53:00', '2024-04-25 09:53:00'),
(65, 'social_media', 'social_media_instagram', '{\"$cast\": null, \"$value\": \"https://www.instagram.com/suruchi.restaurant/\"}', NULL, NULL, '2024-04-25 09:53:00', '2024-04-25 09:53:00'),
(66, 'social_media', 'social_media_twitter', '{\"$cast\": null, \"$value\": \"https://twitter.com/SuruchiRestaurant.tw\"}', NULL, NULL, '2024-04-25 09:53:00', '2024-04-25 09:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'Restaurant · Café', NULL, 5, NULL, NULL, NULL, NULL, '2024-04-25 09:56:51', '2024-04-25 09:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `misc` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `name`, `slug`, `misc`, `status`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'Twilio', 'twilio', 'null', 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(2, 'Clickatell', 'clickatell', 'null', 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(3, 'Nexmo', 'nexmo', 'null', 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(4, 'Msg91', 'msg91', 'null', 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(5, '2Factor', 'twofactor', 'null', 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(6, 'Bulksms', 'bulksms', 'null', 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(7, 'Bulksmsbd', 'bulksmsbd', 'null', 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31'),
(8, 'Telesign', 'telesign', 'null', 5, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` decimal(13,6) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `code`, `tax_rate`, `type`, `status`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 'VAT', 15.000000, 10, 10, NULL, NULL, NULL, NULL, '2024-04-27 09:53:36', '2024-04-27 09:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `opening_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` tinyint(4) NOT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sign` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+',
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(13,6) NOT NULL DEFAULT '0.000000',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'payment',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT '0',
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint(3) UNSIGNED NOT NULL DEFAULT '10',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '5' COMMENT '5=Active, 10=Inactive',
  `balance` decimal(13,6) NOT NULL DEFAULT '0.000000',
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `editor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `username`, `email_verified_at`, `password`, `device_token`, `web_token`, `branch_id`, `country_code`, `is_guest`, `status`, `balance`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Shah Baizid Arefin', 'razen.jazzy@gmail.com', '1787671962', 'admin', '2024-04-25 08:22:31', '$2y$10$quPXGKTBttKSl3HIyhrSlu/Nv87SXi9U2lJa/Q9aNaHtf8PsGQkj2', NULL, NULL, 0, '+880', 10, 5, 0.000000, NULL, NULL, NULL, NULL, NULL, '2024-04-25 08:22:31', '2024-04-25 08:40:22', NULL),
(2, 'Walking Customer', 'walkingcustomer@example.com', '125444455', 'default-customer', '2024-04-25 08:22:31', '$2y$10$xQE0Qo8wcVvCrgkD2IGL5.KUl5pNzYrT1tHKlwY9U382VxLaujY/y', NULL, NULL, 0, '+880', 10, 5, 0.000000, NULL, NULL, NULL, NULL, NULL, '2024-04-25 08:22:32', '2024-04-25 08:22:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analytic_sections`
--
ALTER TABLE `analytic_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `analytic_sections_analytic_id_foreign` (`analytic_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_access`
--
ALTER TABLE `default_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dining_tables`
--
ALTER TABLE `dining_tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dining_tables_slug_unique` (`slug`),
  ADD KEY `dining_tables_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gateway_options`
--
ALTER TABLE `gateway_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_item_category_id_foreign` (`item_category_id`),
  ADD KEY `items_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `item_addons`
--
ALTER TABLE `item_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_addons_item_id_foreign` (`item_id`),
  ADD KEY `item_addons_addon_item_id_foreign` (`addon_item_id`);

--
-- Indexes for table `item_attributes`
--
ALTER TABLE `item_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_extras`
--
ALTER TABLE `item_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_extras_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_variations`
--
ALTER TABLE `item_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_variations_item_id_foreign` (`item_id`),
  ADD KEY `item_variations_item_attribute_id_foreign` (`item_attribute_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_sections`
--
ALTER TABLE `menu_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_templates`
--
ALTER TABLE `menu_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `message_histories`
--
ALTER TABLE `message_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_histories_message_id_foreign` (`message_id`),
  ADD KEY `message_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_alerts`
--
ALTER TABLE `notification_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_items`
--
ALTER TABLE `offer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offer_items_offer_id_foreign` (`offer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_addresses_order_id_foreign` (`order_id`),
  ADD KEY `order_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_coupons`
--
ALTER TABLE `order_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_coupons_order_id_foreign` (`order_id`),
  ADD KEY `order_coupons_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_branch_id_foreign` (`branch_id`),
  ADD KEY `order_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD KEY `otps_phone_index` (`phone`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_menu_section_id_foreign` (`menu_section_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_settingable_type_settingable_id_index` (`settingable_type`,`settingable_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `analytic_sections`
--
ALTER TABLE `analytic_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `default_access`
--
ALTER TABLE `default_access`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dining_tables`
--
ALTER TABLE `dining_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateway_options`
--
ALTER TABLE `gateway_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `item_addons`
--
ALTER TABLE `item_addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_attributes`
--
ALTER TABLE `item_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `item_extras`
--
ALTER TABLE `item_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_variations`
--
ALTER TABLE `item_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `menu_sections`
--
ALTER TABLE `menu_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_templates`
--
ALTER TABLE `menu_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_histories`
--
ALTER TABLE `message_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_alerts`
--
ALTER TABLE `notification_alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer_items`
--
ALTER TABLE `offer_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_addresses`
--
ALTER TABLE `order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_coupons`
--
ALTER TABLE `order_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `analytic_sections`
--
ALTER TABLE `analytic_sections`
  ADD CONSTRAINT `analytic_sections_analytic_id_foreign` FOREIGN KEY (`analytic_id`) REFERENCES `analytics` (`id`);

--
-- Constraints for table `dining_tables`
--
ALTER TABLE `dining_tables`
  ADD CONSTRAINT `dining_tables_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `item_categories` (`id`),
  ADD CONSTRAINT `items_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`);

--
-- Constraints for table `item_addons`
--
ALTER TABLE `item_addons`
  ADD CONSTRAINT `item_addons_addon_item_id_foreign` FOREIGN KEY (`addon_item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `item_addons_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `item_extras`
--
ALTER TABLE `item_extras`
  ADD CONSTRAINT `item_extras_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `item_variations`
--
ALTER TABLE `item_variations`
  ADD CONSTRAINT `item_variations_item_attribute_id_foreign` FOREIGN KEY (`item_attribute_id`) REFERENCES `item_attributes` (`id`),
  ADD CONSTRAINT `item_variations_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `message_histories`
--
ALTER TABLE `message_histories`
  ADD CONSTRAINT `message_histories_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`),
  ADD CONSTRAINT `message_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offer_items`
--
ALTER TABLE `offer_items`
  ADD CONSTRAINT `offer_items_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD CONSTRAINT `order_addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_coupons`
--
ALTER TABLE `order_coupons`
  ADD CONSTRAINT `order_coupons_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_coupons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `order_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_menu_section_id_foreign` FOREIGN KEY (`menu_section_id`) REFERENCES `menu_sections` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
