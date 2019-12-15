-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2019 lúc 06:17 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `freshfooddb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryID` varchar(50) NOT NULL,
  `parentCategoryID` varchar(11) NOT NULL,
  `categoryName` varchar(150) NOT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `categoryID`, `parentCategoryID`, `categoryName`, `description`) VALUES
(1, 'HS', '', 'Hải sản', 'Danh mục các sản phẩm thuộc nhóm hải sản'),
(2, 'RCQ', '', 'Rau củ quả', 'Danh mục các sản phẩm thuộc nhóm rau củ quả'),
(3, 'TP', '', 'Thực phẩm', 'Danh mục các sản phẩm thuộc nhóm thực phẩm'),
(4, 'DU', '', 'Đồ uống', 'Danh mục nhóm các sản phẩm đồ uống'),
(5, 'HSNK', '1', 'Hải sản nhập khẩu', 'Danh mục con của danh mục hải sản'),
(6, 'HST', '1', 'Hải sản tươi', 'Danh mục con của danh mục hải sản'),
(7, 'HQNK', '2', 'Hoa quả nhập khẩu', 'Danh mục con của danh mục rau củ quả'),
(8, 'RCS', '2', 'Rau củ sạch', 'Danh mục con của danh mục rau củ quả'),
(9, 'TCT', '2', 'Trái cây tươi', 'Danh mục con của danh mục rau củ quả'),
(10, 'TT', '3', 'Thịt tươi', 'Danh mục con của danh mục thực phẩm'),
(11, 'TPDL', '3', 'Thực phẩm đông lạnh', 'Danh mục con của danh mục thực phẩm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customerID` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `fullName` varchar(100) NOT NULL,
  `birthDate` date DEFAULT NULL,
  `avatar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `customerID`, `password`, `email`, `phone`, `address`, `status`, `fullName`, `birthDate`, `avatar`) VALUES
(1, 'kh01', 'tranhai123', 'kethanhtrung2014@gmail.com', '0969775108', 'Nam Từ Liêm, Mỹ Đình, Hà Nội', 1, 'Trần Hải', '1997-12-12', 'avatar.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `employeeName` varchar(100) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `roll` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`id`, `employeeID`, `employeeName`, `address`, `email`, `password`, `phone`, `birthDate`, `avatar`, `roll`) VALUES
(1, 'nv01', 'Hoàng Thị Thanh Hương', 'Số 60 - Ngõ 28 Đường Xuân La - Tây Hồ - Hà Nội', 'huonght@yahoo.com.vn', 'huonght123', '0963.286.888', '1993-05-15', 'christopher-campbell-rDEOVtE7vOs-unsplash.jpg', 'nhân viên'),
(2, 'nv02', 'Vũ Thị Thu Thủy', '15 Hoa Lâm - Long Biên - Hà Nội', 'thuthuyhc02@gmail.com', 'thuthuy123', '0963.686.189', '1981-11-07', 'jodyhongfilms-GBgp6Iy16lc-unsplash.jpg', 'nhân viên'),
(3, 'nv03', 'Nguyễn Thị Lệ Quyên', 'Đàm Trấu - Bạch Đằng - Hà Nội', 'lequyen1704@yahoo.com', 'lequyen123', '0963.283.868', '1983-04-17', 'rowan-chestnut-m663zRzRe40-unsplash.jpg', 'nhân viên'),
(4, 'nv04', 'Hoàng Lê Minh', '20E - TT Tổng cục 2 Xuân Đỉnh - Hà Nội', 'hmdc@yahoo.com', 'leminh123', '4.2048.268', '1975-05-17', 'brooke-cagle-R0Ea06wC2IM-unsplash.jpg', 'nhân viên'),
(5, 'nv05', 'Nguyễn Lan Hương', 'Khu TT Đài phát tin Đại Mỗ - Từ Liêm - Hà Nội', 'lanhuong@enet.vn', 'lanhuong123', '0963.161.978', '1978-06-01', 'sonnie-hiles-10wjs03JJv8-unsplash.jpg', 'nhân viên'),
(6, 'e001', 'Trần Hải', 'Nam Từ Liêm, Mỹ Đình, Hà Nội', 'kethanhtrung2014@gmail.com', 'tranhai123', '0969.775.108', '1997-12-12', 'avatar.jpg', 'quản trị viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderID` varchar(20) NOT NULL,
  `productID` varchar(20) NOT NULL,
  `unitPrice` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderID` varchar(20) NOT NULL,
  `employeeID` varchar(20) NOT NULL,
  `customerID` varchar(20) NOT NULL,
  `orderDate` date DEFAULT NULL,
  `shipperID` varchar(20) DEFAULT NULL,
  `shippedDate` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productID` varchar(20) NOT NULL,
  `productName` varchar(150) NOT NULL,
  `supplierID` varchar(150) DEFAULT NULL,
  `categoryID` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitPrice` int(11) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `thumbnail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `productID`, `productName`, `supplierID`, `categoryID`, `quantity`, `unitPrice`, `discount`, `status`, `description`, `image`, `thumbnail`) VALUES
(1, 'NFF040102', 'Tôm Hùm Canada Sống Canadian Live Lobster', 'CleverFood', 'HSNK', 50, 980000, NULL, 1, 'Tôm Hùm Alaska sinh sống tại vùng biển sâu của Alaska phía bắc nước Mỹ và Canada. Tôm này chỉ sống tại những bãi đá ngầm, nước trong xanh, cực lạnh nên thịt tôm trắng, dai, có vị ngọt, đậm.', 'thumb_15375057434585_z1112864241062_d1bb036ab25c6614fb6225ad00a7f99c.jpg, thumb_15179904877797_kyl1412836603.jpg', 'thumb_15375057434585_z1112864241062_d1bb036ab25c66');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shippers`
--

CREATE TABLE `shippers` (
  `id` int(11) NOT NULL,
  `shipperID` varchar(20) NOT NULL,
  `companyName` varchar(100) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `shippers`
--

INSERT INTO `shippers` (`id`, `shipperID`, `companyName`, `phone`, `description`) VALUES
(1, 'ProShip', 'Công ty cổ phần Proship', '093 9999 247', 'Proship.vn với phương châm hoạt động cung cấp giải pháp giao hàng nhanh và thu hộ hoàn chỉnh, toàn diện nhất cho khách hàng bởi dịch vụ tốt nhất và đội ngũ nhân viên chuyên nghiệp nhất. Proship.vn sử dụng dịch vụ giao hàng nhanh bằng công nghệ hiện đại GPS vì lợi ích của khách hàng là trên hết.'),
(2, 'Shopee', 'Shopee', '19001221', 'Shopee  được đánh giá là một trong những công ty giao hàng uy tín và chất lượng nhất tại Hà Nội. Công ty nhận giao hàng bất cứ nơi đâu trong và ngoài Hà Nội. \r\n\r\nCách thức hoạt động hết sức đơn giản, việc mà bạn cần làm đó là tạo yêu cầu vận chuyển hàng mà thôi, Shopee sẽ đến lấy hàng và thanh toán 100% tiền hàng cho bạn và ngay sau đó, họ sẽ giao hàng cho khách hàng của bạn cũng như là giúp bạn thu tiền. \r\n\r\nThật là đơn giản khi đặt đơn hàng tại website, chỉ với một chiếc điện thoại, bạn có thể quản lý, lộ trình vận chuyển hàng hóa của bạn trực tuyến. An toàn, đơn giản, chính xác và đúng thời gian là những từ ngữ mà khách hàng dành cho giao Shopee.'),
(3, 'ShipAZ', 'ShipAZ.vn', '091 664 9696 - 097 888 6646 - 0243 853 0088', 'Shipaz sẽ là giải pháp cho tất cả những vấn đề mà bạn đang thắc mắc. Shipaz chuyên cung cấp dịch vụ mua hàng và nhận ship hàng chuyên nghiệp về Việt Nam từ các website mua hàng hàng đầu trên thế giới, tiến hành giao tận tay Quý khách một cách nhanh chóng, an toàn với chi phí tiết kiệm nhất.\r\n\r\nShipaz được thiết kế giao diện với hệ thống báo giá về Việt Nam tự động, nhằm hỗ trợ khách hàng có thể xem báo giá và đặt mua hàng nhanh chóng, tiện lợi và không thể dễ dàng hơn.Với hệ thống tra cứu đơn hàng quốc tế bạn sẽ biết chính xác hàng của mình đang ở đâu và thời gian dự kiến tới Việt Nam.'),
(5, 'ThangLongExpress', 'Công ty cổ phần chuyển phát nhanh Thăng Long', '04.3911.3366 - 094.231.33.66', 'Công ty cổ phần chuyển phát nhanh Thăng Long là nơi luôn cung cấp dịch vụ chuyển phát nhanh và ship nội thành Hà Nội cho khách hàng. Công ty nhận ship hàng tất cả các ngày trong tuần cho khách hàng thân thiết. Bạn chắc hẳn sẽ phải hài lòng với dịch vụ của công ty Thăng Long bởi lẽ họ sở hữu một đội ngũ shipper trẻ, đầy nhiệt huyết, có tinh thần trách nhiệm cao. \r\n\r\n\r\nCông ty sẽ nhận vận chuyển quần áo, mũ nón, các mặt hàng thời trang, giầy dép, quà tặng, bưu phẩm, thư tín cùng một số sản phẩm như bánh kẹo, nước ngọt, trái cây, sách vở, tạp chí, đồ văn phòng phẩm, máy móc…'),
(6, 'ShipChungVN', 'Công ty cổ phần thương mại điện tử ShipChung Việt Nam', '84 1900 636 068', 'Shipchung là Cổng giao nhận vận chuyển giao hàng & thu tiền (CoD) đầu tiên tại Việt Nam, hỗ trợ người bán hàng TMĐT vận chuyển trong nước và quốc tế dễ dàng và thuận tiện cùng nhiều ưu đãi từ hơn 50 đối tác vận chuyển.\r\n\r\n\r\nCông ty cổ phần thương mại điện tử ShipChung Việt Nam là một trong mười công ty ship hàng hóa nhanh nhất, an toàn nhất tại Hà Nội. Công ty luôn cung cấp dịch vụ vận chuyển, giao hàng toàn quốc. Với kinh nghiệm hoạt động trong nghề suốt 15 năm qua cũng như là đội ngũ nhân viên trẻ đầy đam mê, sáng tạo, trách nhiệm, nhiệt huyết mà ShipChung đã là cái tên được mọi người nhắc đến rất nhiều. \r\n\r\n\r\nCông ty đã và đang không ngừng phấn đấu để trở thành một đơn vị thực sự lớn mạnh trong lĩnh vực thương mại điện tử, vận chuyển hàng hóa. ShipChung có những đối tác lớn như Kerry Express, Viettel Post, Haravan, Bizweb…');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `supplierID` varchar(20) NOT NULL,
  `companyName` varchar(150) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `website` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplierID`, `companyName`, `address`, `phone`, `website`) VALUES
(1, 'unisea', 'Công ty TNHH Unisea', '57 Hạ Đình- Thanh Xuân - Hà Nội ', '0973 481 616 - 024 7300 1525', 'http://giadinhhaisan.com'),
(2, 'TrieuLong', 'TRIỆU LONG- HẢI SẢN SẦM SƠN', 'CS1: Số 135/158 Ngọc Hà- Ba Đình- Hà Nội\r\nCS2: Số 5 Đông Tác- Kim Liên- Đống Đa- Hà Nội', '0961133186', 'https://www.facebook.com/trieulonghaisansamson/'),
(3, 'CleverFood', 'Clever Food', 'Số 10, ngõ 106, Hoàng Quốc Việt, Cầu Giấy, Hà Nội', '096 224 3863', 'http://cleverfood.com.vn'),
(4, 'SoiBien', 'Cửa hàng Sói Biển', '182 Hoàng Văn Thái, Thanh Xuân, Hà Nội', '0966026161', 'http://soibien.vn'),
(5, 'HS29', 'Hải sản 29', '103C9 Tô Hiệu, Q. Cầu Giấy, Hà Nội', NULL, 'http://haisan29.com/'),
(6, 'HSX', 'HẢI SẢN XANH', 'Số 49, Ngõ 50 Mễ Trì Thượng, Nam Từ Liêm, Hà Nội', '0916101013 - 0869650666', 'www.haisanxanh.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categoryID` (`categoryID`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `username` (`customerID`) USING BTREE;

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `FK_Employee_Order` (`employeeID`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderID`,`productID`),
  ADD KEY `productID` (`productID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderID` (`orderID`) USING BTREE,
  ADD KEY `shipperID` (`shipperID`),
  ADD KEY `customerID` (`customerID`) USING BTREE,
  ADD KEY `employeeID` (`employeeID`) USING BTREE;

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productID` (`productID`),
  ADD KEY `supplierID` (`supplierID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Chỉ mục cho bảng `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shipperID` (`shipperID`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplierID` (`supplierID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `shippers`
--
ALTER TABLE `shippers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`),
  ADD CONSTRAINT `orderdetail_ibfk_3` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`shipperID`) REFERENCES `shippers` (`shipperID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`employeeID`) REFERENCES `employees` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `suppliers` (`supplierID`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`categoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
