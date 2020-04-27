-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2018 at 04:29 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `full_stack_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'HP', 'HP Brand Description Here', 1, '2018-07-23 14:45:11', '2018-07-23 14:45:11'),
(2, 'Samsung', 'Samsung Brand Description Here', 1, '2018-07-23 14:46:17', '2018-07-23 14:46:17'),
(3, 'Sony', 'Sony  Brand Description Here', 1, '2018-07-23 14:46:42', '2018-07-23 14:46:42'),
(4, 'Arong', 'Arong Brand Description Here', 1, '2018-07-23 14:47:08', '2018-07-23 14:47:08'),
(5, 'Yellow', 'Yellow Brand Description Here', 0, '2018-07-23 14:47:29', '2018-07-23 14:50:20'),
(6, 'Honda', 'Honda Bike Brand Description Here', 1, '2018-07-23 14:48:37', '2018-07-23 14:48:37'),
(7, 'Discover Bike', 'Discover Bike Brand Description', 1, '2018-07-23 14:49:09', '2018-07-23 14:49:09'),
(8, 'HP', 'Brand Description Here', 1, '2018-07-25 23:56:47', '2018-07-25 23:56:47'),
(9, 'Artistic', 'Brand Description Here', 1, '2018-07-25 23:59:18', '2018-07-25 23:59:18'),
(10, 'Sada Kalo', 'Brand Description Here', 1, '2018-07-26 00:03:27', '2018-07-26 00:03:27'),
(11, 'Asus', 'Brand Description Here', 1, '2018-07-26 00:06:48', '2018-07-26 00:06:48'),
(12, 'Lenovo', 'Brand Description Here', 1, '2018-07-26 00:07:05', '2018-07-26 00:07:05'),
(13, 'Dell', 'Brand Description', 1, '2018-07-26 00:08:04', '2018-07-26 00:08:04'),
(14, 'Huwaei', 'Brand Description Here', 1, '2018-07-26 00:08:37', '2018-07-26 00:08:37'),
(15, 'Nokia', 'Brand Description Here', 1, '2018-07-26 00:08:54', '2018-07-26 00:08:54'),
(16, 'Rolex', 'Brand Description Here', 1, '2018-07-26 00:13:38', '2018-07-26 00:13:38'),
(17, 'Toshiba', 'Brand Description', 1, '2018-07-26 00:14:40', '2018-07-26 00:14:40'),
(18, 'Hero', 'Brand Description Here', 1, '2018-07-26 00:26:17', '2018-07-26 00:26:17'),
(19, 'Desi Dosh', 'Brand Description Here', 1, '2018-07-26 00:26:45', '2018-07-26 00:26:45'),
(20, 'Walton', 'Brand Description Here', 1, '2018-07-26 00:44:34', '2018-07-26 00:44:34'),
(21, 'Apple', 'Brand Description Here', 1, '2018-07-26 01:05:13', '2018-07-26 01:05:13'),
(22, 'Sony Ericssion', 'Brand Description', 1, '2018-07-26 01:05:45', '2018-07-26 01:05:45'),
(23, 'Alham Toyland', 'Brand Description', 1, '2018-07-26 01:47:44', '2018-07-26 01:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'HP Laptop Description Here', 1, '2018-07-23 11:10:27', '2018-07-23 13:53:55'),
(2, 'Camera', 'Sony Camera Description Here', 0, '2018-07-23 11:34:55', '2018-07-23 13:54:14'),
(3, 'T-shirt', 'Arong T-Shirt Description Here', 0, '2018-07-23 12:57:28', '2018-07-23 13:54:38'),
(4, 'Freeze', 'Freeze Description Here', 1, '2018-07-23 12:58:20', '2018-07-23 13:54:57'),
(5, 'Mobile', 'Mobile Description Here', 1, '2018-07-23 12:58:51', '2018-07-23 12:58:51'),
(6, 'TV', 'TV Description Here', 1, '2018-07-23 12:59:20', '2018-07-23 12:59:20'),
(7, 'Women Fashion', 'Women Fashion Category Description Here', 1, '2018-07-23 13:00:50', '2018-07-23 13:00:50'),
(8, 'Kids Item', 'Kids Item Category Description Here', 1, '2018-07-23 13:01:26', '2018-07-23 13:01:26'),
(9, 'Mens Fashion', 'Mens Fashion Category Description Here', 1, '2018-07-23 13:02:15', '2018-07-23 13:02:15'),
(12, 'Lexus Vehicle', 'Lexus Vehicle Category Description here', 1, '2018-07-23 13:28:35', '2018-07-23 13:28:35'),
(13, 'X-Corlla', 'Toyota X-Corlla Category Description Here', 1, '2018-07-23 21:56:38', '2018-07-23 21:56:38'),
(14, 'Blue Birds', 'Nissan Blue Birds Category Description', 1, '2018-07-23 21:58:23', '2018-07-23 21:58:23'),
(15, 'Computer', 'Category Description Here', 1, '2018-07-25 23:56:07', '2018-07-25 23:56:07'),
(16, 'Electronics', 'Category Description Here', 1, '2018-07-25 23:56:27', '2018-07-25 23:56:27'),
(17, 'Women Fashion', 'Category Description Here', 1, '2018-07-25 23:57:40', '2018-07-25 23:57:40'),
(18, 'Notebook', 'Category Description', 1, '2018-07-26 00:06:05', '2018-07-26 00:06:05'),
(19, 'Tablet', 'Category Description', 1, '2018-07-26 00:06:18', '2018-07-26 00:06:18'),
(20, 'Printer', 'Category Description', 1, '2018-07-26 00:10:12', '2018-07-26 00:10:12'),
(21, 'Smart Watch', 'Category Description Here', 1, '2018-07-26 00:12:21', '2018-07-26 00:12:21'),
(22, 'TVS', 'Category Description Here', 1, '2018-07-26 00:25:29', '2018-07-26 00:25:29'),
(23, 'Motor Bike', 'Category Description', 1, '2018-07-26 00:25:44', '2018-07-26 00:25:44'),
(24, 'Kids Item', 'Category Description Here', 1, '2018-07-26 01:41:02', '2018-07-26 01:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `password`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(3, 'Mahbubul Hasan', 'Talukder', 'Tahmidul@gmail.com', '$2y$10$VWWsejuuJRxlPzabJcL5h.Q55vIj3xaQgDm8Tnq2k/P/o8gCxaYWa', '01715784512', 'Kolabagan', '2018-08-02 23:19:16', '2018-08-02 23:19:16'),
(4, 'rohim', 'khan', 'admin@gmail.com', '$2y$10$vAQXEjUTPvrtY2dadzDDZe3SXpXUeI62u2x3cZq0r2hpshkjY4uvS', '12312312', 'sczxczxcx', '2018-08-09 06:14:32', '2018-08-09 06:14:32');

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
(3, '2018_07_19_121456_create_students_table', 2),
(4, '2018_07_22_070312_create_products_table', 3),
(5, '2018_07_23_170137_create_categories_table', 4),
(6, '2018_07_23_201427_create_brands_table', 5),
(7, '2018_07_26_051447_create_products_table', 6),
(8, '2018_08_03_045456_create_customers_table', 7),
(9, '2018_08_03_052207_create_shippings_table', 8),
(10, '2018_08_03_055051_create_orders_table', 9),
(11, '2018_08_03_055114_create_order_details_table', 9),
(12, '2018_08_03_055222_create_payments_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(8,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(3, 3, 1, 49350.00, 'Pending', '2018-08-03 00:40:42', '2018-08-03 00:40:42'),
(4, 4, 2, 51366.00, 'Pending', '2018-08-09 06:14:53', '2018-08-09 06:14:53'),
(5, 4, 2, 51366.00, 'Pending', '2018-08-09 06:16:30', '2018-08-09 06:16:30'),
(6, 4, 2, 185535.00, 'Pending', '2018-08-09 08:17:22', '2018-08-09 08:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(5, 3, 12, 'Kids Motorcycle', 3000.00, 1, '2018-08-03 00:40:42', '2018-08-03 00:40:42'),
(6, 3, 10, 'Rolex  Watch', 40000.00, 1, '2018-08-03 00:40:42', '2018-08-03 00:40:42'),
(7, 3, 9, 'Samsung Tab', 4000.00, 1, '2018-08-03 00:40:42', '2018-08-03 00:40:42'),
(8, 4, 12, 'Kids Motorcycle', 3000.00, 1, '2018-08-09 06:14:53', '2018-08-09 06:14:53'),
(9, 4, 7, 'Sony Camera', 45920.00, 1, '2018-08-09 06:14:53', '2018-08-09 06:14:53'),
(10, 5, 12, 'Kids Motorcycle', 3000.00, 1, '2018-08-09 06:16:30', '2018-08-09 06:16:30'),
(11, 5, 7, 'Sony Camera', 45920.00, 1, '2018-08-09 06:16:30', '2018-08-09 06:16:30'),
(12, 6, 8, 'Galaxy A8 Plus', 55900.00, 3, '2018-08-09 08:17:22', '2018-08-09 08:17:22'),
(13, 6, 11, 'Silk Saree', 9000.00, 1, '2018-08-09 08:17:22', '2018-08-09 08:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_method`, `payment_status`, `payment_date`, `created_at`, `updated_at`) VALUES
(3, 3, 'cash_on_delivery', 'Pending', '2018-08-03 12:40:43', '2018-08-03 00:40:43', '2018-08-03 00:40:43'),
(4, 4, 'cash_on_delivery', 'Pending', '2018-08-09 18:14:53', '2018-08-09 06:14:53', '2018-08-09 06:14:53'),
(5, 5, 'bkash', 'Pending', '2018-08-09 18:16:30', '2018-08-09 06:16:30', '2018-08-09 06:16:30'),
(6, 6, 'cash_on_delivery', 'Pending', '2018-08-09 20:17:22', '2018-08-09 08:17:22', '2018-08-09 08:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_skew` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_quantity`, `product_skew`, `product_short_description`, `product_long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 7, 6, 'Laptop', 36000.00, 100, '40', 'HP 15-DA0004TU 7th Gen Intel Core i3 7020U', '<p>Model - HP 15-DA0004TU, Processor - Intel Core i3 7020U, Generation - 7th Gen, Processor Clock Speed - 2.3GHz, CPU Cache - 3MB, Display Size - 15.6&quot;, Display Type - HD LED Display, Display Resolution - 1366 x 768, RAM - 4GB, RAM Type - DDR4 2133MHz, Storage - 1TB HDD, Graphics Chipset - Intel HD Graphics 620, Graphics Memory - Shared, Optical Device - DVD RW, Networking - LAN, WiFi, Bluetooth, Card Reader, WebCam, Display Port - HDMI, Audio Port - Combo, USB Port - 2 x USB3.1 Gen 1, 1 x USB2.0, Battery - 3 Cell Li-Ion, Operating System - Windows 10 Home, Weight - 1.77Kg, Color - Black, Part No - 4DZ30PA, Warranty - 2 year (Battery, Adapter 1 year)</p>', 'product-images/Laptop.jpg', 1, '2018-07-26 00:36:38', '2018-08-09 07:58:44'),
(2, 6, 3, 'Sony Bravia', 161200.00, 50, '30', 'Sony X9000E 4K Android Smart LED TV - 55\" - Silver', '<ul>\r\n	<li>Screen size: 55&quot;</li>\r\n	<li>Display size:LED</li>\r\n	<li>Display resolution: 3840 x 2160</li>\r\n	<li>Back-light type: Direct LED</li>\r\n	<li>Back-light dimming type: Local dimming</li>\r\n	<li>Picture processor: 4k HDR processor x1</li>\r\n</ul>', 'product-images/Sony Bravia.jpg', 1, '2018-07-26 00:43:09', '2018-07-26 00:43:09'),
(3, 16, 20, 'Walton Freez', 36200.00, 100, '40', 'WFE-3E8-0101-GDXX-XX\r\n   - Type: Direct Cool\r\n   - Gross Volume: 358 Ltr\r\n   - Net Volume: 345 Ltr\r\n   - Refrigerant: R600a', '<p>WFE-3E8-0101-GDXX-XX<br />\r\n&nbsp; &nbsp;- Type: Direct Cool<br />\r\n&nbsp; &nbsp;- Gross Volume: 358 Ltr<br />\r\n&nbsp; &nbsp;- Net Volume: 345 Ltr<br />\r\n&nbsp; &nbsp;- Refrigerant: R600a</p>\r\n\r\n<p>WFE-3E8-0101-GDXX-XX<br />\r\n&nbsp; &nbsp;- Type: Direct Cool<br />\r\n&nbsp; &nbsp;- Gross Volume: 358 Ltr<br />\r\n&nbsp; &nbsp;- Net Volume: 345 Ltr<br />\r\n&nbsp; &nbsp;- Refrigerant: R600a</p>', 'product-images/Walton Freez.jpg', 1, '2018-07-26 00:50:37', '2018-07-26 00:50:37'),
(4, 7, 19, 'Women\'s Salwar Kameez', 3000.00, 1000, '50', 'Monolova Red Cotton Salwar Kameez for Women', '<h1>Monolova Red Cotton Salwar Kameez for Women.Monolova Red Cotton Salwar Kameez for Women</h1>', 'product-images/Women\'s Salwar Kameez.jpg', 1, '2018-07-26 00:54:21', '2018-07-26 00:54:21'),
(5, 9, 4, 'Panjabi', 5000.00, 100, '40', 'Olive Erri Embroidered Silk-Cotton Panjabi', '<p>Olive Erri Embroidered Silk-Cotton Panjabi.Olive Erri Embroidered Silk-Cotton Panjabi</p>', 'product-images/Panjabi.jpg', 1, '2018-07-26 00:59:02', '2018-07-26 00:59:02'),
(7, 16, 3, 'Sony Camera', 45920.00, 100, '40', 'Sony Alpha a6000 Mirrorless Digital Camera with 16-50mm Lens - Black', '<ul>\r\n	<li><strong>No Return Policy After Delivered</strong></li>\r\n	<li>24.3MP APS-C Exmor APS HD CMOS Sensor</li>\r\n	<li>BIONZ X Image Processor</li>\r\n	<li>Tru-Finder 0.39&quot; 1,440k-Dot OLED EVF</li>\r\n	<li>3.0&quot; 921k-Dot Xtra Fine Tilting LCD</li>\r\n	<li>Full HD 1080p XAVC S Video at 24/60 fps</li>\r\n</ul>', 'product-images/Sony Camera.jpg', 1, '2018-07-26 01:03:59', '2018-07-26 01:03:59'),
(8, 5, 2, 'Galaxy A8 Plus', 55900.00, 20, '10', 'Samsung Galaxy A8 Plus - Smartphone - 6\" - 6GB RAM - 64GB ROM - 16MP Camera - Orchid Grey', '<ul>\r\n	<li><strong>Pre-booking is applicable for online payment only</strong></li>\r\n	<li><strong>Pre-booking amount is non refundable</strong></li>\r\n	<li><strong>Avail 6GB free data for GP SIM on tagging</strong></li>\r\n	<li>6.0&quot; 3D Glass+ FHD Display</li>\r\n	<li>Octa-core (2.2GHz Dual + 1.6GHz Hexa) Processor</li>\r\n	<li>6GB RAM and 64GB ROM</li>\r\n</ul>', 'product-images/Galaxy A8 Plus.jpg', 1, '2018-07-26 01:11:31', '2018-07-26 01:11:31'),
(9, 19, 2, 'Samsung Tab', 4000.00, 100, '50', 'Sikary International Explosion Proof Tempered Glass Screen for Samsung Tab 3 P3200 T210 - Transparent', '<ul>\r\n	<li>Usage: Protection Glass Screen Cover</li>\r\n	<li>Thickness: 0.33mm</li>\r\n	<li>Hardness: 9H</li>\r\n	<li>Transparency: 99%</li>\r\n	<li>Arc Edge: 2.5 Degree</li>\r\n	<li>Material: Import Japanese glass</li>\r\n</ul>', 'product-images/Samsung Tab.jpg', 1, '2018-07-26 01:15:38', '2018-07-26 01:15:38'),
(10, 9, 16, 'Rolex  Watch', 40000.00, 100, '40', 'Armani AR2457 - Stainless Steel Analog Watch for Men - Silver', '<h1>Armani AR2457 - Stainless Steel Analog Watch for Men - Silver.Armani AR2457 - Stainless Steel Analog Watch for Men - Silver</h1>', 'product-images/Rolex  Watch.jpg', 1, '2018-07-26 01:18:35', '2018-07-26 01:18:35'),
(11, 7, 4, 'Silk Saree', 9000.00, 100, '50', 'Mansha Black Shamuz Silk Saree with Red and Golden Stone Work', '<h1>Mansha Black Shamuz Silk Saree with Red and Golden Stone Work.Mansha Black Shamuz Silk Saree with Red and Golden Stone Work</h1>', 'product-images/Silk Saree.jpg', 1, '2018-07-26 01:21:33', '2018-07-26 01:21:33'),
(12, 8, 23, 'Kids Motorcycle', 3000.00, 200, '100', 'Alham Toyland Ride On Motorcycle for Kids - Red and Black', '<ul>\r\n	<li>Product Type: Ride On Motorcycle</li>\r\n	<li>Color: Red and Black</li>\r\n	<li>High-quality product</li>\r\n	<li>For Kids</li>\r\n</ul>', 'product-images/Kids Motorcycle.jpg', 1, '2018-07-26 01:49:12', '2018-07-26 01:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Sultana Akter', 'sultana@gmail.com', '01711458963', 'Rokeya Hall, Dhaka.', '2018-08-02 23:31:20', '2018-08-02 23:31:20'),
(2, 'Tahmidul Haque', 'kobir@gmail.com', '23123', 'sczzX', '2018-08-09 06:14:45', '2018-08-09 06:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$4zpiS/au8.3SX0Uf9Iu67uy1dwdeFXyY.pvjsDjp0U6gegIy0gk96', 'evLtXiUd7yfgLoQOQAisAVc0EVXCUBgYRjZolXqUioeet52GjAE5ctol6jiS', '2018-07-19 00:10:48', '2018-07-19 00:10:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
