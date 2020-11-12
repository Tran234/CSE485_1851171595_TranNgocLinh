-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2020 lúc 08:44 PM
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
-- Cơ sở dữ liệu: `baitaplonweb`
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
(32, '666', 'abc', 'aaaa', '', '2020-11-04'),
(47, '123', '10 lý do sinh viên lười tham gia hoạt động đoàn hội', '<p>Bằng hình thức thể hiện mới lạ, <i><strong>video 10 lý do khiến giới trẻ lười tham gia hoạt động đoàn, hội</strong></i> của Khải nhận được nhiều lời khen. Là bí thư lớp, ủy viên đoàn khoa Công nghệ thông tin, ĐH Tài chính Marketing TP HCM, Thiều Quang Khải nhiều lần băn khoăn vì rủ bạn bè tham gia các hoạt động đoàn, hội khó quá. Quyết tâm tìm hiểu lý do để có hướng giải quyết vấn đề này, Khải đã thực hiện cuộc khảo sát với bạn bè trong và ngoài trường. Kết quả từ hơn 100 bảng hỏi đã giúp cậu đúc rút ra câu trả lời.</p><p>Muốn giúp sinh viên nói lên ý kiến của mình, quan trọng hơn là khiến thầy cô, cán bộ Đoàn, hội hiểu được mấu chốt vấn đề sinh viên lười tham gia hoạt động đoàn, hội, Thiều Quang Khải đã thực hiện video theo hình thức stop motion thú vị. Với những hình ảnh ngộ nghĩnh, clip đưa người xem đến một khía cạnh ít được nói rõ trong công tác tuyên truyền hoạt động tình nguyện.</p><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td></tr><tr><td><p><i><strong>Video 10 lý do sinh viên lười tham gia hoạt động đoàn hội nhận được nhiều lời khen vì nội dung xác thực, hình thức đáng yêu, dễ gần.</strong></i></p><p>&nbsp;</p><p><i>Ảnh chụp màn hình.</i></p></td></tr></tbody></table></figure><p><strong>Các lý do được nêu ra là:</strong> <i>không có thời gian rảnh sau bao việc học hành, làm thêm, tụ tập...; phương tiện đi lại khó khăn; gia đình phản đối; sự nhút nhát, ngại va vấp trước môi trường mới của sinh viên; những áp lực, gò bó, trách nhiệm; việc thiếu thông tin hay vì các hoạt động thường nhàm chán, đóng khung, cứng nhắc...</i></p><p>Cho rằng 7/10 lý do là chính xác, Nguyễn Hải Linh, Học viện Hành chính Quốc gia chia sẻ, phần đông bạn bè của cậu không hứng thú vì thấy những công việc này khô cứng, nhàm chán, đôi khi làm theo phong trào, hiệu quả chưa cao. Một số khác bị gia đình phản đối vì \"hoạt động đoàn, hội vô bổ, gây mất thời gian\".</p><p>Tham gia nhiều công tác ngoại khóa, bản thân Hải Linh cũng thừa nhận thực tế không ít chương trình của đoàn, hội bị đóng khung, cứng nhắc nên khó thu hút được sinh viên. Tuy nhiên, cũng có nhiều hoạt động thú vị theo mô hình hội nghiên cứu, mang lại nhiều hiểu biết, kỹ năng giao tiếp, làm việc nhóm bổ ích cho người tham gia.</p><p>Còn Nguyễn Diệu Thu (năm 2, Viện ĐH Mở Hà Nội) cho biết chẳng hứng thú chút nào với hoạt động đoàn, hội vì thấy không hấp dẫn. \"Có nhiều chương trình ở trường diễn ra mấy hôm rồi mà sinh viên cũng chẳng biết tới\", Thu chia sẻ.</p><p>Thay vì dành thời gian tham gia những hoạt động nhàm chán ở trường, Thu thường đi tập thể dục, học thêm... và bố mẹ cô cũng không muốn con gái phải đi sớm về muộn vì công việc đoàn, hội này. Trong khi đó,&nbsp;Tuấn Anh (Học viện Tài chính) lại cho rằng, nguyên nhân \"môi trường mới\" khiến sinh viên ngại tham gia hoạt động đoàn, hội là thiếu hợp lý. Bởi lẽ, hầu hết thanh niên ngày nay đều mạnh dạn và muốn được tìm hiểu, hòa nhập vào các môi trường mới để năng động, tự tin, quen biết nhiều hơn.</p><p>Lý do phương tiện đi lại không thuận tiện cũng được nam sinh này cho rằng chưa hợp lý bởi ngoài xe buýt, còn nhiều cách di chuyển khác như: xe đạp hoặc hẹn chở nhau bằng xe máy... Phần đông bố mẹ không khắt khe và nhiều khi ủng hộ con cái tham gia hoạt động ở trường để có thêm nhiều <a href=\"https://kenhtuyensinh.vn/ky-nang-mem\"><i>kỹ năng mềm</i></a>.</p><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td></tr><tr><td>Thiều Quang Khải, tác giả của <strong>video 10 lý do khiến sinh viên lười tham gia hoạt động đoàn, hội</strong><i>\"</i>. Khải đã mất một&nbsp;tuần hì hụi vẽ, cắt, dán và xử lý hơn 800 bức ảnh để hoàn thành tác phẩm. Ảnh: NVCC.</td></tr></tbody></table></figure><p>&nbsp;</p><p>Video nhận được nhiều lời khen rằng, hình thức thể hiện bằng stop motion khá khác so với những bài tuyên truyền trước đây, cách tiếp cận cũng rất đáng yêu, thân thiện, cách thể hiện ngắn gọn, dễ hiểu và gần gũi. Tham gia cuộc thi tuyên truyền hoạt động Đoàn - hội của ĐH Tài chính Marketing TP HCM, video \"<i><strong>10 lý do khiến sinh viên lười tham gia hoạt động Đoàn, hội</strong></i>\" được nhiều thầy cô, sinh viên ủng hộ.</p><p>&nbsp;</p><p>Video \"10 lý do khiến sinh viên lười tham gia hoạt động Đoàn hội\". Clip:NVCC.</p><p>Từ khoá liên quan: <i>Stop motion: 10 lý do sinh viên lười tham gia hoạt động đoàn hội, 10 lý do sinh viên lười tham gia hoạt động đoàn hội, Nam sinh làm video stop motion chê hoạt động đoàn hội.</i></p>', '', '2020-11-12'),
(48, '123', '10 lý do sinh viên lười tham gia hoạt động đoàn hội', '<p>Bằng hình thức thể hiện mới lạ, <i><strong>video 10 lý do khiến giới trẻ lười tham gia hoạt động đoàn, hội</strong></i> của Khải nhận được nhiều lời khen. Là bí thư lớp, ủy viên đoàn khoa Công nghệ thông tin, ĐH Tài chính Marketing TP HCM, Thiều Quang Khải nhiều lần băn khoăn vì rủ bạn bè tham gia các hoạt động đoàn, hội khó quá. Quyết tâm tìm hiểu lý do để có hướng giải quyết vấn đề này, Khải đã thực hiện cuộc khảo sát với bạn bè trong và ngoài trường. Kết quả từ hơn 100 bảng hỏi đã giúp cậu đúc rút ra câu trả lời.</p><p>Muốn giúp sinh viên nói lên ý kiến của mình, quan trọng hơn là khiến thầy cô, cán bộ Đoàn, hội hiểu được mấu chốt vấn đề sinh viên lười tham gia hoạt động đoàn, hội, Thiều Quang Khải đã thực hiện video theo hình thức stop motion thú vị. Với những hình ảnh ngộ nghĩnh, clip đưa người xem đến một khía cạnh ít được nói rõ trong công tác tuyên truyền hoạt động tình nguyện.</p><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td></tr><tr><td><p><i><strong>Video 10 lý do sinh viên lười tham gia hoạt động đoàn hội nhận được nhiều lời khen vì nội dung xác thực, hình thức đáng yêu, dễ gần.</strong></i></p><p>&nbsp;</p><p><i>Ảnh chụp màn hình.</i></p></td></tr></tbody></table></figure><p><strong>Các lý do được nêu ra là:</strong> <i>không có thời gian rảnh sau bao việc học hành, làm thêm, tụ tập...; phương tiện đi lại khó khăn; gia đình phản đối; sự nhút nhát, ngại va vấp trước môi trường mới của sinh viên; những áp lực, gò bó, trách nhiệm; việc thiếu thông tin hay vì các hoạt động thường nhàm chán, đóng khung, cứng nhắc...</i></p><p>Cho rằng 7/10 lý do là chính xác, Nguyễn Hải Linh, Học viện Hành chính Quốc gia chia sẻ, phần đông bạn bè của cậu không hứng thú vì thấy những công việc này khô cứng, nhàm chán, đôi khi làm theo phong trào, hiệu quả chưa cao. Một số khác bị gia đình phản đối vì \"hoạt động đoàn, hội vô bổ, gây mất thời gian\".</p><p>Tham gia nhiều công tác ngoại khóa, bản thân Hải Linh cũng thừa nhận thực tế không ít chương trình của đoàn, hội bị đóng khung, cứng nhắc nên khó thu hút được sinh viên. Tuy nhiên, cũng có nhiều hoạt động thú vị theo mô hình hội nghiên cứu, mang lại nhiều hiểu biết, kỹ năng giao tiếp, làm việc nhóm bổ ích cho người tham gia.</p><p>Còn Nguyễn Diệu Thu (năm 2, Viện ĐH Mở Hà Nội) cho biết chẳng hứng thú chút nào với hoạt động đoàn, hội vì thấy không hấp dẫn. \"Có nhiều chương trình ở trường diễn ra mấy hôm rồi mà sinh viên cũng chẳng biết tới\", Thu chia sẻ.</p><p>Thay vì dành thời gian tham gia những hoạt động nhàm chán ở trường, Thu thường đi tập thể dục, học thêm... và bố mẹ cô cũng không muốn con gái phải đi sớm về muộn vì công việc đoàn, hội này. Trong khi đó,&nbsp;Tuấn Anh (Học viện Tài chính) lại cho rằng, nguyên nhân \"môi trường mới\" khiến sinh viên ngại tham gia hoạt động đoàn, hội là thiếu hợp lý. Bởi lẽ, hầu hết thanh niên ngày nay đều mạnh dạn và muốn được tìm hiểu, hòa nhập vào các môi trường mới để năng động, tự tin, quen biết nhiều hơn.</p><p>Lý do phương tiện đi lại không thuận tiện cũng được nam sinh này cho rằng chưa hợp lý bởi ngoài xe buýt, còn nhiều cách di chuyển khác như: xe đạp hoặc hẹn chở nhau bằng xe máy... Phần đông bố mẹ không khắt khe và nhiều khi ủng hộ con cái tham gia hoạt động ở trường để có thêm nhiều <a href=\"https://kenhtuyensinh.vn/ky-nang-mem\"><i>kỹ năng mềm</i></a>.</p><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td></tr><tr><td>Thiều Quang Khải, tác giả của <strong>video 10 lý do khiến sinh viên lười tham gia hoạt động đoàn, hội</strong><i>\"</i>. Khải đã mất một&nbsp;tuần hì hụi vẽ, cắt, dán và xử lý hơn 800 bức ảnh để hoàn thành tác phẩm. Ảnh: NVCC.</td></tr></tbody></table></figure><p>&nbsp;</p><p>Video nhận được nhiều lời khen rằng, hình thức thể hiện bằng stop motion khá khác so với những bài tuyên truyền trước đây, cách tiếp cận cũng rất đáng yêu, thân thiện, cách thể hiện ngắn gọn, dễ hiểu và gần gũi. Tham gia cuộc thi tuyên truyền hoạt động Đoàn - hội của ĐH Tài chính Marketing TP HCM, video \"<i><strong>10 lý do khiến sinh viên lười tham gia hoạt động Đoàn, hội</strong></i>\" được nhiều thầy cô, sinh viên ủng hộ.</p><p>&nbsp;</p><p>Video \"10 lý do khiến sinh viên lười tham gia hoạt động Đoàn hội\". Clip:NVCC.</p><p>Từ khoá liên quan: <i>Stop motion: 10 lý do sinh viên lười tham gia hoạt động đoàn hội, 10 lý do sinh viên lười tham gia hoạt động đoàn hội, Nam sinh làm video stop motion chê hoạt động đoàn hội.</i></p>', '', '2020-11-12'),
(49, '123', 'Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi', '<p>Sở hữu khuôn mặt khả ái, làn da trắng và nụ cười tỏa nắng, Nguyễn Thị Mai Anh, tân sinh viên trường Đại học Thủy lợi nhanh chóng thu hút được ánh nhìn của đông đảo các bạn sinh viên.</p><p>Đang học tại chuyên ngành Công nghệ sinh học, Mai Anh chia sẻ về lý do chọn Đại học Thủy lợi làm nơi gắn bó suốt quãng đời sinh viên: “Qua tìm hiểu, em được mọi người giới thiệu đây là một môi trường học tập rất tốt, khuôn viên trường rộng, là nơi sinh viên có thể thỏa sức tổ chức các hoạt động mà không bị bó hẹp về không gian. Thầy cô tại đây cũng luôn tạo điều kiện cho sinh viên phát triển, thể hiện bản thân mình.”</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/1_1_mycn.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 1\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/1_nlhw.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 2\"></figure><p>Dù học một ngành không có liên quan gì tới nghệ thuật, nhưng cô gái sinh năm 2002 lại mang trong mình một đam mê với nghề mẫu ảnh. Ngay từ khi còn nhỏ, Mai Anh đã thích chụp ảnh, tạo dáng trước ống kính máy quay mà không có chút gì ngại ngùng, sợ sệt. Lên đến cấp ba, cô nàng được các photographer, các shop thời trang mời đi làm mẫu ảnh, quảng cáo cho các thương hiệu lớn nhỏ trong và ngoài tỉnh Hà Tĩnh.</p><p>Gắn bó với nghề mẫu ảnh được hơn 3 năm, tới nay Mai Anh đã có không ít kinh nghiệm, kỹ năng chụp hình. Là người có khuôn mặt sáng, mái tóc đen dài và làn da không tì vết Mai Anh nhận về không ít lời khen từ phía cộng đồng mạng khi đăng tải những bức hình của mình lên trang cá nhân.</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/3_5_uond.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 3\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/4_ygsd.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 4\"></figure><p>Không chỉ có niềm đam mê với những tấm hình, Mai Anh còn xuất hiện trước mọi người với vai trò là một MC. Thời còn là học sinh Trung học, cô nàng đã có cơ hội được cầm mic dẫn các chương trình của trường, lớp. Cũng từ đó Mai Anh phát hiện dẫn chương trình cũng là điểm mạnh mà cô nàng cần khai thác để phát triển bản thân hơn nữa.</p><p>“Bạn bè và mọi người trong gia đình cũng khuyên em thi vào truyền hình, nhưng em nghĩ dù học ở bất cứ môi trường nào mà vẫn giữ được ngọn lửa đam mê của mình thì không có gì là không thể.” Mai Anh chia sẻ.</p><p>Trong thời gian tới, tham gia vào câu lạc bộ truyền thông của trường và đăng kí học các lớp kỹ năng MC là dự định mà Mai Anh hướng tới.</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/2_pieh.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 5\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/11_clup.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 6\"></figure><p>&nbsp; &nbsp;</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/9_ozho.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 7\"></figure><p>Đối với cô tân sinh viên trường Đại học Thủy lợi, nguồn động viên tinh thân lớn nhất với cô chính là sự ủng hộ hết mình từ phía gia đình. Cô nàng cảm thấy không có gì là quá khó khăn trong cả quá trình học tập và làm việc. “Trên mọi con đường mà em đi từ trước đến giờ luôn có sự đồng hành, hỗ trợ từ bố mẹ. Mỗi khi cảm thấy mệt mỏi, nhà luôn là nơi em nghĩ về. Nhưng trong thời gian tới em sẽ cố gắng tự lập hơn, học tập và làm việc một cách tích cực để không chỉ có thêm kiến thức, kỹ năng mà còn tự chủ được về tài chính để sau này lo được cho bản thân mình và giúp đỡ cho gia đình.”</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/14_gzhx.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 8\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/15_wfhj.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 9\"></figure><p>Dù mới chỉ là tân sinh viên, nhưng với sự nhiệt tình, thân thiện, “xinh nhưng không kiêu”, Mai Anh có được những người bạn đầu tiên trong quãng đời sinh viên, thầy cô trong trường cũng luôn luôn giúp đỡ, tạo điều kiện để cô nàng học tập thật tốt. Không những thế, trong quá trình theo đuổi đam mê, công việc của Mai Anh cũng rất suôn sẻ khi nhận về những sự hỗ trợ nhiệt tình từ phía mọi người.</p><p>Là một người hướng ngoại, Mai Anh còn có sở thích du lịch, khám phá những điều mới mẻ, thích đi xe một mình, và nơi mà cô nàng thường tới là Hà Nội. Vì thế dù gia đình Mai Anh ở Hà Tĩnh nhưng việc thay đổi môi trường sống đối với cô không phải là vấn đề quá lớn.</p><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/7_fxxd.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 10\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/3_wwes.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 11\"></figure><figure class=\"image\"><img src=\"https://image2.tienphong.vn/w665/Uploaded/2020/dg_bfjysszl/2020_11_03/13_xtff.jpg\" alt=\"Mê mẩn với vẻ đẹp trong veo của tân sinh viên trường Đại học Thủy lợi - ảnh 12\"></figure><p>Thời gian rảnh, cô gái sinh năm 2002 thường đọc sách, nghe nhạc và tập thể dục để có một thân hình khỏe, đẹp phục vụ cho việc thực hiện nững mục tiêu làm nghệ thuật trong tương lai của mình.</p><p>Chia sẻ về những kế hoạch trong thời gian tới, Mai Anh cho biết bản thân sẽ học tập và trau dồi thật nhiều những kiến thức, kỹ năng cần thiết và tìm hiểu về truyền thông, MC để phát triển bản thân và tìm ra những điểm mạnh chưa được khai phá.</p>', '', '2020-11-13'),
(50, '123', 'Hướng dẫn xác nhận sinh viên online', '<p>Mẫu xác nhận sinh viên online phục vụ cho sinh viên Trường Đại học Thủy lợi</p><figure class=\"image\"><img src=\"http://www.tlu.edu.vn/Portals/0/thu%20tuc%20hanh%20chinh/thutuchanhchinh/xacnhan.png\" alt=\"\"></figure><p><strong>Mẫu xác nhận sinh viên online phục vụ cho sinh viên Trường Đại học Thủy lợi</strong></p><p>- Đã, đang là sinh viên học tập tại trường</p><p>- Đã hoàn thành chương trình đào tạo, đang chờ nhận bằng</p><p>- Vay vốn ngân hàng (theo lớp có mẫu gửi về lớp)</p><p>- Sinh viên xin hoãn nghĩa vụ quân sự</p><p>- Đăng ký Mua xe máy</p><p>- Nhận học bổng, ưu đãi tại địa phương</p><p>- Các xác nhận khác</p><p><strong>QUY TRÌNH ĐỐI VỚI SINH VIÊN</strong></p><p><strong>Bước 1</strong>:&nbsp;Sinh viên vào link khai báo thông tin:&nbsp;<a href=\"https://goo.gl/forms/3PQnCAQWQpVkwrtj1\"><strong>Mẫu phiếu khai</strong></a></p><p><strong>Bước 2</strong>: Sau khi khai báo đầy đủ, sinh viên nhấn gửi mẫu bên dưới phiếu khai</p><p><strong>Bước 3</strong>: Nhà trường sẽ gửi kết quả trả lời&nbsp;vào email cá nhân (đã cung cấp trong phiếu khai) và &nbsp;lịch hẹn đến nhận xác nhận hoặc phản hồi về những sai sót trong phiếu khai.</p><p><strong>Bước 4</strong>: Sinh viên đến phòng trực tư vấn sinh viên (P118-A1) nhận xác nhận theo lịch hẹn trong thư.</p>', '', '2020-11-13');

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
(30, 32, '666', 'bcd', '2020-11-04'),
(33, 32, '666', 'z', '2020-11-04');

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
('123', '25f9e794323b453885f5181f1b624d0b', '123456789@gmail.com');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `qlbinhluan`
--
ALTER TABLE `qlbinhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
