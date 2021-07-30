-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 28, 2021 lúc 01:59 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `clothes`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`, `created_at`) VALUES
(98, 'Thời trang nữ', 0, '2020-07-19 17:14:48'),
(99, 'Thời trang nam', 0, '2020-07-19 17:14:45'),
(101, 'Quần jeans', 98, '2020-07-25 09:57:35'),
(106, 'Váy', 98, '2021-07-28 11:05:03'),
(107, 'Đầm', 98, '2021-07-28 11:05:10'),
(110, 'Áo sơ mi nữ', 98, '2021-07-28 11:05:53'),
(111, 'Áo khoác', 98, '2021-07-28 11:06:38'),
(112, 'Đồ công sở', 98, '2021-07-28 11:06:47'),
(113, 'Quần legging ', 98, '2021-07-28 11:08:06'),
(114, 'Đồ ngủ nữ', 98, '2021-07-28 11:08:34'),
(115, 'Áo sơ mi', 99, '2021-07-28 11:08:55'),
(116, 'Áo phông', 99, '2021-07-28 11:09:03'),
(117, 'Áo gym', 99, '2021-07-28 11:09:17'),
(118, 'Quần đùi', 99, '2021-07-28 11:09:25'),
(120, 'Quần âu', 99, '2021-07-28 11:09:44'),
(121, 'Áo khoác nam', 99, '2021-07-28 11:09:59'),
(122, 'Quần bò ', 99, '2021-07-28 11:10:10'),
(123, 'Phụ kiện', 98, '2021-07-28 11:10:19'),
(124, 'Phụ kiện nam', 99, '2021-07-28 11:10:29'),
(125, 'Đồ thể thao', 99, '2021-07-28 11:10:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

CREATE TABLE `category_product` (
  `f_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category_product`
--

INSERT INTO `category_product` (`f_id`, `category_id`, `product_id`) VALUES
(13, 98, 27),
(14, 99, 27),
(15, 101, 28),
(16, 98, 28),
(24, 125, 29),
(25, 125, 30),
(26, 124, 31),
(27, 124, 33),
(28, 124, 32),
(30, 123, 34),
(31, 123, 35),
(32, 123, 36),
(33, 122, 37),
(34, 122, 38),
(35, 121, 39),
(36, 121, 40),
(37, 120, 41),
(38, 120, 42),
(40, 118, 43),
(41, 118, 44),
(42, 117, 45),
(43, 117, 46),
(44, 116, 47),
(45, 116, 48),
(46, 115, 49),
(47, 115, 50),
(48, 114, 51),
(49, 114, 52),
(50, 113, 53),
(51, 113, 54),
(52, 112, 55),
(53, 112, 56),
(54, 111, 57),
(55, 111, 58),
(56, 110, 59),
(57, 110, 60),
(58, 107, 61),
(59, 107, 62),
(60, 106, 63),
(61, 106, 64),
(62, 101, 65),
(63, 101, 66);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imports`
--

CREATE TABLE `imports` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `price` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `imports`
--

INSERT INTO `imports` (`id`, `product_id`, `quantity`, `price`, `created_at`) VALUES
(17, 28, 600, 450000, '2020-07-25 09:58:18'),
(18, 66, 99, 1390000, '2021-07-28 11:48:19'),
(19, 65, 999, 1000000, '2021-07-28 11:48:30'),
(20, 64, 999, 799000, '2021-07-28 11:48:42'),
(21, 63, 1000, 799000, '2021-07-28 11:48:57'),
(22, 62, 50, 300000, '2021-07-28 11:49:11'),
(23, 63, 10, 200000, '2021-07-28 11:49:25'),
(24, 66, 50, 500000, '2021-07-28 11:49:43'),
(25, 60, 50, 799000, '2021-07-28 11:49:52'),
(26, 59, 10, 899000, '2021-07-28 11:50:00'),
(27, 59, 99, 200000, '2021-07-28 11:50:14'),
(28, 58, 99, 400000, '2021-07-28 11:50:23'),
(29, 58, 2, 499000, '2021-07-28 11:50:37'),
(30, 56, 10, 799000, '2021-07-28 11:50:48'),
(31, 55, 99, 500000, '2021-07-28 11:51:06'),
(32, 54, 7, 258000, '2021-07-28 11:51:16'),
(33, 55, 39, 145000, '2021-07-28 11:51:24'),
(34, 54, 10, 79000, '2021-07-28 11:51:34'),
(35, 52, 99, 200000, '2021-07-28 11:51:47'),
(36, 53, 1000, 15000, '2021-07-28 11:51:59'),
(37, 50, 3, 178000, '2021-07-28 11:52:11'),
(38, 49, 10, 79000, '2021-07-28 11:52:38'),
(39, 29, 1055, 799000, '2021-07-28 11:52:57'),
(40, 30, 30, 799000, '2021-07-28 11:53:05'),
(41, 31, 99, 50000, '2021-07-28 11:53:19'),
(42, 32, 100, 200000, '2021-07-28 11:53:34'),
(43, 33, 50, 180000, '2021-07-28 11:53:46'),
(44, 34, 50, 100000, '2021-07-28 11:54:01'),
(45, 35, 50, 799000, '2021-07-28 11:54:11'),
(46, 36, 999, 799000, '2021-07-28 11:54:23'),
(47, 37, 999, 1000000, '2021-07-28 11:54:36'),
(48, 37, 100, 200000, '2021-07-28 11:54:46'),
(49, 38, 10, 799000, '2021-07-28 11:54:55'),
(50, 39, 99, 150000, '2021-07-28 11:55:05'),
(51, 40, 10, 200000, '2021-07-28 11:55:13'),
(52, 41, 99, 200000, '2021-07-28 11:55:24'),
(53, 42, 99, 399000, '2021-07-28 11:55:35'),
(54, 43, 10, 260000, '2021-07-28 11:55:48'),
(55, 43, 10, 799000, '2021-07-28 11:56:00'),
(56, 44, 10, 200000, '2021-07-28 11:56:10'),
(57, 45, 10, 200000, '2021-07-28 11:56:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total`, `created_at`) VALUES
(41, 10, 0, 600000, '2021-07-28 10:42:29'),
(42, 10, 0, 1390000, '2021-07-28 11:56:49'),
(43, 10, 0, 2590000, '2021-07-28 11:57:11'),
(44, 10, 0, 3750000, '2021-07-28 11:57:20'),
(45, 10, 0, 1750000, '2021-07-28 11:57:42'),
(46, 10, 0, 1390000, '2021-07-28 11:58:01'),
(47, 10, 0, 1575000, '2021-07-28 11:58:18'),
(48, 10, 0, 816050, '2021-07-28 11:58:35'),
(49, 10, 0, 629100, '2021-07-28 11:58:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `order_id`, `number`, `product_id`, `size`, `created_at`) VALUES
(24, 41, 1, 28, '', '2021-07-28 10:42:29'),
(25, 42, 1, 33, 'M', '2021-07-28 11:56:49'),
(26, 43, 1, 32, 'S', '2021-07-28 11:57:11'),
(27, 44, 1, 34, '', '2021-07-28 11:57:21'),
(28, 45, 1, 40, '', '2021-07-28 11:57:42'),
(29, 46, 1, 50, '', '2021-07-28 11:58:01'),
(30, 47, 1, 56, '', '2021-07-28 11:58:18'),
(31, 48, 1, 62, '', '2021-07-28 11:58:35'),
(32, 49, 1, 63, '', '2021-07-28 11:58:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `price` float DEFAULT 0,
  `sale` float DEFAULT 0,
  `quantity` int(11) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `content`, `price`, `sale`, `quantity`, `thumbnail`, `images`, `created_at`) VALUES
(27, 'Nike Swoosh Icon Clash', '<p>Nike Swoosh Icon Clash</p>\r\n', '<p>Nike Swoosh Icon Clash</p>\r\n', 500000, 10, 0, '15956710293.jpg', '[\"15956710293.jpg\",\"1.jpg\",\"2.jpg\",\"3.jpg\",\"4.jpg\",\"5.jpg\"]', '2020-07-25 09:57:09'),
(28, 'Nike Swoosh Icon Clash 2', '<p>Nike Swoosh Icon Clash</p>\r\n', '<p>Nike Swoosh Icon Clash</p>\r\n', 600000, 0, 599, '1595671084mademe-bra-t514cK (1).jpg', '[\"1595671084mademe-bra-t514cK (1).jpg\",\"mademe-bra-t514cK (1).jpg\",\"mademe-bra-t514cK (2).jpg\",\"mademe-bra-t514cK.jpg\"]', '2020-07-25 09:58:04'),
(29, 'Áo thun nam thể thao', '<p>&Aacute;o thun nam thể thao</p>\r\n', '<p>&Aacute;o thun nam thể thao</p>\r\n', 900000, 0, 1055, '1627470861sp1.jpg', '[\"1627470861sp1.jpg\",\"\"]', '2021-07-28 11:14:21'),
(30, 'Bộ nam thể thao', '<p>Bộ nam thể thao</p>\r\n', '<p><strong>Bộ nam thể thao</strong></p>\r\n', 1000000, 0, 30, '1627470911sp2.jpg', '[\"1627470911sp2.jpg\",\"\"]', '2021-07-28 11:15:11'),
(31, 'Gọng kính nam', '<p>Gọng k&iacute;nh nam</p>\r\n', '<p>Gọng k&iacute;nh nam</p>\r\n', 20000000, 0, 99, '1627470969sp3.jpg', '[\"1627470969sp3.jpg\",\"\"]', '2021-07-28 11:16:09'),
(32, 'Đồng hồ', '<p>Đồng hồ</p>\r\n', '<p>Đồng hồ</p>\r\n', 2590000, 0, 99, '1627471014sp4.jpg', '[\"1627471014sp4.jpg\",\"\"]', '2021-07-28 11:16:54'),
(33, 'Dây chuyền', '<p>D&acirc;y chuyền</p>\r\n', '<p>D&acirc;y chuyền</p>\r\n', 1390000, 0, 49, '1627471046sp5.jpg', '[\"1627471046sp5.jpg\",\"\"]', '2021-07-28 11:17:26'),
(34, 'Dây chuyền nữ', '<p>D&acirc;y chuyền nữ</p>\r\n', '<p>D&acirc;y chuyền nữ</p>\r\n', 3750000, 0, 49, '1627471340sp6.jpg', '[\"1627471340sp6.jpg\",\"\"]', '2021-07-28 11:22:20'),
(35, 'Túi xách nữ', '<p>T&uacute;i x&aacute;ch nữ</p>\r\n', '<p><strong>T&uacute;i x&aacute;ch nữ</strong></p>\r\n', 899000, 0, 50, '1627471408sp7.jpg', '[\"1627471408sp7.jpg\",\"\"]', '2021-07-28 11:23:28'),
(36, 'Giày nữ', '<p>Gi&agrave;y nữ</p>\r\n', '<p>Gi&agrave;y nữ</p>\r\n', 599000, 20, 999, '1627471462sp8.jpg', '[\"1627471462sp8.jpg\",\"\"]', '2021-07-28 11:24:22'),
(37, 'Quần jeans Nam', '<p>Quần jeans Nam</p>\r\n', '<p>Quần jeans Nam</p>\r\n', 1200000, 0, 1099, '1627471512sp9.jpg', '[\"1627471512sp9.jpg\",\"\"]', '2021-07-28 11:25:12'),
(38, 'Quần jean rách gối', '<p>Quần jean r&aacute;ch gối</p>\r\n', '<p>Quần jean r&aacute;ch gối</p>\r\n', 1390000, 0, 10, '1627471550sp10.jpg', '[\"1627471550sp10.jpg\",\"\"]', '2021-07-28 11:25:50'),
(39, 'Áo gió ', '<p>&Aacute;o gi&oacute;&nbsp;</p>\r\n', '<p>&Aacute;o gi&oacute;&nbsp;</p>\r\n', 1750000, 10, 99, '1627471593sp11.jpg', '[\"1627471593sp11.jpg\",\"\"]', '2021-07-28 11:26:33'),
(40, 'Áo phao', '<p>&Aacute;o phao</p>\r\n', '<p>&Aacute;o phao</p>\r\n', 1750000, 0, 9, '1627471626sp12.jpg', '[\"1627471626sp12.jpg\",\"\"]', '2021-07-28 11:27:06'),
(41, 'Quần âu nam', '<p>Quần &acirc;u nam</p>\r\n', '<p>Quần &acirc;u nam</p>\r\n', 1890000, 20, 99, '1627471674sp13.jpg', '[\"1627471674sp13.jpg\",\"\"]', '2021-07-28 11:27:54'),
(42, 'Quần âu co dãn', '<p>Quần &acirc;u co d&atilde;n</p>\r\n', '<p>Quần &acirc;u co d&atilde;n</p>\r\n', 2970000, 5, 99, '1627471718sp14.jpg', '[\"1627471718sp14.jpg\",\"\"]', '2021-07-28 11:28:38'),
(43, 'Quần đùi đen', '<p>Quần đ&ugrave;i đen</p>\r\n', '<p>Quần đ&ugrave;i đen</p>\r\n', 300000, 5, 20, '1627471768sp15.jpg', '[\"1627471768sp15.jpg\",\"\"]', '2021-07-28 11:29:28'),
(44, 'Quần đùi sọc', '<p>Quần đ&ugrave;i sọc</p>\r\n', '<p>Quần đ&ugrave;i sọc</p>\r\n', 299000, 0, 10, '1627471861sp16.jpg', '[\"1627471861sp16.jpg\",\"\"]', '2021-07-28 11:31:01'),
(45, 'Áo gym 3 lỗ', '<p>&Aacute;o gym 3 lỗ</p>\r\n', '<p>&Aacute;o gym 3 lỗ</p>\r\n', 700000, 0, 10, '1627471943sp17.jpg', '[\"1627471943sp17.jpg\",\"\"]', '2021-07-28 11:32:23'),
(46, 'Áo gym dài tay', '<p>&Aacute;o gym d&agrave;i tay</p>\r\n', '<p>&Aacute;o gym d&agrave;i tay</p>\r\n', 900000, 5, 0, '1627471980sp18.jpg', '[\"1627471980sp18.jpg\",\"\"]', '2021-07-28 11:33:00'),
(47, 'Áo phông nam', '<p>&Aacute;o ph&ocirc;ng nam</p>\r\n', '<p>&Aacute;o ph&ocirc;ng nam</p>\r\n', 780000, 0, 0, '1627472019sp19.jpg', '[\"1627472019sp19.jpg\",\"\"]', '2021-07-28 11:33:39'),
(48, 'Áo phông phản quang ', '<p>&Aacute;o ph&ocirc;ng phản quang&nbsp;</p>\r\n', '<p>&Aacute;o ph&ocirc;ng phản quang&nbsp;</p>\r\n', 1590000, 25, 0, '1627472058sp20.jpg', '[\"1627472058sp20.jpg\",\"\"]', '2021-07-28 11:34:18'),
(49, 'Sơ mi kiểu dáng Hàn Quốc', '<p>Sơ mi kiểu d&aacute;ng H&agrave;n Quốc</p>\r\n', '<p>Sơ mi kiểu d&aacute;ng H&agrave;n Quốc</p>\r\n', 799000, 0, 10, '1627472102sp21.jpg', '[\"1627472102sp21.jpg\",\"\"]', '2021-07-28 11:35:02'),
(50, 'Sơ mi công sở ', '<p>Sơ mi c&ocirc;ng sở&nbsp;</p>\r\n', '<p>Sơ mi c&ocirc;ng sở&nbsp;</p>\r\n', 1390000, 0, 2, '1627472132sp22.jpg', '[\"1627472132sp22.jpg\",\"\"]', '2021-07-28 11:35:32'),
(51, 'Set đồ ngủ 1', '<p>Set đồ ngủ 1</p>\r\n', '<p>Set đồ ngủ 1</p>\r\n', 1750000, 0, 0, '1627472180sp23.jpg', '[\"1627472180sp23.jpg\",\"\"]', '2021-07-28 11:36:20'),
(52, 'Set đồ ngủ 2', '<p>Set đồ ngủ 2</p>\r\n', '<p>Set đồ ngủ 2</p>\r\n', 1390000, 0, 99, '1627472221sp24.jpg', '[\"1627472221sp24.jpg\",\"\"]', '2021-07-28 11:37:01'),
(53, 'Quần legging thể thao', '<p>Quần legging thể thao</p>\r\n', '<p>Quần legging thể thao</p>\r\n', 1890000, 0, 1000, '1627472266sp25.jpg', '[\"1627472266sp25.jpg\",\"\"]', '2021-07-28 11:37:46'),
(54, 'Quần legging ngố', '<p>Quần legging ngố</p>\r\n', '<p>Quần legging ngố</p>\r\n', 599000, 25, 17, '1627472308sp26.jpg', '[\"1627472308sp26.jpg\",\"\"]', '2021-07-28 11:38:28'),
(55, 'Set công sở năng động', '<p>Set c&ocirc;ng sở năng động</p>\r\n', '<p>Set c&ocirc;ng sở năng động</p>\r\n', 1390000, 5, 138, '1627472356sp27.jpg', '[\"1627472356sp27.jpg\",\"\"]', '2021-07-28 11:39:16'),
(56, 'Set công sở hiện đại', '<p>Set c&ocirc;ng sở hiện đại</p>\r\n', '<p>Set c&ocirc;ng sở hiện đại</p>\r\n', 1750000, 10, 9, '1627472436sp28.jpg', '[\"1627472436sp28.jpg\",\"\"]', '2021-07-28 11:40:36'),
(57, 'Áo thu đông', '<p>&Aacute;o thu đ&ocirc;ng</p>\r\n', '<p>&Aacute;o thu đ&ocirc;ng</p>\r\n', 799000, 5, 0, '1627472479sp29.jpg', '[\"1627472479sp29.jpg\",\"\"]', '2021-07-28 11:41:19'),
(58, 'Áo khoác len tay', '<p>&Aacute;o kho&aacute;c len tay</p>\r\n', '<p>&Aacute;o kho&aacute;c len tay</p>\r\n', 1000000, 5, 101, '1627472517sp30.jpg', '[\"1627472517sp30.jpg\",\"\"]', '2021-07-28 11:41:57'),
(59, 'Sơ mi ngắn có túi', '<p>Sơ mi ngắn c&oacute; t&uacute;i</p>\r\n', '<p>Sơ mi ngắn c&oacute; t&uacute;i</p>\r\n', 799000, 0, 109, '1627472559sp31.jpg', '[\"1627472559sp31.jpg\",\"\"]', '2021-07-28 11:42:39'),
(60, 'Sơ mi trắng công sở ', '<p>Sơ mi trắng&nbsp;</p>\r\n', '<p>Sơ mi trắng&nbsp;</p>\r\n', 1000000, 25, 50, '1627472601sp32.jpg', '[\"1627472601sp32.jpg\",\"\"]', '2021-07-28 11:43:21'),
(61, 'Đầm nữ trễ vai', '<p>Đầm nữ trễ vai</p>\r\n', '<p>Đầm nữ trễ vai</p>\r\n', 1690000, 5, 50, '1627472653sp33.jpg', '[\"1627472653sp33.jpg\",\"\"]', '2021-07-28 11:44:13'),
(62, 'Đầm xòe basic', '<p>Đầm x&ograve;e basic</p>\r\n', '<p>Đầm x&ograve;e basic</p>\r\n', 859000, 5, 49, '1627472691sp34.jpg', '[\"1627472691sp34.jpg\",\"\"]', '2021-07-28 11:44:51'),
(63, 'Váy body 2 dây', '<p>V&aacute;y body 2 d&acirc;y</p>\r\n', '<p>V&aacute;y body 2 d&acirc;y</p>\r\n', 699000, 10, 1009, '1627472734sp35.jpg', '[\"1627472734sp35.jpg\",\"\"]', '2021-07-28 11:45:34'),
(64, 'Váy xòe cá tính', '<p>V&aacute;y x&ograve;e c&aacute; t&iacute;nh</p>\r\n', '<p>V&aacute;y x&ograve;e c&aacute; t&iacute;nh</p>\r\n', 899000, 5, 999, '1627472771sp36.jpg', '[\"1627472771sp36.jpg\",\"\"]', '2021-07-28 11:46:11'),
(65, 'Quần jeans co giãn', '<p>Quần jeans co gi&atilde;n</p>\r\n', '<p>Quần jeans co gi&atilde;n</p>\r\n', 999000, 0, 999, '1627472829sp37.jpg', '[\"1627472829sp37.jpg\",\"\"]', '2021-07-28 11:47:09'),
(66, 'Quần jeans lưng cao', '<p>Quần jeans lưng cao</p>\r\n', '<p>Quần jeans lưng cao</p>\r\n', 1490000, 25, 99, '1627472871sp38.jpg', '[\"1627472871sp38.jpg\",\"\"]', '2021-07-28 11:47:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size_id`) VALUES
(75, 27, 1),
(76, 27, 3),
(77, 27, 5),
(78, 28, 1),
(79, 28, 3),
(80, 28, 5),
(86, 29, 1),
(87, 29, 2),
(88, 29, 3),
(89, 29, 4),
(90, 29, 5),
(91, 30, 1),
(92, 30, 2),
(93, 30, 3),
(94, 30, 4),
(95, 30, 5),
(96, 31, 4),
(97, 31, 5),
(98, 33, 1),
(99, 33, 2),
(100, 32, 3),
(103, 34, 2),
(104, 34, 3),
(105, 35, 3),
(106, 36, 4),
(107, 36, 5),
(108, 37, 2),
(109, 37, 3),
(110, 38, 1),
(111, 38, 2),
(112, 38, 3),
(113, 39, 1),
(114, 39, 2),
(115, 39, 3),
(116, 40, 1),
(117, 40, 2),
(118, 40, 3),
(119, 41, 1),
(120, 41, 2),
(121, 41, 3),
(122, 42, 1),
(123, 42, 3),
(127, 43, 1),
(128, 43, 2),
(129, 43, 3),
(130, 44, 2),
(131, 44, 3),
(132, 45, 1),
(133, 45, 3),
(134, 46, 1),
(135, 46, 2),
(136, 46, 3),
(137, 47, 1),
(138, 47, 2),
(139, 47, 3),
(140, 48, 1),
(141, 48, 2),
(142, 48, 3),
(143, 49, 2),
(144, 49, 3),
(145, 50, 1),
(146, 50, 2),
(147, 50, 3),
(148, 51, 1),
(149, 51, 2),
(150, 51, 3),
(151, 52, 1),
(152, 52, 2),
(153, 53, 1),
(154, 53, 2),
(155, 54, 1),
(156, 54, 3),
(157, 55, 2),
(158, 55, 3),
(159, 56, 1),
(160, 56, 3),
(161, 57, 1),
(162, 57, 2),
(163, 57, 3),
(164, 58, 1),
(165, 58, 2),
(166, 59, 1),
(167, 59, 3),
(168, 60, 1),
(169, 60, 3),
(170, 61, 1),
(171, 61, 2),
(172, 61, 3),
(173, 62, 1),
(174, 62, 2),
(175, 63, 1),
(176, 63, 3),
(177, 64, 1),
(178, 64, 3),
(179, 65, 1),
(180, 65, 3),
(181, 66, 1),
(182, 66, 2),
(183, 66, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `size` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `created_at`) VALUES
(1, 'M', '2020-07-13 16:59:48'),
(2, 'L', '2020-07-13 16:59:48'),
(3, 'S', '2020-07-13 16:59:48'),
(4, '30', '2020-07-13 16:59:48'),
(5, '31', '2020-07-13 16:59:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `rule` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `phone`, `address`, `thumbnail`, `rule`, `created_at`) VALUES
(10, 'admin123@gmail.com', '3008476a9614994b2538c9faa1b7e808', 'admin', '0334972001', 'dia chi 1', NULL, 1, '2021-07-28 10:39:46'),
(11, 'huydq@gmail.com', '202cb962ac59075b964b07152d234b70', 'dang quang huy', '123456789', 'dia chi 2', NULL, 0, '2021-07-28 10:49:17'),
(13, 'luongnv@gmail.com', '202cb962ac59075b964b07152d234b70', 'nguyen van luong', '12345678910', 'dia chi 3', NULL, 0, '2021-07-28 10:51:06'),
(14, 'namph@gmail.com', '202cb962ac59075b964b07152d234b70', 'phung hoai nam', '12345678910', 'dia chi 4', NULL, 0, '2021-07-28 10:52:25'),
(15, 'nguoidung1@gmail.com', '202cb962ac59075b964b07152d234b70', 'nguyen van a', '03214567891', 'ha noi', NULL, 1, '2021-07-28 10:53:15'),
(16, 'nguoidung2@gmail.com', '202cb962ac59075b964b07152d234b70', 'nguyen van b', '03214567892', 'ha nam', NULL, 1, '2021-07-28 10:53:47'),
(17, 'nguoidung3@gmail.com', '202cb962ac59075b964b07152d234b70', 'nguyen van c', '03214567893', 'bac ninh', NULL, 1, '2021-07-28 10:57:13'),
(18, 'nguoidung4@gmail.com', '202cb962ac59075b964b07152d234b70', 'nguyen van d', '03214567894', 'bac giang', NULL, 1, '2021-07-28 10:57:13'),
(19, 'nguoidung5@gmail.com', '202cb962ac59075b964b07152d234b70', 'nguyen van e', '03214567895', 'lao cai', NULL, 1, '2021-07-28 10:58:37'),
(20, 'nguoidung6@gmail.com', '202cb962ac59075b964b07152d234b70', 'phan van an', '03214567896', 'quang ninh', NULL, 1, '2021-07-28 10:58:37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT cho bảng `category_product`
--
ALTER TABLE `category_product`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_size_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
