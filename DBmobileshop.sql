-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 18, 2023 lúc 03:20 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elaravel_mobileshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id_admin_roles` int(11) NOT NULL,
  `admin_admin_id` int(11) NOT NULL,
  `roles_id_roles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id_admin_roles`, `admin_admin_id`, `roles_id_roles`) VALUES
(8, 2, 2),
(17, 1, 1),
(46, 3, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_10_145423_create_tbl_admin_table', 1),
(6, '2023_04_14_025802_create_tbl_category_product', 2),
(7, '2023_04_14_141602_create_tbl_brand_product', 3),
(8, '2023_04_14_155952_create_tbl_product', 4),
(9, '2023_04_16_161704_tbl_customer', 5),
(10, '2023_04_17_063819_tbl_shipping', 6),
(14, '2023_04_17_132635_tbl_payment', 7),
(15, '2023_04_17_133246_tbl_order', 7),
(16, '2023_04_17_133331_tbl_order_details', 7),
(17, '2023_04_22_142131_create_app_models_roles_table', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_amin`
--

CREATE TABLE `tbl_amin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_amin`
--

INSERT INTO `tbl_amin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'quanhoang12', '0389938946', NULL, NULL),
(2, 'author12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'author12', '0354481295', NULL, NULL),
(3, 'user12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user12', '0374268055', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_desc` text NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'SAMSUNG', 'hanquoc1', 1, NULL, NULL),
(3, 'iPhone', 'American', 1, NULL, NULL),
(4, 'OPPO', 'China', 1, NULL, NULL),
(5, 'VIVO', 'vivo', 1, NULL, NULL),
(6, 'realme', 'realme', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_desc` text NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(12, 'Điện thoại', 'dienthoai', 1, NULL, NULL),
(13, 'Âm thanh', 'amthanh', 1, NULL, NULL),
(14, 'Phụ kiện', 'phukien', 1, NULL, NULL),
(15, 'Khuyến mãi', 'khuyenmai', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(4, 'Nguyen Hoang Quan', 'hquan20020915@gmail.com', 'c64d233cf4ba25dada38b00c95bf995d', '0389938946', NULL, NULL),
(5, 'nguyenminhtien', 'tien@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0437855433', NULL, NULL),
(6, 'chicong', 'chicong@gmail.com', 'f287d6433cf14c8753373fc7b38b850d', '0123456789', NULL, NULL),
(7, 'Nguyen Kim Ngan', 'hquan20020915@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(100) NOT NULL,
  `order_status` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_code`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(24, '6457de62', 4, 45, 47, '27090000', 3, '2023-05-07 17:22:42', NULL),
(25, '6457debb', 4, 46, 48, '21980000', 1, '2023-05-07 17:24:11', NULL),
(26, '6457def1', 4, 47, 49, '29980000', 1, '2023-05-07 17:25:05', NULL),
(27, '6457df41', 4, 48, 50, '11380000', 2, '2023-05-07 17:26:25', NULL),
(28, '6457df9e', 4, 49, 51, '16790000', 2, '2023-05-07 17:27:58', NULL),
(29, '64589688', 4, 50, 52, '206090000', 2, '2023-05-08 06:28:24', NULL),
(30, '645dcf58', 4, 51, 53, '32780000', 1, '2023-05-12 05:32:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `order_code`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(37, 24, '6457de62', 16, 'Điện thoại iPhone 14 Pro Max 128GB', '27090000', 1, NULL, NULL),
(38, 25, '6457debb', 36, 'Điện thoại OPPO Reno8 T 5G 256GB', '10990000', 2, NULL, NULL),
(39, 26, '6457def1', 20, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 Pro R510N', '4990000', 1, NULL, NULL),
(40, 26, '6457def1', 17, 'Điện thoại iPhone 14 Pro 128GB', '24990000', 1, NULL, NULL),
(41, 27, '6457df41', 26, 'Pin sạc dự phòng Polymer 10.000 mAh Type C PD Samsung EB-P3300', '790000', 1, NULL, NULL),
(42, 27, '6457df41', 15, 'Điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB)', '10590000', 1, NULL, NULL),
(43, 28, '6457df9e', 41, 'Tai nghe Bluetooth Chụp Tai Mozard K8', '400000', 1, NULL, NULL),
(44, 28, '6457df9e', 14, 'Điện thoại Samsung Galaxy S23 5G 128GB', '16390000', 1, NULL, NULL),
(45, 29, '64589688', 14, 'Điện thoại Samsung Galaxy S23 5G 128GB', '16390000', 8, NULL, NULL),
(46, 29, '64589688', 17, 'Điện thoại iPhone 14 Pro 128GB', '24990000', 3, NULL, NULL),
(47, 30, '645dcf58', 14, 'Điện thoại Samsung Galaxy S23 5G 128GB', '16390000', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` int(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(47, '2', 1, NULL, NULL),
(48, '2', 1, NULL, NULL),
(49, '2', 1, NULL, NULL),
(50, '2', 1, NULL, NULL),
(51, '2', 1, NULL, NULL),
(52, '2', 1, NULL, NULL),
(53, '2', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_sold` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_content` text NOT NULL,
  `product_price` float NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `product_name`, `brand_id`, `product_qty`, `product_sold`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(14, 12, 'Điện thoại Samsung Galaxy S23 5G 128GB', 1, 7, 50, 'Samsung Galaxy S23 5G 128GB chắc hẳn không còn là cái tên quá xa lạ đối với các tín độ công nghệ hiện nay, được xem là một trong những gương mặt chủ chốt đến từ nhà Samsung với cấu hình mạnh mẽ bậc nhất, camera trứ danh hàng đầu cùng lối hoàn thiện vô cùng sang trọng và hiện đại.', 'Sở hữu lối thiết kế sang trọng\r\nỞ phiên bản năm nay, mình rất vui khi biết được rằng Galaxy S23 vẫn giữ nguyên kiểu dáng quen thuộc từ thế hệ trước, nó được xem là một biểu tượng của dòng điện thoại Samsung Galaxy dòng S khi mang trong mình một đặc trưng riêng biệt và đầy đẳng cấp.', 16390000, 'samsung-galaxy-s23-xanh-1-152.jpg', 1, NULL, NULL),
(15, 12, 'Điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB)', 1, 54, 1, 'Samsung Galaxy S21 FE 5G (6GB/128GB) được Samsung ra mắt với dáng dấp thời thượng, cấu hình khỏe, chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin đủ dùng hằng ngày và còn gì nữa? Mời bạn khám phá qua nội dung sau ngay.', 'Vẻ ngoài sang trọng, màu sắc thời trang\r\nGalaxy S21 FE 5G thiết kế mỏng nhẹ với độ dày 7.9 mm, khối lượng chỉ 177 gram, các góc cạnh bo tròn cho cảm giác hài hòa, mềm mại, kết hợp các tông màu thời thượng gồm tím, xanh lá, xám và trắng giúp bạn dễ dàng tạo nên phong cách riêng đầy cá tính.', 10590000, 'samsung-galaxy-s21-fe-xanh-167.jpg', 1, NULL, NULL),
(16, 12, 'Điện thoại iPhone 14 Pro Max 128GB', 3, 8, 52, 'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', 'Thiết kế cao cấp bền bỉ\r\niPhone năm nay sẽ được thừa hưởng nét đặc trưng từ người anh iPhone 13 Pro Max, vẫn sẽ là khung thép không gỉ và mặt lưng kính cường lực kết hợp với tạo hình vuông vức hiện đại thông qua cách tạo hình phẳng ở các cạnh và phần mặt lưng.', 27090000, 'iphone-14-pro-max-vang-118.jpg', 1, NULL, NULL),
(17, 12, 'Điện thoại iPhone 14 Pro 128GB', 3, 27, 3, 'iPhone 14 Pro 128GB - Mẫu smartphone đến từ nhà Apple được mong đợi nhất năm 2022, lần này nhà Táo mang đến cho chúng ta một phiên bản với kiểu thiết kế hình notch mới, cấu hình mạnh mẽ nhờ con chip Apple A16 Bionic và cụm camera có độ phân giải được nâng cấp lên đến 48 MP.', 'Thiết kế mang dáng vẻ sang trọng và đặc trưng\r\nĐến với thiết kế của iPhone 14 Pro năm nay, hãng vẫn giữ lại nét đặc trưng vốn có từ các đời trước, vẫn mang trong mình ngoại hình vuông vức với các cạnh và mặt lưng vát phẳng. Hiện tại thị hiếu của người dùng về kiểu thiết kế này vẫn đang rất cao, vậy nên theo mình thấy thì đây vẫn sẽ là chiếc điện thoại bắt trend cho trong nhiều năm tiếp theo', 24990000, 'iphone-14-pro-trang-19.jpg', 1, NULL, NULL),
(18, 12, 'Điện thoại Vivo Y35', 5, 50, 0, 'Tiếp nối sự thành công của các mẫu smartphone tầm trung tại thị trường Việt Nam thì mới đây Vivo đã chính thức cho ra mắt điện thoại Vivo Y35. Máy sở hữu cho mình khả năng sạc siêu nhanh 44 W, cụm camera đem đến những bức ảnh sắc nét và một hiệu năng ổn định trong phân khúc.', 'Không gian hiển thị sắc nét\r\nVivo Y35 có kích thước màn hình 6.58 inch đi cùng là tấm nền IPS LCD, độ phân giải Full HD+ với những thông số trên chất lượng hình ảnh hiển thị có chi tiết tốt, góc nhìn rộng và màu sắc trung thực.', 6090000, 'vivo-y35-den-1-146.jpg', 1, NULL, NULL),
(19, 12, 'Điện thoại Vivo V25 5G', 5, 50, 0, 'Dường như 2022 là một năm bùng nổ cho điện thoại V series khi nhiều sản phẩm được cho ra mắt với thông số và thiết kế rất ấn tượng, trong đó có Vivo V25 vừa được giới thiệu vào tháng 10/2022 hứa hẹn sẽ gây sốt trên thị trường công nghệ trong giai đoạn cuối năm nay nhờ tạo hình đẹp cùng hiệu năng mạnh mẽ.', 'Vivo V25 sở hữu cho mình những màu sắc hết sức trẻ trung và hiện đại, không chỉ mang đến nhiều sự lựa chọn hơn cho người dùng mà điều này còn đem lại cái nhìn tươi mới năng động hơn khi cầm nắm sử dụng.\r\n\r\nMột điểm độc đáo trên phiên bản này chính là khả năng thay đổi màu sắc từ nhạt sang tone màu đậm hơn khi tiếp xúc với môi trường có ánh sáng cao, đây chắc hẳn là điều khiến mọi người dùng có thể mê mẩn ngắm nhìn ngay từ lần tiếp xúc đầu tiên.\r\n\r\nThiết kế đẹp mắt - Vivo V25', 8140000, 'vivo-v25-den-178.jpg', 1, NULL, NULL),
(20, 13, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 Pro R510N', 1, 9, 48, 'Trong sự kiện Samsung Galaxy Unpacked 2022 diễn ra vào ngày 10/8, Samsung đã cho ra mắt loạt siêu phẩm trong đó có tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 Pro R510N.', 'Thiết kế công thái học êm ái, thời lượng pin lớn\r\nNhìn tổng thể, Galaxy Buds 2 Pro có ngoại hình tương tự như thế hệ tiền nhiệm. Phần hộp sạc vẫn giữ vẻ ngoài khá quen thuộc với thiết kế nhỏ nhắn, liền mạch đi cùng với nhiều phiên bản màu sắc cực “trendy”.', 4990000, 'tai-nghe-bluetooth-true-wireless-galaxy-buds2-pro-den-129.jpg', 1, NULL, NULL),
(21, 13, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N Trắng', 1, 13, 0, 'Thiết kế thời thượng, cá tính.\r\nChất âm chuẩn studio với loa 2 chiều.\r\nHiệu quả chống ồn lên đến 98%.\r\nĐàm thoại dễ dàng với 3 micro và bộ cảm biến nhận diện giọng nói.', 'Thời gian nghe nhạc: Khoảng 5 giờ (bật chống ồn), khoảng 7.5 giờ (tắt chống ồn).\r\nThời gian đàm thoại: Khoảng 3.5 giờ (bật chống ồn), khoảng 3.5 giờ (tắt chống ồn).\r\n5 phút sạc cho 1 giờ chơi nhạc.\r\nĐạt tiêu chuẩn chống nước IPX2.\r\nĐiều khiển cảm ứng dừng/phát, trả lời cuộc gọi, chuyển bài.', 2990000, 'samsung-galaxy-buds-2-r177n-trang-155.jpg', 1, NULL, NULL),
(22, 13, 'Tai nghe Bluetooth AirPods 2 Lightning Charge Apple MV7N2', 3, 50, 0, 'Thiết kế đơn giản, thời trang và nhỏ gọn.\r\nTrang bị chip H1 hoàn toàn mới, cho tốc độ kết nối, chuyển đổi giữa các thiết bị nhanh chóng.\r\nKích hoạt nhanh trợ lý ảo Siri bằng cách nói \"Hey, Siri\".\r\nCó thể sử dụng nghe nhạc lên đến 5 giờ (âm lượng 50%) cho mỗi một lần sạc đầy.\r\nTích hợp công nghệ sạc nhanh hiện đại. Sạc nhanh 15 phút có thể nghe nhạc 2 - 3 giờ (âm lượng 50%).\r\nSử dụng song song với hộp sạc có thể dùng được lên đến 24 giờ.', 'Tai nghe Bluetooth AirPods 2 Lightning Charge Apple MV7N2 - được mệnh danh là một chiếc AirPods huyền thoại quốc dân rất được lòng của các fan nhà táo.', 3190000, 'bluetooth-airpods-2-apple-mv7n2-imei-1-org15.jpg', 1, NULL, NULL),
(23, 13, 'Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3', 3, 50, 0, 'Vẻ ngoài thời trang, kiểu dáng nhỏ gọn, đeo chắc chắn với 3 size nút tai. \r\nTái tạo âm thanh sống động, phù hợp với ống tai bạn nhờ chip H1, công nghệ Adaptive EQ.\r\nKiểm soát âm thanh tai nghe hiệu quả với công nghệ chống ồn chủ động (Active Noise Cancellation) cùng xuyên âm (Transparency mode).', 'Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3 được chế tác với vẻ ngoài tinh giản, gam màu trắng trẻ trung, sáng đẹp, phối hợp tuyệt vời với mọi trang phục từ đời thường đến công sở, dự tiệc của bạn.', 4990000, 'bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-0-156.jpg', 1, NULL, NULL),
(24, 14, 'Pin sạc dự phòng Polymer 10.000 mAh Type C PD Samsung EB-P3300', 1, 50, 0, 'Thiết kế nhỏ gọn, mỏng, trọng lượng nhẹ.\r\nTrang bị công nghệ sạc nhanh Super Fast Charging và Power Delivery.\r\nDung lượng pin cao 10.000 mAh, lõi pin Polymer an toàn.\r\nNguồn ra tối đa cổng Type C 25 W, cổng USB 25 W.\r\nTương thích với nhiều loại thiết bị.', 'Sạc dự phòng Samsung mỏng nhẹ, vẻ ngoài tỏa sáng với gam màu xám sang trọng\r\nHình dạng và kích thước gần như 1 chiếc smartphone thời thượng của Samsung, sạc dự phòng dễ dàng cầm nắm, dịch chuyển, không choáng chỗ trong túi xách, balo của bạn khi mang theo bên mình trong hành trang thường nhật.', 790000, 'polymer-10000mah-type-c-25w-samsung-eb-p3300-190722-052634-600x60061.jpg', 0, NULL, NULL),
(25, 15, 'Điện thoại Samsung Galaxy A14 5G', 1, 5, 0, 'Samsung Galaxy A14 5G có thể là chiếc smartphone đầu tiên của năm 2023 được nhà sản xuất đến từ Hàn Quốc phát hành chính thức ở Việt Nam. Máy nổi bật với lối thiết kế trẻ trung, màn hình kích thước lớn và camera chính có độ phân giải lên tới 50 MP.', 'Galaxy A14 được lấy cảm hứng thiết kế từ những mẫu điện thoại Samsung dòng A trước đây với mặt lưng phẳng, màn hình giọt nước cùng cụm camera xếp dọc. Máy trở nên góc cạnh hơn khi các viền xung quanh bộ khung đều được gia công phẳng một cách tinh tế.', 4790000, 'samsung-galaxy-a14-5g-bac-1-163.jpg', 1, NULL, NULL),
(26, 14, 'Pin sạc dự phòng Polymer 10.000 mAh Type C PD Samsung EB-P3300', 1, 49, 1, 'Thiết kế nhỏ gọn, mỏng, trọng lượng nhẹ.\r\nTrang bị công nghệ sạc nhanh Super Fast Charging và Power Delivery.\r\nDung lượng pin cao 10.000 mAh, lõi pin Polymer an toàn.\r\nNguồn ra tối đa cổng Type C 25 W, cổng USB 25 W.\r\nTương thích với nhiều loại thiết bị.', 'Sạc dự phòng Samsung mỏng nhẹ, vẻ ngoài tỏa sáng với gam màu xám sang trọng\r\nHình dạng và kích thước gần như 1 chiếc smartphone thời thượng của Samsung, sạc dự phòng dễ dàng cầm nắm, dịch chuyển, không choáng chỗ trong túi xách, balo của bạn khi mang theo bên mình trong hành trang thường nhật.', 790000, 'pin-sac-du-phong-10200-mah-fast-charge-samsung-1-300x30047.jpg', 1, NULL, NULL),
(27, 14, 'Pin sạc dự phòng Polymer 20.000 mAh Type C PD Samsung EB-P5300', 1, 50, 0, 'Thiết kế gọn nhẹ, sang trọng, vỏ bọc nhựa tối ưu trọng lượng.\r\nHỗ trợ các công nghệ sạc nhanh Super Fast Charging, Power Delivery, Quick Charge 2.0.\r\nDung lượng pin cao 20.000 mAh, lõi pin Polymer an toàn.\r\nCông suất nguồn ra qua cổng USB, Type C tối đa 25 W.\r\nPhù hợp với nhiều loại thiết bị.', 'Kiểu dáng đơn giản, nhỏ gọn, màu đen thời trang\r\nLớp vỏ nhựa cao cấp kháng vỡ, giúp giảm trọng lượng sạc dự phòng, cầm nắm hơi đầm tay nhưng không nặng với 392 gram', 890000, 'polymer-20000mah-type-c-25w-samsung-eb-p5300-5-org90.jpg', 0, NULL, NULL),
(28, 14, 'Pin sạc dự phòng 7.500 mAh AVA+ LA Y68', 3, 50, 0, 'Đáp ứng nhu cầu sử dụng với dung lượng pin 7500 mAh, hiệu suất sạc 64%.\r\nDùng tốt cho mọi điện thoại, máy tính bảng qua cáp sạc tương thích.\r\nTích hợp lõi pin Li-ion giữ năng lượng lâu, thân thiện môi trường.\r\nCó 2 cổng ra USB 5V – 2.1A và 1 cổng vào Micro USB 5V - 2A.\r\nKiểu dáng gọn nhẹ, thời trang, dễ mang theo sử dụng mọi nơi, mọi lúc.', 'Sạc dự phòng AVA+ Y68 tính di động cao với kích thước nhỏ gọn, màu đen hiện đại, sang trọng\r\nSản phẩm có lớp vỏ kim loại chắc chắn, bảo vệ lõi pin bên trong an toàn, bền tốt, tránh các va chạm mạnh, đồng thời ít bám bẩn và dễ lau chùi.\r\n\r\nKích thước pin sạc vừa vặn tay cầm của người trưởng thành, dễ dàng đặt gọn trong túi quần của bạn, thật đơn giản để mang theo sử dụng mọi lúc, mọi nơi.', 170000, 'ava-plus-la-y68-190722-051129-600x60027.jpeg', 1, NULL, NULL),
(29, 14, 'Pin sạc dự phòng 7500 mAh AVA+ LJ JP199', 3, 50, 0, 'Thiết kế thời trang, nhỏ nhắn, dễ mang theo.\r\nSử dụng lõi pin Li-Ion an toàn, bền tốt.\r\nNguồn ra có 2 cổng USB 5V – 2A.\r\nDung lượng 7500 mAh cho hiệu suất sạc 64%.\r\nSạc được cho mọi điện thoại và máy tính bảng tương thích.', 'Sạc dự phòng AVA+ nhỏ gọn, trẻ trung, với 2 tone màu hồng phấn ngọt ngào hoặc xanh ngọc tinh tế lựa chọn\r\nAVA+ LJ JP199 có vỏ bọc kim loại cứng cáp chống bám vân tay tốt, các góc bo tròn bảo vệ chống trầy xước và cho thiết bị nét mềm mại, gọn gàng hơn khi bảo quản trong giỏ xách, túi quần…', 170000, 'ava-lj-jp199-thumb-600x600 (1)63.jpeg', 1, NULL, NULL),
(30, 14, 'Pin sạc dự phòng 10.000 mAh Lightning Xmobile LJ JP90S', 3, 50, 0, 'Dung lượng pin lớn 10.000 mAh với hiệu suất đạt 62.5%.\r\nTương thích tốt với các thiết bị quạt mini, tai nghe, loa bluetooth.\r\nCó đèn LED báo mức dung lượng pin đầy tiện ích.\r\nCổng ra USB có công suất 10 W.\r\nThiết kế nhỏ gọn, trọng lượng 240 g tiện lợi mang theo bên mình.', 'Pin sạc dự phòng 10.000 mAh Lightning Xmobile LJ JP90S có vỏ bằng kim loại khác biệt\r\nVỏ kim loại giúp pin không quá nóng khi sạc lâu, chống trầy xước hiệu quả hơn, cầm mát tay. Pin sạc dự phòng có thể cho vào balo hay túi xách để đi học, đi làm hay du lịch. Lõi Li-Ion hạn chế chai pin, không lo cháy nổ', 630000, '10000mah-lightning-xmobile-lj-jp90s-nhom-xam-thumb1-600x60092.jpeg', 1, NULL, NULL),
(31, 14, 'Pin sạc dự phòng Polymer 10.000 mAh Energizer Chiến Binh II UE10046', 3, 50, 0, 'Thiết kế gọn nhẹ, bo tròn 4 góc với độ mỏng chỉ 15 mm.\r\nDung lượng pin 10.000 mAh, hiệu suất sạc 66%.\r\nPin được bao bọc chất liệu kim loại sang trọng.\r\nHỗ trợ 2 cổng USB 5V - 2.1A giúp sạc 2 thiết bị cùng lúc.\r\nĐèn Led thông báo tình trạng pin, mỗi vạch tương ứng với 25% mức pin.', 'Pin sạc dự phòng Polymer 10.000 mAh Energizer UE10046 có thiết kế bo tròn, gọn nhẹ, dễ dàng mang theo để sử dụng khi cần', 385000, 'pin-du-phong-polymer-10000mah-energizer-ue10046-xa-190722-045254-600x60061.jpg', 1, NULL, NULL),
(32, 13, 'Tai nghe Bluetooth True Wireless OPPO ENCO Buds 2 ETE41', 4, 5, 0, 'Phần hộp đựng của tai nghe Bluetooth True Wireless OPPO ENCO Buds 2 ETE41 mang kiểu dáng thiết kế dạng tròn trông khá lạ mắt với khối lượng gọn nhẹ.', 'Nắp hộp có thể đóng, mở dễ dàng cùng phần bản lề vô cùng chắc chắn. Sở hữu bề mặt bóng bao bọc trọn vẹn hộp đựng giúp tai nghe thêm phần thời thượng, sang chảnh, phù hợp với mọi đối tượng.', 990000, 'tai-nghe-bluetooth-tws-oppo-enco-buds-2-ete41-trang-thumb1-1-600x60068.jpeg', 0, NULL, NULL),
(33, 13, 'Tai nghe Bluetooth True Wireless OPPO ENCO Air 2 ETE11', 4, 50, 0, 'OPPO đã trình làng chiếc tai nghe không dây mới nhất của mình vào tháng 3/2022 mang tên OPPO Enco Air 2 - phiên bản kế nhiệm của OPPO ENCO Air sở hữu thiết kế độc đáo, thời lượng “pin trâu” và nhiều tính năng hữu ích.', 'Oppo ENCO Air 2 vẫn giữ nguyên mẫu thiết kế với kiểu dáng bo tròn tựa hình elip, mang lại cảm giác cầm nắm rất vừa vặn và nằm gọn trong lòng bàn tay.', 1290000, 'bluetooth-true-wireless-oppo-enco-air-2-ete11-xanh-600x60077.jpg', 0, NULL, NULL),
(34, 13, 'Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3', 3, 50, 0, 'Vẻ ngoài thời trang, kiểu dáng nhỏ gọn, đeo chắc chắn với 3 size nút tai. \r\nTái tạo âm thanh sống động, phù hợp với ống tai bạn nhờ chip H1, công nghệ Adaptive EQ.\r\nKiểm soát âm thanh tai nghe hiệu quả với công nghệ chống ồn chủ động (Active Noise Cancellation) cùng xuyên âm (Transparency mode)', 'Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3 được chế tác với vẻ ngoài tinh giản, gam màu trắng trẻ trung, sáng đẹp, phối hợp tuyệt vời với mọi trang phục từ đời thường đến công sở, dự tiệc của bạn.', 4500000, 'bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-thumb-600x6006.jpeg', 0, NULL, NULL),
(35, 12, 'Điện thoại OPPO Find N2 Flip', 4, 50, 0, 'OPPO Find N2 Flip, chiếc điện thoại gập đầu tiên của OPPO được giới thiệu chính thức vào tháng 03/2023.', 'Về thiết kế của máy, Find N2 Flip sẽ được làm theo cơ chế gập ấn tượng với tỷ lệ khung hình rộng và viền mỏng. Ngoài ra, điện thoại còn được trang bị một màn hình phụ nhỏ ở mặt sau giúp người dùng tiện lợi trong việc chụp ảnh selfie hoặc kiểm tra thông báo.', 19990000, 'oppo-n2-flip-den-thumb-600x60069.jpg', 0, NULL, NULL),
(36, 12, 'Điện thoại OPPO Reno8 T 5G 256GB', 4, 50, 0, 'Tiếp nối sự thành công rực rỡ đến từ các thế hệ trước đó thì chiếc OPPO Reno8 T 5G 256GB cuối cùng đã được giới thiệu chính thức tại Việt Nam, được định hình là dòng sản phẩm thuộc phân khúc tầm trung với camera 108 MP, con chip Snapdragon 695 cùng kiểu dáng thiết kế mặt lưng và màn hình bo cong hết sức nổi bật.', 'Qua những lần chạm đầu tiên trên chiếc Reno8 T 5G thì mình thấy đây là một chiếc điện thoại có độ hoàn thiện khá tốt, máy mang lại cho mình một cảm giác cầm nắm tương đối là đầm tay, hai bên cạnh cũng được làm bo cong giúp hạn chế tình trạng cấn tay mang đến cho mình một trải nghiệm sử dụng khá là thoải mái.', 10990000, 'oppo-reno8-t-vang-5g-120.jpg', 1, NULL, NULL),
(37, 12, 'Điện thoại OPPO A55', 4, 50, 0, 'OPPO cho ra mắt OPPO A55 4G chiếc smartphone giá rẻ tầm trung có thiết kế đẹp mắt, cấu hình khá ổn, cụm camera chất lượng và dung lượng pin ấn tượng, mang đến một lựa chọn trải nghiệm thú vị vừa túi tiền cho người tiêu dùng.', 'OPPO A55 4G có 3 phiên bản màu độc đáo là xanh lá, xanh dương và màu đen. Thiết kế cong 3D cùng kích thước mỏng nhẹ, OPPO A55 4G vừa vặn trong tay người cầm, cho từng thao tác trải nghiệm thoải mái và chắc chắn.', 3690000, 'oppo-a55-4g-1-347.jpg', 1, NULL, NULL),
(38, 12, 'Điện thoại realme C55 6GB', 6, 50, 0, 'Gần đây, chiếc điện thoại realme C55 đã được giới thiệu chính thức với bộ thông số kỹ thuật đáng chú ý và giá cả phù hợp cho người dùng, hãng tạo ra sản phẩm này nhằm cải thiện trải nghiệm cho những sản phẩm thuộc phân khúc giá rẻ.', 'realme C55 chiếc smartphone có thiết kế đơn giản với ngôn ngữ thiết kế vuông vắn và màu sắc thanh lịch, khung viền được làm cứng cáp cùng mặt lưng nhựa nhám giúp mang lại cảm giác cầm chắc tay hay hạn chế việc bám dấu vân tay mỗi khi sử dụng.', 4590000, 'realme-c55-black-110.jpg', 1, NULL, NULL),
(39, 12, 'Điện thoại realme 9 Pro+ 5G', 6, 50, 0, 'realme 9 Pro+ 5G - chiếc smartphone tầm trung của Realme đã được ra mắt, máy có một thiết kế đầy màu sắc, cụm 3 camera với cảm biến IMX766 giúp bạn có được những bức ảnh sinh động.', 'realme 9 Pro+ 5G với thiết kế Light Shift trên phiên bản Lam Hừng Đông hoàn toàn mới, có thể thay đổi màu từ xanh lam nhạt sang đỏ khi tiếp xúc với ánh sáng mặt trời đẹp tựa như cảnh bình minh. Còn một phiên bản màu khác là Lục Cực Quang cũng cực kỳ đẹp mắt.', 7690000, 'realme-9-pro-plus-1-137.jpg', 1, NULL, NULL),
(40, 12, 'Điện thoại realme 8 Pro', 6, 50, 0, 'Bên cạnh Realme 8, realme 8 Pro cũng được giới thiệu đến người dùng với điểm nhấn chính là sự xuất hiện của camera 108 MP siêu nét cùng công nghệ sạc SuperDart 50 W và đi kèm mức giá bán tầm trung rất lý tưởng.', 'Nhìn chung, realme 8 Pro tiếp tục được hãng thiết kế với vẻ ngoài sang trọng, nhưng vẫn đảm bảo được sự gọn gàng, tiện lợi cho người dùng.', 5790000, 'realme-8-pro-den-1-org24.jpg', 0, NULL, NULL),
(41, 15, 'Tai nghe Bluetooth Chụp Tai Mozard K8', 1, 47, 1, 'Thiết kế đệm tai êm và dày, giúp thoải mái khi đeo.\r\nCó thể kéo giãn tai nghe 3.7 cm để vừa vặn hơn khi sử dụng.\r\nÂm thanh phát ra to rõ, sắc nét, âm trầm dày chắc, đầy nội lực.\r\nTích hợp mic thoại giúp thu giọng nói rõ ràng, tương tác tốt hơn.', 'Chuẩn Bluetooth 4.2 cho khoảng cách đến 10 m.\r\nDung lượng pin 300 mAh, thời gian sử dụng 15 giờ, sạc khoảng 2 giờ.\r\nTương thích với các thiết bị chạy hệ điều hành: Android, Windows, iOS.', 400000, 'bluetooth-mozard-k8-xanh-1-org54.jpg', 1, NULL, NULL),
(42, 15, 'Tai nghe Bluetooth Chụp Tai Mozard K29', 1, 50, 0, 'Thiết kế đệm tai êm và dày, giúp thoải mái khi đeo.\r\nCó thể kéo giãn tai nghe 3.7 cm để vừa vặn hơn khi sử dụng.\r\nÂm thanh phát ra to rõ, sắc nét, âm trầm dày chắc, đầy nội lực.\r\nTích hợp mic thoại giúp thu giọng nói rõ ràng, tương tác tốt hơn.', 'Chuẩn Bluetooth 4.2 cho khoảng cách đến 10 m.\r\nDung lượng pin 300 mAh, thời gian sử dụng 15 giờ, sạc khoảng 2 giờ.\r\nTương thích với các thiết bị chạy hệ điều hành: Android, Windows, iOS.', 400000, 'bluetooth-mozard-k8-hong-1-org83.jpg', 1, NULL, NULL),
(43, 15, 'Ốp lưng Magsafe iPhone 14 Pro Max Nhựa trong Apple MPU73 Chính hãng', 1, 47, 0, 'Sử dụng cho điện thoại iPhone 14 Pro Max.\r\nỐp lưng bảo vệ điện thoại chống trầy xước, va chạm.\r\n\r\n• Với chất liệu nhựa trong đơn giản, tinh tế.', 'Ốp lưng Apple hỗ trợ sạc không dây MagSafe tiện lợi không cần tháo ốp.\r\n\r\nThiết kế ốp ôm trọn thân máy, cầm chắc tay.', 1430000, 'op-lung-magsafe-iphone-14-pro-max-nhua-trong-apple-mpu73-151.jpg', 1, NULL, NULL),
(44, 15, 'Bộ 2 móc điện thoại OSMIA CK-CRS34 Xanh hồng', 1, 48, 0, 'Móc khóa', 'Giảm giá', 30, 'bo-2-moc-dien-thoai-osmia-ck-crs34-xanh-hong-1-1-org15.jpg', 1, NULL, NULL),
(45, 13, 'Tai nghe Bluetooth True Wireless OPPO ENCO Buds 2 ETE41', 4, 50, 0, 'Thiết kế dạng tròn mới lạ, màu sắc thời thượng, sang trọng\r\nPhần hộp đựng của tai nghe Bluetooth True Wireless OPPO ENCO Buds 2 ETE41 mang kiểu dáng thiết kế dạng tròn trông khá lạ mắt với khối lượng gọn nhẹ.', 'Nắp hộp có thể đóng, mở dễ dàng cùng phần bản lề vô cùng chắc chắn. Sở hữu bề mặt bóng bao bọc trọn vẹn hộp đựng giúp tai nghe thêm phần thời thượng, sang chảnh, phù hợp với mọi đối tượng.', 990000, 'tai-nghe-bluetooth-tws-oppo-enco-buds-2-ete41-trang-16.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id_roles` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_roles`
--

INSERT INTO `tbl_roles` (`id_roles`, `name`) VALUES
(1, 'admin'),
(2, 'author'),
(3, 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) NOT NULL,
  `shipping_note` text NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `shipping_email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_note`, `shipping_address`, `shipping_phone`, `shipping_email`, `created_at`, `updated_at`) VALUES
(45, 'Hà Xuân Bắc', '', '99 An Duong Vuong, p16 q8 HCM', '0389938946', 'xuanbac@gmail.com', NULL, NULL),
(46, 'Nguyen Hoang Tien', '', '168 Hùng Vương, Phường 2, Quận 1, HCM', '0389938454', 'tien@gmail.com', NULL, NULL),
(47, 'Nguyen Van Nam', '', 'Dai hoc Sai Gon', '0382933454', 'nam@gmail.com', NULL, NULL),
(48, 'Nguyễn Thành Công', '', '72 Phường 2, Mỹ Tho, Tiền Giang', '0383333455', 'thanhcong@gmail.com', NULL, NULL),
(49, 'Nguyễn Văn Tèo', '', '89 Phường 3, Mỹ Tho, Tiền Giang', '0383338855', 'teo@gmail.com', NULL, NULL),
(50, 'Nguyen Hoang Quang', 'Giao nhanh', 'Dai hoc Sai Gon', '0389938946', 'hquan20020915@gmail.com', NULL, NULL),
(51, 'Nguyen Chi Cong', '', 'Dai hoc Sai Gon', '0382933454', 'chicong@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_statistical`
--

CREATE TABLE `tbl_statistical` (
  `id_statistical` int(11) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `sales` varchar(200) NOT NULL,
  `profit` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_statistical`
--

INSERT INTO `tbl_statistical` (`id_statistical`, `order_date`, `sales`, `profit`, `quantity`, `total_order`) VALUES
(70, '2023-05-01', '6500000', '1500000', 14, 5),
(71, '2023-05-02', '7800000', '1800000', 10, 4),
(72, '2023-05-03', '4500000', '12000000', 13, 4),
(73, '2023-05-04', '5600000', '4000000', 7, 3),
(74, '2023-05-05', '9000000', '1200000', 12, 3),
(75, '2023-05-06', '5000000', '1200000', 5, 3),
(76, '2023-04-30', '450000', '5000000', 5, 2),
(77, '2023-04-29', '300000', '1200000', 2, 2),
(78, '2023-05-08', '63500000', '50500000', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id_admin_roles`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tbl_amin`
--
ALTER TABLE `tbl_amin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`,`brand_id`);

--
-- Chỉ mục cho bảng `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id_roles`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_statistical`
--
ALTER TABLE `tbl_statistical`
  ADD PRIMARY KEY (`id_statistical`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id_admin_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_amin`
--
ALTER TABLE `tbl_amin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `tbl_statistical`
--
ALTER TABLE `tbl_statistical`
  MODIFY `id_statistical` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
