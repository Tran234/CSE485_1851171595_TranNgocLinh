-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2020 lúc 03:39 PM
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
-- Cấu trúc bảng cho bảng `qlbaidang`
--

CREATE TABLE `qlbaidang` (
  `id` int(11) NOT NULL,
  `nguoidang` varchar(50) NOT NULL,
  `tieude` text NOT NULL,
  `noidung` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `qlbaidang`
--

INSERT INTO `qlbaidang` (`id`, `nguoidang`, `tieude`, `noidung`, `date`) VALUES
(32, '666', 'abc', 'aaaa', '2020-11-04'),
(33, '666', 'bang', 'qqqqq', '2020-11-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qlbinhluan`
--

CREATE TABLE `qlbinhluan` (
  `id` int(11) NOT NULL,
  `id_baidang` int(50) NOT NULL,
  `nguoidang` varchar(50) NOT NULL,
  `noidung_binhluan` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `qlbinhluan`
--

INSERT INTO `qlbinhluan` (`id`, `id_baidang`, `nguoidang`, `noidung_binhluan`, `date`) VALUES
(28, 32, '666', '123', '2020-11-04'),
(29, 33, '666', '123', '2020-11-04'),
(30, 32, '666', 'bcd', '2020-11-04'),
(31, 33, '666', 'bcd', '2020-11-04'),
(32, 33, '666', 'â', '2020-11-04'),
(33, 32, '666', 'z', '2020-11-04'),
(34, 33, '666', 'aaa', '2020-11-04'),
(44, 33, '666', 'á', '2020-11-04'),
(45, 33, '666', 'á', '2020-11-04'),
(46, 33, '666', 's', '2020-11-04'),
(47, 33, '666', 'á', '2020-11-04'),
(48, 33, '666', 'á', '2020-11-04'),
(49, 33, '666', 'sa', '2020-11-04'),
(50, 33, '666', 'sa', '2020-11-04'),
(51, 33, '666', 'đâ', '2020-11-04'),
(52, 32, '666', 'da', '2020-11-04'),
(53, 32, 'dung', 'hehe', '2020-11-04'),
(54, 33, 'dung', 'hehe', '2020-11-04');

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
('666', '0cc175b9c0f1b6a831c399e269772661', '1234@gmail.com'),
('a', 'c4ca4238a0b923820dcc509a6f75849b', 'abv@gmail.com'),
('dung', '202cb962ac59075b964b07152d234b70', '1234@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `qlbaidang`
--
ALTER TABLE `qlbaidang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `qlbinhluan`
--
ALTER TABLE `qlbinhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_baidang` (`id_baidang`);

--
-- Chỉ mục cho bảng `thongtinsinhvien`
--
ALTER TABLE `thongtinsinhvien`
  ADD PRIMARY KEY (`taikhoan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `qlbaidang`
--
ALTER TABLE `qlbaidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `qlbinhluan`
--
ALTER TABLE `qlbinhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `qlbinhluan`
--
ALTER TABLE `qlbinhluan`
  ADD CONSTRAINT `qlbinhluan_ibfk_1` FOREIGN KEY (`id_baidang`) REFERENCES `qlbaidang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
