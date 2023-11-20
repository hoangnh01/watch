-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2023 lúc 04:10 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dangquangwatch`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(5) NOT NULL DEFAULT 1,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `level`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Hữu Hoàng', 'hoangnh2k1@gmail.com', '$2y$10$4FzUVKfo54Y0VJ.LddMSOupQxK2Y41APBrB0qLyka7q/jjgwBT7u6', '0389163152', 1, NULL, '70DCTT21096-70DCTT22', 'Thanh Hoá', '2023-03-28__1111.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(5, 'Đồng hồ Epos - đẳng cấp của một thương hiệu Thụy Sĩ', 'dong-ho-epos-dang-cap-cua-mot-thuong-hieu-thuy-si', 1, 1, 1, 0, 'Đồng hồ Epos là một thương hiệu đồng hồ nổi tiếng của Thuỵ Sĩ, với hơn 95 năm kinh nghiệm trong sản xuất các loại đồng hồ cao cấp. Từ khi thành lập vào năm 1925, Epos đã khẳng định được vị thế của mình trong ngành công nghiệp đồng hồ.', '2023-03-30__dong-ho-thuy-si-t3202312-1043805933.jpg', '<p>Đồng hồ Epos Swiss được coi l&agrave; một trong những sản phẩm đồng hồ sang trọng v&agrave; đẳng cấp d&agrave;nh cho&nbsp;<em><em>nam giới</em></em>. Với thiết kế đa dạng v&agrave; chất lượng tuyệt vời, đồng hồ Epos đ&atilde; trở th&agrave;nh một trong những lựa chọn h&agrave;ng đầu cho những người đ&agrave;n &ocirc;ng y&ecirc;u th&iacute;ch sự đẳng cấp v&agrave; phong c&aacute;ch sang trọng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong-ho-thuy-sy-epos-t13320231.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mỗi sản phẩm Epos đều được chế t&aacute;c bằng tay bởi những nghệ nh&acirc;n đồng hồ t&agrave;i ba. Điều n&agrave;y<em><em>&nbsp;đảm bảo&nbsp;</em></em>rằng mỗi chiếc đồng hồ đều c&oacute; chất lượng v&agrave; độ ch&iacute;nh x&aacute;c cao. Sản phẩm của h&atilde;ng được l&agrave;m bằng c&aacute;c vật liệu chất lượng cao cấp như th&eacute;p kh&ocirc;ng gỉ, k&iacute;nh Sapphire chống trầy xước... Với sự kết hợp tuyệt vời giữa chất liệu v&agrave; thiết kế, c&aacute;c sản phẩm của Epos kh&ocirc;ng chỉ đẹp mắt m&agrave; c&ograve;n rất&nbsp;<em><em>chắc chắn&nbsp;</em></em>v&agrave; bền bỉ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong-ho-thuy-sy-epos-t13320232.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với sự tận t&acirc;m v&agrave; nỗ lực kh&ocirc;ng ngừng trong từng chi tiết sản phẩm, Epos đ&atilde; đạt được nhiều th&agrave;nh&nbsp;<em><em>c&ocirc;</em></em>ng v&agrave; d&agrave;nh được l&ograve;ng tin của kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n thế giới. C&ugrave;ng l&agrave; thương hiệu đồng hồ Thụy Sĩ với chất lượng tuyệt hảo, so với thương hiệu kh&aacute;c như Patek Philippe, Omega&hellip; th&igrave; Epos c&oacute; một mức gi&aacute; hợp l&yacute; hơn cả v&agrave;&nbsp;<em><em>chắc chắn&nbsp;</em></em>sẽ l&agrave; sự lựa chọn tuyệt vời khi cần tham khảo một thương hiệu đồng hồ Thụy Sĩ uy t&iacute;n, đẳng cấp v&agrave; ch&iacute;nh h&atilde;ng.</p>\r\n\r\n<p>Đồng hồ EPOS hiện đang được ph&acirc;n phối độc quyền tại Việt Nam tại hệ thống Đăng Quang Watch</p>\r\n\r\n<p><em>Để biết th&ecirc;m chi tiết về c&aacute;c chương tr&igrave;nh khuyến m&atilde;i, th&ocirc;ng tin sản phẩm, theo d&otilde;i thường xuy&ecirc;n</em></p>', '2023-03-29 21:55:48', 0, 1, '2023-03-29 23:41:29'),
(6, 'VALENTINE TRẮNG – TRAO GỬI YÊU THƯƠNG CÙNG ĐĂNG QUANG WATCH', 'valentine-trang-trao-gui-yeu-thuong-cung-dang-quang-watch', 1, 1, 1, 0, 'Nếu như ngày 14/2 là ngày Valentine đỏ thì sau đó 1 tháng, ngày 14/3 chính là ngày lễ Valentine trắng, ngày bày tỏ tình cảm với người thương yêu.', '2023-03-30__z4174743475712-96d52ddb2716d8f7bd4fe40ce4e4c6d0-202634637.jpg', '<p>Valentine trắng (hay c&ograve;n gọi l&agrave; White Valentine, White Day) diễn ra v&agrave;o ng&agrave;y 14/3, sau Valentine Đỏ 14/2 (Lễ T&igrave;nh Nh&acirc;n) đ&uacute;ng 1 th&aacute;ng, l&agrave; một trong những dịp để mọi người thể hiện t&igrave;nh cảm với nhau.</p>\r\n\r\n<p>Nếu như trong dịp Valentine Đỏ (14/2), c&aacute;c c&ocirc; g&aacute;i, ch&agrave;ng trai sẽ tặng qu&agrave; cho người m&agrave; họ y&ecirc;u mến, th&igrave; trong ng&agrave;y n&agrave;y, c&aacute;c c&ocirc; g&aacute;i, ch&agrave;ng trai sẽ tặng qu&agrave; trở lại cho người đ&atilde; tặng qu&agrave; cho họ (hoặc cũng c&oacute; thể tặng cho người họ thực sự quan t&acirc;m v&agrave; y&ecirc;u mến). N&oacute;i c&aacute;ch kh&aacute;c White Valentine l&agrave; một dịp để đ&aacute;p lại những y&ecirc;u thương từng được gửi gắm.<img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/z4174743282876_bb6b8dd9ae89bf140bc13eb067c8e3fb.jpg\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p>Qu&agrave; tặng đồng hồ mang đến nhiều &yacute; nghĩa cho người nhận. N&oacute; thể hiện sự chảy tr&ocirc;i bất tận của thời gian, v&agrave; d&ugrave; thời gian vẫn tiếp tục tr&ocirc;i đi th&igrave; t&igrave;nh cảm bạn d&agrave;nh cho người nhận vẫn kh&ocirc;ng thay đổi.</p>\r\n\r\n<p>Đồng hồ Đăng Quang giới thiệu b&ocirc;̣ sưu tập đồng hồ sẽ là những lựa chọn lý tưởng cho ng&agrave;y valentine trắng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/z4149778686694_c21afa6070c5410e68be1b87e71e9980.jpg\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/z4137050841554_d170d5a0fd128ec29c517480aed3755d.jpg\" style=\"height:1066px; width:1600px\" /></p>\r\n\r\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>', '2023-03-29 23:39:52', 0, 1, '2023-03-29 23:41:36'),
(7, 'Đồng hồ nữ Diamond D – Món quà hoàn hảo cho 8/3', 'dong-ho-nu-diamond-d-mon-qua-hoan-hao-cho-83', 1, 1, 1, 0, 'Đồng hồ nữ Diamond D là một món quà ý nghĩa và đặc biệt dành cho phái đẹp trong ngày Quốc tế Phụ nữ. Với thiết kế đẳng cấp, chất lượng tốt và giá cả hợp lý, Diamond D đã trở thành một trong những lựa chọn phổ biến cho cánh mày râu muốn tặng quà cho mẹ, vợ, bạn gái hay người yêu của mình.', '2023-03-30__dong-ho-qua-tang-8-3-y-nghia-nhat-1331031118.jpg', '<p>Diamond D l&agrave; thương hiệu đồng hồ được lấy cảm hứng thiết kế từ phong c&aacute;ch thời trang của c&ocirc;ng nương Diana. Kh&ocirc;ng chỉ được kh&aacute;ch h&agrave;ng ưa chuộng bởi kiểu d&aacute;ng sang trọng, mang đậm phong c&aacute;ch ho&agrave;ng gia m&agrave; c&ograve;n từ bộ m&aacute;y bền bỉ chất lượng v&agrave; chế độ bảo h&agrave;nh l&ecirc;n tới 10 năm tại Đăng Quang Watch.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong-ho-nu-dm1-8_3_2023.jpg\" style=\"height:384px; width:552px\" /></p>\r\n\r\n<p>Thiết kế của Diamond D l&agrave; sự kết hợp giữa phong c&aacute;ch cổ điển v&agrave; hiện đại. C&aacute;c sản phẩm được sử dụng c&ocirc;ng nghệ mạ PVD cao cấp, k&iacute;nh sapphire, kết hợp với đ&aacute; Swarovski &ndash; một loại đ&aacute; pha l&ecirc; s&aacute;ng lấp l&aacute;nh được đ&iacute;nh tr&ecirc;n đồng hồ nhằm l&agrave;m tăng sự sang trọng v&agrave; qu&yacute; gi&aacute; của sản phẩm.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong-ho-nu-dm2-8_3_2023.jpg\" style=\"height:384px; width:552px\" /></p>\r\n\r\n<p>Với chất lượng cao v&agrave; thiết kế đẹp mắt, đồng hồ nữ Diamond D kh&ocirc;ng chỉ l&agrave; một phụ kiện thời trang tuyệt vời m&agrave; c&ograve;n l&agrave; một m&oacute;n qu&agrave; &yacute; nghĩa d&agrave;nh cho ph&aacute;i đẹp. Điều n&agrave;y đ&atilde; thu h&uacute;t được sự quan t&acirc;m của kh&ocirc;ng &iacute;t người y&ecirc;u thời trang v&agrave; đam m&ecirc; đồng hồ.</p>', '2023-03-29 23:43:33', 0, 1, '2023-03-29 23:43:41'),
(8, 'Siêu Sale thương hiệu: Ưu đãi giảm giá 20% tại Đăng Quang Watch', 'sieu-sale-thuong-hieu-uu-dai-giam-gia-20-tai-dang-quang-watch', 1, 1, 1, 0, 'Hậu Valentine 14/02 Đăng Quang Watch dành ưu đãi Giảm giá 20% cho các thương hiệu: Stuhrling Original, Bruno Sohnle, Q&Q, Casio, SR Watch, Olympia Star, Olympianus, Orient, Seiko, Citizen. Chương trình hiện đang áp dụng trên toàn hệ thống!', '2023-03-30__sale-20-dong-ho-chinh-hang-1353552302.jpg', '<p>Đăng Quang Watch l&agrave; một doanh nghiệp uy t&iacute;n chuy&ecirc;n cung cấp sản phẩm đồng hồ đeo tay ch&iacute;nh h&atilde;ng tr&ecirc;n thị trường Việt Nam với phương ch&acirc;m &quot;đ&aacute;p ứng mọi y&ecirc;u cầu d&ugrave; khắt khe của kh&aacute;ch h&agrave;ng&quot;.</p>\r\n\r\n<p>Với hệ thống l&ecirc;n tới 100 cửa h&agrave;ng tr&ecirc;n to&agrave;n quốc, Đăng Quang Watch hiện đang ph&acirc;n phối rất nhiều&nbsp;thương hiệu đồng hồ uy t&iacute;n đến từ c&aacute;c quốc gia h&agrave;ng đầu trong lĩnh vực sản xuất đồng hồ đeo tay như&nbsp;Thụy Sĩ,&nbsp;<em>Đức</em>, Nhật Bản&hellip;</p>\r\n\r\n<p>Với gi&aacute; trị cốt l&otilde;i &ldquo;Đem lại trải nghiệm tuyệt vời nhất cho kh&aacute;ch h&agrave;ng&rdquo;, Đăng Quang Watch h&agrave;ng năm ngo&agrave;i cập nhật đa dạng c&aacute;c mẫu m&atilde;, n&acirc;ng cao chất lượng sản phẩm th&igrave; c&ograve;n đặc biệt<em>&nbsp;ch&uacute;&nbsp;</em>trọng n&acirc;ng cao dịch vụ b&aacute;n h&agrave;ng, chăm s&oacute;c kh&aacute;ch h&agrave;ng để n&acirc;ng cao trải nghiệm kh&aacute;ch h&agrave;ng một c&aacute;ch tốt nhất.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; Đăng Quang Watch thường xuy&ecirc;n c&oacute; những ưu đ&atilde;i đặc biệt cho kh&aacute;ch h&agrave;ng của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/z4112554170440_e1e7b2e663001e73ec19d3681ea76574.jpg\" style=\"height:900px; width:900px\" /></p>\r\n\r\n<p>Từ ng&agrave;y 16/02/2023:&nbsp;<em>Đăng Quang Watch d&agrave;nh ưu đ&atilde;i Giảm gi&aacute; 20% cho c&aacute;c thương hiệu: Stuhrling Original, Bruno Sohnle, Q&amp;Q, Casio, SR Watch, Olympia Star, Olympianus, Orient, Seiko, Citizen. Tặng ngay Voucher 300.000VNĐ khi chụp ảnh Checkin tại cửa h&agrave;ng .</em>Chương tr&igrave;nh được &aacute;p dụng tr&ecirc;n to&agrave;n hệ thống v&agrave; khi mua tại hệ thống Online.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/903563060_%C4%91%E1%BB%93ng-h%E1%BB%93-ch%C3%ADnh-h%C3%A3ng212.jpg\" style=\"height:800px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/1633919578_dong-ho-nu-nhap-khau2.jpg\" style=\"height:650px; width:650px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/664545445_dong_ho_nhat_ct_be9174_55ajpg_1623160416.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_thoi_trang_sr_sl50064102bljpg_1628411668.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_chinh_hang2jpg_1641788355.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/138721488_dong_ho_nam_ca_mtp_1183q_7adfjpg_1628158279.jpg\" style=\"height:600px; width:600px\" /></p>', '2023-03-29 23:46:47', 0, 1, '2023-03-29 23:46:58'),
(9, 'Tìm hiểu về công nghệ mạ PVD cao cấp trong chế tác đồng hồ', 'tim-hieu-ve-cong-nghe-ma-pvd-cao-cap-trong-che-tac-dong-ho', 0, 1, 2, 0, 'Đồng hồ mạ vàng PVD luôn nằm trong top những mẫu đồng hồ được ưa chuộng nhất mọi thời đại. Tuy được biết đến và sử dụng rộng rãi nhưng vẫn có không ít người còn nhiều thắc mắc về đồng hồ mạ vàng PVD.', '2023-03-30__4.jpg', '<h1>T&igrave;m hiểu về c&ocirc;ng nghệ mạ PVD cao cấp trong chế t&aacute;c đồng hồ</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Đồng hồ mạ v&agrave;ng PVD lu&ocirc;n nằm trong top những mẫu đồng hồ được ưa chuộng nhất mọi thời đại. Tuy được biết đến v&agrave; sử dụng rộng r&atilde;i nhưng vẫn c&oacute; kh&ocirc;ng &iacute;t người c&ograve;n nhiều thắc mắc về đồng hồ mạ v&agrave;ng PVD.</h2>\r\n\r\n<p>Liệu đồng hồ mạ v&agrave;ng PVD c&oacute; bị phai m&agrave;u trong d&ograve;ng chảy v&ocirc; tận của thời gian? Ch&uacute;ng ta c&ugrave;ng t&igrave;m hiểu điều đ&oacute; để c&oacute; c&acirc;u trả lời x&aacute;c thực nhất.</p>\r\n\r\n<h2>1. Mạ v&agrave;ng PVD cho đồng hồ &ndash; Những đặc trưng v&agrave; ưu điểm nổi bật</h2>\r\n\r\n<p>To&aacute;t l&ecirc;n kh&iacute; chất vương giả thời thượng, những chiếc đồng hồ m&agrave;u v&agrave;ng lu&ocirc;n khiến người ta phải trầm trồ ngưỡng mộ về vẻ quyền uy, sang trọng. Ch&uacute;ng c&oacute; thể được mạ v&agrave;ng r&ograve;ng cao cấp ở những chiếc đồng hồ nổi tiếng m&agrave; ta vẫn quen gọi l&agrave; những si&ecirc;u phẩm của thời gian. Dĩ nhi&ecirc;n, ch&uacute;ng đắt đỏ, thậm ch&iacute; đ&oacute; l&agrave; những phi&ecirc;n bản giới hạn chỉ d&agrave;nh cho số &iacute;t người gi&agrave;u c&oacute;, nổi tiếng v&agrave; c&oacute; địa vị. B&ecirc;n cạnh những ng&ocirc;i sao &ldquo;đắt gi&aacute;&rdquo; đ&oacute; l&agrave; sự xuất hiện v&agrave; chiếm hữu của đồng hồ mạ v&agrave;ng PVD ti&ecirc;n tiến, m&ecirc; hoặc người d&ugrave;ng bởi chất lượng v&agrave; sự bền bỉ đ&aacute;ng ngưỡng mộ.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20atlantic%20(6)(1).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20atlantic%20(6)(1).jpg\" /></a></p>\r\n\r\n<p>Trước đ&acirc;y, chỉ c&oacute; những chiếc đồng hồ đắt tiền mới được mạ v&agrave;ng, thậm ch&iacute; đồng hồ nam mạ v&agrave;ng ở thời kỳ đ&oacute; c&ograve;n trở th&agrave;nh h&agrave;ng &ldquo;hiếm&rdquo;. Người ta sử dụng những kim loại qu&yacute; gi&aacute; phủ l&ecirc;n bề mặt để l&agrave;m tăng sự sang trọng đẳng cấp v&agrave; t&iacute;nh thẩm mỹ cho những chiếc đồng hồ đeo tay. Thay v&igrave; sử dụng v&agrave;ng thật, c&ocirc;ng nghệ mạ v&agrave;ng PVD được ứng dụng cao v&agrave; ng&agrave;y c&agrave;ng trở n&ecirc;n phổ biến.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20nu%20(4)(1).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20nu%20(4)(1).jpg\" /></a></p>\r\n\r\n<p>Bắt nhịp c&ugrave;ng xu thế ph&aacute;t triển, những chiếc đồng hồ mạ v&agrave;ng PVD trở n&ecirc;n được ưa chuộng hơn cả bởi ch&uacute;ng sở hữu những ưu điểm vượt trội kh&ocirc;ng thể b&agrave;n c&atilde;i. Đ&oacute; l&agrave;:</p>\r\n\r\n<p><strong><em>Thứ nhất</em></strong><em>,&nbsp;</em>đồng hồ mạ v&agrave;ng PVD bền hơn. Đơn giản v&igrave; cấu tr&uacute;c kim loại nhiều tầng gi&uacute;p đồng hồ chịu ma s&aacute;t tốt, đồng hồ mạ v&agrave;ng bị xước &iacute;t hay kh&oacute; ăn m&ograve;n khi tiếp x&uacute;c với mồ h&ocirc;i, bụi bẩn&hellip;</p>\r\n\r\n<p><strong><em>Thứ hai</em></strong><em>,&nbsp;</em>mạ v&agrave;ng&nbsp;PVD c&oacute; độ b&aacute;m d&iacute;nh tuyệt vời, lớp phủ thống nhất n&ecirc;n đồng hồ c&oacute; nước mạ b&oacute;ng đẹp, mịn hơn, t&iacute;nh thẩm mĩ cao hơn.</p>\r\n\r\n<p><strong><em>Thứ ba</em></strong><em>,&nbsp;</em>mạ PVD c&oacute; quy tr&igrave;nh phủ đơn giản, th&acirc;n thiện với m&ocirc;i trường hơn so với kỹ thuật mạ v&agrave;ng trước kia. Đ&acirc;y hiện cũng l&agrave; c&ocirc;ng nghệ mạ ti&ecirc;n tiến nhất tr&ecirc;n thế giới.</p>\r\n\r\n<p>Với những ưu điểm vượt trội của m&igrave;nh, mỗi chiếc đồng hồ được mạ v&agrave;ng PVD trở th&agrave;nh những nh&acirc;n chứng vượt thời gian, bất chấp sự m&agrave;i m&ograve;n, l&atilde;ng qu&ecirc;n, ch&uacute;ng vẫn toả s&aacute;ng một c&aacute;ch trọn vẹn như thuở ban đầu. Trong khoảng thời gian từ 5 đến 7 năm, chắc chắn bạn sẽ kh&ocirc;ng một lần phải lo lắng liệu đồng hồ mạ v&agrave;ng bị phai m&agrave;u.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20epos%20(1).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20thuy%20sy%20epos%20(1).jpg\" /></a></p>\r\n\r\n<p>Vậy bản chất của c&ocirc;ng nghệ mạ v&agrave;ng PVD l&agrave; g&igrave;? Ch&uacute;ng ẩn chứa năng lực b&iacute; ẩn n&agrave;o m&agrave; c&oacute; thể tạo n&ecirc;n những điều kỳ diệu đến vậy?</p>\r\n\r\n<h2>2. C&ocirc;ng nghệ mạ PVD l&agrave; g&igrave; ?</h2>\r\n\r\n<p>Mạ PVD l&agrave; c&ocirc;ng nghệ mạ ch&acirc;n kh&ocirc;ng ti&ecirc;n tiến nhất tr&ecirc;n thế giới hiện nay. Được ứng dụng tr&ecirc;n hầu hết tất cả c&aacute;c lĩnh vực từ phụ t&ugrave;ng xe &ocirc; t&ocirc;, xe m&aacute;y, thiết bị điện tử, đồ mỹ nghệ đến những sản phẩm nhỏ b&eacute; như đồng hồ đeo tay ta vẫn thấy. Với ưu điểm nổi trội về độ bền đẹp v&agrave; th&acirc;n thiện với m&ocirc;i trường, những sản phẩm được xi mạ bằng c&ocirc;ng nghệ mạ PVD ti&ecirc;n tiến được ứng dụng v&agrave; ưa chuộng hơn cả.</p>\r\n\r\n<p>Ta từng nghe tới c&ocirc;ng nghệ mạ v&agrave;ng PVD, mạ bạc PVD,..ở nhiều thiết bị quen thuộc. Vậy bản chất của ch&uacute;ng l&agrave; g&igrave;?</p>\r\n\r\n<p>PVD (Physical Vapour Deposition) thực chất l&agrave; thuật ngữ để chỉ một qu&aacute; tr&igrave;nh. Trong c&ocirc;ng nghệ n&agrave;y, người ta l&agrave;m bay hơi kim loại v&agrave; ngưng tụ ở nhiệt độ cao tạo n&ecirc;n một lớp phủ tr&ecirc;n bề mặt cần mạ.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20nu%20(4)(7).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20nu%20(4)(7).jpg\" /></a></p>\r\n\r\n<p>Khi kim loại inox được đ&aacute;nh b&oacute;ng, hợp kim Nh&ocirc;m, Kẽm, Đồng sẽ được mạ một lớp Niken b&oacute;ng. Với c&ocirc;ng nghệ mạ PVD, khi đ&oacute; lớp mạ TiN được phủ l&ecirc;n bề mặt sản phẩm sẽ cho ra m&agrave;u v&agrave;ng (Gold 14 đến 24K), lớp mạ ZrN cho m&agrave;u v&agrave;ng s&aacute;ng (Light Gold &ndash; m&agrave;u v&agrave;ng &Yacute;), lớp mạ CrC cho m&agrave;u x&aacute;m, m&agrave;u hồng v&agrave;ng v&agrave; m&agrave;u xanh nước biển,&hellip; v&agrave; c&aacute;c m&agrave;u kh&aacute;c theo cầu phụ thuộc v&agrave;o tỉ lệ pha trộn.</p>\r\n\r\n<p>Lớp mạ PVD kh&ocirc;ng chỉ bao phủ to&agrave;n bộ bề mặt của đồng hồ m&agrave; c&ograve;n bao gồm cả d&acirc;y, kho&aacute;, với lớp kim loại qu&yacute; gi&aacute; c&ugrave;ng một lượng Titanium mỏng, lớp mạ n&agrave;y l&agrave; thước đo bảo đảm cho sự bền bỉ v&agrave; khả năng chống xước vượt trội. Khi n&oacute;i về mạ PVD, giới mộ điệu thường v&iacute; ch&uacute;ng ở vị tr&iacute; ngang h&agrave;ng với Sapphire bởi ch&uacute;ng bởi độ cứng chỉ đứng sau kim cương.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20nu%20(5)(4).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong%20ho%20nu%20(5)(4).jpg\" /></a></p>\r\n\r\n<p>Với lớp mạ bằng c&aacute;c hợp kim si&ecirc;u bền ở b&ecirc;n ngo&agrave;i như lớp &aacute;o gi&aacute;p bảo vệ, c&aacute;c sản phẩm được mạ v&agrave;ng PVD c&oacute; độ cứng cao, chống m&agrave;i m&ograve;n v&agrave; dễ d&agrave;ng l&ecirc;n m&agrave;u sắc như &yacute; muốn.</p>\r\n\r\n<p>Nếu bạn từng sở hữu một vật phẩm c&oacute; sử dụng c&ocirc;ng nghệ ti&ecirc;n tiến n&agrave;y hay đơn cử như chiếc đồng hồ mạ v&agrave;ng PVD, chắc chắn bạn sẽ đồng t&igrave;nh với t&ocirc;i về sự bền đẹp đến bất ngờ đ&oacute;.</p>\r\n\r\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>', '2023-03-29 23:52:48', 1, 1, NULL),
(10, 'Làm thế nào giữ mới dây da đồng hồ ?', 'lam-the-nao-giu-moi-day-da-dong-ho', 0, 1, 2, 0, 'Đồng hồ dây da luôn mang lại cho người dùng một phong cách trẻ trung, sang trọng và quý phái. Tuy nhiên thì những chiếc dây da rất nhanh xuống cấp do bảo quản không đúng cách. Vì vậy, trong bài viết này, ĐĂNG QUANG WATCH muốn chia sẻ tới anh em cách bảo quản dây da đồng hồ để dây bền hơn và luôn như mới.', '2023-03-30__2.jpg', '<h2>Đồng hồ d&acirc;y da lu&ocirc;n mang lại cho người d&ugrave;ng một phong c&aacute;ch trẻ trung, sang trọng v&agrave; qu&yacute; ph&aacute;i. Tuy nhi&ecirc;n th&igrave; những chiếc d&acirc;y da rất nhanh xuống cấp do bảo quản kh&ocirc;ng đ&uacute;ng c&aacute;ch. V&igrave; vậy, trong b&agrave;i viết n&agrave;y, ĐĂNG QUANG WATCH muốn chia sẻ tới anh em c&aacute;ch bảo quản d&acirc;y da đồng hồ để d&acirc;y bền hơn v&agrave; lu&ocirc;n như mới.</h2>\r\n\r\n<p><strong>C&aacute;c loại d&acirc;y da đồng hồ</strong></p>\r\n\r\n<p>Để c&oacute; được c&aacute;ch bảo quản d&acirc;y da đ&uacute;ng, trước hết, anh em cần phải biết được chất liệu da của d&acirc;y l&agrave;m bằng g&igrave;, th&agrave;nh phần ra sao. Hiện nay, c&aacute;c h&atilde;ng đồng hồ sử dụng 3 loại da ch&iacute;nh để l&agrave;m d&acirc;y đeo, đ&oacute; l&agrave;:</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/1be4b82c70a996f7cfb8.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/1be4b82c70a996f7cfb8.jpg\" /></a></p>\r\n\r\n<p><strong>► D&acirc;y da Simili</strong>: Đ&acirc;y l&agrave; chất liệu da nh&acirc;n tạo được dệt từ những sợi Polyester, sau đ&oacute; phủ l&ecirc;n 1 &ndash; 2 lớp nhựa PVC. Loại da n&agrave;y th&igrave; th&ocirc; cứng v&agrave; dễ d&acirc;y k&iacute;ch ứng do chứa ho&aacute; chất.</p>\r\n\r\n<p><strong>► D&acirc;y da PU:</strong>&nbsp;Bản chất của loại d&acirc;y n&agrave;y cũng giống như d&acirc;y da Simili, tuy nhi&ecirc;n, lớp Simili n&agrave;y đ&atilde; được phủ th&ecirc;m Polyurethane để c&oacute; đặc t&iacute;nh bền, mềm mại như da thật. V&igrave; cũng l&agrave; d&acirc;y nh&acirc;n tạo n&ecirc;n loại d&acirc;y n&agrave;y cũng c&oacute; khả năng k&iacute;ch ứng da cao.</p>\r\n\r\n<p><strong>►&nbsp;D&acirc;y da thật:</strong>&nbsp;Da thật thường được l&agrave;m từ da động vật như: b&ograve;, b&ecirc;, ca sấu, thậm ch&iacute; cả da đ&agrave; điểu v&agrave; phải trải qua quy tr&igrave;nh thuộc da ph&ugrave; hợp. Chất liệu da n&agrave;y mang lại cảm gi&aacute;c rất thoải m&aacute;i khi đeo v&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/b4882372ebf70da954e6.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/b4882372ebf70da954e6.jpg\" /></a></p>\r\n\r\n<h2><strong>C&aacute;ch bảo quản d&acirc;y da đồng hồ chuẩn</strong></h2>\r\n\r\n<p>Như đ&atilde; n&oacute;i, mỗi một loại da th&igrave; c&oacute; một c&aacute;ch bảo quản ri&ecirc;ng v&agrave; c&oacute; một dung m&ocirc;i ri&ecirc;ng để tr&aacute;nh bị nứt, bong. Tuy nhi&ecirc;n th&igrave; c&oacute; lưu &yacute; m&agrave; anh em cần nhớ đ&oacute; ch&iacute;nh l&agrave; &ldquo;đồ da rất kỵ nước&rdquo;, bất kể l&agrave; da nh&acirc;n tạo hay da thật th&igrave; nước cũng sẽ l&agrave;m cho n&oacute; nhanh bị hỏng.</p>\r\n\r\n<h3><strong>Bảo quản d&acirc;y da Simili</strong></h3>\r\n\r\n<p>Đặc điểm của chất liệu da n&agrave;y đ&oacute; ch&iacute;nh l&agrave; cứng, kh&oacute; lau ch&ugrave;i v&agrave; dễ bị bong, rộp khi tiếp x&uacute;c với nước hay nhiệt độ cao. Ch&iacute;nh v&igrave; thế m&agrave; khi sử dụng d&acirc;y da n&agrave;y, anh em cần tr&aacute;nh m&ocirc;i trưởng ẩm ướt, tiếp x&uacute;c với nước đặc biệt l&agrave; l&uacute;c đi mưa. B&ecirc;n cạnh đ&oacute;, anh em cần phải tr&aacute;nh &aacute;nh s&aacute;ng chiếu trực tiếp v&agrave; những nơi c&oacute; nhiệt độ cao. Lau ch&ugrave;i bằng khăn mềm khi bị d&iacute;nh bẩn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Bảo quản d&acirc;y da PU</strong></h3>\r\n\r\n<p>Giống như Simili, d&acirc;y da PU cũng dễ bị bong, &ldquo;nổ&rdquo; khi tiếp x&uacute;c với m&ocirc;i trường ẩm v&agrave; nhiệt độ cao. Ch&iacute;nh v&igrave; vậy m&agrave; việc thường xuy&ecirc;n lau ch&ugrave;i bằng vải kh&ocirc; mềm l&agrave; rất cần thiết. Hơn nữa, anh em tuyệt đối kh&ocirc;ng n&ecirc;n sử dụng ho&aacute; chất để lau ch&ugrave;i, nếu c&oacute; những vết bẩn th&igrave; anh em sử dụng một chiếc khăn ẩm.</p>\r\n\r\n<p>Ngo&agrave;i ra, để d&acirc;y đeo n&agrave;y được bền, đẹp th&igrave; anh em cũng hạn chế việc tiếp x&uacute;c với nhiệt độ cao như phơi nắng, sấy d&acirc;y để l&agrave;m kh&ocirc;. B&ecirc;n cạnh đ&oacute;, khi kh&ocirc;ng sử dụng th&igrave; anh em n&ecirc;n bảo quản trong hộp k&iacute;n v&agrave; c&oacute; t&uacute;i chống ẩm.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/97217fd0b755510b0844.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/97217fd0b755510b0844.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Bảo quản d&acirc;y da thật</strong></h3>\r\n\r\n<p>Da thật thường c&oacute; độ đ&agrave;n hồi tốt, c&oacute; khả năng thấm nước ch&iacute;nh v&igrave; thế m&agrave; anh em cần phải hạn chế tiếp x&uacute;c với nước, nhất l&agrave; những l&uacute;c trời mưa hay rửa tay th&igrave; anh em n&ecirc;n th&aacute;o đồng hồ ra.&nbsp;Hơn nữa, với kh&iacute; hậu n&oacute;ng ẩm như ở Việt nam th&igrave; d&acirc;y da thật cần được bảo quản thật cẩn thận v&igrave; n&oacute; rất dễ bị mủn. B&ecirc;n cạnh đ&oacute; c&ograve;n c&oacute; những m&ugrave;i h&ocirc;i kh&oacute; chịu khi bị ẩm.</p>\r\n\r\n<h2>Những lưu &yacute; quan trọng khi sử dụng d&acirc;y da</h2>\r\n\r\n<p>Ngo&agrave;i những c&aacute;ch bảo quản tr&ecirc;n, để giữ được d&acirc;y da bền đẹp v&agrave; kh&ocirc;ng bị h&ocirc;i trong qu&aacute; tr&igrave;nh sử dụng anh em cần lưu &yacute;:</p>\r\n\r\n<p>D&ugrave;ng b&agrave;n chải mềm để vệ sinh d&acirc;y da 1 lần / tuần để d&acirc;y lu&ocirc;n được sạch v&agrave; s&aacute;ng b&oacute;ng.</p>\r\n\r\n<p>&ndash; Khi d&acirc;y c&oacute; m&ugrave;i h&ocirc;i, n&ecirc;n sử dụng m&aacute;y Ozon hay phủ hạt h&uacute;t ẩm l&ecirc;n d&acirc;y. Tuyệt đối kh&ocirc;ng giặt d&acirc;y với x&agrave; ph&ograve;ng v&agrave; đem phơi nắng v&igrave; n&oacute; sẽ l&agrave; giảm tuổi thọ của d&acirc;y.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/856b5fdb975e7100284f.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/856b5fdb975e7100284f.jpg\" /></a></p>\r\n\r\n<p>&ndash; Khi d&acirc;y c&oacute; hiện tượng nứt, mục th&igrave; bạn n&ecirc;n thay d&acirc;y mới. Kh&ocirc;ng n&ecirc;n sử dụng những ho&aacute; chất b&ocirc;i l&ecirc;n d&acirc;y v&igrave; những ho&aacute; chất sẽ l&agrave;m da nhanh hỏng v&agrave; điều quan trọng hơn l&agrave; n&oacute; sẽ ảnh hưởng tới sức khoẻ.</p>\r\n\r\n<p>Vậy th&igrave; khi đồng hồ hỏng d&acirc;y th&igrave; n&ecirc;n thay ở đ&acirc;u?</p>\r\n\r\n<h2>ĐĂNG QUANG WATCH &ndash; địa chỉ thay d&acirc;y đồng hồ ch&iacute;nh h&atilde;ng gi&aacute; rẻ</h2>\r\n\r\n<p>Nếu anh em đang băn khoăn kh&ocirc;ng biết thay đồng hồ tại đ&acirc;u th&igrave; Đăng Quang Watch l&agrave; một trong những địa chỉ đ&aacute;ng tin cậy. Tại sao n&ecirc;n thay d&acirc;y tại đ&acirc;y?</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/c84752e69a637c3d2572.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/c84752e69a637c3d2572.jpg\" /></a></p>\r\n\r\n<p>Đăng Quang Watch l&agrave; đơn vị ph&acirc;n phối độc quyền của nhiều h&atilde;ng đồng hồ ch&iacute;nh v&igrave; thế m&agrave; những d&acirc;y da tại đ&acirc;y đều l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng chất lượng cao. Đặc biệt hơn, d&ugrave; l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng nhưng gi&aacute; thay d&acirc;y tại Đăng Quang Watch lu&ocirc;n rẻ hơn so với những cửa h&agrave;ng kh&aacute;c.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; những th&ocirc;ng tin về c&aacute;ch bảo quản d&acirc;y da đồng hồ v&agrave; địa chỉ thay d&acirc;y da đồng hồ uy t&iacute;n. Nếu anh em thấy những th&ocirc;ng tin n&agrave;y hữu &iacute;ch, h&atilde;y share tới bạn b&egrave;, người th&acirc;n v&agrave; đừng qu&ecirc;n cho 1 like để ch&uacute;ng t&ocirc;i c&oacute; th&ecirc;m động lực chia sẻ th&ecirc;m nhiều b&iacute; quyết về đồng hồ</p>', '2023-03-29 23:54:34', 1, 1, NULL),
(11, 'Chiếc đồng hồ đeo tay nói thay vạn lời yêu thương', 'chiec-dong-ho-deo-tay-noi-thay-van-loi-yeu-thuong', 0, 1, 2, 0, 'Nếu bạn đang đắn đo xem mình sẽ tặng quà gì cho người yêu, bạn bè, đồng nghiệp hay người thân của mình trong các dịp đặc biệt như sinh nhật, ngày phụ nữ Việt Nam 20/10… thì chiếc đồng hồ đeo tay có thể là một lựa chọn đáng để bạn lưu tâm. Bởi đồng hồ đeo tay không chỉ có ý nghĩa đối với người nhận, nhắc nhở họ quý trọng thời gian mà còn hàm chứa nhiều thông điệp có thể bạn chưa biết.', '2023-03-30__3.jpg', '<p>C&aacute;c mẫu đồng hồ b&ecirc;n dưới được thiết kế đa dạng về mẫu m&atilde;, th&iacute;ch hợp mọi phong c&aacute;ch v&agrave; sở th&iacute;ch l&agrave; những gợi &yacute; đặc sắc nhất từ Đăng Quang Watch. K&egrave;m theo đ&oacute; l&agrave; những tuy&ecirc;n ng&ocirc;n ẩn chứa ph&iacute;a sau m&oacute;n qu&agrave; đồng hồ từ m&oacute;n qu&agrave; bạn muốn gửi đến người y&ecirc;u, đồng nghiệp, hay người th&acirc;n của m&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Đồng hồ nữ Diamond D DM36505IG</li>\r\n</ol>\r\n\r\n<p>Nếu c&ocirc; g&aacute;i của bạn l&agrave; một người dịu d&agrave;ng v&agrave; tinh tế th&igrave; chiếc DM36505IG sẽ rất hợp với n&agrave;ng. Với thiết kế ho&agrave;ng gia, qu&yacute; ph&aacute;i đến từng chi tiết, kim cương swarovski&nbsp; tỏa s&aacute;ng lấp l&aacute;nh mọi g&oacute;c nh&igrave;n, mặt k&iacute;nh saphire chống xước mang đến cho c&ocirc; g&aacute;i của bạn vẻ đẹp cuốn h&uacute;t kh&ocirc;ng ai c&oacute; thể s&aacute;nh bằng.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/1(6).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/1(6).jpg\" /></a></p>\r\n\r\n<p>Đồng hồ nữ Aries Gold AG-L1032 G-WG</p>\r\n\r\n<p>Nếu n&agrave;ng l&agrave; một người c&aacute; t&iacute;nh, đầy chinh phục mang tinh thần qu&yacute; tộc th&igrave; chiếc AG-L1032 G-WG sẽ khiến n&agrave;ng m&ecirc; đắm. L&agrave; sự kết hợp, pha trộn giữa sự hiện đại của kiến tr&uacute;c với sự cổ điển của đồng hồ tạo n&ecirc;n một mẫu đồng hồ c&oacute; thiết kế b&oacute;ng bảy, t&aacute;o bạo v&agrave; ph&aacute; c&aacute;ch. Kh&ocirc;ng những thế, chiếc AG-L1032 G-WG n&agrave;y c&ograve;n được trang bị k&iacute;nh saphire chống xước c&ugrave;ng với độ chịu nước l&ecirc;n đến 50m.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/2(7).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/2(7).jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Đồng hồ nam Atlantic AT-56550.45.21</li>\r\n</ol>\r\n\r\n<p>Một sản phẩm đến từ vương quốc đồng hồ Thụy Sĩ, chiếc đồng hồ n&agrave;y mang lại cảm gi&aacute;c nam t&iacute;nh v&agrave; cuốn h&uacute;t đến kh&oacute; tin. Nhờ mặt moonphase kết hợp với bộ kim v&agrave;ng nổi bật c&ugrave;ng với size mặt 41mm thực sự đ&atilde; l&agrave;m cho c&aacute;nh m&agrave;y r&acirc;u phải trầm trồ khen ngợi về n&oacute;.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/3(9).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/3(9).jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Đồng hồ nam Epos E-3420.152.22.18.32</li>\r\n</ol>\r\n\r\n<p>E-3420.152.22.18.32 g&acirc;y ấn tượng bởi vẻ ngo&agrave;i hiện đại v&agrave; tinh tế v&igrave; thế cỗ m&aacute;y thời gian n&agrave;y nhanh ch&oacute;ng g&acirc;y được ấn tượng với người d&ugrave;ng bởi t&ocirc;ng m&agrave;u trắng thanh lịch của mặt đồng hồ kết hợp ho&agrave;n hảo với vỏ v&agrave;ng sang trọng. Với đường k&iacute;nh 40mm đi c&ugrave;ng mặt k&iacute;nh saphire chống xước&nbsp; cỗ m&aacute;y thời gian n&agrave;y lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu của c&aacute;c qu&yacute; &ocirc;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/4(5).jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/4(5).jpg\" /></a></p>\r\n\r\n<p>Ch&uacute;ng ta đều biết thời gian l&agrave; qu&yacute; b&aacute;u, một chiếc đồng hồ l&agrave;m qu&agrave; tặng thật sự c&oacute; gi&aacute; trị v&agrave; &yacute; nghĩa m&agrave; kh&ocirc;ng vật phẩm g&igrave; c&oacute; thể thay thế. V&agrave; chắc hẳn một chiếc đồng hồ ch&iacute;nh hiệu kh&ocirc;ng phải l&agrave; một mặt h&agrave;ng xa xỉ bởi ở tầm gi&aacute; n&agrave;o th&igrave; người đeo đồng hồ l&agrave; người chỉn chu, c&oacute; kế hoạch, kiểm so&aacute;t thời gian v&agrave; cuộc sống của m&igrave;nh.</p>', '2023-03-29 23:55:21', 1, 1, NULL),
(12, 'Cách đơn giản để khử mùi dây da đồng hồ', 'cach-don-gian-de-khu-mui-day-da-dong-ho', 0, 1, 2, 0, 'Một trong những sản phẩm được người tiêu dùng ưa chuộng chính là đồng hồ dây da.Tuy nhiên, sau một thời gian sử dụng thì dây da đồng hồ thường có mùi do mồ hôi tay hoặc bảo quản dây da không đúng cách. Và câu hỏi là làm thế nào để có thể khử được hết mùi hôi và bảo quản dây da thật tốt?', '2023-03-30__1.jpg', '<p>Trước hết nguy&ecirc;n nh&acirc;n thường gặp l&agrave; do mồ h&ocirc;i tay ra khi bạn đeo đồng hồ v&agrave; bị ngấm v&agrave;o c&aacute;c khe hở của chiếc đồng hồ, hoặc ch&uacute;ng b&aacute;m v&agrave;o đồng hồ.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong-ho-day-da.jpg\"><img alt=\"Đồng hồ dây da\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/dong-ho-day-da.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong><em>L&agrave;m thế n&agrave;o để triệt m&ugrave;i cho chiếc đồng hồ của bạn?</em></strong></h2>\r\n\r\n<h3><em>D&ugrave;ng giấm trắng</em></h3>\r\n\r\n<p>Giấm l&agrave; một chất lỏng c&oacute; vị chua, được h&igrave;nh th&agrave;nh từ sự l&ecirc;n men của rượu etylic c&oacute; t&aacute;c dụng khử m&ugrave;i rất hiệu quả v&agrave; c&oacute; t&iacute;nh axit cao.</p>\r\n\r\n<h3><em>Sử dụng g&oacute;i h&uacute;t ẩm</em></h3>\r\n\r\n<p>C&aacute;c g&oacute;i h&uacute;t ẩm ch&iacute;nh l&agrave; một biện ph&aacute;p sử dụng v&ocirc; c&ugrave;ng hữu hiệu v&agrave;o l&uacute;c n&agrave;y. Khi bảo quản chiếc&nbsp;<a href=\"http://www.dangquangwatch.vn/sp/Day-da/0-0-1-0-0-0-0.html\">đồng hồ d&acirc;y da</a>&nbsp;bạn c&oacute; thể để một g&oacute;i h&uacute;t ẩm dưới để cho chiếc đồng hồ của bạn ở trong t&igrave;nh trạng kh&ocirc; r&aacute;o.</p>\r\n\r\n<h3><em>Sử dụng m&aacute;y khử m&ugrave;i Ozone</em></h3>\r\n\r\n<p>Nếu bạn c&oacute; m&aacute;y khử m&ugrave;i Ozone th&igrave; việc xử l&yacute; n&oacute; trở n&ecirc;n dễ d&agrave;ng hơn. Sử dụng m&aacute;y khử m&ugrave;i nhanh ch&oacute;ng m&agrave; hiệu quả hơn rất nhiều.</p>\r\n\r\n<p><strong><em>Một số lưu &yacute; kh&aacute;c</em></strong></p>\r\n\r\n<p>&nbsp;&nbsp; Nếu ngo&agrave;i ra, bạn muốn chiếc đồng hồ c&oacute; thể vừa sạch m&ugrave;i vừa giữ được đồng hồ như mới: d&ugrave;ng giấy ướt lau sơ qua d&acirc;y da,&nbsp;<strong><a href=\"http://www.dangquangwatch.vn/article/261/Cach-ve-sinh-va-bao-quan-dong-ho-deo-tay.html\">vệ sinh đồng hồ</a></strong>&nbsp;sạch sẽ bằng b&agrave;n chải l&ocirc;ng mềm trước khi khử m&ugrave;i.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/su-dung-ban-chai-lam-sach-dong-ho(1).jpg\"><img alt=\"sử dụng bàn chải lông mềm để làm sạch đồng hồ\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/su-dung-ban-chai-lam-sach-dong-ho(1).jpg\" /></a></p>\r\n\r\n<p>Sau khi khử m&ugrave;i xong bạn c&oacute; thể sử dụng xi để đ&aacute;nh b&oacute;ng cho chiếc đồng hồ, hay sử dụng những khăn để lau lại to&agrave;n bộ mặt đồng hồ cho th&ecirc;m phần s&aacute;ng b&oacute;ng.</p>\r\n\r\n<p>Kh&ocirc;ng n&ecirc;n mang d&acirc;y da đồng hồ ra phơi nắng. L&agrave;m c&aacute;ch&nbsp; n&agrave;y cũng c&oacute; thể l&agrave;m cho đồng hồ hết m&ugrave;i h&ocirc;i. Tuy nhi&ecirc;n, sẽ l&agrave;m hỏng d&acirc;y da, cong v&ecirc;nh, nứt nẻ d&acirc;y da.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/khong-nen-phoi-nang-dong-ho(1).png\"><img alt=\"Không nên phơi đồng hồ dưới ánh nắng trực tiếp\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/khong-nen-phoi-nang-dong-ho(1).png\" /></a></p>\r\n\r\n<p><em>Kh&ocirc;ng n&ecirc;n để d&acirc;y da đồng hồ tiếp x&uacute;c trực tiếp với &aacute;nh nắng</em></p>\r\n\r\n<p>&nbsp;&nbsp; Bạn cũng kh&ocirc;ng n&ecirc;n sử dụng h&oacute;a chất l&agrave;m sạch hay chất tẩy rửa để khử m&ugrave;i h&ocirc;i n&oacute; c&oacute; thể l&agrave;m hỏng d&acirc;y da hay ăn m&ograve;n bề mặt đồng hồ g&acirc;y mất thẩm mỹ</p>\r\n\r\n<p><a href=\"https://dangquangwatch.vn/lib/ckfinder/images/hoa-chat-tay-rua(1).jpg\"><img alt=\"Không sử dụng hóa chất tẩy rửa cho đồng hồ dây da\" src=\"https://dangquangwatch.vn/lib/ckfinder/images/hoa-chat-tay-rua(1).jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;ch tốt nhất bạn h&atilde;y mang đến c&aacute;c trung t&acirc;m bảo dưỡng tại c&aacute;c cửa h&agrave;ng của&nbsp;<a href=\"http://www.dangquangwatch.vn/\">Đăng Quang Watch</a>&nbsp;để đảm bảo sự an to&agrave;n cho sản phẩm. H&atilde;y để Đăng Quang Watch gi&uacute;p chiếc đồng hồ trở th&agrave;nh niềm tự h&agrave;o của bạn.</p>\r\n\r\n<p>Tham khảo th&ecirc;m c&aacute;c&nbsp;<a href=\"http://www.dangquangwatch.vn/sp/t-1/Dong-ho-nam.html\">mẫu đồng hồ nam</a>&nbsp;v&agrave;&nbsp;<a href=\"http://www.dangquangwatch.vn/sp/t-2/Dong-ho-nu.html\">đồng hồ nữ</a>&nbsp;tại đ&acirc;y</p>\r\n\r\n<p>B&agrave;i viết kh&aacute;c</p>', '2023-03-29 23:55:58', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(4, 'Đồng hồ cơ', 'dong-ho-co', 2, 1, '2023-03-30 19:52:14', '2023-03-30 01:39:32'),
(5, 'Đồng hồ điện tử', 'dong-ho-dien-tu', 2, 1, '2023-03-30 19:57:20', '2023-03-30 01:39:29'),
(6, 'Dây da', 'day-da', 3, 1, '2023-04-01 02:50:52', '2023-03-30 01:39:26'),
(7, 'Thép không gỉ', 'thep-khong-gi', 3, 1, '2023-03-31 19:58:02', '2023-03-30 01:39:23'),
(8, 'Mạ vàng', 'ma-vang', 3, 1, '2023-03-31 19:58:11', '2023-03-30 01:39:19'),
(9, 'Mạ đồng', 'ma-dong', 3, 1, '2023-03-31 19:58:16', '2023-03-30 01:39:15'),
(10, 'Cao su', 'cao-su', 3, 1, '2023-03-31 19:58:27', '2023-03-30 01:39:11'),
(11, 'Dây nhựa', 'day-nhua', 3, 1, '2023-03-31 19:58:33', '2023-03-30 01:39:05'),
(12, 'Dây vải', 'day-vai', 3, 1, '2023-03-31 19:58:39', '2023-03-30 01:38:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(6, 'Đồng hồ nam', 'dong-ho-nam', '2023-03-30__nam.jpeg', NULL, NULL, 0, 1, 1, '2023-03-29 23:59:44', '2023-03-29 23:59:56'),
(7, 'Đồng hồ nữ', 'dong-ho-nu', '2023-03-30__nu.png', NULL, NULL, 0, 1, 1, '2023-03-30 00:00:13', '2023-03-30 00:00:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`) VALUES
(2, 'abc', '0389163151', 'nguyenhoang011101@gmail.com', 'abc', '2023-04-24 19:07:01', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `country`
--

INSERT INTO `country` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Việt Nam', '2023-03-30__2020-05-28-vietnam-flag.jpg', '2023-03-30 14:01:28', '2023-03-30 01:34:21'),
(2, 'Anh', '2023-03-30__2020-05-28-5.png', '2023-03-30 13:05:22', '2023-03-30 01:36:31'),
(3, 'Thuỵ Sĩ', '2023-03-30__2020-05-28-2.png', '2023-03-30 12:15:22', '2023-03-30 01:36:44'),
(4, 'Mỹ', '2023-03-30__2020-05-28-6.png', '2023-03-30 12:55:01', '2023-03-30 01:36:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(5, 'banner', '2023-03-30__2020-03-26-523913693-dong-ho-thuy-sy61.jpg', NULL, 1, 0, 0, 0, '2023-03-30 01:52:00', '2023-03-30 01:52:00'),
(6, 'banner', '2023-03-30__2020-03-26-1733889535-bannertutkmoi.jpg', NULL, 0, 1, 0, 0, '2023-03-30 01:52:08', '2023-03-30 01:52:08'),
(7, 'banner', '2023-03-30__2020-03-26-42709734-dong-ho-nu-thoi-trang3.jpg', NULL, 0, 0, 1, 1, '2023-03-30 01:52:14', '2023-03-30 01:52:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(1, 'asd', 'asd', 'asd', 1, '2023-05-05 19:47:37', '2023-06-13 02:47:54'),
(2, 'đồng hồ đẳng cấp', 'dong-ho-dang-cap', NULL, 0, '2023-05-05 19:48:02', '2023-06-13 01:42:33'),
(3, 'masy tinh', 'masy-tinh', NULL, 0, '2023-05-05 19:48:04', '2023-06-13 01:42:40'),
(4, 'Life style', 'life-style', NULL, 0, '2023-05-05 19:48:06', '2023-06-13 01:42:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'TIN TỨC--SỰ KIỆN', 'tin-tuc-su-kien', NULL, NULL, NULL, 1, 1, '2023-03-29 20:05:21', '2023-03-30 01:45:01'),
(2, 'KIẾN THỨC ĐỒNG HỒ', 'kien-thuc-dong-ho', NULL, NULL, NULL, 1, 1, '2023-05-29 20:05:33', '2023-03-30 01:45:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2023_06_1_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(8, 8, 3, 1, 1, 461340, NULL, NULL),
(9, 8, 4, 4, 1, 5905920, NULL, NULL),
(11, 9, 2, 20, 1, 4800000, NULL, NULL),
(12, 10, 2, 20, 1, 4800000, NULL, NULL),
(13, 11, 1, 12, 1, 3784000, NULL, NULL),
(14, 12, 4, 4, 1, 5905920, NULL, NULL),
(15, 13, 3, 1, 1, 461340, NULL, NULL),
(16, 14, 1, 12, 1, 3784000, NULL, NULL),
(17, 15, 3, 1, 1, 461340, NULL, NULL),
(18, 19, 2, 20, 1, 4800000, NULL, NULL),
(19, 20, 1, 12, 1, 3784000, NULL, NULL),
(20, 21, 2, 20, 1, 4800000, NULL, NULL),
(21, 22, 4, 4, 2, 5905920, NULL, NULL),
(22, 23, 2, 20, 1, 4800000, NULL, NULL),
(23, 24, 1, 12, 1, 3784000, NULL, NULL),
(24, 25, 1, 12, 1, 3784000, NULL, NULL),
(25, 25, 2, 20, 1, 4800000, NULL, NULL),
(32, 34, 7, 2, 1, 3626000, NULL, NULL),
(33, 35, 7, 2, 1, 3626000, NULL, NULL),
(34, 36, 7, 2, 1, 3626000, NULL, NULL),
(35, 37, 7, 2, 1, 3626000, NULL, NULL),
(36, 38, 7, 2, 1, 3626000, NULL, NULL),
(37, 39, 3, 1, 1, 461340, NULL, NULL),
(38, 40, 2, 20, 1, 4800000, NULL, NULL),
(39, 41, 2, 20, 1, 4800000, NULL, NULL),
(40, 42, 4, 4, 2, 5905920, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hoangnh2k1@gmail.com', '$2y$10$SedlnhpjnzO7Lyv9YTOJE.sVuT/cFhbcLFGFEpAsrFYzQuhoNSD5a', '2020-04-03 01:00:00'),
('hoangnh2k1@gmail.com', '$2y$10$CFv2K7OF3ZENOR/QgrHY8e/H.EKwb8UYkyIyO4G8zQUc7EEeWzhbK', '2020-04-20 21:10:05'),
('hoangnh2k1@gmail.com', '$2y$10$Qb1QGqA5j.qaJq34qZnKl.Xfb0Ft0fIuaf.cCL1vmF57aOYnZkJny', '2020-06-08 18:30:55'),
('abca@gmail.com', '$2y$10$L3gOnX/IbJzvo/6L73uh1.f3InaRDgRcvSZUu2Yl.fV56sGIM6R0G', '2023-03-28 02:43:12'),
('truongthang0410@gmail.com', '$2y$10$tXkVgVg/gR64ZW/fQ/rIKeaMM/FJhjHMAAUBVTOIJZFV/XDKx5A66', '2023-06-16 06:24:31'),
('a@gmail.com', '$2y$10$sstRmGxkXR/YKv6LZm2CoOj9LPR7RKTjOrrhvb8DMCuNMeOL0X6mu', '2023-08-24 21:03:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(20, 'Đồng hồ Q&Q QQ-QA24J102Y', 'dong-ho-qq-qq-qa24j102y', 960000, 0, 6, 0, 50, '2023-03-30__qa24j102y-1593050410.jpg', 2, 1, 1, 0, 'Đường kính mặt mặt: 42 mmChống nước: 3ATMChất liệu mặt kính: Kính cứng chịu lựcBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Q&Q QQ-QA24J102YĐường kính mặt\r\n42 mm\r\nChống nước\r\n3ATM\r\nChất liệu mặt\r\nKính cứng chịu lực\r\nNăng lượng sử dụng\r\nQuartz/Pin\r\nSize dây\r\nChất liệu dây\r\nDây da\r\nChất liệu vỏ\r\nHợp kim thép\r\nKiểu dáng\r\nĐồng hồ Nam\r\nXuất xứ\r\nViệt Nam\r\nChế độ bảo hành\r\nBảo hành quốc tế 01 năm', 0, 0, 0, '2023-03-30 00:05:04', 1, '3ATM', 'Quartz', 1, '2023-03-30 00:09:50'),
(21, 'Đồng hồ Q&Q QQ-QZ00J301Y', 'dong-ho-qq-qq-qz00j301y', 708000, 0, 6, 0, 50, '2023-03-30__qz00j301y-1693187556.jpg', 1, 1, 1, 0, 'Đường kính mặt mặt: 38 mm\r\nChống nước: 3ATM\r\nChất liệu mặt kính: Kính cứng chịu lực\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Q&Q QQ-QZ00J301Y\r\nĐường kính mặt\r\n\r\n38 mm\r\n\r\nChống nước\r\n\r\n3ATM\r\n\r\nChất liệu mặt\r\n\r\nKính cứng chịu lực\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nDây da\r\n\r\nChất liệu vỏ\r\n\r\nHợp kim thép\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 01 năm', 0, 0, 0, '2023-03-30 00:07:37', 1, '3ATM', 'Quartz', 1, '2023-03-30 00:08:33'),
(23, 'Đồng hồ Q&Q QQ-S282J212Y', 'dong-ho-qq-qq-s282j212y', 1470000, 0, 6, 0, 50, '2023-03-30__1263780226-donghonhat17.jpg', 2, 1, 1, 0, 'Đường kính mặt mặt: 40 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Kính cứng chịu lực\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Q&Q QQ-S282J212Y\r\nĐường kính mặt\r\n\r\n40 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nKính cứng chịu lực\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nThép không gỉ\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 01 năm', 0, 0, 0, '2023-03-30 00:14:48', 1, '5ATM', 'Quartz', 1, '2023-03-30 00:17:23'),
(24, 'Đồng hồ Q&Q QQ-S306J322Y', 'dong-ho-qq-qq-s306j322y', 1860000, 0, 6, 0, 50, '2023-03-30__1990998206-s306j322y.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 40 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Kính cứng chịu lực\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Q&Q QQ-S306J322Y\r\nĐường kính mặt\r\n\r\n40 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nKính cứng chịu lực\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nDây da\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 01 năm', 0, 0, 0, '2023-03-30 00:16:54', 1, '5ATM', 'Quartz', 1, '2023-03-30 00:17:25'),
(25, 'Đồng hồ Q&Q QQ-Q978J100Y', 'dong-ho-qq-qq-q978j100y', 732000, 0, 6, 0, 50, '2023-03-30__q978j100y-2102356199.jpg', 1, 1, 1, 0, 'Đường kính mặt mặt: 39 mm\r\nChống nước: 3ATM\r\nChất liệu mặt kính: Kính cứng chịu lực\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Q&Q QQ-Q978J100Y\r\nĐường kính mặt\r\n\r\n39 mm\r\n\r\nChống nước\r\n\r\n3ATM\r\n\r\nChất liệu mặt\r\n\r\nKính cứng chịu lực\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nDây da\r\n\r\nChất liệu vỏ\r\n\r\nHợp kim thép\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 01 năm', 0, 0, 0, '2023-03-30 00:18:51', 1, '3ATM', 'Quartz', 1, '2023-03-30 00:22:32'),
(26, 'Đồng hồ Nam Q&Q QQ-A194-201Y', 'dong-ho-nam-qq-qq-a194-201y', 1416000, 0, 6, 0, 50, '2023-03-30__a194-201y-31925022.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 44 mm\r\nChống nước: 5ATM\r\nChất liệu mặt kính: Kính cứng chịu lực\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Nam Q&Q QQ-A194-201Y\r\nĐường kính mặt\r\n\r\n44 mm\r\n\r\nChống nước\r\n\r\n5ATM\r\n\r\nChất liệu mặt\r\n\r\nKính cứng chịu lực\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nHợp kim thép\r\n\r\nChất liệu vỏ\r\n\r\nHợp kim thép\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 01 năm', 0, 0, 0, '2023-03-30 00:20:23', 1, '5ATM', 'Quartz', 1, '2023-03-30 00:22:31'),
(27, 'Đồng hồ Q&Q QQ-S278J304Y', 'dong-ho-qq-qq-s278j304y', 1470000, 0, 6, 0, 50, '2023-03-30__1561767817-dong-ho-chinh-hang-51.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 40 mmChống nước: 5 ATMChất liệu mặt kính: Kính cứng chịu lựcBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Q&Q QQ-S278J304YĐường kính mặt\r\n40 mm\r\nChống nước\r\n5 ATM\r\nChất liệu mặt\r\nKính cứng chịu lực\r\nNăng lượng sử dụng\r\nQuartz/Pin\r\nSize dây\r\nChất liệu dây\r\nDây da\r\nChất liệu vỏ\r\nThép không gỉ\r\nKiểu dáng\r\nĐồng hồ Nam\r\nXuất xứ\r\nVN\r\nChế độ bảo hành\r\nBảo hành quốc tế 01 năm', 0, 0, 0, '2023-03-30 00:22:09', 1, '5ATM', 'Quartz', 1, '2023-03-30 00:22:29'),
(28, 'Đồng hồ Philippe Auguste PA5016F', 'dong-ho-philippe-auguste-pa5016f', 4568000, 0, 6, 0, 5, '2023-03-30__1562192727-dong-ho-chinh-hang47.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 42 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Sapphire\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Philippe Auguste PA5016F\r\nĐường kính mặt\r\n\r\n42 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nSapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\n21 mm\r\n\r\nChất liệu dây\r\n\r\nDây da chính hãng\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nAnh\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 00:26:32', 1, '5ATM', 'Quartz', 2, '2023-03-30 01:32:34'),
(29, 'ĐỒNG HỒ JACQUES LEMANS JL-11-2030/11', 'dong-ho-jacques-lemans-jl-11-203011', 4610000, 0, 6, 0, 5, '2023-03-30__1761617543-dong-ho-nhap-khau32.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 40 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Krysterna crystal ( kính cứng )\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của ĐỒNG HỒ JACQUES LEMANS JL-11-2030/11\r\nĐường kính mặt\r\n\r\n40 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nKrysterna crystal ( kính cứng )\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nStainless Steel\r\n\r\nChất liệu vỏ\r\n\r\nStainless Steel\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nAnh\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 00:28:48', 1, '5ATM', 'Quartz', 2, '2023-03-30 01:32:32'),
(30, 'Đồng hồ Q&Q QQ-S394J222Y', 'dong-ho-qq-qq-s394j222y', 3228000, 0, 6, 0, 50, '2023-03-30__2080006174-dong-ho-nam-qq-s394j222y-1jpg-1622044788.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 42 mm\r\nChống nước: 10 ATM\r\nChất liệu mặt kính: Kính khoáng\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Q&Q QQ-S394J222Y\r\nĐường kính mặt\r\n\r\n42 mm\r\n\r\nChống nước\r\n\r\n10 ATM\r\n\r\nChất liệu mặt\r\n\r\nKính khoáng\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nThép không gỉ\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ nam\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 01 năm', 0, 0, 0, '2023-03-30 00:30:55', 1, '10ATM', 'Quartz', 2, '2023-03-30 01:32:31'),
(31, 'ĐỒNG HỒ PHILIPPE AUGUSTE PA5010D', 'dong-ho-philippe-auguste-pa5010d', 4394000, 0, 6, 0, 5, '2023-03-30__1377592169-dong-ho-chinh-hang33.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 42 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Sapphire\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của ĐỒNG HỒ PHILIPPE AUGUSTE PA5010D\r\nĐường kính mặt\r\n\r\n42 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nSapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\n21 mm\r\n\r\nChất liệu dây\r\n\r\nDây da chính hãng\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 00:32:27', 1, '5ATM', 'Quartz', 1, '2023-03-30 01:32:30'),
(32, 'ĐỒNG HỒ PHILIPPE AUGUSTE PA5016D', 'dong-ho-philippe-auguste-pa5016d', 4568000, 0, 6, 0, 5, '2023-03-30__1745885921-dong-ho-nhap-khau25.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 42 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Sapphire\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của ĐỒNG HỒ PHILIPPE AUGUSTE PA5016D\r\nĐường kính mặt\r\n\r\n42 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nSapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\n21 mm\r\n\r\nChất liệu dây\r\n\r\nDây da chính hãng\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 00:34:06', 1, '5ATM', 'Quartz', 1, '2023-03-30 01:32:29'),
(33, 'Đồng hồ Philippe Auguste PA5025D', 'dong-ho-philippe-auguste-pa5025d', 6151000, 0, 6, 0, 5, '2023-03-30__139370321-dong-ho-chinh-hang43.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 42 mm\r\nChống nước: 10 ATM\r\nChất liệu mặt kính: Sapphire\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Philippe Auguste PA5025D\r\nĐường kính mặt\r\n\r\n42 mm\r\n\r\nChống nước\r\n\r\n10 ATM\r\n\r\nChất liệu mặt\r\n\r\nSapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\n22mm\r\n\r\nChất liệu dây\r\n\r\nDây da chính hãng\r\n\r\nChất liệu vỏ\r\n\r\nStainless Steel\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 00:35:33', 1, '10ATM', 'Quartz', 1, '2023-03-30 01:32:27'),
(34, 'Đồng hồ Jacques Lemans JL-1-1830A', 'dong-ho-jacques-lemans-jl-1-1830a', 6380000, 0, 6, 0, 5, '2023-03-30__688618964-dong-ho-chinh-hang-4.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 42 mm\r\nChống nước: 20ATM\r\nChất liệu mặt kính: Kính cứng chịu lực\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Jacques Lemans JL-1-1830A\r\nĐường kính mặt\r\n\r\n42 mm\r\n\r\nChống nước\r\n\r\n20ATM\r\n\r\nChất liệu mặt\r\n\r\nKính cứng chịu lực\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\n22 mm\r\n\r\nChất liệu dây\r\n\r\nDây da chính hãng\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nANH\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 00:38:00', 1, '20ATM', 'Quartz', 2, '2023-03-30 01:32:05'),
(38, 'STUHRLING ORIGINAL ST-211.33151', 'stuhrling-original-st-21133151', 11125000, 0, 6, 0, 5, '2023-03-30__81351405-dong-ho-nu-thoi-trang-21.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt:\r\nChống nước: 5ATM\r\nChất liệu mặt kính: Krysterna crystal ( kính cứng )\r\nBộ máy: Quartz (Điện tử)', 'Thống số kỹ thuật của STUHRLING ORIGINAL ST-211.33151\r\nĐường kính mặt\r\n\r\n\r\nChống nước\r\n\r\n5ATM\r\n\r\nChất liệu mặt\r\n\r\nKrysterna crystal ( kính cứng )\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz (Điện tử)\r\n\r\nSize dây\r\n\r\n20 mm\r\n\r\nChất liệu dây\r\n\r\nDây da\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nNam\r\n\r\nXuất xứ\r\n\r\nANH\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 00:46:31', 1, '5ATM', 'Quartz', 2, '2023-03-30 01:32:03'),
(39, 'STUHRLING ORIGINAL ST-165A2.334414', 'stuhrling-original-st-165a2334414', 14580000, 0, 6, 0, 0, '2023-03-30__1090904473-dong-ho-nu-thoi-trang-16.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 42 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Krysterna crystal ( kính cứng )\r\nBộ máy: Automatic (Cơ tự động)', 'Thống số kỹ thuật của STUHRLING ORIGINAL ST-165A2.334414\r\nĐường kính mặt\r\n\r\n42 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nKrysterna crystal ( kính cứng )\r\n\r\nNăng lượng sử dụng\r\n\r\nAutomatic (Cơ tự động)\r\n\r\nSize dây\r\n\r\n22 mm\r\n\r\nChất liệu dây\r\n\r\nStainless Steel\r\n\r\nChất liệu vỏ\r\n\r\nStainless Steel\r\n\r\nKiểu dáng\r\n\r\nNam\r\n\r\nXuất xứ\r\n\r\nANH\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 00:48:14', 1, '5ATM', 'Quartz', 2, '2023-03-30 01:32:01'),
(41, 'STUHRLING ORIGINAL ST-894.04', 'stuhrling-original-st-89404', 16430000, 0, 6, 0, 5, '2023-03-30__.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 42 mmChống nước: 5 ATMChất liệu mặt kính: Krysterna crystal ( kính cứng )Bộ máy: Quartz/Pin', 'Thống số kỹ thuật của STUHRLING ORIGINAL ST-894.04Đường kính mặt\r\n42 mm\r\nChống nước\r\n5 ATM\r\nChất liệu mặt\r\nKrysterna crystal ( kính cứng )\r\nNăng lượng sử dụng\r\nQuartz/Pin\r\nSize dây\r\nChất liệu dây\r\nDây cao su\r\nChất liệu vỏ\r\nStainless Steel\r\nKiểu dáng\r\nĐồng hồ Nam\r\nXuất xứ\r\nVN\r\nChế độ bảo hành\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 00:54:41', 1, '5ATM', 'Quartz', 1, '2023-03-30 01:31:58'),
(42, 'Đồng hồ Philippe Auguste PA5001F', 'dong-ho-philippe-auguste-pa5001f', 11359000, 0, 6, 0, 5, '2023-03-30__2078177429-dong-ho-nhap-khau6.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 40 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Sapphire\r\nBộ máy: Automatic (Cơ tự động)', 'Thống số kỹ thuật của Đồng hồ Philippe Auguste PA5001F\r\nĐường kính mặt\r\n\r\n40 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nSapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nAutomatic (Cơ tự động)\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nStainless Steel\r\n\r\nChất liệu vỏ\r\n\r\nStainless Steel\r\n\r\nKiểu dáng\r\n\r\nNam\r\n\r\nXuất xứ\r\n\r\nANH\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 01:01:04', 1, '5ATM', 'Quartz', 2, '2023-03-30 01:31:54'),
(43, 'ĐỒNG HỒ EPOS SWISS E-3440.322.24.14.25', 'dong-ho-epos-swiss-e-3440322241425', 70300000, 0, 6, 0, 5, '2023-03-30__1464694759-dong-ho-chinh-hang-4.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 42 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Sapphire\r\nBộ máy: Automatic ( cơ tự động )', 'Thống số kỹ thuật của ĐỒNG HỒ EPOS SWISS E-3440.322.24.14.25\r\nĐường kính mặt\r\n\r\n42 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nSapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nAutomatic ( cơ tự động )\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nStainless Steel\r\n\r\nChất liệu vỏ\r\n\r\nStainless Steel\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nThụy Sỹ\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 01:05:11', 1, '5ATM', 'Quartz', 3, '2023-03-30 01:31:52'),
(44, 'Đồng hồ Tourbillon Memorigin 8668', 'dong-ho-tourbillon-memorigin-8668', 168000000, 0, 6, 0, 5, '2023-03-30__1016637396-untitled-1.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 42mm\r\nChống nước: 5ATM\r\nChất liệu mặt kính: Sapphire tinh thể\r\nBộ máy: Lên dây cót bằng tay (Handwinding)', 'Thống số kỹ thuật của Đồng hồ Tourbillon Memorigin 8668\r\nĐường kính mặt\r\n\r\n42mm\r\n\r\nChống nước\r\n\r\n5ATM\r\n\r\nChất liệu mặt\r\n\r\nSapphire tinh thể\r\n\r\nNăng lượng sử dụng\r\n\r\nLên dây cót bằng tay (Handwinding)\r\n\r\nSize dây\r\n\r\n21 mm\r\n\r\nChất liệu dây\r\n\r\nDây da\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nam\r\n\r\nXuất xứ\r\n\r\nHong Kong\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 01:09:35', 1, '5ATM', 'Quartz', 4, '2023-03-30 01:31:52'),
(45, 'Đồng hồ Q&Q QQ-S279J212Y', 'dong-ho-qq-qq-s279j212y', 1470000, 0, 7, 0, 50, '2023-03-30__1227428871-dong-ho-chinh-hang-45.jpg', 1, 1, 1, 0, 'Đường kính mặt mặt: 30 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Kính cứng chịu lực\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Q&Q QQ-S279J212Y\r\nĐường kính mặt\r\n\r\n30 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nKính cứng chịu lực\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nThép không gỉ\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nữ\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 01 năm', 1, 5, 5, '2023-03-30 01:11:34', 1, '5ATM', 'Quartz', 1, '2023-04-21 06:34:41'),
(46, 'Đồng hồ Q&Q QQ-LLA2J002Y', 'dong-ho-qq-qq-lla2j002y', 708000, 0, 7, 0, 50, '2023-03-30__964292318-dong-ho-the-thao-qq-lla2j002yjpg-1628933777.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 20 mm\r\nChống nước: 3 ATM\r\nChất liệu mặt kính: Krysterna crystal ( kính cứng )\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Q&Q QQ-LLA2J002Y\r\nĐường kính mặt\r\n\r\n20 mm\r\n\r\nChống nước\r\n\r\n3 ATM\r\n\r\nChất liệu mặt\r\n\r\nKrysterna crystal ( kính cứng )\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nDây cao su\r\n\r\nChất liệu vỏ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ nữ\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 01 năm', 0, 0, 0, '2023-03-30 01:12:44', 1, '3ATM', 'Quartz', 1, '2023-03-30 01:31:49'),
(47, 'Đồng hồ Q&Q QQ-S297J201Y', 'dong-ho-qq-qq-s297j201y', 1890000, 0, 7, 0, 50, '2023-03-30__1515923572-dong-ho-chinh-hang-40.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 30 mm\r\nChống nước: 5ATM\r\nChất liệu mặt kính: Kính cứng chịu lực\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Q&Q QQ-S297J201Y\r\nĐường kính mặt\r\n\r\n30 mm\r\n\r\nChống nước\r\n\r\n5ATM\r\n\r\nChất liệu mặt\r\n\r\nKính cứng chịu lực\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nThép không gỉ\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nữ\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 01 năm', 0, 0, 0, '2023-03-30 01:14:06', 1, '5ATM', 'Quartz', 1, '2023-03-30 01:31:48'),
(48, 'Đồng hồ Casio CA-LTP-VT01L-1BUDF', 'dong-ho-casio-ca-ltp-vt01l-1budf', 1036000, 0, 7, 0, 5, '2023-03-30__edifice-casio-ca-efr-526l-7avudfjpg-1628060035-1912559278.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 34mm\r\nChống nước: 3ATM\r\nChất liệu mặt kính: Kính khoáng\r\nBộ máy: Quartz (Pin)', 'Thống số kỹ thuật của Đồng hồ Casio CA-LTP-VT01L-1BUDF\r\nĐường kính mặt\r\n\r\n34mm\r\n\r\nChống nước\r\n\r\n3ATM\r\n\r\nChất liệu mặt\r\n\r\nKính khoáng\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz (Pin)\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nChất liệu vỏ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ nữ\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 01 năm', 0, 0, 0, '2023-03-30 01:15:28', 1, '3ATM', 'Quartz', 1, '2023-03-30 01:31:44'),
(49, 'Đồng hồ Diamond D DM63055', 'dong-ho-diamond-d-dm63055', 3980000, 0, 7, 0, 5, '2023-03-30__1874911582-dong-ho-diamond-d-dm63055.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 28mm\r\nChống nước: 3ATM\r\nChất liệu mặt kính: Kính sapphire\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Diamond D DM63055\r\nĐường kính mặt\r\n\r\n28mm\r\n\r\nChống nước\r\n\r\n3ATM\r\n\r\nChất liệu mặt\r\n\r\nKính sapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\n12mm\r\n\r\nChất liệu dây\r\n\r\nHợp kim\r\n\r\nChất liệu vỏ\r\n\r\nHợp kim , đính đá swarovsky\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nữ\r\n\r\nXuất xứ\r\n\r\nANH\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 10 năm', 0, 0, 0, '2023-03-30 01:17:22', 1, '3ATM', 'Quartz', 2, '2023-03-30 01:31:42'),
(50, 'Đồng hồ Jacques Lemans JL-1-1571A', 'dong-ho-jacques-lemans-jl-1-1571a', 2870000, 0, 7, 0, 5, '2023-03-30__1578607996-dong-ho-nu-thoi-trang-33.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 37 mm\r\nChống nước: 10 ATM\r\nChất liệu mặt kính: hardened crystex crystal (Kính cứng )\r\nBộ máy: Quartz (Điện tử)', 'Thống số kỹ thuật của Đồng hồ Jacques Lemans JL-1-1571A\r\nĐường kính mặt\r\n\r\n37 mm\r\n\r\nChống nước\r\n\r\n10 ATM\r\n\r\nChất liệu mặt\r\n\r\nhardened crystex crystal (Kính cứng )\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz (Điện tử)\r\n\r\nSize dây\r\n\r\n17 mm\r\n\r\nChất liệu dây\r\n\r\nDây da\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ đính đá\r\n\r\nKiểu dáng\r\n\r\nNữ\r\n\r\nXuất xứ\r\n\r\nANH\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 01:18:35', 1, '10ATM', 'Quartz', 2, '2023-03-30 01:31:40'),
(51, 'Đồng hồ Diamond D DM36375IG-W', 'dong-ho-diamond-d-dm36375ig-w', 3780000, 0, 7, 0, 5, '2023-03-30__700051371-1021339734-dong-ho-diamond-d-dm36375ig-w.jpg', 0, 1, 1, 0, '3.591.000đ\r\n3.780.000đ\r\n-5%\r\nĐường kính mặt mặt: 30mm\r\nChống nước: 3ATM\r\nChất liệu mặt kính: Kính sapphire\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Diamond D DM36375IG-W\r\nĐường kính mặt\r\n\r\n30mm\r\n\r\nChống nước\r\n\r\n3ATM\r\n\r\nChất liệu mặt\r\n\r\nKính sapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\n18mm\r\n\r\nChất liệu dây\r\n\r\nDây da\r\n\r\nChất liệu vỏ\r\n\r\nHợp kim mạ PVD , đính đá swarovsky\r\n\r\nKiểu dáng\r\n\r\nNữ\r\n\r\nXuất xứ\r\n\r\nVN\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 10 năm', 0, 0, 0, '2023-03-30 01:19:54', 1, '3ATM', 'Quartz', 1, '2023-03-30 01:31:35'),
(52, 'Đồng hồ Diamond D DM5308B5IG', 'dong-ho-diamond-d-dm5308b5ig', 5500000, 0, 7, 0, 5, '2023-03-30__2127487811-dong-ho-diamond-d-dm5308b5ig.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 24mm\r\nChống nước: 3ATM\r\nChất liệu mặt kính: Kính sapphire\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Đồng hồ Diamond D DM5308B5IG\r\nĐường kính mặt\r\n\r\n24mm\r\n\r\nChống nước\r\n\r\n3ATM\r\n\r\nChất liệu mặt\r\n\r\nKính sapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\n8mm\r\n\r\nChất liệu dây\r\n\r\nHợp kim mạ PVD , đính đá swarovsky\r\n\r\nChất liệu vỏ\r\n\r\nHợp kim mạ PVD , đính đá swarovsky\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nữ\r\n\r\nXuất xứ\r\n\r\nANH\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 10 năm', 0, 0, 0, '2023-03-30 01:21:57', 1, '3ATM', 'Quartz', 2, '2023-03-30 01:31:37'),
(53, 'Stuhrling Original ST-433.01', 'stuhrling-original-st-43301', 7430000, 0, 7, 0, 5, '2023-03-30__.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 39mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Krysterna crystal ( kính cứng )\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của Stuhrling Original ST-433.01\r\nĐường kính mặt\r\n\r\n39mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nKrysterna crystal ( kính cứng )\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nDây da\r\n\r\nChất liệu vỏ\r\n\r\nStainless Steel\r\n\r\nKiểu dáng\r\n\r\nNữ\r\n\r\nXuất xứ\r\n\r\nANH\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 01:23:26', 1, '5ATM', 'Quartz', 2, '2023-03-30 01:31:32'),
(54, 'Đồng hồ Atlantic Swiss AT-29038.45.08MB', 'dong-ho-atlantic-swiss-at-290384508mb', 11580000, 0, 7, 0, 5, '2023-03-30__829699240-dong-ho-chinh-hang-4.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 34mm\r\nChống nước: 3 ATM\r\nChất liệu mặt kính: Sapphire\r\nBộ máy: Quatz ( Máy pin )', 'Thống số kỹ thuật của Đồng hồ Atlantic Swiss AT-29038.45.08MB\r\nĐường kính mặt\r\n\r\n34mm\r\n\r\nChống nước\r\n\r\n3 ATM\r\n\r\nChất liệu mặt\r\n\r\nSapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nQuatz ( Máy pin )\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nThép không gỉ mạ vàng PVD\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ mạ vàng PVD\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ nữ\r\n\r\nXuất xứ\r\n\r\nThụy Sỹ\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 01:25:45', 1, '3ATM', 'Quartz', 3, '2023-03-30 01:31:31'),
(55, 'STUHRLING ORIGINAL ST-672.02', 'stuhrling-original-st-67202', 10310000, 0, 7, 0, 5, '2023-03-30__.jpg', 0, 1, 1, 0, 'Đường kính mặt mặt: 37 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Krysterna crystal ( kính cứng )\r\nBộ máy: Quartz/Pin', 'Thống số kỹ thuật của STUHRLING ORIGINAL ST-672.02\r\nĐường kính mặt\r\n\r\n37 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nKrysterna crystal ( kính cứng )\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz/Pin\r\n\r\nSize dây\r\n\r\nChất liệu dây\r\n\r\nStainless Steel\r\n\r\nChất liệu vỏ\r\n\r\nKiểu dáng\r\n\r\nNữ\r\n\r\nXuất xứ\r\n\r\nThuỵ Sĩ\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 01:27:05', 1, '5ATM', 'Quartz', 3, '2023-03-30 01:31:30'),
(56, 'Đồng hồ Epos Swiss E-8000.700.20.85.30 Diamond', 'dong-ho-epos-swiss-e-8000700208530-diamond', 20800000, 0, 7, 0, 5, '2023-03-30__288802103-dong-ho-nu-thuy-sy3.jpg', 1, 1, 1, 0, 'Đường kính mặt mặt: 34mm\r\nChống nước: 3ATM\r\nChất liệu mặt kính: Kính sapphire\r\nBộ máy: Quartz (Điện tử)', 'Thống số kỹ thuật của Đồng hồ Epos Swiss E-8000.700.20.85.30 Diamond\r\nĐường kính mặt\r\n\r\n34mm\r\n\r\nChống nước\r\n\r\n3ATM\r\n\r\nChất liệu mặt\r\n\r\nKính sapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nQuartz (Điện tử)\r\n\r\nSize dây\r\n\r\n16mm\r\n\r\nChất liệu dây\r\n\r\nThép không gỉ\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ Nữ\r\n\r\nXuất xứ\r\n\r\nThụy Sỹ\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 1, 1, 1, '2023-03-30 01:28:43', 1, '3ATM', 'Quartz', 3, '2023-04-21 06:35:44'),
(57, 'Đồng hồ Epos Swiss E-4390.155.20.25.30', 'dong-ho-epos-swiss-e-4390155202530', 57300000, 0, 7, 0, 5, '2023-03-30__dong-ho-nu-thuy-sy19-1203177555.jpg', 1, 1, 1, 0, 'Đường kính mặt mặt: 34 mm\r\nChống nước: 5 ATM\r\nChất liệu mặt kính: Sapphire\r\nBộ máy: Automatic', 'Thống số kỹ thuật của Đồng hồ Epos Swiss E-4390.155.20.25.30\r\nĐường kính mặt\r\n\r\n34 mm\r\n\r\nChống nước\r\n\r\n5 ATM\r\n\r\nChất liệu mặt\r\n\r\nSapphire\r\n\r\nNăng lượng sử dụng\r\n\r\nAutomatic\r\n\r\nSize dây\r\n\r\n16 mm\r\n\r\nChất liệu dây\r\n\r\nThép không gỉ\r\n\r\nChất liệu vỏ\r\n\r\nThép không gỉ\r\n\r\nKiểu dáng\r\n\r\nĐồng hồ nữ\r\n\r\nXuất xứ\r\n\r\nMỸ\r\n\r\nChế độ bảo hành\r\n\r\nBảo hành quốc tế 02 năm', 0, 0, 0, '2023-03-30 01:30:50', 1, '5ATM', 'Quartz', 4, '2023-03-30 01:31:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(4, 6, 4),
(5, 6, 7),
(14, 5, 4),
(15, 5, 6),
(26, 4, 4),
(27, 4, 8),
(28, 8, 4),
(29, 8, 6),
(40, 10, 4),
(41, 10, 8),
(42, 11, 4),
(43, 11, 7),
(44, 11, 8),
(49, 13, 4),
(50, 13, 8),
(51, 12, 4),
(52, 12, 9),
(53, 7, 4),
(54, 7, 7),
(55, 7, 9),
(62, 15, 4),
(63, 15, 9),
(64, 17, 4),
(65, 17, 8),
(66, 16, 4),
(67, 16, 8),
(68, 9, 5),
(69, 9, 10),
(74, 18, 4),
(75, 18, 5),
(76, 18, 6),
(77, 18, 12),
(81, 19, 4),
(82, 19, 6),
(83, 19, 8),
(86, 21, 4),
(87, 21, 6),
(88, 20, 4),
(89, 20, 6),
(92, 22, 4),
(93, 22, 7),
(94, 23, 4),
(95, 23, 7),
(96, 24, 4),
(97, 24, 6),
(98, 25, 4),
(99, 25, 6),
(100, 26, 4),
(101, 26, 7),
(104, 27, 4),
(105, 27, 6),
(106, 28, 4),
(107, 28, 6),
(108, 29, 4),
(109, 29, 7),
(110, 30, 4),
(111, 30, 5),
(112, 30, 6),
(113, 30, 7),
(114, 30, 8),
(115, 30, 9),
(116, 31, 4),
(117, 31, 5),
(118, 31, 6),
(119, 31, 7),
(120, 31, 8),
(121, 32, 4),
(122, 32, 6),
(123, 32, 8),
(124, 32, 9),
(125, 33, 4),
(126, 33, 5),
(127, 33, 6),
(128, 34, 4),
(129, 34, 5),
(130, 34, 6),
(131, 34, 7),
(132, 34, 10),
(133, 35, 4),
(134, 35, 5),
(135, 35, 7),
(136, 35, 8),
(137, 35, 9),
(138, 36, 4),
(139, 36, 5),
(140, 36, 6),
(141, 36, 10),
(142, 37, 4),
(143, 37, 6),
(144, 38, 5),
(145, 38, 6),
(146, 39, 4),
(147, 39, 8),
(148, 39, 9),
(156, 40, 4),
(157, 40, 5),
(158, 40, 6),
(159, 40, 10),
(160, 40, 12),
(161, 41, 4),
(162, 41, 10),
(163, 42, 4),
(164, 42, 7),
(165, 42, 8),
(166, 43, 4),
(167, 43, 6),
(168, 44, 4),
(169, 44, 6),
(170, 45, 4),
(171, 45, 7),
(172, 46, 5),
(173, 46, 10),
(174, 47, 4),
(175, 47, 7),
(176, 47, 9),
(177, 48, 4),
(178, 48, 6),
(179, 49, 4),
(180, 49, 7),
(181, 49, 8),
(182, 49, 9),
(183, 50, 5),
(184, 50, 6),
(185, 51, 4),
(186, 51, 6),
(187, 51, 8),
(188, 52, 4),
(189, 52, 7),
(190, 52, 8),
(191, 52, 9),
(192, 53, 4),
(193, 53, 6),
(194, 53, 8),
(195, 53, 9),
(196, 53, 10),
(197, 54, 4),
(198, 54, 7),
(199, 54, 8),
(200, 54, 9),
(201, 55, 4),
(202, 55, 7),
(203, 55, 8),
(204, 56, 5),
(205, 56, 6),
(206, 56, 7),
(207, 56, 10),
(208, 57, 4),
(209, 57, 5),
(210, 57, 7),
(211, 57, 8),
(212, 57, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(2, 9, 2),
(6, 10, 2),
(7, 11, 2),
(11, 14, 2),
(12, 13, 2),
(13, 12, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `pi_name`, `pi_slug`, `pi_product_id`, `created_at`, `updated_at`) VALUES
(4, '1.jpg', '2020-05-04__1jpg.jpg', 5, '2020-05-03 20:13:53', NULL),
(5, '2.jpg', '2020-05-04__2jpg.jpg', 5, '2020-05-03 20:14:04', NULL),
(6, '3.jpg', '2020-05-04__3jpg.jpg', 5, '2020-05-03 20:16:16', NULL),
(8, '2.jpg', '2020-05-04__2jpg.jpg', 4, '2020-05-03 20:34:20', NULL),
(9, '3.jpg', '2020-05-04__3jpg.jpg', 4, '2020-05-03 20:34:21', NULL),
(11, '2.jpg', '2020-05-04__2jpg.jpg', 7, '2020-05-03 20:37:31', NULL),
(12, '3.jpg', '2020-05-04__3jpg.jpg', 7, '2020-05-03 20:37:31', NULL),
(13, '2.jpg', '2020-05-19__2jpg.jpg', 8, '2020-05-19 09:16:14', NULL),
(14, '3.jpg', '2020-05-19__3jpg.jpg', 8, '2020-05-19 09:16:14', NULL),
(15, '2.jpg', '2020-05-19__2jpg.jpg', 9, '2020-05-19 09:18:21', NULL),
(19, '3.jpg', '2020-05-19__3jpg.jpg', 10, '2020-05-19 09:22:06', NULL),
(20, '2.jpg', '2020-05-19__2jpg.jpg', 11, '2020-05-19 09:24:26', NULL),
(21, '3.jpg', '2020-05-19__3jpg.jpg', 11, '2020-05-19 09:24:26', NULL),
(22, '2.jpg', '2020-05-19__2jpg.jpg', 12, '2020-05-19 09:26:28', NULL),
(23, '3.jpg', '2020-05-19__3jpg.jpg', 12, '2020-05-19 09:26:28', NULL),
(24, '2.jpg', '2020-05-19__2jpg.jpg', 13, '2020-05-19 09:35:06', NULL),
(25, '2.jpg', '2020-05-19__2jpg.jpg', 14, '2020-05-19 09:37:11', NULL),
(27, '2.jpg', '2020-06-09__2jpg.jpg', 15, '2020-06-09 09:21:13', NULL),
(28, '3.jpg', '2020-06-09__3jpg.jpg', 15, '2020-06-09 09:21:13', NULL),
(29, 'QA24J102Y-1593050410.jpg', '2023-03-30__qa24j102y-1593050410jpg.jpg', 20, '2023-03-30 00:05:05', NULL),
(30, 'QZ00J301Y-1693187556.jpg', '2023-03-30__qz00j301y-1693187556jpg.jpg', 21, '2023-03-30 00:07:38', NULL),
(31, '957019310_dong-ho-chinh-hang-3.jpg', '2023-03-30__957019310-dong-ho-chinh-hang-3jpg.jpg', 22, '2023-03-30 00:12:13', NULL),
(32, '1439401915_DỒNG-HỒ-CHÍNH-HÃNG-15.jpg', '2023-03-30__1439401915-dong-ho-chinh-hang-15jpg.jpg', 22, '2023-03-30 00:12:13', NULL),
(33, '1509135306_dong-ho-chinh-hang-2.jpg', '2023-03-30__1509135306-dong-ho-chinh-hang-2jpg.jpg', 22, '2023-03-30 00:12:13', NULL),
(34, '1263780226_donghonhat17.jpg', '2023-03-30__1263780226-donghonhat17jpg.jpg', 23, '2023-03-30 00:14:49', NULL),
(35, '1805657736_2063747283_1219179274_dong-ho-chinh-hang-50.jpg', '2023-03-30__1805657736-2063747283-1219179274-dong-ho-chinh-hang-50jpg.jpg', 23, '2023-03-30 00:14:49', NULL),
(36, '1887243863_193477691_2094453703_dong-ho-chinh-hang-6.jpg', '2023-03-30__1887243863-193477691-2094453703-dong-ho-chinh-hang-6jpg.jpg', 23, '2023-03-30 00:14:49', NULL),
(37, '1927686277_dong-ho-chinh-hang-6.jpg', '2023-03-30__1927686277-dong-ho-chinh-hang-6jpg.jpg', 24, '2023-03-30 00:16:54', NULL),
(38, '1990998206_S306J322Y.jpg', '2023-03-30__1990998206-s306j322yjpg.jpg', 24, '2023-03-30 00:16:54', NULL),
(39, 'Q978J100Y-2102356199.jpg', '2023-03-30__q978j100y-2102356199jpg.jpg', 25, '2023-03-30 00:18:51', NULL),
(40, 'A194-201Y-31925022.jpg', '2023-03-30__a194-201y-31925022jpg.jpg', 26, '2023-03-30 00:20:23', NULL),
(41, '307544688_S278J304Y.jpg', '2023-03-30__307544688-s278j304yjpg.jpg', 27, '2023-03-30 00:22:09', NULL),
(42, '1561767817_dong-ho-chinh-hang-51.jpg', '2023-03-30__1561767817-dong-ho-chinh-hang-51jpg.jpg', 27, '2023-03-30 00:22:09', NULL),
(43, '884627304_dong-ho-nhap-khau34.jpg', '2023-03-30__884627304-dong-ho-nhap-khau34jpg.jpg', 28, '2023-03-30 00:26:32', NULL),
(44, '1562192727_dong-ho-chinh-hang47.jpg', '2023-03-30__1562192727-dong-ho-chinh-hang47jpg.jpg', 28, '2023-03-30 00:26:32', NULL),
(45, '1314944360_dong-ho-nhap-khau34.jpg', '2023-03-30__1314944360-dong-ho-nhap-khau34jpg.jpg', 29, '2023-03-30 00:28:49', NULL),
(46, '1579948468_dong-ho-nhap-khau35.jpg', '2023-03-30__1579948468-dong-ho-nhap-khau35jpg.jpg', 29, '2023-03-30 00:28:49', NULL),
(47, '1761617543_dong-ho-nhap-khau32.jpg', '2023-03-30__1761617543-dong-ho-nhap-khau32jpg.jpg', 29, '2023-03-30 00:28:49', NULL),
(48, '1838348169_dong-ho-nhap-khau33.jpg', '2023-03-30__1838348169-dong-ho-nhap-khau33jpg.jpg', 29, '2023-03-30 00:28:49', NULL),
(49, '2080006174_dong_ho_nam_qq_s394j222y_1jpg_1622044788.jpg', '2023-03-30__2080006174-dong-ho-nam-qq-s394j222y-1jpg-1622044788jpg.jpg', 30, '2023-03-30 00:30:56', NULL),
(50, '718956130_dong-ho-nhap-khau16.jpg', '2023-03-30__718956130-dong-ho-nhap-khau16jpg.jpg', 31, '2023-03-30 00:32:27', NULL),
(51, '1377592169_dong-ho-chinh-hang33.jpg', '2023-03-30__1377592169-dong-ho-chinh-hang33jpg.jpg', 31, '2023-03-30 00:32:27', NULL),
(52, '1745885921_dong-ho-nhap-khau25.jpg', '2023-03-30__1745885921-dong-ho-nhap-khau25jpg.jpg', 32, '2023-03-30 00:34:07', NULL),
(53, '139370321_dong-ho-chinh-hang43.jpg', '2023-03-30__139370321-dong-ho-chinh-hang43jpg.jpg', 33, '2023-03-30 00:35:33', NULL),
(54, '1952667441_dong-ho-nhap-khau10.jpg', '2023-03-30__1952667441-dong-ho-nhap-khau10jpg.jpg', 33, '2023-03-30 00:35:33', NULL),
(55, '78400045_dong ho chinh hang.jpg', '2023-03-30__78400045-dong-ho-chinh-hangjpg.jpg', 34, '2023-03-30 00:38:00', NULL),
(56, '340155412_dong ho chinh hang (2).jpg', '2023-03-30__340155412-dong-ho-chinh-hang-2jpg.jpg', 34, '2023-03-30 00:38:00', NULL),
(57, '688618964_dong ho chinh hang (4).jpg', '2023-03-30__688618964-dong-ho-chinh-hang-4jpg.jpg', 34, '2023-03-30 00:38:00', NULL),
(58, '1238920118_dong ho chinh hang (1).jpg', '2023-03-30__1238920118-dong-ho-chinh-hang-1jpg.jpg', 34, '2023-03-30 00:38:00', NULL),
(59, '101087074_đồng-hồ-chính-hãng93.jpg', '2023-03-30__101087074-dong-ho-chinh-hang93jpg.jpg', 35, '2023-03-30 00:40:33', NULL),
(60, '954182816_đồng-hồ-chính-hãng1.jpg', '2023-03-30__954182816-dong-ho-chinh-hang1jpg.jpg', 35, '2023-03-30 00:40:33', NULL),
(61, '1568300425_đồng-hồ-chính-hãng2.jpg', '2023-03-30__1568300425-dong-ho-chinh-hang2jpg.jpg', 35, '2023-03-30 00:40:33', NULL),
(62, '169738618_dong-ho-chinh-hang-42-5b.jpg', '2023-03-30__169738618-dong-ho-chinh-hang-42-5bjpg.jpg', 36, '2023-03-30 00:42:26', NULL),
(63, '643523283_đòng-hồ-chính-hãng-27.jpg', '2023-03-30__643523283-dong-ho-chinh-hang-27jpg.jpg', 36, '2023-03-30 00:42:26', NULL),
(64, '2047636202_donghonhapkhau7.jpg', '2023-03-30__2047636202-donghonhapkhau7jpg.jpg', 36, '2023-03-30 00:42:26', NULL),
(65, '132183469_911+cHmbuvL._UX569_.jpg', '2023-03-30__132183469-911chmbuvl-ux569-jpg.jpg', 37, '2023-03-30 00:45:13', NULL),
(66, '194910630_đồng-hồ-cơ60.jpg', '2023-03-30__194910630-dong-ho-co60jpg.jpg', 37, '2023-03-30 00:45:13', NULL),
(67, '380098219_ĐỒNG-HỒ-CHÍNH-HÃNG-21.jpg', '2023-03-30__380098219-dong-ho-chinh-hang-21jpg.jpg', 37, '2023-03-30 00:45:13', NULL),
(68, '476492991_đồng-hồ-cơ62.jpg', '2023-03-30__476492991-dong-ho-co62jpg.jpg', 37, '2023-03-30 00:45:13', NULL),
(69, '833092676_đồng-hô-chính-hãng17.jpg', '2023-03-30__833092676-dong-ho-chinh-hang17jpg.jpg', 37, '2023-03-30 00:45:13', NULL),
(70, '1688744913_đồng-hồ-cơ61.jpg', '2023-03-30__1688744913-dong-ho-co61jpg.jpg', 37, '2023-03-30 00:45:13', NULL),
(71, '1846295572_đồng-hồ-cơ63.jpg', '2023-03-30__1846295572-dong-ho-co63jpg.jpg', 37, '2023-03-30 00:45:13', NULL),
(72, '81351405_dong-ho-nu-thoi-trang-21.jpg', '2023-03-30__81351405-dong-ho-nu-thoi-trang-21jpg.jpg', 38, '2023-03-30 00:46:32', NULL),
(73, '450720688_81RiAgUsaPL.jpg', '2023-03-30__450720688-81riagusapljpg.jpg', 39, '2023-03-30 00:48:15', NULL),
(74, '1090904473_dong-ho-nu-thoi-trang-16.jpg', '2023-03-30__1090904473-dong-ho-nu-thoi-trang-16jpg.jpg', 39, '2023-03-30 00:48:15', NULL),
(75, '1591634560_đồng-hồ-nhập-khẩu31.jpg', '2023-03-30__1591634560-dong-ho-nhap-khau31jpg.jpg', 39, '2023-03-30 00:48:15', NULL),
(76, '102932889_đồng-hồ-chính-hãng165.jpg', '2023-03-30__102932889-dong-ho-chinh-hang165jpg.jpg', 40, '2023-03-30 00:50:41', NULL),
(77, '213979332_đồng-hồ-chính-hãng220.jpg', '2023-03-30__213979332-dong-ho-chinh-hang220jpg.jpg', 40, '2023-03-30 00:50:41', NULL),
(78, '269288393_đồng-hồ-chính-hãng221.jpg', '2023-03-30__269288393-dong-ho-chinh-hang221jpg.jpg', 40, '2023-03-30 00:50:41', NULL),
(79, '495463256_đồng-hồ-chính-hãng219.jpg', '2023-03-30__495463256-dong-ho-chinh-hang219jpg.jpg', 40, '2023-03-30 00:50:41', NULL),
(80, '639462598_đồng-hồ-chính-hãng222.jpg', '2023-03-30__639462598-dong-ho-chinh-hang222jpg.jpg', 40, '2023-03-30 00:50:42', NULL),
(81, '1767027310_đồng-hồ-chính-hãng223.jpg', '2023-03-30__1767027310-dong-ho-chinh-hang223jpg.jpg', 40, '2023-03-30 00:50:42', NULL),
(82, '252258597_đồng-hồ-chính-hãng2.jpg', '2023-03-30__252258597-dong-ho-chinh-hang2jpg.jpg', 41, '2023-03-30 00:54:42', NULL),
(83, '447688420_đồng-hồ-chính-hãng1.jpg', '2023-03-30__447688420-dong-ho-chinh-hang1jpg.jpg', 41, '2023-03-30 00:54:42', NULL),
(84, '996976368_DỒNG-HỒ-CHÍNH-HÃNG-7.jpg', '2023-03-30__996976368-dong-ho-chinh-hang-7jpg.jpg', 41, '2023-03-30 00:54:42', NULL),
(85, '1019519623_đồng-hồ-chính-hãng3.jpg', '2023-03-30__1019519623-dong-ho-chinh-hang3jpg.jpg', 41, '2023-03-30 00:54:42', NULL),
(86, '1577904383_đồng-hồ-chính-hãng6.jpg', '2023-03-30__1577904383-dong-ho-chinh-hang6jpg.jpg', 41, '2023-03-30 00:54:42', NULL),
(87, '1801300538_đồng-hồ-chính-hãng5.jpg', '2023-03-30__1801300538-dong-ho-chinh-hang5jpg.jpg', 41, '2023-03-30 00:54:42', NULL),
(88, '2078177429_DONG-HO-NHAP-KHAU6.jpg', '2023-03-30__2078177429-dong-ho-nhap-khau6jpg.jpg', 42, '2023-03-30 01:01:05', NULL),
(89, '94100673_dong-ho-thuy-sy32.jpg', '2023-03-30__94100673-dong-ho-thuy-sy32jpg.jpg', 43, '2023-03-30 01:05:11', NULL),
(90, '457805814_dong-ho-thuy-sy30.jpg', '2023-03-30__457805814-dong-ho-thuy-sy30jpg.jpg', 43, '2023-03-30 01:05:11', NULL),
(91, '1464694759_DONG-HO-CHINH-HANG-4.jpg', '2023-03-30__1464694759-dong-ho-chinh-hang-4jpg.jpg', 43, '2023-03-30 01:05:11', NULL),
(92, '873666217_Untitled-2.jpg', '2023-03-30__873666217-untitled-2jpg.jpg', 44, '2023-03-30 01:09:36', NULL),
(93, '1008856018_Untitled-3.jpg', '2023-03-30__1008856018-untitled-3jpg.jpg', 44, '2023-03-30 01:09:36', NULL),
(94, '1016637396_Untitled-1.jpg', '2023-03-30__1016637396-untitled-1jpg.jpg', 44, '2023-03-30 01:09:36', NULL),
(95, '1466711631_Untitled-4.jpg', '2023-03-30__1466711631-untitled-4jpg.jpg', 44, '2023-03-30 01:09:36', NULL),
(96, '1227428871_dong-ho-chinh-hang-45.jpg', '2023-03-30__1227428871-dong-ho-chinh-hang-45jpg.jpg', 45, '2023-03-30 01:11:35', NULL),
(97, '964292318_dong_ho_the_thao_qq_lla2j002yjpg_1628933777.jpg', '2023-03-30__964292318-dong-ho-the-thao-qq-lla2j002yjpg-1628933777jpg.jpg', 46, '2023-03-30 01:12:44', NULL),
(98, '794151194_dong-ho-chinh-hang-18.jpg', '2023-03-30__794151194-dong-ho-chinh-hang-18jpg.jpg', 47, '2023-03-30 01:14:07', NULL),
(99, '1459758537_dong-ho-nu.jpg', '2023-03-30__1459758537-dong-ho-nujpg.jpg', 47, '2023-03-30 01:14:07', NULL),
(100, '1515923572_dong-ho-chinh-hang-40.jpg', '2023-03-30__1515923572-dong-ho-chinh-hang-40jpg.jpg', 47, '2023-03-30 01:14:07', NULL),
(101, 'edifice_casio_ca_efr_526l_7avudfjpg_1628060035-1912559278.jpg', '2023-03-30__edifice-casio-ca-efr-526l-7avudfjpg-1628060035-1912559278jpg.jpg', 48, '2023-03-30 01:15:29', NULL),
(102, '700436709_DONG-HO-CHINH-HANG-10 (1).jpg', '2023-03-30__700436709-dong-ho-chinh-hang-10-1jpg.jpg', 49, '2023-03-30 01:17:22', NULL),
(103, '1874911582_dong-ho-diamond-d-DM63055.jpg', '2023-03-30__1874911582-dong-ho-diamond-d-dm63055jpg.jpg', 49, '2023-03-30 01:17:22', NULL),
(104, '99685969_dong-ho-chinh-hang-1.jpg', '2023-03-30__99685969-dong-ho-chinh-hang-1jpg.jpg', 50, '2023-03-30 01:18:35', NULL),
(105, '1578607996_dong-ho-nu-thoi-trang-33.jpg', '2023-03-30__1578607996-dong-ho-nu-thoi-trang-33jpg.jpg', 50, '2023-03-30 01:18:35', NULL),
(106, '700051371_1021339734_Dong-ho-diamond-d-DM36375IG-W.jpg', '2023-03-30__700051371-1021339734-dong-ho-diamond-d-dm36375ig-wjpg.jpg', 51, '2023-03-30 01:19:55', NULL),
(107, '183392423_Untitled-51.jpg', '2023-03-30__183392423-untitled-51jpg.jpg', 52, '2023-03-30 01:21:57', NULL),
(108, '628997965_DONG-HO-CHINH-HANG-8.jpg', '2023-03-30__628997965-dong-ho-chinh-hang-8jpg.jpg', 52, '2023-03-30 01:21:57', NULL),
(109, '2001779494_dong-ho-chihh-hang-3.jpg', '2023-03-30__2001779494-dong-ho-chihh-hang-3jpg.jpg', 52, '2023-03-30 01:21:57', NULL),
(110, '2127487811_dong-ho-diamond-d-DM5308B5IG.jpg', '2023-03-30__2127487811-dong-ho-diamond-d-dm5308b5igjpg.jpg', 52, '2023-03-30 01:21:57', NULL),
(111, '1245280207_ĐỒNG-HỒ-CHÍNH-HÃNG-6.jpg', '2023-03-30__1245280207-dong-ho-chinh-hang-6jpg.jpg', 53, '2023-03-30 01:23:26', NULL),
(112, '34931777_dong-ho-chihh-hang-7.jpg', '2023-03-30__34931777-dong-ho-chihh-hang-7jpg.jpg', 54, '2023-03-30 01:25:45', NULL),
(113, '362998062_dong-ho-chihh-hang-8.jpg', '2023-03-30__362998062-dong-ho-chihh-hang-8jpg.jpg', 54, '2023-03-30 01:25:45', NULL),
(114, '474478224_DỒNG-HỒ-CHÍNH-HÃNG-4.jpg', '2023-03-30__474478224-dong-ho-chinh-hang-4jpg.jpg', 54, '2023-03-30 01:25:45', NULL),
(115, '829699240_DONG-HO-CHINH-HANG-4.jpg', '2023-03-30__829699240-dong-ho-chinh-hang-4jpg.jpg', 54, '2023-03-30 01:25:45', NULL),
(116, '1022280386_đồng-hồ-chính-hãng94.jpg', '2023-03-30__1022280386-dong-ho-chinh-hang94jpg.jpg', 55, '2023-03-30 01:27:06', NULL),
(117, '288802103_dong-ho-nu-thuy-sy3.jpg', '2023-03-30__288802103-dong-ho-nu-thuy-sy3jpg.jpg', 56, '2023-03-30 01:28:44', NULL),
(118, '702462044_201402_12_8000_700_20_85_30_51863.jpg', '2023-03-30__702462044-201402-12-8000-700-20-85-30-51863jpg.jpg', 56, '2023-03-30 01:28:44', NULL),
(119, '888807563_201402_12_8000_700_20_85_30_81000.jpg', '2023-03-30__888807563-201402-12-8000-700-20-85-30-81000jpg.jpg', 56, '2023-03-30 01:28:44', NULL),
(120, '337380517_đồng-hồ-nữ-thuy-sỹ20.jpg', '2023-03-30__337380517-dong-ho-nu-thuy-sy20jpg.jpg', 57, '2023-03-30 01:30:50', NULL),
(121, '1028583387_đồng-hồ-nữ-thuy-sỹ21.jpg', '2023-03-30__1028583387-dong-ho-nu-thuy-sy21jpg.jpg', 57, '2023-03-30 01:30:50', NULL),
(122, 'dong-ho-nu-thuy-sy19-1203177555.jpg', '2023-03-30__dong-ho-nu-thuy-sy19-1203177555jpg.jpg', 57, '2023-03-30 01:30:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(66, 47, 45, 5, 0, 'ngon', '2023-04-21 06:34:40', '2023-04-21 06:34:40'),
(67, 47, 56, 1, 0, 'hơi rẻ', '2023-04-21 06:35:43', '2023-04-21 06:35:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(2, 'banner', 'http://localhost:81/dangquangwatch/public/', '2023-03-30__dong-ho-atlantic-swiss.jpg', 1, 1, 0, '2023-03-30 01:51:21', '2023-03-30 01:51:21'),
(3, 'banner', 'http://localhost:81/dangquangwatch/public/', '2023-10-29__244736167-774632189923412-1765408191738318685-n.jpg', 1, 1, 0, '2023-10-28 19:45:52', '2023-10-28 19:45:52'),
(4, 'banner', 'http://localhost:81/dangquangwatch/public/', '2023-03-30__dong-ho-atlantic-swiss.jpg', 2, 0, 0, '2023-03-30 01:51:34', '2023-04-20 06:27:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `social_accounts`
--

INSERT INTO `social_accounts` (`id`, `provider_user_id`, `user_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, '113284481699405128390', '13', 'google', '2020-04-19 05:05:01', '2020-04-19 05:05:01'),
(2, '114648189234106577870', '10', 'google', '2020-04-22 08:02:33', '2020-04-22 08:02:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn mua hàng', NULL, 1, NULL, '<p><strong>#Hướng dẫn mua h&agrave;ng</strong></p>\r\n\r\n<p>Mua h&agrave;ng qua mạng kh&ocirc;ng phức tạp như nhiều người nghĩ, ch&uacute;ng t&ocirc;i vui mừng khi bạn kh&ocirc;ng c&oacute; suy nghĩ như vậy, h&atilde;y t&igrave;m kiếm sản phẩm bạn ưa th&iacute;ch v&agrave; l&agrave;m theo hướng dẫn.</p>\r\n\r\n<p><strong>I. T&Igrave;M KIẾM SẢN PHẨM</strong></p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/B1.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/B1.jpg\" /></a></p>\r\n\r\n<p>Bạn c&oacute; thể lựa chọn một trong những c&aacute;ch mua h&agrave;ng sau :</p>\r\n\r\n<p><strong>a. Gọi điện thoại</strong>&nbsp;đến tổng đ&agrave;i (<strong>04-3622.8508</strong>) hoặc hotline (<strong>0986.68.1189</strong>) từ&nbsp;<strong>8h30-21h30</strong>&nbsp;(cả CN &amp; ng&agrave;y lễ) nh&acirc;n vi&ecirc;n ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng phục vụ bạn.</p>\r\n\r\n<p><strong>b. Đặt mua h&agrave;ng tr&ecirc;n website.</strong></p>\r\n\r\n<p>T&igrave;m sản phẩm cần mua: Bạn c&oacute; thể t&igrave;m kiếm sản phẩm theo nhiều c&aacute;ch:</p>\r\n\r\n<p><strong>- C&aacute;ch 1</strong>: T&igrave;m nhanh khi đ&atilde; biết t&ecirc;n sản phẩm. Bạn chỉ cần g&otilde; &quot;T&ecirc;n sản phẩm&quot; v&agrave;o box t&igrave;m kiếm, hệ thống sẽ gợi &yacute; bạn t&ecirc;n sản phẩm đ&uacute;ng nhất hiện c&oacute; trong hệ thống.</p>\r\n\r\n<p><strong>- C&aacute;ch 2</strong>: V&agrave;o &quot;Danh mục sản phẩm&quot; tr&ecirc;n Menu ngang của website. C&oacute; thể t&igrave;m sản phẩm theo h&atilde;ng hoặc theo c&aacute;c ti&ecirc;u ch&iacute; lọc theo t&iacute;nh năng sản phẩm b&ecirc;n tr&aacute;i.</p>\r\n\r\n<p><strong>II.&nbsp;XEM TH&Ocirc;NG TIN&nbsp;CHI TIẾT SẢN PHẨM&nbsp;</strong></p>\r\n\r\n<p><strong><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/B2.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/B2.jpg\" /></a></strong></p>\r\n\r\n<p><strong>III.&nbsp;TH&Ecirc;M SẢN PHẨM V&Agrave;O GIỎ H&Agrave;NG</strong></p>\r\n\r\n<p><strong><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/B3.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/B3.jpg\" /></a></strong></p>\r\n\r\n<p><strong>IV. CHI TIẾT GIỎ H&Agrave;NG CỦA BẠN</strong></p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/B4.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/B4.jpg\" /></a>Sau khi xem th&ocirc;ng tin chi tiết sản phẩm, bạn đ&atilde; ưng &yacute; sản phẩm h&atilde;y nhanh tay đặt nhấn n&uacute;t &quot; đặt mua &quot;.</p>\r\n\r\n<p><strong>V. ĐẶT MUA SẢN PHẨM</strong></p>\r\n\r\n<p><strong>- Nhập đầy đủ c&aacute;c th&ocirc;ng tin v&agrave; tiến h&agrave;nh mua sản phẩm</strong></p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/B5.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/B5.jpg\" /></a></p>\r\n\r\n<p><strong>Ho&agrave;n th&agrave;nh việc mua sản phẩm: Như vậy bạn đ&atilde; đặt h&agrave;ng th&agrave;nh c&ocirc;ng tại Đăng Quang Watch</strong></p>\r\n\r\n<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Đăng Quang Watch&nbsp;sẽ li&ecirc;n hệ lại bạn để x&aacute;c nhận đơn h&agrave;ng v&agrave; tư vấn cụ thể về c&aacute;c ch&iacute;nh s&aacute;ch kh&aacute;c như ưu đ&atilde;i khi mua h&agrave;ng, h&igrave;nh thức giao h&agrave;ng, h&igrave;nh thức thanh to&aacute;n...</p>', '2023-03-29 20:28:03', '2023-03-29 20:28:03'),
(2, 'Chính sách đổi trả', NULL, 2, NULL, '<p><strong>Ch&iacute;nh s&aacute;ch đổi h&agrave;ng</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng nhằm đảm bảo quyền lợi tối đa cho kh&aacute;ch h&agrave;ng khi mua sắm h&agrave;ng h&oacute;a tại Dangquangwatch.vn, cụ thể như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nhằm đảm bảo quyền lợi người ti&ecirc;u d&ugrave;ng, n&acirc;ng cao chất lượng dịch vụ sau b&aacute;n h&agrave;ng, Kh&aacute;ch h&agrave;ng được đổi sản phẩm mới c&ugrave;ng loại khi sản phẩm gặp sự cố kh&ocirc;ng thể khắc phục được (do lỗi kỹ thuật của nh&agrave; sản xuất). Sản phẩm lỗi chỉ được đổi sau khi đ&atilde; c&oacute; x&aacute;c nhận của kỹ thuật v&agrave; tu&acirc;n thủ theo c&aacute;c điều kiện sau đ&acirc;y:</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sản phẩm mới mua trong v&ograve;ng 01 ng&agrave;y kể từ ng&agrave;y xuất b&aacute;n. Kh&aacute;ch h&agrave;ng mua trực tuyến, thời gian được t&iacute;nh từ ng&agrave;y kh&aacute;ch nhận được sản phẩm;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a được x&aacute;c định nguồn gốc mua tại C&ocirc;ng ty Cổ phần Trực tuyến Đăng Quang (căn cứ v&agrave;o h&oacute;a đơn mua h&agrave;ng, phiếu bảo h&agrave;nh v&agrave; tem nhận diện d&aacute;n tr&ecirc;n sản phẩm);</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a được x&aacute;c nhận bị lỗi kỹ thuật của Kỹ thuật vi&ecirc;n của Trung T&acirc;m Bảo H&agrave;nh của H&atilde;ng;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a vẫn c&ograve;n nguy&ecirc;n tem ni&ecirc;m phong (kh&ocirc;ng bị r&aacute;ch vỡ hoặc d&aacute;n lại) của nh&agrave; sản xuất hoặc tem của Đăng QuangWatch, phải c&ograve;n nguy&ecirc;n vẹn vỏ th&ugrave;ng, xốp v&agrave; đầy đủ c&aacute;c phụ kiện k&egrave;m theo, qu&agrave; khuyến mại (nếu c&oacute;)&hellip;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a nhận lại kh&ocirc;ng bị lỗi h&igrave;nh thức (trầy xước, m&oacute;p m&eacute;o, ố v&agrave;ng, vỡ &hellip;)</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a nhận lại phải c&ograve;n đầy đủ linh kiện.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;H&agrave;ng h&oacute;a khi nhận lại phải c&oacute; đầy đủ c&aacute;c chứng từ k&egrave;m theo (Phiếu bảo h&agrave;nh, s&aacute;ch hướng dẫn &hellip; )</p>\r\n\r\n<p>Đồng hồ Đăng Quang sẽ thực hiện đổi h&agrave;ng cho kh&aacute;ch, nhưng kh&ocirc;ng ho&agrave;n lại ph&iacute; vận chuyển/ giao h&agrave;ng (nếu c&oacute;), trừ những trường hợp sau:</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng đ&uacute;ng chủng loại, mẫu m&atilde; như qu&yacute; kh&aacute;ch đ&atilde; đặt h&agrave;ng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đủ bộ/ th&ocirc;ng tin như trong đơn h&agrave;ng ban đầu.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng đạt chất lượng như: qu&aacute; hạn sử dụng, hết bảo h&agrave;nh, kh&ocirc;ng vận h&agrave;nh được, hỏng h&oacute;c kh&aacute;ch quan trong phạm vi bảo h&agrave;nh của nh&agrave; cung cấp, nh&agrave; sản xuất,..</p>\r\n\r\n<p><strong>Trường hợp kh&ocirc;ng chấp nhận đổi hoặc trả sản phẩm:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qu&yacute; kh&aacute;ch muốn thay đổi mẫu m&atilde;, chủng loại sản phẩm;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lỗi do người sử dụng;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng chấp nhận c&aacute;c lỗi ngoại quan (xước, m&oacute;p, m&eacute;o, vỡ, sứt&hellip;) khi kh&aacute;ch h&agrave;ng đ&atilde; mang sản phẩm ra khỏi cửa h&agrave;ng C&ocirc;ng ty;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qu&yacute; kh&aacute;ch vận h&agrave;nh kh&ocirc;ng đ&uacute;ng chỉ dẫn, g&acirc;y hỏng h&oacute;c sản phẩm, h&agrave;ng h&oacute;a;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qu&yacute; kh&aacute;ch tự l&agrave;m ảnh hưởng t&igrave;nh trạng b&ecirc;n ngo&agrave;i như &nbsp;bong tr&oacute;c, bể vỡ, &hellip;;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qu&yacute; kh&aacute;ch y&ecirc;u cầu đổi trả h&agrave;ng h&oacute;a v&igrave; l&yacute; do sai phạm về h&igrave;nh thức (trầy xước, m&oacute;p m&eacute;o, ố v&agrave;ng, bể vỡ,&hellip;) m&agrave; khi qu&yacute; kh&aacute;ch mua h&agrave;ng h&oacute;a vẫn c&ograve;n nguy&ecirc;n vẹn.</p>\r\n\r\n<p>Ch&uacute; &yacute;: Kh&aacute;ch h&agrave;ng xem kỹ sản phẩm trước khi mua, sản phẩm đ&atilde; b&aacute;n ra kh&ocirc;ng nhập lại. Để đảm bảo cho mọi kh&aacute;ch h&agrave;ng lu&ocirc;n mua được sản phẩm mới.</p>\r\n\r\n<p><strong>Qui tr&igrave;nh xử l&yacute; thủ tục đổi trả h&agrave;ng:</strong></p>\r\n\r\n<p>&nbsp;Kh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ trực tiếp với Trung T&acirc;m Bảo H&agrave;nh của H&atilde;ng hoặc th&ocirc;ng qua Ph&ograve;ng Bảo h&agrave;nh của C&ocirc;ng ty để thay mặt chuyển h&agrave;ng h&oacute;a đến H&atilde;ng để kiểm tra. Sau khi c&oacute; Giấy X&aacute;c Nhận T&igrave;nh Trạng với nội dung h&agrave;ng h&oacute;a hư hỏng do lỗi kỹ thuật kh&ocirc;ng thể sửa chữa, chấp nhận đổi mới. Việc đổi h&agrave;ng sẽ được thực hiện theo đ&uacute;ng quy định của C&ocirc;ng ty.</p>', '2023-03-29 20:28:14', '2023-03-29 20:28:14'),
(3, 'Chăm sóc khách hàng', NULL, 3, NULL, '<p>Cảm ơn kh&aacute;ch h&agrave;ng đ&atilde; tham quan v&agrave; mua sắm qua shop online!!!</p>', '2023-03-29 20:29:27', '2023-03-29 20:29:27'),
(4, 'Chính sách bảo mật', NULL, 4, NULL, '<h1>Ch&iacute;nh s&aacute;ch bảo mật</h1>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>Dangquangwatch.vn cam kết sẽ bảo mật những th&ocirc;ng tin mang t&iacute;nh ri&ecirc;ng tư của kh&aacute;ch h&agrave;ng. Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc bản &ldquo;Ch&iacute;nh s&aacute;ch bảo mật&rdquo; dưới đ&acirc;y để hiểu hơn những cam kết m&agrave; ch&uacute;ng t&ocirc;i thực hiện, nhằm t&ocirc;n trọng v&agrave; bảo vệ quyền lợi của người truy cập:</p>\r\n\r\n<h2><strong>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mục đ&iacute;ch v&agrave; phạm vi thu thập:</strong></h2>\r\n\r\n<p>Để truy cập v&agrave; sử dụng một số dịch vụ tại&nbsp;dangquangwatch.vn, qu&yacute; kh&aacute;ch c&oacute; thể được y&ecirc;u cầu đăng k&yacute; với ch&uacute;ng t&ocirc;i th&ocirc;ng tin c&aacute; nh&acirc;n (th&agrave;nh vi&ecirc;n), bao gồm: Email, Họ t&ecirc;n, số ĐT li&ecirc;n lạc, địa chỉ, t&ecirc;n đăng nhập, mật khẩu.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng thu thập th&ocirc;ng tin về số lần viếng thăm, bao gồm số trang qu&yacute; kh&aacute;ch xem, số links (li&ecirc;n kết) bạn click, những th&ocirc;ng tin kh&aacute;c li&ecirc;n quan đến việc kết nối đến Donghodangquang.com v&agrave; c&aacute;c th&ocirc;ng tin m&agrave; tr&igrave;nh duyệt Web (Browser) qu&yacute; kh&aacute;ch sử dụng mỗi khi truy cập v&agrave;o website&nbsp;http://www.dangquangwatch.vn/, gồm: địa chỉ IP, loại Browser, ng&ocirc;n ngữ sử dụng, thời gian v&agrave; những địa chỉ m&agrave; Browser truy xuất đến.</p>\r\n\r\n<h2><strong>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phạm vi sử dụng th&ocirc;ng tin:</strong></h2>\r\n\r\n<p>C&aacute;c th&ocirc;ng tin thu thập th&ocirc;ng qua website &nbsp;dangquangwatch.vn&nbsp;sẽ gi&uacute;p ch&uacute;ng t&ocirc;i:</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hỗ trợ kh&aacute;ch h&agrave;ng khi mua sản phẩm;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giải đ&aacute;p thắc mắc kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cung cấp cho bạn th&ocirc;ng tin mới nhất tr&ecirc;n Website của ch&uacute;ng t&ocirc;i;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Xem x&eacute;t v&agrave; n&acirc;ng cấp nội dung v&agrave; giao diện của Website;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thực hiện c&aacute;c bản khảo s&aacute;t kh&aacute;ch h&agrave;ng;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thực hiện c&aacute;c hoạt động quảng b&aacute; li&ecirc;n quan đến c&aacute;c sản phẩm v&agrave; dịch vụ của Đồng hồ Đăng Quang.</p>\r\n\r\n<h2><strong>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thời gian lưu trữ th&ocirc;ng tin:</strong></h2>\r\n\r\n<p>Dữ liệu c&aacute; nh&acirc;n của th&agrave;nh vi&ecirc;n sẽ được lưu trữ cho đến khi c&oacute; y&ecirc;u cầu hủy bỏ hoặc tự th&agrave;nh vi&ecirc;n đăng nhập v&agrave; thực hiện hủy bỏ. C&ograve;n lại trong mọi trường hợp th&ocirc;ng tin c&aacute; nh&acirc;n Th&agrave;nh vi&ecirc;n sẽ được bảo mật tr&ecirc;n m&aacute;y chủ của Đăng Quang Watch</p>\r\n\r\n<h2><strong>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</strong></h2>\r\n\r\n<p><strong>C&ocirc;ng ty Cổ phần Trực tuyến Đăng Quang</strong></p>\r\n\r\n<p>Địa chỉ: Tổ 13, phường Thượng Thanh, Q. Long Bi&ecirc;n, Tp H&agrave; Nội.</p>\r\n\r\n<p>Tel: 024.36228508</p>\r\n\r\n<p>Email:&nbsp;<a href=\"mailto:sieuthidangquang@gmail.com\">sieuthidangquang@gmail.com</a></p>\r\n\r\n<h2><strong>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh:</strong></h2>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Th&agrave;nh vi&ecirc;n c&oacute; quyền tự kiểm tra, cập nhật, điều chỉnh hoặc hủy bỏ th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh bằng c&aacute;ch đăng nhập v&agrave;o t&agrave;i khoản v&agrave; chỉnh sửa th&ocirc;ng tin c&aacute; nh&acirc;n hoặc y&ecirc;u cầu Đồng hồ Đăng Quang thực hiện việc n&agrave;y;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Th&agrave;nh vi&ecirc;n c&oacute; quyền gửi khiếu nại về người b&aacute;n đến Ban quản trị của Đồng hồ Đăng Quang tại địa chỉ sieuthidangquang@gmail.com . Khi tiếp nhận những phản hồi n&agrave;y, Đồng hồ Đăng Quang sẽ x&aacute;c nhận lại th&ocirc;ng tin, trường hợp đ&uacute;ng như phản &aacute;nh của Th&agrave;nh vi&ecirc;n t&ugrave;y theo mức độ, Đồng hồ Đăng Quang sẽ c&oacute; những biện ph&aacute;p xử l&yacute; kịp thời.</p>\r\n\r\n<h2><strong>6.&nbsp; &nbsp; &nbsp;&nbsp;</strong><strong>Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng:</strong></h2>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Th&ocirc;ng tin c&aacute; nh&acirc;n của Th&agrave;nh vi&ecirc;n tr&ecirc;n Donghodangquang.com được ch&uacute;ng t&ocirc;i cam kết bảo mật tuyệt đối theo ch&iacute;nh s&aacute;ch bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của Đồng hồ Đăng Quang. Việc thu thập v&agrave; sử dụng th&ocirc;ng tin của mỗi Th&agrave;nh vi&ecirc;n chỉ được thực hiện khi c&oacute; sự đồng &yacute; của kh&aacute;ch h&agrave;ng đ&oacute; trừ những trường hợp ph&aacute;p luật c&oacute; quy định kh&aacute;c.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kh&ocirc;ng sử dụng, kh&ocirc;ng chuyển giao, cung cấp hay tiết lộ cho b&ecirc;n thứ ba n&agrave;o về th&ocirc;ng tin c&aacute; nh&acirc;n của Th&agrave;nh vi&ecirc;n khi kh&ocirc;ng c&oacute; sự cho ph&eacute;p đồng &yacute; từ Th&agrave;nh vi&ecirc;n;</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Trong trường hợp m&aacute;y chủ lưu trữ th&ocirc;ng tin bị hacker tấn c&ocirc;ng dẫn đến mất m&aacute;t dữ liệu c&aacute; nh&acirc;n Th&agrave;nh vi&ecirc;n, Đồng hồ Đăng Quang sẽ c&oacute; tr&aacute;ch nhiện th&ocirc;ng b&aacute;o vụ việc cho cơ quan chức năng điều tra xử l&yacute; kịp thời v&agrave; th&ocirc;ng b&aacute;o cho Th&agrave;nh vi&ecirc;n được biết.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bảo mật tuyệt đối mọi th&ocirc;ng tin giao dịch trực tuyến của Th&agrave;nh vi&ecirc;n bao gồm th&ocirc;ng tin h&oacute;a đơn kế to&aacute;n chứng từ số h&oacute;a tại khu vực dữ liệu trung t&acirc;m an to&aacute;n cấp 1 của Đồng hồ Đăng Quang.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ban quản trị Đồng hồ Đăng Quang y&ecirc;u cầu c&aacute;c c&aacute; nh&acirc;n khi đăngk&iacute;/mua h&agrave;ng l&agrave; Th&agrave;nh vi&ecirc;n, phải cung cấp đầy đủ th&ocirc;ng tin c&aacute; nh&acirc;n c&oacute; li&ecirc;n quan như: họ v&agrave; t&ecirc;n, địa chỉ li&ecirc;n lạc, email, số thẻ thanh to&aacute;n, &hellip; v&agrave; chịu tr&aacute;ch nhiệm về t&iacute;nh ph&aacute;p l&yacute; của những th&ocirc;ng tin tr&ecirc;n. Ban quản trị Đồng hồ Đăng Quang kh&ocirc;ng chịu tr&aacute;ch nhiệm cũng như kh&ocirc;ng giải quyết mọi khiếu nại c&oacute; li&ecirc;n quan đến quyền lợi của Th&agrave;nh vi&ecirc;n đ&oacute; nếu x&eacute;t thấy tất cả th&ocirc;ng tin c&aacute; nh&acirc;n của Th&agrave;nh vi&ecirc;n đ&oacute; cung cấp khi đăng k&yacute; ban đầu l&agrave; kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ban quản trị khuyến c&aacute;o Th&agrave;nh vi&ecirc;n n&ecirc;n bảo mật c&aacute;c th&ocirc;ng tin li&ecirc;n qua đến mật khẩu truy xuất của m&igrave;nh v&agrave; kh&ocirc;ng n&ecirc;n chia sẻ với bất kỳ người n&agrave;o kh&aacute;c. Nếu sử dụng m&aacute;y t&iacute;nh chung nhiều người, Th&agrave;nh vi&ecirc;n n&ecirc;n đăng xuất, hoặc tho&aacute;t hết tất cả c&aacute;c cửa sổ Website đang mở.</p>', '2023-03-29 21:32:25', NULL),
(5, 'Chính sách bảo hành', NULL, 5, NULL, '<p>1 đổi 1 trong v&ograve;ng 7 ng&agrave;y, bảo h&agrave;nh 2 th&aacute;ng với tất cả sản phẩm.</p>', '2023-03-29 21:34:18', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_province_id` int(5) NOT NULL DEFAULT 0,
  `tst_district_id` int(5) NOT NULL DEFAULT 0,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `provider`, `provider_id`, `log_login`, `google_id`, `avatar_original`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(60, 'hoang', 'hoangnh2k1@gmail.com', NULL, '$2y$10$VOEmT9uEUwKXQ7iAJ2gzROsPDpjhBewc8kLRVkKU1hd7K5S8kz5rK', '0389163152', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-10-28 19:50:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(72, 57, 47);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Chỉ mục cho bảng `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
