-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 25, 2022 at 03:25 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `root2_barnslan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int NOT NULL,
  `title` text NOT NULL,
  `image` text NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `button_url` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `image`, `description`, `button_url`, `status`, `created_at`) VALUES
(1, 'Sub heading for the photo goes here', '20211022093947.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet', '#', 'active', '2021-10-22 09:30:19'),
(2, 'Sub heading for the photo goes here', '20211022094030.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet', '#', 'active', '2021-10-22 09:40:30'),
(3, 'Sub heading for the photo goes here', '20211022094107.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet', '#', 'active', '2021-10-22 09:41:07'),
(5, 'Education Fee for needy StudentS', '20211021073814.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet', '#', 'inactive', '2021-10-22 09:53:26'),
(6, 'Education Fee for needy Students 4000+', '20211020135211.svg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet', 'http://localhost/Barns_Lane_Farm/', 'inactive', '2021-11-01 09:37:46'),
(7, 'Education Fee for needy Students 4000+', '20211021071119.jpg', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet', 'http://localhost/Barns_Lane_Farm/', 'inactive', '2021-11-02 05:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` enum('gallery','banner','logo','slider','video') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'gallery',
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `image`, `title`, `type`, `url`, `status`, `created_at`) VALUES
(1, '20211018124541.png', 'hero', 'banner', 'http://localhost/barnslane/public/uploads/20211018124541.png', 'active', '2021-10-18 12:45:41'),
(2, '20211018124556.png', 'secodary', 'gallery', 'http://localhost/barnslane/public/uploads/20211018124556.png', 'active', '2021-10-18 12:45:56'),
(3, '20211018132841.png', 'mark Group', 'gallery', 'http://localhost/barnslane/public/uploads/20211018132841.png', 'active', '2021-10-18 13:28:41'),
(4, '20211018133541.png', 'video image', 'gallery', 'http://localhost/barnslane/public/uploads/20211018133541.png', 'active', '2021-10-18 13:35:41'),
(5, '20211020115338.jpg', 'nnnn', 'gallery', 'http://localhost/barnslane/public/uploads/20211020115338.jpg', 'active', '2021-10-20 11:53:38'),
(7, '20211020135041.jpg', 'uu', 'gallery', 'http://localhost/barnslane/public/uploads/20211020135041.jpg', 'active', '2021-10-20 13:50:41'),
(8, '20211020135142.jpg', 'aa', 'gallery', 'http://localhost/barnslane/public/uploads/20211020135142.jpg', 'active', '2021-10-20 13:51:42'),
(9, '20211020135211.svg', 'bb', 'gallery', 'http://localhost/barnslane/public/uploads/20211020135211.svg', 'active', '2021-10-20 13:52:11'),
(10, '20211021070508.jpg', '20211021070508.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211021070508.jpg', 'active', '2021-10-21 07:05:08'),
(11, '20211021071119.jpg', '20211021071119.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211021071119.jpg', 'active', '2021-10-21 07:11:19'),
(12, '20211021071457.svg', '20211021071457.svg', 'gallery', 'http://localhost/barnslane/public/uploads/20211021071457.svg', 'active', '2021-10-21 07:14:57'),
(13, '20211021072713.jpg', '20211021072713.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211021072713.jpg', 'active', '2021-10-21 07:27:13'),
(14, '20211021072800.png', '20211021072800.png', 'gallery', 'http://localhost/barnslane/public/uploads/20211021072800.png', 'active', '2021-10-21 07:28:00'),
(15, '20211021072840.png', '20211021072840.png', 'gallery', 'http://localhost/barnslane/public/uploads/20211021072840.png', 'active', '2021-10-21 07:28:40'),
(16, '20211021073404.jpg', '20211021073404.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211021073404.jpg', 'active', '2021-10-21 07:34:04'),
(18, '20211021073814.jpg', '20211021073814.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211021073814.jpg', 'active', '2021-10-21 07:38:14'),
(19, '20211021095836.svg', '20211021095836.svg', 'gallery', 'http://localhost/barnslane/public/uploads/20211021095836.svg', 'active', '2021-10-21 09:58:36'),
(20, '20211021095857.jpg', '20211021095857.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211021095857.jpg', 'active', '2021-10-21 09:58:57'),
(25, '20211021100004.png', '20211021100004.png', 'gallery', 'http://localhost/barnslane/public/uploads/20211021100004.png', 'active', '2021-10-21 10:00:04'),
(26, '20211022055812.png', 'shoting', 'gallery', 'http://localhost/barnslane/public/uploads/20211022055812.png', 'active', '2021-10-22 05:58:12'),
(27, '20211022064349.png', 'gj', 'gallery', 'http://localhost/barnslane/public/uploads/20211022064349.png', 'active', '2021-10-22 06:43:49'),
(28, '20211022064444.svg', 'Welcome to', 'gallery', 'http://localhost/barnslane/public/uploads/20211022064444.svg', 'active', '2021-10-22 06:44:44'),
(29, '20211022103937.svg', '20211022103937.svg', 'gallery', 'http://localhost/barnslane/public/uploads/20211022103937.svg', 'active', '2021-10-22 10:39:37'),
(30, '20211022111718.svg', '20211022111718.svg', 'gallery', 'http://localhost/barnslane/public/uploads/20211022111718.svg', 'active', '2021-10-22 11:17:18'),
(31, '20211022112816.jpg', '20211022112816.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211022112816.jpg', 'active', '2021-10-22 11:28:16'),
(32, '20211028062604.png', '20211028062604.png', 'banner', 'http://localhost/barnslane/public/uploads/20211028062604.png', 'active', '2021-10-28 06:26:04'),
(33, '20211028072327.png', '20211028072327.png', 'gallery', 'http://localhost/barnslane/public/uploads/20211028072327.png', 'active', '2021-10-28 07:23:27'),
(34, '20211028072656.png', '20211028072656.png', 'gallery', 'http://localhost/barnslane/public/uploads/20211028072656.png', 'active', '2021-10-28 07:26:56'),
(35, '20211028102619.svg', '20211028102619.svg', 'gallery', 'http://localhost/barnslane/public/uploads/20211028102619.svg', 'active', '2021-10-28 10:26:19'),
(36, '20211028103618.svg', '20211028103618.svg', 'gallery', 'http://localhost/barnslane/public/uploads/20211028103618.svg', 'active', '2021-10-28 10:36:18'),
(37, '20211028103759.jpg', '20211028103759.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211028103759.jpg', 'active', '2021-10-28 10:37:59'),
(38, '20211028104811.jpg', '20211028104811.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211028104811.jpg', 'active', '2021-10-28 10:48:11'),
(39, '20211028105002.jpg', '20211028105002.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211028105002.jpg', 'active', '2021-10-28 10:50:02'),
(40, '20211028105110.png', '20211028105110.png', 'gallery', 'http://localhost/barnslane/public/uploads/20211028105110.png', 'active', '2021-10-28 10:51:10'),
(41, '20211028105705.jpg', '20211028105705.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211028105705.jpg', 'active', '2021-10-28 10:57:05'),
(42, '20211028105754.jpg', '20211028105754.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211028105754.jpg', 'active', '2021-10-28 10:57:54'),
(43, '20211028110058.svg', '20211028110058.svg', 'gallery', 'http://localhost/barnslane/public/uploads/20211028110058.svg', 'active', '2021-10-28 11:00:58'),
(44, '20211028110617.png', '20211028110617.png', 'gallery', 'http://localhost/barnslane/public/uploads/20211028110617.png', 'active', '2021-10-28 11:06:17'),
(45, '20211028110701.svg', '20211028110701.svg', 'gallery', 'http://localhost/barnslane/public/uploads/20211028110701.svg', 'active', '2021-10-28 11:07:01'),
(46, '20211028110732.png', '20211028110732.png', 'gallery', 'http://localhost/barnslane/public/uploads/20211028110732.png', 'active', '2021-10-28 11:07:32'),
(47, '20211028111350.svg', '20211028111350.svg', 'gallery', 'http://localhost/barnslane/public/uploads/20211028111350.svg', 'active', '2021-10-28 11:13:50'),
(48, '20211029055358.mp4', '20211029055358.mp4', 'video', 'http://localhost/barnslane/public/uploads/20211029055358.mp4', 'active', '2021-10-29 05:53:58'),
(49, '20211029070511.mp4', '20211029070511.mp4', 'gallery', 'http://localhost/barnslane/public/uploads/20211029070511.mp4', 'active', '2021-10-29 07:05:11'),
(50, '20211029073436.svg', '20211029073436.svg', 'gallery', 'http://localhost/barnslane/public/uploads/20211029073436.svg', 'active', '2021-10-29 07:34:36'),
(51, '20211029100453.png', '20211029100453.png', 'gallery', 'http://localhost/barnslane/public/uploads/20211029100453.png', 'active', '2021-10-29 10:04:53'),
(52, '20211101092928.jpg', '20211101092928.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211101092928.jpg', 'active', '2021-11-01 09:29:28'),
(53, '20211101095216.png', '20211101095216.png', 'gallery', 'http://localhost/barnslane/public/uploads/20211101095216.png', 'active', '2021-11-01 09:52:16'),
(54, '20211101100419.jpg', '20211101100419.jpg', 'gallery', 'http://localhost/barnslane/public/uploads/20211101100419.jpg', 'active', '2021-11-01 10:04:19'),
(55, '20211101100836.svg', '20211101100836.svg', 'gallery', 'http://localhost/barnslane/public/uploads/20211101100836.svg', 'active', '2021-11-01 10:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `hero_id` int NOT NULL,
  `page_id` int DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `button_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `button_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`hero_id`, `page_id`, `image`, `title`, `sub_title`, `content`, `button_name`, `button_url`, `status`, `created_at`) VALUES
(1, NULL, '20211013064156.jpg', 'Welcome to', 'Barns Lane Farm', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.', 'Take a Tour', '#', 'active', '2021-10-13 06:09:28'),
(2, NULL, '20211028063006.jpg', 'Education Fee for needy Students 4000+', 'fsdfs', NULL, 'sdfdsf', 'fsdfs', 'inactive', '2021-10-28 06:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `maps_meta`
--

CREATE TABLE `maps_meta` (
  `maps_meta_id` int NOT NULL,
  `region_maps_id` int NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `image` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `maps_meta`
--

INSERT INTO `maps_meta` (`maps_meta_id`, `region_maps_id`, `title`, `description`, `image`, `status`, `created_at`) VALUES
(1, 1, 'Weddings & Functions1', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\r\n                                                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing\r\n                                                                elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\n                                                                kasd gubergren, no sea takimata sanctus est', '20211025133213.png', 'active', '2021-10-25 13:32:13'),
(2, 1, 'Weddings & Functions2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\r\n                                                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing\r\n                                                                elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\n                                                                kasd gubergren, no sea takimata sanctus est', '20211020115338.jpg', 'active', '2021-10-25 13:32:54'),
(3, 1, 'Weddings & Functions3', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\r\n                                                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing\r\n                                                                elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\n                                                                kasd gubergren, no sea takimata sanctus est', '20211025133322.png', 'active', '2021-10-25 13:33:22'),
(4, 2, 'Weddings & Functionss', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\r\n                                                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing\r\n                                                                elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\n                                                                kasd gubergren, no sea takimata sanctus est', '20211026044809.png', 'active', '2021-10-26 04:48:09'),
(5, 2, 'Weddings & Functions', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\r\n                                                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing\r\n                                                                elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\n                                                                kasd gubergren, no sea takimata sanctus est', '20211026044857.png', 'active', '2021-10-26 04:48:57'),
(6, 3, 'Weddings & Functions', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\r\n                                                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing\r\n                                                                elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\n                                                                kasd gubergren, no sea takimata sanctus est', '20211026044922.png', 'active', '2021-10-26 04:49:22'),
(7, 3, 'Weddings & Functions', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\r\n                                                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing\r\n                                                                elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\n                                                                kasd gubergren, no sea takimata sanctus est', '20211026044940.png', 'active', '2021-10-26 04:49:40'),
(8, 4, 'Weddings & Functions', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\r\n                                                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing\r\n                                                                elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\n                                                                kasd gubergren, no sea takimata sanctus est', '20211026045002.png', 'active', '2021-10-26 04:50:02'),
(9, 4, 'Weddings & Functions', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\r\n                                                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing\r\n                                                                elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\n                                                                kasd gubergren, no sea takimata sanctus est', '20211026045019.png', 'active', '2021-10-26 04:50:19'),
(10, 5, 'Weddings & Functions', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\r\n                                                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing\r\n                                                                elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\n                                                                kasd gubergren, no sea takimata sanctus est', '20211026045039.png', 'active', '2021-10-26 04:50:39'),
(11, 5, 'Weddings & Functions', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et\r\n                                                                accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing\r\n                                                                elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\n                                                                kasd gubergren, no sea takimata sanctus est', '20211026045054.png', 'active', '2021-10-26 04:50:54'),
(12, 2, 'Weddings & Functions', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est<br></p>', '20211026112906.png', 'active', '2021-10-26 11:29:06'),
(13, 1, 'Education Fee for needy Students 4000+', '<p>sdfsfsd</p>', '20211020135211.svg', 'active', '2021-11-01 10:04:44'),
(14, 1, 'Weddings & Functions', '<p>hjfjdjfyjfgjgj</p>', '20211022111718.svg', 'active', '2021-11-01 10:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `position` int NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `name`, `parent_id`, `category_id`, `type`, `slug`, `position`, `status`, `created_at`) VALUES
(1, 'Our Story', NULL, 1, '3', 'our-story', 1, 'active', '2021-10-13 06:13:09'),
(2, 'Our Vision', NULL, 1, '3', 'our-vision', 2, 'active', '2021-10-13 06:15:03'),
(3, 'Our Region', NULL, 1, '4', 'take-a-tour', 1, 'active', '2021-10-13 06:16:12'),
(4, 'BLF News', NULL, 1, '4', 'https://blf.dmsdesigns.com.au/BLF-news/', 2, 'active', '2021-10-13 06:16:59'),
(5, 'Enquire Now', NULL, 1, '4', 'get-in-touch', 3, 'active', '2021-10-13 06:18:44'),
(6, 'EXPERIENCES', NULL, 2, NULL, 'experiences', 1, 'active', '2021-10-13 08:27:45'),
(7, 'VENDORS', NULL, 2, NULL, 'vendors', 2, 'active', '2021-10-13 09:00:51'),
(8, 'INFORMATION', NULL, 2, NULL, 'information', 3, 'active', '2021-10-13 09:01:21'),
(9, 'Privacy Policy', NULL, 5, NULL, 'privacy-policy', 1, 'active', '2021-10-13 09:10:05'),
(10, 'Terms & Conditions', NULL, 5, NULL, 'terms-conditions', 2, 'active', '2021-10-13 09:10:26'),
(11, 'Code of Conduct', NULL, 5, NULL, 'code-of-conduct', 3, 'active', '2021-10-13 09:10:47'),
(12, 'FOOD', 6, NULL, NULL, 'food', 1, 'active', '2021-10-13 09:49:11'),
(13, 'FARM', 6, NULL, NULL, 'farm', 2, 'active', '2021-10-13 09:49:38'),
(14, 'FUN', 6, NULL, NULL, 'fun', 3, 'active', '2021-10-13 09:49:55'),
(15, 'Ugly Duck Fine Foods', 7, NULL, NULL, 'ugly-duck-fine-foods', 2, 'active', '2021-10-13 11:04:26'),
(16, 'EOI', 8, NULL, NULL, 'eoi', 2, 'active', '2021-10-13 11:35:48'),
(17, 'Restaurant Food', 12, NULL, NULL, 'restaurant-food', 2, 'active', '2021-10-13 11:51:53'),
(18, 'Food Trucks', 12, NULL, NULL, 'food-trucks', 3, 'active', '2021-10-13 11:52:45'),
(19, 'Cooking School Farm', 13, NULL, NULL, 'cooking-school-farm', 1, 'active', '2021-10-13 11:53:15'),
(20, 'Restaurant Farm', 13, NULL, NULL, 'restaurant-farm', 2, 'active', '2021-10-13 11:53:31'),
(21, 'FARM Trucks', 13, NULL, NULL, 'farm-trucks', 3, 'active', '2021-10-13 11:53:50'),
(22, 'Cooking School fun', 14, NULL, NULL, 'cooking-school-fun', 1, 'active', '2021-10-13 11:54:17'),
(23, 'Restaurant Fun', 14, NULL, NULL, 'restaurant-fun', 2, 'active', '2021-10-13 11:54:35'),
(24, 'Fun Trucks', 14, NULL, NULL, 'fun-trucks', 3, 'active', '2021-10-13 11:54:50'),
(25, 'Cooking School Food', 12, NULL, NULL, 'cooking-school-food', 1, 'active', '2021-10-13 11:56:51'),
(26, 'Montville Mist', 7, NULL, NULL, 'montville-mist', 2, 'active', '2021-10-13 11:57:13'),
(27, 'Soul Fish Seafoods', 7, NULL, NULL, 'soul-fish-seafoods', 3, 'active', '2021-10-13 11:57:25'),
(28, 'Shambala Farm', 7, NULL, NULL, 'shambala-farm', 4, 'active', '2021-10-13 11:57:39'),
(29, 'Tanglewood Bakery', 7, NULL, NULL, 'tanglewood-bakery', 5, 'active', '2021-10-13 11:57:51'),
(30, 'Get In Touch', 8, NULL, NULL, 'get-in-touch', 1, 'active', '2021-10-13 11:58:09'),
(31, 'Privacy Policy', 8, NULL, NULL, 'privacy-policy', 3, 'active', '2021-10-13 11:58:30'),
(32, 'Terms of Use', 8, NULL, NULL, 'terms-of-use', 4, 'active', '2021-10-13 11:59:31'),
(33, 'fffffffffffffff', NULL, NULL, NULL, 'fffffffffffffff', 1, 'inactive', '2021-10-28 05:51:21'),
(34, 'dgdf', NULL, NULL, NULL, 'dgdf', 66, 'inactive', '2021-10-29 12:06:35'),
(35, 'ASEDF', NULL, NULL, NULL, 'asedf', 2222, 'inactive', '2021-10-29 12:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `menu_category`
--

CREATE TABLE `menu_category` (
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent_id` int DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `menu_category`
--

INSERT INTO `menu_category` (`category_id`, `name`, `parent_id`, `status`, `created_at`) VALUES
(1, 'Header', NULL, 'active', '2021-10-13 06:10:33'),
(2, 'Footer', NULL, 'active', '2021-10-13 06:10:42'),
(3, 'Left Side', 1, 'active', '2021-10-13 06:11:11'),
(4, 'Right Side', 1, 'active', '2021-10-13 06:11:23'),
(5, 'Bottom', NULL, 'active', '2021-10-13 06:24:03'),
(6, 'sadasd', NULL, 'active', '2021-10-28 05:46:45'),
(7, 'sadasd', NULL, 'active', '2021-10-28 05:47:08'),
(8, 'wef', 1, 'active', '2021-10-29 12:06:14'),
(9, 'dfgfd', NULL, 'active', '2021-10-29 12:13:20'),
(10, 'dsfsdfdsfsfsdfssfsdf', NULL, 'active', '2021-10-29 12:16:13'),
(11, 'ASEDF', 1, 'active', '2021-10-29 12:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `name`, `slug`, `content`, `image`, `status`, `created_at`) VALUES
(1, 'Home', 'Home', 'home', NULL, NULL, 'active', '2021-10-18 06:30:01'),
(2, 'Our Story', 'Our Story', 'our-story', NULL, NULL, 'active', '2021-10-19 05:28:45'),
(3, 'Our Vision', 'Our Vision', 'our-vision', NULL, NULL, 'active', '2021-10-19 07:34:54'),
(6, 'Enquire Now', 'Enquire Now', 'get-in-touch', NULL, NULL, 'active', '2021-10-25 05:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `page_content`
--

CREATE TABLE `page_content` (
  `pagecontent_id` int NOT NULL,
  `page_section_id` int NOT NULL,
  `template_meta_id` int NOT NULL,
  `template_meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT 'text',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `page_content`
--

INSERT INTO `page_content` (`pagecontent_id`, `page_section_id`, `template_meta_id`, `template_meta_value`, `type`, `status`, `created_at`) VALUES
(1, 1, 5, 'Our Story', 'text', 'active', '2021-10-22 13:25:14'),
(2, 1, 6, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing', 'textarea', 'active', '2021-10-22 13:25:14'),
(3, 1, 7, 'http://localhost/barnslane/our-story', 'text', 'active', '2021-10-22 13:25:14'),
(4, 1, 8, '20211018124541.png', 'file', 'active', '2021-10-22 13:25:14'),
(5, 1, 9, '20211018124556.png', 'file', 'active', '2021-10-22 13:25:14'),
(6, 2, 10, 'Our Vision', 'text', 'active', '2021-10-22 13:34:45'),
(7, 2, 11, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed', 'textarea', 'active', '2021-10-22 13:34:45'),
(8, 2, 12, '20211018133541.png', 'file', 'active', '2021-10-22 13:34:45'),
(9, 2, 13, 'https://i.ytimg.com/vi_webp/tgbNymZ7vqY/sddefault.webp', 'text', 'active', '2021-10-22 13:34:45'),
(10, 2, 14, 'Our Vision', 'text', 'active', '2021-10-22 13:34:45'),
(11, 2, 15, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing', 'textarea', 'active', '2021-10-22 13:34:45'),
(12, 2, 16, 'http://localhost/barnslane/our-vision', 'text', 'active', '2021-10-22 13:34:45'),
(13, 2, 17, '20211018132841.png', 'file', 'active', '2021-10-22 13:34:45'),
(14, 2, 18, '#', 'text', 'active', '2021-10-22 13:34:45'),
(15, 3, 5, 'Our Story', 'text', 'active', '2021-10-22 13:41:18'),
(16, 3, 6, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing', 'textarea', 'active', '2021-10-22 13:41:18'),
(17, 3, 7, '#', 'text', 'active', '2021-10-22 13:41:18'),
(18, 3, 8, '20211018124541.png', 'file', 'active', '2021-10-22 13:41:18'),
(19, 3, 9, '20211018124556.png', 'file', 'active', '2021-10-22 13:41:18'),
(20, 4, 1, 'Our Region', 'text', 'active', '2021-10-22 13:42:55'),
(21, 4, 2, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing', 'textarea', 'active', '2021-10-22 13:42:55'),
(22, 4, 3, '#', 'text', 'active', '2021-10-22 13:42:55'),
(23, 4, 4, '20211020135211.svg', 'file', 'active', '2021-10-22 13:42:55'),
(24, 5, 19, 'Barns Lane Farm', 'text', 'active', '2021-10-22 13:49:03'),
(25, 5, 20, '<h2 class=\"all-title small-heading\" style=\"margin-bottom: 25px; font-size: 25px; font-family: Merriweather, serif; color: rgb(103, 142, 127);\">What this means to us</h2>\r\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam<br></p>\r\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo</p><br>', 'textarea', 'active', '2021-10-22 13:49:03'),
(26, 5, 21, '#', 'text', 'active', '2021-10-22 13:49:03'),
(27, 5, 22, '#', 'text', 'active', '2021-10-22 13:49:03'),
(28, 5, 23, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo', 'textarea', 'active', '2021-10-22 13:49:03'),
(29, 5, 24, '20211022103937.svg', 'file', 'active', '2021-10-22 13:49:04'),
(30, 6, 1, 'Barns Lane Farm', 'text', 'active', '2021-10-22 13:51:09'),
(31, 6, 2, '<h2 class=\"all-title small-heading\" style=\"margin-bottom: 25px; font-size: 25px; font-family: Merriweather, serif; color: rgb(103, 142, 127);\">What this means to us</h2><p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy\r\neirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\nkasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy\r\neirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\nkasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n\r\n\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy\r\neirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\nkasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy\r\neirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita\r\nkasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy\r\neirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam\r\nvoluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet', 'textarea', 'active', '2021-10-22 13:51:09'),
(32, 6, 3, '#', 'text', 'active', '2021-10-22 13:51:09'),
(33, 6, 4, '20211022111718.svg', 'file', 'active', '2021-10-22 13:51:09'),
(34, 7, 1, 'jat', 'text', 'active', '2021-10-22 13:52:24'),
(35, 7, 2, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'textarea', 'active', '2021-10-22 13:52:24'),
(36, 7, 3, '#', 'text', 'active', '2021-10-22 13:52:24'),
(37, 7, 4, '20211022111718.svg', 'file', 'active', '2021-10-22 13:52:24'),
(38, 8, 25, 'Barns Lane Farm', 'text', 'active', '2021-10-25 05:37:10'),
(39, 8, 26, '<h2 style=\"margin-bottom: 17px; font-size: 25px; color: rgb(103, 142, 127); font-family: Merriweather, serif;\">What this means to us</h2><p style=\"margin-bottom: 28px; padding-right: 90px; color: rgb(103, 142, 127); font-family: Merriweather, serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing</p>', 'textarea', 'active', '2021-10-25 05:37:10'),
(40, 8, 27, 'Privacy Policy', 'text', 'active', '2021-10-25 05:37:10'),
(41, 8, 28, 'Terms & Conditions', 'text', 'active', '2021-10-25 05:37:10'),
(42, 8, 29, 'Download Media Kit', 'text', 'active', '2021-10-25 05:37:10'),
(43, 8, 30, 'Download Brochure', 'text', 'active', '2021-10-25 05:37:10'),
(44, 10, 1, 'fgh', 'text', 'active', '2021-10-28 07:05:47'),
(45, 10, 2, '<p>fgh</p>', 'textarea', 'active', '2021-10-28 07:05:47'),
(46, 10, 3, 'fhf', 'text', 'active', '2021-10-28 07:05:47'),
(47, 10, 4, '20211018132841.png', 'file', 'active', '2021-10-28 07:05:47'),
(48, 12, 31, 'Barns Lane Farm', 'text', 'active', '2021-10-29 07:38:01'),
(49, 12, 32, '<h2 class=\"all-title\" style=\"margin-bottom: 20px; font-weight: bold; font-size: 35px; font-family: Merriweather, serif; color: rgb(103, 142, 127);\">What this means to us</h2><p class=\"hidden-xs\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: unset; color: rgb(103, 142, 127); font-family: Merriweather, serif;\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est</p>', 'textarea', 'active', '2021-10-29 07:38:01'),
(50, 12, 33, '20211029073436.svg', 'file', 'active', '2021-10-29 07:38:01'),
(51, 12, 34, 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'textarea', 'active', '2021-10-29 07:38:01'),
(52, 13, 35, '20211022055812.png', 'file', 'active', '2021-10-29 09:04:55'),
(53, 13, 36, '20211029070511.mp4', 'file', 'active', '2021-10-29 09:04:55'),
(54, 13, 37, '20211029070511.mp4', 'file', 'active', '2021-10-29 09:04:55'),
(55, 13, 38, '20211029070511.mp4', 'file', 'active', '2021-10-29 09:04:55'),
(56, 13, 39, '20211029070511.mp4', 'file', 'active', '2021-10-29 09:04:55'),
(57, 13, 40, '20211029070511.mp4', 'file', 'active', '2021-10-29 09:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `page_section`
--

CREATE TABLE `page_section` (
  `pagesection_id` int NOT NULL,
  `section_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `template_id` int DEFAULT NULL,
  `template_records_no` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `page_section`
--

INSERT INTO `page_section` (`pagesection_id`, `section_name`, `template_id`, `template_records_no`, `page_id`, `status`, `created_at`) VALUES
(1, 'Section A', 2, NULL, 1, 'active', '2021-10-22 13:25:14'),
(2, 'Section B', 3, NULL, 1, 'active', '2021-10-22 13:34:45'),
(3, 'Section A', 2, NULL, 2, 'active', '2021-10-22 13:41:18'),
(4, 'Section A', 1, NULL, 3, 'active', '2021-10-22 13:42:55'),
(5, 'Content left', 4, NULL, 3, 'active', '2021-10-22 13:49:03'),
(6, 'Content right', 1, NULL, 3, 'active', '2021-10-22 13:51:09'),
(7, 'Content middle', 1, NULL, 3, 'active', '2021-10-22 13:52:24'),
(8, 'Section A', 5, NULL, 6, 'active', '2021-10-25 05:37:10'),
(10, 'Our', 1, NULL, 1, 'active', '2021-10-28 07:05:47'),
(12, 'Section B', 6, NULL, 2, 'active', '2021-10-29 07:38:01'),
(13, 'Section C', 7, NULL, 2, 'active', '2021-10-29 09:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mangilal@strivemindz.com', '$2y$10$m89sX83JJ1kIaeQElsXY2uDF6iH/UvOQ2Q86CR3SDiWjNNNpUCJDS', '2021-10-14 00:09:56'),
('barnslane@gmail.com', '$2y$10$qr89o6OjnNKHsJW4NgpeQu7B/qpqLI.isHTw7FJXzOT0Isxx1B.xW', '2021-10-14 00:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `region_maps`
--

CREATE TABLE `region_maps` (
  `region_maps_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `url` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `region_maps`
--

INSERT INTO `region_maps` (`region_maps_id`, `title`, `slug`, `url`, `status`, `created_at`) VALUES
(1, 'Brewery 1', 'brewery-1', 'Brewery1', 'active', '2021-10-25 09:53:48'),
(2, 'Brewery 2', 'brewery-2', 'Brewery22', 'active', '2021-10-25 11:57:31'),
(3, 'Brewery 3', 'brewery-3', 'Brewery3', 'active', '2021-10-25 13:39:05'),
(4, 'Brewery 4', 'brewery-4', 'Brewery4', 'active', '2021-10-25 13:39:16'),
(5, 'Brewery 5', 'brewery-5', 'Brewery5', 'active', '2021-10-25 13:39:50'),
(7, 'dfgfgd', 'dfgfg', 'fgdf', 'active', '2021-10-28 08:58:54'),
(8, 'Education Fee for needy Students 4000+', 'education-fee-for-needy-students-4000-', 'http://localhost/Barns_Lane_Farm/', 'inactive', '2021-11-02 06:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `name` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int NOT NULL,
  `project_name` varchar(522) NOT NULL,
  `description` longtext NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `logo_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `footer_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `favicon_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `copyright` text NOT NULL,
  `instagram` text,
  `facebook` text,
  `twitter` text,
  `youtube` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `project_name`, `description`, `phone`, `email`, `logo_image`, `footer_image`, `favicon_image`, `copyright`, `instagram`, `facebook`, `twitter`, `youtube`) VALUES
(1, 'Barns Lane Farm', 'Become part of the Barns Lane Farm Community', '+1-492-4918-395', 'info@barnslanefarm.com.au', '20211014110605.svg', '20211014110945.svg', '20211014110955.svg', 'Barns Lane Farm Pty Ltd. © 2021   |   Site By', 'http://instagram.com', 'http://facebook', 'http://twitter', 'http://youtube');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `template_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`template_id`, `name`, `status`, `created_at`) VALUES
(1, 'Default', 'active', '2021-10-22 13:21:23'),
(2, 'Template 1', 'active', '2021-10-22 13:22:40'),
(3, 'Template 2', 'active', '2021-10-22 13:32:44'),
(4, 'Template 3', 'active', '2021-10-22 13:46:09'),
(5, 'Template 4', 'active', '2021-10-25 05:35:59'),
(6, 'Template 5', 'active', '2021-10-29 07:32:35'),
(7, 'Video Tabing', 'active', '2021-10-29 09:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `templatemeta`
--

CREATE TABLE `templatemeta` (
  `templatemeta_id` int NOT NULL,
  `template_id` int NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` enum('text','textarea','file') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `templatemeta`
--

INSERT INTO `templatemeta` (`templatemeta_id`, `template_id`, `meta_key`, `meta_value`, `type`) VALUES
(1, 1, 'title', 'Title', 'text'),
(2, 1, 'description', 'Description', 'textarea'),
(3, 1, 'button-url', 'Button Url', 'text'),
(4, 1, 'feactured-image', 'Feactured image', 'file'),
(5, 2, 'title', 'Title', 'text'),
(6, 2, 'description', 'Description', 'textarea'),
(7, 2, 'button-url', 'Button Url', 'text'),
(8, 2, 'hero-image', 'Hero image', 'file'),
(9, 2, 'secondary-image', 'Secondary image', 'file'),
(10, 3, 'title', 'Title', 'text'),
(11, 3, 'left-description', 'Left Description', 'textarea'),
(12, 3, 'left-hero-image', 'Left hero Image', 'file'),
(13, 3, 'left-video-url', 'Left Video Url', 'text'),
(14, 3, 'ritght-title', 'Ritght Title', 'text'),
(15, 3, 'ritght-description', 'Ritght Description', 'textarea'),
(16, 3, 'right-button-url', 'Right Button Url', 'text'),
(17, 3, 'right-hero-image', 'Right Hero image', 'file'),
(18, 3, 'right-evnt-button-url', 'Right evnt button url', 'text'),
(19, 4, 'title', 'Title', 'text'),
(20, 4, 'left-description', 'Left Description', 'textarea'),
(21, 4, 'first-button-url', 'First Button Url', 'text'),
(22, 4, 'second-button-url', 'Second Button Url', 'text'),
(23, 4, 'right-description', 'Right Description', 'textarea'),
(24, 4, 'hero-image', 'Hero image', 'file'),
(25, 5, 'title', 'Title', 'text'),
(26, 5, 'description', 'Description', 'textarea'),
(27, 5, 'privacy-policy-url', 'Privacy Policy Url', 'text'),
(28, 5, 'terms-&-conditions-url', 'Terms & Conditions Url', 'text'),
(29, 5, 'download-media-kit-url', 'Download Media Kit Url', 'text'),
(30, 5, 'download-brochure-url', 'Download Brochure Url', 'text'),
(31, 6, 'title', 'Title', 'text'),
(32, 6, 'left-content', 'Left Content', 'textarea'),
(33, 6, 'logo-image', 'Logo image', 'file'),
(34, 6, 'right-content', 'Right Content', 'textarea'),
(35, 7, 'title', 'Main Image', 'file'),
(36, 7, 'first-tab-video', 'First tab video', 'file'),
(37, 7, 'second-tab-video', 'Second tab Video', 'file'),
(38, 7, 'third-tab-video', 'Third tab video', 'file'),
(39, 7, 'frouth-tab-video', 'Frouth tab video', 'file'),
(40, 7, 'fifth-tab-video', 'Fifth tab video', 'file');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive','cancel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `role` int NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `status`, `role`, `created_at`) VALUES
(1, 'Barns Lane Farms', 'mangilal@strivemindz.com', NULL, '$2y$10$G2Ox/YGe5SWaMrmt9M1fSOq020nadBo5c8LTFE/tOZ/Wn6PI516ve', 'KfQsO3vnwLbcWhkFuGxQlNRx67An1BQ0LtmMYH2Y4tBlVPhXJ1wwJsnqGSzL', 'active', 1, '2021-09-03 01:28:46'),
(31, 'Barns Lane Farm', 'barnslane@gmail.com', NULL, '$2y$10$BJ8nJtd0Blk1TOQy1yuaYuiabMVT1KzsHJx35Gl3tiD9GFlwvHU1u', NULL, 'inactive', 2, '2021-10-13 13:30:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`hero_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `maps_meta`
--
ALTER TABLE `maps_meta`
  ADD PRIMARY KEY (`maps_meta_id`),
  ADD KEY `region_maps_id` (`region_maps_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `menu_category`
--
ALTER TABLE `menu_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `page_content`
--
ALTER TABLE `page_content`
  ADD PRIMARY KEY (`pagecontent_id`),
  ADD KEY `page_section_id` (`page_section_id`);

--
-- Indexes for table `page_section`
--
ALTER TABLE `page_section`
  ADD PRIMARY KEY (`pagesection_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `template_id` (`template_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `region_maps`
--
ALTER TABLE `region_maps`
  ADD PRIMARY KEY (`region_maps_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `templatemeta`
--
ALTER TABLE `templatemeta`
  ADD PRIMARY KEY (`templatemeta_id`),
  ADD KEY `template_id` (`template_id`);

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
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `hero_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `maps_meta`
--
ALTER TABLE `maps_meta`
  MODIFY `maps_meta_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `menu_category`
--
ALTER TABLE `menu_category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_content`
--
ALTER TABLE `page_content`
  MODIFY `pagecontent_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `page_section`
--
ALTER TABLE `page_section`
  MODIFY `pagesection_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region_maps`
--
ALTER TABLE `region_maps`
  MODIFY `region_maps_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `template_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `templatemeta`
--
ALTER TABLE `templatemeta`
  MODIFY `templatemeta_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maps_meta`
--
ALTER TABLE `maps_meta`
  ADD CONSTRAINT `maps_meta_ibfk_1` FOREIGN KEY (`region_maps_id`) REFERENCES `region_maps` (`region_maps_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `menu_category` (`category_id`);

--
-- Constraints for table `page_content`
--
ALTER TABLE `page_content`
  ADD CONSTRAINT `page_content_ibfk_1` FOREIGN KEY (`page_section_id`) REFERENCES `page_section` (`pagesection_id`);

--
-- Constraints for table `page_section`
--
ALTER TABLE `page_section`
  ADD CONSTRAINT `page_section_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`page_id`),
  ADD CONSTRAINT `page_section_ibfk_2` FOREIGN KEY (`template_id`) REFERENCES `template` (`template_id`);

--
-- Constraints for table `templatemeta`
--
ALTER TABLE `templatemeta`
  ADD CONSTRAINT `templatemeta_ibfk_1` FOREIGN KEY (`template_id`) REFERENCES `template` (`template_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
