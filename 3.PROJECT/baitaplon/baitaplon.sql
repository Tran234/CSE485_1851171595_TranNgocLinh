-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2020 lúc 06:30 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baitaplon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qlbaidang`
--

CREATE TABLE `qlbaidang` (
  `id` int(11) NOT NULL,
  `nguoidang` varchar(50) NOT NULL,
  `tieude` text NOT NULL,
  `noidung` text NOT NULL,
  `anh` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `qlbaidang`
--

INSERT INTO `qlbaidang` (`id`, `nguoidang`, `tieude`, `noidung`, `anh`, `date`) VALUES
(49, '123', 'Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi', '<p>Sở hữu khuôn mặt khả ái, làn da trắng và nụ cười tỏa nắng, Nguyễn Thị Mai Anh, tân sinh viên trường Đại học Thủy lợi nhanh chóng thu hút được ánh nhìn của đông đảo các bạn sinh viên.</p><p>Đang học tại chuyên ngành Công nghệ sinh học, Mai Anh chia sẻ về lý do chọn Đại học Thủy lợi làm nơi gắn bó suốt quãng đời sinh viên: “Qua tìm hiểu, em được mọi người giới thiệu đây là một môi trường học tập rất tốt, khuôn viên trường rộng, là nơi sinh viên có thể thỏa sức tổ chức các hoạt động mà không bị bó hẹp về không gian. Thầy cô tại đây cũng luôn tạo điều kiện cho sinh viên phát triển, thể hiện bản thân mình.”</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/1_1_mycn.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 1\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/1_nlhw.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 2\"></figure><p>Dù học một ngành không có liên quan gì tới nghệ thuật, nhưng cô gái sinh năm 2002 lại mang trong mình một đam mê với nghề mẫu ảnh. Ngay từ khi còn nhỏ, Mai Anh đã thích chụp ảnh, tạo dáng trước ống kính máy quay mà không có chút gì ngại ngùng, sợ sệt. Lên đến cấp ba, cô nàng được các photographer, các shop thời trang mời đi làm mẫu ảnh, quảng cáo cho các thương hiệu lớn nhỏ trong và ngoài tỉnh Hà Tĩnh.</p><p>Gắn bó với nghề mẫu ảnh được hơn 3 năm, tới nay Mai Anh đã có không ít kinh nghiệm, kỹ năng chụp hình. Là người có khuôn mặt sáng, mái tóc đen dài và làn da không tì vết Mai Anh nhận về không ít lời khen từ phía cộng đồng mạng khi đăng tải những bức hình của mình lên trang cá nhân.</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/3_5_uond.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 3\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/4_ygsd.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 4\"></figure><p>Không chỉ có niềm đam mê với những tấm hình, Mai Anh còn xuất hiện trước mọi người với vai trò là một MC. Thời còn là học sinh Trung học, cô nàng đã có cơ hội được cầm mic dẫn các chương trình của trường, lớp. Cũng từ đó Mai Anh phát hiện dẫn chương trình cũng là điểm mạnh mà cô nàng cần khai thác để phát triển bản thân hơn nữa.</p><p>“Bạn bè và mọi người trong gia đình cũng khuyên em thi vào truyền hình, nhưng em nghĩ dù học ở bất cứ môi trường nào mà vẫn giữ được ngọn lửa đam mê của mình thì không có gì là không thể.” Mai Anh chia sẻ.</p><p>Trong thời gian tới, tham gia vào câu lạc bộ truyền thông của trường và đăng kí học các lớp kỹ năng MC là dự định mà Mai Anh hướng tới.</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/2_pieh.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 5\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/11_clup.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 6\"></figure><p>&nbsp; &nbsp;</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/9_ozho.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 7\"></figure><p>Đối với cô tân sinh viên trường Đại học Thủy lợi, nguồn động viên tinh thân lớn nhất với cô chính là sự ủng hộ hết mình từ phía gia đình. Cô nàng cảm thấy không có gì là quá khó khăn trong cả quá trình học tập và làm việc. “Trên mọi con đường mà em đi từ trước đến giờ luôn có sự đồng hành, hỗ trợ từ bố mẹ. Mỗi khi cảm thấy mệt mỏi, nhà luôn là nơi em nghĩ về. Nhưng trong thời gian tới em sẽ cố gắng tự lập hơn, học tập và làm việc một cách tích cực để không chỉ có thêm kiến thức, kỹ năng mà còn tự chủ được về tài chính để sau này lo được cho bản thân mình và giúp đỡ cho gia đình.”</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/14_gzhx.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 8\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/15_wfhj.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 9\"></figure><p>Dù mới chỉ là tân sinh viên, nhưng với sự nhiệt tình, thân thiện, “xinh nhưng không kiêu”, Mai Anh có được những người bạn đầu tiên trong quãng đời sinh viên, thầy cô trong trường cũng luôn luôn giúp đỡ, tạo điều kiện để cô nàng học tập thật tốt. Không những thế, trong quá trình theo đuổi đam mê, công việc của Mai Anh cũng rất suôn sẻ khi nhận về những sự hỗ trợ nhiệt tình từ phía mọi người.</p><p>Là một người hướng ngoại, Mai Anh còn có sở thích du lịch, khám phá những điều mới mẻ, thích đi xe một mình, và nơi mà cô nàng thường tới là Hà Nội. Vì thế dù gia đình Mai Anh ở Hà Tĩnh nhưng việc thay đổi môi trường sống đối với cô không phải là vấn đề quá lớn.</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/7_fxxd.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 10\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/3_wwes.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 11\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/13_xtff.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 12\"></figure><p>Thời gian rảnh, cô gái sinh năm 2002 thường đọc sách, nghe nhạc và tập thể dục để có một thân hình khỏe, đẹp phục vụ cho việc thực hiện nững mục tiêu làm nghệ thuật trong tương lai của mình.</p><p>Chia sẻ về những kế hoạch trong thời gian tới, Mai Anh cho biết bản thân sẽ học tập và trau dồi thật nhiều những kiến thức, kỹ năng cần thiết và tìm hiểu về truyền thông, MC để phát triển bản thân và tìm ra những điểm mạnh chưa được khai phá.</p>', '', '2020-11-13'),
(50, '123', 'Hướng dẫn xác nhận sinh viên online', '<p>Mẫu xác nhận sinh viên online phục vụ cho sinh viên Trường Đại học Thủy lợi</p><figure class=\"image\"><img src=\"http://www.tlu.edu.vn/Portals/0/thu%20tuc%20hanh%20chinh/thutuchanhchinh/xacnhan.png\" alt=\"\"></figure><p><strong>Mẫu xác nhận sinh viên online phục vụ cho sinh viên Trường Đại học Thủy lợi</strong></p><p>- Đã, đang là sinh viên học tập tại trường</p><p>- Đã hoàn thành chương trình đào tạo, đang chờ nhận bằng</p><p>- Vay vốn ngân hàng (theo lớp có mẫu gửi về lớp)</p><p>- Sinh viên xin hoãn nghĩa vụ quân sự</p><p>- Đăng ký Mua xe máy</p><p>- Nhận học bổng, ưu đãi tại địa phương</p><p>- Các xác nhận khác</p><p><strong>QUY TRÌNH ĐỐI VỚI SINH VIÊN</strong></p><p><strong>Bước 1</strong>:&nbsp;Sinh viên vào link khai báo thông tin:&nbsp;<a href=\"https://goo.gl/forms/3PQnCAQWQpVkwrtj1\"><strong>Mẫu phiếu khai</strong></a></p><p><strong>Bước 2</strong>: Sau khi khai báo đầy đủ, sinh viên nhấn gửi mẫu bên dưới phiếu khai</p><p><strong>Bước 3</strong>: Nhà trường sẽ gửi kết quả trả lời&nbsp;vào email cá nhân (đã cung cấp trong phiếu khai) và &nbsp;lịch hẹn đến nhận xác nhận hoặc phản hồi về những sai sót trong phiếu khai.</p><p><strong>Bước 4</strong>: Sinh viên đến phòng trực tư vấn sinh viên (P118-A1) nhận xác nhận theo lịch hẹn trong thư.</p>', '', '2020-11-13'),
(51, '123', '10 lí do', '<p>1234567</p>', '', '2020-11-14');

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinsinhvien`
--

CREATE TABLE `thongtinsinhvien` (
  `taikhoan` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thongtinsinhvien`
--

INSERT INTO `thongtinsinhvien` (`taikhoan`, `matkhau`, `email`, `ad`) VALUES
('123', '25f9e794323b453885f5181f1b624d0b', '123456789@gmail.com', 1),
('hang', 'hang', 'hang123@gmail.com', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `qlbinhluan`
--
ALTER TABLE `qlbinhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
