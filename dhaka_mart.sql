-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 10:39 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhaka_mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_06_23_164843_create_tbl_admin_table', 1),
(2, '2018_06_28_163007_create_tbl_category_table', 2),
(3, '2018_06_28_165246_create_tbl_category_table', 3),
(4, '2018_06_28_165801_create_tbl_category_table', 4),
(5, '2018_07_05_032314_create_manufacture_table', 5),
(6, '2018_07_05_075616_create_tbl_products_table', 6),
(7, '2018_07_07_041226_create_tbl_slider_table', 7),
(8, '2018_07_09_054129_create_tbl_customer_table', 8),
(9, '2018_07_09_065333_create_tbl_shipping_table', 9),
(10, '2018_07_10_060351_create_tbl_payment_table', 10),
(11, '2018_07_10_060540_create_tbl_order_table', 10),
(12, '2018_07_10_060700_create_tbl_order_details_table', 10),
(13, '2018_07_12_073428_create_tbl_logo_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'jony@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'tawhid jony', '01739905730', NULL, NULL),
(2, 'tawhid.jony@gmail.com', 'd2f53e85d17b908b6240cf52e4b86ffa', 'jonyislam', '01744335566', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(3, 'Snacks Products', 'Snacks Product Brand', 1, NULL, NULL),
(14, 'Beverage Products', 'Beverage Product Brand', 1, NULL, NULL),
(15, 'Breakfast Products', 'This Is Breakfast Products', 1, NULL, NULL),
(16, 'Cooking Products', 'Cooking Product brand', 1, NULL, NULL),
(17, 'Organic Products', '<span style=\"color: rgb(158, 158, 158); font-family: Karla, Arial, Helvetica, sans-serif; font-size: 13px; text-align: right; background-color: rgb(255, 255, 255);\">Organic Products</span>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `password`, `mobile_number`, `created_at`, `updated_at`) VALUES
(5, 'tawhidjony', 'tawhidjony@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01739905730', NULL, NULL),
(6, 'tawhidjony', 'tawhidjony@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '01739905730', NULL, NULL),
(7, 'tawhidjony', 'tawhidjony@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01739905730', NULL, NULL),
(8, 'Md.Rakebul Hasan', 'rhasan761@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01796584193', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `logo_id` int(10) UNSIGNED NOT NULL,
  `logo_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`logo_id`, `logo_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'logo/SnrFyDcbjCO6dDmHQdP3.png', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'NUTELLA', 'This Nutella Brand', 1, NULL, NULL),
(2, 'HEINZ', 'heinz product Brand', 1, NULL, NULL),
(3, 'Victoria', 'This isVictoria Brands', 1, NULL, NULL),
(5, 'Remia', 'This is Remia Tomato Ketchup brand', 1, NULL, NULL),
(6, 'BREAKA', 'Breaka', 1, NULL, NULL),
(7, 'TEISSEIRI', 'Teisseiri Product Brand', 1, NULL, NULL),
(8, 'COTTEES', 'This is Cottees brand', 1, NULL, NULL),
(9, 'CRUNCHY', 'crunchy brand', 1, NULL, NULL),
(10, 'GOLDEN CHURN', 'golden churn brand', 1, NULL, NULL),
(11, 'HAHNE', 'haney', 1, NULL, NULL),
(12, 'IXL', 'This is ixl brand', 1, NULL, NULL),
(13, 'LOWAN', 'LOWAN brand', 1, NULL, NULL),
(14, 'NUVITALITY', 'NUVITALITY brand', 1, NULL, NULL),
(15, 'PAULS', 'Pauls milk Brand', 1, NULL, NULL),
(16, 'SANITARIUM', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SANITARIUM Weet-Bix Blends-Breakfast cereal</span></font>', 1, NULL, NULL),
(17, 'SMOOTH', 'SMOOTH Peanut Butter', 1, NULL, NULL),
(18, 'SO GOOD', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SO GOOD Almond Milk</span></font>', 1, NULL, NULL),
(19, 'SUNSOL', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUNSOL Almonds,Cashew,Walnuts Muesli</span></font>', 1, NULL, NULL),
(20, 'SUPER BEE', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUPER BEE Cinnamon Honey</span></font>', 1, NULL, NULL),
(21, 'CADBURY', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">CADBURY Brand</span></font>', 1, NULL, NULL),
(22, 'DAVIDOFF', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">DAVIDOFF Espresso Coffee 100 gm</span></font>', 1, NULL, NULL),
(23, 'EVIAN', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">EVIAN Evian Water brand</span></font>', 1, NULL, NULL),
(24, 'GOLDEN CIRCLE', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">GOLDEN CIRCLE BRAND</span></font>', 1, NULL, NULL),
(25, 'NESCAFE', 'nescafe brand', 1, NULL, NULL),
(26, 'CARNATION', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">CARNATION brand</span></font>', 1, NULL, NULL),
(27, 'HARVEST AWARD', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HARVEST AWARD&nbsp;</span></font>', 1, NULL, NULL),
(28, 'HUNTS', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HUNTS brand</span></font>', 1, NULL, NULL),
(29, 'LEGGOS PESTO', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LEGGOS PESTO&nbsp;</span></font>', 1, NULL, NULL),
(30, 'NANA’S', '<span style=\"font-size: 18.72px;\">Nanas brand</span>', 1, NULL, NULL),
(31, 'RIBEREBRO', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">RIBEREBRO Brand</span></font>', 1, NULL, NULL),
(32, 'VICTORIA', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">VICTORIA Brand</span></font>', 1, NULL, NULL),
(33, 'Cheese', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cheese prduct</span></font>', 1, NULL, NULL),
(34, 'bragg', 'bragg brand', 1, NULL, NULL),
(35, 'Cavendish and Harvey', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cavendish and Harvey&nbsp;</span></font>', 1, NULL, NULL),
(36, 'Farex', 'farex', 1, NULL, NULL),
(37, 'FIGARO', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">FIGARO</span></font>', 1, NULL, NULL),
(38, 'Other', 'other brand', 1, NULL, NULL),
(39, 'MAGGI', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">MAGGI Brand</span></font>', 1, NULL, NULL),
(40, 'MELBOURNE', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">MELBOURNE brand</span></font>', 1, NULL, NULL),
(41, 'POPPIN', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">POPPIN Brand</span></font>', 1, NULL, NULL),
(42, 'PRINGLES', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">PRINGLES BBQ Flavour</span></font>', 1, NULL, NULL),
(43, 'QUALITY STREET', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">QUALITY STREET&nbsp;</span></font>', 1, NULL, NULL),
(44, 'রওজা', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা</span></font>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 1, '10,000.00', 'pending', '2018-07-10 07:00:55', NULL),
(2, 6, 1, 2, '2,200.00', 'pending', '2018-07-31 03:30:32', NULL),
(3, 7, 4, 3, '4,000.00', 'pending', '2018-08-01 04:35:24', NULL),
(4, 7, 5, 4, '3,950.00', 'pending', '2018-08-01 07:16:19', NULL),
(5, 7, 5, 5, '0.00', 'pending', '2018-08-01 07:22:07', NULL),
(6, 7, 5, 6, '0.00', 'pending', '2018-08-01 07:24:06', NULL),
(7, 7, 5, 7, '0.00', 'pending', '2018-08-01 07:24:15', NULL),
(8, 7, 5, 8, '0.00', 'pending', '2018-08-01 07:24:35', NULL),
(9, 7, 6, 9, '561,440.00', 'pending', '2018-08-01 07:48:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'Passion Fruit Syrup', '1000', '10', NULL, NULL),
(2, 2, 100, 'Apple Cider Vinegar With The Mother', '550', '4', NULL, NULL),
(3, 3, 99, 'Slice Cheese', '200', '20', NULL, NULL),
(4, 4, 184, 'খাঁটি-ঘি-', '300', '1', NULL, NULL),
(5, 4, 22, 'IXL Breakfast Marmalade', '310', '10', NULL, NULL),
(6, 4, 100, 'Apple Cider Vinegar With The Mother', '550', '1', NULL, NULL),
(7, 9, 99, 'Slice Cheese', '200', '22', NULL, NULL),
(8, 9, 61, 'Drinking Chocolate', '240', '2321', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'handcash', 'pending', '2018-07-10 07:00:55', NULL),
(3, 'cart', 'pending', '2018-08-01 04:35:24', NULL),
(4, 'handcash', 'pending', '2018-08-01 07:16:19', NULL),
(5, 'cart', 'pending', '2018-08-01 07:22:07', NULL),
(6, 'cart', 'pending', '2018-08-01 07:24:06', NULL),
(7, 'cart', 'pending', '2018-08-01 07:24:14', NULL),
(8, 'cart', 'pending', '2018-08-01 07:24:34', NULL),
(9, 'handcash', 'pending', '2018-08-01 07:48:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(11, 'Breaka Strawberry Milk', 15, 6, 'আমাদেরকে অডার করতে কল করুন +8801729424124', '', 110.00, 'image/UKAj3w8jWuOL0H17eQ4B.jpg', '250 ML', 'Red', 1, NULL, NULL),
(12, 'Breakfast Marmalade', 15, 8, '<h1 itemprop=\"name\" class=\"product_title entry-title\" style=\"box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.4; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\">Breakfast Marmalade</h1>', '<h1 itemprop=\"name\" class=\"product_title entry-title\" style=\"box-sizing: border-box; margin: 0px 0px 10px; line-height: 1.4; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\">Breakfast Marmalade</h1>', 600.00, 'image/3xJhvPCM3Dval0tahvoR.jpg', '500 gm', 'yellow', 1, NULL, NULL),
(13, 'Fruits Of The Forest Jam', 15, 8, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/cottees-fruits-of-the-forest-jam/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; outline-offset: -2px; letter-spacing: 0.3px; display: inline;\">Fruits Of The Forest Jam</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/cottees-fruits-of-the-forest-jam/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; outline-offset: -2px; letter-spacing: 0.3px; display: inline;\">Fruits Of The Forest Jam</a></h3>', 600.00, 'image/ujXtVBTO5b7aBzABAEaK.jpg', '500 gm', 'Black', 1, NULL, NULL),
(14, 'Strawberry Jam', 15, 8, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/cottees-strawberry-jam/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; outline-offset: -2px; letter-spacing: 0.3px; display: inline;\">Strawberry Jam</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/cottees-strawberry-jam/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; outline-offset: -2px; letter-spacing: 0.3px; display: inline;\">Strawberry Jam</a></h3>', 310.00, 'image/SeMu6qEXaqMO2J6k4ljB.jpg', '250 gm', 'Black', 1, NULL, NULL),
(15, 'Strawberry Jam', 15, 8, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/cottees-strawberry-jam-2/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; outline-offset: -2px; letter-spacing: 0.3px; display: inline;\">Strawberry Jam</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/cottees-strawberry-jam-2/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; outline-offset: -2px; letter-spacing: 0.3px; display: inline;\">Strawberry Jam</a></h3>', 600.00, 'image/v7GtKgqiryTHtpcmwTJw.jpg', '500 gm', 'Black', 1, NULL, NULL),
(16, 'Peanut Butter', 15, 9, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/crunchy-peanut-butter/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; outline-offset: -2px; letter-spacing: 0.3px; display: inline;\">Peanut Butter</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/crunchy-peanut-butter/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; outline-offset: -2px; letter-spacing: 0.3px; display: inline;\">Peanut Butter</a></h3>', 530.00, 'image/dMP1k179muE9EW3HWnCw.jpg', '500 gm', 'Orange & Nill', 1, NULL, NULL),
(17, 'Golden Churn Butter', 15, 10, 'golden churn butter', '<span style=\"font-size: 13.3333px;\">golden churn butter</span>', 385.00, 'image/MFqTHtXf7ymlI4GJCuFK.jpg', '250 gm', 'Off white', 1, NULL, NULL),
(18, 'Choco Rice Flakes', 15, 11, 'Choco Rice Flakes', 'Choco Rice Flakes', 330.00, 'image/qeaELliTkPRFvdDfdVIS.jpg', '375 gm', 'orange', 1, NULL, NULL),
(19, 'Corn Flakes', 15, 11, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/hahne-corn-flakes/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; outline-offset: -2px; letter-spacing: 0.3px; display: inline;\">Corn Flakes</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/hahne-corn-flakes/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; outline-offset: -2px; letter-spacing: 0.3px; display: inline;\">Corn Flakes</a></h3>', 380.00, 'image/U8VXfdAX8E25zMNHtQAU.jpg', '500 gm', 'blue', 1, NULL, NULL),
(20, 'Chocolate Milk', 15, 6, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/breaka-chocolate-milk/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">BREAKA Chocolate Milk</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/breaka-chocolate-milk/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">BREAKA Chocolate Milk</a></h3>', 110.00, 'image/joN6PSkQDBA4SgF0ojgL.jpg', '250 ML', 'c', 1, NULL, NULL),
(21, 'Low Fat Corn Flakes', 15, 11, '<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: center;\">Note –</span><span style=\"text-align: center;\">&nbsp;Buy Minimum 1000 Taka Products and get FREE Home Delivery in Dhaka City.</span>', '<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; text-align: center;\">Note –</span><span style=\"text-align: center;\">&nbsp;Buy Minimum 1000 Taka Products and get FREE Home Delivery in Dhaka City.</span>', 350.00, 'image/lO2Yd2fRk74ifJDneWmQ.jpg', '375 gm', 'white & Gold', 1, NULL, NULL),
(22, 'IXL Breakfast Marmalade', 15, 12, 'IXL Breakfast Marmalade', '<span style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\">IXL Breakfast Marmalade</span>', 310.00, 'image/duongzAlrOy0t6S8GRUZ.jpg', '250 gm', 'Red & gold', 1, NULL, NULL),
(23, 'IXL Breakfast Marmalade', 15, 12, 'IXL Breakfast Marmalade', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">IXL Breakfast Marmalade</span></font>', 310.00, 'image/M3GZS2gB8jylPfmtXQRN.jpg', '250 gm', 'green', 1, NULL, NULL),
(24, 'IXL Breakfast Marmalade', 15, 12, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">IXL Breakfast Marmalade</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">IXL Breakfast Marmalade</span></font>', 530.00, 'image/rLHR7CHKcvTg3BDBPYqK.jpg', '480', 'green', 1, NULL, NULL),
(25, 'IXL Fruit Of The Forest Jam', 15, 12, 'IXL Fruit Of The Forest Jam', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">IXL Fruit Of The Forest Jam</span></font>', 530.00, 'image/57zexmeVSgbABIY7lKeY.jpg', '480', 'Black & red', 1, NULL, NULL),
(26, 'IXL Strawberry Jam', 15, 12, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">IXL Strawberry Jam</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">IXL Strawberry Jam</span></font>', 310.00, 'image/pOwdh5Estkpc8VLfgvCE.jpg', '250 gm', 'Black & red', 1, NULL, NULL),
(27, 'IXL Strawberry Jam', 15, 12, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">IXL Strawberry Jam</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">IXL Strawberry Jam</span></font>', 530.00, 'image/ryaGoek82ZQssy5P7e7z.jpg', '480', 'Black & red', 1, NULL, NULL),
(28, 'Apple and Cinnamon Muesli', 15, 13, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Apple and Cinnamon Muesli</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Apple and Cinnamon Muesli</span></font>', 840.00, 'image/wuCGgrAwwSJm2hBw6cEl.jpg', '750 gm', 'green', 1, NULL, NULL),
(29, 'Apricot and Almond Natural Muesli', 15, 13, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Apricot and Almond Natural Muesli</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Apricot and Almond Natural Muesli</span></font>', 840.00, 'image/N5tjjhWIpvSZObmjPN8q.jpg', '750 gm', 'Yellow', 1, NULL, NULL),
(30, 'Cocoa Bombs Breakfast Cereal', 15, 13, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cocoa Bombs Breakfast Cereal</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cocoa Bombs Breakfast Cereal</span></font>', 410.00, 'image/KbXndrZS8tAoWweHKsF3.jpg', '350', 'Yellow', 1, NULL, NULL),
(31, 'Fruit And Nut Muesli', 15, 13, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN&nbsp;Fruit And Nut Muesli</span></font>', '<span style=\"font-size: 13.3333px;\">LOWAN&nbsp;Fruit And Nut Muesli</span>', 840.00, 'image/wdqH8YNiNCpmyJXDUjO4.jpg', '750 gm', 'blue', 1, NULL, NULL),
(32, 'Swiss Natural Muesli', 15, 13, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN&nbsp;Swiss Natural Muesli</span></font>', '<span style=\"font-size: 13.3333px;\">LOWAN&nbsp;Swiss Natural Muesli</span>', 840.00, 'image/2XrxmVBjT3uvrAXbrjjf.jpg', '750 gm', 'green', 1, NULL, NULL),
(33, 'Tropical Natural Muesli', 15, 13, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Tropical Natural Muesli</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Tropical Natural Muesli</span></font>', 840.00, 'image/YF3uCfAAHojG24ba9iHZ.jpg', '750 gm', 'green', 1, NULL, NULL),
(34, 'Apricot and Almond Natural Muesli', 15, 13, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Apricot and Almond Natural Muesli</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Apricot and Almond Natural Muesli</span></font>', 840.00, 'image/P5BI1EU1t9b6lVnwRZxc.jpg', '750 gm', 'Yellow', 0, NULL, NULL),
(35, 'Cocoa Bombs Breakfast Cereal', 15, 13, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Cocoa Bombs Breakfast Cereal</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Cocoa Bombs Breakfast Cereal</span></font>', 410.00, 'image/WgeSv7FelUBeBWldboh7.jpg', '350 gm', 'Yellow', 0, NULL, NULL),
(36, 'Fruit And Nut Muesli', 15, 13, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/lowan-fruit-and-nut-muesli/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">LOWAN Fruit And Nut Muesli</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/lowan-fruit-and-nut-muesli/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">LOWAN Fruit And Nut Muesli</a></h3>', 840.00, 'image/NKHYdXXr0QydR2meFv7q.jpg', '750 gm', 'blue', 0, NULL, NULL),
(37, 'Swiss Natural Muesli', 15, 13, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Swiss Natural Muesli</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Swiss Natural Muesli</span></font>', 840.00, 'image/x2AZESZIUTdDCD9dX74s.jpg', '750 gm', 'blue', 0, NULL, NULL),
(38, 'Whole Grain Quick Oats', 15, 13, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Whole Grain Quick Oats</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LOWAN Whole Grain Quick Oats</span></font>', 890.00, 'image/9vzxqJptNVB76Y1yY55z.jpg', '1 KG', 'Yellow', 1, NULL, NULL),
(39, 'Hazelnut Spread', 15, 1, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NUTELLA Hazelnut Spread</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NUTELLA Hazelnut Spread</span></font>', 700.00, 'image/yBBPNXdNnFUYTdIdN8HA.jpg', '750 gm', 'Chocolate', 1, NULL, NULL),
(40, 'Hazelnut Spread', 15, 1, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NUTELLA Hazelnut Spread</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NUTELLA Hazelnut Spread</span></font>', 300.00, 'image/krl3ACWQepues52wl229.jpg', '350 gm', 'Chocolate', 1, NULL, NULL),
(41, 'NUVITALITY Semolina', 15, 14, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NUVITALITY Semolina</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NUVITALITY Semolina</span></font>', 360.00, 'image/YFwA8vnv8te658P1KKuK.jpg', '400 gm', 'White', 1, NULL, NULL),
(42, 'Low Fat Milk', 15, 15, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">PAULS Low Fat Milk</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">PAULS Low Fat Milk</span></font>', 175.00, 'image/i1d0ueGRX1FS7jHfwku0.jpg', '1 Litre', 'White & green', 1, NULL, NULL),
(43, 'Pure Milk Full Cream', 15, 15, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">PAULS Pure Milk Full Cream</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">PAULS Pure Milk Full Cream</span></font>', 175.00, 'image/VZVUAUiRlyKSavIzx7Fv.jpg', '1 Litre', 'blue', 1, NULL, NULL),
(44, 'Skimmed Milk', 15, 15, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Skimmed Milk</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Skimmed Milk</span></font>', 175.00, 'image/TSVhtY1OOzJN0YIxnxm8.jpg', '1 Litre', 'strawberry', 1, NULL, NULL),
(45, 'Weet-Bix Blends-Breakfast cereal', 15, 16, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SANITARIUM Weet-Bix Blends-Breakfast cereal</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SANITARIUM Weet-Bix Blends-Breakfast cereal</span></font>', 800.00, 'image/7xOKX6NRCalbhfvrMKKj.jpg', '750 gm', 'Yellow', 1, NULL, NULL),
(46, 'Peanut Butter', 15, 17, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SMOOTH Peanut Butter</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SMOOTH Peanut Butter</span></font>', 530.00, 'image/NSNHuWDZCBXGPOFOMjUC.jpg', '500 gm', 'blue', 1, NULL, NULL),
(47, 'Almond Milk', 15, 18, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SO GOOD Almond Milk</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SO GOOD Almond Milk</span></font>', 350.00, 'image/NVLujd9LqXqaj43c2JrI.jpg', '1 Litre', 'White', 1, NULL, NULL),
(48, 'Soy Milk Regular', 15, 18, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Soy Milk Regular</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Soy Milk Regular</span></font>', 265.00, 'image/ridnUzq6om81qeiHVQaL.jpg', '1 Litre', 'blue', 1, NULL, NULL),
(49, 'Almonds,Cashew,Walnuts Muesli', 15, 19, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUNSOL Almonds,Cashew,Walnuts Muesli</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUNSOL Almonds,Cashew,Walnuts Muesli</span></font>', 750.00, 'image/ZDdWrVEoQSoFsuMHSgfU.jpg', '500 gm', 'Black & white', 1, NULL, NULL),
(50, 'Apple and Berries Natural Muesli', 15, 19, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Apple and Berries Natural Muesli</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Apple and Berries Natural Muesli</span></font>', 750.00, 'image/GyZ9RjLLATeobcGk5A65.jpg', '550 gm', 'strawberry & black', 1, NULL, NULL),
(51, 'Apricot,Apple,Coconut Muesli', 15, 19, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUNSOL Apricot,Apple,Coconut Muesli</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUNSOL Apricot,Apple,Coconut Muesli</span></font>', 750.00, 'image/Pt8l5Q8Xa0TejKpRPpTd.jpg', '500 gm', 'Black & white', 1, NULL, NULL),
(52, 'Blueberry, Gooseberry, Coconut Muesli', 15, 19, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUNSOL Blueberry, Gooseberry, Coconut Muesli</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUNSOL Blueberry, Gooseberry, Coconut Muesli</span></font>', 750.00, 'image/kxvj1iPkJgwW5WCes3pr.jpg', '500 gm', 'Black', 1, NULL, NULL),
(53, 'Cinnamon Honey', 15, 20, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUPER BEE Cinnamon Honey</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUPER BEE Cinnamon Honey</span></font>', 1020.00, 'image/6TZGXvPBhcCeWLE7EvUj.jpg', '500 gm', 'Black', 1, NULL, NULL),
(54, 'Ginger Honey', 15, 20, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Ginger Honey</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Ginger Honey</span></font>', 1020.00, 'image/FqdqXYozoM9E4RGOboT8.jpg', '500 gm', 'strawberry', 1, NULL, NULL),
(55, 'Organic Honey', 15, 20, '<h3 class=\"product-title\" style=\"box-sizing: border-box; line-height: 1.2; margin: 0px 0px 8px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\">Organic Honey</h3>', 'Organic Honey', 840.00, 'image/pcTEhR22X1KQTVBjvdix.jpg', '500 gm', 'Gold', 1, NULL, NULL),
(56, 'Pure Honey Jar', 15, 20, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pure Honey Jar</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pure Honey Jar</span></font>', 660.00, 'image/76GwCGp7KAA7qPTSU0Xm.jpg', '500 gm', 'Black', 1, NULL, NULL),
(57, 'Pure Honey Squeeze', 15, 20, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pure Honey Squeeze</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pure Honey Squeeze</span></font>', 700.00, 'image/myLUzb6zqfvvlcRrxGLt.jpg', '500 gm', 'Gold', 1, NULL, NULL),
(58, 'Rainforest Honey', 15, 20, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Rainforest Honey</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Rainforest Honey</span></font>', 700.00, 'image/bfkQS27wH2MeX1Xy9fZX.jpg', '500 gm', 'green', 1, NULL, NULL),
(59, 'Raw Honey', 15, 20, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\">Raw honey</h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\">Raw honey</h3>', 840.00, 'image/NLST3FHCsJbcyxCWc5nt.jpg', '500 gm', 'Gold', 1, NULL, NULL),
(60, 'Tasmanian Leatherwood Honey', 15, 20, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Tasmanian Leatherwood Honey</span></font>', 'Tasmanian Leatherwood Honey', 960.00, 'image/OKJnMKE6QOHuKZ3VGiRn.jpg', '500 gm', 'blue', 1, NULL, NULL),
(61, 'Drinking Chocolate', 14, 21, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">CADBURY Drinking Chocolate</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">CADBURY Drinking Chocolate</span></font>', 240.00, 'image/x0gCAdHlWTrmYGG1CHni.jpg', '250 gm', 'blue', 1, NULL, NULL),
(62, 'Drinking Chocolate', 14, 21, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Drinking Chocolate</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Drinking Chocolate</span></font>', 420.00, 'image/LupnjqmRQYp0uV4iJE2x.jpg', '500 gm', 'blue', 1, NULL, NULL),
(63, 'Espresso Coffee', 14, 22, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">DAVIDOFF Espresso Coffee 100 gm</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">DAVIDOFF Espresso Coffee 100 gm</span></font>', 455.00, 'image/d7QCwU4q23EB4ZLempN8.jpg', '100 gm', 'Black', 1, NULL, NULL),
(64, 'Fine Aroma Coffee', 14, 22, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Fine Aroma Coffee 100</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Fine Aroma Coffee 100</span></font>', 455.00, 'image/sUfl275pn1CfioB9nL6h.jpg', '100 gm', 'White', 1, NULL, NULL),
(65, 'Evian Water', 14, 23, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">EVIAN Evian Water 1.5 Litre</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">EVIAN Evian Water 1.5 Litre</span></font>', 210.00, 'image/9OLBTexv5Ur1B2d507w7.jpg', '1.5 Litre', 'White', 1, NULL, NULL),
(66, 'Evian Water', 14, 23, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">EVIAN Evian Water&nbsp;</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">EVIAN Evian Water 500 ml</span></font>', 95.00, 'image/9mEj26Fqbs0Vssunx89D.jpg', '500 ML', 'White', 1, NULL, NULL),
(67, 'Apple Juice', 14, 24, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">GOLDEN CIRCLE Apple Juice 1 Litre</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">GOLDEN CIRCLE Apple Juice 1 Litre</span></font>', 360.00, 'image/X8K2ZU0BoD0oZbxyjQkt.jpg', '1 Litre', 'Apple', 1, NULL, NULL),
(68, 'Apple Juice', 14, 24, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">GOLDEN CIRCLE Apple Juice 2 Litre</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">GOLDEN CIRCLE Apple Juice 2 Litre</span></font>', 700.00, 'image/1FtFqWaOsWWZzHNmxjUb.jpg', '2 Litre', 'Gold', 1, NULL, NULL),
(69, 'Orange Juice', 14, 24, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Orange Juice&nbsp;</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Orange Juice&nbsp;</span></font>', 360.00, 'image/thW8lnOLFP3nqkCLZGVe.jpg', '1 Litre', 'orange', 1, NULL, NULL),
(70, 'Orange Juice', 14, 24, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Orange Juice&nbsp;</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Orange Juice&nbsp;</span></font>', 700.00, 'image/CNXQvvn1Qkmse28zdvUX.jpg', '2 Litre', 'orange', 1, NULL, NULL),
(71, 'NESCAFE Gold Coffee', 14, 25, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NESCAFE Gold Coffee&nbsp;</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NESCAFE Gold Coffee 100 gm</span></font>', 385.00, 'image/JCxSRLyCrPbJZE9vFsgo.jpg', '100 gm', 'coffee', 1, NULL, NULL),
(72, 'NESCAFE Gold Coffee', 14, 25, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NESCAFE Gold Coffee&nbsp;</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NESCAFE Gold Coffee&nbsp;</span></font>', 670.00, 'image/FcTcJwkxaop52O06mu4m.jpg', '200', 'coffee', 1, NULL, NULL),
(73, 'NESCAFE Gold Coffee', 14, 25, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NESCAFE Gold Coffee&nbsp;</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NESCAFE Gold Coffee 50 gm</span></font>', 275.00, 'image/b9vOlDP0o8W1nOkV8Q8W.jpg', '50 gm', 'coffee', 1, NULL, NULL),
(74, 'Prime Soya Gold Milk Powder ', 14, 18, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Prime Soya (soja) Gold Milk Powder (Sugar Free)</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Prime Soya (soja) Gold Milk Powder (Sugar Free)</span></font>', 600.00, 'image/Q8ghQWf8lSWCsRpLpTDY.jpg', '480', 'Yellow', 1, NULL, NULL),
(76, 'Apple Syrup', 14, 7, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Apple Syrup</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Apple Syrup</span></font>', 800.00, 'image/jV6wteQ3xDuokZC1JzHz.jpg', '700 ML', 'Black', 1, NULL, NULL),
(77, 'Chocolate Flavored Syrup', 14, 7, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Chocolate Flavored Syrup</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Chocolate Flavored Syrup</span></font>', 800.00, 'image/9tI7KAxfwbN52hhFgh9w.jpg', '700 ML', 'Black', 1, NULL, NULL),
(78, 'Passion Fruit Syrup', 14, 7, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Passion Fruit Syrup</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Passion Fruit Syrup</span></font>', 1000.00, 'image/GF8gfKjhKzC0Fy4T3AQ8.jpg', '1 Litre', 'orange', 1, NULL, NULL),
(79, 'Strawberry Syrup', 14, 7, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Strawberry Syrup</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Strawberry Syrup</span></font>', 1000.00, 'image/jWVlNC3nmA8PFG5hRrK4.jpg', '1 Litre', 'Black', 1, NULL, NULL),
(80, 'Almond Flavored Syrup', 14, 7, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Almond Flavored Syrup</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Almond Flavored Syrup</span></font>', 1000.00, 'image/IuMKPaGVppT4st4qsxxJ.jpg', '1 Litre', 'White', 1, NULL, NULL),
(81, 'Milk Product for Cooking and Bakery', 16, 26, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">CARNATION Milk Product for Cooking and Bakery</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">CARNATION Milk Product for Cooking and Bakery</span></font>', 120.00, 'image/pQyGk0EtbGf9hFZKX3v8.jpg', '405 gm', 'Red', 1, NULL, NULL),
(82, 'Canola Oil', 16, 27, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HARVEST AWARD Canola Oil</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HARVEST AWARD Canola Oil</span></font>', 550.00, 'image/wL2JRE92EpB7jmC8RgOQ.jpg', '2 Litre', 'Gold', 1, NULL, NULL),
(83, 'Canola Oil', 16, 27, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HARVEST AWARD Canola Oil</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HARVEST AWARD Canola Oil</span></font>', 1000.00, 'image/DtYc6FhKhkizDZHA7qi0.jpg', '4 Litre', 'Gold', 1, NULL, NULL),
(84, 'Baked Beans In Tomato Sauce', 16, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HEINZ Baked Beans In Tomato Sauce</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HEINZ Baked Beans In Tomato Sauce</span></font>', 100.00, 'image/KI9AOaLUbwEPvCtM5u08.jpg', '415', 'blue', 1, NULL, NULL),
(85, 'GREEN PEAS', 16, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">GREEN PEAS</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">GREEN PEAS</span></font>', 250.00, 'image/PmujjWQM2bTfsCpphPH0.jpg', '500 gm', 'green', 1, NULL, NULL),
(86, 'Original BBQ Sauce', 16, 28, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HUNTS Original BBQ Sauce</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HUNTS Original BBQ Sauce</span></font>', 275.00, 'image/7ukLZQl5uxOc0BdEGRWs.jpg', '510 gm', 'Black', 1, NULL, NULL),
(87, 'Basil', 16, 29, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Basil</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Basil</span></font>', 395.00, 'image/u1K9hDfGCEjirXFhR4c5.jpg', '250 gm', 'Gold', 1, NULL, NULL),
(88, 'Sundried Tomato', 16, 29, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Sundried Tomato</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Sundried Tomato</span></font>', 395.00, 'image/S5D2gko2jEJ6fC2cROJr.jpg', '250 gm', 'Black', 1, NULL, NULL),
(89, 'STIR Semi Dried/Sun Dried Tomato Pasta Sauce', 16, 29, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">STIR Semi Dried/Sun Dried Tomato Pasta Sauce</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">STIR Semi Dried/Sun Dried Tomato Pasta Sauce</span></font>', 300.00, 'image/PKMHLV4kO8cSCDNvQJgs.jpg', '350 gm', 'coffee', 1, NULL, NULL),
(90, 'Tomato Puree', 16, 29, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/leggos-tomato-puree/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">Tomato Puree</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/leggos-tomato-puree/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">Tomato Puree</a></h3>', 180.00, 'image/YINxMoXXx56yZp3JeXBE.jpg', '410', 'Red', 1, NULL, NULL),
(91, 'COCONUT MILK', 16, 30, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NANA’S COCONUT MILK</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">NANA’S COCONUT MILK</span></font>', 110.00, 'image/V8TxTAtE1u11jHTJoVcQ.jpg', '400 gm', 'green', 1, NULL, NULL),
(92, 'Mushrooms', 16, 31, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">RIBEREBRO Mushrooms</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">RIBEREBRO Mushrooms</span></font>', 80.00, 'image/305PlWNYmjrzrsfEOFi8.jpg', '425 gm', 'green', 1, NULL, NULL),
(93, 'Red Kidney Beans', 16, 31, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Red Kidney Beans</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Red Kidney Beans</span></font>', 80.00, 'image/ACjB2ogG3J4Iu1eWgcSL.jpg', '425 gm', 'Red', 1, NULL, NULL),
(94, 'Whole Kernel Corn', 16, 31, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Whole Kernel Corn</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Whole Kernel Corn</span></font>', 80.00, 'image/CmGy0cuMwNpu2UXba4zK.jpg', '425 gm', 'green', 1, NULL, NULL),
(95, 'Young Corn', 16, 31, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/riberebro-young-corn/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">Young Corn</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/riberebro-young-corn/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">Young Corn</a></h3>', 80.00, 'image/avpTBGpTX1f3803HWtrT.jpg', '425 gm', 'green', 1, NULL, NULL),
(96, 'Check Peas In Water', 16, 32, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">VICTORIA Check Peas In Water</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">VICTORIA Check Peas In Water</span></font>', 90.00, 'image/bS7bTC1fr533tUAN62aZ.jpg', '400 gm', 'Black', 1, NULL, NULL),
(97, 'Kidney Beans In Water', 16, 32, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Kidney Beans In Water</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Kidney Beans In Water</span></font>', 110.00, 'image/QmzaKilC3NBiOkbaIspm.jpg', '400 gm', 'Black', 1, NULL, NULL);
INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(98, 'Tomato Paste', 16, 32, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/victoria-tomato-paste/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">Tomato Paste</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/victoria-tomato-paste/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">Tomato Paste</a></h3>', 145.00, 'image/2la5I06GiA23KfuHrhlt.jpg', '400 gm', 'Red', 1, NULL, NULL),
(99, 'Slice Cheese', 3, 33, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">BON APPETIT Slice Cheese</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">BON APPETIT Slice Cheese</span></font>', 200.00, 'image/AaBbTyzf3A96hBXyHny2.jpg', '170 gm', 'green', 1, NULL, NULL),
(100, 'Apple Cider Vinegar With The Mother', 3, 34, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Apple Cider Vinegar With The Mother</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Apple Cider Vinegar With The Mother</span></font>', 550.00, 'image/dZ6j0ROnlHlRBVcMIOT9.jpg', '473 ML', 'Gold', 1, NULL, NULL),
(101, 'Apple Drops, Mixed Fruit Drops and Coffee Drops Candy', 3, 35, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cavendish and Harvey Apple Drops, Mixed Fruit Drops and Coffee Drops Candy</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cavendish and Harvey Apple Drops, Mixed Fruit Drops and Coffee Drops Candy</span></font>', 210.00, 'image/69fF8NCMg3Di3kENu7ug.jpg', '200 gm  (each)', 'MIxed', 1, NULL, NULL),
(102, 'Mint Sauce', 3, 34, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mint Sauce</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mint Sauce</span></font>', 275.00, 'image/tm1LnH84ugv3PTaEDSF4.jpg', '200 gm', 'Mint', 1, NULL, NULL),
(103, 'DYNAMIC HEALTH Apple Cider Vinegar with Mother', 3, 34, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">DYNAMIC HEALTH Apple Cider Vinegar with Mother</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">DYNAMIC HEALTH Apple Cider Vinegar with Mother</span></font>', 920.00, 'image/n8rSYoHC96TdiPdv7rho.jpg', '946 ML', 'Gold', 1, NULL, NULL),
(104, 'DYNAMIC HEALTH Apple Cider Vinegar with Mother & Honey', 3, 34, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">DYNAMIC HEALTH Apple Cider Vinegar with Mother &amp; Honey</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">DYNAMIC HEALTH Apple Cider Vinegar with Mother &amp; Honey</span></font>', 500.00, 'image/PycBtx0kGe3uuP3Ivrcf.jpg', '473 ML', 'Black', 1, NULL, NULL),
(105, 'Baby Rice Cereal', 3, 36, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Farex Baby Rice Cereal</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Farex Baby Rice Cereal</span></font>', 280.00, 'image/L3zRaovulZGR6vLG7lQV.jpg', '125', 'Yellow with green', 1, NULL, NULL),
(106, 'Muesli with Apple', 3, 36, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Muesli with Apple</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Muesli with Apple</span></font>', 280.00, 'image/LYq26Cnj7kQ6M4DZ9Xyg.jpg', '125', 'Yellow with green', 1, NULL, NULL),
(107, 'Muesli with Pear and Banana', 3, 36, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Muesli with Pear and Banana</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Muesli with Pear and Banana</span></font>', 280.00, 'image/HMT2X3JL72Z7F9n9Z0rr.jpg', '125 gm', 'Yellow with green', 1, NULL, NULL),
(108, 'Original Multigrain Cereal', 3, 36, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Original Multigrain Cereal</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Original Multigrain Cereal</span></font>', 280.00, 'image/efbwMU3AmsODL08Vk3Td.jpg', '125 gm', 'Yellow with green', 1, NULL, NULL),
(109, 'Pear and Banana Baby Rice Cereal', 3, 36, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pear and Banana Baby Rice Cereal</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pear and Banana Baby Rice Cereal</span></font>', 280.00, 'image/pjG9CgbB2LfukkxhXAcy.jpg', '125 gm', 'Yellow with green', 1, NULL, NULL),
(110, 'Pitted Black Olives In Water', 3, 37, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">FIGARO Pitted Black Olives In Water</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">FIGARO Pitted Black Olives In Water</span></font>', 120.00, 'image/7PJsENaciU3RYa4k66PC.jpg', '340 gm', 'Black', 1, NULL, NULL),
(111, 'Stuffed Green Olives In Water', 3, 37, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Stuffed Green Olives In Water</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Stuffed Green Olives In Water</span></font>', 120.00, 'image/maLET7FJ9sJgLyiWKi10.jpg', '340 gm', 'Red', 1, NULL, NULL),
(112, 'FLORA Margarine', 3, 33, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">FLORA Margarine</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">FLORA Margarine</span></font>', 390.00, 'image/V1ygjPLujAXswEd8tFaw.jpg', '500 gm', 'Yellow', 1, NULL, NULL),
(113, 'FLORIDIA Mozzarella Cheese', 3, 33, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">FLORIDIA Mozzarella Cheese</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">FLORIDIA Mozzarella Cheese</span></font>', 540.00, 'image/TyBLIcRhtGZt6gYee5W5.jpg', '250 gm', 'Red', 1, NULL, NULL),
(114, 'FRENCH’S Classic Yellow Mustard Sauce', 3, 38, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">FRENCH’S Classic Yellow Mustard Sauce</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">FRENCH’S Classic Yellow Mustard Sauce</span></font>', 265.00, 'image/fP2ZfEp34ZyoztzygMgv.jpg', '340 gm', 'Yellow', 1, NULL, NULL),
(115, 'Apple Cider Vinegar', 3, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HEINZ Apple Cider Vinegar</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HEINZ Apple Cider Vinegar</span></font>', 320.00, 'image/x218utLHV5GSgXLSTvLd.jpg', '946 ML', 'Gold', 1, NULL, NULL),
(116, 'Chili Sauce', 3, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HEINZ Chili Sauce</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HEINZ Chili Sauce</span></font>', 110.00, 'image/3WMDSsbqcfde5mGKx3to.jpg', '300 gm', 'Red', 1, NULL, NULL),
(117, 'Custard With Banana', 3, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Custard With Banana</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Custard With Banana</span></font>', 140.00, 'image/dPg1xSgTG3MqCtuzn9yn.jpg', '110 gm', 'Greay', 1, NULL, NULL),
(118, 'Distilled White Vinegar', 3, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Distilled White Vinegar</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Distilled White Vinegar</span></font>', 190.00, 'image/vUKWkwNxU8dsJHp5rhEy.jpg', '473 ML', 'White', 1, NULL, NULL),
(119, 'Distilled White Vinegar', 3, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Distilled White Vinegar</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Distilled White Vinegar</span></font>', 360.00, 'image/OL9Ygj6ntQj6Sd3wcJ6K.jpg', '946 ML', 'White', 1, NULL, NULL),
(120, 'Egg Custard', 3, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Egg Custard</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Egg Custard</span></font>', 140.00, 'image/GGHj7H0m7wy8URpc8opA.jpg', '110 gm', 'Gray white', 1, NULL, NULL),
(121, 'Whole grain cereal bars apple and blueberry', 3, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Whole grain cereal bars apple and blueberry</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Whole grain cereal bars apple and blueberry</span></font>', 350.00, 'image/EaLwmcTgxHfz6B0Oatgs.jpg', '90 gm', 'White', 1, NULL, NULL),
(122, 'Mayonnaise Traditional Egg', 3, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mayonnaise Traditional Egg</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mayonnaise Traditional Egg</span></font>', 300.00, 'image/WMulHBnw0BPBZJkgSNe7.jpg', '250 gm', 'White & green', 1, NULL, NULL),
(123, 'Sandwich Spread Natural', 3, 2, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/heinz-sandwich-spread-natural/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; letter-spacing: 0.3px; display: inline;\">Sandwich Spread Natural</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/heinz-sandwich-spread-natural/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-color: rgba(0, 0, 0, 0.2); border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; outline: 0px; letter-spacing: 0.3px; display: inline;\">Sandwich Spread Natural</a></h3>', 550.00, 'image/6d7hkagJJhufLHLSX5tA.jpg', '450 gm', 'Off white', 1, NULL, NULL),
(124, 'Sandwich Spread Original', 3, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Sandwich Spread Original</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Sandwich Spread Original</span></font>', 310.00, 'image/YpvpyCo5GREfbrahQ0jU.jpg', '300 gm', 'White & green', 1, NULL, NULL),
(125, 'seriously Good Mayonnaise', 3, 2, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">seriously Good Mayonnaise</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">seriously Good Mayonnaise</span></font>', 360.00, 'image/0zco7GSkJOONH5QRNxRC.jpg', '295 gm', 'White', 1, NULL, NULL),
(126, 'Tomato ketchup', 3, 2, '<span style=\"font-family: Arial, Verdana; font-size: 13.3333px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\">Tomato&nbsp;</span><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">ketchup</span></font>', '<span style=\"font-family: Arial, Verdana; font-size: 13.3333px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\">Tomato&nbsp;</span><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">ketchup</span></font>', 350.00, 'image/7957uncv1gtUvRXQXC9B.jpg', '700 gm', 'Red', 1, NULL, NULL),
(127, 'Tomato ketchup', 3, 2, 'Tomato ketchup', '<span style=\"font-size: 13.3333px;\">Tomato ketchup</span>', 110.00, 'image/bQAeY9zGPDzQTgc4foOd.jpg', '300 gm', 'Red', 1, NULL, NULL),
(128, 'HP Original Sauce', 3, 38, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HP Original Sauce</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HP Original Sauce</span></font>', 170.00, 'image/dQFbgGsqXD6VVpZQc2ik.jpg', '255 gm', 'Black', 1, NULL, NULL),
(129, 'KONG MOON Rice Noodles', 3, 38, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">KONG MOON Rice Noodles</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">KONG MOON Rice Noodles</span></font>', 130.00, 'image/BN7Djs73Vr3Clt4GnV3j.jpg', '454 gm', 'White', 1, NULL, NULL),
(130, 'LEA and PERRINS Worcestershire Sauce', 3, 38, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LEA and PERRINS Worcestershire Sauce</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">LEA and PERRINS Worcestershire Sauce</span></font>', 210.00, 'image/byPUIY1iI5Kr1kEMO76r.jpg', '290', 'Black', 1, NULL, NULL),
(131, 'Pasta Sauce With Fresh Cream and Cheese', 3, 29, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pasta Sauce With Fresh Cream and Cheese</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pasta Sauce With Fresh Cream and Cheese</span></font>', 400.00, 'image/lIJ0ElZVfLcEC7yLvHxQ.jpg', '490 gm', 'Red', 1, NULL, NULL),
(132, 'Pasta Sauce With Mushroom, Chunky Tomato and Herbs', 3, 29, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pasta Sauce With Mushroom, Chunky Tomato and Herbs</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pasta Sauce With Mushroom, Chunky Tomato and Herbs</span></font>', 400.00, 'image/tSaNo62ABNp8ytczvE7W.jpg', '500 gm', 'Black', 1, NULL, NULL),
(133, 'Pasta Sauce With Tomato and Herbs', 3, 29, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pasta Sauce With Tomato and Herbs</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pasta Sauce With Tomato and Herbs</span></font>', 395.00, 'image/If3RWJnQH7Q0CkbkVhuP.jpg', '500 gm', 'Red', 1, NULL, NULL),
(134, 'Pizza Sauce With Garlic,Onion and Herbs', 3, 29, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pizza Sauce With Garlic,Onion and Herbs</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pizza Sauce With Garlic,Onion and Herbs</span></font>', 250.00, 'image/I0rYRqA5Kwkrlw7TIKaU.jpg', '400 gm', 'Red', 1, NULL, NULL),
(135, 'Seasoning Sauce', 3, 39, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">MAGGI Seasoning Sauce</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">MAGGI Seasoning Sauce</span></font>', 100.00, 'image/gQOX1FVJmVrpGApTCnTn.jpg', '200 ml', 'Black', 1, NULL, NULL),
(136, 'MAXICANA Jalapino', 3, 38, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">MAXICANA Jalapino</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">MAXICANA Jalapino</span></font>', 215.00, 'image/pTl5DZ7eUN5om46V8HNn.jpg', '190 gm', 'Black', 1, NULL, NULL),
(137, 'Slice Cheese', 3, 40, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">MELBOURNE Slice Cheese</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">MELBOURNE Slice Cheese</span></font>', 300.00, 'image/D8NEEAR0UBhPpX3nBmuD.jpg', '250 gm', 'green', 1, NULL, NULL),
(138, 'Slice Cheese', 3, 40, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Slice Cheese</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Slice Cheese</span></font>', 230.00, 'image/3j3HDWuMQt7B6nMZvVoX.jpg', '200 gm', 'blue', 1, NULL, NULL),
(139, 'Rice Noodles', 3, 38, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Rice Noodles</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Rice Noodles</span></font>', 120.00, 'image/yzMzmedguNwSfzMrslPj.jpg', '454 gm', 'green', 1, NULL, NULL),
(140, 'Microwave Popcorn Butter Flavor', 3, 41, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">POPPIN Microwave Popcorn Butter&nbsp;Flavor</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">POPPIN Microwave Popcorn Butter&nbsp;Flavor</span></font>', 130.00, 'image/umFWjVFIwA0AZmTV9Qq7.jpg', '100 gm', 'blue', 1, NULL, NULL),
(141, 'Microwave Popcorn Lite Butter Flavour', 3, 41, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">POPPIN Microwave Popcorn Lite Butter Flavour</span></font>', '<span style=\"font-size: 13.3333px;\">POPPIN Microwave Popcorn Lite Butter Flavour</span>', 130.00, 'image/fGWDeVDuBfLrUlX5cOM6.jpg', '100 gm', 'blue', 1, NULL, NULL),
(142, 'Microwave Popcorn Raw All Natural', 3, 41, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Microwave Popcorn Raw All Natural</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Microwave Popcorn Raw All Natural</span></font>', 130.00, 'image/sCndw59mvz7zh2ulkuxz.jpg', '100 gm', 'blue', 1, NULL, NULL),
(143, 'Microwave Popcorn,Triple Butter Flavor', 3, 41, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Microwave Popcorn,Triple Butter Flavor</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Microwave Popcorn,Triple Butter Flavor</span></font>', 130.00, 'image/ULdLr9XZG7PehwpXI2ec.jpg', '100 gm', 'blue', 1, NULL, NULL),
(144, 'PRINGLES BBQ Flavour', 3, 42, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">PRINGLES BBQ Flavour</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">PRINGLES BBQ Flavour</span></font>', 215.00, 'image/t0NcMp4JOUdVYpibIkpK.jpg', '158 gm', 'Blueberry', 1, NULL, NULL),
(145, 'Pringles Original', 3, 42, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pringles Original</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pringles Original</span></font>', 215.00, 'image/R1W0zi1z9ENmMitq21vy.jpg', '158 gm', 'Red', 1, NULL, NULL),
(146, 'Pringles Original', 3, 42, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pringles Original</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pringles Original</span></font>', 80.00, 'image/tHTK8rBV44iTpDn68BuK.jpg', '37 gm', 'Red', 1, NULL, NULL),
(147, 'Pringles Sour Cream and Onion', 3, 42, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pringles Sour Cream and Onion</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Pringles Sour Cream and Onion</span></font>', 215.00, 'image/Qgm69MsyPf1EQ3fWPh6D.jpg', '158 gm', 'green', 1, NULL, NULL),
(148, 'Sour Cream and Onion', 3, 42, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Sour Cream and Onion</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Sour Cream and Onion</span></font>', 80.00, 'image/QU5dzAMhvEJiLYgbECAg.jpg', '40 gm', 'green', 1, NULL, NULL),
(149, 'Chocolate and Toffee', 3, 43, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">QUALITY STREET Chocolate and Toffee</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">QUALITY STREET Chocolate and Toffee</span></font>', 500.00, 'image/C5Ct2KhTEYNDbEF7m0MG.jpg', '240 gm', 'Blueberry', 1, NULL, NULL),
(150, 'Chocolate and Toffee', 3, 43, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">QUALITY STREET Chocolate and Toffee</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">QUALITY STREET Chocolate and Toffee</span></font>', 850.00, 'image/VikDIKa79H5vIBcp54II.jpg', '480 gm', 'Blueberry', 1, NULL, NULL),
(151, 'Blue Cream Cheese', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Blue Cream Cheese</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Blue Cream Cheese</span></font>', 150.00, 'image/HSybgqaAxFIXmRCtmhmo.jpg', '250 gm', 'White', 1, NULL, NULL),
(152, 'French Salad Dressing', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">French Salad Dressing</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">French Salad Dressing</span></font>', 150.00, 'image/fQJWGLT9tbaBwq7goS0U.jpg', '250 ML', 'unknown', 1, NULL, NULL),
(153, 'Garlic Dressing', 3, 5, '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/remia-garlic-dressing/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">Garlic Dressing</a></h3>', '<h3 class=\"product-title\" style=\"box-sizing: border-box; font-family: Karla, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-weight: normal; line-height: 1.2; color: rgb(27, 25, 25); margin: 0px 0px 8px; font-size: 22px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; background-color: rgb(255, 255, 255);\"><a href=\"http://tidbitmart.com/product/remia-garlic-dressing/\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(37, 34, 34); text-decoration-line: none; margin: 0px; padding: 0px 0px 1px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgba(0, 0, 0, 0.1); border-left-color: initial; border-image: initial; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: Lora, &quot;MS Sans Serif&quot;, Geneva, sans-serif; font-size: 15px; vertical-align: baseline; transition: all 0.2s; letter-spacing: 0.3px; display: inline;\">Garlic Dressing</a></h3>', 285.00, 'image/f0iRLxnk6bZ77A4t6VuC.jpg', '500 ML', 'unknown', 1, NULL, NULL),
(154, 'Garlic Dressing', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Garlic Dressing</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Garlic Dressing</span></font>', 150.00, 'image/zjdrlvob16YDjIH2bOHa.jpg', '250 ML', 'unknown', 1, NULL, NULL),
(155, 'Garlic Sauce', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Garlic Sauce</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Garlic Sauce</span></font>', 185.00, 'image/pAY6psYhBJ5JHXfgYjgg.jpg', '300 ML', 'unknown', 1, NULL, NULL),
(156, 'Garlic Sauce', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Garlic Sauce</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Garlic Sauce</span></font>', 150.00, 'image/ZhDA8A0ZZrWSr4XGvN6q.jpg', '250 ML', 'unknown', 1, NULL, NULL),
(157, 'Italian Salad Dressing', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Italian Salad Dressing</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Italian Salad Dressing</span></font>', 285.00, 'image/NCVeMHoCOXo3Im3ntPUq.jpg', '500 ML', 'unknown', 1, NULL, NULL),
(158, 'Italian Salad Dressing', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Italian Salad Dressing</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Italian Salad Dressing</span></font>', 150.00, 'image/efxrZCtFzpL24p0L7kUD.jpg', '250 gm', 'unknown', 1, NULL, NULL),
(159, 'Mayonnaise', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mayonnaise</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mayonnaise</span></font>', 500.00, 'image/fYrdyH8qKHPqAG5SWP4q.jpg', '1000 ML', 'unknown', 1, NULL, NULL),
(160, 'Mayonnaise', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mayonnaise</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mayonnaise</span></font>', 285.00, 'image/AELS09BgxDkXuQT2MkTB.jpg', '500 ML', 'unknown', 1, NULL, NULL),
(161, 'Mayonnaise', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mayonnaise</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mayonnaise</span></font>', 230.00, 'image/tjnpPTyebeMUm0GRQcuy.jpg', '500 ML', 'unknown', 1, NULL, NULL),
(162, 'Mayonnaise Light', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mayonnaise Light</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Mayonnaise Light</span></font>', 250.00, 'image/V6HZRfo5VW3wYegryB7H.jpg', '500 ML', 'unknown', 1, NULL, NULL),
(163, 'Thousand Island Salad Dressing', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Thousand Island Salad Dressing</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Thousand Island Salad Dressing</span></font>', 150.00, 'image/ZNSvr3scnfpxUprfBjE0.jpg', '250 ML', 'unknown', 1, NULL, NULL),
(164, 'Tomato ketchup', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Tomato Ketchup</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Tomato Ketchup</span></font>', 300.00, 'image/GlyRAsAzA1hl2YevDUdR.jpg', '829 gm', 'Red', 1, NULL, NULL),
(165, 'Chunk Light Tuna In Water', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Chunk Light Tuna In Water</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Chunk Light Tuna In Water</span></font>', 170.00, 'image/ym9WqcQHTXVEAuZJapYr.jpg', '142 gm', 'blue', 1, NULL, NULL),
(166, 'Light Tuna In Vegetable Oil', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Light Tuna In Vegetable Oil</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Light Tuna In Vegetable Oil</span></font>', 170.00, 'image/cywS1J2o5J1R4afirnJQ.jpg', '142 gm', 'blue', 1, NULL, NULL),
(167, 'Solid White Albacore Tuna In Water', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Solid White Albacore Tuna In Water</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Solid White Albacore Tuna In Water</span></font>', 170.00, 'image/fCoEAfm0f5HK5SDfut6k.jpg', '142 gm', 'blue', 1, NULL, NULL),
(168, 'Honey Popcorn', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Honey Popcorn</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Honey Popcorn</span></font>', 240.00, 'image/qj98eja8nrDQneZnfgLu.jpg', '250 gm', 'Yellow', 1, NULL, NULL),
(169, 'SUPER FRESH Tuna', 3, 38, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUPER FRESH Tuna</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUPER FRESH Tuna</span></font>', 140.00, 'image/BscWSV78QphmCyhmEQO9.jpg', '185 gm (each)', 'unknown', 1, NULL, NULL),
(170, 'SUPER FRESH Tuna Flake In Vegetable Oil', 3, 38, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUPER FRESH Tuna Flake In Vegetable Oil</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">SUPER FRESH Tuna Flake In Vegetable Oil</span></font>', 100.00, 'image/Mt3iGYVEWTF59yuQAGVQ.jpg', '185', 'unknown', 1, NULL, NULL),
(171, 'Macaroni Fusilli', 3, 3, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">VICTORIA Macaroni Fusilli</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">VICTORIA Macaroni Fusilli</span></font>', 140.00, 'image/iqlzLTCw8eGdgAqwoa2T.jpg', '500 gm', 'Black', 1, NULL, NULL),
(172, 'Spaghetti', 3, 5, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Spaghetti</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Spaghetti</span></font>', 140.00, 'image/RikZawoWxWxwIeYoxA6K.jpg', '500 gm', 'unknown', 1, NULL, NULL),
(173, 'Balsamic Vinegar', 3, 3, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Balsamic vinegar</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Balsamic vinegar</span></font>', 325.00, 'image/ABRynkAdCimIkpfVKPij.jpg', '500 ML', 'Black', 1, NULL, NULL),
(174, 'Choco-Crispy-Rice', 15, 39, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Magic-Time-Choco-Crispy-Rice-</span></font>', 'Magic-Time-Choco-Crispy-Rice-', 410.00, 'image/ofK62ybNMqBT8934WxEo.jpg', '425 gm', 'Chocolate', 1, NULL, NULL),
(175, 'Choco-Cooke Crispy', 15, 39, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Choco-Cooke Crispy</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Choco-Cooke Crispy</span></font>', 455.00, 'image/Zu4i5QJG686dPgGI8QAq.jpg', '318 gm', 'Chocolate', 1, NULL, NULL),
(176, 'Time-Corn-Flakes', 16, 39, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Magic-Time-Corn-Flakes</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Magic-Time-Corn-Flakes</span></font>', 410.00, 'image/LHKRszisZ1Wp8RsYlq7I.jpg', '510 gm', 'unknown', 1, NULL, NULL),
(177, 'Time-Fitness-Flakes', 15, 39, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Time-Fitness-Flakes</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Time-Fitness-Flakes</span></font>', 480.00, 'image/HHTwu1DuhFnYCbh3Tmgd.jpg', '317 gm', 'unknown', 1, NULL, NULL),
(178, 'Time-Frosted-Flakes', 15, 39, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Time-Frosted-Flakes</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Time-Frosted-Flakes</span></font>', 455.00, 'image/z3d070ECfgqOaRoSf3Pk.jpg', '425 gm', 'unknown', 1, NULL, NULL),
(179, 'Honey Nuts Loops', 15, 39, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Honey Nuts Loops</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Honey Nuts Loops</span></font>', 455.00, 'image/E1Nff8cVRRb0s3lyf1R8.jpg', '347 gm', 'unknown', 1, NULL, NULL),
(180, 'Raisin Bran', 15, 39, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Raisin Bran</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Raisin Bran</span></font>', 480.00, 'image/AejZiQB9grOYEDf5niRy.jpg', '530 gm', 'unknown', 1, NULL, NULL),
(181, 'Blueberry Gooseberry Coconut Muesli', 15, 39, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Blueberry-Gooseberry-Coconut-Muesli</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Blueberry-Gooseberry-Coconut-Muesli</span></font>', 750.00, 'image/6Ke0t1AzCwbJkVM3pJh8.jpg', '500 gm', 'unknown', 1, NULL, NULL),
(182, 'Classic Fruit and Nut Natural Muesli', 15, 39, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Classic Fruit and Nut Natural Muesli</span></font>', 'Classic Fruit and Nut Natural Muesli', 750.00, 'image/C3QaNooan9FnqNqaRbBP.jpg', '500 gm', 'unknown', 1, NULL, NULL),
(183, 'Orchard Fruit and Almond Muesli', 15, 39, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Orchard Fruit and Almond Muesli</span></font>', 'Orchard Fruit and Almond Muesli', 750.00, 'image/UC7s9MiJti3WDXKNeAO1.jpg', '500 gm', 'unknown', 1, NULL, NULL),
(184, 'খাঁটি-ঘি-', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">খাঁটি-ঘি</span></font>', 'খাঁটি-ঘি', 300.00, 'image/XMzja2mTPRCZY4NaUMU7.jpg', '250 gm', 'unknown', 1, NULL, NULL),
(185, 'খাঁটি-সরিষার-তেল', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">খাঁটি-সরিষার-তেল</span></font>', 'খাঁটি-সরিষার-তেল', 200.00, 'image/IDW0NMxU7OL5YkzNEhUB.jpg', '750 gm', 'unknown', 1, NULL, NULL),
(186, 'মসুর-ডাল', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">মসুর-ডাল&nbsp;</span></font>', 'মসুর-ডাল&nbsp;', 130.00, 'image/H2xWPljpe3aq9vzY2YVB.jpg', '1 KG', 'unknown', 1, NULL, NULL),
(187, 'মুগ-ডাল', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">মুগ-ডাল&nbsp;</span></font>', 'মুগ-ডাল&nbsp;', 160.00, 'image/vyqJSdiMV7Mje1hQU2RP.jpg', '1 KG', 'unknown', 1, NULL, NULL),
(188, 'রওজা-অর্জুন-পাউডার', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা-অর্জুন-পাউডার&nbsp;</span></font>', 'রওজা-অর্জুন-পাউডার&nbsp;', 90.00, 'image/Zk1VTyyVh5O2P2Or5ktF.jpg', '80 gm', 'unknown', 1, NULL, NULL),
(189, 'রওজা-অশ্বগন্ধা-পাউডার', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা-অশ্বগন্ধা-পাউডার&nbsp;</span></font>', 'রওজা-অশ্বগন্ধা-পাউডার&nbsp;', 135.00, 'image/VVoMLkKSCBr46hkjnLTk.jpg', '50 gm', 'unknown', 1, NULL, NULL),
(190, 'রওজা-এলাচ-গুঁড়া-মশলা', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা-এলাচ-গুঁড়া-মশলা&nbsp;</span></font>', 'রওজা-এলাচ-গুঁড়া-মশলা&nbsp;', 90.00, 'image/rkTzO5qQOIE296NirEt8.png', '20 gm', 'unknown', 1, NULL, NULL),
(191, 'রওজা-কালো-গোল-মরিচ', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা-কালো-গোল-মরিচ</span></font>', 'রওজা-কালো-গোল-মরিচ', 120.00, 'image/TQuJytuDVhrCJOiK96H8.jpg', '50 gm', 'unknown', 1, NULL, NULL),
(192, 'রওজা-কালোজিরা-পাউডার', 17, 44, '<span style=\"font-family: Arial, Verdana; font-size: 13.3333px;\">রওজা-কালোজিরা-পাউডার</span>', 'রওজা-কালোজিরা-পাউডার', 75.00, 'image/YYH4dUuc5UoAJDVQCUzm.jpg', '100 gm', 'unknown', 1, NULL, NULL),
(193, 'রওজা কালোজিরার তেল', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা-কালোজিরার-তেল</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা কালোজিরার তেল</span></font>', 100.00, 'image/Z6bJnKGNXLk3X1e2uh0H.jpg', '50 gm', 'unknown', 1, NULL, NULL),
(194, 'রওজা কালোজিরার তেল', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা কালোজিরার তেল</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা কালোজিরার তেল</span></font>', 190.00, 'image/tqIBrmTJF5DYjpw67GSz.jpg', '100 gm', 'unknown', 1, NULL, NULL),
(195, 'রওজা কালোজিরার তেল', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা কালোজিরার তেল</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা কালোজিরার তেল</span></font>', 450.00, 'image/TvFZZFRYJqdC8rnEIJpz.jpg', '250 gm', 'unknown', 1, NULL, NULL),
(196, 'রওজা-কিসমিস', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা-কিসমিস</span></font>', 'রওজা-কিসমিস', 65.00, 'image/wGkMzOKbMpKCMBqH1ZKX.jpg', '100 gm', 'unknown', 1, NULL, NULL),
(197, 'রওজা খাঁটি ঘি', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা খাঁটি ঘি</span></font>', 'রওজা খাঁটি ঘি', 220.00, 'image/bV3KfazHllPLp3dKpleA.jpg', '170 gm', 'unknown', 1, NULL, NULL),
(198, 'রওজা-খাঁটি-ঘি', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা-খাঁটি-ঘি</span></font>', 'রওজা-খাঁটি-ঘি', 375.00, 'image/QC6ngjtY2NPpqeHQRaiT.jpg', '300 gm', 'unknown', 1, NULL, NULL),
(199, 'রওজা-খাঁটি-ঘি', 17, 44, 'রওজা-খাঁটি-ঘি', 'রওজা-খাঁটি-ঘি', 720.00, 'image/Za9qwroJYWzEviuLcFgp.jpg', '600 gm', 'unknown', 1, NULL, NULL),
(200, 'রওজা খাঁটি মধু কালোজিরা ফুলের', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা খাঁটি মধু কালোজিরা ফুলের</span></font>', 'রওজা খাঁটি মধু কালোজিরা ফুলের', 700.00, 'image/bmjnrrUfq1he3SQkJz54.jpg', '1 KG', 'unknown', 1, NULL, NULL),
(201, 'রওজা খাঁটি মধু কালোজিরা ফুলের', 17, 44, 'রওজা খাঁটি মধু কালোজিরা ফুলের', 'রওজা খাঁটি মধু কালোজিরা ফুলের', 200.00, 'image/6pyRw78o6KcSwFEYLnGs.jpg', '250 gm', 'unknown', 1, NULL, NULL),
(202, 'রওজা খাঁটি মধু কালোজিরা ফুলের', 17, 44, 'রওজা খাঁটি মধু কালোজিরা ফুলের', 'রওজা খাঁটি মধু কালোজিরা ফুলের', 370.00, 'image/dg9LueH7ALZUvjLg6lr6.jpg', '500 gm', 'unknown', 1, NULL, NULL),
(203, 'রওজা খাঁটি সুন্দরবনের  মধু', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা খাঁটি সুন্দরবনের&nbsp;&nbsp;</span></font><span style=\"font-family: Arial, Verdana; font-size: 13.3333px;\">মধু</span>', '<font face=\"Arial, Verdana\" style=\"font-size: medium;\"><span style=\"font-size: 13.3333px;\">রওজা খাঁটি সুন্দরবনের&nbsp;&nbsp;</span></font>মধু', 500.00, 'image/NSSzCMcZKPItq53VGWtr.jpg', '1 KG', 'unknown', 1, NULL, NULL),
(204, 'রওজা খাঁটি সুন্দরবনের  মধু', 17, 44, '<font face=\"Arial, Verdana\" style=\"font-size: medium;\"><span style=\"font-size: 13.3333px;\">রওজা খাঁটি সুন্দরবনের&nbsp;&nbsp;</span></font>মধু', '<font face=\"Arial, Verdana\" style=\"font-size: medium;\"><span style=\"font-size: 13.3333px;\">রওজা খাঁটি সুন্দরবনের&nbsp;&nbsp;</span></font>মধু', 70.00, 'image/8VHM9qKDfnPCqUX4Uljz.jpg', '100 gm', 'unknown', 1, NULL, NULL),
(205, 'রওজা খাঁটি সুন্দরবনের  মধু', 17, 44, '<font face=\"Arial, Verdana\" style=\"font-size: medium;\"><span style=\"font-size: 13.3333px;\">রওজা খাঁটি সুন্দরবনের&nbsp;&nbsp;</span></font>মধু', '<font face=\"Arial, Verdana\" style=\"font-size: medium;\"><span style=\"font-size: 13.3333px;\">রওজা খাঁটি সুন্দরবনের&nbsp;&nbsp;</span></font>মধু', 150.00, 'image/Z7GAMFSvpnrz0RF3V37e.jpg', '250 gm', 'unknown', 1, NULL, NULL),
(206, 'রওজা খাঁটি সুন্দরবনের  মধু', 17, 44, '<font face=\"Arial, Verdana\" style=\"font-size: medium;\"><span style=\"font-size: 13.3333px;\">রওজা খাঁটি সুন্দরবনের&nbsp;&nbsp;</span></font>মধু', '<font face=\"Arial, Verdana\" style=\"font-size: medium;\"><span style=\"font-size: 13.3333px;\">রওজা খাঁটি সুন্দরবনের&nbsp;&nbsp;</span></font>মধু', 270.00, 'image/oIdss0j4VY2cSb1nKLrj.jpg', '500 gm', 'unknown', 1, NULL, NULL),
(207, 'রওজা চিরতা পাউডার', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা চিরতা পাউডার&nbsp;</span></font>', 'রওজা চিরতা পাউডার&nbsp;', 90.00, 'image/tzQ2VqIeqgQH8WE0xSKY.jpg', '40 gm', 'unknown', 1, NULL, NULL),
(208, 'রওজা জায়ফল পাউডার', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা জায়ফল পাউডার</span></font>', 'রওজা জায়ফল পাউডার', 70.00, 'image/RuN6sUB6Q5AEThkcWi3k.jpg', '20 gm', 'unknown', 1, NULL, NULL),
(209, 'রওজা জিরা গুঁড়া মশলা', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা জিরা গুঁড়া মশলা</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা জিরা গুঁড়া মশলা</span></font>', 50.00, 'image/SPZwb20aaFXJXB1lAOxv.jpg', '50 gm', 'unknown', 1, NULL, NULL),
(210, 'রওজা জিরা গুঁড়া মশলা', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা জিরা গুঁড়া মশলা</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা জিরা গুঁড়া মশলা</span></font>', 95.00, 'image/bMF1BlgT0m6Bxo0hh5hK.jpg', '100 gm', 'unknown', 1, NULL, NULL),
(211, 'রওজা তালমাখনা', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা-তালমাখনা</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা-তালমাখনা</span></font>', 100.00, 'image/9Ghp11271b3Acc8fubv2.jpg', '80 gm', 'unknown', 1, NULL, NULL),
(212, 'রওজা তাল মিসড়ি', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা তাল মিসড়ি&nbsp;</span></font>', 'রওজা তাল মিসড়ি&nbsp;', 60.00, 'image/xjjKeCNzBQD1bNmUPVlB.jpg', '250 gm', 'unknown', 1, NULL, NULL),
(213, 'রওজা তিলের তেল', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা তিলের তেল</span></font>', 'রওজা তিলের তেল', 50.00, 'image/rUehEHUWL1nuY5Gva7nX.jpg', '100 gm', 'unknown', 1, NULL, NULL),
(214, 'রওজা তিলের তেল', 17, 44, 'রওজা তিলের তেল', 'রওজা তিলের তেল', 100.00, 'image/I1aaTzhTzxiIC13fBZ4W.jpg', '250 ML', 'unknown', 1, NULL, NULL),
(215, 'রওজা তিশির তেল', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা তিশির তেল</span></font>', 'রওজা তিশির তেল', 130.00, 'image/3LpRCTdk2sMJCAAJPvSF.jpg', '100 ML', 'unknown', 1, NULL, NULL),
(216, 'রওজা তেতুল চাটনি', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা তেতুল চাটনি</span></font>', 'রওজা তেতুল চাটনি', 130.00, 'image/mfSqVkrYiOORHNam16tW.jpg', '400 gm', 'unknown', 1, NULL, NULL),
(217, 'রওজা তোকমা দানা', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা তোকমা দানা</span></font>', 'রওজা তোকমা দানা', 30.00, 'image/iufmRU5n2H5OTYrDONjm.jpg', '80 gm', 'unknown', 1, NULL, NULL),
(218, 'রওজা ত্রিফলা মিকচার', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা ত্রিফলা মিকচার</span></font>', 'রওজা ত্রিফলা মিকচার', 120.00, 'image/TtKcf3kxtc55X6OTobRD.jpg', '200 gm', 'unknown', 1, NULL, NULL),
(219, 'রওজা দারুচিনি পাউডার', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা দারুচিনি পাউডার</span></font>', 'রওজা দারুচিনি পাউডার', 60.00, 'image/zq4oFW8T5F9802gYPRxt.jpg', '50 gm', 'unknown', 1, NULL, NULL),
(220, 'রওজা ধনিয়া গুঁড়া মশলা', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা ধনিয়া গুঁড়া মশলা</span></font>', 'রওজা ধনিয়া গুঁড়া মশলা', 75.00, 'image/rPZZgKEiuWfSFIgYJiwK.jpg', '200 gm', 'unknown', 1, NULL, NULL),
(221, 'রওজা ধনিয়া গুঁড়া মশলা', 17, 44, 'রওজা ধনিয়া গুঁড়া মশলা', 'রওজা ধনিয়া গুঁড়া মশলা', 40.00, 'image/CrCC23Lx8vqCvsVTJffq.jpg', '100 gm', 'unknown', 1, NULL, NULL),
(222, 'রওজা পুদিনা পাউডার', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা পুদিনা পাউডার</span></font>', 'রওজা পুদিনা পাউডার', 100.00, 'image/PkOAr4UioTUCRPuhvmjS.jpg', '80 gm', 'unknown', 1, NULL, NULL),
(223, 'রওজা পোস্তদানা', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা পোস্তদানা</span></font>', 'রওজা পোস্তদানা', 75.00, 'image/XDQPDOAhZg9bIDFWhCbv.jpg', '50 gm', 'unknown', 1, NULL, NULL),
(224, 'রওজা বাসক পাউডার', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা বাসক পাউডার</span></font>', 'রওজা বাসক পাউডার', 50.00, 'image/qnOWpRarDRKpOOxclFgR.jpg', '80 gm', 'unknown', 1, NULL, NULL),
(225, 'রওজা বিট লবন', 17, 44, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা বিট লবন</span></font>', 'রওজা বিট লবন', 30.00, 'image/ASoqsLXcUMZ8bBMeUcyp.jpg', '100 gm', 'unknown', 1, NULL, NULL),
(226, 'রওজা বেল পাউডার', 17, 44, 'রওজা বেল পাউডার', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">রওজা বেল পাউডার</span></font>', 160.00, 'image/HABNGaGfk6l4V4drf4C2.jpg', '200 gm', 'unknown', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_mobile_number`, `shipping_city`, `created_at`, `updated_at`) VALUES
(1, 'jonu@dhaka.com', 'tawhid', 'jony', 'hous no: 655 rod no: 10 avenue 4 mirpur DOHS bangladesh', '01739905730', 'Dhaka', NULL, NULL),
(5, 'jonu@dhaka.com', 'tawhid', 'jony', 'hous no: 655 rod no: 10 avenue 4 mirpur DOHS bangladesh', '01739905730', 'Dhaka', NULL, NULL),
(6, 'tawhid.jony@gmail.com', 'tawhid', 'jony', 'hous no: 655 rod no: 10 avenue 4 mirpur DOHS bangladesh', '01739905730', 'Dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(3, 'slider/lJfA5hButfTzJh5BlR3b.jpg', '0', NULL, NULL),
(5, 'slider/N8ZKORSstk5HR13duiKl.jpg', '0', NULL, NULL),
(6, 'slider/ChYPG5SRdBWjo4S2lr3c.jpg', '0', NULL, NULL),
(8, 'slider/qBEBeNBqGZBUu1uRYysU.jpg', '0', NULL, NULL),
(9, 'slider/FDPvoq8jCLP0QBwa85Ut.jpg', '1', NULL, NULL),
(10, 'slider/irtHkluYeZKtZ5GCWhbV.jpg', '1', NULL, NULL),
(11, 'slider/U3ZEtrMmDK8SpZi30llI.jpg', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `logo_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
