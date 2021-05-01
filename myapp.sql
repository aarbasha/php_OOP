-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 09:09 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myapp`
--

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_Date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Value_VAT` decimal(8,2) NOT NULL,
  `Rate_VAT` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_Date`, `Due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `Discount`, `Value_VAT`, `Rate_VAT`, `Total`, `Status`, `Value_Status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(44, '369', '2021-03-24', '2021-03-28', 'tesssst', 12, '96325.00', '894752.00', '8966.00', '44289.30', '5%', '930075.30', 'Ù…Ø¯Ù�ÙˆØ¹Ø©', 1, NULL, '2021-03-24', NULL, '2021-03-24 06:30:57', '2021-03-24 09:55:18'),
(45, '160', '2021-03-24', '2021-04-28', 'tesssst', 1, '9000.00', '250000.00', '10000.00', '12000.00', '5%', '252000.00', 'ØºÙŠØ± Ù…Ø¯Ù�ÙˆØ¹Ø©', 2, 'test add in invoecs', NULL, '2021-03-24 08:36:14', '2021-03-24 08:07:35', '2021-03-24 08:36:14'),
(46, '1936', '2021-03-24', '2021-03-29', 'tesssst', 4, '9000.00', '20000.00', '5000.00', '750.00', '5%', '15750.00', 'ØºÙŠØ± Ù…Ø¯Ù�ÙˆØ¹Ø©', 2, NULL, NULL, NULL, '2021-03-24 08:08:14', '2021-03-24 08:08:14'),
(47, '1362', '2021-03-24', '2021-03-31', 'tesssst', 13, '5000.00', '90000.00', '692.00', '4465.40', '5%', '93773.40', 'ØºÙŠØ± Ù…Ø¯Ù�ÙˆØ¹Ø©', 2, NULL, NULL, NULL, '2021-03-24 08:08:48', '2021-03-24 08:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_attachments`
--

CREATE TABLE `invoices_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices_details`
--

CREATE TABLE `invoices_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Invoice` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Section` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices_details`
--

INSERT INTO `invoices_details` (`id`, `id_Invoice`, `invoice_number`, `product`, `Section`, `Status`, `Value_Status`, `Payment_Date`, `note`, `user`, `created_at`, `updated_at`) VALUES
(37, 44, '369', 'tesssst', '12', 'ØºÙŠØ± Ù…Ø¯Ù�ÙˆØ¹Ø©', 2, NULL, NULL, 'Anas Arbasha', '2021-03-24 06:30:57', '2021-03-24 06:30:57'),
(38, 44, '369', 'tesssst', '12', 'Ù…Ø¯Ù�ÙˆØ¹Ø©', 1, '2021-03-24', NULL, 'Anas Arbasha', '2021-03-24 07:03:33', '2021-03-24 07:03:33'),
(39, 45, '160', 'tesssst', '1', 'ØºÙŠØ± Ù…Ø¯Ù�ÙˆØ¹Ø©', 2, NULL, 'test add in invoecs', 'Anas Arbasha', '2021-03-24 08:07:35', '2021-03-24 08:07:35'),
(40, 46, '1936', 'tesssst', '4', 'ØºÙŠØ± Ù…Ø¯Ù�ÙˆØ¹Ø©', 2, NULL, NULL, 'Anas Arbasha', '2021-03-24 08:08:14', '2021-03-24 08:08:14'),
(41, 47, '1362', 'tesssst', '13', 'ØºÙŠØ± Ù…Ø¯Ù�ÙˆØ¹Ø©', 2, NULL, NULL, 'Anas Arbasha', '2021-03-24 08:08:48', '2021-03-24 08:08:48');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_19_000706_create_sections_table', 1),
(5, '2021_03_20_160229_create_products_table', 1),
(6, '2021_03_20_211257_create_invoices_table', 1),
(7, '2021_03_21_175806_create_invoices_details_table', 1),
(8, '2021_03_21_181855_create_invoices_attachments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Product_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Product_name`, `discription`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'Ø§Ù„Ù…Ù†ØªØ¬ 1', 'ØªÙ…Øª Ø§Ù„Ø§Ø¶Ø§Ù�Ø© Ù…Ù† Ø§Ù„Ù…Ù†ØªØ¬ 1', 1, '2021-03-21 17:13:00', '2021-03-21 17:13:00'),
(2, 'Ø§Ù„Ù…Ù†ØªØ¬ Ø±Ù‚Ù… 7', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 2', 2, '2021-03-21 20:46:42', '2021-03-22 09:10:23'),
(3, 'Ø§Ù„Ù…Ù†ØªØ¬ Ø±Ù‚Ù… 5', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 3', 2, '2021-03-21 20:47:04', '2021-03-22 09:10:36'),
(4, 'ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 88', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 88', 5, '2021-03-21 20:47:22', '2021-03-21 20:47:22'),
(5, 'Ø³ÙˆØ±ÙŠØ§ Ø§Ù„Ø®Ø¯ÙŠØ«Ø©', 'ØªÙ… Ø§Ù„Ø§Ø¶Ø§Ù�Ø© Ø¨ØªØ§Ø±ÙŠØ® 22/3/2021', 13, '2021-03-22 09:09:58', '2021-03-22 09:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `discription`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Ø§Ù„Ø¨Ù†Ùƒ Ø§Ù„Ø³ÙˆØ±ÙŠ ÙˆØ§Ù„Ø§Ù…Ø±ÙŠÙƒÙŠ', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ Ø³ÙˆØ±ÙŠØ§ Ø§Ù„Ù…ØªØ­Ø¯Ø©', 'Anas Arbasha', '2021-03-21 17:12:31', '2021-03-22 16:08:29'),
(2, 'Ø¨Ù†Ùƒ Ø¨ÙŠÙ†Ùˆ Ø§Ù„Ø³Ø¹ÙˆØ¯ÙŠ Ø§Ù„Ù�Ø±Ù†Ø³ÙŠ', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ Ø³ÙˆØ±ÙŠØ§ ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 1', 'Anas Arbasha', '2021-03-21 20:44:27', '2021-03-21 20:44:27'),
(3, 'Ø¨Ù†Ùƒ Ø¹ÙˆØ¯Ø©', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ Ø³ÙˆØ±ÙŠØ§ ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 2', 'Anas Arbasha', '2021-03-21 20:44:40', '2021-03-21 20:44:40'),
(4, 'Ø¨Ù†Ùƒ Ø§Ù„Ø¨Ø±ÙƒØ©', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ Ø³ÙˆØ±ÙŠØ§ ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 3', 'Anas Arbasha', '2021-03-21 20:44:52', '2021-03-21 20:44:52'),
(5, 'Ø§Ù„Ø¨Ù†Ùƒ Ø§Ù„Ø§Ø³Ù„Ø§Ù…ÙŠ', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ Ø³ÙˆØ±ÙŠØ§ ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 5', 'Anas Arbasha', '2021-03-21 20:45:08', '2021-03-21 20:45:08'),
(6, 'Ø¨Ù†Ùƒ Ø³ÙˆØ±ÙŠØ§ ÙˆØ§Ù„Ø®Ù„ÙŠØ¬', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ Ø³ÙˆØ±ÙŠØ§ ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 6', 'Anas Arbasha', '2021-03-21 20:45:23', '2021-03-21 20:45:23'),
(7, 'Ø§Ù„Ø¨Ù†Ùƒ Ø§Ù„Ù�Ø±Ù†Ø³ÙŠ', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ Ø³ÙˆØ±ÙŠØ§ ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 7', 'Anas Arbasha', '2021-03-21 20:45:37', '2021-03-21 20:45:37'),
(8, 'Ø§Ù„Ø¨Ù†Ùƒ Ø§Ù„Ø¯ÙˆÙ„ÙŠ', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ Ø³ÙˆØ±ÙŠØ§ ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 8', 'Anas Arbasha', '2021-03-21 20:45:56', '2021-03-21 20:45:56'),
(9, 'Ø§Ù„Ø´Ø±ÙƒØ© Ø§Ù„Ø³ÙˆØ±ÙŠØ© Ø§Ù„Ù‚Ø§Ø¨Ø¶Ø©', 'ØªØ¬Ù„Ø±Ø¨Ø© Ø±Ù‚Ù… 88', 'Anas Arbasha', '2021-03-22 09:05:49', '2021-03-22 09:05:49'),
(10, 'Ø§Ù„Ø´Ø±ÙƒØ© Ø§Ù„Ø³ÙˆØ±ÙŠØ© Ù„Ø¯Ø¹Ø§ÙŠØ© ÙˆØ§Ù„Ø§Ø¹Ù„Ø§Ù†', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù�ÙŠ Ø³ÙˆØ±ÙŠØ§ Ø§Ù„Ø®Ø¯ÙŠØ«Ø© ØªØ¬Ø±Ø¨Ø© Ø±Ù‚Ù… 89', 'Anas Arbasha', '2021-03-22 09:06:42', '2021-03-22 09:06:42'),
(11, 'Ù…Ø±ÙƒØ² Ø¯Ù…Ø´Ù‚ Ù„Ù„Ø³ØªÙŠØ±Ø§Ø¯ ÙˆØ§Ù„ØªØµØ¯ÙŠØ±', 'Ù…Ø±Ø­Ø¨Ø§ Ø¨ÙƒÙ… Ù†Ø¯Ø¹ ÙƒÙ„ Ø§Ù†ÙˆØ§Ø¹ Ø§Ù„Ø´Ø­Ù† Ø§Ù„Ù‰ Ø¬Ù…ÙŠØ¹ Ø§Ù†Ø­Ø§Ø¡ Ø§Ù„Ø¹Ø§Ù„Ù…', 'Anas Arbasha', '2021-03-22 09:07:31', '2021-03-22 09:07:31'),
(12, 'Ø§Ù„Ø´Ø±ÙƒØ© Ø§Ù„ØªÙ‚Ù†ÙŠØ© Ù„Ù„Ù…Ø¹Ù‚Ù…Ø§Øª', 'Ù…Ø¨ÙŠØ¹ Ø¬Ù…ÙŠØ¹ Ø§Ù†ÙˆØ§Ø¹ Ø§Ù„Ù…Ø¹Ù‚Ù…Ø§Øª', 'Anas Arbasha', '2021-03-22 09:08:15', '2021-03-22 09:08:15'),
(13, 'Ø§Ù„Ø´Ø±ÙƒØ© Ø§Ù„Ø³ÙˆØ±ÙŠØ© Ù„Ø·ÙŠØ±Ø§Ù†', 'Ø±Ø­Ù„Ø§Øª ÙŠÙˆÙ…ÙŠØ© Ø§Ù„Ù‰ Ø¬Ù…ÙŠØ¹ Ø§Ù†Ø­Ø§Ø¡ Ø§Ù„Ø¹Ø§Ù„Ù…', 'Anas Arbasha', '2021-03-22 09:09:04', '2021-03-22 09:09:04'),
(14, 'Ø§Ù„Ø´Ø±ÙƒØ© Ø§Ù„Ø¹Ø§Ù… Ù„Ù„Ø­ÙˆØ§Ù„Ø§Øª Ø§Ù„Ù…Ø§Ù„ÙŠØ©', 'ØªØ¬Ø±Ø¨Ø© Ø§Ø¶Ø§Ù�Ø© Ø§Ø¯Ù…Ù† Ø§Ø®Ø±', 'Ahmad', '2021-03-23 19:52:30', '2021-03-23 19:52:30');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anas Arbasha', 'anas@admin.sy', NULL, '$2y$10$Olz8YRZXUvghFAT4aXQC7O4Csh04wEc59PXUjNhlnMT/Qq6/IChM6', '9hWZs8Eq4lkh17j33Qm7TeqrH459GLoREkObS8e7aQ7UWDC1cN5Q4NcQAhCG', '2021-03-21 16:48:30', '2021-03-21 16:48:30'),
(2, 'Ahmad', 'ahmad@admin.sy', NULL, '$2y$10$SDoQnXXyfOQweUEiZNVQJu1IanzdpZxGCyl2BmsrPF7tnbcz84QvW', NULL, '2021-03-23 19:51:40', '2021-03-23 19:51:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`);

--
-- Indexes for table `invoices_attachments`
--
ALTER TABLE `invoices_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_attachments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_details_id_invoice_foreign` (`id_Invoice`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `invoices_attachments`
--
ALTER TABLE `invoices_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `invoices_details`
--
ALTER TABLE `invoices_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices_attachments`
--
ALTER TABLE `invoices_attachments`
  ADD CONSTRAINT `invoices_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD CONSTRAINT `invoices_details_id_invoice_foreign` FOREIGN KEY (`id_Invoice`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;