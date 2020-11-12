-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 03, 2020 lúc 08:55 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baitaplonweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinsinhvien`
--

CREATE TABLE `thongtinsinhvien` (
  `taikhoan` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thongtinsinhvien`
--

INSERT INTO `thongtinsinhvien` (`taikhoan`, `matkhau`, `email`) VALUES
('4', 'e4da3b7fbbce2345d7772b0674a318d5', '12346@gmail.com'),
('555', '0cc175b9c0f1b6a831c399e269772661', '1234@gmail.com'),
('6', '0cc175b9c0f1b6a831c399e269772661', '1234@gmail.com'),
('666', '0cc175b9c0f1b6a831c399e269772661', '1234@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `thongtinsinhvien`
--
ALTER TABLE `thongtinsinhvien`
  ADD PRIMARY KEY (`taikhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
