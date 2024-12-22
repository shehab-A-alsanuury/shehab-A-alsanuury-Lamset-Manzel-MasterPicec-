-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 22, 2024 at 01:23 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lamset-manzel-hoom-food`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int NOT NULL DEFAULT '0',
  `state_id` int NOT NULL DEFAULT '0',
  `city_id` int NOT NULL DEFAULT '0',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_shipping` int NOT NULL DEFAULT '0',
  `default_billing` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `area_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `email`, `phone`, `country_id`, `state_id`, `city_id`, `address`, `default_shipping`, `default_billing`, `created_at`, `updated_at`, `address_type`, `area_id`) VALUES
(1, 70, 'David Warner', 'user@gmail.com', '123-343-4444', 20, 18, 27, 'Amman, Abdoun', 0, 0, '2024-01-12 23:06:16', '2024-01-27 05:33:56', 'office', 5),
(2, 70, 'John Doe', 'user@gmail.com', '123-874-6548', 20, 19, 30, 'Irbid, University Street', 0, 0, '2024-01-12 23:06:54', '2024-01-12 23:06:54', 'home', 3),
(8, 70, 'dfgfdgfd gdfgfd', 'seller@gmail.com', '546546546456', 0, 0, 0, 'Zarqa, New Zarqa', 0, 0, '2024-01-27 05:21:05', '2024-01-27 05:21:05', 'home', 3),
(9, 70, 'demo data', 'sticky67@jcnorris.com', '91786664435', 0, 0, 0, 'Madaba, Al-Khalidi', 0, 0, '2024-01-27 06:17:22', '2024-01-27 06:17:22', 'home', 3),
(10, 74, 'Christian Sandoval Graiden Kinney', 'jisuza@mailinator.com', '+1 (122) 145-7097', 0, 0, 0, 'Salt, Downtown', 0, 0, '2024-01-31 02:50:31', '2024-01-31 02:50:31', 'home', 4),
(11, 74, 'Phelan Duncan Channing Patton', 'hipofa@mailinator.com', '+1 (366) 754-5043', 0, 0, 0, 'Aqaba, Al-Hammamat Al-Tunisia Street', 0, 0, '2024-01-31 02:50:52', '2024-01-31 02:50:52', 'office', 2),
(12, 74, 'Ingrid Baxter Marshall Fields', 'rezudyco@mailinator.com', '+1 (872) 732-7765', 0, 0, 0, 'Karak, Al-Mazar', 0, 0, '2024-01-31 02:58:12', '2024-01-31 02:58:12', 'home', 2),
(13, 75, 'Erin Ayers Ora Pruitt', 'vete@mailinator.com', '+1 (291) 913-1571', 0, 0, 0, 'Tafila, Al-Eis', 0, 0, '2024-01-31 23:58:17', '2024-01-31 23:58:17', 'home', 4),
(14, 75, 'Nolan Hull Isadora Ferguson', 'zikexa@mailinator.com', '+1 (286) 393-1084', 0, 0, 0, 'Ma’an, King Hussein Street', 0, 0, '2024-02-01 01:58:39', '2024-02-01 01:58:39', 'office', 3),
(15, 75, 'Rebekah Rhodes Nigel Ashley', 'numycopexo@mailinator.com', '+1 (646) 384-1131', 0, 0, 0, 'Jerash, City Center', 0, 0, '2024-02-01 01:59:07', '2024-02-01 01:59:07', 'office', 4),
(16, 94, 'osama asasfeh', 'e7caad868d@mailmaxy.one', '0123455452', 0, 0, 0, 'Applied Science University\r\nShafa Badran', 0, 0, '2024-12-13 23:33:45', '2024-12-13 23:33:45', 'home', 2),
(21, 209, 'hxxunhxnusn', 'test@test.cp', '23434234', 0, 0, 0, 'Applied Science UniversityShafa Badran', 0, 0, '2024-12-19 01:17:31', '2024-12-19 15:26:36', 'home', 2),
(22, 209, 'test test', 'test@test', '1334567891', 0, 0, 0, 'test test', 0, 0, '2024-12-19 04:40:19', '2024-12-19 04:40:19', 'home', 4),
(23, 236, 'TEST TEST', '3559138a6f@emailvb.pro', '123456789', 0, 0, 0, 'TEST', 0, 0, '2024-12-22 07:00:00', '2024-12-22 07:00:00', 'home', 6),
(24, 239, 'TEST TEST', '1ea50879c3@emailvb.pro', '1234123411', 0, 0, 0, '1ea50879c3@emailvb.pro', 0, 0, '2024-12-22 07:12:05', '2024-12-22 07:12:05', 'office', 4);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_role` tinyint(1) NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `image`, `password`, `admin_role`, `status`, `address`, `phone`, `location`, `created_at`, `updated_at`) VALUES
(1, 'shehab', 'admin@gmail.com', 'uploads/custom-images/shehab-1734863905.jpeg', '$2y$12$ET4FP26bqqdTpJOgy6Qbre9.1XcGGrjvrGvkl5qPoFFNhfxJZ05HK', 1, 1, NULL, NULL, NULL, '2022-11-24 07:01:37', '2024-12-14 22:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `apply_coupons`
--

DROP TABLE IF EXISTS `apply_coupons`;
CREATE TABLE IF NOT EXISTS `apply_coupons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `copun_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `admin_id`, `slug`, `blog_category_id`, `image`, `views`, `status`, `created_at`, `updated_at`) VALUES
(30, 1, 'authentic-jordanian-flavors-a-culinary-journey-test', 33, 'uploads/custom-images/-2023-10-22-11-17-03-6828.png', 0, 'inactive', '2023-10-22 05:17:03', '2024-12-22 07:32:45'),
(31, 1, 'chef-spotlight-behind-the-scenes-of-culinary-mastery', 33, 'uploads/custom-images/-2023-10-22-11-18-01-4058.png', 0, 'inactive', '2023-10-22 05:18:01', '2024-12-22 07:32:44'),
(32, 1, 'timehonored-recipes-with-a-modern-twist', 33, 'uploads/custom-images/-2023-10-22-11-19-54-9272.png', 0, 'inactive', '2023-10-22 05:19:54', '2024-12-22 07:32:43'),
(35, 1, 'flavorful-fusion-exploring-the-art-of-culinary-blending-1', 33, 'uploads/custom-images/-2024-01-31-12-10-09-9234.png', 0, 'inactive', '2023-10-22 05:17:03', '2024-12-22 07:32:42'),
(36, 1, 'chef-spotlight-behind-the-scenes-of-culinary-mastery-1', 33, 'uploads/custom-images/-2024-01-31-12-09-57-3229.png', 0, 'inactive', '2023-10-22 05:18:01', '2024-12-22 07:32:41'),
(37, 1, 'preserving-tradition-jordanian-recipes', 33, 'uploads/custom-images/-2024-01-31-12-09-45-5316.png', 0, 'inactive', '2023-10-22 05:19:54', '2024-12-22 07:32:40'),
(41, 1, 'sdsdsds', 33, 'uploads/custom-images/sdsd-2024-12-22-10-32-37-7216.jpeg', 0, 'active', '2024-12-22 07:32:37', '2024-12-22 07:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(33, 'children', 'active', '2023-10-15 05:10:50', '2024-01-11 05:19:54'),
(34, 'chatgpt', 'active', '2023-10-15 22:13:38', '2024-01-11 05:21:36'),
(38, 'Explicabo Nihil at', 'active', '2024-12-14 23:21:45', '2024-12-14 23:21:45'),
(39, 'Repudiandae omnis in', 'active', '2024-12-14 23:22:07', '2024-12-14 23:22:07'),
(41, 'system', 'active', '2024-12-19 05:48:37', '2024-12-19 05:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_translate`
--

DROP TABLE IF EXISTS `blog_category_translate`;
CREATE TABLE IF NOT EXISTS `blog_category_translate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blog_category_id` int NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_category_translate`
--

INSERT INTO `blog_category_translate` (`id`, `blog_category_id`, `lang_code`, `name`, `created_at`, `updated_at`) VALUES
(32, 33, 'en', 'Children', '2023-10-15 05:10:50', '2024-01-11 05:19:54'),
(36, 34, 'en', 'ChatGPT', '2023-10-15 22:13:38', '2024-01-11 05:21:36'),
(70, 38, 'en', 'Libby Macias', '2024-12-14 23:21:45', '2024-12-14 23:21:45'),
(71, 39, 'en', 'Amanda Gilbert', '2024-12-14 23:22:07', '2024-12-14 23:22:07'),
(73, 41, 'en', 'system', '2024-12-19 05:48:37', '2024-12-19 05:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE IF NOT EXISTS `blog_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blog_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `user_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(5, 35, 209, 'test test test test', 1, '2024-12-19 02:09:33', '2024-12-19 05:40:17'),
(6, 35, 209, 'hii', 1, '2024-12-19 15:29:39', '2024-12-22 07:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `blog_translate`
--

DROP TABLE IF EXISTS `blog_translate`;
CREATE TABLE IF NOT EXISTS `blog_translate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `seo_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_translate`
--

INSERT INTO `blog_translate` (`id`, `blog_id`, `lang_code`, `title`, `description`, `tag`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(32, 30, 'en', 'Authentic Jordanian Flavors: A Culinary Journey test', '&lt;p&gt;Explore the rich and diverse flavors of Jordanian cuisine at Lamset Manzel. From traditional dishes passed down through generations to modern interpretations, we bring the heart of Jordan to your plate.&lt;/p&gt;', 'Stories, Media', 'Authentic Jordanian Flavors at Lamset Manzel', 'Dive into the authentic flavors of Jordanian cuisine at Lamset Manzel, where tradition meets modern culinary artistry.', '2023-10-22 05:17:03', '2024-12-19 09:21:50'),
(36, 31, 'en', 'Meet the Chefs: Crafting Jordanian Culinary Excellence', '<p>Get a behind-the-scenes look at our talented chefs who pour their passion into every dish, preserving the heritage of Jordanian cuisine while adding their unique touches.</p>', 'Stories, Media', 'Meet the Talented Chefs of Lamset Manzel', 'Explore the passion and craftsmanship of the chefs at Lamset Manzel, bringing Jordanian dishes to life.', '2023-10-22 05:18:01', '2024-01-15 23:33:26'),
(40, 32, 'en', 'Preserving Tradition: Jordanian Recipes with a Twist', '<p>Discover how Lamset Manzel masterfully blends time-honored Jordanian recipes with a modern twist, creating a culinary experience that honors tradition and innovation.</p>', 'Stories, Media', 'Jordanian Recipes with a Modern Twist by Lamset Manzel', 'Discover the unique blend of tradition and innovation in Jordanian recipes crafted at Lamset Manzel.', '2023-10-22 05:19:54', '2024-01-15 23:33:13'),
(68, 35, 'en', 'Authentic Jordanian Flavors: A Culinary Journey', '<p>Explore the rich and diverse flavors of Jordanian cuisine at Lamset Manzel. From traditional dishes passed down through generations to modern interpretations, we bring the heart of Jordan to your plate.</p>', 'Stories, Media', 'Authentic Jordanian Flavors at Lamset Manzel', 'Dive into the authentic flavors of Jordanian cuisine at Lamset Manzel, where tradition meets modern culinary artistry.', '2023-10-22 05:17:03', '2024-01-15 23:33:40'),
(71, 36, 'en', 'Meet the Chefs: Crafting Jordanian Culinary Excellence', '<p>Get a behind-the-scenes look at our talented chefs who pour their passion into every dish, preserving the heritage of Jordanian cuisine while adding their unique touches.</p>', 'Stories, Media', 'Meet the Talented Chefs of Lamset Manzel', 'Explore the passion and craftsmanship of the chefs at Lamset Manzel, bringing Jordanian dishes to life.', '2023-10-22 05:18:01', '2024-01-15 23:33:26'),
(74, 37, 'en', 'Preserving Tradition: Jordanian Recipes', '&lt;p&gt;Discover how Lamset Manzel masterfully blends time-honored Jordanian recipes with a modern twist, creating a culinary experience that honors tradition and innovation.&lt;/p&gt;', 'Stories, Media', 'Jordanian Recipes with a Modern Twist by Lamset Manzel', 'Discover the unique blend of tradition and innovation in Jordanian recipes crafted at Lamset Manzel.', '2023-10-22 05:19:54', '2024-12-14 23:20:49'),
(80, 41, 'en', 'sdsd', '&lt;p&gt;sd&lt;/p&gt;', 'sds', 'sds', 'sds', '2024-12-22 07:32:37', '2024-12-22 07:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_gest` int DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `delevery_day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delevery_time_id` int DEFAULT NULL,
  `coupon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delevery_charge` double DEFAULT NULL,
  `vat_charge` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `type`, `number_of_gest`, `address_id`, `delevery_day`, `delevery_time_id`, `coupon`, `discount_amount`, `delevery_charge`, `vat_charge`, `total`, `grand_total`, `created_at`, `updated_at`) VALUES
(25, 123, 'delivery', NULL, 17, 'today', 1, NULL, '0', 40, 7.25, 145, 192.25, '2024-12-14 22:36:07', '2024-12-14 22:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `cart_addons`
--

DROP TABLE IF EXISTS `cart_addons`;
CREATE TABLE IF NOT EXISTS `cart_addons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cart_id` int DEFAULT NULL,
  `addons_id` int DEFAULT NULL,
  `qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE IF NOT EXISTS `cart_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cart_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `status`, `image`, `created_at`, `updated_at`) VALUES
(48, 'traditional', 'active', 'uploads/custom-images/delish-burger-2024-01-23-12-06-36-1053.png', '2023-10-18 04:04:24', '2024-12-10 21:14:41'),
(51, 'meat', 'active', 'uploads/custom-images/pasta-2024-01-23-12-09-54-1343.png', '2023-10-18 04:18:24', '2024-12-14 23:05:48'),
(52, 'grilled', 'active', 'uploads/custom-images/fried-rice-2024-01-23-12-07-44-9848.png', '2023-10-18 04:20:19', '2024-12-10 21:14:00'),
(53, 'vegetarian', 'active', 'uploads/custom-images/chicken-2024-01-23-12-07-55-7931.png', '2023-10-18 04:21:54', '2024-12-10 21:14:53'),
(56, 'snacks', 'active', 'uploads/custom-images/nachos-2024-01-31-11-33-41-6622.png', '2024-01-31 05:06:05', '2024-12-10 16:10:55'),
(57, 'desserts', 'active', 'uploads/custom-images/tacos-2024-01-31-11-33-57-7846.png', '2024-01-31 05:06:29', '2024-12-10 16:10:55'),
(60, '6565', 'inactive', 'uploads/custom-images/test-2024-12-19-10-20-59-6406.png', '2024-12-19 07:20:59', '2024-12-19 10:31:34'),
(62, 'dfdfdfd', 'active', 'uploads/custom-images/dfdf-2024-12-19-13-38-44-6822.png', '2024-12-19 10:38:44', '2024-12-19 10:38:44'),
(63, 'shehab-alsanuury', 'active', 'uploads/custom-images/shehab-alsanuury-2024-12-19-13-40-56-5555.png', '2024-12-19 10:40:56', '2024-12-19 10:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `category_translate`
--

DROP TABLE IF EXISTS `category_translate`;
CREATE TABLE IF NOT EXISTS `category_translate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_translate`
--

INSERT INTO `category_translate` (`id`, `category_id`, `lang_code`, `name`, `created_at`, `updated_at`) VALUES
(21, 48, 'en', 'Traditional ', '2023-10-18 04:04:24', '2024-12-10 16:15:19'),
(33, 51, 'en', 'Meat ', '2023-10-18 04:18:24', '2024-12-10 16:15:19'),
(37, 52, 'en', 'Grilled ', '2023-10-18 04:20:19', '2024-12-10 16:15:19'),
(41, 53, 'en', 'Vegetarian ', '2023-10-18 04:21:54', '2024-12-10 16:15:19'),
(87, 56, 'en', 'Snacks', '2024-01-31 05:06:05', '2024-12-10 16:15:19'),
(90, 57, 'en', 'Desserts', '2024-01-31 05:06:29', '2024-12-10 16:15:19'),
(95, 60, 'en', 'test', '2024-12-19 07:20:59', '2024-12-19 07:20:59'),
(97, 62, 'en', 'dfdf', '2024-12-19 10:38:44', '2024-12-19 10:38:44'),
(98, 63, 'en', 'Shehab Alsanuury', '2024-12-19 10:40:56', '2024-12-19 10:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
CREATE TABLE IF NOT EXISTS `contact_messages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(18, 'JohnTruch', 'arikerer278@gmail.com', '85947835464', 'Hallo    wrote about     price', 'Hola, volia saber el seu preu.', '2024-12-14 15:13:23', '2024-12-14 15:13:23'),
(19, 'TedTruch', 'moqagides18@gmail.com', '87964149491', 'Hi  i wrote about your the price for reseller', 'Hallo, ek wou jou prys ken.', '2024-12-14 18:07:00', '2024-12-14 18:07:00'),
(20, 'Lester Knight', 'camo@mailinator.com', '+1 (588) 489-9511', 'Minima ut provident', 'In quibusdam volupta', '2024-12-14 22:27:45', '2024-12-14 22:27:45'),
(21, 'awkhdui32qhd', 'asdj28e@gmail.com', '32897euiwhd', 'asndasd', 'jwkhdu2hd32', '2024-12-14 22:28:11', '2024-12-14 22:28:11'),
(22, 'Iola Pe320483ters', 'ridamesiv@m234789324ailinator.com', '+1 (34cksdjksd1) 107-7784', 'Temporibus voluptate', 'Eaque optio aute cu', '2024-12-14 22:29:09', '2024-12-14 22:29:09'),
(24, 'JohnTruch', 'arikerer278@gmail.com', '83111378792', 'Hallo, i writing about your the prices', 'Hola, quería saber tu precio..', '2024-12-17 15:48:36', '2024-12-17 15:48:36'),
(25, 'Kuame Figueroa', 'papil@mailinator.com', 'test', 'Et qui qui et conseq', 'Consequatur nesciunt', '2024-12-19 02:04:32', '2024-12-19 02:04:32'),
(27, 'Laura Hutchinson', 'zironyze@mailinator.com', '1992807612', 'Quaerat minima deser', 'Aut cum voluptas lau', '2024-12-19 02:07:50', '2024-12-19 02:07:50'),
(28, 'shehab', '14b80f5cc3@emailvb.pro', '0788868344', 'hi', 'hi', '2024-12-19 15:28:48', '2024-12-19 15:28:48'),
(29, 'yutyurtr jghmgmhgmh', 'alsanuuryshehab@gmail.com', '0788868355', 'سبسبسب', 'يبسبسبب', '2024-12-21 15:38:11', '2024-12-21 15:38:11'),
(30, '3559138a6f@emailvb.pro', '3559138a6f@emailvb.pro', '1234123433', 'asdf', 'asdf', '2024-12-22 07:05:03', '2024-12-22 07:05:03'),
(31, 'SHEHAB', '1ea50879c3@emailvb.pro', '1234123411', 'YA ALLAH', 'YA ALLAH', '2024-12-22 07:10:21', '2024-12-22 07:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `max_quantity` int NOT NULL DEFAULT '0',
  `min_purchase_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_qty` int NOT NULL DEFAULT '0',
  `status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `offer_type`, `discount`, `max_quantity`, `min_purchase_price`, `expired_date`, `apply_qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Happy New Year', 'newyear', '$', 10, 4, '44', '2025-12-18', 7, 'active', '2022-11-16 02:18:50', '2024-12-22 07:29:49'),
(5, 'test', 'Rerum sit laboris i', '%', 43, 591, '87', '1992-04-18', 0, 'active', '2024-12-14 23:13:28', '2024-12-19 08:55:48'),
(8, 'system update', 'test test', '$', 10, 5454, '100', '2025-01-01', 0, 'active', '2024-12-19 08:59:57', '2024-12-19 09:00:14'),
(10, 'TEST', 'TEST', '$', 10, 393, '10', '2027-10-26', 3, 'active', '2024-12-19 09:39:19', '2024-12-22 07:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `delevery_areas`
--

DROP TABLE IF EXISTS `delevery_areas`;
CREATE TABLE IF NOT EXISTS `delevery_areas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delevery_areas`
--

INSERT INTO `delevery_areas` (`id`, `area_name`, `max_time`, `min_time`, `fee`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Abdoun, Amman', '60', '333', 4, 1, '2024-01-27 03:43:49', '2024-12-19 10:43:44'),
(4, 'Al-Rusifa, Zarqa', '45', '35', 30, 1, '2024-01-27 03:44:48', '2024-01-27 03:44:48'),
(5, 'Rainbow Street, Amman', '20', '15', 25, 1, '2024-01-27 03:45:11', '2024-01-27 03:45:11'),
(6, 'test test test', '30', '20', 20, 1, '2024-12-19 09:11:00', '2024-12-19 09:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Password Reset', 'Password Reset', '&lt;h2 style=&quot;color: #444;&quot;&gt;Password Reset - Lamset Manzel&lt;/h2&gt;\r\n&lt;p&gt;Dear &lt;strong&gt;{{name}}&lt;/strong&gt;,&lt;/p&gt;\r\n&lt;p&gt;Do you want to reset your password? Please click the link below to reset your password:&lt;/p&gt;\r\n&lt;p&gt;&lt;a style=&quot;background-color: #28a745; color: #fff; text-decoration: none; padding: 10px 15px; border-radius: 5px; display: inline-block;&quot; href=&quot;{{reset_link}}&quot;&gt;Reset Your Password&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;Thank you,&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Lamset Manzel&lt;/strong&gt;&lt;/p&gt;\r\n&lt;hr style=&quot;border: none; border-top: 1px solid #ddd; margin: 20px 0;&quot;&gt;\r\n&lt;p style=&quot;font-size: 0.9em; color: #777;&quot;&gt;If you did not request a password reset, please ignore this email.&lt;/p&gt;', NULL, '2024-12-13 22:20:01'),
(2, 'Contact Email', 'Contact Email', '<div style=\"background-color: #ffffff; padding: 20px; border: 1px solid #ddd; border-radius: 8px; max-width: 600px; margin: 0 auto; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\">\r\n    <h2 style=\"color: #444;\">Contact Email</h2>\r\n    <p>Name: <strong>{{name}}</strong></p>\r\n    <p>Email: <strong>{{email}}</strong></p>\r\n    <p>Phone: <strong>{{phone}}</strong></p>\r\n    <p>Subject: <strong>{{subject}}</strong></p>\r\n    <p>Message: {{message}}</p>\r\n</div>', NULL, '2024-12-13 21:00:26'),
(3, 'Subscribe Notification', 'Subscribe Notification', '<div style=\"background-color: #ffffff; padding: 20px; border: 1px solid #ddd; border-radius: 8px; max-width: 600px; margin: 0 auto; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\">\r\n    <h2 style=\"color: #444;\">Subscribe Notification</h2>\r\n    <p>Hi there,</p>\r\n    <p>Congratulations! Your subscription has been created successfully. Please click the link below to enjoy our newsletter:</p>\r\n    <p>\r\n        <a href=\"{{verify_link}}\" style=\"background-color: #007bff; color: #fff; text-decoration: none; padding: 10px 15px; border-radius: 5px; display: inline-block;\">Verify Your Subscription</a>\r\n    </p>\r\n    <p>Thank you,</p>\r\n    <p><strong>Lamset Manzel</strong></p>\r\n</div>', NULL, '2024-12-13 21:00:10'),
(4, 'User Verification', 'User Verification', '&lt;p&gt;!DOCTYPE html&lt;br&gt;html lang=&quot;en&quot;&lt;br&gt;head&lt;br&gt;&amp;nbsp; &amp;nbsp; meta charset=&quot;UTF-8&quot;&lt;br&gt;&amp;nbsp; &amp;nbsp; meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&lt;br&gt;&amp;nbsp; &amp;nbsp; titleAccount Verification - Lamset Manzel/title&lt;br&gt;&amp;nbsp; &amp;nbsp; style&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; body {&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; font-family: Arial, sans-serif;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; line-height: 1.6;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; color: #333;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; background-color: #f9f9f9;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; margin: 0;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; padding: 20px;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; }&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; .container {&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; background-color: #fff;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; padding: 20px;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; border: 1px solid #ddd;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; border-radius: 8px;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; max-width: 600px;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; margin: 20px auto;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; }&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; .header {&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; font-size: 1.5em;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; font-weight: bold;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; margin-bottom: 10px;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; color: #444;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; }&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; .content p {&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; margin: 10px 0;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; }&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; .content strong {&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; color: #555;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; }&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; .verify-link {&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; display: inline-block;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; background-color: #007bff;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; color: #fff;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; padding: 10px 15px;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; border-radius: 5px;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; text-decoration: none;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; font-weight: bold;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; }&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; .footer {&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; margin-top: 20px;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; font-size: 0.9em;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; color: #777;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; }&lt;br&gt;&amp;nbsp; &amp;nbsp; /style&lt;br&gt;/head&lt;br&gt;body&lt;br&gt;&amp;nbsp; &amp;nbsp; div class=&quot;container&quot;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; div class=&quot;header&quot;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Account Verification - Lamset Manzel&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; /div&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; div class=&quot;content&quot;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; pDear strong{{user_name}}/strong,/p&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; pCongratulations! Your account has been created successfully. Please click the link below to verify your account./p&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; p&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; a href=&quot;{{verify_link}}&quot; class=&quot;verify-link&quot;Verify Your Account/a&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; /p&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; pThank you,/p&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; pstrongLamset Manzel/strong/p&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; /div&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; div class=&quot;footer&quot;&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; If you did not create this account, please disregard this email.&lt;br&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; /div&lt;br&gt;&amp;nbsp; &amp;nbsp; /div&lt;br&gt;/body&lt;br&gt;/html&lt;/p&gt;', NULL, '2024-12-13 21:46:08'),
(6, 'Order Successfully', 'Order Successfully', '<div style=\"background-color: #ffffff; padding: 20px; border: 1px solid #ddd; border-radius: 8px; max-width: 600px; margin: 0 auto; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\">\r\n    <h2 style=\"color: #444;\">Order Confirmation - Lamset Manzel</h2>\r\n    <p>Hi <strong>{{user_name}}</strong>,</p>\r\n    <p>Your order has been successfully confirmed. Below are the details:</p>\r\n    <p>Total Amount: <strong>{{total_amount}}</strong></p>\r\n    <p>Payment Method: <strong>{{payment_method}}</strong></p>\r\n    <p>Payment Status: <strong>{{payment_status}}</strong></p>\r\n    <p>Order Status: <strong>{{order_status}}</strong></p>\r\n    <p>Order Date: <strong>{{order_date}}</strong></p>\r\n    <p>Order Details: {{order_detail}}</p>\r\n    <p>Thank you,</p>\r\n    <p><strong>Lamset Manzel</strong></p>\r\n</div>', NULL, '2024-12-13 21:00:19'),
(7, 'Order Confirmed', 'Order Confirmed', '<div style=\"background-color: #ffffff; padding: 20px; border: 1px solid #ddd; border-radius: 8px; max-width: 600px; margin: 0 auto; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);\">\r\n    <h2 style=\"color: #444;\">Order Update - Lamset Manzel</h2>\r\n    <p>Hi <strong>{{user_name}}</strong>,</p>\r\n    <p>Your order status has been updated:</p>\r\n    <p>Payment Status: <strong>{{payment_status}}</strong></p>\r\n    <p>Order Status: <strong>{{order_status}}</strong></p>\r\n    <p>Delivery Day: <strong>{{delevery_day}}</strong></p>\r\n    <p>Delivery Time: <strong>{{delevery_time_id}}</strong></p>\r\n    <p>Number of Guests: <strong>{{number_of_gest}}</strong></p>\r\n    <p>Order Type: <strong>{{type}}</strong></p>\r\n    <p>Thank you,</p>\r\n    <p><strong>Lamset Manzel</strong></p>\r\n</div>', '2023-12-11 03:39:27', '2023-12-10 22:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `created_at`, `updated_at`) VALUES
(6, 'uploads/custom-images/-2023-10-26-06-08-41-2782.png', '2023-10-26 00:08:41', '2023-10-26 00:08:41'),
(9, 'uploads/custom-images/-2023-10-26-06-11-52-9757.png', '2023-10-26 00:11:52', '2023-10-26 00:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LTR',
  `is_default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `lang_code`, `text_direction`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(3, 'English', 'en', 'ltr', NULL, 'active', '2023-09-03 02:16:42', '2024-01-23 09:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `login_activity`
--

DROP TABLE IF EXISTS `login_activity`;
CREATE TABLE IF NOT EXISTS `login_activity` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `browser_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_30_035230_create_admins_table', 2),
(6, '2021_11_30_065435_create_email_configurations_table', 3),
(7, '2021_11_30_065508_create_email_templates_table', 3),
(8, '2021_12_01_035206_create_categories_table', 4),
(19, '2021_12_06_054423_create_about_us_table', 10),
(21, '2021_12_07_030532_create_terms_and_conditions_table', 11),
(22, '2021_12_07_035810_create_blog_categories_table', 12),
(23, '2021_12_07_035822_create_blogs_table', 12),
(25, '2021_12_07_061613_create_blog_comments_table', 13),
(30, '2021_12_09_095158_create_contact_messages_table', 16),
(31, '2021_12_09_095220_create_subscribers_table', 16),
(32, '2021_12_09_124226_create_settings_table', 17),
(34, '2021_12_11_025358_create_google_recaptchas_table', 19),
(36, '2021_12_11_025556_create_tawk_chats_table', 19),
(37, '2021_12_11_025618_create_google_analytics_table', 19),
(38, '2021_12_11_025712_create_custom_paginations_table', 19),
(39, '2021_12_11_083503_create_faqs_table', 20),
(40, '2021_12_11_094707_create_currencies_table', 21),
(47, '2021_12_13_132626_create_countries_table', 27),
(48, '2021_12_13_132909_create_country_states_table', 27),
(49, '2021_12_13_132935_create_cities_table', 27),
(51, '2021_12_14_042928_create_facebook_pixels_table', 29),
(52, '2021_12_14_054908_create_paypal_payments_table', 30),
(53, '2021_12_14_054922_create_stripe_payments_table', 30),
(54, '2021_12_14_054939_create_razorpay_payments_table', 30),
(55, '2021_12_14_055252_create_bank_payments_table', 30),
(67, '2021_12_23_065722_create_paystack_and_mollies_table', 40),
(87, '2021_12_28_163200_create_coupons_table', 46),
(88, '2021_12_28_192057_create_contact_pages_table', 47),
(90, '2021_12_30_032959_create_flutterwaves_table', 49),
(91, '2021_12_30_034716_create_footers_table', 50),
(92, '2021_12_30_035201_create_footer_links_table', 50),
(93, '2021_12_30_035247_create_footer_social_links_table', 50),
(96, '2022_01_11_103950_create_wishlists_table', 52),
(97, '2022_01_12_070110_create_shop_pages_table', 53),
(99, '2022_01_12_080218_create_seo_settings_table', 54),
(101, '2022_01_17_122016_create_instamojo_payments_table', 56),
(106, '2022_06_11_095338_create_testimonials_table', 60),
(112, '2022_06_19_073137_create_addresses_table', 64),
(122, '2023_04_17_070540_create_login_activity', 69),
(130, '2023_05_09_091437_create_sessions_table', 73),
(139, '2023_05_30_060215_create_social_links', 79),
(140, '2024_01_27_075322_create_delevery_areas_table', 80),
(141, '2024_01_27_111820_add_area_id_table', 81),
(143, '2024_02_01_084816_app_version_table', 82);

-- --------------------------------------------------------

--
-- Table structure for table `optional_items`
--

DROP TABLE IF EXISTS `optional_items`;
CREATE TABLE IF NOT EXISTS `optional_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `optional_items`
--

INSERT INTO `optional_items` (`id`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'active', '2023-10-10 22:27:56', '2024-12-22 07:29:42'),
(3, 334343, 'active', '2023-10-14 22:17:14', '2024-12-19 10:39:34'),
(4, 4444, 'active', '2023-10-14 22:17:58', '2024-12-19 10:39:07'),
(5, 12323, 'active', '2023-10-14 22:18:07', '2024-12-19 09:37:31'),
(11, 1212, 'active', '2024-12-19 02:19:13', '2024-12-19 02:19:13'),
(13, 123, 'active', '2024-12-19 09:20:53', '2024-12-19 09:20:53'),
(14, 647, 'active', '2024-12-19 09:38:11', '2024-12-19 09:38:11'),
(15, 12, 'active', '2024-12-22 07:29:38', '2024-12-22 07:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_gest` int DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `delevery_day` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delevery_time_id` int DEFAULT NULL,
  `coupon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `delevery_charge` double DEFAULT NULL,
  `vat_charge` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` int DEFAULT NULL,
  `tnx_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `type`, `number_of_gest`, `address_id`, `delevery_day`, `delevery_time_id`, `coupon`, `discount_amount`, `delevery_charge`, `vat_charge`, `total`, `grand_total`, `payment_method`, `payment_status`, `order_status`, `tnx_info`, `created_at`, `updated_at`) VALUES
(1, 70, 'delivery', NULL, 2, 'today', 1, NULL, 0, 0, 28, 560, 588, 'Stripe', 'success', 2, 'txn_3OXzV2F56Pb8BOOX0K9J6ZiR', '2024-01-12 23:11:16', '2024-12-14 22:48:36'),
(2, 70, 'delivery', NULL, 1, 'today', 1, NULL, 0, 0, 12.5, 250, 262.5, 'Stripe', 'success', 1, 'PAYID-MWRXESI5F730408WL576760Y', '2024-01-13 23:34:53', '2024-01-13 23:34:53'),
(3, 70, 'delivery', NULL, 2, 'today', 1, NULL, 0, 0, 10, 200, 210, 'Stripe', 'success', 2, 'pay_NONlIfpXvDwaZE', '2024-01-13 23:47:35', '2024-01-14 00:52:23'),
(4, 70, 'delivery', NULL, 2, 'today', 1, NULL, 0, 0, 7.75, 155, 162.75, 'Stripe', 'success', 1, 'tr_vE4a4v9rPN', '2024-01-13 23:49:27', '2024-01-13 23:49:27'),
(8, 70, 'delivery', NULL, 2, 'today', 1, NULL, 0, 0, 14.5, 290, 304.5, 'Stripe', 'success', 1, '4851120', '2024-01-14 00:52:00', '2024-01-14 00:52:00'),
(11, 70, 'delivery', NULL, 2, 'today', 1, NULL, 0, 0, 7.5, 150, 142.5, 'Stripe', 'success', 1, 'PAYID-MWVH2AI8T2159129B3887718', '2024-01-19 07:45:59', '2024-01-19 07:45:59'),
(12, 70, 'delivery', NULL, 2, 'today', 1, NULL, 0, 0, 7.5, 150, 157.5, 'Stripe', 'success', 1, 'PAYID-MWVISIA1C455680P9362450B', '2024-01-19 08:37:59', '2024-01-19 08:37:59'),
(13, 70, 'delivery', NULL, 2, 'today', 1, NULL, 0, 0, 7, 140, 147, 'Stripe', 'success', 1, 'PAYID-MWVI5IQ8D933028UM704530K', '2024-01-19 09:01:11', '2024-01-19 09:01:11'),
(22, 70, 'delivery', NULL, 1, 'today', 1, NULL, 0, 20, 7.5, 150, 177.5, 'Stripe', 'pending', 1, 'demo', '2024-01-27 06:12:23', '2024-01-27 06:12:23'),
(23, 74, 'delivery', NULL, 12, 'today', 1, NULL, 0, 50, 2.5, 50, 102.5, 'Stripe', 'pending', 1, 'gghggg', '2024-01-31 02:58:41', '2024-01-31 02:58:41'),
(24, 75, 'delivery', NULL, 13, 'today', 1, NULL, 0, 20, 5.25, 105, 130.25, 'Stripe', 'success', 2, 'dfgdfgdfg', '2024-01-31 23:58:37', '2024-02-01 00:03:26'),
(25, 75, 'delivery', NULL, 15, 'today', 1, NULL, 0, 20, 5.75, 115, 140.75, 'Stripe', 'pending', 1, 'fghfghfgh', '2024-02-01 01:59:15', '2024-02-01 01:59:15'),
(26, 70, 'inresturent', NULL, NULL, 'today', 1, NULL, 0, 0, 7.75, 155, 162.75, 'Stripe', 'pending', 1, 'ghfghfhfgh', '2024-07-16 22:54:21', '2024-07-16 22:54:21'),
(27, 70, 'delivery', NULL, 2, 'today', 1, NULL, 0, 30, 6.75, 135, 171.75, 'Stripe', 'success', 1, 'txn_3PdWoKF56Pb8BOOX0uy99JmA', '2024-07-17 06:18:21', '2024-07-17 06:18:21'),
(28, 70, 'delivery', NULL, 2, 'today', 1, NULL, 0, 30, 6.5, 130, 166.5, 'Stripe', 'pending', 3, 'MOJO4717O05A37425575', '2024-07-17 06:19:35', '2024-12-19 09:50:30'),
(33, 94, 'inresturent', NULL, NULL, 'today', 1, NULL, 0, 0, 3.75, 75, 78.75, 'Stripe', 'success', 1, 'txn_3QVdbZF56Pb8BOOX0HZ1Gt9W', '2024-12-13 23:28:50', '2024-12-13 23:28:50'),
(34, 94, 'inresturent', NULL, NULL, 'today', 1, NULL, 0, 0, 3.75, 75, 78.75, 'Stripe', 'success', 2, 'txn_3QVddyF56Pb8BOOX1dUaE9Wf', '2024-12-13 23:31:19', '2024-12-13 23:38:21'),
(35, 99, 'pickup', NULL, NULL, 'today', 1, NULL, 0, 0, 4.5, 90, 94.5, 'Stripe', 'success', 2, 'txn_3QVedMF56Pb8BOOX1kk6g61C', '2024-12-14 00:34:45', '2024-12-14 00:35:42'),
(37, 209, 'pickup', NULL, NULL, 'today', 1, NULL, 0, 0, 16721.65, 334433, 351154.65, 'Stripe', 'success', 2, 'txn_3QXoWfCuie6YGb7p0qKJmlHR', '2024-12-19 15:32:49', '2024-12-22 07:21:55'),
(39, 239, 'delivery', NULL, 24, 'today', 1, NULL, 10, 30, 4.5, 90, 114.5, 'Stripe', 'success', 3, 'txn_3QYmA3Cuie6YGb7p06anWzJU', '2024-12-22 07:13:24', '2024-12-22 07:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `size` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `addons` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `qty` int NOT NULL,
  `total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `size`, `addons`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '{\"Mediam\":\"200\"}', '{\"1\":1,\"3\":1}', 1, 355, '2024-01-12 23:11:16', '2024-01-12 23:11:16'),
(2, 1, 7, '{\"Large\":\"100\"}', '{\"3\":1,\"4\":1}', 1, 205, '2024-01-12 23:11:16', '2024-01-12 23:11:16'),
(3, 2, 2, '{\"Small\":\"150\"}', '{\"1\":\"1\",\"3\":\"2\",\"4\":\"1\"}', 1, 250, '2024-01-13 23:34:53', '2024-01-13 23:34:53'),
(4, 3, 3, '{\"Small\":\"150\"}', '{\"1\":1,\"4\":1}', 1, 200, '2024-01-13 23:47:35', '2024-01-13 23:47:35'),
(5, 4, 3, '{\"Small\":\"150\"}', '{\"5\":1}', 1, 155, '2024-01-13 23:49:27', '2024-01-13 23:49:27'),
(6, 5, 3, '{\"Small\":\"150\"}', '{\"4\":1}', 1, 160, '2024-01-14 00:24:31', '2024-01-14 00:24:31'),
(7, 6, 5, '{\"Small\":\"150\"}', '{\"4\":\"1\"}', 1, 160, '2024-01-14 00:42:10', '2024-01-14 00:42:10'),
(8, 7, 6, '{\"Small\":\"150\"}', '[]', 1, 150, '2024-01-14 00:49:59', '2024-01-14 00:49:59'),
(9, 8, 3, '{\"Large\":\"250\"}', '{\"1\":1}', 1, 290, '2024-01-14 00:52:00', '2024-01-14 00:52:00'),
(13, 11, 3, '{\"Large\":\"150\"}', '[]', 1, 150, '2024-01-19 07:45:59', '2024-01-19 07:45:59'),
(14, 12, 3, '{\"Large\":\"150\"}', '[]', 1, 150, '2024-01-19 08:37:59', '2024-01-19 08:37:59'),
(15, 13, 3, '{\"Small\":\"90\"}', '[]', 1, 90, '2024-01-19 09:01:11', '2024-01-19 09:01:11'),
(16, 13, 4, '{\"Mediam\":\"50\"}', '[]', 1, 50, '2024-01-19 09:01:11', '2024-01-19 09:01:11'),
(25, 22, 2, '{\"Small\":\"150\"}', '[]', 1, 150, '2024-01-27 06:12:23', '2024-01-27 06:12:23'),
(26, 23, 6, '{\"Small\":\"50\"}', '[]', 1, 50, '2024-01-31 02:58:41', '2024-01-31 02:58:41'),
(27, 24, 4, '{\"Small\":\"30\"}', '{\"1\":1,\"3\":1,\"4\":1}', 1, 105, '2024-01-31 23:58:37', '2024-01-31 23:58:37'),
(28, 25, 3, '{\"Small\":\"90\"}', '{\"3\":1}', 1, 115, '2024-02-01 01:59:15', '2024-02-01 01:59:15'),
(29, 26, 3, '{\"Small\":\"90\"}', '{\"1\":1,\"3\":1}', 1, 155, '2024-07-16 22:54:21', '2024-07-16 22:54:21'),
(30, 27, 7, '{\"Small\":\"70\"}', '{\"1\":1,\"3\":1}', 1, 135, '2024-07-17 06:18:21', '2024-07-17 06:18:21'),
(31, 28, 3, '{\"Small\":\"90\"}', '{\"1\":1}', 1, 130, '2024-07-17 06:19:35', '2024-07-17 06:19:35'),
(36, 33, 4, '{\"Mediam\":\"50\"}', '{\"3\":1}', 1, 75, '2024-12-13 23:28:50', '2024-12-13 23:28:50'),
(37, 34, 4, '{\"Mediam\":\"50\"}', '{\"3\":1}', 1, 75, '2024-12-13 23:31:19', '2024-12-13 23:31:19'),
(38, 35, 4, '{\"Mediam\":\"50\"}', '{\"1\":1}', 1, 90, '2024-12-14 00:34:45', '2024-12-14 00:34:45'),
(40, 37, 3, '{\"Small\":\"90\"}', '{\"3\":1}', 1, 334433, '2024-12-19 15:32:49', '2024-12-19 15:32:49'),
(42, 39, 3, '{\"Small\":\"90\"}', '[]', 1, 90, '2024-12-22 07:13:24', '2024-12-22 07:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shihabmahmod58@gmail.com', 'XQMP78uorWi7Kqaxt7WwJhyArj0fBCpCyHYB8iK9lbGRPHvFJj', '2023-04-14 22:09:10'),
('office.shaiful@gmail.com', '4UqGgoJd5lGb42kltFdGfebiilfmm6J0SWO8m1PhUg28haC7fG', '2023-04-14 22:31:31'),
('user@gmail.com', 'QZPyJnKmB6ubEx2kdTmOt80aebklSfhzABNgHB0iJ1p50IXzYs', '2024-01-08 05:37:55'),
('aboutkhalil.83@gmail.com', 'QjMfDzxNR2kJq0fh1VZpGJJDBSB9RrOvmemszC6mRGxcq2FkAh', '2024-01-23 01:10:43'),
('socoy75441@modotso.com', 'szJA1YsKKMLNan67fbw0fSI2fOdSUmTTvjNbp3D68oAvtatazt', '2024-07-16 23:24:38'),
('osamaasf12@gmail.com', 'kCuLzMq6I26ZsmrvkoiNB8rjMQiSSAQrYN6JnLS1i7u1kkL6Li', '2024-12-13 22:24:00'),
('14b80f5cc3@emailvb.pro', 'pRVdVXY6lVAE4zg96pvYYR4r3b4hFZ8WAyEtaumojRpqlwGaex', '2024-12-19 06:40:31'),
('3559138a6f@emailvb.pro', 'TaMJMfT8o2oE5S4tVmEBUgNiooEuuYRHO3DME0TmAOjen3CXO6', '2024-12-22 06:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `expires_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tumb_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `offer_price` double DEFAULT NULL,
  `vedio_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vedio_tumb_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_titel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_populer` tinyint NOT NULL DEFAULT '0' COMMENT '0=not_active,1=active',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Enable,1=Desiable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `slug`, `tumb_image`, `vendor_id`, `category_id`, `price`, `offer_price`, `vedio_url`, `vedio_tumb_image`, `seo_titel`, `seo_description`, `items`, `is_populer`, `status`, `created_at`, `updated_at`) VALUES
(2, 'mansaf', 'uploads/custom-images/mansaf-2024-12-10-04-26-11-8750.webp', 0, 53, 150, NULL, 'https://youtu.be/NC9KlaxtfLg', 'uploads/custom-images/chicken-skewers-with-slices-of-sweet-2023-10-15-10-24-45-8726.png', 'Mansaf', 'Mansaf', '[\"1\",\"3\",\"4\",\"5\",\"11\",\"12\",\"13\",\"14\"]', 0, 'active', '2023-10-15 04:24:45', '2024-12-22 06:35:22'),
(3, 'maqluba', 'uploads/custom-images/maqluba-2024-12-10-04-26-39-6037.jpg', 0, 51, 90, NULL, 'https://youtu.be/NC9KlaxtfLg', 'uploads/custom-images/chicken-skewers-with-slices-of-sweet-2023-10-15-10-24-45-8726.png', 'Maqluba', 'Maqluba', '[\"1\",\"3\",\"4\",\"5\",\"11\",\"12\",\"13\",\"14\"]', 0, 'active', '2023-10-15 04:24:45', '2024-12-22 06:36:33'),
(4, 'kibbeh', 'uploads/custom-images/kebseh-2024-12-10-04-25-19-2573.jpg', 0, 52, 30, NULL, 'https://youtu.be/NC9KlaxtfLg', 'uploads/custom-images/chicken-skewers-with-slices-of-sweet-2023-10-15-10-24-45-8726.png', 'Kibbeh', 'Kibbeh', '[\"1\",\"3\",\"4\",\"5\",\"11\",\"12\",\"13\",\"14\"]', 0, 'active', '2023-10-15 04:24:45', '2024-12-22 06:43:46'),
(5, 'musakhan', 'uploads/custom-images/musakhan-2024-12-10-04-27-04-6029.jpg', 0, 48, 100, NULL, 'https://youtu.be/NC9KlaxtfLg', 'uploads/custom-images/chicken-skewers-with-slices-of-sweet-2023-10-15-10-24-45-8726.png', 'Musakhan', 'Musakhan', '[\"1\",\"3\"]', 0, 'active', '2023-10-15 04:24:45', '2024-12-22 07:29:00'),
(6, 'zarb', 'uploads/custom-images/sayadieh-2024-12-10-04-27-25-2216.jpg', 0, 52, 50, NULL, 'https://youtu.be/NC9KlaxtfLg', 'uploads/custom-images/chicken-skewers-with-slices-of-2023-10-23-05-16-52-9066.png', 'Zarb', 'Zarb', '[\"1\",\"3\",\"4\",\"5\"]', 0, 'active', '2023-10-22 23:16:52', '2024-12-10 21:27:25'),
(7, 'fatteh', 'uploads/custom-images/warak-enab-2024-12-10-04-28-25-8483.jpg', 0, 48, 70, NULL, 'https://youtu.be/NC9KlaxtfLg', 'uploads/custom-images/baked-chicken-wings-and-legs-2024-01-11-10-40-27-7206.png', 'Fatteh', 'Fatteh', '[\"1\",\"3\",\"4\",\"5\"]', 1, 'active', '2024-01-11 04:40:28', '2024-12-10 21:28:25'),
(12, 'warak-enab', 'uploads/custom-images/shish-barak-2024-12-10-04-29-13-3212.jpg', 0, 56, 120, 110, 'https://youtu.be/NC9KlaxtfLg', 'uploads/custom-images/beef-nachos-2024-01-31-11-14-32-3145.png', 'Warak Enab', 'Warak Enab', '[\"1\",\"3\",\"4\",\"5\"]', 0, 'active', '2024-01-31 05:14:32', '2024-12-22 07:28:21'),
(13, 'fattah-test', 'uploads/custom-images/fattah-2024-12-10-04-24-33-4395.jpg', 0, 57, 60, 50, 'https://youtu.be/NC9KlaxtfLg', 'uploads/custom-images/fish-tacos-2024-01-31-11-19-33-8963.png', 'Galayet Bandora', 'Galayet Bandora', '[\"1\",\"3\",\"4\",\"5\"]', 1, 'active', '2024-01-31 05:19:33', '2024-12-19 09:35:34'),
(14, 'hamza', 'uploads/custom-images/lana-carey-2024-12-14-05-53-35-1884.png', 0, 49, 100, 90, 'Ut repellendus Enim', 'uploads/custom-images/lana-carey-2024-12-14-05-53-35-8080.png', 'Sint laboriosam dol', 'Aut culpa labore du', '[\"1\",\"3\",\"4\",\"5\"]', 1, 'active', '2024-12-14 22:53:35', '2024-12-14 23:03:53'),
(15, 'Ducimus omnis quam', 'uploads/custom-images/nadine-hansen-2024-12-14-05-57-00-5964.png', 0, 57, 312, 14, 'Ea similique id nob', 'uploads/custom-images/nadine-hansen-2024-12-14-05-57-00-1570.png', 'Eos ipsum voluptas', 'Consequat Irure sin', '[\"1\",\"3\",\"4\"]', 0, 'active', '2024-12-14 22:57:00', '2024-12-22 06:47:31'),
(18, 'test-test-test-', 'uploads/custom-images/test-test-test-2024-12-19-05-58-58-4306.png', 0, 57, 868, 966, 'Sapiente et voluptat', 'uploads/custom-images/test-test-test-2024-12-19-05-58-58-8869.png', 'Dolores minim aut pl', 'Non culpa incididunt', '[\"1\",\"3\",\"4\",\"5\",\"8\",\"9\",\"10\",\"11\"]', 1, 'inactive', '2024-12-19 02:58:58', '2024-12-19 02:58:58'),
(19, 'system-test-', 'uploads/custom-images/system-test-2024-12-19-06-00-28-4647.png', 0, 57, 589, 36, 'Eiusmod dolor dolore', 'uploads/custom-images/system-test-2024-12-19-06-00-28-2094.png', 'Quae neque consequun', 'Est pariatur Volupt', '[\"1\",\"3\",\"4\",\"5\",\"8\",\"9\",\"10\",\"11\"]', 0, 'inactive', '2024-12-19 03:00:28', '2024-12-19 03:00:28'),
(21, 'Fugiat asperiores q', 'uploads/custom-images/rana-wilson-2024-12-19-06-54-48-5029.png', 0, 49, 428, 360, 'Velit sit enim vel', 'uploads/custom-images/rana-wilson-2024-12-19-06-54-48-8893.png', 'Reprehenderit dolor', 'Magnam rem voluptate', '[\"1\",\"3\",\"4\",\"5\",\"11\",\"12\",\"13\",\"14\"]', 1, 'active', '2024-12-19 09:35:30', '2024-12-19 15:54:48'),
(22, 'Dignissimos hic exer', 'uploads/custom-images/timothy-marquez-2024-12-19-12-52-03-7923.png', 0, 60, 130, 765, 'Commodi quis quidem', 'uploads/custom-images/timothy-marquez-2024-12-19-12-52-03-4512.jpeg', 'Illum alias anim si', 'Voluptate ut esse do', '[\"1\",\"3\",\"4\",\"5\",\"11\",\"12\",\"13\",\"14\"]', 1, 'active', '2024-12-19 09:52:03', '2024-12-19 09:52:03'),
(23, 'Molestiae enim elit', 'uploads/custom-images/priscilla-wilkerson-2024-12-19-01-37-54-3130.png', 0, 51, 34, 455, 'Maiores rerum velit', 'uploads/custom-images/priscilla-wilkerson-2024-12-19-01-37-54-9092.png', 'Deleniti sit iusto e', 'Adipisicing non est', '[\"1\",\"4\",\"5\",\"12\",\"14\"]', 1, 'active', '2024-12-19 10:37:54', '2024-12-19 10:37:54'),
(24, 'Laborum et ullamco v', 'uploads/custom-images/adrienne-farley-2024-12-19-06-53-37-4511.png', 0, 51, 553, 332, 'Ab eveniet quasi er', 'uploads/custom-images/adrienne-farley-2024-12-19-06-53-37-9471.png', 'Cum nemo autem provi', 'Non excepturi deseru', '[\"4\"]', 1, 'active', '2024-12-19 15:53:37', '2024-12-22 06:51:13'),
(25, 'mansaf2', 'uploads/custom-images/mansaf-2024-12-21-04-03-54-7373.jpeg', 0, 62, 100, 80, 'https://youtu.be/sk0vmCYY_SY?si=l9Z3FxnWAjcMj4yg', 'uploads/custom-images/mansaf-2024-12-21-04-03-54-1967.jpeg', 'great mansaf', 'mansafg', '[\"1\",\"3\",\"4\",\"5\",\"11\",\"12\",\"13\",\"14\"]', 1, 'active', '2024-12-21 13:03:54', '2024-12-21 16:06:35'),
(26, 'shehab', 'uploads/custom-images/shehab-2024-12-22-10-27-32-9885.jpeg', 0, 51, 1, 11, NULL, 'uploads/custom-images/shehab-2024-12-22-10-27-32-1827.jpeg', 'sdsd', 'sdsdssdsddsd', '[\"1\"]', 1, 'active', '2024-12-22 07:27:32', '2024-12-22 07:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_addons`
--

DROP TABLE IF EXISTS `product_addons`;
CREATE TABLE IF NOT EXISTS `product_addons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1=Enable,1=Desiable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE IF NOT EXISTS `product_galleries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(42, 2, 'uploads/custom-images/Gallery2024-01-25-10-05-535753.jpg', '2024-01-25 04:05:53', '2024-01-25 04:05:53'),
(43, 2, 'uploads/custom-images/Gallery2024-01-25-10-05-532067.jpg', '2024-01-25 04:05:53', '2024-01-25 04:05:53'),
(44, 2, 'uploads/custom-images/Gallery2024-01-25-10-05-537300.jpg', '2024-01-25 04:05:53', '2024-01-25 04:05:53'),
(45, 2, 'uploads/custom-images/Gallery2024-01-25-10-05-536314.jpg', '2024-01-25 04:05:53', '2024-01-25 04:05:53'),
(46, 2, 'uploads/custom-images/Gallery2024-01-25-10-05-535373.jpg', '2024-01-25 04:05:53', '2024-01-25 04:05:53'),
(47, 4, 'uploads/custom-images/Gallery2024-01-25-10-49-497307.jpg', '2024-01-25 04:49:49', '2024-01-25 04:49:49'),
(48, 4, 'uploads/custom-images/Gallery2024-01-25-10-49-491293.jpg', '2024-01-25 04:49:49', '2024-01-25 04:49:49'),
(49, 4, 'uploads/custom-images/Gallery2024-01-25-10-49-493028.jpg', '2024-01-25 04:49:49', '2024-01-25 04:49:49'),
(50, 4, 'uploads/custom-images/Gallery2024-01-25-10-49-492053.jpg', '2024-01-25 04:49:49', '2024-01-25 04:49:49'),
(51, 4, 'uploads/custom-images/Gallery2024-01-25-10-49-493973.jpg', '2024-01-25 04:49:49', '2024-01-25 04:49:49'),
(52, 4, 'uploads/custom-images/Gallery2024-01-25-10-49-492318.jpg', '2024-01-25 04:49:49', '2024-01-25 04:49:49'),
(53, 5, 'uploads/custom-images/Gallery2024-01-25-10-52-589265.jpg', '2024-01-25 04:52:58', '2024-01-25 04:52:58'),
(54, 5, 'uploads/custom-images/Gallery2024-01-25-10-52-582854.jpg', '2024-01-25 04:52:58', '2024-01-25 04:52:58'),
(55, 5, 'uploads/custom-images/Gallery2024-01-25-10-52-581379.jpg', '2024-01-25 04:52:58', '2024-01-25 04:52:58'),
(56, 5, 'uploads/custom-images/Gallery2024-01-25-10-52-592529.jpg', '2024-01-25 04:52:59', '2024-01-25 04:52:59'),
(57, 5, 'uploads/custom-images/Gallery2024-01-25-10-52-598997.jpg', '2024-01-25 04:52:59', '2024-01-25 04:52:59'),
(58, 6, 'uploads/custom-images/Gallery2024-01-25-10-57-194276.jpg', '2024-01-25 04:57:19', '2024-01-25 04:57:19'),
(59, 6, 'uploads/custom-images/Gallery2024-01-25-10-57-194068.jpg', '2024-01-25 04:57:19', '2024-01-25 04:57:19'),
(60, 6, 'uploads/custom-images/Gallery2024-01-25-10-57-197074.jpg', '2024-01-25 04:57:19', '2024-01-25 04:57:19'),
(61, 6, 'uploads/custom-images/Gallery2024-01-25-10-57-195644.jpg', '2024-01-25 04:57:19', '2024-01-25 04:57:19'),
(62, 6, 'uploads/custom-images/Gallery2024-01-25-10-57-194550.jpg', '2024-01-25 04:57:19', '2024-01-25 04:57:19'),
(63, 6, 'uploads/custom-images/Gallery2024-01-25-10-57-192621.jpg', '2024-01-25 04:57:19', '2024-01-25 04:57:19'),
(64, 7, 'uploads/custom-images/Gallery2024-01-25-11-08-144440.jpg', '2024-01-25 05:08:14', '2024-01-25 05:08:14'),
(65, 7, 'uploads/custom-images/Gallery2024-01-25-11-08-143203.jpg', '2024-01-25 05:08:14', '2024-01-25 05:08:14'),
(66, 7, 'uploads/custom-images/Gallery2024-01-25-11-08-144031.jpg', '2024-01-25 05:08:14', '2024-01-25 05:08:14'),
(67, 7, 'uploads/custom-images/Gallery2024-01-25-11-08-149796.jpg', '2024-01-25 05:08:14', '2024-01-25 05:08:14'),
(68, 7, 'uploads/custom-images/Gallery2024-01-25-11-08-142724.jpg', '2024-01-25 05:08:14', '2024-01-25 05:08:14'),
(69, 7, 'uploads/custom-images/Gallery2024-01-25-11-08-147471.jpg', '2024-01-25 05:08:14', '2024-01-25 05:08:14'),
(70, 7, 'uploads/custom-images/Gallery2024-01-25-11-08-149034.jpg', '2024-01-25 05:08:14', '2024-01-25 05:08:14'),
(71, 3, 'uploads/custom-images/Gallery2024-01-25-11-12-215189.jpg', '2024-01-25 05:12:21', '2024-01-25 05:12:21'),
(72, 3, 'uploads/custom-images/Gallery2024-01-25-11-12-211743.jpg', '2024-01-25 05:12:21', '2024-01-25 05:12:21'),
(73, 3, 'uploads/custom-images/Gallery2024-01-25-11-12-218876.jpg', '2024-01-25 05:12:21', '2024-01-25 05:12:21'),
(74, 3, 'uploads/custom-images/Gallery2024-01-25-11-12-217048.jpg', '2024-01-25 05:12:21', '2024-01-25 05:12:21'),
(75, 3, 'uploads/custom-images/Gallery2024-01-25-11-12-212940.jpg', '2024-01-25 05:12:21', '2024-01-25 05:12:21'),
(76, 3, 'uploads/custom-images/Gallery2024-01-25-11-12-212001.jpg', '2024-01-25 05:12:21', '2024-01-25 05:12:21'),
(77, 12, 'uploads/custom-images/Gallery2024-01-31-11-14-325255.png', '2024-01-31 05:14:32', '2024-01-31 05:14:32'),
(78, 12, 'uploads/custom-images/Gallery2024-01-31-11-14-326677.png', '2024-01-31 05:14:32', '2024-01-31 05:14:32'),
(79, 12, 'uploads/custom-images/Gallery2024-01-31-11-14-329120.png', '2024-01-31 05:14:32', '2024-01-31 05:14:32'),
(80, 12, 'uploads/custom-images/Gallery2024-01-31-11-14-323564.png', '2024-01-31 05:14:32', '2024-01-31 05:14:32'),
(81, 13, 'uploads/custom-images/Gallery2024-01-31-11-19-337263.png', '2024-01-31 05:19:33', '2024-01-31 05:19:33'),
(82, 13, 'uploads/custom-images/Gallery2024-01-31-11-19-331654.png', '2024-01-31 05:19:33', '2024-01-31 05:19:33'),
(83, 13, 'uploads/custom-images/Gallery2024-01-31-11-19-333486.png', '2024-01-31 05:19:33', '2024-01-31 05:19:33'),
(84, 13, 'uploads/custom-images/Gallery2024-01-31-11-19-336460.png', '2024-01-31 05:19:33', '2024-01-31 05:19:33'),
(85, 13, 'uploads/custom-images/Gallery2024-01-31-11-19-334112.png', '2024-01-31 05:19:33', '2024-01-31 05:19:33'),
(86, 14, 'uploads/custom-images/Gallery2024-12-14-05-53-357526.png', '2024-12-14 22:53:35', '2024-12-14 22:53:35'),
(87, 15, 'uploads/custom-images/Gallery2024-12-14-05-57-005696.png', '2024-12-14 22:57:00', '2024-12-14 22:57:00'),
(88, 23, 'uploads/custom-images/Gallery2024-12-19-01-37-549919.png', '2024-12-19 10:37:54', '2024-12-19 10:37:54'),
(89, 15, 'uploads/custom-images/Gallery2024-12-19-06-53-569297.png', '2024-12-19 15:53:56', '2024-12-19 15:53:56'),
(90, 25, 'uploads/custom-images/Gallery2024-12-21-04-03-549657.jpeg', '2024-12-21 13:03:54', '2024-12-21 13:03:54'),
(91, 25, 'uploads/custom-images/Gallery2024-12-21-04-03-543451.jpeg', '2024-12-21 13:03:54', '2024-12-21 13:03:54'),
(92, 25, 'uploads/custom-images/Gallery2024-12-21-04-03-557681.jpeg', '2024-12-21 13:03:55', '2024-12-21 13:03:55'),
(93, 25, 'uploads/custom-images/Gallery2024-12-21-04-16-036563.jpeg', '2024-12-21 13:16:03', '2024-12-21 13:16:03'),
(94, 25, 'uploads/custom-images/Gallery2024-12-21-04-16-039157.jpeg', '2024-12-21 13:16:03', '2024-12-21 13:16:03'),
(95, 25, 'uploads/custom-images/Gallery2024-12-21-04-16-035073.jpeg', '2024-12-21 13:16:03', '2024-12-21 13:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(10, 3, 209, 'gfngngng', '5', 1, '2024-12-19 11:34:17', '2024-12-19 11:35:31'),
(11, 3, 209, 'bvbv', '5', 1, '2024-12-19 11:35:01', '2024-12-19 11:35:31'),
(12, 3, 209, 'woooow!!', '4', 1, '2024-12-19 15:30:46', '2024-12-19 15:59:43'),
(13, 3, 239, 'SHEHAB AHMAD FAWZI ALSANUURY', '5', 1, '2024-12-22 07:15:45', '2024-12-22 07:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3SoiZwh8fZMBQSGCBuGIdzbXQI6swCMqUrtykPtw', NULL, '103.171.69.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUWpHVlZYSjcxdnc0a1V5c0tJQ09Falc5R2Ywb0Q5STVKekp5UnkzTSI7czoxMDoiZnJvbnRfbGFuZyI7czoyOiJlbiI7czoxNToiZnJvbnRfbGFuZ19uYW1lIjtzOjc6IkVuZ2xpc2giO3M6ODoidGVzdF9rZXkiO3M6MTA6InRlc3RfdmFsdWUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwczovL3Jlc2VyLnZyaWtzaGF0ZWNoLmluL3NldC1zZXNzaW9uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720681528),
('dEn4mjPtz3FroG7l6HN5yJuvDEFJjiLmC9FeqQ2O', NULL, '103.171.69.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiV3pva1h5OGFyc3lManp2N1BYaGZhQ1BqcklKZzhHUEVtdlI5aTA5VSI7czoxMDoiZnJvbnRfbGFuZyI7czoyOiJlbiI7czoxNToiZnJvbnRfbGFuZ19uYW1lIjtzOjc6IkVuZ2xpc2giO3M6ODoidGVzdF9rZXkiO3M6MTA6InRlc3RfdmFsdWUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwczovL3Jlc2VyLnZyaWtzaGF0ZWNoLmluL3NldC1zZXNzaW9uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720681534),
('ivLe0ZaZqnDQVJOAw392klHrkntzKjkRJsQL1GFR', NULL, '103.171.69.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaVlKYkwyWGhyM2x0VkVwSzVkcjNJbjFvbmZNUlI3a3RrU0dHeVB5WCI7czoxMDoiZnJvbnRfbGFuZyI7czoyOiJlbiI7czoxNToiZnJvbnRfbGFuZ19uYW1lIjtzOjc6IkVuZ2xpc2giO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwczovL3Jlc2VyLnZyaWtzaGF0ZWNoLmluL2dldC1zZXNzaW9uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720681531),
('u6ZKO1ZS2yJ97gPV9IER4PPW5lmeqr0WMv6j9UXU', NULL, '103.171.69.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUDA5TGlYNlVqbWJ0T2RZa0J0QzczTVRUeTRPYmd2V29xUGJ3VDhzYSI7czoxMDoiZnJvbnRfbGFuZyI7czoyOiJlbiI7czoxNToiZnJvbnRfbGFuZ19uYW1lIjtzOjc6IkVuZ2xpc2giO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwczovL3Jlc2VyLnZyaWtzaGF0ZWNoLmluL2dldC1zZXNzaW9uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720681536),
('usSxyjkY0nK090DKeVxZwug5VSdgXQE83whO4Mb3', NULL, '103.171.69.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWWx0bUVVb2R5YUNDbFFoVmZxUk5zczFEa3RBOGZRY0Z2TnNuWDBxOSI7czoxMDoiZnJvbnRfbGFuZyI7czoyOiJlbiI7czoxNToiZnJvbnRfbGFuZ19uYW1lIjtzOjc6IkVuZ2xpc2giO3M6MTQ6InNlbGVjdGVkX3RoZW1lIjtzOjk6InRoZW1lX29uZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmVzZXIudnJpa3NoYXRlY2guaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720681483);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `maintenance_mode` int NOT NULL DEFAULT '0',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stiky_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theam` int NOT NULL DEFAULT '5',
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_subscription_notify` int NOT NULL DEFAULT '1',
  `enable_save_contact_message` int NOT NULL DEFAULT '1',
  `enable_dark_mode_option` tinyint(1) NOT NULL DEFAULT '0',
  `text_direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LTR',
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_lg_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_sm_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topbar_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT '1',
  `show_product_progressbar` int NOT NULL DEFAULT '1',
  `theme_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `popular_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Popular Category',
  `frontend_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homepage_section_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `empty_cart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_password_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_page_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_page_bg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_rate` float NOT NULL,
  `ios_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `frondend_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `frondend_login_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copy_right_content` int NOT NULL,
  `app_visibility` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empty_result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empty_wishlist` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `app_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `maintenance_mode`, `logo`, `stiky_logo`, `app_name`, `theam`, `favicon`, `contact_email`, `enable_subscription_notify`, `enable_save_contact_message`, `enable_dark_mode_option`, `text_direction`, `timezone`, `sidebar_lg_header`, `sidebar_sm_header`, `topbar_phone`, `topbar_email`, `currency_name`, `currency_icon`, `currency_rate`, `show_product_progressbar`, `theme_one`, `theme_two`, `popular_category`, `frontend_url`, `homepage_section_title`, `empty_cart`, `change_password_image`, `login_page_image`, `login_page_bg`, `error_page`, `vat_rate`, `ios_link`, `android_link`, `frondend_logo`, `frondend_login_page`, `copy_right_content`, `app_visibility`, `lang_key`, `empty_result`, `empty_wishlist`, `error_image`, `created_at`, `updated_at`, `app_version`) VALUES
(1, 1, 'uploads/website-images/login-page-logo-1734864005.png', 'uploads/website-images/stiky-logo-1734601559.png', 'Lamset Manzel', 1, 'uploads/website-images/website-favicon-2024-12-13-07-16-58-7006.png', 'admin@quomodosoft.xyz', 1, 1, 1, 'ltr', NULL, 'ShopO', 'Sp', '123-854-7896', 'contact@gmail.com', 'JOD', 'jd', 1.5, 0, '#fffb00', '#b1a306', 'Popular Category', 'https://shopo-ecom.vercel.app/about', '[{\"key\":\"Trending_Category\",\"default\":\"Trending Category\",\"custom\":\"Trending Category\"},{\"key\":\"Popular_Category\",\"default\":\"Popular Category\",\"custom\":\"Popular Category\"},{\"key\":\"Shop_by_Brand\",\"default\":\"Shop by Brand\",\"custom\":\"Shop by Brand\"},{\"key\":\"Top_Rated_Products\",\"default\":\"Top Rated Products\",\"custom\":\"Top Rated Products\"},{\"key\":\"Best_Seller\",\"default\":\"Best Seller\",\"custom\":\"Best Seller\"},{\"key\":\"Featured_Products\",\"default\":\"Featured Products\",\"custom\":\"Featured Products\"},{\"key\":\"New_Arrivals\",\"default\":\"New Arrivals\",\"custom\":\"New Arrivals\"},{\"key\":\"Best_Products\",\"default\":\"Best Products\",\"custom\":\"Best Products\"}]', 'uploads/website-images/emptycart-2024-12-13-03-58-17-3070.png', 'uploads/website-images/change_password_image-2022-11-17-11-26-36-3416.png', 'uploads/website-images/login-page-image-2023-11-16-05-54-52-2548.png', 'uploads/website-images/login-page-bg-2024-12-10-03-57-07-6313.jpg', 'uploads/website-images/error-page-2024-01-11-05-34-31-4855.jpg', 5, '', '', 'uploads/website-images/login-page-logo-2024-12-13-07-16-58-4118.png', 'uploads/website-images/login-page-logo-2023-11-01-03-51-082488.png', 0, '1', 'en', 'uploads/website-images/empty-result-2024-01-22-06-24-11-8306.png', 'uploads/website-images/empty-wishlist-2024-01-22-06-31-20-9858.png', 'uploads/website-images/error-image-2024-01-22-09-56-24-2913.png', '2024-12-19 12:07:53', '2024-12-22 07:31:30', '2.0');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
CREATE TABLE IF NOT EXISTS `shippings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `city_id` int NOT NULL,
  `shipping_rule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_fee` double NOT NULL,
  `condition_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `city_id`, `shipping_rule`, `type`, `shipping_fee`, `condition_from`, `condition_to`, `created_at`, `updated_at`) VALUES
(1, 27, 'Free Delivery', NULL, 0, '0', '10000', '2024-01-11 05:17:20', '2024-01-11 05:17:20'),
(2, 28, 'Free Delivery', NULL, 0, '0', '1000', '2024-01-11 05:17:45', '2024-01-11 05:17:45'),
(3, 29, 'Free Delivery', NULL, 0, '0', '10000', '2024-01-11 05:18:13', '2024-01-11 05:18:13'),
(4, 30, 'Free Delivery', NULL, 0, '0', '20000', '2024-01-11 05:18:30', '2024-01-11 05:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `category_id`, `image`, `link`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 30, 'uploads/custom-images/phomestyle-italian-cookingnbspbest-enjoyednbspwith-familyp-2023-10-18-09-32-40-2081.png', '4.8/5', 'https://youtu', 'active', '2023-09-25 06:07:45', '2024-12-13 20:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `slider_translate`
--

DROP TABLE IF EXISTS `slider_translate`;
CREATE TABLE IF NOT EXISTS `slider_translate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_id` int NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider_translate`
--

INSERT INTO `slider_translate` (`id`, `slider_id`, `lang_code`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Der globale Luxusmarkt', '2023-09-25 05:31:17', '2023-09-25 05:50:26'),
(4, 2, 'en', 'Authentic Jordanian Homestyle Cooking, Best Savored with Family.', '2023-09-25 06:07:45', '2024-12-13 20:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(18, 20, 'jordan', 'active', '2024-01-11 05:14:41', '2024-01-11 05:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `state_translate`
--

DROP TABLE IF EXISTS `state_translate`;
CREATE TABLE IF NOT EXISTS `state_translate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state_translate`
--

INSERT INTO `state_translate` (`id`, `state_id`, `lang_code`, `name`, `created_at`, `updated_at`) VALUES
(60, 18, 'en', 'jordan', '2024-01-11 05:14:41', '2024-01-11 05:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_payments`
--

DROP TABLE IF EXISTS `stripe_payments`;
CREATE TABLE IF NOT EXISTS `stripe_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `stripe_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stripe_payments`
--

INSERT INTO `stripe_payments` (`id`, `status`, `stripe_key`, `stripe_secret`, `created_at`, `updated_at`, `country_code`, `currency_code`, `currency_rate`, `image`) VALUES
(2, 1, 'pk_test_51Oc1l1Cuie6YGb7pLjGIlXUG7P9GvH6QuBO7pRMvJjckBenajEqzRWXzHaQob8zrVcu6KuCaM9BmrYQZ403KTt5D00AJ3XoUCu', 'sk_test_51Oc1l1Cuie6YGb7pOkDyUXzPvbQzdGNN0dXpqf2ihNsA78qIw482giIII6TFoAvw0caUxYoz3pPfeuljOVHJ98Rj008DQr8Z6e', '2023-07-05 05:11:23', '2024-12-22 07:32:02', 'US', 'USD', 1, 'uploads/website-images/stripe-image-2024-12-22-10-32-02-3013.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tawk_chats`
--

DROP TABLE IF EXISTS `tawk_chats`;
CREATE TABLE IF NOT EXISTS `tawk_chats` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `chat_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tawk_chats`
--

INSERT INTO `tawk_chats` (`id`, `chat_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://embed.tawk.to/5a7c31ded7591465c7077c48/default', 1, NULL, '2024-12-14 23:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `translate_optional_items`
--

DROP TABLE IF EXISTS `translate_optional_items`;
CREATE TABLE IF NOT EXISTS `translate_optional_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translate_optional_items`
--

INSERT INTO `translate_optional_items` (`id`, `item_id`, `lang_code`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Chicken Leg', '2023-10-10 22:27:56', '2023-10-10 22:27:56'),
(5, 1, 'en', 'Chicken Leg Rost', '2023-10-10 22:29:41', '2023-10-10 22:29:41'),
(13, 1, 'en', 'Chicken Leg', '2023-10-11 01:11:36', '2023-10-11 01:11:36'),
(17, 3, 'en', 'Drinks', '2023-10-14 22:17:14', '2023-10-14 22:17:14'),
(21, 4, 'en', 'Nan test', '2023-10-14 22:17:58', '2024-12-19 09:20:24'),
(25, 5, 'en', 'Extra Chess', '2023-10-14 22:18:07', '2023-10-14 22:18:07'),
(41, 1, 'en', 'Chicken Leg', '2024-01-10 23:59:52', '2024-01-10 23:59:52'),
(67, 11, 'en', 'systy', '2024-12-19 02:19:13', '2024-12-19 02:19:13'),
(69, 4, 'en', 'Nan test', '2024-12-19 09:18:23', '2024-12-19 09:18:23'),
(70, 13, 'en', 'test', '2024-12-19 09:20:53', '2024-12-19 09:20:53'),
(71, 13, 'en', 'test tester', '2024-12-19 09:21:02', '2024-12-19 09:21:02'),
(72, 5, 'en', 'Extra Chess', '2024-12-19 09:37:31', '2024-12-19 09:37:31'),
(73, 14, 'en', 'Arden Stevens', '2024-12-19 09:38:11', '2024-12-19 09:38:11'),
(74, 4, 'en', 'Nan test', '2024-12-19 10:39:07', '2024-12-19 10:39:07'),
(75, 3, 'en', 'Drinks', '2024-12-19 10:39:34', '2024-12-19 10:39:34'),
(76, 1, 'en', 'Chicken Leg', '2024-12-19 15:55:28', '2024-12-19 15:55:28'),
(77, 15, 'en', 'SHEHAB', '2024-12-22 07:29:38', '2024-12-22 07:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `translate_products`
--

DROP TABLE IF EXISTS `translate_products`;
CREATE TABLE IF NOT EXISTS `translate_products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vedio_top_ber_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vedio_buttom_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `size` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `specifaction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translate_products`
--

INSERT INTO `translate_products` (`id`, `product_id`, `lang_code`, `name`, `long_description`, `vedio_top_ber_description`, `vedio_buttom_description`, `size`, `specifaction`, `created_at`, `updated_at`) VALUES
(5, 2, 'en', 'Mansaf', '&lt;p&gt;pIndulge in a mouthwatering culinary delight with our Chicken Skewers paired with vibrant slices of sweet bell peppers. Tender pieces of succulent chicken are marinated to perfection, resulting in a flavorful and juicy experience./p pIngredients:/p ul liFresh chicken breast or thigh meat, cubed/li liAssorted sweet bell peppers (red, yellow, and green), sliced into rings/li liMarinade (your choice of herbs, spices, and seasonings)/li liOlive oil/li liSalt and pepper/li /ul pPreparation:/p ul liIn a bowl, prepare the marinade by combining your choice of herbs, spices, olive oil, salt, and pepper./li liWhile the chicken is marinating, prepare the sweet bell peppers by slicing them into rings./li liThread the marinated chicken pieces onto skewers, alternating with slices of sweet bell peppers./li liWhile grilling, you can brush any leftover marinade onto the skewers for extra flavor./li liOnce cooked, remove the skewers from the grill and let them rest for a minute before serving./li /ul pPreparation:/p ul liEnjoy the skewers with a side of fresh salad or rice for a complete meal./li liDrizzle with a zesty lemon or lime juice for an extra burst of flavor./li liPair with your favorite dipping sauce or chutney for added variety./li /ul&lt;/p&gt;', '&lt;p&gt;pIn this vlog video, join us on a culinary journey as we create a mouthwatering dish that&#039;s perfect for any occasion - Grilled Chicken Skewers with Slices of Sweet Bell Peppers. Get ready to tantalize your taste buds as we showcase the step-by-step process of marinating tender chicken,/p&lt;/p&gt;', '&lt;p&gt;pJoin us in the kitchen as we share our passion for cooking and culinary creativity. Whether you&#039;re looking for a delightful appetizer, a flavorful main course, or simply a cooking inspiration, these Grilled Chicken Skewers with Slices of Sweet Bell Peppers are a must-try!/p pNote:&amp;amp;nbsp;This is a fictional vlog video description and timestamps. You can adjust the content and timestamps based on your actual video footage and narration./p&lt;/p&gt;', '{\"Small\":\"150\",\"Large\":\"300\"}', '[\"4 Piece Chicken\",\"Vel amet sapiente d\"]', '2023-10-15 04:24:45', '2024-12-22 06:35:22'),
(9, 3, 'en', 'Maqluba', '&lt;p&gt;pIndulge in a mouthwatering culinary delight with our Chicken Skewers paired with vibrant slices of sweet bell peppers. Tender pieces of succulent chicken are marinated to perfection, resulting in a flavorful and juicy experience./p pIngredients:/p ul liFresh chicken breast or thigh meat, cubed/li liAssorted sweet bell peppers (red, yellow, and green), sliced into rings/li liMarinade (your choice of herbs, spices, and seasonings)/li liOlive oil/li liSalt and pepper/li /ul pPreparation:/p ul liIn a bowl, prepare the marinade by combining your choice of herbs, spices, olive oil, salt, and pepper./li liWhile the chicken is marinating, prepare the sweet bell peppers by slicing them into rings./li liThread the marinated chicken pieces onto skewers, alternating with slices of sweet bell peppers./li liWhile grilling, you can brush any leftover marinade onto the skewers for extra flavor./li liOnce cooked, remove the skewers from the grill and let them rest for a minute before serving./li /ul pPreparation:/p ul liEnjoy the skewers with a side of fresh salad or rice for a complete meal./li liDrizzle with a zesty lemon or lime juice for an extra burst of flavor./li liPair with your favorite dipping sauce or chutney for added variety./li /ul&lt;/p&gt;', '&lt;p&gt;pIn this vlog video, join us on a culinary journey as we create a mouthwatering dish that&#039;s perfect for any occasion - Grilled Chicken Skewers with Slices of Sweet Bell Peppers. Get ready to tantalize your taste buds as we showcase the step-by-step process of marinating tender chicken,/p&lt;/p&gt;', '&lt;p&gt;pJoin us in the kitchen as we share our passion for cooking and culinary creativity. Whether you&#039;re looking for a delightful appetizer, a flavorful main course, or simply a cooking inspiration, these Grilled Chicken Skewers with Slices of Sweet Bell Peppers are a must-try!/p pNote:&amp;amp;nbsp;This is a fictional vlog video description and timestamps. You can adjust the content and timestamps based on your actual video footage and narration./p&lt;/p&gt;', '{\"Small\":\"90\",\"Mediam\":\"120\",\"Large\":\"150\"}', '[\"4 Piece Chicken\",\"Spicy Sauce\"]', '2023-10-15 04:24:45', '2024-12-22 06:36:33'),
(13, 4, 'en', 'Kebseh', '&lt;p&gt;ppIndulge in a mouthwatering culinary delight with our Chicken Skewers paired with vibrant slices of sweet bell peppers. Tender pieces of succulent chicken are marinated to perfection, resulting in a flavorful and juicy experience./p pIngredients:/p ul liFresh chicken breast or thigh meat, cubed/li liAssorted sweet bell peppers (red, yellow, and green), sliced into rings/li liMarinade (your choice of herbs, spices, and seasonings)/li liOlive oil/li liSalt and pepper/li /ul pPreparation:/p ul liIn a bowl, prepare the marinade by combining your choice of herbs, spices, olive oil, salt, and pepper./li liWhile the chicken is marinating, prepare the sweet bell peppers by slicing them into rings./li liThread the marinated chicken pieces onto skewers, alternating with slices of sweet bell peppers./li liWhile grilling, you can brush any leftover marinade onto the skewers for extra flavor./li liOnce cooked, remove the skewers from the grill and let them rest for a minute before serving./li /ul pPreparation:/p ul liEnjoy the skewers with a side of fresh salad or rice for a complete meal./li liDrizzle with a zesty lemon or lime juice for an extra burst of flavor./li liPair with your favorite dipping sauce or chutney for added variety./li /ul/p&lt;/p&gt;', '&lt;p&gt;ppIn this vlog video, join us on a culinary journey as we create a mouthwatering dish that&#039;s perfect for any occasion - Grilled Chicken Skewers with Slices of Sweet Bell Peppers. Get ready to tantalize your taste buds as we showcase the step-by-step process of marinating tender chicken,/p/p&lt;/p&gt;', '&lt;p&gt;ppJoin us in the kitchen as we share our passion for cooking and culinary creativity. Whether you&#039;re looking for a delightful appetizer, a flavorful main course, or simply a cooking inspiration, these Grilled Chicken Skewers with Slices of Sweet Bell Peppers are a must-try!/p pNote:&amp;amp;amp;nbsp;This is a fictional vlog video description and timestamps. You can adjust the content and timestamps based on your actual video footage and narration./p/p&lt;/p&gt;', '{\"Small\":\"30\",\"Mediam\":\"50\",\"Large\":\"70\"}', '[\"4 Piece Chicken\",\"Spicy Sauce\"]', '2023-10-15 04:24:45', '2024-12-22 06:43:46'),
(17, 5, 'en', 'Musakhan', '&lt;p&gt;pIndulge in a mouthwatering culinary delight with our Chicken Skewers paired with vibrant slices of sweet bell peppers. Tender pieces of succulent chicken are marinated to perfection, resulting in a flavorful and juicy experience./p pIngredients:/p ul liFresh chicken breast or thigh meat, cubed/li liAssorted sweet bell peppers (red, yellow, and green), sliced into rings/li liMarinade (your choice of herbs, spices, and seasonings)/li liOlive oil/li liSalt and pepper/li /ul pPreparation:/p ul liIn a bowl, prepare the marinade by combining your choice of herbs, spices, olive oil, salt, and pepper./li liWhile the chicken is marinating, prepare the sweet bell peppers by slicing them into rings./li liThread the marinated chicken pieces onto skewers, alternating with slices of sweet bell peppers./li liWhile grilling, you can brush any leftover marinade onto the skewers for extra flavor./li liOnce cooked, remove the skewers from the grill and let them rest for a minute before serving./li /ul pPreparation:/p ul liEnjoy the skewers with a side of fresh salad or rice for a complete meal./li liDrizzle with a zesty lemon or lime juice for an extra burst of flavor./li liPair with your favorite dipping sauce or chutney for added variety./li /ul&lt;/p&gt;', '&lt;p&gt;pIn this vlog video, join us on a culinary journey as we create a mouthwatering dish that&#039;s perfect for any occasion - Grilled Chicken Skewers with Slices of Sweet Bell Peppers. Get ready to tantalize your taste buds as we showcase the step-by-step process of marinating tender chicken,/p&lt;/p&gt;', '&lt;p&gt;pJoin us in the kitchen as we share our passion for cooking and culinary creativity. Whether you&#039;re looking for a delightful appetizer, a flavorful main course, or simply a cooking inspiration, these Grilled Chicken Skewers with Slices of Sweet Bell Peppers are a must-try!/p pNote:&amp;amp;nbsp;This is a fictional vlog video description and timestamps. You can adjust the content and timestamps based on your actual video footage and narration./p&lt;/p&gt;', '{\"Small\":\"100\",\"Mediam\":\"120\",\"Large\":\"150\"}', '[\"4 Piece Chicken\",\"Spicy Sauce\"]', '2023-10-15 04:24:45', '2024-12-22 07:29:00'),
(21, 6, 'en', 'Sayadieh', '&lt;p&gt;Indulge in a mouthwatering culinary delight with our Chicken Skewers paired with vibrant slices of sweet bell peppers. Tender pieces of succulent chicken are marinated to perfection, resulting in a flavorful and juicy experience.&lt;/p&gt;\r\n&lt;p&gt;Ingredients:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Fresh chicken breast or thigh meat, cubed&lt;/li&gt;\r\n&lt;li&gt;Assorted sweet bell peppers (red, yellow, and green), sliced into rings&lt;/li&gt;\r\n&lt;li&gt;Marinade (your choice of herbs, spices, and seasonings)&lt;/li&gt;\r\n&lt;li&gt;Olive oil&lt;/li&gt;\r\n&lt;li&gt;Salt and pepper&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Preparation:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;In a bowl, prepare the marinade by combining your choice of herbs, spices, olive oil, salt, and pepper.&lt;/li&gt;\r\n&lt;li&gt;While the chicken is marinating, prepare the sweet bell peppers by slicing them into rings.&lt;/li&gt;\r\n&lt;li&gt;Thread the marinated chicken pieces onto skewers, alternating with slices of sweet bell peppers.&lt;/li&gt;\r\n&lt;li&gt;While grilling, you can brush any leftover marinade onto the skewers for extra flavor.&lt;/li&gt;\r\n&lt;li&gt;Once cooked, remove the skewers from the grill and let them rest for a minute before serving.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;p&gt;In this vlog video, join us on a culinary journey as we create a mouthwatering dish that&#039;s perfect for any occasion - Grilled Chicken Skewers with Slices of Sweet Bell Peppers. Get ready to tantalize your taste buds as we showcase the step-by-step process of marinating tender chicken,&lt;/p&gt;', '&lt;p&gt;Join us in the kitchen as we share our passion for cooking and culinary creativity. Whether you&#039;re looking for a delightful appetizer, a flavorful main course, or simply a cooking inspiration, these Grilled Chicken Skewers with Slices of Sweet Bell Peppers are a must-try!&lt;/p&gt;\r\n&lt;p&gt;Note:&amp;nbsp;This is a fictional vlog video description and timestamps. You can adjust the content and timestamps based on your actual video footage and narration.&lt;/p&gt;', '{\"Small\":\"50\"}', '[\"4 Piece Chicken\",\"Spicy Sauce\"]', '2023-10-22 23:16:52', '2024-12-10 21:27:25'),
(40, 7, 'en', 'Warak Enab', '&lt;p&gt;Indulge in a mouthwatering culinary delight with our Chicken Skewers paired with vibrant slices of sweet bell peppers. Tender pieces of succulent chicken are marinated to perfection, resulting in a flavorful and juicy experience.&lt;/p&gt;\r\n&lt;p&gt;Ingredients:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Fresh chicken breast or thigh meat, cubed&lt;/li&gt;\r\n&lt;li&gt;Assorted sweet bell peppers (red, yellow, and green), sliced into rings&lt;/li&gt;\r\n&lt;li&gt;Marinade (your choice of herbs, spices, and seasonings)&lt;/li&gt;\r\n&lt;li&gt;Olive oil&lt;/li&gt;\r\n&lt;li&gt;Salt and pepper&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Preparation:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;In a bowl, prepare the marinade by combining your choice of herbs, spices, olive oil, salt, and pepper.&lt;/li&gt;\r\n&lt;li&gt;While the chicken is marinating, prepare the sweet bell peppers by slicing them into rings.&lt;/li&gt;\r\n&lt;li&gt;Thread the marinated chicken pieces onto skewers, alternating with slices of sweet bell peppers.&lt;/li&gt;\r\n&lt;li&gt;While grilling, you can brush any leftover marinade onto the skewers for extra flavor.&lt;/li&gt;\r\n&lt;li&gt;Once cooked, remove the skewers from the grill and let them rest for a minute before serving.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;Preparation:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Enjoy the skewers with a side of fresh salad or rice for a complete meal.&lt;/li&gt;\r\n&lt;li&gt;Drizzle with a zesty lemon or lime juice for an extra burst of flavor.&lt;/li&gt;\r\n&lt;li&gt;Pair with your favorite dipping sauce or chutney for added variety.&lt;/li&gt;\r\n&lt;/ul&gt;', '&lt;p&gt;In this vlog video, join us on a culinary journey as we create a mouthwatering dish that&#039;s perfect for any occasion - Grilled Chicken Skewers with Slices of Sweet Bell Peppers. Get ready to tantalize your taste buds as we showcase the step-by-step process of marinating tender chicken,&lt;/p&gt;', '&lt;p&gt;Join us in the kitchen as we share our passion for cooking and culinary creativity. Whether you&#039;re looking for a delightful appetizer, a flavorful main course, or simply a cooking inspiration, these Grilled Chicken Skewers with Slices of Sweet Bell Peppers are a must-try!&lt;/p&gt;\r\n&lt;p&gt;Note: This is a fictional vlog video description and timestamps. You can adjust the content and timestamps based on your actual video footage and narration.&lt;/p&gt;', '{\"Small\":\"70\",\"Medium\":\"90\",\"Large\":\"100\"}', '[\"10 Piece Chicken\",\"Spicy Sauce\"]', '2024-01-11 04:40:28', '2024-12-10 21:28:25'),
(49, 12, 'en', 'Shish Barak', '&lt;p&gt;pIndulge in a mouthwatering culinary delight with our Chicken Skewers paired with vibrant slices of sweet bell peppers. Tender pieces of succulent chicken are marinated to perfection, resulting in a flavorful and juicy experience./p pIngredients:/p ul liFresh chicken breast or thigh meat, cubed/li liAssorted sweet bell peppers (red, yellow, and green), sliced into rings/li liMarinade (your choice of herbs, spices, and seasonings)/li liOlive oil/li liSalt and pepper/li /ul pPreparation:/p ul liIn a bowl, prepare the marinade by combining your choice of herbs, spices, olive oil, salt, and pepper./li liWhile the chicken is marinating, prepare the sweet bell peppers by slicing them into rings./li liThread the marinated chicken pieces onto skewers, alternating with slices of sweet bell peppers./li liWhile grilling, you can brush any leftover marinade onto the skewers for extra flavor./li liOnce cooked, remove the skewers from the grill and let them rest for a minute before serving./li /ul pPreparation:/p ul liEnjoy the skewers with a side of fresh salad or rice for a complete meal./li liDrizzle with a zesty lemon or lime juice for an extra burst of flavor./li liPair with your favorite dipping sauce or chutney for added variety./li /ul&lt;/p&gt;', '&lt;p&gt;pIn this vlog video, join us on a culinary journey as we create a mouthwatering dish that&#039;s perfect for any occasion - Grilled Chicken Skewers with Slices of Sweet Bell Peppers. Get ready to tantalize your taste buds as we showcase the step-by-step process of marinating tender chicken,/p&lt;/p&gt;', '&lt;p&gt;pJoin us in the kitchen as we share our passion for cooking and culinary creativity. Whether you&#039;re looking for a delightful appetizer, a flavorful main course, or simply a cooking inspiration, these Grilled Chicken Skewers with Slices of Sweet Bell Peppers are a must-try!/p pNote: This is a fictional vlog video description and timestamps. You can adjust the content and timestamps based on your actual video footage and narration./p&lt;/p&gt;', '{\"Large\":\"200\",\"\":\"\"}', '[\"Diced tomatoes\",\"Cooked chicken\"]', '2024-01-31 05:14:32', '2024-12-22 07:28:21'),
(52, 13, 'en', 'Fattah test', '&lt;p&gt;pIndulge in a mouthwatering culinary delight with our Chicken Skewers paired with vibrant slices of sweet bell peppers. Tender pieces of succulent chicken are marinated to perfection, resulting in a flavorful and juicy experience./p pIngredients:/p ul liFresh chicken breast or thigh meat, cubed/li liAssorted sweet bell peppers (red, yellow, and green), sliced into rings/li liMarinade (your choice of herbs, spices, and seasonings)/li liOlive oil/li liSalt and pepper/li /ul pPreparation:/p ul liIn a bowl, prepare the marinade by combining your choice of herbs, spices, olive oil, salt, and pepper./li liWhile the chicken is marinating, prepare the sweet bell peppers by slicing them into rings./li liThread the marinated chicken pieces onto skewers, alternating with slices of sweet bell peppers./li liWhile grilling, you can brush any leftover marinade onto the skewers for extra flavor./li liOnce cooked, remove the skewers from the grill and let them rest for a minute before serving./li /ul pPreparation:/p ul liEnjoy the skewers with a side of fresh salad or rice for a complete meal./li liDrizzle with a zesty lemon or lime juice for an extra burst of flavor./li liPair with your favorite dipping sauce or chutney for added variety./li /ul&lt;/p&gt;', '&lt;p&gt;pIn this vlog video, join us on a culinary journey as we create a mouthwatering dish that&#039;s perfect for any occasion - Grilled Chicken Skewers with Slices of Sweet Bell Peppers. Get ready to tantalize your taste buds as we showcase the step-by-step process of marinating tender chicken,/p&lt;/p&gt;', '&lt;p&gt;pJoin us in the kitchen as we share our passion for cooking and culinary creativity. Whether you&#039;re looking for a delightful appetizer, a flavorful main course, or simply a cooking inspiration, these Grilled Chicken Skewers with Slices of Sweet Bell Peppers are a must-try!/p pNote: This is a fictional vlog video description and timestamps. You can adjust the content and timestamps based on your actual video footage and narration./p&lt;/p&gt;', '{\"Large\":\"50\"}', '[\"Grilled or fried fish\",\"Shredded cabbage\"]', '2024-01-31 05:19:33', '2024-12-16 17:36:57'),
(55, 14, 'en', 'hamza', '&lt;p&gt;ppphkjhkjkjhkh/p/p/p&lt;/p&gt;', '&lt;p&gt;pppljhkjhkjhkjhk/p/p/p&lt;/p&gt;', '&lt;p&gt;pppjohjjkjkhhhh88/p/p/p&lt;/p&gt;', '{\"sheab\":\"50\"}', '[\"Hic dolorum deserunt\"]', '2024-12-14 22:53:35', '2024-12-14 23:03:53'),
(56, 15, 'en', 'Ayanna Jensen', '', '', '', '{\"Saepe magna ullamco\":\"351\"}', '[\"Mollitia voluptas om\"]', '2024-12-14 22:57:00', '2024-12-19 09:35:53'),
(59, 18, 'en', 'test test test', NULL, NULL, NULL, '{\"Impedit proident f\":\"982\"}', '[\"Nostrum est Nam susc\"]', '2024-12-19 02:58:58', '2024-12-19 02:58:58'),
(60, 19, 'en', 'system test', NULL, NULL, NULL, '{\"Illo sed dolor sed m\":\"383\"}', '[\"Alias odit ut quam p\"]', '2024-12-19 03:00:28', '2024-12-19 03:00:28'),
(62, 21, 'en', 'Rana Wilson', '&lt;p&gt;psds/p&lt;/p&gt;', '&lt;p&gt;pSsd/p&lt;/p&gt;', '&lt;p&gt;pSs/p&lt;/p&gt;', '{\"Dolorem error in non\":\"242\"}', '[\"Non pariatur Fuga\"]', '2024-12-19 09:35:30', '2024-12-19 15:54:48'),
(63, 22, 'en', 'Timothy Marquez', '&lt;p&gt;cvxvcx&lt;/p&gt;', '&lt;p&gt;dgvd&lt;/p&gt;', '&lt;p&gt;xv&lt;/p&gt;', '{\"466\":\"64\"}', '[\"Explicabo Sit aut m\"]', '2024-12-19 09:52:03', '2024-12-19 09:52:03'),
(64, 23, 'en', 'Priscilla Wilkerson', '&lt;p&gt;65r65&lt;/p&gt;', '&lt;p&gt;545&lt;/p&gt;', '&lt;p&gt;4545&lt;/p&gt;', '{\"cvcv\":\"4\"}', '[\"Sint vel quod animi\"]', '2024-12-19 10:37:54', '2024-12-19 10:37:54'),
(65, 24, 'en', 'Adrienne Farley', '', '', '', '{\"Sit sint placeat qu\":\"808\"}', '[\"Facilis ullamco at u\"]', '2024-12-19 15:53:37', '2024-12-22 06:51:13'),
(66, 25, 'en', 'mansaf', '&lt;p&gt;pkjchbdkhcdbcjhdbvkjbv mvjkfnvkfnvmn fmnv jkfvkjf vmnf fknvkf vnmf vjbjfmn vfvjfvmnf vf vjkfvf v/p&lt;/p&gt;', '&lt;p&gt;h1 class=&quot;style-scope ytd-watch-metadata&quot;Jordanian Mansaf/h1&lt;/p&gt;', '&lt;p&gt;pmansafff/p&lt;/p&gt;', '{\"1 meat\":\"2\",\"2 meat\":\"4\"}', '[\"no need to it its all cleane\"]', '2024-12-21 13:03:55', '2024-12-21 16:06:35'),
(67, 26, 'en', 'SHEHAB', '&lt;p&gt;sdsds&lt;/p&gt;', '&lt;p&gt;sdss&lt;/p&gt;', '&lt;p&gt;sdsd&lt;/p&gt;', '{\"1\":\"1\",\"\":\"\"}', '[\"sdsd\"]', '2024-12-22 07:27:32', '2024-12-22 07:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `translate_section_titels`
--

DROP TABLE IF EXISTS `translate_section_titels`;
CREATE TABLE IF NOT EXISTS `translate_section_titels` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `section_id` int NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_ber_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_ber_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_ber_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_titel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_titel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_titel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `traditional_food_titel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `testonimal_titel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_titel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribe_titel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_titel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authinaction_titel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `login_page_titel_one` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `login_page_titel_two` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `login_page_titel_three` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `register_page_titel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `forget_page_titel_one` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `forget_page_titel_two` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `forget_page_titel_three` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translate_section_titels`
--

INSERT INTO `translate_section_titels` (`id`, `section_id`, `lang_code`, `top_ber_message`, `top_ber_phone`, `top_ber_email`, `category_titel`, `featured_titel`, `promotion_titel`, `traditional_food_titel`, `testonimal_titel`, `news_titel`, `subscribe_titel`, `payment_titel`, `authinaction_titel`, `login_page_titel_one`, `login_page_titel_two`, `login_page_titel_three`, `register_page_titel`, `forget_page_titel_one`, `forget_page_titel_two`, `forget_page_titel_three`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Lamset Manzel: Where authentic flavors meet the comfort of home.', '⁦+962 7 8886 8393⁩', 'test@test.com', 'Our Categories', 'Our Featured & Newest Restaurant', 'Explore Our Irresistible Promotions!', 'Some Traditional Food Based on Location', 'What’s Our Customer Say', 'Our Latest news', 'Subscribe our Newsletter', 'We accept Payment methods:', '<p>You agree to ReservQ <span><a href=\"#\">Terms of Use & Privacy Policy.</a></span> You don\'t need to consent as  a condition of food, or buying any other goods or services. Message/data rates may apply.</p>', 'Welcome back', 'Welcome back! Please enter your details.', '<p>Don’t have an account? <a href=\"/register\">Sign up for free</a></p>', '<p>Have an account? <a href=\"/login\">Login here</a></p>', 'Reset your password', 'Enter the email address associated with your account and we\'ll send you a link to reset your password.', '<p>Have Remember Password? <a href=\"/login\">Return to login</a></p>', NULL, '2024-12-13 21:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `is_approved` tinyint(1) DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `verify_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int NOT NULL DEFAULT '0',
  `agree_policy` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `is_approved`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `address`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(70, 'Mohammed Ahmed', 'user@gmail.com', NULL, '$2y$12$n.ngP13/Qua7sHbqNQZlheQeXsVa66YZ0GqF4Iz5mSynWxJY0XnPW', NULL, NULL, 'active', 0, 'uploads/custom-images/user-images-2024-01-13-05-07-44-2624.png', '⁦+962 7 8886 8392⁩', NULL, NULL, NULL, 'Amman, Abdoun', NULL, 0, 0, '2024-01-12 23:04:55', '2024-12-13 22:49:49'),
(74, 'Ali Hussein', 'jiyajir260@evvgo.com', NULL, '$2y$10$idEb1.ihjVSFEuue335YB.sQmyjVgKPoYf1gTofGMUG1sak6DKML.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Irbid, University Street', NULL, 0, 0, '2024-01-31 02:49:36', '2024-01-31 02:50:03'),
(75, 'Khalid Ibrahim', 'devax93108@cubene.com', NULL, '$2y$10$gGoc1OA8HOJ7HjMg4.Y4YOKkgtlwHBK0oB01YneFAPqsopIrsIde2', NULL, NULL, 'active', 0, NULL, '⁦+962 7 8886 8394⁩', NULL, NULL, NULL, 'Zarqa, Al-Rusifa', NULL, 0, 0, '2024-01-31 23:57:27', '2024-02-01 00:02:47'),
(76, 'Ahmed Salem', 'wajimik920@reebsd.com', NULL, '$2y$12$75dODT1XkYQyQ3Azphd7kOekt0BuCAfRHoEPTVZR0r01u2wOxFIP.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Madaba, Al-Khalidi Street', '1xT7TIhQAuhPiSHAAfi238eur3vnQaMBXGopR2oxwGsH88O2kK3BuYJI1ePAvqtVVR1qDu7Wnzske1yTWfCGJMbFdNWgT8M5HU4m', 0, 0, '2024-07-16 23:11:09', '2024-07-16 23:11:09'),
(77, 'Youssef Mahmoud', 'rimihe6187@padvn.com', NULL, '$2y$12$Kv2rKoYfoInLzvfPU5awr.g2KcnIjbWSwNRVtb0ullRlTnkhuEUHC', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Karak, Downtown', '4lufczCXYUwxcxxQxtw8w58aGo5yA7p72pAMAi7ipue3H5kgR1hYH0S8lkU6y5ZgX13eeKU6IML36XpAEKFK52NfCkx6d9xMfqVY', 0, 0, '2024-07-16 23:15:15', '2024-07-16 23:15:15'),
(78, 'Saeed Hamdan', 'socoy75441@modotso.com', NULL, '$2y$12$qXqz1H/V2bbByeob43c7w.U8nwsvfM5Y1kP97wHPqab.cIfvtf0Ta', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Salt, Al-Balqa University Area', NULL, 0, 0, '2024-07-16 23:18:10', '2024-07-16 23:18:20'),
(79, 'Ibrahim Omar', 'paigeneff26@gmail.com', NULL, '$2y$12$8odjfh9DKhtN57P2TkHEd.lnAP4Z8yWj2yIbTty8kUutCD4snnwGO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Aqaba, Beach Road', 'MgTBgfgPMpfdgmWgEAsXHdHCbVOjeN1CzFT3TUQpCj9o4btWXDT67RzetcrkhjYqnwkhPqebwmn6h6uNAW2FAnIfrnO3hdCPiSZi', 0, 0, '2024-12-10 21:04:29', '2024-12-10 21:04:29'),
(80, 'Fatima Issa', 'cindy.peters@mizunousa.com', NULL, '$2y$12$rP2icHSdedv41ZxVUB.a8uS18rXP5gAdAblTDXlrFPQSpli9l2E9u', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Jerash, Archaeological Site Area', 'y3Znoto6kvTUrytiXdmqcxVZWLp8sjCgE3Mwn7t1zjddmOMQX7v6UHRQ46G03HdB6DfdscL2eYezBQmpndoBZb9i8eL5LF2fnQmc', 0, 0, '2024-12-10 21:08:24', '2024-12-10 21:08:24'),
(81, 'Nora Khalid', 'steph.thelen25@gmail.com', NULL, '$2y$12$n1BNeD8/gzE6sYN8jtKMjukht/6Cat06dGyBLhzs9hu0xu5n/HzTm', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Ma’an, King Hussein Street', 'AEkaGokutdYvLjYxDrCP94UY6ovHchFrrVwdHoUZfhZOZItC0Yjy5t4IRfD3oglSvE1EJ5KRaM3u6WJYMPDHMRvQbKXSwlGItJbI', 0, 0, '2024-12-10 21:12:57', '2024-12-10 21:12:57'),
(82, 'Layla Mohammed', 'toshihiko.daimon@mizunousa.com', NULL, '$2y$12$igwLXm/nfGX9wP3O8i24fOmOmTXQZA53QigF9UG7XfMo2kM1lCdqy', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Tafila, Al-Eis Neighborhood', 'dklp43VBwrx0e8wkFDCHNmH4kQUIYHO69Yqpcss1ONuV4Kk8agVYlEDTKcpdNqVWONkdKpnVrCbMRpgLYpPEbs50T84k5MRRUy38', 0, 0, '2024-12-10 21:31:51', '2024-12-10 21:31:51'),
(83, 'Majid Ali', 'grramey@gmail.com', NULL, '$2y$12$7Nq0ZbtQKnPFBfWCfKBBN.MjDcWhcH56xNQAM7YDEqNugRw9AC.1i', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Irbid, Al-Hassan Sports City', 'NFm74gQYFapCoUF5GrcZ1bBzVKVhONNnE9YbbKwRBD36kCfAYadqdZIsKbTl7kXx8qpPJrMkkQ3puPJsOec1duScjtECSDbnUdVb', 0, 0, '2024-12-10 21:37:16', '2024-12-10 21:37:16'),
(84, 'Mona Saleh', 'evanhughes36@gmail.com', NULL, '$2y$12$DLFPP2mtN/FTPEMW/IrWCuhvBoTvn0Zr/dvG.L4JFwIl5nt3fa022', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Amman, Sweifieh', 'ZysKuE3YlHwChCHZwdU4hivoP5ubaczpOwfGq79X8sWZPgmCA2QxPQMnHUjZBdMghA5XZYXYr9DJQZdiGveLFCY3u8Ic4Kuj9Yal', 0, 0, '2024-12-10 21:46:24', '2024-12-10 21:46:24'),
(85, 'Jamila Hussein', 'marilyncarey14@gmail.com', NULL, '$2y$12$Bse9Xw.EB67.VorQU5nckuMHUsUZJgek93SsZbMgrgggLhX1x5z2y', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Ajloun, Al-Hussein Park', 'qjvUgrbXZ27zHHYIPkzRR1rNEduNhqVejSUqqukr22uaZ8peoA6efdx5UgOVartxwiw7Uamq4k7kX4uF6cjQ4sb3XEVslOvEu88A', 0, 0, '2024-12-10 22:00:04', '2024-12-10 22:00:04'),
(86, 'Yasser Ahmed', 'ctapia@kewire.com', NULL, '$2y$12$O9U7w4Tyyv8CTmboTfxIo.Hz2XMoIbqbidBiYLVjCrqgPzKOS2d5.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Zarqa, New Zarqa', 'Oe6DIH0018Rkl8VLH9Naif4su8rKalh3nybLXSiOEShFWOnyek8M3XqF7ZAa9saI02tHeZ1p1QY6iBKDhAcaVFQvy70eTYvXATtE', 0, 0, '2024-12-10 22:00:05', '2024-12-10 22:00:05'),
(87, 'Salwa Mahmoud', 'johndrowcarter@gmail.com', NULL, '$2y$12$JXd1HNYEoPiSZWM2zfCuXOeqtoPtbHsmX/eR5hPJRxLZKSNlyuD.K', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Madaba, Mount Nebo Area', '1y3sniLFOw4naoBm28Pykpe1HlLnkCUwTfVkci5aL0qzjN4x70YjYTo96igmWvR9GLeWm5blPNo09gZHkSfMLTcv6z6T2lfF4eWk', 0, 0, '2024-12-10 22:14:16', '2024-12-10 22:14:16'),
(88, 'Rami Youssef', 'bebecasey.miyazawa@gmail.com', NULL, '$2y$12$6yC1eNr2TYFOLW35rUuEWejv5rbOnTXC5RbVBuNWsTXVcDquS6G.2', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Aqaba, Aqaba Castle Area', '92obzI8wmqQk1TIlVIovsd8WcOZm6OdmDGDHyCUFXWL8vDrBR7ccEwA6j7fiUu6yDSCcpiK5xGk3BbziXVhibhO2a1HxxlTEomyG', 0, 0, '2024-12-10 22:23:34', '2024-12-10 22:23:34'),
(89, 'Huda Ibrahim', 'matt.baum@mizunousa.com', NULL, '$2y$12$6piKczGKB3/tNC4V3KZ3G.GrvyKi5O4hd6SfrGAW7zuSLPEp.cXKO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Jerash, Souf Area', '1Y2VMtS56IY5NON1R3ygwOVC2SEMTXyuSLPSCPVXPJKcVe99OPehWh52SPAXh5wAjnqLqN3hDJE5VxQMv9nZ7uH4AzjqA1B2JDDF', 0, 0, '2024-12-10 22:31:42', '2024-12-10 22:31:42'),
(90, 'Zainab Abdullah', 'nhattamlu87@gmail.com', NULL, '$2y$12$Hc5S5ClmjYtiPwnBHC38AemBZpeV99dn5jbodbNZ1p5T/OQ5z/8hi', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, 'Amman, Rainbow Street', 'SXRSQEbRI0PsMv5ZMktrGcOQfHD0GCT6M6b7B2rV9JbPRvHim7Rz2LFm13UK8eTBq0Tdgdu22o29NO4z5lE7hrqbunRtsEnbpcYD', 0, 0, '2024-12-13 20:45:45', '2024-12-13 20:45:45'),
(91, 'Loubna Desteno', 'acacia.arnold@gmail.com', NULL, '$2y$12$p8qTJKWZoEK4uUSSm6MVlOfDI50oEUy.ZD/8AxYDEk5Fx2kycLBfW', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'XzxTA25TCAhorVaLypXihm1OeWzxj892jJzpw981QCM51Iz4kZCisfjiIGe5Md05wHz7A6dy3GEW7a2NqF7W3QImkxyAIVNWsj7G', 0, 0, '2024-12-13 21:27:36', '2024-12-13 21:27:36'),
(92, 'osamaasf12', 'osamaasf12@gmail.com', NULL, '$2y$12$DwG/iBXF4qBA/Ql3dUIkbuBvUrSLRUQE9.Ct8Qto.qk0VVw7DQyXK', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'qnAv6oMNYrFvCC5DhUBXJIvGE091WA6kYoylDRuMhPbN1qSU1X3s1vLrLxQ2DWvS65wF5Oiba5aDs0GU8uhapJmOawGo89xjOs9u', 0, 0, '2024-12-13 21:43:18', '2024-12-13 21:43:18'),
(93, 'Anakin Cerasuolo', 'adipatri@gmail.com', NULL, '$2y$12$CJnfnqiMRkDEJmS0ftKI/.8c9OEJg7aDiUnMFGdxJZwNloT1YcQYm', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'rYrngKFoWX2GW36xxI6qTRxEDWPvW0l7FUypfvNYrjuw3pX50L1xMhydRUKx1h4P1Tz53l2PLzXy7rP9q3EaLZWYc0ViekA4EVTO', 0, 0, '2024-12-13 22:03:44', '2024-12-13 22:03:44'),
(94, '51d80b7c35@emailvb.pro', '51d80b7c35@emailvb.pro', NULL, '$2y$12$wSIlTC3TEZP04L2/tE7o6e6Pie9dPNByEinXpfDe7YYygnGYXSpkS', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-13 22:51:30', '2024-12-13 22:51:43'),
(95, 'Jamianne Eucker', 'indigo.holidays@yahoo.co.in', NULL, '$2y$12$OnyRGWxWuF5cuXzrgLCfEuNkYWUaYhywx4RBZyf5ztD0kB1hT6ocm', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'iB7ZfVFGzAwAeNsNrp0o2i78A3BfIw36lc0L00aYOcVM3u4WJWuQqTLTllfw0j3loxkPYhf3CLusoZaiUVH4gH1SJxaxyX9gnTSt', 0, 0, '2024-12-13 22:59:06', '2024-12-13 22:59:06'),
(96, 'Yanosh Perez Araujo', 'gmahn@fr.com', NULL, '$2y$12$iSgrXDFgJ6MHtFJ5zbG99.P2Bd2KA1ENcDFush143cWkrg.6inf.2', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0VbuvlfRsKsAm4Xhwtfc1l65cWO8W518mBKGFgOLCDc4uObN1Lggk2U0oytRdidJhBOYgoMQy5A2jw4OOUW67qFM1WujLAwNuAF2', 0, 0, '2024-12-13 23:39:43', '2024-12-13 23:39:43'),
(97, 'Thuhuong Davao', 'mhiras8660@hotmail.com', NULL, '$2y$12$VdNMSovylkMlXt4xnOYon.LbkkzqUwLiGwMzalTajewyBa2g2or1m', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'NR3Tm2J2SujviJVkb5Ckc8Owrou6YI0PFMyNbz4aUDn4PGf9QmgnDzqxhWBvEIs1XfWO6OqOf2SYVEHyWIorkoXmw1umtLsblCpo', 0, 0, '2024-12-13 23:57:53', '2024-12-13 23:57:53'),
(98, 'Danalyn Sefcovic', 'rob@medrevenu.com', NULL, '$2y$12$a5AynGKrWqNTBbESZ/.SuepmkV/6wgPBYLA3lcTImU9iJDoutMov2', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'oElGYvtaodrVnfyxiV3s6a7RUXl33ZI5v8Osc20uUvGq914hoAsscR4EkWAHBPHmCws6z6DwIHn5r9TN2ucOoo9uokiqr2nJsRSg', 0, 0, '2024-12-14 00:15:21', '2024-12-14 00:15:21'),
(99, 'fc18d4c42b@emailvb.pro', 'fc18d4c42b@emailvb.pro', NULL, '$2y$12$wlqhVhQ/UeLD9qzeC3Og6ud3UFPCV2tVJTsiBDxoSteZaDOSMhdNO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-14 00:29:42', '2024-12-14 00:30:04'),
(100, 'Mercadies Palasto', 'kris10leigh15@icloud.com', NULL, '$2y$12$P5H4ep06wwaWRM8gbjaUpO3ZIHaKUPES8IUgYLtVQxQD4d9L00YOy', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ta6CMgOsmfTJn3Ly9RhYOt90IiJZ7y5FX8tX14cSkEVio1dAijk8b2PpoCS61dkiCCpKHYYW4PiIvuw7DW6lZdUYspPIyk20X87q', 0, 0, '2024-12-14 00:34:23', '2024-12-14 00:34:23'),
(101, 'Tilia Lenain', 'mfpcreferrals@gmail.com', NULL, '$2y$12$9x9CV/ithqKuq60wPhS02uJo3EnmX.5O/mkP85qZLUwhoea2jT2lG', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'w1Jp7iT6Wa8d5WLt20DObkrsVK7P2mJZuAZKb8AOTSRzLos7ESgxroJ2WxubZ2LVrHU87sjBBOgeedWlmIBTPfGeqJmfoaWh6tH0', 0, 0, '2024-12-14 00:51:47', '2024-12-14 00:51:47'),
(102, 'Theodie Sennott', 'lperry@venable.com', NULL, '$2y$12$DTEnmzVb1MLHXd1z5XDx4OWpU70HHz0y3yK3m8ZwjeJi/oOJgiK4.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '84FsNl7QbmP1viDb9G9IghuNpz6wNkhswHUK4EDrwO5wj90ArjeDAiWWWqNgWo2ASypNJXixxtYarDsBx3WcAh3paApDUACNfTWn', 0, 0, '2024-12-14 01:09:34', '2024-12-14 01:09:34'),
(103, 'Marche Morales Schmuker', 'philip.english@afslaw.com', NULL, '$2y$12$AinVa7TN0TYjaF.fo8n0aeKfR25E0wiBRDyE.idYJpSxM7Ggr9sPO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'uDKctHbQImfiyrGJQp55DNYwVDksUg6suuDHBYVCK4jjOW0BDlcH4lm8If6SSE6nHGMXezRNydw6tDmIjuNAXSCfDrnqk520bQUi', 0, 0, '2024-12-14 01:27:04', '2024-12-14 01:27:04'),
(104, 'Khailil Lippay', 'dwsmedley1@yahoo.com', NULL, '$2y$12$cjFpB1UelJ0lGTQb/JHI8.r9mRFD0zeGy2Eaztnq4OuqxoWspn4WO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'SPvPfwltMpWqUhCZfB05juh5ft9dzsz9FIk1nkzaVp5M1EPj0ZKdWnZ0RjgK9mspvePIpekQfgSMLUKGeunmVQhYNvWEhNuy9eet', 0, 0, '2024-12-14 01:44:40', '2024-12-14 01:44:40'),
(105, 'Lucias Silmu', 'rhudkins@tyra.bio', NULL, '$2y$12$6pbRHs3P5cnYfDvWuDqVBuK7eOiZ5DRyWu/EUH8jnX3ds3mhsqUAa', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tCNAdoOeXBpAdOTWOlR1Z4CVU1f0jJJMYmWfvh5AR6uuSaZ5TbnwZT2pGACHcANj6EnBoYbq4ZDk9exdCg7DAQ6AqGEfK0x6fo44', 0, 0, '2024-12-14 02:01:46', '2024-12-14 02:01:46'),
(106, 'Zyanna Rossarola', 'mike@blastitallchicago.com', NULL, '$2y$12$31ZcROptFGyXjZi/teFUdeocfvE.Ehh3ndMtLMU1rB/.j86Hz0G8G', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TRAYRrkUPqn3fdf8jMhtyQo2lg2Nd5crjUpN4zicoDfyFWeg4OSChA0soeaGJWJD01M9ODoXcCoqzmEHwyt6sh1NP0tPXva7ZwRz', 0, 0, '2024-12-14 02:19:20', '2024-12-14 02:19:20'),
(107, 'Ativa Voglino', 'latiatallitsch@yahoo.com', NULL, '$2y$12$LIzEx516vHlrstvdIpcd8evOjbXWgiJ3URvJp2oBryodTz5ShvOGS', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'mlrBrpH02yeQeWPgbjLjX7KKpeLekQo4Omm2lzfzECmJRjJF0T5tWMGjHeYev2uYfHTUdLLORPoUH8zqw3acTNyAnTuVe3YIjRfi', 0, 0, '2024-12-14 02:35:57', '2024-12-14 02:35:57'),
(108, 'Martel Haughee', 'wfoley@orrick.com', NULL, '$2y$12$F8bSB2n5baSnPv20pq2ZbuaoVC9Dux/JdlrQbe8A28CZP6UTKa/AK', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '3UibB7rxAhDvB85ORXzzHqjXM158k8hGasy2AyEFssLw980sYVJeNUoeQ2WkTrACg9Uv3QgpNL4BooiXljqhtVSfvUDmdwPTKS4v', 0, 0, '2024-12-14 02:53:15', '2024-12-14 02:53:15'),
(109, 'Cappie Fuselli', 'rliebowitz@venable.com', NULL, '$2y$12$t9U.AE2LLcQLFo7.O65yUO7hJqpmVuwKBZbHVC8Ha6FpPq.muuZlq', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'H7Co00CAAxZ2ArelYBegZHWqAFLWJq1x5gXchTg9uF4tssZjf60R22GXpNNQ5ooJxWjKG9Gy3Y37EnzJ3lYZI8a2sy4ePiduYEsP', 0, 0, '2024-12-14 03:12:16', '2024-12-14 03:12:16'),
(110, 'Tyrann Fornies Paz', 'sakhter@venable.com', NULL, '$2y$12$MZtXg/0xH3tNeniwExvPlufLlTomf1f3.ses3pByEiEkZ8lHvbVqO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '1CrSyeB4SKvdTFAqOZicuGNFFzIs0DWk05yFSiLRzpTcNbMBKjIRn1DSJLoy6KF3svDNjZz09D5ewUSo4YxdxtJjQCNaVQmOfTQ3', 0, 0, '2024-12-14 03:50:56', '2024-12-14 03:50:56'),
(111, 'Sitka Pevear', 'srouth@orrick.com', NULL, '$2y$12$pDDDdBnp53Y6sbUnRgUQeuaugR1F11gWzBd6kqDx7awYlhDmGJyW6', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'wOZb9XcumW2meTiOfe51WVxggMsjsYv2sk7VpRMDiY0a6bQive82LKei3yvKdalNZDv8ac9xIiObR8wLedcGfpLgyKSsXj0Sh83I', 0, 0, '2024-12-14 04:32:52', '2024-12-14 04:32:52'),
(112, 'Cashden Randone', 'jalvarez@medrevenu.com', NULL, '$2y$12$9xe59GXQkzHzl5VpAtdzbuZvZkZNMU5JoyqElGRV.lCmDMHxoPteO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'X5wytnMRyERdThzQDQc6c12ht2xORroaHAj5F1haEACD4hnl5DITdrIQNdiIyAxPD1YjvVsx0lf9HvWQZ06JYh4XSU9Gizy4adz0', 0, 0, '2024-12-14 04:56:38', '2024-12-14 04:56:38'),
(113, 'Doraline Riscart', 'ana.gomez-alcalde@disneyanimation.com', NULL, '$2y$12$/jo1kXCCKvO0eg9UtiAhv.VGANhqBbGHh2y.mj1OUKl5W5J5kWaWG', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'PMfDcK2U5uwoT4PrZA6ueCCUG9fgFFFYQIAVzRBPhG1MA9e3BQU4138fAaZLDcEySf8Lo53YmZNlYIDxTCM6kBfPhIVKVSq3DGXC', 0, 0, '2024-12-14 05:21:50', '2024-12-14 05:21:50'),
(114, 'Jeriod Ceballos', 'entakle92@gmail.com', NULL, '$2y$12$Pc1Gz20J1i95k3hMkwkg5ecxz4a0jUglw/d1m8lPY1PS4RBSNwgDS', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'OeNORJurmavZcjuPyIyyDxiTN4g6z9Yd1NKvyGBa2DxZtkjze2F3VIuTmvqsPgYEpiDonBZWRmMXIDoHFlWQdSqkrAPbCf9PplcL', 0, 0, '2024-12-14 06:14:45', '2024-12-14 06:14:45'),
(115, 'Jannice Gomez Bastidas', 'andrew.blom09@gmail.com', NULL, '$2y$12$8PImuimbu4sUhXEJZRVYxOAenwn4G/eW.7jKlO.PWE7VAefZrhnxC', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'KU4WxLX7UJs2QcRyIkheuyzCGXmLbavAyUSBkbeZ00cl1yuTRJMGGmeWhSgkSBOP23zyKrJEX52pOiSyohvauRPSl0Z3mMIONX6E', 0, 0, '2024-12-14 06:46:20', '2024-12-14 06:46:20'),
(116, 'jiRXXHsa', 'mendelalbano@gmail.com', NULL, '$2y$12$iHbTtTqqv6wygfGaMRzzx.KDfdgQM0qWx9nxvyVfX3MH.jqoIKvCW', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '08JsDTKFwS3D1ArsgKPumStowoST7AW3zqDzSU9R40DcARkMry6qir7GuOrdEVvy5QRstWEuXz8eLhwr1zX23Myc9FWBRZwjU2j3', 0, 0, '2024-12-14 08:15:09', '2024-12-14 08:15:09'),
(117, 'Martaz Pidruchnyi', 'ringer67@comcast.net', NULL, '$2y$12$jjiqkwHKJHXAE1Pj5se.Qu1EpqvJHFBE/V9Dug8SbWfi.JnVjGw2m', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'y9DsVf0ZyjuPG5f5hHx8Rx57n2eNrCVcJz9E8PkLpevVX5Wy8B8VS6IMThY9ob06BAjqKV6kPs5vfbu95lngHj2s6FUTmLnduMFV', 0, 0, '2024-12-14 08:24:14', '2024-12-14 08:24:14'),
(118, 'Britanna Kjol As', 'josueg2015@gmail.com', NULL, '$2y$12$vLeusXPuROtTm5v5OGgFfOPR9Rqm8vMuIP.zhu6p3fsa4H5UmkS0e', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '7BJ1n9v8y2Zqum93usNEVWKSz1ykWBMVtrG9JQNlTPIs8W6P04iSN6o9gIJM4d8vuy9HAXQEKaOMJrQ8sQgnvZAXAmcTvnd3ghIU', 0, 0, '2024-12-14 09:45:51', '2024-12-14 09:45:51'),
(119, 'Juline Olaya', 'gordonhartin@hotmail.com', NULL, '$2y$12$8hl6pJUR3KChCTPtFyGOPuXXSfyrwETvxKZGiJpMy1ClHyZSnFao6', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'axw9F8XuzMboANjDFpVgwIDra5BSw3WcZfFBAZGkrrGae2mZLUXxQT1fmeKsuBJnn2SVxfMOSEfLMGvqKuZ0Bed0EtYkjlO86Evj', 0, 0, '2024-12-14 15:42:59', '2024-12-14 15:42:59'),
(120, 'Hamadi Di Benedetto Puerto', 'st.fellay@dransnet.ch', NULL, '$2y$12$i9eG0eQR95Xf15Bx02PhgOzHxXMIhWVFKFE64MeAQhVzzLDU41rMq', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'COLZ7ac6qESBkDtWpEtCuR5XBLy45EBkEodTLBYS3LfXLOryPNa5CGJaoXbgmlfx83EnbWAirDXbpwotxWEGWNl9jdjF2XDrjBs9', 0, 0, '2024-12-14 18:16:49', '2024-12-14 18:16:49'),
(121, 'Killyan Sobiesiak', 'crockett.aaron@gmail.com', NULL, '$2y$12$VVcCN4kN0nH0OBr.lA40NOY3OTgpJfvYu3N4qxBuC./kiP6X9iCrS', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Yo4ofmCOQycJh35MUN5vgN3fhC94Qn5xfwOoxjvyqy3UcPYRk2yP6FSZGymiz7CchtKaITfF2De8PcxHxmACxm47xsFSz0VOKtLg', 0, 0, '2024-12-14 20:11:52', '2024-12-14 20:11:52'),
(122, 'Delyn Marl', 'hamiltonpotterkelliedry@outlook.com', NULL, '$2y$12$rqYlOLrditsbONyZhtFsce0FLhiKWb1lPsPbyXXtvL6.p5qRCBrDG', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dGeXT8NgiS4nYvECGjMIwj7FYMbkw52bKlaxeWN6CM2VO6MsZ9ZnFhB2RquMa3eK9Q8T1TmdtLFh4CzftX3Vo2EOKXFY8IDj3sGl', 0, 0, '2024-12-14 21:44:39', '2024-12-14 21:44:39'),
(124, 'Tahra Barraca', 'charles_mcneal@ymail.com', NULL, '$2y$12$V4.fFK04ug9khuR0cr5op.j4zZ3bTUfLVr2RZq3HFKP8Hd2iUB73u', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'rl9ihecTVVSfogct8ZezziLyp78LKzJ8Q6siKZxc5BZ08qj8qiglhjj9tCdDzQZDqfiowX6jbedvaIswRSdCedUCTzEiQoz9Q6bI', 0, 0, '2024-12-14 23:10:32', '2024-12-14 23:10:32'),
(125, 'Annique Kemmett', 'tiara.herrick@gmail.com', NULL, '$2y$12$xinqdKFz0EQgnJ/7lf6xbuCInbIc8m//RRW8nBVrZvGSOs8JhgT5W', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '70UuL2yx3gyKgBfZWbs4dgwdPY5LUMDih0uD1dlGIzXUzoM1acJrg57uhpVuTKpa4ElBgZWkttl8jhdZchImOOysLAxFjV7toEQP', 0, 0, '2024-12-15 00:15:41', '2024-12-15 00:15:41'),
(126, 'Juliete Kussmann', 'pepitarodriguezv@gmail.com', NULL, '$2y$12$c21YXLInsEdOeNoZnrXgsOTW.vaUmpe6NJKJBihX5DQaAdP5dQlgK', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '6zwvY6p7cwptHFpkGnN0fF9T3ZeBG3vhu3pOUjMGXGzQP3ztXAgpYoLJhggw97TBeNUHzaqv8E2cU25cLfBuJTrCI3RqGuNAYFPW', 0, 0, '2024-12-15 01:29:35', '2024-12-15 01:29:35'),
(127, 'HjuuiotU', 'filrdelapaz@yahoo.com', NULL, '$2y$12$9la42LqFQsyIdZ0fZl5pI.W1XacdO1x9lD3wXQ/teT5wAXmUljYuu', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'pEtWvjpX4IcbhrJ0TKrCv5L7s5g0fs6Bz4bgaH4AujN31RxiEoJqk7rohGj9tkZOEpjY4lBTZFXcjeksnqDtKwOkxMYwgSzquvqv', 0, 0, '2024-12-15 04:33:12', '2024-12-15 04:33:12'),
(128, 'Katarzyna Grindland', 'lm61813355687955658@gmail.com', NULL, '$2y$12$lzm2RhGEY8KxsU9sPATlQOE2XEwX6LT90ldtJOoSJvNFWmEO.Gsdu', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Ac9Xs7RdyzBmj2bDQ7Al6KJEyAAcqWveQD158MU4rERYWBO0NrRw6QY2FGdPEos2zM5zIDmDMwChrQ4LkyzoKhXwssIWkRicoOG4', 0, 0, '2024-12-15 04:48:07', '2024-12-15 04:48:07'),
(129, 'Meuy Paulay', 'brunorin@tiscali.it', NULL, '$2y$12$KPnSnchP80FBtWIPo2ff2erhiIykfC4rwfasbGIycstKmqQMEIg2.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'w6mFvfToFw45pUXbAJiy19BNZm7eG3mxRMahX9RjxJ2efnadSbYx5dqa73yocZ6YBjjcruVT9wOVuBlDNIkYmYxD8SqOd2oKfXPj', 0, 0, '2024-12-15 07:06:57', '2024-12-15 07:06:57'),
(130, 'Shaunie Worter', 'ndembesky@sbcglobal.net', NULL, '$2y$12$s.q28JJc.HANB6iXXBBloe2VZx3Fw/8sRmtmlIA0kIqvPe2I5R3RG', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'QQq1LnDAwG9B8silOsgwnOLucWOTPGyO2eNw5HLtwfwkITdUnX75fn1e1LjkRR0jklozauWOr5pFXRUI331XzRsZ8I5R8vOl6nsP', 0, 0, '2024-12-15 12:16:49', '2024-12-15 12:16:49'),
(131, 'Isham Macomber', 'jolene.milot@gmail.com', NULL, '$2y$12$42Orec9hMTGS4sY5s4I0B.queW4xL0Nx/9P23w6FgSMwyho1bGhZm', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'cbhAr4nnFrpporAdD0zqW4Nsk7PNAYtgjxOv7O5Xa8K3NmL52zWxRvWhWYipT2NY9XoP8ZiLSjAX8AxdetzUseqDfKRi51Es1FjF', 0, 0, '2024-12-15 18:50:56', '2024-12-15 18:50:56'),
(132, 'Rozella Gettermann', 'arellanoajohn@gmail.com', NULL, '$2y$12$6uPgiweXCorpFOJ9uQTm8OU.i9vaZeJcv0Tnwz7IcAJ6N7mBZZAiy', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'l1TFwSIfEJC416s671EBW0cGbFDKJX3j9JA7GiJAOG3zJJgDXXwRpe94CwmJoMjprq1HlOb5xqhdkbzN8FkpcIPdyVsMb9ozVd7D', 0, 0, '2024-12-15 23:58:17', '2024-12-15 23:58:17'),
(133, 'SiHVKyhigTr', 'qhqckwscf@yahoo.com', NULL, '$2y$12$loo9cI9uSm11Bq/54y2n5.KEDNjkoRfBkCnXs5Qai/rjkbrtfltaK', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dncdm3ujMXP2Oq8YUcpbPkp5E2vujMawqk4FAli4U04YmcJvLOLBfyChqcWU2mzRjDSUJplOWevucQUPtVgUfPjFSOL63doNmhXJ', 0, 0, '2024-12-16 00:54:22', '2024-12-16 00:54:22'),
(134, 'Domenica Faulkenburg', 'projectmastersmasterproject@gmail.com', NULL, '$2y$12$1aKhHS4tmC6hzsweb5.aDuXYubQlExa9Js1oeCiswcP7ywjJiIfHO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'kPpDZ6WD6JCv7KMToRd98mkoojwRIlSU8MWFrEQtZGx5JfvuwXC9stuJmh77WChEpZSqqSXzMrvOphLafT0LyXvL4HRsyX33g6d3', 0, 0, '2024-12-16 01:11:45', '2024-12-16 01:11:45'),
(135, 'Queene Lugo De Langhe', 'majahhypejokes@gmail.com', NULL, '$2y$12$hHNReKAmP2VCuO9d/C2vauG/rII9KYnOsGJaNfci6NSbyNvqadH2G', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'y0keuvAR5OCAFAkgOHYdRnrsibWJtMETRMsNKyAs0DONrNML3Z9xIKlSxDE4OsUYV1AP9cn98Uqm2B6g8em3pcTjcQwc3zH4sGEH', 0, 0, '2024-12-16 02:06:10', '2024-12-16 02:06:10'),
(136, 'Jadarius Shoe', 'raymond_matos@yahoo.com', NULL, '$2y$12$F3j14bNHWogTu8zUOAggreRDreugpsL37Hw1.uR3JnJYJfJaROt7y', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'QPTxU9YrUkqQuE9t4qgaGfQD81T1xyzN7oeIrsfABYziV4JI1f46KRB4AabzM6XpRoq6uH8TUUeHLMVb8SB13A6lpsvD8wkbtcKd', 0, 0, '2024-12-16 02:52:17', '2024-12-16 02:52:17'),
(137, 'Sanskar Sandie', 'rockyboxer9911@gmail.com', NULL, '$2y$12$l1dFrVFoUTrKjEqW1eIW3e0DV5xfZntR3cUMKEq6opqTvBTALVKhe', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '6UAjpvQbYcydlqOMmoI5x735iCRCXOeHpatAT5ZlPX0YgUCIVLI74DARe2bDrM63dTTGlwDTKsG9JJ4r0kEJ6hG56ws35XBpmTxM', 0, 0, '2024-12-16 03:32:13', '2024-12-16 03:32:13'),
(138, 'Roza Osamor', 'jentarvp@gmail.com', NULL, '$2y$12$u1PQ5gHwovENsuMS.Tklb.owJaq7UDyofopmUHnSwXBLjypz3pcfe', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RTfHk6Cb9R53o7n3Kp93wb7kDGJlVbv4p5Vu95sm7H3vmXc6S5uQg4apgwQPGrjxrb8B220wOLPEF28lDFgaS5Vd4o70UwHEhexh', 0, 0, '2024-12-16 04:11:35', '2024-12-16 04:11:35'),
(139, 'Esbeydi Kendro', 'uffi33@freenet.de', NULL, '$2y$12$aVba5GmMHdonSb2o2t1JaOoV2MtHBOlgDgNz492LymmorJYs04p.y', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '9o0rrAqJhiPHKFbPe04xydFz0vebXBOGxtoUb5YyQjuFzw1t448EgaelxvxlrT8SErTAQQuQVVPNq8ggxhQ5t4dJmmS6Lwocvyq1', 0, 0, '2024-12-16 04:52:58', '2024-12-16 04:52:58'),
(140, 'Evadne Penister', 'fatiguedartist@gmail.com', NULL, '$2y$12$Q7CenY3P2IJN7.d0BwdRBuOQoSwsRLQhY1sKBBVSn15AofbE/WE9K', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2GiR7w6zX478kikVo2zfeeXe5a3wXBA04m2VOnRl4sYUuTWK5RgTmFY35rer4S0zw2tiJcBmcbeaYoV4ktVT2PnIqcUQbqS4zppn', 0, 0, '2024-12-16 05:35:28', '2024-12-16 05:35:28'),
(141, 'Isham De Larochelliere', 'jonkmac7@aol.com', NULL, '$2y$12$HMmO7R8I3qKLw8IQZZqYOeKqwGwdm0bWuXZjGFOawZBvKuuUYIuw2', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TAZM4nxySxMAuxFHvoIWtzkOxAC626b5qKPKzMkI6NCZe2I6ECdULepEVYWx5egvq8ZIrOEQCWxYxNsllQTusRft7vAxvClaS6z1', 0, 0, '2024-12-16 06:23:10', '2024-12-16 06:23:10'),
(142, 'Nirvana Kornder', 'erhanyuseinov82@gmail.com', NULL, '$2y$12$d3kNqYFqMPn.liuiaHAL6eMKBUwiUR0YDeIAofbMLGSGxxJnqWa.W', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'UUYHmRCnHXmY4vZieweIowRvhwwXKYmjazpt38vQ6mJtwfSHqwDbr5V4NHFdlsfT1gQhfjFFHoxWL5EVQ3wmsDMMIJcD27LacjXU', 0, 0, '2024-12-16 07:14:46', '2024-12-16 07:14:46'),
(143, 'Bernerd Coriat', 'haileycuellar08@gmail.com', NULL, '$2y$12$.3I3znG4qLaVz3psQevhzOhonGgJi2QGAbspdrHR7pMwsFYM/r8uC', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'yGTLsNUoWVnGoBcsgzlVpyWndGtVRXQ1qbGq4GZpWtSqbwqGF55PVDs0ueUOZF0LRAWMJelRqXY8qeev34T2fQuYhc71Nb7f3acw', 0, 0, '2024-12-16 08:13:13', '2024-12-16 08:13:13'),
(144, 'Tanee Prot', 'neufeld2976@gmail.com', NULL, '$2y$12$7V3Q9FsN.73srqaputTHcuqCykhrxr8CkLnqcMTzfhVw8CGr4WkGe', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'XWTLu1hfbopK6xiR5rlWDD6vmwe6NTyTE0zxybhms05ldx3GkyKxiiwQE9qJ7I2uUO092u5dkkDYxysvFIoufOBg6dGsOxXOob0L', 0, 0, '2024-12-16 09:27:31', '2024-12-16 09:27:31'),
(145, 'Joquetta Moyano Villalobos', 'jennifergilbertctv@outlook.com', NULL, '$2y$12$NEcIfjj98KOgdXBkVX7YD.efn0LA08h8k6sNQU7CSusnlvMCNKZ2y', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2D7bp3c2FXSObT6akKy4TwNh3TxqE8VeB6dtnZYmMV04ubFeJy7S525PJ2orgClvYiEmSBNSJtW4xla0dK1AGAnrENg9z79BDfqj', 0, 0, '2024-12-16 11:29:05', '2024-12-16 11:29:05'),
(146, 'Abimelec Perez Lana', 'sachi.patel@us.pwc.com', NULL, '$2y$12$trHcYIqU5zbLPi6SZ/EPZuO8NHaQNH2Rap59JO3VMk1rKU02Si1ee', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0OvMtwgtuKekJS9qnQ5yWWvZqZRfqogmgJMncAKzvFEDrTi1ctAf4Ao7SYbiGcXIwcANwvpB8HI6Mw5mHWHTOnPIeqkdfQRUZIR5', 0, 0, '2024-12-16 14:16:13', '2024-12-16 14:16:13'),
(147, 'Coen Zarn', 'kayla.stout10@gmail.com', NULL, '$2y$12$26ZwL5i8gubY6m2L6X1q6urJLDv6fGd6gydaHxvWqSAqQDWw6QFDW', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'GeWjq3F0E7Kff2t1qf9Zd5gLzxR1Ey4OSg1ugG9jTH3JDllR1R8cub4E7qmAkp4OjCfiU7dAFb3CYQPmQxSklaTan19LVmwlnMCX', 0, 0, '2024-12-16 15:50:10', '2024-12-16 15:50:10'),
(148, 'Jude Bremec', 'info@maillard-monthey.ch', NULL, '$2y$12$uG0D8/YWtdl2toWtS21x3.77JXX/rhIy9zjr.OyI5/.FwpXWXKYga', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-16 17:24:09', '2024-12-17 03:15:13'),
(149, 'Lynnie Soria Preliz', 'malonejordan@outlook.com', NULL, '$2y$12$48CIBiL0X2wIKbB9IpqGsuqgSx7VRRAsC.srOdNNCFsnBim3qSQ5u', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'mkU9AOaBEOvs5w7YFfqjRy421eiLl410x8ynP3aPyTjFo3eRgtWX78INHxbWs7oGTljn8OFt12nGJsBcO4na7wwyxyBDFcxeQ1UL', 0, 0, '2024-12-16 19:43:04', '2024-12-16 19:43:04'),
(150, 'Aira Forestello', 'lahoucine.fattah343@gmail.com', NULL, '$2y$12$/2HXF8IgTrqHCjk05LnqHOVH5b9iNw9EIQoq2xoNWv3ATvpl8ZUf.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '46J2pvyBS1vKkW59KN9ycFPc9lWEWO8tt6sDiAAW0pbHKeeB3xyQh0iDHgtD9cPNZRYRg1BUay9O5wrjajfVkrDNRwBCxW0KjLjS', 0, 0, '2024-12-16 20:38:27', '2024-12-16 20:38:27'),
(151, 'Chanderjit Aizawa', 'cramer.j.g@gmail.com', NULL, '$2y$12$ZSCm4dQc3p8XKAN1e1BKnuyRyAx/kv1qZZJ0eYeTKvNvnQ2I36HMa', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'rbhiTQ9xn3OIN195dWIsfVirI3qb2ijHjch7BRwOCOGCRYt7mAbP7We7GnOvqkxyZe5EIWqYU975MRW1bypLoNYSorpAE1M43l9T', 0, 0, '2024-12-16 21:21:32', '2024-12-16 21:21:32'),
(152, 'Bohdi Ipsberg', 'abr77581@outlook.com', NULL, '$2y$12$cCSSbvChYtgSv6v2OB1s5uA.v4YWwqxbpdxXs0WDVvQ31dEW1oya.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'nu7e3ucReLBsR6IB00iRxuDe6wQjO0QQetU2BApZKZtlVutlxCid07S7xF1el5LOZp0R8F3xyNzTN6OBohX1HeAKzyWinObOUEih', 0, 0, '2024-12-16 22:00:01', '2024-12-16 22:00:01'),
(153, 'Mallari Giordano', 'boynton@uw.edu', NULL, '$2y$12$WB6jgyQm9rQooWJ9JszNVugXR.Dd93plzpGetGS20UJiVrcE4zrfC', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-16 22:34:22', '2024-12-16 23:33:58'),
(154, 'Carisma Vonderh Ar', 'mary@skyridge.net', NULL, '$2y$12$trT5TrNVFCCCIXgTiYM2Eeo6D48.S1YekvUDxgM.Y2GfjNAyO0GQa', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'PPkd8ESJ9ZnYkr9cfVFWg37Qinu68pZYrpbsErM7hPo91eIOTBMsdWdqbV3uPaXXNK4MJ8XnWyuaCEOko0wSpNRn5G7bIf7i8qx8', 0, 0, '2024-12-16 23:04:24', '2024-12-16 23:04:24'),
(155, 'Athel Khor', 'info@audreygoebel.com', NULL, '$2y$12$F9IjAu3YfPu6f2f03fcoC.yaxxvV1fEgYcXz36DgF/M06MgZTVLbu', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'AwIozm3Wv7TAg3dgWcdOlSrMi8azlTllGv4neCaRyLPJGQXxg8XWqFDZOFDsSGtY2O5lCf3kbTO6V5qLYmQJnAPRsg9PJtXQf6Zz', 0, 0, '2024-12-16 23:34:24', '2024-12-16 23:34:24'),
(156, 'Talen Luppi Berlanga', 'evan.licht@gmail.com', NULL, '$2y$12$ihelHiFDFxn6KDqkhnqQJ.GjhRVpSSoXD4XI9nIEBNHjASS/hR9rW', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'acrtNE01RSWtHWyYmMKKDZ5pKJ8teXU6aJyOLJZefABKq7MRIFG8jVRhxcDnTe1mY2rAiKg4DGWEW4ZO76xD2t1HkjKXdFGG8hTu', 0, 0, '2024-12-17 01:00:38', '2024-12-17 01:00:38'),
(157, 'Temekia Picot', 'jmiranda@dreamseat.com', NULL, '$2y$12$tcBdpndN.8eMk2iXf3SEF.nZrwZoC6oz5N1Nb9RPHReL8E1UI3Zc6', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Z9yhwXJH9o2qMWgflhZJpZvwsnpNCl2Q1lOrY4kK5Z0mlGIGiuRytDuXbXlyv7EFOednciTX98g4ZZB9yGrWVeGIyFLtRDW9ySKp', 0, 0, '2024-12-17 01:30:20', '2024-12-17 01:30:20'),
(158, 'Aleta Schilpp', 'wa.ellis@yahoo.com', NULL, '$2y$12$4.btE4v.5bNZ4p0nLmLwE.Hwjd0UdKu0N6Lux.XFjjLAlcBfKvLyi', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'KGsG98YqcOLl1erfCaKtIkxe84fwkYsjjyF2sDp7C0zbrohtCyI7xDozAj4cqvCRwMpJmpri2rGp1POdyzJ72ypFx9jkJWjwSccR', 0, 0, '2024-12-17 02:26:41', '2024-12-17 02:26:41'),
(159, 'Dempsey Hagenauer', 'emilyalbers24@gmail.com', NULL, '$2y$12$DgdZYZAVORSVP.sTiKr75.1K7vW9ZT5afTvU1tYtOcPkF/jEHJ4b.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Z7WVVJPrTBUXM4O3KvUhudUFzKkx2l3UagLjGmy28KPzZENTTXtu62Vh82KV4YDaRiVvDQeSXER3oOiVLTIn8uxVKjXJBiAKY72Y', 0, 0, '2024-12-17 02:56:36', '2024-12-17 02:56:36'),
(160, 'Ellwood Carzolio', 'office4535@merrymaids.pro', NULL, '$2y$12$mZt8oX4Clv25XAl/HgiPGeldzTEP0zfAZ5HnClnHOrUzE/lATggoK', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-17 03:28:46', '2024-12-17 17:30:38'),
(161, 'Alena Chrystall', 'jlandrino@yahoo.com', NULL, '$2y$12$tOOaySQSExXdBzFLKpr1UePHb8Bo5IPlpc6.aVaBFzrtUmYBoKhRS', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'NObQJWhsRD7eh9rGEyqVkBOovmj1XtVj85gDNqcwlGxgyRuUggU23J7DWEXeXYMXZCHX4ZTn60LPk0IAmNXf6Q8Cvz6YsSM0IN5K', 0, 0, '2024-12-17 04:01:56', '2024-12-17 04:01:56'),
(162, 'TLjoksvWIWXbPL', 'weeksdarlap7@gmail.com', NULL, '$2y$12$JoM7xRYMV8qOQyU/3o4Oqu4TgW50yzeGnJZENVnv7duLgxYnHzoe6', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '1doYfl9BDoQU1aFefhGFN6YMM3hrfSxNQY48qIxmGHrvISlzBkIQ4bYfDvE8Znjz0meRXqmUdEeqKTzO03Jqe33zvnmUQZOPpJg7', 0, 0, '2024-12-17 04:24:46', '2024-12-17 04:24:46'),
(163, 'Nyajah Hormiga', 'lisa.palmqvist@essity.com', NULL, '$2y$12$nB/ZgQYIV.XNo/1UInAJZumn0JFDIcMxmN5WewlA4UXZczH8IxF2m', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'WdqjdixU1WXnANCBkTpBiCm1mCsZd2VzwooOHDwTqflKDqubVJm7yuEvzvjyngJXF7OxO9Z0MluzBdRnnhg61dexx0QobbdkpoeU', 0, 0, '2024-12-17 04:35:25', '2024-12-17 04:35:25'),
(164, 'Kelvin Perez Perri', 'lenakaminski@nestrecovery.me', NULL, '$2y$12$nUT9Rh61L8RFxYOWsVPjBeegCPYM0K58lhknRWKkrQkKemG3b6/ue', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'yqjLN6fcWVdnwljKaxfWe8iU0kFgAB1uzy5aQ631qJ88apPaaa6M0ja3g3hpMDdcUHGiFTE03dzrfi3lvmeKMlZBpdLrtnWmh5LW', 0, 0, '2024-12-17 05:07:38', '2024-12-17 05:07:38'),
(165, 'Melinde Holvold', 'm0neymiller@outlook.com', NULL, '$2y$12$NRQQssTuRyNMaCmrDpulbuNw6WrKFzeeDRXVmY/lRbPy5.fT/aiZy', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'M93AczJaRQpQyOBCFx2Y5cL8xenCTZyu90CSVZT8zA0SxzQJVOOw5zaxQQAtbtaCLmRDWgdGDDx8VjBy2apkhGbfZbWoMELGpsMX', 0, 0, '2024-12-17 05:43:46', '2024-12-17 05:43:46'),
(166, 'Eris Brandolini', 'dwarner150@gmail.com', NULL, '$2y$12$y2c699mk67qVyS/LMmV0T.FoUn4ijsyIQftzxBZzTHhpZVCdBAAWm', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '22P7UVtj7BYPLVvcqEtqpZcARPrtT9FlLrWHuQ1Vp1lgxyEvKOPY6o7MTpRXN5eWl0MTii3ZW4p3m4CggB5aVEwMyepjajj88QdT', 0, 0, '2024-12-17 06:22:05', '2024-12-17 06:22:05'),
(167, 'Brasia Gallego Guardia', 'arias-family@charter.net', NULL, '$2y$12$eFBm5ViVlFZNavHhYXrYLeWqypghK7G7MQrEV5cS7QZUgOtKzqbEa', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D3TLc5nEvj9XALOiU0mpwVE2b9xxIOuyQSPEck4cFvWPNp0YwYAJMEEI3x2DDU0jbuHlAz2te2eqJV9MwlDYzHXHofR8JU0OLI1D', 0, 0, '2024-12-17 07:02:52', '2024-12-17 07:02:52'),
(168, 'Coben Bisse', 'mk535@cornell.edu', NULL, '$2y$12$OCd0iZH4PXOdFepxmkD6Yu8.MZ2yDdp.u8dvVQuo8iIUjWFWYD11q', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-17 07:51:43', '2024-12-17 07:52:01'),
(169, 'Lerin Radszun', 'peter@ppitsolutions.com', NULL, '$2y$12$VOp9cdj45FzWBpDNvivY7uSiM6Uo/mnS8AVZNuDphcWSSuHX8n3CC', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'NNI3QeoYjLL3I8hOMDwLBg1ThvTd2md8ZtPsLRm8iXDt1kiWsBhM90fKcubB3HJCMHa6PiSBFKIAdm63EFY2IlugmzM9SBqiPgQP', 0, 0, '2024-12-17 08:51:06', '2024-12-17 08:51:06'),
(170, 'Shirlon Prazoff', 'chase.davidson@hotmail.com', NULL, '$2y$12$2apMSCEyv.PYbzejvy9lWe1uvdZMnoHhwqc.tKNNkxGw7u69/BBqm', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'UKPyItbYbUO8L1mnwA69xYzPqFZVRx4jnvp64zvcHhaMggyXYnvDbN6keX55xXbw2KSfq5vZC3ZjC2c9nBCq7TOUOcB3vlkASWbl', 0, 0, '2024-12-17 11:10:43', '2024-12-17 11:10:43'),
(171, 'Pamalla Vitorica', 'hasseln@aol.com', NULL, '$2y$12$Zuj83qh07UwUilRFB/mD2ud5yhuAg6w.VfRtsnfnPUYqy1OmWa3O2', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ORBOHf76HRThYczKQToBKtEKNJwDKmMKtU8ne1U1Fx0ftSp7zXnYgLX4svPaaCEmWG8IrfuAQY7NV1wMuvZfHnXVAdSzdWwfacq2', 0, 0, '2024-12-17 12:44:24', '2024-12-17 12:44:24'),
(172, 'Joachim Kohaut', 'richschaf@icloud.com', NULL, '$2y$12$kZnb.o39ia19fcfh5L1kS.0xWf6mHBRC9CXj4UsRFYkd7CQ1o.Dz2', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '5rsBS5XN1Lp5VjWlxC4i6X5yv6ny9yPpLTmlAiuollc04thHZuFL3MSRUxSSJl3WIp3hLN46mGG8xANOdMHQ7oRwWprAT5CAhKuK', 0, 0, '2024-12-17 14:18:13', '2024-12-17 14:18:13'),
(173, 'Yarida Blumlein', 'jennifer@nifelledesign.com', NULL, '$2y$12$FUiSHL4YGrTf.v23ZgRKTOCWEHATgN8sQ9T7Z9.14vwziRuUnVife', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'eziMEzJEWWZjcme97BrVbOFkBdh5z80qjscEVPjqhgPyzKSbG5YPty1ev2hmMn3sDA3WAZpptwRrk8UUpZvrU1b6TYnTnBKBCGsn', 0, 0, '2024-12-17 16:43:04', '2024-12-17 16:43:04'),
(174, 'Ranecia Mourier', 'broadwayag62@gmail.com', NULL, '$2y$12$jYoKn.U2WDjUvFBbGF.0TenQMzxyxr9xX5R.54q3qUNkp4p3IPRrq', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'mxU0TNdb77PVTLtT76p6bkxi5sR18wVujn6kpGyBAbZzrZy7hzWVvlbgPJ0Qsk9pWCwf9eFx8QfPnW1nVmA9zeRUSXMOz83053PC', 0, 0, '2024-12-17 18:43:06', '2024-12-17 18:43:06'),
(175, 'Frontis Vansteenkiste', 'jamie.smythe@mvetpartners.com', NULL, '$2y$12$XD3fO6R.n9i2cH2f3TFLtuBsni1ZARimysu.paTqf92xx6Cggc4Ji', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-17 20:10:44', '2024-12-17 20:39:32'),
(176, 'Wildred Willprecht', 'willy.1983@gmx.de', NULL, '$2y$12$0Ihk1CHSbfA/Teba8T4lJOAwicvwCpohWBjrer27qeS6dSLOxVnm.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '3nUvTKEJr6FJ1UUeO25hbb2t8rDhZE5LyNeeq00OwHmi0VRbvZzpmnImNFYTj3dTBVZ6SUPHzHGiJY2vrP6wCByAFRBMyAN6ETdG', 0, 0, '2024-12-17 21:04:25', '2024-12-17 21:04:25'),
(177, 'Taeghan Requenez', 'moconnell@gouspack.com', NULL, '$2y$12$A4djPsk3GJyA4dUhuylzq.6IM5QLIngjt2KOTSgSzPIeucgwhHZ52', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-17 21:43:02', '2024-12-17 21:44:00'),
(178, 'Analaura Fragale', 'mculbreth@ectinc.com', NULL, '$2y$12$VWd2QBC8AaOXLBhgFS7HguAqW7WIEWY0FTIxRB979pRx.4EiBargC', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'z61vSHrkMbt0bCDQaqj0g7yswbcHZJZOvCktHWAUovxCG655sNIliREub70nrse3dML7LexV2eHKQSgr9mNJCO2XTvdExSQskvBJ', 0, 0, '2024-12-17 22:16:49', '2024-12-17 22:16:49'),
(179, 'Yashraj Menzia', 'mpeterson@chuckhafner.com', NULL, '$2y$12$belKAjE.VCTTvvdjGZDZluJ.At6zP05.FALaI9GjWHhFWxJeHk2U.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '4at5bsuInyYTfBNzZVECnRXLODreFfF4HMmu3LkaZmSSvRq6cPHdzgA312jCZmiEr50FBRpesYqGrqp8KKCVPpUUxy0Nmld8VQcO', 0, 0, '2024-12-17 22:43:23', '2024-12-17 22:43:23'),
(180, 'Wilborn Arhus', 'jennifer.boehner@vonderhaars.com', NULL, '$2y$12$yYf0BkJTKkVjsTHgxVvzbe7zV/IIsZkOo10JlxhzEnkbshRaHINpG', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '1OIi77OxyAisP0XkFZeBz8DzFOQWYGvvOr8r32HhzetXMNUZZ7ooMCqGoNBrmOFXsNY6O6JYE1QyGdldRpA3aUw8BCb9gLFS0SL1', 0, 0, '2024-12-17 23:06:56', '2024-12-17 23:06:56'),
(181, 'Leilonie Galva', 'juliakatdar1234@gmail.com', NULL, '$2y$12$NB7OFnf09akPSsrTmSv.GO6LN8ppEo33bjeWe6Hmrywd8iqqigXle', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '8Y7Ecw7SXq3JXJrNKCFXWb1bTUvGZq7sry3UoyiaAZlBobP6YEzqQn544oOdpmfNgHHW2RSa4vs51svbHrlSrRtHtmU1CqvAJAVL', 0, 0, '2024-12-17 23:27:06', '2024-12-17 23:27:06'),
(182, 'Tadarrius Badescu', 'bhall@npifinancial.com', NULL, '$2y$12$A1VOxIpu/8fE0.2AoDHDPuB.Y1gWG4SC9i9SrYvy4/yPphUGvVPvy', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RnPiL2EuK46E9FpVs9fuJFbgB2k3Ie0g1a2ncmdFNJwsHgV26CXhw4pcpIYPQQmAzSmWitafve136Pqus37JSvvBr32Vlknx63sb', 0, 0, '2024-12-17 23:46:19', '2024-12-17 23:46:19'),
(183, 'Aylmer Aban', 'mrwhite@bernsteinshur.com', NULL, '$2y$12$TARrWWBv/ur//GV.lUjg2.Z.SoYe9pwIQ0Q9AQvlyLUvBPCHF7zDy', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'CtZ3UoXiTmnrK0XQ1mOBRnyI4soNRYUcKdUqzuUEHpEbSe03W8Mukt51n5vaFRMpu2dqBzNkbmXBClHgknBQywt3HYWBvVOZCphB', 0, 0, '2024-12-18 00:05:21', '2024-12-18 00:05:21'),
(184, 'Tyreek Oiarzabal', 'ncunningham@hcoadvisors.com', NULL, '$2y$12$VYjDk9l5eo3gWtlAFq9anOP/cRaXbGQ/FFKZpY.SBWspQlQbNM23S', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-18 00:23:06', '2024-12-18 00:23:29'),
(185, 'Kristeena Circioban', 'juaquine713@gmail.com', NULL, '$2y$12$4LnsX9epPEBA6TRRBEBkKe8BRwawRJNIJAl1cYsYuBYsIc3ifUaLO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'AqVroYvbJozls48EEUgCobcApXlWg1GkYqU9vjZc4SebNlsBfzy1sveBbiwotIOIroePDdRhxUpdAaONPwRtP4qBxCrA9O0YbXny', 0, 0, '2024-12-18 00:56:27', '2024-12-18 00:56:27'),
(186, 'Myiesha Laughon', 'd.zajonz@protonmail.com', NULL, '$2y$12$JFiIXlAlfZ.n6SrwTUJz7e5zvmUeRpdRvUssojZuTcAr1S/HbPZTO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'P4kLBVWB1bMqPuQ9jEWP95TMM5XAwd1zxapfbQrYWMgkxAxfoEBwnL4cI5g8BkzEjUvW5xU4TxaLoMHy7Lp2JiaUbaE37YZmzqZh', 0, 0, '2024-12-18 01:12:47', '2024-12-18 01:12:47'),
(187, 'Timar Visca Mendiguren', 'natalie.burke@troutman.com', NULL, '$2y$12$var.vmdwXWeHXHRkFewkWe0DYW16glUux2GXA/mOxvp20CcerKVla', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '1JtndY5XXSBZyPO8MtsNA2RWFyfDTQfqegPJL4MUKG37oMIBU62AHjfGjuTW6oBs9cLyhQHtaaZHcTKqJpzpJ0YcJ0PDhIiJkmdM', 0, 0, '2024-12-18 01:28:58', '2024-12-18 01:28:58'),
(188, 'Raeshawn Bakka', 'micah.hein1@gmail.com', NULL, '$2y$12$fkWkK3hNMzWg7jEsBGsMoe4d3nkGgPHmOT9GFHgmkExDkZKrMt14q', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'tWxNkw8f82Qkke8ijEPQszfUNo2eZ99qMtJJG7lSA2IA2CWjZAwLRqTTDcq5dLsuMLfmA15DSvat9R6mihGeP2dEcWD0CQi3rh5d', 0, 0, '2024-12-18 01:44:27', '2024-12-18 01:44:27'),
(189, 'Wenonah Oldenkamp', 'mouladboutahar@gmail.com', NULL, '$2y$12$ILuInbzF6nAGoL08f4cVAerL7kI2ZdrZqY64tqLt8NHeTtylX.cje', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'e4vrQLJvcjXdlQy1YiAv7zkdkAeJ0QUcrq6UBDuYxuoB4C9QQWf7MuEOWu8jPhe3KfpjJlaDgnutmJadzPPiYlfhwNAtDIUVdBNJ', 0, 0, '2024-12-18 02:03:35', '2024-12-18 02:03:35'),
(190, 'Kaygen Chinigioli', 'sherrera@zrgpartners.com', NULL, '$2y$12$b4OBS8LGTOi6G/urkR9AzuqyreAklzNwPiK3oTqixqtb.4FEYZkW.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-18 02:22:30', '2024-12-18 02:23:07'),
(191, 'Laurilyn Ciurletti', 'sbernick@fifthgear.biz', NULL, '$2y$12$ExZvkQDls6CVP/fS1sZQ1..5y3etSRkpQKsuirH758JJPcvpKO396', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'xA5JCF8cgkGsDWC9Kzp5sfFXLmzmTCsis2KGioicdsHEksDbHM8Rt4cS24Q4jgmJVVy4QHIw3qyWxf50ODXddULqkcQYBhemgeAd', 0, 0, '2024-12-18 02:40:42', '2024-12-18 02:40:42'),
(192, 'Aleysha Ornes', 'scott.j.gehrke@gmail.com', NULL, '$2y$12$OkjdfrgIo0ywd71bbmj4Y.IhvocDY43ldPVJOugyIwafgazT1A0ge', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'fIdxFrJ1XEqKJeFhNVHykMRjc4837MrfVzMFws0sLMi6iDmsx2LnD2FyhyQ5SC5WCP09rx6OTKRb5HhKq0yPpYTFlCRTBcacJaWs', 0, 0, '2024-12-18 03:26:24', '2024-12-18 03:26:24'),
(193, 'Jamario Bacciocchi', 'dirtydancer64@hotmail.de', NULL, '$2y$12$bzQDEWq3z.NVoiv2Jsqvb.4AdEqp255VU0xKeX1KC5Is.omawp092', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '6BlxyiYX1RGrglzhvds5iabwK789Fn0eteEeHGwGk3Y2pU2HSJ4kxNkV8C1uCRw83kvvO1QdGtIDPJyRZHo661PmtbQySsmn6zpa', 0, 0, '2024-12-18 03:51:33', '2024-12-18 03:51:33'),
(194, 'Shyleen Wasiljew', 'stv_han@hotmail.com', NULL, '$2y$12$R05Ba4fzCThEBkI01tOSneAZwUQpBtx0uWzyzeQibjft41yS50mZi', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ZUEpCDYIjZxbQUDiLC3iRGZtrvGqsrftE6MFkjaWw4L5VrnsoaaWz94M5J7rYWhRJzHmyg27JkooTNDekmtQ7qveLvMoKv87lr7L', 0, 0, '2024-12-18 04:19:48', '2024-12-18 04:19:48'),
(195, 'Hallard Greenberg', 'senlow44@gmail.com', NULL, '$2y$12$mG.E/fctc1Zr1RbB8LQ9B.9j81UI8QK1msIHPVv/14yNRlUIBhENq', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '96F5GvXANzwm6K1tMbRwsz6TwaPlncRhMaW9c0WccnzpVvFtVPO8cr2KCMyvWdDdSXMHoxRDjZ9g1xvVWGoQP13UzuBl3SBNHVXl', 0, 0, '2024-12-18 04:19:52', '2024-12-18 04:19:52'),
(196, 'Wail Sender Palomar', 'foley.jk@gmail.com', NULL, '$2y$12$LfM/lo3C5CZAb.6iNjPX1uB9Y0GBpivIBI7TGGVOH4Cuiy7w/uY5S', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'bqui4NgK2p4ubaYZDyTjgyf1wSpGyMENgkr2gILblf3BFoqSZbaANOpygJ0bwFXNxmmQqcIqLtkZvGPeiAxpUF2q2PqZiBIl8u6L', 0, 0, '2024-12-18 04:50:13', '2024-12-18 04:50:13'),
(197, 'Keane Burklund', 'utidonotebookpb@gmail.com', NULL, '$2y$12$TRh/vVa524vQs70AIXpibeJcSxApKosGNUCh.5eaDF2dHpKreBzJ2', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'HaQ5PK4y14hMlqUONwbWSGvJ1QFWkYbxySVABzAs2lJgDMqgEALFSOO56X36OWlr4x3FeB6H6MY9Acd5I2MgxC9V8xnIUd6o7Txc', 0, 0, '2024-12-18 05:57:46', '2024-12-18 05:57:46'),
(198, 'Davaun Trapido', 'powerdieselgroup1@yahoo.com', NULL, '$2y$12$Gg3eFcTbdV2OxPvOz76PVODwBvcLWwxOcKtr2/oHEz7msgsiWRA6a', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '6xnzEMjhKARaPhyYPs1bIJfkjyL5CkMHqc1uZz2alpXXPzbVMrz8O81l5CD9g2FX0BeonfW21N0UjeQ2fmfRG0S4VYBR5Fjivf3z', 0, 0, '2024-12-18 06:38:25', '2024-12-18 06:38:25'),
(199, 'Armeen Shmite', 'balou4545@aol.com', NULL, '$2y$12$CWfkaipfwqqNP5f2Ap3veerOH8QPvy4ec/nPjlUytYV0Oz0CSpzjO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'QO4iLDGun5XnKFy63U9JNyBGfloXv8FrTvIVuhoHYFqhaJdzzf7QZEqKCgyefoDN3xhr1VOgdNNyeSdVknrPlyjO0qEVCsriIqcy', 0, 0, '2024-12-18 07:57:46', '2024-12-18 07:57:46'),
(200, 'Addisen Giboin', 'dawnknol@hotmail.com', NULL, '$2y$12$R5lNNnsEyq5VrjBGMfQgf.uS.H.DHguqBbomjTmmisFruFcwN69XG', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'lIinp0FAAhqZ66PdZYFUlxcjstsTklD31uydzuKy1oEezU6tzJ5UTC8NaDhGhYhmNyVvliJlGPvQK4OFvYGzSZUGWEYqvZ1TxLIG', 0, 0, '2024-12-18 08:33:11', '2024-12-18 08:33:11'),
(201, 'Sharmyn De Pessemier', 'nosnebyellek@gmail.com', NULL, '$2y$12$iZM8Y9D46PKyz3YniXFg2OOop1bqNNsmwBWxgO.pqlms2/yxSLfhO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'jTXGbKdyAS1SVE8WjM8MyZ2HsWNhNEjI06AUJ4dqRjZRWFLeCyyAXuwZVKc3zilaAoeGqBnXPPg904cXiImF87ENAXzWL9cYVnwk', 0, 0, '2024-12-18 09:06:29', '2024-12-18 09:06:29'),
(202, 'Annaliisa Howes', 'amelia@chestateecounseling.com', NULL, '$2y$12$HXNfqooIOCidmetaUgd/MOnqW2aNYT3DkHqHB9TUB80M83tvhXo6e', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Nz96nuFQFMxCqZccEZRPpwFr3UBOYj5no3AWn51vfWF0ikFPcUzKg3nx5NUAV11kEaS3k5n6XVWu0NhLaE9Kz6clJLp0Gc8Bju1L', 0, 0, '2024-12-18 09:42:13', '2024-12-18 09:42:13'),
(203, 'USukpCXbjhb', 'direkig163@gmail.com', NULL, '$2y$12$jiVs2a17OCJZg8XXnBOldeuWxg7E3AzqgEErDdDPKWON7dXMm77PW', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '0FQ8IL24qQwiJbAF3hGkciniAGTxGdut8QqadrBpWdqcC2LSbYOD8m98ZlxvmizlKICoQVnmiiaDQJG5kPvnPlCwwnApCrTWWhTQ', 0, 0, '2024-12-18 10:03:13', '2024-12-18 10:03:13'),
(204, 'Wylodean Gavriliu', 'racheldb113@gmail.com', NULL, '$2y$12$KIwNpLVQ/DcXENDk18feue9AQju5H45WzO0FwEcObbDxfLabkLsgW', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '4eeeBHTzMHrdo4ztZxFAmUCsC2QouK2gfUoh2EaJr1v5MYgHaXWsYpz8gDnsM9xOV4ZR5Wvjk9scXFgaV7rYeZWzADAxxTGpO7JS', 0, 0, '2024-12-18 10:19:59', '2024-12-18 10:19:59'),
(206, 'Demarea Venegas Sanchez', 'cherylgo4th@gmail.com', NULL, '$2y$12$2q0aUyOXmMklPJZBwo1u7.bMlC4R9vFO5HjV5/9wLrURggTlAv/du', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'VPQtdL7gusnlomDwLvqbVtBa4fQzLaQGdeYgf5tphVpNu7Jtu1291tRPsHdJvPzlQdA9nyBblshhHNIw2rOK1s7ZTQa2JScAMdAN', 0, 0, '2024-12-18 13:59:31', '2024-12-18 13:59:31'),
(207, 'Lbdmila Descartes', '7kgame.com@proton.me', NULL, '$2y$12$c1A74vi1o5NeWGSAP6Ms3u1k39y4EPChu/sB0R8B.cQuUB7GuerE6', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'B89naDkVdQMiFTEZpkfulzjZf39JB1l5REcFYIRF4jNrm73VM4igxqdx9RmhN6tUZJy1WfwjqOp2FVgZFzzkB8CkIWmS5SBwjSYK', 0, 0, '2024-12-18 15:02:01', '2024-12-18 15:02:01'),
(208, 'Schell Refolio', '123schatz@web.de', NULL, '$2y$12$6N1B/Qy2YAxGAlYFBRbvVuTyOq9QM1LX6KfKrj3sEcAy.umdUvISu', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '5Fs1yotJwL0xkiqMfAgSAtkUfssKMS4EJ9Ke0WCBSnchzn5h2qTmFY3qD4c0NuVzRWw0qSSo8xwCzVmAmLupvlqTGUaXVHa8XIqc', 0, 0, '2024-12-18 16:14:18', '2024-12-18 16:14:18'),
(209, 'shehab', '14b80f5cc3@emailvb.pro', NULL, '$2y$12$4O4t6aSW1McsWFEfhw4SseWX0qS3cxqdwc7D1fKw0LqhXpRuBRnqi', NULL, NULL, 'active', 0, 'uploads/custom-images/user-images-2024-12-19-06-26-02-5707.png', '1234567891', NULL, NULL, NULL, 'test test', NULL, 0, 0, '2024-12-18 17:17:11', '2024-12-19 15:26:02'),
(213, 'alsanuury', 'alsanuuryshehab@gmail.com', NULL, '$2y$12$oTaajP5Z2S/iSaNDKXjineNx/8YoJqiNV4jqxn/UEY0nvKU8ZB8AC', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'euUZirLPlGKrcZ0azGPN4O7gswrrOr9hPRVX9L5ySO5xiV7nScErA8afFzxpCCP1NrMz3oidlLFaNnbUCBXv9TPLjkkyt9d2RG6y', 0, 0, '2024-12-19 10:33:30', '2024-12-19 10:33:30'),
(214, 'SHEHAB', '9037b3d381@emailvb.pro', NULL, '$2y$12$KxaEe7dEgG5ATNBEyKbrleAlWK5A8rPuy1eDza/bDsXWVi83bwcTS', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'PJvfcKfCpm4l7yiHQbX9VAgOVeYbPClvoUTGEGNzb18Q0qSLqlvlLPTSj5K9af4yNHKjSy4A87kF8KlisBES9fuDojUFNLk4cabo', 0, 0, '2024-12-19 11:08:23', '2024-12-19 11:08:23'),
(215, 'shehab', '5f22bfaff8@emailvb.pro', NULL, '$2y$12$Lft9tXlwW5H1zQc6ioBJxe4/lwWEJQ18ks51xUdp8N50KiQC7VT5C', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Prqb06LFNi9thNWr8oSynbx9UvCvgdQ00QgXUWArlOzURSUV6z3zwam3RNMMUaU8eO8rVq7bUlxsiLLYE0sxN6kApVVoYfJsR8BL', 0, 0, '2024-12-19 11:11:04', '2024-12-19 11:11:04'),
(216, 'shehabbbb', '4293acd564@emailvb.pro', NULL, '$2y$12$hfJsZvYQlbqw/UUGYVJtpeTc8j9XaFtAqo7vBprSnWTtuCt.h/H/a', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'UDR8T1MdtNI9InvOGsTvIlgiAaMgLH6nmPIx5PW3M9moi7gZrT1gRvViXSM6Lw6VquUJgTR2wsHVcuXEI1IMWnLL26vE10CzTf3u', 0, 0, '2024-12-19 11:13:59', '2024-12-19 11:13:59'),
(217, 'shehab', 'dccd4deedc@emailvb.pro', NULL, '$2y$12$Bi4G4DpOR8x.GkYCjQA.ouXPQo43ZTCf.9Yzhw9NyD6lZ6aaGV54.', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'HIMl2iM5Xc7Q5LRWUsyItrgt57aWjW8hNE0D3eDsp0f3LqP39UxdpikOb0BbmeRVx5VsL9NEFY1aasgsG1IQNg1r8SZU2XI8xqhV', 0, 0, '2024-12-19 11:56:57', '2024-12-19 11:56:57'),
(218, 'Shehab Alsanuury', '797b53a2d7@emailvb.pro', NULL, '$2y$12$51bwJroFSTaWoUuVp4ypou9X2S9Ysr9G8EdP8/4IwZ5a79PyTE1kK', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'up26Ut1do6dAwQhJtvEICT8pCvV32YslwJwDHcRMafge5awo2D3HP0JUIPE36Imv0Rk5o335TV4gH6GWahnCHqs6hRMsbwMO5Zpg', 0, 0, '2024-12-19 13:52:15', '2024-12-19 13:52:15'),
(219, 'shehab', '069280c17c@emailvb.pro', NULL, '$2y$12$X/DzFNo6Yy1FrQ5aJNTvAuutW8sKO81NqM7xz0vG4WAKAJKqd8jXm', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'lGZJ2yXa8CqzjIS1mCFiaEo9EjuV3ZJUSEVTP9QdcWhgND8GUrRqDOkASsdeysfv0DFMOXO5aVySmk1Nlg7Bt5zZmCCPxeB8SBQH', 0, 0, '2024-12-19 13:53:56', '2024-12-19 13:53:56'),
(220, 'shehabbbb', '2487747bd2@emailvb.pro', NULL, '$2y$12$TfMy4RST5RAUbCEQhRkz7uMmcfOlTKwB2GHLRB71/5kD5nziJUKpy', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'FZRd29wYRXx0Ij8uzqbvXMqPwEOTvWee4x5SK6SKG497u7SKezeXYGXyEUrpwl57vU05Wo07JzYstjNa9cspTfw0HLbTXXqfOYIO', 0, 0, '2024-12-19 14:16:18', '2024-12-19 14:16:18'),
(221, 'shehabbbb', 'de21c3a911@emailvb.pro', NULL, '$2y$12$TwzYDyTeLcrCkPpbBeUgSOV8evHruREo5TDWBQr8V0tyNvbDAF7sa', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '074FKBvKqANQbZaXE8TLt0fx7iqkTkHDlbnKWDfqNsx3FtrUlTdWqKgdaRf5dDwZY5U9quS4lFEl6Mf88hJi12en4WK99ppbj8Tz', 0, 0, '2024-12-19 14:17:16', '2024-12-19 14:17:16'),
(222, 'shehab', '27b4ec5dc7@emailvb.pro', NULL, '$2y$12$Hu7pFFVgiPJOxvHZdRZBS.bE5yJ9lcHNLSK8aDZL.VZdKXu.3PRgW', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '9FfxF7qWKGRmW2h0L2x8YeeKMxaMfsOeh37d1kvNO9V1YHorkuc4rW6Al5bbkqyCvXg9D10atvmk7CtUWmWDoPbpWd6JHRpEd4MD', 0, 0, '2024-12-19 14:35:04', '2024-12-19 14:35:04'),
(223, 'kjscbjks', '34e94c8fda@emailvb.pro', NULL, '$2y$12$zEcgegsD4ifs13ZodImxdOjAg5klRzfdRcNGn6/UcZu0VSs/MzckG', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'hoAwjDOjRTKUweKZlYLFuzZSFVuX8Hjo4FgFnUkh9cURAKhtM94l2oNdKJtunf8tKF6qLuvEPjxEosLAndba6dt3H7efT8Ao86de', 0, 0, '2024-12-19 14:37:21', '2024-12-19 14:37:21'),
(224, 'shehab', '24cce36bc4@emailvb.pro', NULL, '$2y$12$5wI2sMp5WuEKpJRb9ZC.M.0lsvknDrr/5QrmnPwIQs3igXbrBelaO', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'CnUi3Dk91SzHqX3BqbRs6LGdEWYzSv4myTGRXWVqZfKDioAWjJfrMr5c77l4LYgU63fBzTWu3vrISk54gi1MMEcKdcgfUyhjcg63', 0, 0, '2024-12-19 14:40:42', '2024-12-19 14:40:42'),
(225, 'sss', 'fepog59850@ronete.com', NULL, '$2y$12$u71LquK5SSUIG6471Hckx.ZzxouMoHdcQ68h6dU5r6nJ1B0lecEvC', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Ij4wFaycS3dUF4EoHcS1lNgIoEai3f0ZAkiVbaFvzCqTQcrTXaCg4CptmawXevTlmwk8rmfrQj157YXZCUOWfy8ukNR9nTRJ6EDN', 0, 0, '2024-12-19 15:20:38', '2024-12-19 15:20:38'),
(226, 'kjhgbfd', '9084dac3c5@emailvb.pro', NULL, '$2y$12$CektBdUknx4QBFn45cZ1geOosbxn7dpPp6wilTBJX5QRYx5WBoDj2', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E3ZPjwatlR4UwLCtiWO0z8cr3OXyOjfcvMuLgXBXpncND2MwndrHBVcNkj3Q387Ahum1iDzGtxkiGxwr0eKZaXsSY2EuO439Huqe', 0, 0, '2024-12-19 15:24:18', '2024-12-19 15:24:18'),
(227, 'gfdgfgf', '7f868d37b1@emailvb.pro', NULL, '$2y$12$WGBWac/CTylmUHtSRwCyIOnky/4tlv2sCegJVL4MwZf8cCtJmJLei', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'RgcV87w6iW7WwlJwUyku22vkW8NA5KWxaStNb9EEV9zAYiOx2mwpMQTKOMIJt5veRDubMZBvAUu0NsADAbyzBL92rLUCaynHf1FO', 0, 0, '2024-12-20 06:57:25', '2024-12-20 06:57:25');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `is_approved`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `address`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(228, 'wss', 'e38ef46dd6@emailvb.pro', NULL, '$2y$12$4xugBDLF/cZea9J0swP7T.LKpZk/3fQpcUe5VjWi5/ZqQKjgw9nrG', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '524tLuO7SeWQ5AHtR4oLVX2Mg6PS6cFrOIXPOrfEWk9gB1yaotRsT0d9wbtGJGEgeObPsU5wLxqdED7sJ8080uFc5uqr7UTwBE3C', 0, 0, '2024-12-20 07:00:32', '2024-12-20 07:00:32'),
(229, '1d7b7a6f74@emailvb.pro', '1d7b7a6f74@emailvb.pro', NULL, '$2y$12$tTy73ji0PK1rjn1HsEzFW.3kQwaC2pM4F3o8XBUfhFPyJ76B7u7lW', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'GGEQs7W7k7fG4JsDThuLQUrF79DZi94cqioPpJdbEqTgIaLVc0dV6T6KDshkPJ7UyciIxFTqrIKrphlQ5jGj3J7zvXFQVdK6MCd0', 0, 0, '2024-12-20 07:10:10', '2024-12-20 07:10:10'),
(230, '5b5293493e@emailvb.pro', '5b5293493e@emailvb.pro', NULL, '$2y$12$LrXMTHKQnLQuZSA6XY4p2OsqvYOYem5r0qP9YsTiFdV5IZNll5aNa', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'O1zCvn5Y3GXoI7iScx4BkbfsXbrmIDQwSIh7Bg1ECK2Lmrh0EUnSFFN5LErxVM3AL7njb8G1KDiQ2JY4sGr7kPJybhABptpxSdec', 0, 0, '2024-12-20 07:13:26', '2024-12-20 07:13:26'),
(231, '93d2775bd1@emailvb.pro', '93d2775bd1@emailvb.pro', NULL, '$2y$12$iqiuKwfHuCq3W356kuV03ud059YzVy5HxZkrTosB9wothEuHzgIoi', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, '5kQN9TjpptTydqArAgPiAlogFHcjVMJX1vKCXUMPfhYwgK5NceVAOCqESNuvVPpjb7blTHdDSrxpmWyPz32W4KwnbHX1qbGp8nr5', 0, 0, '2024-12-20 07:17:38', '2024-12-20 07:17:38'),
(232, '9a2c69cc56@emailvb.pro', '9a2c69cc56@emailvb.pro', NULL, '$2y$12$yBSVzOQ1jvGamcs3pKBYo.MjLvQhKPKvYlgTpxkdjwk/LPGjnPONq', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A4oBcIJwKR9MWj3UtM2YEan704fOQcwWlxkxia265B5RTDeEMCtFBKYPJTEbKXejkzpJcm4Hy3EdZM2659E5J1UyLtCVVIMH8vWa', 0, 0, '2024-12-20 07:22:20', '2024-12-20 07:22:20'),
(233, '9e8b1ef3a6@emailvb.pro', '9e8b1ef3a6@emailvb.pro', NULL, '$2y$12$BzmVsk5rswREdnjTdoMvgOVnQdovJ.UkSATLYmEvQKeVyvMK1hhPm', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'E2YZAxNCTIgiyeBVQMsNSmfo0voI4VFVFyf45St9XKSgom9shWsub8ZPx6NFAyErh0zEDpx1PUAZs5TFjywuVJKmdX5QmGciLZIj', 0, 0, '2024-12-20 07:23:48', '2024-12-20 07:23:48'),
(234, 'eeaa67df48@emailvb.pro', 'eeaa67df48@emailvb.pro', NULL, '$2y$12$GQagrP7gU6Zn8jMfvgM5gOO4H8Bd5eXpEDSnuBMqeCfpULrYVVgpm', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'rv28FiJqRDPEcF2ARnoMUrGhTYlyswOTLC0YTXcKBkDRojWAQIFWspX14GSuXoGSr675E4gLWqI7u2bz4kpWJeVg4ftSoJtoLQUv', 0, 0, '2024-12-20 07:25:22', '2024-12-20 07:25:22'),
(235, '2d8250a387@emailvb.pro', '2d8250a387@emailvb.pro', NULL, '$2y$12$qrAvu2AD8Nql.xthhaFK8OOE/LyEg70tmP0AXOULnpmpu8Cyw0/7C', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'v6OT7TPwZ465GsPibhoLfegn6jIS0vYXZVk8gaXAexUqWUPqLN17jQelmO2qhfhAcpj4ncazWBEJ0R2KnscocEB096m7t4sEB2Bm', 0, 0, '2024-12-21 12:55:05', '2024-12-21 12:55:05'),
(236, '3559138a6f@emailvb.pro', '3559138a6f@emailvb.pro', NULL, '$2y$12$R8gd5Sl6BivOOLcDK9mLyegQQrbWhAL/OS8sNOAU6sWLNqXnIR6iG', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-12-22 06:26:05', '2024-12-22 06:30:16'),
(237, '52940a282c@emailvb.pro', '52940a282c@emailvb.pro', NULL, '$2y$12$BV0uZ2oFYnBl7XXa9C11dOFrrCfqreFJH9P453bXwNicqdds32cWu', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'PR72bQhY0HYciMR56qwoBFs8uZQUxf35ZdLrkFqvavSgvUUvQOpWyWdzs5GBRV24jCyLjx38muO1P895CNeXVr3pIkB6lhj1iIPA', 0, 0, '2024-12-22 07:05:51', '2024-12-22 07:05:51'),
(238, '892dd43054@emailvb.pro', '892dd43054@emailvb.pro', NULL, '$2y$12$jzmA7pDuQUuTs1laSa2ooOH2qVx0d.qAw44nztxVTwQeDGZPa7wKW', NULL, NULL, 'active', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ggu6sWEWunmA0onqlPnDlajwmc3UzLA5ktHeeDIioRDeJUl6rMiLpfHci57dDUNjW9TlOPbykYibi4MxTe4c8Pu2SqBdxQrHoks7', 0, 0, '2024-12-22 07:06:45', '2024-12-22 07:06:45'),
(239, 'SHEHAB', '1ea50879c3@emailvb.pro', NULL, '$2y$12$Fv2ZIYmL8QDkTH04ANMZVusnRdqvLqx7rHg2rNKu0FDS9ND7EPph6', NULL, NULL, 'active', 0, 'uploads/custom-images/user-images-2024-12-22-10-09-11-7706.jpeg', '1234123411', NULL, NULL, NULL, 'ASDF', NULL, 0, 0, '2024-12-22 07:07:28', '2024-12-22 07:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_translate`
--

DROP TABLE IF EXISTS `user_translate`;
CREATE TABLE IF NOT EXISTS `user_translate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `lang_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_translate`
--

INSERT INTO `user_translate` (`id`, `user_id`, `lang_code`, `name`, `designation`, `address`, `created_at`, `updated_at`) VALUES
(1, 48, 'en', 'Mr Markom', 'CEO', 'Mirpur,Dhaka,Bangladesh', '2023-09-24 03:40:25', '2023-09-24 03:40:25'),
(4, 49, 'en', 'Shihab Uddin', 'CEO', 'Mirpur,Dhaka,Bangladesh', '2023-09-24 03:48:23', '2023-09-24 03:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(7, 62, 3, '2023-12-11 03:51:24', '2023-12-11 03:51:24'),
(10, 70, 2, '2024-01-14 02:42:02', '2024-01-14 02:42:02'),
(11, 70, 7, '2024-01-14 02:42:07', '2024-01-14 02:42:07'),
(12, 72, 3, '2024-01-15 23:56:21', '2024-01-15 23:56:21'),
(13, 72, 4, '2024-01-15 23:56:26', '2024-01-15 23:56:26'),
(14, 73, 3, '2024-01-23 01:13:05', '2024-01-23 01:13:05'),
(15, 73, 4, '2024-01-23 01:13:08', '2024-01-23 01:13:08'),
(16, 70, 3, '2024-01-23 05:41:16', '2024-01-23 05:41:16'),
(17, 94, 4, '2024-12-13 22:54:55', '2024-12-13 22:54:55'),
(18, 99, 4, '2024-12-14 00:31:22', '2024-12-14 00:31:22'),
(19, 123, 4, '2024-12-14 22:24:23', '2024-12-14 22:24:23'),
(33, 239, 3, '2024-12-22 07:09:37', '2024-12-22 07:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

DROP TABLE IF EXISTS `withdraw_methods`;
CREATE TABLE IF NOT EXISTS `withdraw_methods` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` double NOT NULL DEFAULT '0',
  `max_amount` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
