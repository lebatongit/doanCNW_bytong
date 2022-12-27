-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 26, 2022 lúc 09:39 AM
-- Phiên bản máy phục vụ: 5.7.25
-- Phiên bản PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ban_sach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chi_tiet_hoadon` bigint(10) NOT NULL,
  `sodh` bigint(20) NOT NULL,
  `masp` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL,
  `madv` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chi_tiet_hoadon`, `sodh`, `masp`, `soluong`, `dongia`, `thanhtien`, `madv`) VALUES
(146, 129, 218, 1, 200, '200.00', '17'),
(152, 135, 222, 1, 80, '80.00', '16'),
(153, 138, 225, 1, 50, '50.00', '16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` bigint(20) NOT NULL,
  `tendv` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(15, 'Bọc sách(20K)', 20),
(16, 'Gói quà tặng(20K)', 20),
(17, 'Ghi Tên Thư Pháp (10K)', 10),
(18, 'Viết Thiệp Thư Pháp (50K)', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `sodh` bigint(20) NOT NULL,
  `emailkh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` int(50) NOT NULL,
  `hinhthucthanhtoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`sodh`, `emailkh`, `ngaygiao`, `tenkh`, `diachi`, `dienthoai`, `hinhthucthanhtoan`, `thanhtien`) VALUES
(129, 'tong@gmail.com', '2022-11-23', 'Tòng', 'abc', 947447764, 'ATM', '200.00'),
(135, 'test@gmail.com', '2022-12-28', 'Tòng', 'AGU', 1234, 'Live', '200.00'),
(136, 'tong@gmail.com', '2022-12-26', 'Tòng', 'abc', 947447764, 'ATM', '50.00'),
(137, 'tong@gmail.com', '2022-12-26', 'Tòng', 'abc', 947447764, 'ATM', '50.00'),
(138, 'tong@gmail.com', '2022-12-26', 'Tòng', 'Long xuyên', 947447764, 'Live', '70.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginadmin`
--

CREATE TABLE `loginadmin` (
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `phanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginadmin`
--

INSERT INTO `loginadmin` (`tendangnhap`, `matkhau`, `Ten`, `trangthai`, `phanquyen`) VALUES
('admin', 'admin', 'Lê Bá Tòng', 1, 1),
('nhanvien', '123', 'Lê Nhân Viên', 1, 2),
('nhanvien1', 'test', 'Lê Văn A', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginuser`
--

CREATE TABLE `loginuser` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginuser`
--

INSERT INTO `loginuser` (`id`, `email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
(1, 'tong@gmail.com', '123', 'Tòng', 947447764),
(2, 'khongbiet@gmail.com', '123', 'Lê Văn B', 1234567),
(3, 'lebatong@gmail.com', '123', 'lê bá tòng', 1234567);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`ID`, `Ten`) VALUES
(16, 'NXB Tổng hợp TP.HCM'),
(17, 'NXB Thế Giới'),
(18, 'NXB Hội Nhà Văn'),
(21, 'Hà Nội'),
(22, 'admin'),
(23, 'NXB Hội Nhà Văn'),
(24, 'Nhà Xuất Bản Giáo Dục (Sách Giáo Khoa)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` int(10) NOT NULL,
  `Ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Manhasx` bigint(10) NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double NOT NULL,
  `tacgia` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`, `tacgia`) VALUES
(218, 'Đừng Chạy Theo Số Đông ', 200, 'image_195509_1_37011.jpg', 17, 'Nếu tất cả mọi người ai cũng làm chủ doanh nghiệp, thì ai sẽ đi làm thuê?\r\n\r\nTôi.\r\n\r\nBởi lúc đó họ sẽ phải đấu giá để có được tôi.\r\n\r\nNhưng điều này không bao giờ xảy ra. Bởi ngay từ trong trứng đến lúc mọc cánh, chúng ta đã được dạy phải làm cho người khác cả đời. Chỉ có 1% được dạy khác.\r\n\r\nBạn không chạy theo số đông.\r\n\r\nBạn LÀ số đông.\r\n\r\nTuy nhiên bạn đừng nhầm lẫn. Cuốn sách này không chỉ nói về vấn đề “làm thuê” hay “làm riêng”. Đây chỉ là một trong những khía cạnh rất nhỏ.\r\n\r\nCuốn sách này muốn làm nổi bật một hệ tư duy ngầm lớn và khủng khiếp hơn thế mà chúng ta không nhận ra. Một sức hút vô hình nhưng mạnh mẽ.', '2021-06-26', 0, 0, 'Kiên Trần'),
(219, 'Nhà Giả Kim (Tái Bản 2020) ', 79, 'image_195509_1_36793.jpg', 18, 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người. \r\n\r\nTiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.\r\n\r\n“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”', '2021-06-26', 1, 59, 'Paulo Coelho'),
(221, 'Người Xưa Đã Quên Ngày Xưa', 90, '101772_nguoixuadaquenngayxua15199578805a98b778dc538.jpg', 22, '<p><strong>Người xưa đ&atilde; qu&ecirc;n ng&agrave;y xưa</strong></p>\r\n\r\n<p>Sự trở lại của hiện tượng xuất bản &ndash; nh&agrave; văn của nỗi buồn tuổi trẻ</p>\r\n\r\n<p><strong>&ldquo;Cảm ơn người, v&igrave; đ&atilde; từng một lần nắm lấy tay nhau.&rdquo;</strong></p>\r\n\r\n<p>Cuốn s&aacute;ch thứ 7 của nh&agrave; văn Anh Khang l&agrave; những tiếp nối một ch&uacute;t nuối tiếc, một ch&uacute;t c&ocirc; đơn, một ch&uacute;t sầu vọng: &ldquo;sau y&ecirc;u &ndash; đến chia tay&rdquo;. Rồi sau đ&oacute;? Sau đ&oacute;&hellip; l&agrave;m g&igrave; c&ograve;n sau đ&oacute; nữa&hellip; Người xưa đ&atilde; qu&ecirc;n ng&agrave;y xưa &ndash; nghe như một tiếng thở d&agrave;i, trầm buồn, th&ecirc; thiết. Những tưởng rồi Anh Khang sẽ lại mang đến những nỗi buồn cũ đ&atilde; gặp trong c&aacute;c cuốn s&aacute;ch trước của anh, những tưởng sẽ chỉ l&agrave; những điều lặp lại, tuần ho&agrave;n, như t&igrave;nh cảm vốn dĩ trong mỗi người: Dẫu biết rằng t&igrave;nh đ&atilde; hết ở người &ndash; nhưng c&ograve;n ở m&igrave;nh, c&oacute; n&oacute;i cũng chỉ l&agrave; chuyện cũ, nhưng chuyện cũ n&oacute;i bao giờ mới hết, mới cạn vơi? Nhưng may m&agrave;, dẫu buồn, những c&acirc;u văn của Anh Khang vẫn c&ograve;n trong đ&oacute; ch&uacute;t an y&ecirc;n, ch&uacute;t b&igrave;nh t&acirc;m: Bởi đến sau c&ugrave;ng, tuổi trẻ rồi cũng qua. Ước mơ đ&ocirc;i l&uacute;c bất th&agrave;nh. T&igrave;nh y&ecirc;u c&oacute; thể kh&ocirc;ng trọn vẹn. Nhưng những g&igrave; hồn nhi&ecirc;n trong trẻo nhất của mối t&igrave;nh đầu đẹp đẽ ấy, sẽ lu&ocirc;n c&ograve;n lại, lấp l&aacute;nh trong tim&hellip; Cảm ơn người, v&igrave; đ&atilde; từng một lần nắm lấy tay nhau.</p>\r\n\r\n<p><strong>Nhận định:</strong></p>\r\n\r\n<p><strong>B&aacute;o Phụ Nữ</strong>: C&acirc;y b&uacute;t trẻ Anh Khang đang dần định vị t&ecirc;n tuổi với danh hiệu &ldquo;<strong>t&aacute;c giả triệu bản</strong>&rdquo;&hellip; Cuốn s&aacute;ch n&agrave;o của Khang cũng c&oacute; lượng ph&aacute;t h&agrave;nh l&ecirc;n đến h&agrave;ng chục ng&agrave;n bản in.</p>\r\n\r\n<p><strong>B&aacute;o Vietnamnet</strong>: Được ưu &aacute;i gọi l&agrave; &ldquo;<strong>c&acirc;y b&uacute;t của nỗi buồn</strong>&rdquo;, những ấn phẩm của Anh Khang thường thi&ecirc;n về m&agrave;u sắc ho&agrave;i niệm, trầm mặc trong những c&acirc;u chuyện t&igrave;nh dở dang hay hồi ức về một người từng y&ecirc;u thương gắn b&oacute;.</p>\r\n', '2022-12-22', 1, 50, 'Anh Khang'),
(222, 'Chữ Thời', 170, 'chu-thoi.jpg', 22, '<p><strong>Chữ Thời</strong></p>\r\n\r\n<p>Khoa si&ecirc;u vật l&yacute; cũng như khoa t&acirc;m l&yacute; c&aacute;c miền s&acirc;u đang r&aacute;o riết t&igrave;m ra một nguy&ecirc;n l&yacute; mới thay cho nguy&ecirc;n l&yacute; tĩnh chỉ cũ, nhưng hầu hết mới ở đợt h&ocirc; h&agrave;o đả ph&aacute;. Đọc Chữ Thời bạn sẽ thấy nguy&ecirc;n l&yacute; mới đ&oacute; được tr&igrave;nh b&agrave;y r&agrave;nh rẽ, c&oacute; cả sơ đồ số độ v&agrave; minh họa bằng những thần thoại cơ bản. Nắm vững nguy&ecirc;n l&yacute; đ&oacute; đi s&acirc;u v&agrave;o Thời mới khỏi lo lạc hậu.</p>\r\n\r\n<p><em><strong>Kim Định</strong></em></p>\r\n', '2022-12-22', 1, 80, 'Kim Định'),
(225, 'Cửa Khổng', 100, 'cua-khong.jpg', 18, '<p><strong>Cửa Khổng</strong></p>\r\n\r\n<p>Qua lần vỏ đ&atilde; lỗi thời, Khổng Nho c&ograve;n chứa rất nhiều gi&aacute; trị căn bản đ&atilde; trở th&agrave;nh di sản tinh thần của d&acirc;n tộc.&nbsp;<strong>Cửa Khổng</strong>&nbsp;d&ugrave;ng phương ph&aacute;p khoa học v&agrave; triết học để gạn lọc ra những tinh hoa đ&oacute;. Một s&aacute;ch cần thiết cho những ai lưu t&acirc;m đến vấn đề văn h&oacute;a v&agrave; gi&aacute;o dục.</p>\r\n', '2022-12-24', 1, 50, 'Kim Định'),
(226, 'Tính Siêu Việt Của Tự Ngã', 90, 'tinh-sieu-viet-cua-tu-nga.jpg', 21, '<p><strong>T&iacute;nh si&ecirc;u việt của Tự ng&atilde; - Ph&aacute;c thảo một lối m&ocirc; tả hiện tượng học</strong>&nbsp;được viết v&agrave;o năm 1934 v&agrave; c&ocirc;ng bố lần đầu v&agrave;o năm 1936, l&agrave; th&agrave;nh quả đầu tay của Jean-Paul Sartre sau qu&aacute; tr&igrave;nh nghi&ecirc;n cứu hiện tượng học Husserl tại Đức. Trong đ&oacute;, &ocirc;ng kh&ocirc;ng những đ&atilde; kế thừa xuất sắc c&aacute;c lập trường hiện tượng học được Husserl khai triển trong hai t&aacute;c phẩm nền tảng l&agrave; &Yacute; niệm dẫn đạo cho một m&ocirc;n hiện tượng học v&agrave; C&aacute;c nghi&ecirc;n cứu logic học, m&agrave; c&ograve;n ph&ecirc; ph&aacute;n l&yacute; thuyết của Husserl về c&aacute;i T&ocirc;i si&ecirc;u nghiệm, rồi triển khai quan niệm của ch&iacute;nh &ocirc;ng về Tự ng&atilde;.</p>\r\n', '2022-12-20', 0, 0, 'Đinh Hồng Phúc'),
(227, 'Sách giáo khoa Lớp 8 Bộ Bài Tập Năm 2020 (7 Cuốn)', 130, 'fa8941e3fff92a77dd4b3558f58d61a9.jpg', 24, '<table style=\"width:407px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>T&Ecirc;N S&Aacute;CH</strong></td>\r\n			<td><strong>ĐƠN GI&Aacute;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>B&agrave;i Tập To&aacute;n 8 - T.1</td>\r\n			<td>17,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>B&agrave;i Tập To&aacute;n 8 - T.2</td>\r\n			<td>16,400</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>B&agrave;i Tập Ngữ Văn 8 - T.1</td>\r\n			<td>11,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>B&agrave;i Tập Ngữ Văn 8 - T.2</td>\r\n			<td>10,700</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>B&agrave;i Tập Tiếng Anh 8</td>\r\n			<td>11,600</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>B&agrave;i Tập Vật L&yacute; 8</td>\r\n			<td>8,200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>B&agrave;i Tập Ho&aacute; Học 8</td>\r\n			<td>13,300</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2022-12-24', 1, 90, 'Nhóm Tác Giả'),
(228, 'Sách Giáo Khoa Lớp 1 Kết Nối Tri Thức Với Cuộc Sống Bộ Bài Tập Năm 2021 (10 cuốn)', 100, 'bo-bai-tap-giao-khoa-lop-1-ket-noi-tri-thuc-voi-cuoc-song.jpg', 24, '<p>Đ&acirc;y l&agrave; m&ocirc; tả</p>\r\n', '2022-12-24', 1, 90, 'Nhóm Tác Giả'),
(229, 'Sách Giáo Khoa Lớp 2 Bộ Bài Tập (7 Cuốn)', 100, 'bo-sach-giao-khoa-lop-2.jpg', 24, '<p>Nhập m&ocirc; tả</p>\r\n', '2022-12-24', 1, 90, 'Nhóm Tác Giả'),
(230, 'Sách Giáo Khoa Lớp 1 Chân Trời Sáng Tạo Bộ Bài Tập Năm 2021 (11 cuốn)', 90, 'bo-bai-tap-giao-khoa-lop-1-chan-troi-sang-tao.jpg', 24, '<h2><em><strong>S&aacute;ch Gi&aacute;o Khoa Lớp 1 Ch&acirc;n Trời S&aacute;ng Tạo Bộ B&agrave;i Tập Năm 2021 (11 cuốn)</strong></em></h2>\r\n\r\n<p>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 1 - Ch&acirc;n Trời S&aacute;ng Tạo - S&aacute;ch B&agrave;i Tập (Bộ 11 Cuốn) (2022) Bao Gồm: STT T&ecirc;n h&agrave;ng 1 Tập viết 1/1 (Ch&acirc;n Trời S&aacute;ng Tạo) (2022) 2 Tập viết 1/2 (Ch&acirc;n Trời S&aacute;ng Tạo) (2022) 3 VBT Tiếng Việt 1/1 (Ch&acirc;n Trời S&aacute;ng Tạo) (2022) 4 VBT Tiếng Việt 1/2 (Ch&acirc;n Trời S&aacute;ng Tạo) (2022) 5 VBT Đạo đức 1 (Ch&acirc;n Trời S&aacute;ng Tạo) (2022) 6 VBT Hoạt Động Trải nghiệm 1 (Ch&acirc;n Trời S&aacute;ng Tạo) (2022) 7 VBT To&aacute;n 1/1 (Ch&acirc;n Trời S&aacute;ng Tạo) (2022) 8 VBT To&aacute;n 1/2 (Ch&acirc;n Trời S&aacute;ng Tạo) (2022) 9 VBT Tự nhi&ecirc;n v&agrave; X&atilde; hội 1 (Ch&acirc;n Trời S&aacute;ng Tạo) (2022) 10 VBT &Acirc;m nhạc 1 (Ch&acirc;n Trời S&aacute;ng Tạo) (2022) 11 VBT Mĩ thuật 1 (Ch&acirc;n Trời S&aacute;ng Tạo) (2022)</p>\r\n', '2022-12-24', 1, 10, 'Nhóm Tác Giả');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chi_tiet_hoadon`),
  ADD KEY `chitiethoadon` (`sodh`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`sodh`);

--
-- Chỉ mục cho bảng `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `sanpham` (`Manhasx`),
  ADD KEY `giakhuyenmai` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_2` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_3` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_4` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_5` (`giakhuyenmai`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chi_tiet_hoadon` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `madv` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `sodh` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT cho bảng `loginuser`
--
ALTER TABLE `loginuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhaxuatban` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
