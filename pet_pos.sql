-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 05:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pet_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `points` int(11) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `fname`, `lname`, `phone`, `type`, `points`, `sex`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Cus01', 'Test01', '0904316627', 'Normal', 888, 'female', '-', '2024-05-24 14:33:05', '2024-05-24 14:33:05'),
(2, 'Cus02', 'Test02', '0904316622', 'Normal', 889, 'male', 'test01 address', '2024-05-24 14:33:59', '2024-05-24 14:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_type` int(100) DEFAULT NULL,
  `pd_name` varchar(250) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `barcode` varchar(20) DEFAULT NULL,
  `stock` int(100) DEFAULT NULL,
  `animal` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_type`, `pd_name`, `price`, `img`, `barcode`, `stock`, `animal`) VALUES
(1, 2, 'SmartHeart Gold Fit & Firm Small Breeds 7+ อาหารเม็ดสุนัขแก่ สูตรฟิตแอนด์เฟิร์ม (1.5 kg)', 1950, 'SmartHeart Gold Fit & Firm Small Breeds 7+ อาหารเม็ดสุนัขแก่ สูตรฟิตแอนด์เฟิร์ม (1.5 kg).jpg', '123', 99, 'dog'),
(2, 2, 'Smartheart Gold Fit and Firm อาหารเม็ดสุนัข สูตรฟิตแอนด์เฟิร์ม (1.5 kg)', 170, 'Smartheart Gold Fit and Firm อาหารเม็ดสุนัข สูตรฟิตแอนด์เฟิร์ม (1.5 kg).jpg', NULL, 99, 'dog'),
(3, 2, 'SmartHeart Gold Fit & Firm 7+ อาหารเม็ดสุนัขแก่ สูตรฟิตแอนด์เฟิร์ม (1.5 kg)', 189, 'SmartHeart Gold Fit & Firm 7+ อาหารเม็ดสุนัขแก่ สูตรฟิตแอนด์เฟิร์ม (1.5 kg).jpg', NULL, 99, 'dog'),
(4, 2, 'SmartHeart Gold Fit & Firm 7+ อาหารเม็ดสุนัขแก่ สูตรฟิตแอนด์เฟิร์ม (3 kg)', 315, 'SmartHeart Gold Fit & Firm 7+ อาหารเม็ดสุนัขแก่ สูตรฟิตแอนด์เฟิร์ม (3 kg).jpg', NULL, 99, 'dog'),
(5, 2, 'Smartheart Gold Fit and Firm อาหารเม็ดสุนัข สูตรฟิตแอนด์เฟิร์ม (3 kg)', 290, 'Smartheart Gold Fit and Firm อาหารเม็ดสุนัข สูตรฟิตแอนด์เฟิร์ม (3 kg).jpg', NULL, 99, 'dog'),
(6, 2, 'Smartheart Gold Fit and Firm อาหารเม็ดสุนัขพันธุ์เล็ก สูตรฟิตแอนด์เฟิร์ม (1.5 kg)', 189, 'Smartheart Gold Fit and Firm อาหารเม็ดสุนัขพันธุ์เล็ก สูตรฟิตแอนด์เฟิร์ม (1.5 kg).jpg', NULL, 99, 'dog'),
(7, 2, 'SmartHeart Roast Beef Flavor Small Breeds อาหารเม็ดสุนัขพันธุ์ รสเนื้ออบ (1.5 kg)', 169, 'SmartHeart Roast Beef Flavor Small Breeds อาหารเม็ดสุนัขพันธุ์ รสเนื้ออบ (1.5 kg).jpg', NULL, 99, 'dog'),
(8, 2, 'SmartHeart Roast Beef Flavor Adult อาหารเม็ดสุนัขโต รสเนื้ออบ (1.5 kg)', 169, 'SmartHeart Roast Beef Flavor Adult อาหารเม็ดสุนัขโต รสเนื้ออบ (1.5 kg).jpg', NULL, 99, 'dog'),
(9, 2, 'SmartHeart Smoked Liver Flavor Adult อาหารเม็ดสุนัขโต รสตับรมควัน (1.5 kg)', 169, 'SmartHeart Smoked Liver Flavor Adult อาหารเม็ดสุนัขโต รสตับรมควัน (1.5 kg).jpg', NULL, 98, 'dog'),
(10, 2, 'Cesar อาหารเปียกลูกสุนัข สูตรไก่ไข่พร้อมข้าว (0.1 kg)', 470, 'Cesar อาหารเปียกลูกสุนัข สูตรไก่ไข่พร้อมข้าว (0.1 kg).jpg', NULL, 99, 'dog'),
(11, 2, 'Cesar อาหารเปียกสุนัข รสปลาเนื้อขาวและผัก (0.1 kg)', 43, 'Cesar อาหารเปียกสุนัข รสปลาเนื้อขาวและผัก (0.1 kg).jpg', NULL, 99, 'dog'),
(12, 2, 'Cesar อาหารเปียกสุนัข รสปลาแซลมอนพร้อมมันฝรั่ง (0.1 kg)', 43, 'Cesar อาหารเปียกสุนัข รสปลาแซลมอนพร้อมมันฝรั่ง (0.1 kg).jpg', NULL, 99, 'dog'),
(13, 2, 'Cesar อาหารเปียกสุนัข รสวัวและตับ (0.1 kg)', 43, 'Cesar อาหารเปียกสุนัข รสวัวและตับ (0.1 kg).jpg', NULL, 99, 'dog'),
(14, 2, 'Cesar อาหารเปียกสุนัข รสเนื้อวัวและผักรวม (0.1 kg)', 43, 'Cesar อาหารเปียกสุนัข รสเนื้อวัวและผักรวม (0.1 kg).jpg', NULL, 99, 'dog'),
(15, 2, 'Cesar อาหารเปียกสุนัข รสเนื้อไก่ (0.1 kg)', 43, 'Cesar อาหารเปียกสุนัข รสเนื้อไก่ (0.1 kg).jpg', NULL, 99, 'dog'),
(16, 2, 'Cesar อาหารเปียกสุนัข รสเนื้อไก่และผักรวม (0.1 kg)', 43, 'Cesar อาหารเปียกสุนัข รสเนื้อไก่และผักรวม (0.1 kg).jpg', NULL, 99, 'dog'),
(17, 2, 'Jerhigh Meat as Meals Holistic Beef อาหารเม็ดสุนัข รสเนื้อ (0.5 kg)', 250, 'Jerhigh Meat as Meals Holistic Beef อาหารเม็ดสุนัข รสเนื้อ (0.5 kg).jpg', NULL, 99, 'dog'),
(18, 2, 'Jerhigh Meat as Meals Holistic Chicken อาหารเม็ดสุนัข รสไก่ (0.5 kg)', 250, 'Jerhigh Meat as Meals Holistic Chicken อาหารเม็ดสุนัข รสไก่ (0.5 kg).jpg', NULL, 99, 'dog'),
(19, 2, 'Jerhigh Pouch Beef Grilled & Carrot in Gravy อาหารเปียกสุนัข รสเนื้อวัวย่างและแครอทในน้ำเกรวี่ (0.12 kg)', 19, 'Jerhigh Pouch Beef Grilled & Carrot in Gravy อาหารเปียกสุนัข รสเนื้อวัวย่างและแครอทในน้ำเกรวี่ (0.12 kg).jpg', NULL, 99, 'dog'),
(20, 2, 'Jerhigh Pouch Chicken & Liver in Gravy อาหารเปียกสุนัข รสเนื้อไก่และตับในน้ำเกรวี่ (0.12 kg)', 19, 'Jerhigh Pouch Chicken & Liver in Gravy อาหารเปียกสุนัข รสเนื้อไก่และตับในน้ำเกรวี่ (0.12 kg).jpg', NULL, 99, 'dog'),
(21, 2, 'Jerhigh Pouch Chicken and Vegetable in Gravy อาหารเปียกสุนัข รสไก่และผักในน้ำเกรวี่ (0.12 kg)', 19, 'Jerhigh Pouch Chicken and Vegetable in Gravy อาหารเปียกสุนัข รสไก่และผักในน้ำเกรวี่ (0.12 kg).jpg', NULL, 99, 'dog'),
(22, 2, 'Jerhigh Pouch Chicken Grilled in Gravy อาหารเปียกสุนัข รสเนื้อไก่ย่างในน้ำเกรวี่ (0.12 kg)', 19, 'Jerhigh Pouch Chicken Grilled in Gravy อาหารเปียกสุนัข รสเนื้อไก่ย่างในน้ำเกรวี่ (0.12 kg).jpg', NULL, 99, 'dog'),
(23, 2, 'Jerhigh Pouch Roasted Duck in Gravy อาหารเปียกสุนัข รสเป็ดย่างในน้ำเกรวี่ (0.12 kg)', 19, 'Jerhigh Pouch Roasted Duck in Gravy อาหารเปียกสุนัข รสเป็ดย่างในน้ำเกรวี่ (0.12 kg).jpg', NULL, 99, 'dog'),
(24, 2, 'Pedigree Adult Beef & Vegetables Flavor อาหารเม็ดสุนัข รสเนื้อวัวและผัก (1.5 kg)', 146, 'Pedigree Adult Beef & Vegetables Flavor อาหารเม็ดสุนัข รสเนื้อวัวและผัก (1.5 kg).jpg', NULL, 99, 'dog'),
(25, 2, 'Pedigree Adult Dog Food Chicken & Vegetables อาหารเม็ดสุนัข รสไก่และผัก (0.5 kg)', 50, 'Pedigree Adult Dog Food Chicken & Vegetables อาหารเม็ดสุนัข รสไก่และผัก (0.5 kg).jpg', NULL, 99, 'dog'),
(26, 2, 'Pedigree Adult Dog Food Chicken & Vegetables อาหารเม็ดสุนัข รสไก่และผัก (1.5 kg)', 146, 'Pedigree Adult Dog Food Chicken & Vegetables อาหารเม็ดสุนัข รสไก่และผัก (1.5 kg).jpg', NULL, 99, 'dog'),
(27, 2, 'Pedigree Adult Grilled Chicken & Liver Flavor อาหารเม็ดสุนัข รสไก่และตับย่าง (1.5 kg)', 146, 'Pedigree Adult Grilled Chicken & Liver Flavor อาหารเม็ดสุนัข รสไก่และตับย่าง (1.5 kg).jpg', NULL, 99, 'dog'),
(28, 2, 'Pedigree Puppy Chicken, Egg and Milk Flavor อาหารเม็ดลูกสุนัข รสไก่ ไข่และนม (0.4 kg)', 55, 'Pedigree Puppy Chicken, Egg and Milk Flavor อาหารเม็ดลูกสุนัข รสไก่ ไข่และนม (0.4 kg).jpg', NULL, 99, 'dog'),
(29, 2, 'Pedigree Puppy Chicken, Egg and Milk Flavor อาหารเม็ดลูกสุนัข รสไก่ ไข่และนม (1.5 kg)', 155, 'Pedigree Puppy Chicken, Egg and Milk Flavor อาหารเม็ดลูกสุนัข รสไก่ ไข่และนม (1.5 kg).jpg', NULL, 98, 'dog'),
(30, 2, 'Pedigree Puppy Liver, Vegetables and Milk Flavo อาหารเม็ดลูกสุนัข รสตับ ผักและไข่ (1.5 kg)', 155, 'Pedigree Puppy Liver, Vegetables and Milk Flavo อาหารเม็ดลูกสุนัข รสตับ ผักและไข่ (1.5 kg).jpg', NULL, 99, 'dog'),
(31, 2, 'Pedigree Puppy Milk Flavor อาหารเม็ดสุนัข รสนม (0.4 kg)', 55, 'Pedigree Puppy Milk Flavor อาหารเม็ดสุนัข รสนม (0.4 kg).jpg', NULL, 99, 'dog'),
(32, 2, 'Pedigree Puppy Milk Flavor อาหารเม็ดสุนัข รสนม (1.5 kg)', 155, 'Pedigree Puppy Milk Flavor อาหารเม็ดสุนัข รสนม (1.5 kg).jpg', NULL, 99, 'dog'),
(33, 2, 'Pedigree Small Breed Puppy Food อาหารเม็ดสุนัข รสนม (1.5 kg)', 155, 'Pedigree Small Breed Puppy Food อาหารเม็ดสุนัข รสนม (1.5 kg).jpg', NULL, 99, 'dog'),
(34, 2, 'Pedigree Small Breeds Beef, Lamb and Vegetables Flavor อาหารเม็ดสุนัข รสเนื้อวัว เนื้อ และผัก (3 kg)', 310, 'Pedigree Small Breeds Beef, Lamb and Vegetables Flavor อาหารเม็ดสุนัข รสเนื้อวัว เนื้อ และผัก (3 kg).jpg', NULL, 99, 'dog'),
(35, 2, 'Pedigree Small Breeds Grilled Liver Flavor อาหารเม็ด รสตับย่าง (0.48 kg)', 55, 'Pedigree Small Breeds Grilled Liver Flavor อาหารเม็ด รสตับย่าง (0.48 kg).jpg', NULL, 99, 'dog'),
(36, 2, 'Cesar อาหารเปียกสุนัข สูตรซีเนียร์รสไก่งวงและข้าวพร้อมผัก (0.1 kg)', 47, 'Cesar อาหารเปียกสุนัข สูตรซีเนียร์รสไก่งวงและข้าวพร้อมผัก (0.1 kg).jpg', NULL, 99, 'dog'),
(37, 2, 'Cesar อาหารเปียกสุนัข รสเนื้อไก่และเนยแข็ง (0.1 kg)', 43, 'Cesar อาหารเปียกสุนัข รสเนื้อไก่และเนยแข็ง (0.1 kg).jpg', NULL, 99, 'dog'),
(38, 2, 'Cesar อาหารเปียกสุนัขโตเต็มวัย รสตับบด (0.1 kg)', 43, 'Cesar อาหารเปียกสุนัขโตเต็มวัย รสตับบด (0.1 kg).jpg', NULL, 99, 'dog'),
(39, 2, 'Cesar อาหารเปียกสุนัข สูตรบูลโกกิและผัก (0.1 kg)', 43, 'Cesar อาหารเปียกสุนัข สูตรบูลโกกิและผัก (0.1 kg).jpg', NULL, 99, 'dog'),
(40, 3, 'Jerhigh Den-T Stick ขนมสุนัข รสทูน่า (0.07 kg)', 45, 'Jerhigh Den-T Stick ขนมสุนัข รสทูน่า (0.07 kg).jpg', NULL, 99, 'dog'),
(41, 3, 'Jerhigh Den-T Stick ขนมสุนัข รสนม (0.07 kg)', 45, 'Jerhigh Den-T Stick ขนมสุนัข รสนม (0.07 kg).jpg', NULL, 99, 'dog'),
(42, 3, 'Jerhigh Dog Snack Bacon ขนมสุนัข รสเบคอน (0.07 kg)', 45, 'Jerhigh Dog Snack Bacon ขนมสุนัข รสเบคอน (0.07 kg).jpg', NULL, 99, 'dog'),
(43, 3, 'Jerhigh Dog Snack Banana Stick ขนมสุนัข รสกล้วยหอม (0.07 kg)', 45, 'Jerhigh Dog Snack Banana Stick ขนมสุนัข รสกล้วยหอม (0.07 kg).jpg', NULL, 99, 'dog'),
(44, 3, 'Jerhigh Dog Snack Blueberry Stick ขนมสุนัข รสบลูเบอร์รี่ (0.07 kg)', 45, 'Jerhigh Dog Snack Blueberry Stick ขนมสุนัข รสบลูเบอร์รี่ (0.07 kg).jpg', NULL, 99, 'dog'),
(45, 3, 'Jerhigh Dog Snack Carrot Stick ขนมสุนัข รสแครอท (0.07 kg)', 45, 'Jerhigh Dog Snack Carrot Stick ขนมสุนัข รสแครอท (0.07 kg).jpg', NULL, 99, 'dog'),
(46, 3, 'Jerhigh Dog Snack Carrot Stick ขนมสุนัข รสแครอท (0.42 kg)', 270, 'Jerhigh Dog Snack Carrot Stick ขนมสุนัข รสแครอท (0.42 kg).jpg', NULL, 99, 'dog'),
(47, 3, 'Jerhigh Dog Snack Chicken Jerky ขนมสุนัข รสสันในไก่อบแห้ง (0.07 kg)', 45, 'Jerhigh Dog Snack Chicken Jerky ขนมสุนัข รสสันในไก่อบแห้ง (0.07 kg).jpg', NULL, 99, 'dog'),
(48, 3, 'Jerhigh Dog Snack Chicken Stick ขนมสุนัข รสไก่ (0.07 kg)', 45, 'Jerhigh Dog Snack Chicken Stick ขนมสุนัข รสไก่ (0.07 kg).jpg', NULL, 99, 'dog'),
(49, 3, 'Jerhigh Dog Snack Chicken Stick ขนมสุนัข รสไก่ (0.42 kg)', 270, 'Jerhigh Dog Snack Chicken Stick ขนมสุนัข รสไก่ (0.42 kg).jpg', NULL, 99, 'dog'),
(50, 3, 'Jerhigh Dog Snack Cookie ขนมสุนัข คุกกี้ (0.07 kg)', 45, 'Jerhigh Dog Snack Cookie ขนมสุนัข คุกกี้ (0.07 kg).jpg', NULL, 99, 'dog'),
(51, 3, 'Jerhigh Dog Snack Fish Stick ขนมสุนัข สูตรไขมันต่ำ (0.07 kg)', 45, 'Jerhigh Dog Snack Fish Stick ขนมสุนัข สูตรไขมันต่ำ (0.07 kg).jpg', NULL, 99, 'dog'),
(52, 3, 'Jerhigh Dog Snack Milky Stick ขนมสุนัข รสนม (0.07 kg)', 45, 'Jerhigh Dog Snack Milky Stick ขนมสุนัข รสนม (0.07 kg).jpg', NULL, 99, 'dog'),
(53, 3, 'Jerhigh Dog Snack Milky Stick ขนมสุนัข รสนม (0.42 kg)', 270, 'Jerhigh Dog Snack Milky Stick ขนมสุนัข รสนม (0.42 kg).jpg', NULL, 99, 'dog'),
(54, 3, 'Jerhigh Dog Snack Salami ขนมสุนัข รสซาลามี่ (0.07 kg)', 45, 'Jerhigh Dog Snack Salami ขนมสุนัข รสซาลามี่ (0.07 kg).jpg', NULL, 99, 'dog'),
(55, 3, 'Jerhigh Dog Snack Spinach Stick ขนมสุนัข รสผักโขม (0.07 kg)', 45, 'Jerhigh Dog Snack Spinach Stick ขนมสุนัข รสผักโขม (0.07 kg).jpg', NULL, 99, 'dog'),
(56, 3, 'Jerhigh Dog Snack Strawberry Stick ขนมสุนัข รสสตอร์เบอร์รี่ (0.07 kg)', 45, 'Jerhigh Dog Snack Strawberry Stick ขนมสุนัข รสสตอร์เบอร์รี่ (0.07 kg).jpg', NULL, 99, 'dog'),
(57, 3, 'Jerhigh Dog Snack Strip ขนมสุนัข สตริป (0.07 kg)', 45, 'Jerhigh Dog Snack Strip ขนมสุนัข สตริป (0.07 kg).jpg', NULL, 99, 'dog'),
(58, 3, 'Jerhigh Real Melette Snack Stick ขนมสุนัข รสไข่เจียว (0.07 kg)', 45, 'Jerhigh Real Melette Snack Stick ขนมสุนัข รสไข่เจียว (0.07 kg).jpg', NULL, 99, 'dog'),
(59, 3, 'Pedigree Chicken Wrap ขนมสำหรับสุนัข (0.025 kg)', 45, 'Pedigree Chicken Wrap ขนมสำหรับสุนัข (0.025 kg).jpg', NULL, 99, 'dog'),
(60, 3, 'Pedigree Denta Stix Large Dog ขนมสำหรับสุนัขพันธุ์ใหญ่ (0.112 kg)', 55, 'Pedigree Denta Stix Large Dog ขนมสำหรับสุนัขพันธุ์ใหญ่ (0.112 kg).jpg', NULL, 99, 'dog'),
(61, 3, 'Pedigree Denta Stix Large Dog ขนมสำหรับสุนัขพันธุ์ใหญ่ (0.261 kg)', 99, 'Pedigree Denta Stix Large Dog ขนมสำหรับสุนัขพันธุ์ใหญ่ (0.261 kg).jpg', NULL, 99, 'dog'),
(62, 3, 'Pedigree Denta Stix Medium Dog Green Tea Flavour นมสำหรับสุนัขพันธุ์กลาง รสชาเขียว- (0.098 kg)', 50, 'Pedigree Denta Stix Medium Dog Green Tea Flavour นมสำหรับสุนัขพันธุ์กลาง รสชาเขียว- (0.098 kg).jpg', NULL, 99, 'dog'),
(63, 3, 'Pedigree Denta Stix Medium Dog Smoky Beef Flavour ขนมสำหรับสุนัขพันธุ์กลาง รสเนื้อรมควัน (0.098 kg)', 50, 'Pedigree Denta Stix Medium Dog Smoky Beef Flavour ขนมสำหรับสุนัขพันธุ์กลาง รสเนื้อรมควัน (0.098 kg).jpg', NULL, 99, 'dog'),
(64, 3, 'Pedigree Denta Stix Medium Dog ขนมสำหรับสุนัขพันธุ์กลาง (0.024 kg)', 15, 'Pedigree Denta Stix Medium Dog ขนมสำหรับสุนัขพันธุ์กลาง (0.024 kg).jpg', NULL, 99, 'dog'),
(65, 3, 'Pedigree Denta Stix Medium Dog ขนมสำหรับสุนัขพันธุ์กลาง (0.05 kg)', 50, 'Pedigree Denta Stix Medium Dog ขนมสำหรับสุนัขพันธุ์กลาง (0.05 kg).jpg', NULL, 99, 'dog'),
(66, 3, 'Pedigree Denta Stix Small Dog Green Tea Flavour ขนมสำหรับสุนัขพันธุ์เล็ก รสชาเขียว (0.075 kg)', 50, 'Pedigree Denta Stix Small Dog Green Tea Flavour ขนมสำหรับสุนัขพันธุ์เล็ก รสชาเขียว (0.075 kg).jpg', NULL, 99, 'dog'),
(67, 3, 'Pedigree Denta Stix Small Dog ขนมสำหรับสุนัขพันธุ์เล็ก (0.075 kg)', 50, 'Pedigree Denta Stix Small Dog ขนมสำหรับสุนัขพันธุ์เล็ก (0.075 kg).jpg', NULL, 98, 'dog'),
(68, 3, 'Pedigree Denta Stix Small Dog ขนมสำหรับสุนัขพันธุ์เล็ก (0.21 kg)', 105, 'Pedigree Denta Stix Small Dog ขนมสำหรับสุนัขพันธุ์เล็ก (0.21 kg).jpg', NULL, 99, 'dog'),
(69, 3, 'Pedigree Denta Stix Toy Dog ขนมสุนัขสำหรับสุนัขพันธุ์ต๊กตา (0.06 kg)', 50, 'Pedigree Denta Stix Toy Dog ขนมสุนัขสำหรับสุนัขพันธุ์ต๊กตา (0.06 kg).jpg', NULL, 99, 'dog'),
(70, 3, 'Pedigree Denta Stix ขนมสุนัขสำหรับสุนัขพันธุ์ให่ รสเนื้อรมควัน (0.112 kg)', 50, 'Pedigree Denta Stix ขนมสุนัขสำหรับสุนัขพันธุ์ให่ รสเนื้อรมควัน (0.112 kg).jpg', NULL, 99, 'dog'),
(71, 3, 'VitaLife Apple and Chicken Wraps ขนมสุนัข สูตรแอปเปิ้ลและไก่อบแห้ง (0.545 kg)', 390, 'VitaLife Apple and Chicken Wraps ขนมสุนัข สูตรแอปเปิ้ลและไก่อบแห้ง (0.545 kg).jpg', NULL, 98, 'dog'),
(72, 3, 'VitaLife Cheese & Chicken Wraps ขนมสุนัข สูตรชีสและไก่อบแห้ง (0.545 kg)', 440, 'VitaLife Cheese & Chicken Wraps ขนมสุนัข สูตรชีสและไก่อบแห้ง (0.545 kg).jpg', NULL, 99, 'dog'),
(73, 3, 'VitaLife Chicken Chips ขนมสุนัข สูตรเนื้ออกไก่อบแห้ง (0.229 kg)', 170, 'VitaLife Chicken Chips ขนมสุนัข สูตรเนื้ออกไก่อบแห้ง (0.229 kg).jpg', NULL, 99, 'dog'),
(74, 3, 'VitaLife Chicken tender Hip Joints ขนมสุนัข สูตรบำรุงกระดูกสะโพกและข้อต่อ (0.3 kg)', 260, 'VitaLife Chicken tender Hip Joints ขนมสุนัข สูตรบำรุงกระดูกสะโพกและข้อต่อ (0.3 kg).jpg', NULL, 99, 'dog'),
(75, 3, 'VitaLife Chicken Tenders ขนมสุนัข สูตรเนื้ออกไก่อบแห้ง (0.454 kg)', 390, 'VitaLife Chicken Tenders ขนมสุนัข สูตรเนื้ออกไก่อบแห้ง (0.454 kg).jpg', NULL, 99, 'dog'),
(76, 3, 'VitaLife Chicken Tenders ขนมสุนัข สูตรเนื้ออกไก่อบแห้ง (0.904 kg)', 640, 'VitaLife Chicken Tenders ขนมสุนัข สูตรเนื้ออกไก่อบแห้ง (0.904 kg).jpg', NULL, 98, 'dog'),
(77, 3, 'Vitalife Sweet Patato Chicken Wraps ขนมสุนัข สูตรมันหวานพันเนื้อไก่อบแห้ง (0.3 kg)', 260, 'Vitalife Sweet Patato Chicken Wraps ขนมสุนัข สูตรมันหวานพันเนื้อไก่อบแห้ง (0.3 kg).jpg', NULL, 98, 'dog'),
(78, 2, 'Ciao Cat Food Pouch Chicken Fillet & Scallop อาหารเปียกแมว รสเนื้อสันในไก่และหอยเชลล์ (0.04 kg)', 16, 'Ciao Cat Food Pouch Chicken Fillet & Scallop อาหารเปียกแมว รสเนื้อสันในไก่และหอยเชลล์ (0.04 kg).jpg', NULL, 99, 'cat'),
(79, 2, 'Ciao Cat Food Pouch Chicken Fillet with Scallop Taste อาหารเปียกแมว รสเนื้อสันในไก่รสหอยเชลล์ (0.04 kg)', 16, 'Ciao Cat Food Pouch Chicken Fillet with Scallop Taste อาหารเปียกแมว รสเนื้อสันในไก่รสหอยเชลล์ (0.04 kg).jpg', NULL, 99, 'cat'),
(80, 2, 'Ciao Cat Food Pouch Tuna (Katsuo) & Scallop with Chicken Fillet อาหารเปียกแมว สูตรปลาทูน่าคัทสึโอะ และหอยเชลล์หน้าเนื้อสันในไก่ (0.04 kg)', 16, 'Ciao Cat Food Pouch Tuna (Katsuo) & Scallop with Chicken Fillet อาหารเปียกแมว สูตรปลาทูน่าคัทสึโอะ และหอยเชลล์หน้าเนื้อสันในไก่ (0.04 kg).jpg', NULL, 99, 'cat'),
(81, 2, 'Ciao Cat Food Pouch Tuna & Chicken Fillet with Bonito อาหารเปียกแมว สูตรทูน่า สันในไก่หน้าปลาโอ (0.04 kg)', 16, 'Ciao Cat Food Pouch Tuna & Chicken Fillet with Bonito อาหารเปียกแมว สูตรทูน่า สันในไก่หน้าปลาโอ (0.04 kg).jpg', NULL, 99, 'cat'),
(82, 2, 'Ciao Cat Food Pouch Tuna & Chicken Fillet with Scallop Taste อาหารเปียกแมว สูตรทูน่า สันในไก่รสหอยเชลล์ (0.04 kg)', 16, 'Ciao Cat Food Pouch Tuna & Chicken Fillet with Scallop Taste อาหารเปียกแมว สูตรทูน่า สันในไก่รสหอยเชลล์ (0.04 kg).jpg', NULL, 99, 'cat'),
(83, 2, 'Ciao Cat Food Pouch Tuna & Chicken Fillet with Shirasu อาหารเปียกแมว สูตรทูน่า สันในไก่หน้าปลาข้าวสาร (0.04 kg)', 16, 'Ciao Cat Food Pouch Tuna & Chicken Fillet with Shirasu อาหารเปียกแมว สูตรทูน่า สันในไก่หน้าปลาข้าวสาร (0.04 kg).jpg', NULL, 99, 'cat'),
(84, 2, 'Ciao Cat Food Pouch Tuna & Scallop with Chicken Fillet อาหารเปียกแมว สูตรทูน่า หอยเชลล์หน้าสันในไก่ (0.04 kg)', 16, 'Ciao Cat Food Pouch Tuna & Scallop with Chicken Fillet อาหารเปียกแมว สูตรทูน่า หอยเชลล์หน้าสันในไก่ (0.04 kg).jpg', NULL, 99, 'cat'),
(85, 2, 'Ciao อาหารแมวแบบเปียก รสปลาทูน่าเนื้อขาวและปลาข้าวสารในเยลลี่ (0.085 kg)', 39, 'Ciao อาหารแมวแบบเปียก รสปลาทูน่าเนื้อขาวและปลาข้าวสารในเยลลี่ (0.085 kg).jpg', NULL, 99, 'cat'),
(86, 2, 'Ciao อาหารแมวแบบเปียก รสปลาทูน่าเนื้อขาวและปลาหมึกในเยลลี่ (0.085 kg)', 39, 'Ciao อาหารแมวแบบเปียก รสปลาทูน่าเนื้อขาวและปลาหมึกในเยลลี่ (0.085 kg).jpg', NULL, 99, 'cat'),
(87, 2, 'Ciao อาหารแมวแบบเปียก รสปลาทูน่าเนื้อขาวและปลาโอแห้งในเยลลี่ (0.085 kg)', 39, 'Ciao อาหารแมวแบบเปียก รสปลาทูน่าเนื้อขาวและปลาโอแห้งในเยลลี่ (0.085 kg).jpg', NULL, 99, 'cat'),
(88, 2, 'Ciao อาหารแมวแบบเปียก รสเนื้อสันในไก่และหอยเชลล์ในเยลลี่ (0.085 kg)', 39, 'Ciao อาหารแมวแบบเปียก รสเนื้อสันในไก่และหอยเชลล์ในเยลลี่ (0.085 kg).jpg', NULL, 99, 'cat'),
(89, 2, 'Friskies อาหารเม็ดลูกแมว รสไก่และปลา (0.4 kg)', 52, 'Friskies อาหารเม็ดลูกแมว รสไก่และปลา (0.4 kg).jpg', NULL, 99, 'cat'),
(90, 2, 'Friskies อาหารเม็ดแมว รสปลาทะเล (0.4 kg)', 52, 'Friskies อาหารเม็ดแมว รสปลาทะเล (0.4 kg).jpg', NULL, 99, 'cat'),
(91, 2, 'Friskies อาหารเม็ดแมว รสโกเม่ (0.4 kg)', 52, 'Friskies อาหารเม็ดแมว รสโกเม่ (0.4 kg).jpg', NULL, 99, 'cat'),
(92, 2, 'Friskies อาหารเม็ดแมว รสโกเม่ (1.2 kg)', 105, 'Friskies อาหารเม็ดแมว รสโกเม่ (1.2 kg).jpg', NULL, 99, 'cat'),
(93, 2, 'Me-o อาหารเม็ดแมว รสซีฟู้ด (1.2 kg)', 149, 'Me-o อาหารเม็ดแมว รสซีฟู้ด (1.2 kg).jpg', NULL, 99, 'cat'),
(94, 2, 'Me-o อาหารเม็ดแมว รสซีฟู้ด (3 kg)', 279, 'Me-o อาหารเม็ดแมว รสซีฟู้ด (3 kg).jpg', NULL, 99, 'cat'),
(95, 2, 'Me-o อาหารเม็ดแมว รสปลาทู (1.2 kg)', 149, 'Me-o อาหารเม็ดแมว รสปลาทู (1.2 kg).jpg', NULL, 99, 'cat'),
(96, 2, 'Me-o อาหารเม็ดแมว รสปลาทู (3 kg)', 279, 'Me-o อาหารเม็ดแมว รสปลาทู (3 kg).jpg', NULL, 99, 'cat'),
(97, 2, 'Me-o อาหารเม็ดแมว รสปลาทูน่า (1.2 kg)', 149, 'Me-o อาหารเม็ดแมว รสปลาทูน่า (1.2 kg).jpg', NULL, 99, 'cat'),
(98, 2, 'Me-o อาหารเม็ดแมว รสปลาทูน่า (3 kg)', 279, 'Me-o อาหารเม็ดแมว รสปลาทูน่า (3 kg).jpg', NULL, 99, 'cat'),
(99, 2, 'Me-o อาหารเม็ดแมว รสโกเม่ (1.1 kg)', 149, 'Me-o อาหารเม็ดแมว รสโกเม่ (1.1 kg).jpg', NULL, 99, 'cat'),
(100, 2, 'SmartHeart Hairball Control สมาร์ทฮาร์ท อาหารแมวโต สูตรควบคุมก้อนขน [1.1 kg]', 136, 'SmartHeart Hairball Control สมาร์ทฮาร์ท อาหารแมวโต สูตรควบคุมก้อนขน [1.1 kg].png', NULL, 99, 'cat'),
(101, 2, 'Whiskas อาหารเม็ดแมว รสปลาทูน่า (3.3 kg)', 295, 'Whiskas อาหารเม็ดแมว รสปลาทูน่า (3.3 kg).jpg', NULL, 99, 'cat'),
(102, 2, 'Whiskas อาหารเม็ดแมว รสสเต็กปลาแซลมอนย่าง (1.2 kg)', 139, 'Whiskas อาหารเม็ดแมว รสสเต็กปลาแซลมอนย่าง (1.2 kg).jpg', NULL, 99, 'cat'),
(103, 2, 'Whiskas อาหารเม็ดแมว รสโกเม่ซีฟู้ด (0.48 kg)', 56, 'Whiskas อาหารเม็ดแมว รสโกเม่ซีฟู้ด (0.48 kg).jpg', NULL, 99, 'cat'),
(104, 3, 'Ciao Cat Snack Churu Chicken Fillet & Squid ขนมแมวครีมเลีย รสไก่และปลาหมึก (0.07 kg)', 70, 'Ciao Cat Snack Churu Chicken Fillet & Squid ขนมแมวครีมเลีย รสไก่และปลาหมึก (0.07 kg).jpg', NULL, 99, 'cat'),
(105, 3, 'Ciao Cat Snack Churu Chicken Fillet Seafood Mix ขนมแมวเลีย รสเนื้อสันในไก่ผสมซีฟูด (0.28 kg)', 275, 'Ciao Cat Snack Churu Chicken Fillet Seafood Mix ขนมแมวเลีย รสเนื้อสันในไก่ผสมซีฟูด (0.28 kg).jpg', NULL, 99, 'cat'),
(106, 3, 'Ciao Cat Snack Churu Chicken Fillet with Scallop Flavo เนื้อสันในไก่ รสหอยเซลล์ (0.14 kg)', 145, 'Ciao Cat Snack Churu Chicken Fillet with Scallop Flavo เนื้อสันในไก่ รสหอยเซลล์ (0.14 kg).jpg', NULL, 99, 'cat'),
(107, 3, 'Ciao Cat Snack Churu Grille Tuna For Kitten ขนมแมวครีมเลีย ปลาทูน่า (0.28 kg)', 275, 'Ciao Cat Snack Churu Grille Tuna For Kitten ขนมแมวครีมเลีย ปลาทูน่า (0.28 kg).jpg', NULL, 99, 'cat'),
(108, 3, 'Ciao Cat Snack Churu Grilled Tuna with Maguro ขนมแมวครีมเลีย ปลาทูน่าย่าง รสปลาโอแห้ง (0.07 kg)', 70, 'Ciao Cat Snack Churu Grilled Tuna with Maguro ขนมแมวครีมเลีย ปลาทูน่าย่าง รสปลาโอแห้ง (0.07 kg).jpg', NULL, 99, 'cat'),
(109, 3, 'Ciao Cat Snack Churu Grilled Tuna with Scallop ขนมแมวครีมเลีย ปลาทูน่าย่าง รสหอยเชลล์ (0.07 kg)', 70, 'Ciao Cat Snack Churu Grilled Tuna with Scallop ขนมแมวครีมเลีย ปลาทูน่าย่าง รสหอยเชลล์ (0.07 kg).jpg', NULL, 99, 'cat'),
(110, 3, 'Ciao Cat Snack Churu Sasamit ขนมแมวครีมเลีย รสซาซามิ (0.07 kg)', 70, 'Ciao Cat Snack Churu Sasamit ขนมแมวครีมเลีย รสซาซามิ (0.07 kg).jpg', NULL, 99, 'cat'),
(111, 3, 'Ciao Cat Snack Churu Tuna Dried Bonito Mix14 ขนมแมวครีมเลีย ปลาทูน่าเนื้อขาวผสมปลาโอแห้ง (0.28 kg)', 275, 'Ciao Cat Snack Churu Tuna Dried Bonito Mix14 ขนมแมวครีมเลีย ปลาทูน่าเนื้อขาวผสมปลาโอแห้ง (0.28 kg).jpg', NULL, 99, 'cat'),
(112, 3, 'Ciao Cat Snack Churu Tuna Hairball Control ขนมแมวครีมเลีย รสปลาทูน่า สูตรขับก้อนขน (0.07 kg)', 70, 'Ciao Cat Snack Churu Tuna Hairball Control ขนมแมวครีมเลีย รสปลาทูน่า สูตรขับก้อนขน (0.07 kg).jpg', NULL, 99, 'cat'),
(113, 3, 'Ciao Cat Snack Churu Tuna Kasuo ขนมแมวครีมเลีย รสเนื้อปลาทูน่าคัตซึโอะ (0.07 kg)', 70, 'Ciao Cat Snack Churu Tuna Kasuo ขนมแมวครีมเลีย รสเนื้อปลาทูน่าคัตซึโอะ (0.07 kg).jpg', NULL, 99, 'cat'),
(114, 3, 'Ciao Cat Snack Churu Tuna Scallop ขนมแมวเลีย รสทูน่าเนื้อขาวและหอยเซลล์ (0.07 kg)', 70, 'Ciao Cat Snack Churu Tuna Scallop ขนมแมวเลีย รสทูน่าเนื้อขาวและหอยเซลล์ (0.07 kg).jpg', NULL, 99, 'cat'),
(115, 3, 'Ciao Cat Snack Churu Tuna with Scallop Mix ขนมแมวครีมเลีย ปลาทูน่าผสมหอยเซลล์ (0.28 kg)', 275, 'Ciao Cat Snack Churu Tuna with Scallop Mix ขนมแมวครีมเลีย ปลาทูน่าผสมหอยเซลล์ (0.28 kg).jpg', NULL, 99, 'cat'),
(116, 3, 'Ciao Cat Snack Yaki Chicken Crab Stick Flavour ขนมแมวชิ้น สันในไก่ย่างรสปูอัด (0.02 kg)', 35, 'Ciao Cat Snack Yaki Chicken Crab Stick Flavour ขนมแมวชิ้น สันในไก่ย่างรสปูอัด (0.02 kg).jpg', NULL, 99, 'cat'),
(117, 3, 'Ciao Cat Snack Yaki Chicken Soup Flavour ขนมแมวชิ้น สันในไก่ย่างรสน้ำซุปไก่ (0.02 kg)', 35, 'Ciao Cat Snack Yaki Chicken Soup Flavour ขนมแมวชิ้น สันในไก่ย่างรสน้ำซุปไก่ (0.02 kg).jpg', NULL, 99, 'cat'),
(118, 3, 'Ciao Cat Snack Yaki Maguro Honkaku Dashi Flavour ขนมแมวชิ้น ปลาทูน่าย่างรสปลาโอแห้งผสมผงสาหร่าย (0.02 kg)', 35, 'Ciao Cat Snack Yaki Maguro Honkaku Dashi Flavour ขนมแมวชิ้น ปลาทูน่าย่างรสปลาโอแห้งผสมผงสาหร่าย (0.02 kg).jpg', NULL, 99, 'cat'),
(119, 3, 'Ciao Cat Snack Yaki Maguro Hotate Flavour ขนมแมวชิ้น ปลาทูน่าย่างรสหอยเชลล์ (0.02 kg)', 35, 'Ciao Cat Snack Yaki Maguro Hotate Flavour ขนมแมวชิ้น ปลาทูน่าย่างรสหอยเชลล์ (0.02 kg).jpg', NULL, 99, 'cat'),
(120, 3, 'Ciao Cat Snack Yaki Maguro Katsuobushi Flavour ขนมแมวชิ้น ปลาทูน่าย่างรสปลาโอแห้ง (0.02 kg)', 35, 'Ciao Cat Snack Yaki Maguro Katsuobushi Flavour ขนมแมวชิ้น ปลาทูน่าย่างรสปลาโอแห้ง (0.02 kg).jpg', NULL, 99, 'cat'),
(121, 3, 'Ciao Cat Snack Yaki Makuro Dashi ขนมแมวชิ้น ปลาทูน่าย่างรสปลาทูน่ามากุโระ (0.02 kg)', 35, 'Ciao Cat Snack Yaki Makuro Dashi ขนมแมวชิ้น ปลาทูน่าย่างรสปลาทูน่ามากุโระ (0.02 kg).jpg', NULL, 99, 'cat'),
(122, 3, 'Ciao Cat Stick Chicken Fillet in Jelly ขนมแมวแบบแท่ง รสเนื้อสันในไก่ในเยลลี่ (0.07 kg)', 70, 'Ciao Cat Stick Chicken Fillet in Jelly ขนมแมวแบบแท่ง รสเนื้อสันในไก่ในเยลลี่ (0.07 kg).jpg', NULL, 99, 'cat'),
(123, 3, 'Ciao Cat Stick Tuna Maguro in Jelly ขนมแมวแบบแท่ง รสทูน่ามากูโระในเยลลี่ (0.07 kg)', 70, 'Ciao Cat Stick Tuna Maguro in Jelly ขนมแมวแบบแท่ง รสทูน่ามากูโระในเยลลี่ (0.07 kg).jpg', NULL, 99, 'cat'),
(124, 3, 'Ciao Chu-ru ขนมครีมแมวเลีย ปลาทูน่าเนื้อขาว รสหอยเชลล์ (0.154 kg)', 145, 'Ciao Chu-ru ขนมครีมแมวเลีย ปลาทูน่าเนื้อขาว รสหอยเชลล์ (0.154 kg).jpg', NULL, 99, 'cat'),
(125, 2, 'SmartHeart อาหารแมวโต สมาร์ทฮาร์ท รสปลาแซลมอน [0.48 kg]', 64, 'SmartHeart อาหารแมวโต สมาร์ทฮาร์ท รสปลาแซลมอน [0.48 kg].png', NULL, 99, 'cat'),
(126, 2, 'SmartHeart อาหารแมวโต สมาร์ทฮาร์ท รสปลาแซลมอน [1.2 kg]', 136, 'SmartHeart อาหารแมวโต สมาร์ทฮาร์ท รสปลาแซลมอน [1.2 kg].png', NULL, 99, 'cat'),
(127, 2, 'SmartHeart Mackerel สมาร์ทฮาร์ท อาหารแมวโต รสปลาทู [0.48 kg]', 64, 'SmartHeart Mackerel สมาร์ทฮาร์ท อาหารแมวโต รสปลาทู [0.48 kg].png', NULL, 99, 'cat'),
(128, 3, 'Cataholic ขนมแมว รสไก่และปลากะตัก 1x25g', 46, 'Cataholic ขนมแมว รสไก่และปลากะตัก 1x25g.png', NULL, 99, 'cat'),
(129, 2, 'SmartHeart Kittens สมาร์ทฮาร์ท อาหารลูกแมว รสไก่ ปลา ไข่และนม [0.45 kg]', 64, 'SmartHeart Kittens สมาร์ทฮาร์ท อาหารลูกแมว รสไก่ ปลา ไข่และนม [0.45 kg].png', NULL, 99, 'cat'),
(130, 2, 'SmartHeart Mackerel สมาร์ทฮาร์ท อาหารแมวโต รสปลาทู [1.2 kg]', 136, 'SmartHeart Mackerel สมาร์ทฮาร์ท อาหารแมวโต รสปลาทู [1.2 kg].png', NULL, 99, 'cat'),
(131, 2, 'SmartHeart สมาร์ทฮาร์ท รสไก่และปลาทูน่า อาหารแมวโต [0.48 kg]', 64, 'SmartHeart สมาร์ทฮาร์ท รสไก่และปลาทูน่า อาหารแมวโต [0.48 kg].png', NULL, 99, 'cat'),
(132, 2, 'SmartHeart สมาร์ทฮาร์ท รสไก่และปลาทูน่า อาหารแมวโต [1.2 kg]', 136, 'SmartHeart สมาร์ทฮาร์ท รสไก่และปลาทูน่า อาหารแมวโต [1.2 kg].png', NULL, 99, 'cat'),
(133, 2, 'SmartHeart สมาร์ทฮาร์ท รสไก่และปลาทูน่า อาหารแมวโต [7 kg]', 630, 'SmartHeart สมาร์ทฮาร์ท รสไก่และปลาทูน่า อาหารแมวโต [7 kg].png', NULL, 99, 'cat'),
(134, 2, 'Whiskas Junior วิสกัส อาหารลูกแมว รสปลาทะเลและนม [0.45 kg]', 71, 'Whiskas Junior วิสกัส อาหารลูกแมว รสปลาทะเลและนม [0.45 kg].jpg', NULL, 99, 'cat'),
(135, 2, 'Whiskas อาหารแมวโต รสปลาทู [1.2 kg]', 158, 'Whiskas อาหารแมวโต รสปลาทู [1.2 kg].png', NULL, 99, 'cat'),
(136, 2, 'Whiskas วิสกัส อาหารแมวโต รสปลาทะเล [1.2 kg]', 158, 'Whiskas วิสกัส อาหารแมวโต รสปลาทะเล [1.2 kg].png', NULL, 99, 'cat'),
(137, 2, 'Whiskas อาหารแมวโตวิสกัส รสปลาซาบะย่าง [1.2 kg]', 158, 'Whiskas อาหารแมวโตวิสกัส รสปลาซาบะย่าง [1.2 kg].png', NULL, 99, 'cat'),
(138, 2, 'Whiskas Cat Food Senior 7+ Mackerel Flavor 1.1 KG วิสกัส อาหารแมวสูงวัย รสปลาทู', 158, 'Whiskas Cat Food Senior 7+ Mackerel Flavor 1.1 KG วิสกัส อาหารแมวสูงวัย รสปลาทู.png', NULL, 99, 'cat'),
(139, 2, 'Whiskas Adult วิสกัส อาหารแมวโต รสแซลมอนสเต็ก 1.2 KG', 158, 'Whiskas Adult วิสกัส อาหารแมวโต รสแซลมอนสเต็ก 1.2 KG.png', NULL, 99, 'cat'),
(140, 2, 'อาหารแมว Me-O Persian Adult มีโอ สำหรับแมวโต เปอร์เซีย [0.4 kg]', 61, 'อาหารแมว Me-O Persian Adult มีโอ สำหรับแมวโต เปอร์เซีย [0.4 kg].png', NULL, 99, 'cat'),
(141, 2, 'อาหารแมว Me-O Persian Adult มีโอ สำหรับแมวโต เปอร์เซีย [1.1 kg]', 143, 'อาหารแมว Me-O Persian Adult มีโอ สำหรับแมวโต เปอร์เซีย [1.1 kg].png', NULL, 99, 'cat'),
(142, 2, 'อาหารแมว Me-O Persian Adult มีโอ สำหรับแมวโต เปอร์เซีย [2.8 kg]', 342, 'อาหารแมว Me-O Persian Adult มีโอ สำหรับแมวโต เปอร์เซีย [2.8 kg].png', NULL, 99, 'cat'),
(143, 2, 'อาหารแมว Me-O Persian Adult มีโอ สำหรับแมวโต เปอร์เซีย [6.8 kg]', 674, 'อาหารแมว Me-O Persian Adult มีโอ สำหรับแมวโต เปอร์เซีย [6.8 kg].png', NULL, 99, 'cat'),
(144, 2, 'อาหารแมว Me-O Kittens Persian มีโอ สำหรับลูกแมวเปอร์เซีย [0.4 kg]', 61, 'อาหารแมว Me-O Kittens Persian มีโอ สำหรับลูกแมวเปอร์เซีย [0.4 kg].png', NULL, 99, 'cat'),
(145, 2, 'อาหารแมว Me-O Kittens Persian มีโอ สำหรับลูกแมวเปอร์เซีย [1.1 kg]', 139, 'อาหารแมว Me-O Kittens Persian มีโอ สำหรับลูกแมวเปอร์เซีย [1.1 kg].png', '143', 99, 'cat'),
(146, 4, 'Kanimal แคนนิมอล กล่องใส่อาหารเม็ด สำหรับสัตว์เลี้ยง 1 kg', 650, 'Kanimal แคนนิมอล กล่องใส่อาหารเม็ด สำหรับสัตว์เลี้ยง 1 kg.jpg', NULL, 99, 'dog'),
(147, 4, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสุนัข รุ่น Clip On แบบสแตนเลส', 100, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสุนัข รุ่น Clip On แบบสแตนเลส.jpg', '', 99, 'dog'),
(148, 4, 'Kanimal แคนนิมอล น้ำพุพร้อมไส้กรอง สำหรับสัตว์เลี้ยง สีขาวฟ้า 1.8 L', 650, 'Kanimal แคนนิมอล น้ำพุพร้อมไส้กรอง สำหรับสัตว์เลี้ยง สีขาวฟ้า 1.8 L.jpg', NULL, 99, 'dog'),
(149, 4, 'Kanimal แคนนิมอล กล่องใส่อาหารเม็ด สำหรับสัตว์เลี้ยง 500 g', 199, 'Kanimal แคนนิมอล กล่องใส่อาหารเม็ด สำหรับสัตว์เลี้ยง 500 g.jpg', NULL, 99, 'dog'),
(150, 4, 'Dog H2O ด็อกเฮททูโอ ที่ป้องกันสายไฟ 6 ซม.', 165, 'Dog H2O ด็อกเฮททูโอ ที่ป้องกันสายไฟ 6 ซม..jpg', NULL, 99, 'dog'),
(151, 4, 'Gex เก็กซ์ แผ่นกรองแบบไอออน สำหรับสุนัข 5 ชิ้น', 330, 'Gex เก็กซ์ แผ่นกรองแบบไอออน สำหรับสุนัข 5 ชิ้น.jpg', NULL, 99, 'dog'),
(152, 4, 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปหอยทาก 2.8 L', 610, 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปหอยทาก 2.8 L.jpg', NULL, 94, 'dog'),
(153, 4, 'Cc Pet ซีซีเพ็ท ที่ให้น้ำแบบพกพา สำหรับสุนัข สีฟ้า 500 ml', 550, 'Cc Pet ซีซีเพ็ท ที่ให้น้ำแบบพกพา สำหรับสุนัข สีฟ้า 500 ml.jpg', NULL, 99, 'dog'),
(154, 4, 'Kanimal แคนนิมอล ที่ให้น้ำ สำหรับสัตว์เลี้ี้ยง', 275, 'Kanimal แคนนิมอล ที่ให้น้ำ สำหรับสัตว์เลี้ี้ยง.jpg', NULL, 99, 'dog'),
(155, 4, 'Cc Pet ซีซีเพ็ท ที่ให้น้ำและอาหารพกพา สำหรับสุนัข', 399, 'Cc Pet ซีซีเพ็ท ที่ให้น้ำและอาหารพกพา สำหรับสุนัข.jpg', NULL, 99, 'dog'),
(156, 4, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสัตว์เลี้ยง รุ่น Robusto', 549, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสัตว์เลี้ยง รุ่น Robusto.png', NULL, 99, 'dog'),
(157, 4, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสัตว์เลี้ยง รุ่น Bella Classic', 185, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสัตว์เลี้ยง รุ่น Bella Classic.png', NULL, 99, 'dog'),
(158, 4, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสัตว์เลี้ยง รุ่น Bella Coastal', 185, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสัตว์เลี้ยง รุ่น Bella Coastal.png', NULL, 99, 'dog'),
(159, 4, 'Dog H2O ด็อกเฮททูโอ ตัวแจ้งเปลี่ยนฟิลเตอร์น้ำพุ สำหรับสุนัข', 385, 'Dog H2O ด็อกเฮททูโอ ตัวแจ้งเปลี่ยนฟิลเตอร์น้ำพุ สำหรับสุนัข.jpg', NULL, 99, 'dog'),
(160, 4, 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปแครอท สีีส้ม 330 ml', 300, 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปแครอท สีีส้ม 330 ml.jpg', NULL, 92, 'dog'),
(161, 4, 'Cc Pet ซีซีเพ็ท เครื่องให้อาหารและน้ำอัตโนมัติ สำหรับสุนัข สีส้ม', 790, 'Cc Pet ซีซีเพ็ท เครื่องให้อาหารและน้ำอัตโนมัติ สำหรับสุนัข สีส้ม.jpg', NULL, 98, 'dog'),
(162, 4, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสัตว์เลี้ยง รุ่น Bella Bowls Designer ลาย Hearts', 185, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสัตว์เลี้ยง รุ่น Bella Bowls Designer ลาย Hearts.jpg', NULL, 99, 'dog'),
(163, 4, 'Cc Pet ซีซีเพ็ท ชามอาหารและน้ำแบบพกพา สำหรับสุนัข', 195, 'Cc Pet ซีซีเพ็ท ชามอาหารและน้ำแบบพกพา สำหรับสุนัข.jpg', NULL, 92, 'dog'),
(164, 4, 'Hosttail โฮสเทล ชามชะลอการกิน สำหรับสุนัข ลายกระดูก', 179, 'Hosttail โฮสเทล ชามชะลอการกิน สำหรับสุนัข ลายกระดูก.jpg', NULL, 99, 'dog'),
(165, 4, 'Sleeky สลิคกี้ ชุดขวดนม สำหรับลูกสุนัขและสัตว์เลี้ยง แบบคอโค้ง', 101, 'Sleeky สลิคกี้ ชุดขวดนม สำหรับลูกสุนัขและสัตว์เลี้ยง แบบคอโค้ง.jpg', NULL, 99, 'dog'),
(166, 4, 'Vibrant Life ไวแบรนท์ไลฟ์ ชามใส่น้ำและอาหาร แบบ 2 หลุม สำหรับสัตว์เลี้ยง', 399, 'Vibrant Life ไวแบรนท์ไลฟ์ ชามใส่น้ำและอาหาร แบบ 2 หลุม สำหรับสัตว์เลี้ยง.jpg', NULL, 99, 'dog'),
(167, 4, 'Kanimal แคนนิมอล ที่ให้อาหาร สำหรับสัตว์เลี้ี้ยง', 275, 'Kanimal แคนนิมอล ที่ให้อาหาร สำหรับสัตว์เลี้ี้ยง.jpg', NULL, 99, 'dog'),
(168, 4, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ถาดรองชามอาหาร สำหรับสุนัข รููปกระดูก', 340, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ถาดรองชามอาหาร สำหรับสุนัข รููปกระดูก.jpg', NULL, 99, 'dog'),
(169, 4, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสุนัข แบบสแตนเลส 2 หลุม', 259, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ชามอาหาร สำหรับสุนัข แบบสแตนเลส 2 หลุม.jpg', NULL, 99, 'dog'),
(170, 4, 'Sopaw โซพอล ไส้กรองน้ำพุ สำหรับสัตว์เลี้ยง รุ่น W1 4 แผ่น', 360, 'Sopaw โซพอล ไส้กรองน้ำพุ สำหรับสัตว์เลี้ยง รุ่น W1 4 แผ่น.jpg', NULL, 99, 'dog'),
(171, 4, 'Mandina มันดีน่า ที่ตักอเนกประสงค์ สำหรับสัตว์เลี้ยง', 107, 'Mandina มันดีน่า ที่ตักอเนกประสงค์ สำหรับสัตว์เลี้ยง.jpg', NULL, 99, 'dog'),
(172, 4, 'Gex เก็กซ์ ชามน้ำติดกรง สำหรับสุนัข 80 ml', 650, 'Gex เก็กซ์ ชามน้ำติดกรง สำหรับสุนัข 80 ml.jpg', NULL, 99, 'dog'),
(173, 4, 'Gex เก็กซ์ ปั๊มน้ำสำหรับชามน้ำพุ รุ่น P-3', 400, 'Gex เก็กซ์ ปั๊มน้ำสำหรับชามน้ำพุ รุ่น P-3.jpg', NULL, 99, 'dog'),
(174, 4, 'Gex เก็กซ์ แผ่นกรองน้ำ สำหรับสุนัข', 140, 'Gex เก็กซ์ แผ่นกรองน้ำ สำหรับสุนัข.jpg', NULL, 99, 'dog'),
(175, 4, 'Gex เก็กซ์ ไส้กรองเซรามิคชามน้ำติดกรง สำหรับสุนัข', 290, 'Gex เก็กซ์ ไส้กรองเซรามิคชามน้ำติดกรง สำหรับสุนัข.jpg', NULL, 99, 'dog'),
(176, 4, 'Gex เก็กซ์ ไส้กรองชามน้ำติดกรง สำหรับสุนัข', 190, 'Gex เก็กซ์ ไส้กรองชามน้ำติดกรง สำหรับสุนัข.jpg', NULL, 99, 'dog'),
(177, 4, 'Mandina มันดีน่า ขวดให้น้ำและอาหารพกพา สำหรับสัตว์เลี้ยง', 290, 'Mandina มันดีน่า ขวดให้น้ำและอาหารพกพา สำหรับสัตว์เลี้ยง.jpg', NULL, 99, 'dog'),
(178, 4, 'Kanimal แคนนิมอล ชุดขวดนม สำหรับสัตว์เลี้ยง แบบมีจุกนมรีฟิลและแปรงล้าง', 79, 'Kanimal แคนนิมอล ชุดขวดนม สำหรับสัตว์เลี้ยง แบบมีจุกนมรีฟิลและแปรงล้าง.jpg', NULL, 99, 'dog'),
(179, 4, 'Barketek บาร์คคีเท็ค ชามอาหาร สำหรับสัตว์เลี้ยง รุ่น Mod', 980, 'Barketek บาร์คคีเท็ค ชามอาหาร สำหรับสัตว์เลี้ยง รุ่น Mod.jpg', NULL, 97, 'dog'),
(180, 4, 'Vibrant Life ไวแบรนท์ไลฟ์ ชามใส่อาหารหนา 2 ชั้น สำหรับสัตว์เลี้ยง', 499, 'Vibrant Life ไวแบรนท์ไลฟ์ ชามใส่อาหารหนา 2 ชั้น สำหรับสัตว์เลี้ยง.jpg', NULL, 99, 'dog'),
(181, 4, 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง', 799, 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง.jpg', '4034508382579', 79, 'dog'),
(182, 4, 'Petaholic เพ็ทอะโฮลิค ชามอาหาร สำหรับสัตว์เลี้ยง แบบพับได้', 99, 'Petaholic เพ็ทอะโฮลิค ชามอาหาร สำหรับสัตว์เลี้ยง แบบพับได้.jpg', NULL, 99, 'dog'),
(183, 4, 'Dogit ด็อกอิท ชามอาหาร สำหรับสัตว์เลี้ยง แบบทรงสูง', 315, 'Dogit ด็อกอิท ชามอาหาร สำหรับสัตว์เลี้ยง แบบทรงสูง.jpg', NULL, 99, 'dog'),
(184, 4, 'Replus รีพลัส โต๊ะอาหาร สำหรับสัตว์เลี้ยง รุ่น RP10', 999, 'Replus รีพลัส โต๊ะอาหาร สำหรับสัตว์เลี้ยง รุ่น RP10.png', NULL, 99, 'dog'),
(185, 4, 'Cc Pet ซีซีเพ็ท ชามอาหาร สำหรับสุนัข แบบมีขาตั้งพับได้', 315, 'Cc Pet ซีซีเพ็ท ชามอาหาร สำหรับสุนัข แบบมีขาตั้งพับได้.jpg', NULL, 98, 'dog'),
(186, 4, 'Cc Pet ซีซีเพ็ท ชามอาหาร สำหรับสุนัข แบบเมลาลีนพร้อมชามสแตนเลส', 405, 'Cc Pet ซีซีเพ็ท ชามอาหาร สำหรับสุนัข แบบเมลาลีนพร้อมชามสแตนเลส.jpg', NULL, 98, 'dog'),
(187, 2, 'Iskhan อีสคาน อาหารเม็ด สำหรับสุนัขโตทุกสายพันธุ์ สูตรซอฟท์ ไก่ 1.2 kg', 570, 'Iskhan อีสคาน อาหารเม็ด สำหรับสุนัขโตทุกสายพันธุ์ สูตรซอฟท์ ไก่ 1.2 kg.png', NULL, 99, 'dog'),
(188, 2, 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่งวง ขนาด 1.8 กิโลกรัม', 950, 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่งวง ขนาด 1.8 กิโลกรัม.png', '2052907281936', 94, 'dog'),
(189, 2, 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่และข้าวกล้อง (1.5 kg)', 750, 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่และข้าวกล้อง (1.5 kg).png', '2052907276345', 92, 'dog'),
(190, 2, 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตทุกสายพันธุ์ สูตรปลาเทราต์และถั่ว (1.8 kg)', 830, 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตทุกสายพันธุ์ สูตรปลาเทราต์และถั่ว (1.8 kg).png', '2052907185050', 94, 'dog'),
(191, 2, 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', 720, 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg).png', '2052907497948', 82, 'dog'),
(192, 2, 'AvoDerm อโวเดิร์ม อาหารกระป๋องสำหรับลูกสุนัข สูตรไก่และข้าวกล้อง ขนาด 13 ออนซ์', 115, 'AvoDerm อโวเดิร์ม อาหารกระป๋องสำหรับลูกสุนัข สูตรไก่และข้าวกล้อง ขนาด 13 ออนซ์.png', '2052907640887', 99, 'dog'),
(193, 2, 'AvoDerm อโวเดิร์ม อาหารกระป๋องสำหรับสุนัข สูตรสตูเนื้อไก่งวง ขนาด 12.5 ออนซ์', 120, 'AvoDerm อโวเดิร์ม อาหารกระป๋องสำหรับสุนัข สูตรสตูเนื้อไก่งวง ขนาด 12.5 ออนซ์.png', '2052907369818', 99, 'dog'),
(194, 2, 'AvoDerm อโวเดิร์ม อาหารกระป๋องสำหรับสุนัข สูตรอาหารปลาแซลมอนและมันฝรั่ง ขนาด 12.5 ออนซ์', 120, 'AvoDerm อโวเดิร์ม อาหารกระป๋องสำหรับสุนัข สูตรอาหารปลาแซลมอนและมันฝรั่ง ขนาด 12.5 ออนซ์.png', '2052907801868', 98, 'dog'),
(195, 2, 'Cesar Multipack ซีซาร์ อาหารเปียกสุนัขแบบถาด รสเนื้อและตับ ขนาด 100 กรัม (6 ถาด)', 278, 'Cesar Multipack ซีซาร์ อาหารเปียกสุนัขแบบถาด รสเนื้อและตับ ขนาด 100 กรัม (6 ถาด).png', NULL, 97, 'dog'),
(196, 2, 'Cesar Multipack ซีซาร์ อาหารเปียกสุนัขแบบถาด รสแกะ ขนาด 100 กรัม (6 ถาด)', 278, 'Cesar Multipack ซีซาร์ อาหารเปียกสุนัขแบบถาด รสแกะ ขนาด 100 กรัม (6 ถาด).png', NULL, 98, 'dog'),
(197, 2, 'AvoDerm อโวเดิร์ม อาหารกระป๋องสำหรับสุนัขโตอายุ 1 ปีขึ้นไป สูตรไก่และข้าวกล้อง ขนาด 13 ออนซ์', 115, 'AvoDerm อโวเดิร์ม อาหารกระป๋องสำหรับสุนัขโตอายุ 1 ปีขึ้นไป สูตรไก่และข้าวกล้อง ขนาด 13 ออนซ์.png', '2052907121522', 93, 'dog'),
(198, 2, 'Cesar Pouch ซีซาร์ อาหารเปียกสุนัขแบบซอง รสเนื้อพร้อมผักในน้ำเกรวี่ ขนาด 70 กรัม', 20, 'Cesar Pouch ซีซาร์ อาหารเปียกสุนัขแบบซอง รสเนื้อพร้อมผักในน้ำเกรวี่ ขนาด 70 กรัม.png', NULL, 99, 'dog'),
(199, 2, 'Cesar Pouch ซีซาร์ อาหารเปียกสุนัขแบบซอง รสเนื้อไก่พร้อมซูริมิและผักในเยลลี่ ขนาด 70 กรัม', 20, 'Cesar Pouch ซีซาร์ อาหารเปียกสุนัขแบบซอง รสเนื้อไก่พร้อมซูริมิและผักในเยลลี่ ขนาด 70 กรัม.png', NULL, 99, 'dog'),
(200, 2, 'Cesar Pouch ซีซาร์ อาหารเปียกสุนัขแบบซอง รสเนื้อไก่พร้อมแครอทและฟักทองในเจลลี่ ขนาด 70 กรัม', 20, 'Cesar Pouch ซีซาร์ อาหารเปียกสุนัขแบบซอง รสเนื้อไก่พร้อมแครอทและฟักทองในเจลลี่ ขนาด 70 กรัม.png', NULL, 99, 'dog'),
(201, 2, 'Cesar Pouch ซีซาร์ อาหารเปียกสุนัขแบบซอง รสเนื้อไก่ในเจลลี่ ขนาด 70 กรัม', 20, 'Cesar Pouch ซีซาร์ อาหารเปียกสุนัขแบบซอง รสเนื้อไก่ในเจลลี่ ขนาด 70 กรัม.png', NULL, 99, 'dog'),
(202, 2, 'Pedigree Can Beef Chuck in Sauce เพดดิกรี อาหารเปียกสุนัขแบบกระป๋อง สูตรเนื้อวัวชิ้นในน้ำซอส ขนาด 400 กรัม', 54, 'Pedigree Can Beef Chuck in Sauce เพดดิกรี อาหารเปียกสุนัขแบบกระป๋อง สูตรเนื้อวัวชิ้นในน้ำซอส ขนาด 400 กรัม.png', NULL, 99, 'dog'),
(203, 2, 'Pedigree Can Beef เพดดิกรี อาหารเปียกสุนัขแบบกระป๋อง สูตรเนื้อวัว ขนาด 1.15 กิโลกรัม', 129, 'Pedigree Can Beef เพดดิกรี อาหารเปียกสุนัขแบบกระป๋อง สูตรเนื้อวัว ขนาด 1.15 กิโลกรัม.png', NULL, 99, 'dog'),
(204, 2, 'Pedigree Can Chicken เพดดิกรี อาหารเปียกสุนัขแบบกระป๋อง สูตรเนื้อไก่ ขนาด 1.15 กิโลกรัม', 129, 'Pedigree Can Chicken เพดดิกรี อาหารเปียกสุนัขแบบกระป๋อง สูตรเนื้อไก่ ขนาด 1.15 กิโลกรัม.png', NULL, 99, 'dog'),
(205, 2, 'Pedigree Can Chicken เพดดิกรี อาหารเปียกสุนัขแบบกระป๋อง สูตรเนื้อไก่ ขนาด 400 กรัม', 54, 'Pedigree Can Chicken เพดดิกรี อาหารเปียกสุนัขแบบกระป๋อง สูตรเนื้อไก่ ขนาด 400 กรัม.png', NULL, 99, 'dog'),
(206, 4, 'Gex เก็กซ์ ชามน้ำติดกรง สำหรับแมว 60 ml', 650, 'Gex เก็กซ์ ชามน้ำติดกรง สำหรับแมว 60 ml.jpg', NULL, 99, 'cat'),
(207, 4, 'Catit แคทอิท ชามอาหาร สำหรับแมว แบบสแตนเลสคู่', 310, 'Catit แคทอิท ชามอาหาร สำหรับแมว แบบสแตนเลสคู่.jpg', NULL, 98, 'cat'),
(208, 4, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ถาดรองชามอาหาร สำหรับแมว รูปปลา', 159, 'Loving Pets เลิฟวิ่ง เพ็ทส์ ถาดรองชามอาหาร สำหรับแมว รูปปลา.jpg', NULL, 99, 'cat'),
(209, 4, 'Catit แคทอิท ชามอาหาร สำหรับสัตว์เลี้ยง สีน้ำเงินเข้ม', 65, 'Catit แคทอิท ชามอาหาร สำหรับสัตว์เลี้ยง สีน้ำเงินเข้ม.jpg', NULL, 98, 'cat'),
(210, 4, 'Furrytail เฟอร์รี่เทล ไส้กรองน้ำพุแมว', 590, 'Furrytail เฟอร์รี่เทล ไส้กรองน้ำพุแมว.jpg', NULL, 99, 'cat'),
(211, 4, 'Iris Ohyama ไอริส โอยามะ ฟิลเตอร์สำหรับ น้ำพุแมว รุ่นPWF-200', 360, 'Iris Ohyama ไอริส โอยามะ ฟิลเตอร์สำหรับ น้ำพุแมว รุ่นPWF-200.jpg', NULL, 99, 'cat'),
(212, 4, 'Iris Ohyama ไอริส โอยามะ น้ำพุแมว รุ่น PWF-200', 530, 'Iris Ohyama ไอริส โอยามะ น้ำพุแมว รุ่น PWF-200.jpg', NULL, 99, 'cat'),
(213, 4, 'Catit แคทอิท ไส้กรองน้ำพุ รุ่นดูออลแอคชั่น แบบใช้กับน้ำพุรุ่นสแตนเลส', 155, 'Catit แคทอิท ไส้กรองน้ำพุ รุ่นดูออลแอคชั่น แบบใช้กับน้ำพุรุ่นสแตนเลส.jpg', NULL, 99, 'cat'),
(214, 4, 'Catit แคทอิท ชุดน้ำพุ รุ่นดอกไม้ 100 fl oz', 990, 'Catit แคทอิท ชุดน้ำพุ รุ่นดอกไม้ 100 fl oz.jpg', NULL, 98, 'cat'),
(215, 4, 'Catit แคทอิท ไส้กรองน้ำพุ รุ่นดอกไม้ 3 แผ่น ขนาดเล็ก', 140, 'Catit แคทอิท ไส้กรองน้ำพุ รุ่นดอกไม้ 3 แผ่น ขนาดเล็ก.jpg', NULL, 99, 'cat'),
(216, 4, 'Gex เก็กซ์ ไส้กรองเซรามิคที่ชามน้ำติดกรง สำหรับแมว', 290, 'Gex เก็กซ์ ไส้กรองเซรามิคที่ชามน้ำติดกรง สำหรับแมว.jpg', NULL, 99, 'cat'),
(217, 4, 'Gex เก็กซ์ ไส้กรองชามน้ำติดกรง สำหรับแมว', 190, 'Gex เก็กซ์ ไส้กรองชามน้ำติดกรง สำหรับแมว.jpg', NULL, 99, 'cat'),
(218, 4, 'Gex เก็กซ์ แผ่นกรองแบบไอออน สำหรับแมว 5 ชิ้น', 330, 'Gex เก็กซ์ แผ่นกรองแบบไอออน สำหรับแมว 5 ชิ้น.jpg', NULL, 99, 'cat'),
(219, 4, 'Gex เก็กซ์ แผ่นกรองน้ำ สำหรับแมว', 140, 'Gex เก็กซ์ แผ่นกรองน้ำ สำหรับแมว.jpg', NULL, 99, 'cat'),
(220, 4, 'Gex เก็กซ์ ชามน้ำพุ สำหรับแมว แบบเซรามิค 1.5 L', 990, 'Gex เก็กซ์ ชามน้ำพุ สำหรับแมว แบบเซรามิค 1.5 L.jpg', NULL, 99, 'cat'),
(221, 4, 'Catit แคทอิท น้ำพุแมว รุ่นมินิ รูปดอกไม้ สีเขียว', 695, 'Catit แคทอิท น้ำพุแมว รุ่นมินิ รูปดอกไม้ สีเขียว.jpg', NULL, 99, 'cat'),
(222, 3, 'BOK BOK Cat Treats Dried Fish บ๊อกบ๊อก มินิไบท์ ขนมแมว รสปลากรอบ ขนาด 25 กรัม', 33, 'BOK BOK Cat Treats Dried Fish บ๊อกบ๊อก มินิไบท์ ขนมแมว รสปลากรอบ ขนาด 25 กรัม.png', NULL, 99, 'cat'),
(223, 3, 'BOK BOK Cat Treats Mini Jerky บ๊อกบ๊อก มินิไบท์ ขนมแมว รสปลานิ่ม ขนาด 25 กรัม', 33, 'BOK BOK Cat Treats Mini Jerky บ๊อกบ๊อก มินิไบท์ ขนมแมว รสปลานิ่ม ขนาด 25 กรัม.png', NULL, 99, 'cat'),
(224, 3, 'BOK BOK Cat Treats Powder บ๊อกบ๊อก มินิไบท์ ขนมแมว รสปลาหยอง ขนาด 25 กรัม', 33, 'BOK BOK Cat Treats Powder บ๊อกบ๊อก มินิไบท์ ขนมแมว รสปลาหยอง ขนาด 25 กรัม.png', NULL, 97, 'cat'),
(225, 3, 'BOK BOK Cat Treats Salmon & Crab Meat Mini Bite บ๊อกบ๊อก มินิไบท์ ขนมแมว รสแซลมอนผสมเนื้อปู ขนาด 25 กรัม', 33, 'BOK BOK Cat Treats Salmon & Crab Meat Mini Bite บ๊อกบ๊อก มินิไบท์ ขนมแมว รสแซลมอนผสมเนื้อปู ขนาด 25 กรัม.png', NULL, 99, 'cat'),
(226, 3, 'Catster Play แคทสเตอร์ เพลย์ ขนมฟรีซดายสำหรับแมว สูตรทูน่า ขนาด 40 กรัม', 168, 'Catster Play แคทสเตอร์ เพลย์ ขนมฟรีซดายสำหรับแมว สูตรทูน่า ขนาด 40 กรัม.png', NULL, 99, 'cat'),
(227, 3, 'Catster Play แคทสเตอร์ เพลย์ ขนมฟรีซดายสำหรับแมว สูตรปลาไข่ ขนาด 40 กรัม', 168, 'Catster Play แคทสเตอร์ เพลย์ ขนมฟรีซดายสำหรับแมว สูตรปลาไข่ ขนาด 40 กรัม.png', NULL, 99, 'cat'),
(228, 3, 'Catster Play แคทสเตอร์ เพลย์ ขนมฟรีซดายสำหรับแมว สูตรเนื้อไก่ ขนาด 40 กรัม', 88, 'Catster Play แคทสเตอร์ เพลย์ ขนมฟรีซดายสำหรับแมว สูตรเนื้อไก่ ขนาด 40 กรัม.png', NULL, 99, 'cat'),
(229, 3, 'Catster Play แคทสเตอร์ เพลย์ ขนมฟรีซดายสำหรับแมว สูตรแซลมอน ขนาด 40 กรัม', 88, 'Catster Play แคทสเตอร์ เพลย์ ขนมฟรีซดายสำหรับแมว สูตรแซลมอน ขนาด 40 กรัม.png', NULL, 99, 'cat'),
(230, 3, 'CIAO Churu Box Set Cream Snack for cats Mixed Tuna Flavors เชาว์ ชูหรุ กระปุกขนมครีมแมวเลีย รวมรสปลาทูน่า ขนาด 14 กรัม (50 แท่ง)', 470, 'CIAO Churu Box Set Cream Snack for cats Mixed Tuna Flavors เชาว์ ชูหรุ กระปุกขนมครีมแมวเลีย รวมรสปลาทูน่า ขนาด 14 กรัม (50 แท่ง).png', NULL, 99, 'cat'),
(231, 3, 'CIAO Churu Box Set Cream Snack for cats Chicken Mix Festive เชาว์ ชูหรุ กระปุกขนมครีมแมวเลีย รวมรสสันในไก่ ขนาด 14 กรัม (50 แท่ง)', 470, 'CIAO Churu Box Set Cream Snack for cats Chicken Mix Festive เชาว์ ชูหรุ กระปุกขนมครีมแมวเลีย รวมรสสันในไก่ ขนาด 14 กรัม (50 แท่ง).png', NULL, 99, 'cat'),
(232, 3, 'CIAO Churu Box Set Cream Snack for cats Seafood Mix Festive เชาว์ ชูหรุ กระปุกขนมครีมแมวเลีย รวมรสซีฟู้ด ขนาด 14 กรัม (50 แท่ง)', 470, 'CIAO Churu Box Set Cream Snack for cats Seafood Mix Festive เชาว์ ชูหรุ กระปุกขนมครีมแมวเลีย รวมรสซีฟู้ด ขนาด 14 กรัม (50 แท่ง).png', NULL, 99, 'cat'),
(233, 2, 'AvoDerm อโวเดิร์ม อาหารสำหรับลูกแมว สูตรไก่และปลาแฮร์ริ่ง ขนาด 1.6 กิโลกรัม', 590, 'AvoDerm อโวเดิร์ม อาหารสำหรับลูกแมว สูตรไก่และปลาแฮร์ริ่ง ขนาด 1.6 กิโลกรัม.png', '2052907927889', 99, 'cat'),
(234, 2, 'AvoDerm อโวเดิร์ม อาหารสำหรับแมวเลี้ยงในบ้าน ขนาด 1.6 กิโลกรัม', 850, 'AvoDerm อโวเดิร์ม อาหารสำหรับแมวเลี้ยงในบ้าน ขนาด 1.6 กิโลกรัม.png', '2052907637030', 99, 'cat'),
(235, 2, 'BlackHawk Grain Free แบล็กฮอว์ก อาหารแมวเกรนฟรีสูตรเนื้อเป็ดและเนื้อปลา ขนาด 1.2 กิโลกรัม', 590, 'BlackHawk Grain Free แบล็กฮอว์ก อาหารแมวเกรนฟรีสูตรเนื้อเป็ดและเนื้อปลา ขนาด 1.2 กิโลกรัม.png', NULL, 99, 'cat'),
(236, 2, 'BlackHawk Grain Free แบล็กฮอว์ก อาหารแมวเกรนฟรีสูตรเนื้อไก่และไก่งวง ขนาด 1.2 กิโลกรัม', 590, 'BlackHawk Grain Free แบล็กฮอว์ก อาหารแมวเกรนฟรีสูตรเนื้อไก่และไก่งวง ขนาด 1.2 กิโลกรัม.png', NULL, 99, 'cat'),
(237, 2, 'BlackHawk Original แบล็กฮอว์ก อาหารลูกแมวสูตรเนื้อไก่และข้าว ขนาด 1.5 กิโลกรัม', 590, 'BlackHawk Original แบล็กฮอว์ก อาหารลูกแมวสูตรเนื้อไก่และข้าว ขนาด 1.5 กิโลกรัม.png', NULL, 98, 'cat'),
(238, 2, 'BlackHawk Original แบล็กฮอว์ก อาหารแมวสูตรเนื้อแกะและข้าว ขนาด 1.5 กิโลกรัม', 590, 'BlackHawk Original แบล็กฮอว์ก อาหารแมวสูตรเนื้อแกะและข้าว ขนาด 1.5 กิโลกรัม.png', NULL, 99, 'cat'),
(239, 2, 'Felipro SeaFood Flavour เฟลิโปร อาหารแมว สูตรควบคุมปริมาณเกลือแร่ รสซีฟู้ด (1 kg)', 115, 'Felipro SeaFood Flavour เฟลิโปร อาหารแมว สูตรควบคุมปริมาณเกลือแร่ รสซีฟู้ด (1 kg).png', NULL, 99, 'cat'),
(240, 2, 'Friskies ฟริสกี้ส์ อาหารแมวสูตรซีฟู้ด (1.1 kg)', 129, 'Friskies ฟริสกี้ส์ อาหารแมวสูตรซีฟู้ด (1.1 kg).png', NULL, 99, 'cat'),
(241, 2, 'คานิว่า อาหารแมวสูตรเนื้อไก่ ปลาทู และข้าว (1.5 kg)', 240, 'คานิว่า อาหารแมวสูตรเนื้อไก่ ปลาทู และข้าว (1.5 kg).png', NULL, 99, 'cat'),
(242, 2, 'คานิว่า อาหารสูตรแมวเลี้ยงในบ้าน สำหรับลูกแมวและแมวโต (1.3 kg)', 240, 'คานิว่า อาหารสูตรแมวเลี้ยงในบ้าน สำหรับลูกแมวและแมวโต (1.3 kg).png', NULL, 99, 'cat'),
(243, 2, 'คานิว่า อาหารแมวสูตรเนื้อแกะ ปลาทูน่าและข้าว สำหรับแมวทุกสายพันธุ์ (1.4 kg)', 240, 'คานิว่า อาหารแมวสูตรเนื้อแกะ ปลาทูน่าและข้าว สำหรับแมวทุกสายพันธุ์ (1.4 kg).png', NULL, 99, 'cat'),
(244, 2, 'คานิว่า อาหารแมวสูตรเนื้อปลาแซลมอน ปลาทู และข้าว สำหรับลูกแมวและแมวโต (1.4 kg)', 240, 'คานิว่า อาหารแมวสูตรเนื้อปลาแซลมอน ปลาทู และข้าว สำหรับลูกแมวและแมวโต (1.4 kg).png', NULL, 99, 'cat');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `icon_img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `product_type`, `icon_img`) VALUES
(2, 'อาหาร', 'icon-Petfood.png'),
(3, 'ทรีตและขนม', 'icon-PetSnack.png'),
(4, 'ชามและอุปกรณ์ให้อาหาร', 'icon-PetBowls.png');

-- --------------------------------------------------------

--
-- Table structure for table `receipt_list`
--

CREATE TABLE `receipt_list` (
  `id` int(11) NOT NULL,
  `id_product` varchar(50) DEFAULT NULL,
  `pd_name` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `sumprice` varchar(50) DEFAULT NULL,
  `sumcount` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `money_input` int(11) DEFAULT NULL,
  `money_change` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipt_list`
--

INSERT INTO `receipt_list` (`id`, `id_product`, `pd_name`, `price`, `count`, `time`, `sumprice`, `sumcount`, `date`, `money_input`, `money_change`) VALUES
(1, '152', 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปหอยทาก 2.8 L,Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปแครอท', '610', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '152', 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปหอยทาก 2.8 L,Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปแครอท', '610', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '188', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่งวง ขนาด 1.8 กิโลกรัม,AvoDerm อโวเดิร์ม อาหารส', '950', '1', NULL, '1702', '1702', NULL, NULL, NULL),
(4, '188', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่งวง ขนาด 1.8 กิโลกรัม,AvoDerm อโวเดิร์ม อาหารส', '950', '1', NULL, '1702', '1702', NULL, NULL, NULL),
(5, '188', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่งวง ขนาด 1.8 กิโลกรัม,AvoDerm อโวเดิร์ม อาหารส', '950', '1', NULL, '1702', '1702', NULL, NULL, NULL),
(6, '188', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่งวง ขนาด 1.8 กิโลกรัม,AvoDerm อโวเดิร์ม อาหารส', '950', '1', NULL, '1702', '1702', NULL, NULL, NULL),
(7, '163', 'Cc Pet ซีซีเพ็ท ชามอาหารและน้ำแบบพกพา สำหรับสุนัข,Cesar Pouch ซีซาร์ อาหารเปียกสุนัขแบบซอง รสเนื้อไก', '195', '1', NULL, '217', '217', NULL, NULL, NULL),
(8, '163', 'Cc Pet ซีซีเพ็ท ชามอาหารและน้ำแบบพกพา สำหรับสุนัข,Cesar Pouch ซีซาร์ อาหารเปียกสุนัขแบบซอง รสเนื้อไก', '195', '1', NULL, '217', '217', NULL, NULL, NULL),
(9, '163,201', 'Cc Pet ซีซีเพ็ท ชามอาหารและน้ำแบบพกพา สำหรับสุนัข,Cesar Pouch ซีซาร์ อาหารเปียกสุนัขแบบซอง รสเนื้อไก', ' 195,20', '1,1', NULL, '217', '217', NULL, NULL, NULL),
(10, '190', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตทุกสายพันธุ์ สูตรปลาเทราต์และถั่ว (1.8 kg)', ' 830', '2', NULL, '1662', '1662', NULL, NULL, NULL),
(11, '181,191', 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง,AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าว', ' 799,720', '1,1', NULL, '1521', '1521', NULL, NULL, NULL),
(12, '160,152,181', 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปแครอท สีีส้ม 330 ml,Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข ร', ' 300,610,799', '1,1,2', '', '2508', '4', '', NULL, NULL),
(13, '189,188', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่และข้าวกล้อง (1.5 kg),AvoDerm อโวเดิร์ม อาหารส', ' 750,950', '1,3', '', '3600', '4', '', NULL, NULL),
(14, '207,214,224', 'Catit แคทอิท ชามอาหาร สำหรับแมว แบบสแตนเลสคู่,Catit แคทอิท ชุดน้ำพุ รุ่นดอกไม้ 100 fl oz,BOK BOK Cat', ' 310,990,33', '1,1,2', '', '1366', '4', '', NULL, NULL),
(15, '188', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่งวง ขนาด 1.8 กิโลกรัม', ' 950', '4', '21:34:50', '3800', '4', '5-9-2023', NULL, NULL),
(16, '188,189,163', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่งวง ขนาด 1.8 กิโลกรัม,AvoDerm อโวเดิร์ม อาหารส', ' 950,750,195', '1,3,4', '', '3980', '8', '', NULL, NULL),
(17, '189,188,194', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่และข้าวกล้อง (1.5 kg),AvoDerm อโวเดิร์ม อาหารส', ' 750,950,120', '1,1,1', '21:38:27', '1820', '3', '5-9-2023', NULL, NULL),
(18, '209,207', 'Catit แคทอิท ชามอาหาร สำหรับสัตว์เลี้ยง สีน้ำเงินเข้ม,Catit แคทอิท ชามอาหาร สำหรับแมว แบบสแตนเลสคู่', ' 65,310', '1,1', '20:51:14', '375', '2', '7-9-2023', NULL, NULL),
(19, '152,160', 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปหอยทาก 2.8 L,Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปแครอท', ' 610,300', '1,1', '14:28:49', '910', '2', '11-9-2023', NULL, NULL),
(20, '163,160', 'Cc Pet ซีซีเพ็ท ชามอาหารและน้ำแบบพกพา สำหรับสุนัข,Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปแครอท สีี', ' 195,300', '1,1', '14:30:30', '495', '2', '11-9-2023', NULL, NULL),
(21, '161,195', 'Cc Pet ซีซีเพ็ท เครื่องให้อาหารและน้ำอัตโนมัติ สำหรับสุนัข สีส้ม,Cesar Multipack ซีซาร์ อาหารเปียกสุ', ' 790,278', '1,1', '14:32:36', '1068', '2', '11-9-2023', NULL, NULL),
(22, '185,186', 'Cc Pet ซีซีเพ็ท ชามอาหาร สำหรับสุนัข แบบมีขาตั้งพับได้,Cc Pet ซีซีเพ็ท ชามอาหาร สำหรับสุนัข แบบเมลาล', ' 315,405', '1,1', '14:33:42', '720', '2', '11-9-2023', NULL, NULL),
(23, '152', 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปหอยทาก 2.8 L', ' 610', '1', '14:41:27', '610', '1', '11-9-2023', NULL, NULL),
(24, '189,181', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่และข้าวกล้อง (1.5 kg),Barketek บาร์คคีเท็ค ชาม', ' 750,799', '1,1', '14:45:37', '1549', '2', '11-9-2023', NULL, NULL),
(25, '190,181', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตทุกสายพันธุ์ สูตรปลาเทราต์และถั่ว (1.8 kg),Barketek บาร์คคีเท็ค ', ' 830,799', '1,1', '14:48:9', '1629', '2', '11-9-2023', NULL, NULL),
(26, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '14:48:52', '720', '1', '11-9-2023', NULL, NULL),
(27, '181', 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง', ' 799', '2', '14:49:29', '1598', '2', '11-9-2023', NULL, NULL),
(28, '181', 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง', ' 799', '1', '14:50:7', '799', '1', '11-9-2023', NULL, NULL),
(29, '181', 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง', ' 799', '1', '14:58:32', '799', '1', '11-9-2023', NULL, NULL),
(30, '181', 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง', ' 799', '1', '14:59:12', '799', '1', '11-9-2023', NULL, NULL),
(31, '190', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตทุกสายพันธุ์ สูตรปลาเทราต์และถั่ว (1.8 kg)', ' 830', '1', '15:0:27', '830', '1', '11-9-2023', NULL, NULL),
(32, '197', 'AvoDerm อโวเดิร์ม อาหารกระป๋องสำหรับสุนัขโตอายุ 1 ปีขึ้นไป สูตรไก่และข้าวกล้อง ขนาด 13 ออนซ์', ' 115', '1', '15:0:52', '115', '1', '11-9-2023', NULL, NULL),
(33, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '15:1:36', '720', '1', '11-9-2023', NULL, NULL),
(34, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '15:2:47', '720', '1', '11-9-2023', NULL, NULL),
(35, '181,190', 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง,AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตทุกสายพันธุ์ สู', ' 799,830', '1,1', '15:3:21', '1629', '2', '11-9-2023', NULL, NULL),
(36, '190,181', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตทุกสายพันธุ์ สูตรปลาเทราต์และถั่ว (1.8 kg),Barketek บาร์คคีเท็ค ', ' 830,799', '1,1', '15:6:5', '1629', '2', '11-9-2023', NULL, NULL),
(37, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '15:9:58', '720', '1', '11-9-2023', NULL, NULL),
(38, '181', 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง', ' 799', '1', '15:16:13', '799', '1', '11-9-2023', NULL, NULL),
(39, '152,214', 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปหอยทาก 2.8 L,Catit แคทอิท ชุดน้ำพุ รุ่นดอกไม้ 100 fl oz', ' 610,990', '1,1', '13:53:31', '1600', '2', '18-9-2023', NULL, NULL),
(40, '190', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตทุกสายพันธุ์ สูตรปลาเทราต์และถั่ว (1.8 kg)', ' 830', '1', '16:2:7', '830', '1', '18-9-2023', 55554, NULL),
(41, '160', 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปแครอท สีีส้ม 330 ml', ' 300', '2', '16:2:29', '600', '2', '18-9-2023', 32263, NULL),
(42, '181', 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง', ' 799', '2', '16:4:44', '1598', '2', '18-9-2023', 123123, NULL),
(43, '160', 'Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปแครอท สีีส้ม 330 ml', ' 300', '1', '16:7:7', '300', '1', '18-9-2023', 1232, NULL),
(44, '181', 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง', ' 799', '1', '16:8:22', '799', '1', '18-9-2023', 2344, NULL),
(45, '181', 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง', ' 799', '1', '16:10:18', '799', '1', '18-9-2023', 123213, NULL),
(46, '179', 'Barketek บาร์คคีเท็ค ชามอาหาร สำหรับสัตว์เลี้ยง รุ่น Mod', ' 980', '1', '16:30:18', '980', '1', '18-9-2023', 12312, NULL),
(47, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '16:36:9', '720', '1', '18-9-2023', 1232, NULL),
(48, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '16:36:9', '720', '1', '18-9-2023', 1232, NULL),
(49, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '16:36:9', '720', '1', '18-9-2023', 1232, NULL),
(50, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '16:36:58', '720', '1', '18-9-2023', 12312, NULL),
(51, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '16:36:58', '720', '1', '18-9-2023', 12312, NULL),
(52, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '17:19:40', '720', '1', '18-9-2023', 2313, NULL),
(53, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '17:37:35', '720', '1', '18-9-2023', 2333, NULL),
(54, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '17:37:35', '720', '1', '18-9-2023', 2333, NULL),
(55, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '17:57:19', '720', '1', '18-9-2023', 2232, NULL),
(56, '189,181', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโตพันธุ์เล็ก สูตรไก่และข้าวกล้อง (1.5 kg),Barketek บาร์คคีเท็ค ชาม', ' 750,799', '1,1', '18:19:53', '1549', '2', '18-9-2023', 45752, NULL),
(57, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '18:22:33', '720', '1', '18-9-2023', 1232, 0),
(58, '191', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg)', ' 720', '1', '18:23:56', '720', '1', '18-9-2023', 1233, 513),
(59, '181,160,196,195,152,163', 'Barketek บาร์คคีเท็ค ชามน้ำเย็นสำหรับสัตว์เลี้ยง,Cc Pet ซีซีเพ็ท ที่ให้น้ำ สำหรับสุนัข รูปแครอท สีีส', ' 799,300,278,278,610,195', '1,1,1,1,1,2', '23:46:33', '2655', '7', '31-3-2024', 3000, 345),
(60, '191,179,181,197,224,237', 'AvoDerm อโวเดิร์ม อาหารสำหรับสุนัขโต สูตรไก่และข้าวกล้อง (2 kg),Barketek บาร์คคีเท็ค ชามอาหาร สำหรับ', ' 720,980,799,115,33,590', '1,1,1,5,1,1', '0:4:8', '3697', '10', '9-5-2024', 4000, 303),
(61, '224', 'BOK BOK Cat Treats Powder บ๊อกบ๊อก มินิไบท์ ขนมแมว รสปลาหยอง ขนาด 25 กรัม', ' 33', '1', '19:47:30', '33', '1', '21-5-2024', 40, 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) DEFAULT 'employee',
  `creact_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `birthday` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `creact_at`, `updated_at`, `fname`, `lname`, `email`, `address`, `phone`, `salary`, `birthday`, `start_date`, `end_date`) VALUES
(2, 'test01@hotmail.com', '$2y$10$unyMBeilueqzfhivFeTc9uPm.FMBsnIdWvNf2Alm1FT.oqtYwoTT.', 'employee', '2024-05-24 14:30:34', '2024-05-24 14:30:34', 'test01', 'test01', 'test01@hotmail.com', 'test01', '0813461481', 888.00, '1997-06-24', '2024-05-02', '0000-00-00'),
(3, 'test02@hotmail.com', '$2y$10$YOxOuaUHENAet7rol433qeYmJ3fav4s.WnqISi7XkekhsKyUdXaKe', 'employee', '2024-05-24 14:31:29', '2024-05-24 14:31:29', 'test02', 'test02', 'test02@hotmail.com', 'test01', '0804316627', 887.00, '2000-06-06', '2024-05-03', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt_list`
--
ALTER TABLE `receipt_list`
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
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `receipt_list`
--
ALTER TABLE `receipt_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_type`
--
ALTER TABLE `product_type`
  ADD CONSTRAINT `product_type_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
