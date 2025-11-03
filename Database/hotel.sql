-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2025 at 01:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(2, 'admin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(107, 108, 'Phòng Bình dân', 80000, 80000, NULL, 'Quách Phong Thạnh', '0123458489', 'Bình Thạnh, Hồ Chí Minh'),
(108, 109, 'Phòng Bình dân', 80000, 80000, NULL, 'Nguyễn Lê Anh Chiến', '0122521888', 'Hồ Chí Minh'),
(109, 110, 'Phòng Vip đôi', 150000, 300000, NULL, 'Huỳnh Ân', '0774923045', 'Hồ Chí Minh'),
(110, 111, 'Phòng đôi bình dân', 120000, 120000, NULL, 'Huỳnh Ân', '0774923045', 'Hồ Chí Minh'),
(111, 112, 'Phòng Vip đơn', 100000, 100000, NULL, 'Nguyễn Lê Anh Chiến', '0122521888', 'Hồ Chí Minh'),
(112, 113, 'Phòng Bình dân', 80000, 80000, NULL, 'Huỳnh Ân', '0774923045', 'Hồ Chí Minh'),
(113, 114, 'Phòng đôi bình dân', 120000, 120000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội'),
(114, 115, 'Phòng Vip đôi', 150000, 150000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội'),
(115, 116, 'Phòng Vip đôi', 150000, 900000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội'),
(116, 117, 'Phòng Vip đôi', 150000, 1050000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội'),
(117, 118, 'Phòng đôi bình dân', 120000, 120000, NULL, 'Huỳnh Ân', '0774923045', 'Hồ Chí Minh'),
(118, 119, 'Phòng đôi bình dân', 120000, 960000, NULL, 'Huỳnh Ân', '0774923045', 'Hồ Chí Minh'),
(119, 121, 'Phòng đôi bình dân', 120000, 1080000, NULL, 'Huỳnh Ân', '0774923045', 'Hồ Chí Minh'),
(120, 122, 'Phòng Bình dân', 80000, 80000, NULL, 'Huỳnh Ân', '0774923045', 'Hồ Chí Minh'),
(121, 123, 'Phòng Bình dân', 80000, 80000, NULL, 'Huỳnh Ân', '0774923045', 'Hồ Chí Minh'),
(122, 124, 'Phòng Vip đôi', 150000, 150000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội'),
(123, 125, 'Phòng Bình dân', 80000, 80000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội'),
(124, 126, 'Phòng Vip đôi', 150000, 150000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội'),
(125, 127, 'Phòng Bình dân', 80000, 80000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội'),
(126, 128, 'Phòng Bình dân', 80000, 80000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội'),
(127, 129, 'Phòng đôi bình dân', 120000, 120000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội'),
(128, 130, 'Phòng Bình dân', 80000, 80000, NULL, 'Lại Thị Phương Linh', '0329926586', 'Hà Nội'),
(129, 131, 'Phòng Vip đôi', 150000, 150000, NULL, 'Lại Thị Phương Linh', '0329926586', 'Hà Nội'),
(130, 132, 'Phòng Bình dân', 80000, 80000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội'),
(131, 133, 'Phòng Bình dân', 80000, 80000, NULL, 'Lê Thái Nam', '0839509666', 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'Đã Đặt',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'Đã Đặt',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(108, 12, 9, '2024-03-04', '2024-03-05', 1, NULL, 'Đã Thanh Toán', 'ORD_126963481', NULL, 80000, 'TXN_SUCCESS', NULL, 1, '2024-03-04 14:08:59'),
(109, 13, 9, '2024-03-06', '2024-03-07', 1, NULL, 'Đã Thanh Toán', 'ORD_135894059', NULL, 80000, 'TXN_SUCCESS', NULL, 1, '2024-03-06 20:45:00'),
(110, 11, 12, '2024-03-06', '2024-03-08', 1, NULL, 'Đã Thanh Toán', 'ORD_111248471', NULL, 300000, 'TXN_SUCCESS', NULL, 1, '2024-03-06 21:40:35'),
(111, 11, 11, '2024-03-07', '2024-03-08', 0, 0, 'Đã Huỷ', 'ORD_113358736', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-03-06 22:46:03'),
(112, 13, 10, '2024-03-07', '2024-03-08', 1, NULL, 'Đã Thanh Toán', 'ORD_134795422', NULL, 100000, 'TXN_SUCCESS', NULL, NULL, '2024-03-07 09:01:06'),
(113, 11, 9, '2024-03-07', '2024-03-08', 0, NULL, 'Đã Xác Nhận Đặt Phòng', 'ORD_112870773', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-03-07 09:02:42'),
(114, 14, 11, '2025-05-16', '2025-05-17', 0, 0, 'Đã Huỷ', 'ORD_144155208', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-15 21:11:33'),
(115, 14, 12, '2025-05-17', '2025-05-18', 0, 0, 'Đã Huỷ', 'ORD_142490434', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-16 00:51:28'),
(116, 14, 12, '2025-05-17', '2025-05-23', 0, 0, 'Đã Huỷ', 'ORD_143967375', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-16 01:00:45'),
(117, 14, 12, '2025-05-17', '2025-05-24', 0, 0, 'Đã Huỷ', 'ORD_148799074', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-16 01:07:02'),
(118, 11, 11, '2025-05-17', '2025-05-18', 0, 0, 'Đã Huỷ', 'ORD_114317334', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-16 01:14:40'),
(119, 11, 11, '2025-05-30', '2025-06-07', 0, 0, 'Đã Huỷ', 'ORD_119602920', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-16 01:24:13'),
(120, 11, 11, '2025-05-30', '2025-06-07', 0, NULL, 'Đã Đặt', 'ORD_111486582', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-16 01:29:21'),
(121, 11, 11, '2025-05-30', '2025-06-08', 0, 0, 'Đã Huỷ', 'ORD_111786333', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-16 01:29:39'),
(122, 11, 9, '2025-05-17', '2025-05-18', 0, NULL, 'Đã Đặt', 'ORD_112917468', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-16 01:59:15'),
(123, 11, 9, '2025-05-18', '2025-05-19', 0, 0, 'Đã Huỷ', 'ORD_114129149', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-16 02:03:41'),
(124, 14, 12, '2025-05-17', '2025-05-18', 1, NULL, 'Đã Thanh Toán', 'ORD_146873690', NULL, 150000, 'TXN_SUCCESS', NULL, 1, '2025-05-16 02:37:08'),
(125, 14, 9, '2025-05-25', '2025-05-26', 0, 0, 'Đã Huỷ', 'ORD_145732226', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-16 02:37:31'),
(126, 14, 12, '2025-05-18', '2025-05-19', 0, NULL, 'Đã Thanh Toán', 'ORD_148504271', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-17 15:03:57'),
(127, 14, 9, '2025-05-18', '2025-05-19', 0, NULL, 'Đã Đặt', 'ORD_14333301', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-17 23:32:05'),
(128, 14, 9, '2025-05-19', '2025-05-20', 0, 0, 'Đã Huỷ', 'ORD_143433310', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-17 23:33:53'),
(129, 14, 11, '2025-05-18', '2025-05-19', 0, 0, 'Đã Huỷ', 'ORD_142901973', NULL, 0, 'Đã Đặt', NULL, 0, '2025-05-17 23:52:40'),
(130, 15, 9, '2025-05-18', '2025-05-19', 0, 0, 'Đã Huỷ', 'ORD_155635736', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-17 23:59:58'),
(131, 15, 12, '2025-05-19', '2025-05-20', 0, NULL, 'Đã Thanh Toán', 'ORD_156221730', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-05-18 00:42:31'),
(132, 14, 9, '2025-05-27', '2025-05-28', 1, NULL, 'Đã Thanh Toán', 'ORD_147103348', NULL, 0, 'Đã Đặt', NULL, 0, '2025-05-19 00:58:08'),
(133, 14, 9, '2025-05-20', '2025-05-21', 1, NULL, 'Đã Thanh Toán', 'ORD_146695692', NULL, 0, 'Đã Đặt', NULL, 0, '2025-05-19 09:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(14, 'IMG_66796.jpg'),
(15, 'IMG_83749.jpg'),
(16, 'IMG_39330.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, '2.P Phủ Doãn, Hàng Bông, Hoàn Kiếm, Hà Nội', 'https://www.google.com/maps/place/Hanoi, Vietnam/@21.0228147,105.795678,13z/data=!3m1!4b1!4m6!3m5!1s', 839509666, 329926586, 'thainam2092004@gmail.com', 'https://www.facebook.com/', 'https://www.instagram.com/', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.072869995918!2d105.84813469999999!3d21.0297701!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abc0ac58e70b:0xf3b522da2dbcc2dc!2sLuxury Hotel!5e0!3m2!1sen!2s!4v1747410865998!5m2!1sen!2s');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_43553.svg', 'Wifi', 'Wifi trong khách sạn cho phép khách hàng kết nối internet không dây tốc độ cao, có thể truy cập vào các trang web yêu thích của họ, xem phim, nghe nhạc, tải xuống các tài liệu, và liên lạc với người thân và bạn bè. '),
(14, 'IMG_49949.svg', 'Điều Hoà', ' Khách hàng có thể dễ dàng điều chỉnh nhiệt độ và các tính năng khác trên điều hòa để đáp ứng các nhu cầu của họ và tạo ra một không gian nghỉ ngơi lý tưởng.'),
(17, 'IMG_47816.svg', 'Spa', 'Tại spa, khách hàng có thể trải nghiệm các liệu pháp chăm sóc da, tắm thủy lực, massage và nhiều dịch vụ khác.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(18, 'Phòng Ngủ'),
(19, 'Ban Công'),
(20, 'Phòng Bếp'),
(21, 'Ghế sofa');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(18, 124, 12, 14, 5, 'tốt', 0, '2025-05-16 02:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(9, 'Phòng Bình dân', 20, 80000, 2, 2, 1, 'Phòng bình dân, là nơi nghỉ chân lý tưởng cho các cặp đôi, các bạn cần chỗ nghỉ chân qua đêm với giá tiền vừa túi.', 1, 0),
(10, 'Phòng Vip đơn', 30, 100000, 2, 2, 1, 'Phòng Vip đơn, có đầy đủ các tiện ích của khách sạn cho các cặp đôi.', 1, 0),
(11, 'Phòng đôi bình dân', 40, 120000, 3, 4, 3, 'Phòng đôi bình dân phù hợp cho các gia đình.', 1, 0),
(12, 'Phòng Vip đôi', 40, 150000, 3, 4, 3, 'Phòng Vip đôi giành cho các gia đình, được sử dụng tất cả các tiện nghi tại khách sạn.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(82, 10, 13),
(83, 10, 14),
(84, 10, 17),
(85, 11, 13),
(86, 11, 14),
(87, 12, 13),
(88, 12, 14),
(89, 12, 17),
(90, 9, 13),
(91, 9, 14);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(61, 10, 18),
(62, 10, 19),
(63, 10, 20),
(64, 10, 21),
(65, 11, 18),
(66, 11, 19),
(67, 11, 20),
(68, 12, 18),
(69, 12, 19),
(70, 12, 20),
(71, 12, 21),
(72, 9, 18),
(73, 9, 20);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(36, 9, 'IMG_56799.png', 1),
(37, 10, 'IMG_70362.jpg', 1),
(38, 10, 'IMG_17386.jpg', 0),
(39, 11, 'IMG_58587.jpg', 1),
(40, 12, 'IMG_22690.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'LUXURY HOTEL', 'Chào mừng bạn đến với Luxury Hotel, nơi mang đến cho bạn trải nghiệm đích thực về văn hóa và phong cách Nhật Bản. Với kiến trúc truyền thống, nội thất tinh tế và dịch vụ chuyên nghiệp, chúng tôi cam kết mang đến cho bạn một kỳ nghỉ đáng nhớ.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(1, 'Linh', ''),
(14, 'Nam', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(11, 'Huỳnh Ân', 'huynhan1101@gmail.com', 'Hồ Chí Minh', '0774923045', 100000, '2003-01-01', 'IMG_84562.jpg', '$2y$10$J6RylPWfvolbq8MV70Qt1..isSf.29cqstTCKt3u1LU22Mhb9y3.K', 1, NULL, NULL, 1, '2024-03-04 13:17:43'),
(12, 'Quách Phong Thạnh', 'phongthanh1902@gmail.com', 'Bình Thạnh, Hồ Chí Minh', '0123458489', 10000000, '2003-02-19', 'IMG_54662.jpg', '$2y$10$NdRnpnKmI1Yf2yd0NYz/juu42mDkOT2787e7LxXLYKCSlWxncfT8u', 1, NULL, NULL, 1, '2024-03-04 14:03:29'),
(13, 'Nguyễn Lê Anh Chiến', 'chiennguyen@gmail.com', 'Hồ Chí Minh', '0122521888', 100000, '2005-01-13', 'IMG_92526.jpg', '$2y$10$wYzLWRUV38XoNsvV4T.Zn.S6N1N1kudYcSmS5jq/5eSvpimPo1f.q', 1, NULL, NULL, 1, '2024-03-06 20:44:32'),
(14, 'Lê Thái Nam', 'thainam2092004@gmail.com', 'Hà Nội', '0839509666', 29, '2004-09-20', 'upd_failed', '$2y$10$cMzCFgpFu4wKXt2ujsn5ruQMQgary4ZcTDYA5h8Q9EyOIkQC/l0HK', 1, NULL, NULL, 1, '2025-05-15 21:08:04'),
(15, 'Lại Thị Phương Linh', 'plinh0901@gmail.com', 'Hà Nội', '0329926586', 29, '2004-01-09', 'upd_failed', '$2y$10$dQZMWE9y2Tp4qOQY99pN0.mdNmrPZF3.zzRvHJEE7QwiVMhNbiPWe', 1, NULL, NULL, 1, '2025-05-17 23:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
