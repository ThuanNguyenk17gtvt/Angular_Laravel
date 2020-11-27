-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2020 at 07:02 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tttn`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `created_at`, `updated_at`) VALUES
(2, 'Samsung', '2020-10-04 08:37:09', '2020-10-05 07:36:06'),
(3, 'Iphone', '2020-10-04 08:37:12', '2020-10-04 08:37:12'),
(4, 'Xiaomi', '2020-10-04 09:53:06', '2020-10-04 09:53:06'),
(5, 'Sony', '2020-10-05 23:41:46', '2020-10-05 23:41:46'),
(10, 'Oppo', '2020-10-15 00:39:22', '2020-10-15 00:39:22'),
(16, 'LG', '2020-10-20 08:14:07', '2020-10-20 08:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliverybill`
--

CREATE TABLE `deliverybill` (
  `deliverybill_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `date` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detaildeliverybill`
--

CREATE TABLE `detaildeliverybill` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `deliverybillid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `wh_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `wh_id`, `amount`, `created_at`, `updated_at`) VALUES
(29, 'K01', 26, '2020-11-12 04:13:28', '2020-11-12 16:08:16'),
(30, 'K01', 21, '2020-11-12 04:15:57', '2020-11-12 16:08:12'),
(31, 'K01', 20, '2020-11-13 04:55:00', '2020-11-13 04:55:00'),
(32, 'K02', 30, '2020-11-13 04:55:29', '2020-11-13 04:55:29'),
(33, 'K02', 20, '2020-11-13 04:56:13', '2020-11-13 04:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `maxacnhan`
--

CREATE TABLE `maxacnhan` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maxacnhan`
--

INSERT INTO `maxacnhan` (`id`, `id_user`, `code`, `start`, `end`, `created_at`, `updated_at`) VALUES
(31, 1, '54919896', '2020-10-21 13:50:14', '2020-10-21 13:52:14', '2020-10-21 06:50:14', '2020-10-21 06:50:14');

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
(35, '2014_10_12_000000_create_users_table', 1),
(36, '2014_10_12_100000_create_password_resets_table', 1),
(37, '2019_08_19_000000_create_failed_jobs_table', 1),
(38, '2020_09_26_131239_create_products_table', 2),
(39, '2020_09_29_054857_categories', 2),
(40, '2020_10_06_160305_user', 3),
(41, '2020_10_11_130630_create_orders_table', 4),
(43, '2020_10_14_024904_maxacnhan', 5),
(45, '2020_10_14_173003_create_table_wrong', 6),
(46, '2020_10_15_063510_create-orderitems', 7),
(47, '2020_10_15_101357_create-comments', 8),
(48, '2020_10_17_092633_create-rating-table', 9),
(49, '2020_11_01_203444_promotion', 10),
(50, '2020_11_03_210057_warehouse', 10),
(51, '2020_11_04_105542_supplier', 10),
(52, '2020_11_05_134008_oder_warehouse', 10),
(53, '2020_11_05_134130_oderitem_warehouse', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orderitemwarehouse`
--

CREATE TABLE `orderitemwarehouse` (
  `id_item` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `name_item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_item` int(11) NOT NULL,
  `cost_item` double NOT NULL,
  `price_item` double NOT NULL,
  `orderWh_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderitemwarehouse`
--

INSERT INTO `orderitemwarehouse` (`id_item`, `product_id`, `name_item`, `unit_item`, `amount_item`, `cost_item`, `price_item`, `orderWh_id`, `created_at`, `updated_at`) VALUES
(7, 17, 'Samsung S10', 'cái', 10, 9500000, 95000000, 4, '2020-11-13 04:53:16', '2020-11-13 04:53:16'),
(8, 23, 'Samsung S7', 'cái', 5, 9500000, 47500000, 4, '2020-11-13 04:53:16', '2020-11-13 04:53:16'),
(9, 17, 'Samsung S10', 'cái', 10, 9500000, 95000000, 5, '2020-11-13 14:32:54', '2020-11-13 14:32:54'),
(10, 23, 'Samsung S7', 'cái', 5, 9500000, 47500000, 5, '2020-11-13 14:32:54', '2020-11-13 14:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ready` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderwarehouse`
--

CREATE TABLE `orderwarehouse` (
  `orderWh_id` int(10) UNSIGNED NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double NOT NULL,
  `money` double NOT NULL,
  `debt` double NOT NULL,
  `time` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderwarehouse`
--

INSERT INTO `orderwarehouse` (`orderWh_id`, `user`, `warehouse_id`, `status`, `cost`, `money`, `debt`, `time`, `created_at`, `updated_at`) VALUES
(4, '28', '1', '1', 142500000, 100000000, 42500000, '2020-11-27', '2020-11-13 04:53:16', '2020-11-13 04:53:59'),
(5, '28', '2', '4', 142500000, 50000000, 92500000, '2020-11-26', '2020-11-13 14:32:54', '2020-11-13 14:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_amount` int(11) NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(255) NOT NULL DEFAULT 0,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `product_warranty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Không',
  `product_accessories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Không',
  `product_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_promotion` int(11) DEFAULT 0,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_featured` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_amount` int(10) NOT NULL,
  `product_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_img`, `product_warranty`, `product_accessories`, `product_condition`, `product_promotion`, `product_description`, `product_featured`, `product_amount`, `product_cate`, `created_at`, `updated_at`) VALUES
(31, 'SamSung A71', 5200000, 'http://localhost:8000/storage/prodimages/samsung-galaxy-a71-195420-105424-600x600.jpg', '12', 'Tai nghe, sạc dự phòng', 'Tốt', 1, '<p>Hàng mới</p>', '1', 10, 2, '2020-11-13 07:11:10', '2020-11-13 07:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `productwh`
--

CREATE TABLE `productwh` (
  `prod_id` int(11) NOT NULL,
  `prod_name` text COLLATE utf8_unicode_ci NOT NULL,
  `unit` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `prod_price` double NOT NULL,
  `wh_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cate_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productwh`
--

INSERT INTO `productwh` (`prod_id`, `prod_name`, `unit`, `price`, `prod_price`, `wh_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(31, 'SamSung A71', 'cái', 5000000, 5200000, 'K01', 2, '2020-11-13 04:55:00', '2020-11-13 04:55:00'),
(32, 'Iphone 8', 'cái', 6000000, 6200000, 'K02', 3, '2020-11-13 04:55:29', '2020-11-13 04:55:29'),
(33, 'Iphone 7', 'cái', 5000000, 5200000, 'K02', 3, '2020-11-13 04:56:13', '2020-11-13 04:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `promotion_id` int(10) UNSIGNED NOT NULL,
  `promotion_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `promotion_infor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`promotion_id`, `promotion_name`, `start_date`, `end_date`, `promotion_infor`, `promotion_status`, `created_at`, `updated_at`) VALUES
(1, 'Khuyến mãi giảm giá 10 %', '2020-11-09', '2020-11-28', '10', '1', '2020-11-08 06:30:43', '2020-11-08 06:31:28'),
(2, 'Khuyến mãi giảm giá 5 %', '2020-11-09', '2020-12-11', '5', '1', '2020-11-08 06:31:20', '2020-11-08 06:33:51'),
(3, 'Khuyến mãi giảm giá 1 %', '2020-11-09', '2020-11-19', '1', '1', '2020-11-08 06:34:10', '2020-11-10 04:06:55'),
(4, 'Khuyến mãi giảm giá 15 %', '2020-11-11', '2020-11-25', '15', '1', '2020-11-10 03:47:38', '2020-11-10 03:48:01'),
(5, 'Khuyến mãi giảm giá 20 %', '2020-11-18', '2020-12-11', '20', '1', '2020-11-10 03:48:20', '2020-11-10 03:48:23'),
(6, 'Khuyến mãi giảm giá 30 %', '2020-11-11', '2020-12-12', '30', '1', '2020-11-10 03:48:51', '2020-11-10 03:48:55'),
(7, 'Khuyến mãi giảm giá 25 %', '2020-11-11', '2020-11-26', '25', '1', '2020-11-11 14:07:55', '2020-11-11 14:07:55'),
(8, 'Khuyến mãi giảm giá 40 %', '2020-11-13', '2020-12-11', '40', '1', '2020-11-13 13:30:57', '2020-11-13 13:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `rating_star` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_phone`, `supplier_email`, `created_at`, `updated_at`) VALUES
(1, 'Công ty A', 'Quận 2 Sài gòn', '96506822', 'ntuan9870@gmail.com', '2020-11-08 06:37:01', '2020-11-08 06:37:01'),
(2, 'Công ty B', 'Quận 1 Sài gòn', '965068346', 'thuannguyen12b@gmail.com', '2020-11-08 06:37:23', '2020-11-08 06:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_level` int(11) NOT NULL DEFAULT 3,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_email`, `user_phone`, `user_level`, `created_at`, `updated_at`) VALUES
(1, 'nguyentuan', 'eyJpdiI6IklGZmRGQzU4UnhKZHk1UDFHVzVQUGc9PSIsInZhbHVlIjoiM3lXVTdnQldVVDR6UjdrY29ZT1FRQT09IiwibWFjIjoiNTIzY2E3ZWZiZDM5MDQ3OTIwZmU0ODdhMTcxYzZhNjJkMDk0OTQ3ZGNkMGQ0ZTRmOGJkYjM0ODNkMmJkMGEwNCJ9', 'ntuan9870@gmail.com', '12345678', 1, '2020-10-06 09:21:02', '2020-10-21 06:51:07'),
(2, 'nguyenthuan', 'eyJpdiI6IlBNOVJQODhRMXZBUWxNSjhZNmVHT1E9PSIsInZhbHVlIjoiWDR2eWU3dThPME9ucWZHK2pMTW1BQT09IiwibWFjIjoiMTQ1MTMzMjEwNzgzMjA2NmE3NjdlNWQxZDVjMjQ5ZmIyYjE1YzQyYzc2NGUyNzQ5OTQzOGE3MWU4MWI4ZWQ3OSJ9', 'thuan@gmail.com', 'null', 1, '2020-10-06 09:22:21', '2020-10-08 03:07:30'),
(3, 'nguyennguyen', 'eyJpdiI6IkNFV3lrQVhiWFFicnplR0svODZzOWc9PSIsInZhbHVlIjoiRWdRNVFBQmR1SmgvZVU3K01TNURadz09IiwibWFjIjoiMmI4YzhiMzkxODM5MGQ5MGM0ZWExMmFmMTI5MGEyNWU1Y2U5YmUxNTg0ZmM3NjQwNTNlYzZjY2UyNWVmMDMwMSJ9', 'nguyennguyen@gmail.com', 'null', 2, '2020-10-06 09:23:05', '2020-10-21 03:37:50'),
(4, 'nguyentuank', 'eyJpdiI6Ik4yazZDb1hTOVNqS2hHcFhOVjNrL1E9PSIsInZhbHVlIjoiV3dBdzZRZ3NpOEdaMndyV2pFWGJwdz09IiwibWFjIjoiYmI3MzkxYmM1ZjA0Yzk3OGViYzRmNzQyNjg0ZjJlMDY2MTliMzNkY2UyZjMyMWNiNzc3YTk1Y2JiOTJiMzM4MyJ9', 'ntuan9872@gmail.com', 'null', 2, '2020-10-06 23:27:55', '2020-10-06 23:27:55'),
(5, 'giabao', 'eyJpdiI6InVZMHpweG4yVmd6UDE2N0xvZ016eXc9PSIsInZhbHVlIjoiUVZBNnpvNkdQMG5Cc2dndEVwRktQZz09IiwibWFjIjoiOGM2MWQ1YzJlYmJjNzZhNjBkNTkwNTQ3ODU4MDhhNzY3ZGU0ZWRjYjZjNmE2NWI2ZWRiODhiNWJjYzk2ZGVkYSJ9', 'giabao@gmail.com', '12345678', 2, '2020-10-07 01:49:35', '2020-10-21 03:31:58'),
(6, 'ronaldo', 'eyJpdiI6InYwNFllMkhMRmJ3S2VVUG5tZlJuOHc9PSIsInZhbHVlIjoiQzdMRTNBYTcrNFNkSzNsRER1SnBoUT09IiwibWFjIjoiNTE0NzRhMzBlN2EwMjA2ZjI0NzBkMGQzYjY5NWE1YjU5NTRjNmEwNDgwZGE5OWVjOGQ2YzZlMTRiZTI4NzIxMiJ9', 'ronaldo@gmail.com', '12121222', 3, '2020-10-07 21:27:50', '2020-10-21 03:07:50'),
(7, 'messi', 'eyJpdiI6Im1sOHRpRDc0NkdySS9oajQzejMrUFE9PSIsInZhbHVlIjoiU0piSkFucjZoNHYrUXNIV0VSa28vQT09IiwibWFjIjoiYzI4ZGQxNDgzZTk5MDBiYzBiN2I4NDNjNzY4MmVmZmZkMDVhZmE3NGRjZjU2ZGJmYWI3MzUyODYxYjI3ZGUxYiJ9', 'messi@gmail.com', '12121222', 3, '2020-10-07 21:28:18', '2020-10-19 21:05:22'),
(8, 'neymar', 'eyJpdiI6InZMK1BKUnBncThTUFZaN2s3WVpvenc9PSIsInZhbHVlIjoiNTBpRkZlY3IvNzBHZVltSWJXQkF6QT09IiwibWFjIjoiNzE5OWRlYTdlMGY3MGE5ZWQwYTk4YWMzMGJmMDFkMTAyY2EwMmRiNjRhMjU0ODhkMTdhMTg0NGM1MWE2N2Y2YyJ9', 'neymar@gmail.com', 'null', 3, '2020-10-07 21:29:02', '2020-10-07 21:29:02'),
(9, 'bale', 'eyJpdiI6IkVVSEZhbjFnNnpuWXBRbFRXOFpPREE9PSIsInZhbHVlIjoieUZTNjNmcWN6TUVtME82dzI5U0lVdz09IiwibWFjIjoiOGM2ZDAwODExYzAzZTliYjhjNDk3NjZiZWU1Yjg3ODFlMDIzY2YzODJmNmJjMDNhMzYwNGE0NzUyOGUwMGZiNCJ9', 'bale@gmail.com', 'null', 3, '2020-10-07 21:30:03', '2020-10-07 21:30:03'),
(10, 'roney', 'eyJpdiI6IitCOStxWGVPaldPUFNlWlFZWjFFZFE9PSIsInZhbHVlIjoicVZGLy9ldExHVkpnYVY1MWsrWUpUQT09IiwibWFjIjoiMWFhZDJlMjA4NmEyMDcwMWFiYzkyZGNlYzMzYTgwODY0NmRiNmEyODhmZjdhNmRiNDcwZTk2ZDNkN2Y0OTY2MSJ9', 'roney@gmail.com', 'null', 3, '2020-10-07 21:30:27', '2020-10-07 21:30:27'),
(11, 'doanvanhau', 'eyJpdiI6ImxCMTFETkZxZUZRN1VOUTVZZHBuVXc9PSIsInZhbHVlIjoiMHdUa1lQbW5SREVLMG1Ydk9XWUx0UT09IiwibWFjIjoiMTMyNjllM2FhNzE2MjE1YWJiNWNlMjE5NmRlNWUwOWE1NjRiYTk2MGE1MjFjMTljYjk2ODY2N2M3OTdjOTg1NyJ9', 'doanvanhau@gmail.com', 'null', 3, '2020-10-07 21:31:01', '2020-10-07 21:31:01'),
(12, 'congphuong', 'eyJpdiI6Im5sWjJOWVNXc3VXdG43eEFjL0Y0YXc9PSIsInZhbHVlIjoiYUlRbW5laWFuWEVISWtHTXFhOXl1QT09IiwibWFjIjoiYWVlNWY4MjIzMDAyMjlhZDUwZGQyYTQyOWY2NTc5ZmYzYzhjOWU0MGY2ZWY4YzUyNmVlMDE5ZDA4ZTJjOWE3NiJ9', 'congphuong@gmail.com', 'null', 3, '2020-10-07 21:31:24', '2020-10-07 21:31:24'),
(13, 'quanghai', 'eyJpdiI6IkN6RGZGa3c0MWdSV2hFYURycytkTXc9PSIsInZhbHVlIjoiSWxiY0w3N0VtRGR2TDBkejYycGUydz09IiwibWFjIjoiZGJhZDA0YTg3NmNkZDY0ZTI1MGMyYWNlNGI3NTZmMzEzN2Q4MGZhOWEwNzg2OWZmMzgwYzU5NmFkOTY2Mzc0NCJ9', 'quanghai@gmail.com', 'null', 3, '2020-10-07 21:32:11', '2020-10-07 21:32:11'),
(15, 'cocacola', 'eyJpdiI6Inp1NlhjVnpybnh3d1VwYzlCQ1pzZ1E9PSIsInZhbHVlIjoiWThydW9xdURDOEhCb0p1SDFhTTkrUT09IiwibWFjIjoiMDYxNjBiOTBjNGIwNmVkZTU5NzBiZjFlZWJmMDU1ZjljMWUwZjQ5MTY4MTc4MjkzOWE5NzNhMjY2OWU2ODIzNyJ9', 'cocacola@gmail.com', 'null', 3, '2020-10-14 02:15:02', '2020-10-14 02:15:02'),
(16, 'pepsi', 'eyJpdiI6IkpwSVBFUE9nK3Q4aUFpK3J2Qm9TUmc9PSIsInZhbHVlIjoiRDJyOVkzQkduRmxLRlB6VkVtZzRXQT09IiwibWFjIjoiYWQzNzUyZGFkZTA0Mzk5NTMxODg0YTgyNzFkNDc2MmIxMzlmMDJiMGNkNzRkNGM3ODNhNzM2N2E2YWFmMjE1OSJ9', 'pepsi@gmail.com', 'null', 3, '2020-10-14 02:15:54', '2020-10-14 02:15:54'),
(17, 'sontungMTP', 'eyJpdiI6Ii9ybDVCTThob1RqK3l0S1F6QkJJNUE9PSIsInZhbHVlIjoiOCtrVmR1UUVNTFZYWk9QUHNOUFVZdz09IiwibWFjIjoiZTAxMTc1OWU0M2Q0ZjZkN2U0MTZiMGRhMTU5MmNhZTNkODNmMTc4MzkxMjQ0NjI0OGM4Njg5NDRiNjZkMGFkNiJ9', 'sontungMTP@gmail.com', '12345678', 2, '2020-10-18 00:58:40', '2020-10-18 00:58:40'),
(18, 'wolf', 'eyJpdiI6InpOcmloUWlCamlDU05vYlJjVDZLb2c9PSIsInZhbHVlIjoieWJZMW1SZXFwUDJBNThWZGorTS9DUT09IiwibWFjIjoiNjFiZjQ3ODk4Y2QyNDM5ZTUzNzBhZGQ5YmJjN2JjMTEzNTc2ZDFkNGNkZjljMGU4ODgzMGUzZWQ0OTVmNzdmOCJ9', 'wolf@gmail.com', '123456789', 2, '2020-10-18 01:01:34', '2020-10-18 01:01:34'),
(19, 'faptv', 'eyJpdiI6Im9sNGtyVjBLVkVmUUZ0YnFNMjR2ZkE9PSIsInZhbHVlIjoiNVZldGNVeXN4UVl4aVNSeDFzVkxJQT09IiwibWFjIjoiODdiM2EyNDlhNGEzNWI1ZWRlYjM4NDg3NzI2MzRmZWQ1ZTFmNzRkZGFkYTE1MmQ5OGU2YmU3OTVlZThiZTRiMSJ9', 'faptv@gmail.com', '12345678', 3, '2020-10-18 07:56:35', '2020-10-18 07:56:35'),
(20, 'oragne', 'eyJpdiI6IjkrZ2ZPSVhwVThLVUk2VXZMWFA2V3c9PSIsInZhbHVlIjoiNENtc2h6VDl4REdXMTY5dUIwRyt2UT09IiwibWFjIjoiYTM3ZTE1YmU4MDViOTIwZjdhMDEzZTlkY2M1NGRkYmQzYjMzODNkYWI1OGJmMGE2MjYxZTczNDM3NDFiZGM5NiJ9', 'oragne@gmail.com', '12345678', 3, '2020-10-18 20:48:51', '2020-10-18 20:48:51'),
(21, 'blue', 'eyJpdiI6IjdZZWZGbG5XRm02MkZSS3lUMDNzTFE9PSIsInZhbHVlIjoiWDcrdWJxeVNaSjVjKzBSQnNwR092UT09IiwibWFjIjoiNDhkODcyYjVjM2QxNGRjNGYyM2NmNGY1ZTA1OTczMWViZDU0Y2Y0OWVhZTUwYzhkZGQwYzY5ZmRhZjk2OGE4MyJ9', 'blue@gmail.com', '12345678', 3, '2020-10-18 20:49:41', '2020-10-18 20:49:41'),
(23, 'minion', 'eyJpdiI6IjdBUXg5UTFHWFhxN1B2WjA3V2dvK1E9PSIsInZhbHVlIjoiUUJpc2tVd29sVk40SGUyZmFUV2h6dz09IiwibWFjIjoiOTVjY2MzYzcwZmRmNGI3YjU0MmU4M2FjOTY2YmFmZjg2NGQ1NWMxZTU0MzRlMzdkNDQxMmIyMmFjNTM3NDZiOSJ9', 'minion@gmail.com', '12345678', 2, '2020-10-20 08:24:39', '2020-10-20 08:24:39'),
(25, 'doremon', 'eyJpdiI6IjJrd2RCVldXK2lyb2tBbjNxWkdNTGc9PSIsInZhbHVlIjoiSFBLZkMwMXNUUHN2VHVFbjBocUFwUT09IiwibWFjIjoiY2VkMzY0YjRmZDk5MWIwNDNkNjZlOGIwZTI0MzBiYjVjNDQ5ZWYyMTFhMWRiMDNlNjEwMmFlMWJlM2E2MDYwZSJ9', 'doremon@gmail.com', NULL, 1, '2020-10-20 20:21:15', '2020-10-20 20:21:15'),
(26, 'luffy', 'eyJpdiI6ImZEVS9pdFNUc1hzeEQ0dnJPM2RPb3c9PSIsInZhbHVlIjoiYkNyelZuc3VXSTh0eVM0UEJ4NU9Ldz09IiwibWFjIjoiNGVkYjNjZmU0ZjI1ZThjMWU5MDk5ZGY2ZWU2MmM2YTM1NDlkYzBjN2Q4ODVhMjZjZWNkYzM4MmFiMTA3YmE3MCJ9', 'luffy@gmail.com', '12345678910', 3, '2020-10-21 05:55:50', '2020-10-21 05:55:50'),
(27, 'spiderman', 'eyJpdiI6Im9NNHgyVm11b3VtYWhsWUVyMUtHamc9PSIsInZhbHVlIjoiellCZ2NpWXZmWkhOMHRSeDNXSWFqZz09IiwibWFjIjoiMjIyNGQ4MWU3MDgwN2QzZGU5YThkZTA0MjdlZmMwZGExYzg5N2NmNzY2NzdlNzY2Mzg3MmYxYjgzOWQ2MWYyMiJ9', 'spiderman@gmail.com', '0366424164', 3, '2020-10-21 05:56:39', '2020-10-21 06:31:24'),
(28, 'Thuận Nguyễn', 'eyJpdiI6IlJJOC9NRUJCZi90VmVRcFljS1ZMdWc9PSIsInZhbHVlIjoiYWRHV1hpbEd1RFFWMGFJcUR2dTlRZz09IiwibWFjIjoiMGUyODI2MTEwNTBlMjVjNGM4Y2VlNzVjYWU5MjdmOWUzNzM3ODk1YjVjMGI5MTAxZTk1ZDlhMzM5NmY2ZjQ1MiJ9', 'thuannguyenk17gtvt@gmail.com', NULL, 1, '2020-11-08 06:27:32', '2020-11-08 06:27:32'),
(29, 'Thuan', 'eyJpdiI6IjdWRTdUcFBjTTYvZlFCZEV6RXJ5RkE9PSIsInZhbHVlIjoiaGF5QUdXNmlBelczUXh4YmpGdEZ3QT09IiwibWFjIjoiZTMxMzQ1YWJkMjliMTEwNDJjOWUyMzVhZDQ3Yzg5ZWQ1YzM2YWJhZGQ0NmUyNWEzOWQzZTNmNmRiYTZmNTJmOCJ9', 'thuannguyen12b@gmail.com', 'null', 3, '2020-11-08 06:28:03', '2020-11-13 07:32:17');

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

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `warehouse_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `warehouse_name` text COLLATE utf8_unicode_ci NOT NULL,
  `warehouse_address` text COLLATE utf8_unicode_ci NOT NULL,
  `capacity` double NOT NULL,
  `unit` text COLLATE utf8_unicode_ci NOT NULL,
  `empty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`warehouse_id`, `warehouse_name`, `warehouse_address`, `capacity`, `unit`, `empty`, `created_at`, `updated_at`) VALUES
('K01', 'Kho 01', 'Quận 7 -Sài Gòn', 300, 'cái', 280, '2020-11-13 04:52:31', '2020-11-13 04:55:00'),
('K02', 'Kho 02', 'Quận 3 -Sài Gòn', 300, 'cái', 250, '2020-11-12 03:53:55', '2020-11-13 04:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `wrong`
--

CREATE TABLE `wrong` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `times` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `fk_comment_id_product` (`product_id`),
  ADD KEY `fk_comment_id_user` (`user_id`);

--
-- Indexes for table `deliverybill`
--
ALTER TABLE `deliverybill`
  ADD PRIMARY KEY (`deliverybill_id`);

--
-- Indexes for table `detaildeliverybill`
--
ALTER TABLE `detaildeliverybill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detaildeliverybill_ibfk_1` (`deliverybillid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maxacnhan`
--
ALTER TABLE `maxacnhan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mxn_user` (`id_user`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderitemwarehouse`
--
ALTER TABLE `orderitemwarehouse`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_orders_user` (`user_id`);

--
-- Indexes for table `orderwarehouse`
--
ALTER TABLE `orderwarehouse`
  ADD PRIMARY KEY (`orderWh_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_item_id_order` (`order_id`),
  ADD KEY `fk_item_id_product` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK1` (`product_cate`);

--
-- Indexes for table `productwh`
--
ALTER TABLE `productwh`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `wh_id` (`wh_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotion_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `rating_user_id_index` (`user_id`),
  ADD KEY `rating_product_id_index` (`product_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- Indexes for table `wrong`
--
ALTER TABLE `wrong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wrong_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `deliverybill`
--
ALTER TABLE `deliverybill`
  MODIFY `deliverybill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `detaildeliverybill`
--
ALTER TABLE `detaildeliverybill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maxacnhan`
--
ALTER TABLE `maxacnhan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `orderitemwarehouse`
--
ALTER TABLE `orderitemwarehouse`
  MODIFY `id_item` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `orderwarehouse`
--
ALTER TABLE `orderwarehouse`
  MODIFY `orderWh_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `productwh`
--
ALTER TABLE `productwh`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `promotion_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wrong`
--
ALTER TABLE `wrong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comment_id_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_comment_id_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `detaildeliverybill`
--
ALTER TABLE `detaildeliverybill`
  ADD CONSTRAINT `detaildeliverybill_ibfk_1` FOREIGN KEY (`deliverybillid`) REFERENCES `deliverybill` (`deliverybill_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maxacnhan`
--
ALTER TABLE `maxacnhan`
  ADD CONSTRAINT `fk_mxn_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_item_id_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_item_id_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`product_cate`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `productwh`
--
ALTER TABLE `productwh`
  ADD CONSTRAINT `productwh_ibfk_1` FOREIGN KEY (`wh_id`) REFERENCES `warehouse` (`warehouse_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_rating_id_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rating_id_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `wrong`
--
ALTER TABLE `wrong`
  ADD CONSTRAINT `fk_wrong_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
