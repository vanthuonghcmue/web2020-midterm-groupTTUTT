-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 06:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giuaki`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `account` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `status` tinytext DEFAULT '1',
  `level` tinytext DEFAULT '1',
  `avatar` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updata_up` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `address`, `email`, `account`, `password`, `phone`, `status`, `level`, `avatar`, `created_at`, `updata_up`) VALUES
(3, '1111', '111', 'vanthuonghcmue@gmail.com', '1111', '11111', '1111', '1', '1', 'viewFlipper4.jpg', '2020-06-04 21:58:18', '2020-07-03 06:59:01'),
(5, 'dsdsa', 'ádsadsadsa', 'vanthuonghcmue@gmail.com', 'fdfsdf', 'sfdsfsdfds', '2234324324', '1', '1', 'viewFlipper3.jpg', '2020-07-03 06:13:24', '2020-07-03 06:59:26'),
(9, 'fksdjfdjkjfk', 'ldsdsjkds', 'dhsd@hdhsjdhsd', 'kasdsadhdh', '', '29873823872', '1', '1', 'viewFlipper5.jpg', '2020-07-03 09:59:12', '2020-07-03 09:59:12'),
(10, 'ferer', 'ekrjejre', 'j4k3jkjk32j2@gmail', '3j2j32j3', '', '5498378384', '1', '1', 'unnamed.png', '2020-07-03 10:01:27', '2020-07-03 10:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `home` tinyint(100) DEFAULT 0,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `home`, `status`, `created_at`, `updated`) VALUES
(70, 'Ghế', 0, 0, '2020-07-04 04:27:51', '2020-07-04 04:27:51'),
(71, 'Bàn', 0, 0, '2020-07-04 04:27:56', '2020-07-04 04:27:56'),
(72, 'Tủ', 0, 0, '2020-07-04 04:28:02', '2020-07-04 04:28:02'),
(73, 'Kệ', 0, 0, '2020-07-04 04:28:08', '2020-07-04 04:28:08'),
(74, 'giá Treo', 0, 0, '2020-07-04 04:28:21', '2020-07-04 04:28:21'),
(75, 'tủ rượu', 0, 0, '2020-07-04 04:28:33', '2020-07-04 04:28:33'),
(76, 'bàn trang điểm', 0, 0, '2020-07-04 04:28:50', '2020-07-04 04:28:50'),
(77, 'bàn ăn', 0, 0, '2020-07-04 04:28:57', '2020-07-04 04:28:57'),
(78, 'Giường', 0, 0, '2020-07-04 04:29:07', '2020-07-04 04:29:07'),
(79, 'tủ Quần áo', 0, 0, '2020-07-04 04:29:21', '2020-07-04 04:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethd`
--

CREATE TABLE `chitiethd` (
  `id` int(11) NOT NULL,
  `mahd` int(11) NOT NULL,
  `mahh` int(100) NOT NULL,
  `soluong` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `mahk` int(100) NOT NULL,
  `ngaylap` timestamp NOT NULL DEFAULT current_timestamp(),
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `Account` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `token` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updata_up` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `name`, `email`, `address`, `phone`, `Account`, `password`, `avatar`, `status`, `token`, `created_at`, `updata_up`) VALUES
(8, 'dsadsd', 'vanthuonghcmue@gmail.com', 'dsadsadsad', '4324343', 'kfdfhdjf', 'ưewewqe', '106197837_330592357943895_355004339076298238_n.jpg', 1, '1', '2020-07-04 04:01:34', '2020-07-04 04:01:34'),
(9, 'nguyễn Văn A', 'thuongpro2013@gmail.com', '345 hải diềnd', '86757545464', 'fdfsdf', '34343432', 'viewFlipper5.jpg', 1, '1', '2020-07-04 04:35:54', '2020-07-04 04:35:54'),
(10, 'fwwewewe', 'vanthuonghcmue@gmail.com', 'đâsd', '6565654654654', '4342343243', '4343432432', 'viewFlipper5.jpg', 1, '1', '2020-07-04 04:36:37', '2020-07-04 04:36:37'),
(11, 'trần trung quân', 'thuongpro2013@gmail.com', 'ưewewqeqw', '8987987987', 'qưewqeqw', 'e32432432', 'viewFlipper5.jpg', 1, '1', '2020-07-04 04:37:02', '2020-07-04 04:37:02'),
(12, 'dssssss11111111111111111111111111', 'vanthuonghcmue@gmail.com', '3dfgfg@dsadad', '234324324', '34324', '432432432', 'viewFlipper3.jpg', 1, '1', '2020-07-04 04:37:21', '2020-07-04 04:37:21'),
(13, '32432432', 'vanthuonghcmue@gmail.com', '3dfgfg@dsadad', '324324', 'hjw87d', '34324324324', 'viewFlipper4.jpg', 1, '1', '2020-07-04 04:37:37', '2020-07-04 04:37:37'),
(14, '32432432', 'vanthuonghcmue@gmail.com', '32432432', '32432423432', '23432423', '3243243', 'viewFlipper3.jpg', 1, '1', '2020-07-04 04:38:00', '2020-07-04 04:38:00'),
(15, 'hoang', 'thuongpro2013@gmail.com', 'dsadsa', '43454543', '1111', '4354', 'viewFlipper1.jpg', 1, '1', '2020-07-04 04:38:24', '2020-07-04 04:38:24'),
(16, 'dssssss11111111111111111111111111', 'Bupbebapysaochoi@yahoo.com', '5435435', '345325235', '34343243', '4324324324', 'viewFlipper3.jpg', 1, '1', '2020-07-04 04:38:52', '2020-07-04 04:38:52'),
(17, 'fgfgfgf', 'vanthuonghcmue@gmail.com', '545435', '43534534', '32432432', '32423432', '106197837_330592357943895_355004339076298238_n.jpg', 1, '1', '2020-07-04 04:39:08', '2020-07-04 04:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `soluong` int(11) NOT NULL DEFAULT 1,
  `gia` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `avatar` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updata_up` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `soluong`, `gia`, `sale`, `avatar`, `category`, `content`, `created_at`, `updata_up`) VALUES
(16, 'bàn dài veeeeeeeeeeeeeeee', NULL, 3213213, 21321312, 127, 'viewFlipper4.jpg', '72', '232321', '2020-07-04 04:39:40', '2020-07-04 04:39:40'),
(17, '312321321321', NULL, 321321, 12321312, 127, 'viewFlipper4.jpg', '75', '213213', '2020-07-04 04:39:57', '2020-07-04 04:39:57'),
(18, '32321', NULL, 12321, 21312312, 127, 'viewFlipper5.jpg', '77', '232321', '2020-07-04 04:40:14', '2020-07-04 04:40:14'),
(19, '2321321321', NULL, 2147483647, 213123213, 127, 'viewFlipper5.jpg', '76', '3213213', '2020-07-04 04:40:30', '2020-07-04 04:40:30'),
(20, 'bàn dài veeeeeeeeeeeeeeee', NULL, 21312, 2132132, 127, 'viewFlipper2.jpg', '70', '32312321', '2020-07-04 04:40:45', '2020-07-04 04:40:45'),
(21, '321323', NULL, 21321321, 231123213, 127, 'viewFlipper1.jpg', '75', '32132132132', '2020-07-04 04:41:00', '2020-07-04 04:41:00'),
(22, '23213213', NULL, 213213, 423432, 127, 'viewFlipper2.jpg', '76', '32432432', '2020-07-04 04:41:15', '2020-07-04 04:41:15'),
(23, 'bàn dài veeeeeeeeeeeeeeee', NULL, 324324, 324324, 127, 'viewFlipper3.jpg', '74', '3432432', '2020-07-04 04:41:27', '2020-07-04 04:41:27'),
(24, 'bàn dài v', NULL, 2332, 232323, 127, 'viewFlipper2.jpg', '77', '434334', '2020-07-04 04:41:43', '2020-07-04 04:41:43'),
(25, '324324', NULL, 32432, 23232, 23, 'viewFlipper1.jpg', '70', '32434', '2020-07-04 04:41:57', '2020-07-04 04:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`, `category`) VALUES
(2, '111111', 57),
(3, '1111', 57),
(4, 'tsssssssssssss', 61),
(5, 'tssssss', 64),
(6, 'tssssss', 57);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `chitiethd`
--
ALTER TABLE `chitiethd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
