-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2019 lúc 12:16 PM
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

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`orderID`, `productID`, `unitPrice`, `quantity`, `discount`) VALUES
('05dc4db56eecf0bbe', 'NFF050309', 280000, 1, NULL);

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

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `orderID`, `employeeID`, `customerID`, `orderDate`, `shipperID`, `shippedDate`, `status`) VALUES
(1, '05dc4db56eecf0bbe', 'nv01', 'kh01', '2019-12-15', 'Shopee', '2019-12-17', '0');

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
(1, 'NFF040102', 'Tôm Hùm Canada Sống Canadian Live Lobster', 'CleverFood', 'HSNK', 50, 980000, NULL, 1, 'Tôm Hùm Alaska sinh sống tại vùng biển sâu của Alaska phía bắc nước Mỹ và Canada. Tôm này chỉ sống tại những bãi đá ngầm, nước trong xanh, cực lạnh nên thịt tôm trắng, dai, có vị ngọt, đậm.', 'thumb_15375057434585_z1112864241062_d1bb036ab25c6614fb6225ad00a7f99c.jpg, thumb_15179904877797_kyl1412836603.jpg', 'thumb_15375057434585_z1112864241062_d1bb036ab25c66'),
(2, 'NFF040112', 'Bào Ngư Úc Viền Xanh Size 4 Australia Abalone', 'SoiBien', 'HSNK', 25, 5900000, NULL, 1, 'Bào ngư Úc loại viền xanh được nhập trực tiếp từ Úc, hiện đang rất được các nhà hàng TPHCM ưa chuộng, đây là loại bào ngư thượng hạng đã tách vỏ, làm sạch, được New Fresh Foods bảo quản đông lạnh và đựng trong túi PE hay còn gọi túi ép chân không, đảm bảo an toàn chất lượng theo tiêu chuẩn của Úc.\r\nCách sử dụng:\r\nBào ngư đông lạnh chỉ cần rả lạnh và rửa sạch là có thể cho vào nồi nấu. Cho dù là hầm hoặc nấu canh đều phải bỏ bào ngư vào nồi khi nước còn lạnh hay hơi nóng, bởi vì bào ngư đông lạnh để tiếp xúc trực tiếp nước sôi thì tổ chức bên bề mặt sẽ nhanh chóng co rút lại và xuất hiện các vết nứt hoặc cạnh bào ngư bị rơi ra ảnh hưởng đến vẻ ngoài của bào ngư. Một số người thích sử dụng gừng luộc bào ngư để khử bỏ mùi tanh, nhưng phải ghi nhớ nước gừng chưa sôi là phải cho bào ngư vào để tránh phát sinh tình trạng kể trên.\r\n\r\nBảo quản:\r\nThời hạn sử dụng sản phẩm là 02 năm kể từ ngày sản xuất với điều kiện bảo quản ở nhiệt độ -18độ C. Nếu đã mở bao bì thì phải sử dụng ngay trong ngày và bảo quản trong tủ lạnh.', 'thumb_15375063182053_ABALONE.jpg, thumb_15375063077542_bao-ngu-3.jpg, thumb_15375061361841_bao-ngu-3.jpg', 'thumb_15375063182053_ABALONE.jpg'),
(3, 'NFF080211', 'Táo đỏ Mỹ', 'TrieuLong', 'HQNK', 100, 120000, NULL, 1, '1. Giống và chủng loại\r\n\r\nTáo Red Delicious có nguồn gốc tại một vườn cây ăn quả năm 1880. Năm 1892, tại vườn ươm Stark Nurseries đã tổ chức một cuộc thi để tìm một quả táo thay thế táo Ben Davis. Chiến thắng thuộc về 1 quả táo của Jesse Hiatt, một nông dân ở Peru, Lowa, Hoa Kỳ. Stark Nurseries mua bản quyền từ Hiatt, đổi tên thành táo Stark Delicious, phát triển thành Táo Red Delicious và bắt đầu truyền bá nó. Đến những năm 1980, Táo Red Delicious đạt ba phần tư sản lượng táo ở tiểu bang Washington. Một thập kỷ sau, táo Red Delicious đã giúp thúc đẩy việc trồng táo trở thành ngành công nghiệp táo của bang Washington.\r\n\r\n2. Xuất xứ và mùa vụ\r\n\r\n- Xuất xứ: Mỹ, tiểu bang Washington là vùng trồng nhiều táo nhất. Ðất đai ở Tiểu bang Washington rất màu mỡ nhờ tro dung nham núi lửa. Một năm trung bình có hơn 300 ngày nắng. Khí hậu khô và nóng nên rất ít gặp các vấn đề về côn trùng và dịch bệnh. Ở đây có một hệ thống tưới tiêu rộng khắp và nguồn cung cấp nước dồi dào từ sông Columbia và vùng núi Cascade. Nên rất thuận lợi cho việc trồng táo.\r\n- Mùa vụ: Táo Ðỏ được thu hoạch vào tháng 9 và tháng 10, được bảo quản trong kho lạnh với nhiệt độ 0-4 độ C, Táo đỏ có bán quanh năm.\r\n\r\n3. Thông tin dinh dưỡng\r\n\r\n- Táo Mỹ cũng như táo khác, chứa nhiều chất pectin, một chất xơ hòa tan làm giảm cholesterol và chất chống oxy hóa, ngăn ngừa bệnh tim.\r\n- Lượng magiê và kali trong táo giúp điều chỉnh áp suất máu và giữ cho nhịp đập tim ở mức ổn định, chất chống ôxy hoá tự nhiên giúp bảo vệ thành mạch máu.\r\n- Vỏ táo giàu chất xơ và có lợi cho hệ tiêu hóa, hơn 1 nửa lượng vitamin C của quả táo đều nằm ở vỏ.\r\n- Đường tự nhiên trong táo không ảnh hưởng tới bệnh nhân tiểu đường.\r\n- Chất kẽm trong táo làm tăng khả năng ghi nhớ của não người. Mặt khác, kẽm còn phối hợp với một số chất để tạo ra kháng thể, nâng cao khả năng đề kháng của cơ thể. Ngoài ra táo còn chứa các nguyên tố vi lượng khác như canxi, kali, sắt, phốtpho, các vitamin C, B1, B2.', 'thumb_15197107894306_1.jpg, thumb_15197075264638_z886379225028_43fdaf1a046fab353a418033339f695a.jpg, thumb_15197075244870_z886379217477_0fa765410ccc3c9b61147c4ccad2cc55.jpg', 'thumb_15197107894306_1.jpg'),
(4, ' NFF080203', 'Dâu Hàn Quốc', 'unisea', 'HQNK', 30, 200000, NULL, 1, '1. Xuất xứ và mùa vụ\r\n\r\n- Xuất xứ: Hàn Quốc\r\n\r\n- Mùa vụ: từ tháng 12 - tháng 5 năm sau\r\n\r\n2. Thông tin dinh dưỡng\r\n\r\nDâu tây Hàn Quốc chứa hàm lượng lớn vitamin và chất khoáng, lượng đường Fructose cao, trong đó hàm lượng chất khoáng như K, Na, Fe... cũng rất phong phú, cho nên ăn nhiều dâu tây giúp thúc đẩy chuyển hóa các chất trong cơ thể, làm máu huyết lưu thông, đồng thời có tác dụng trấn tĩnh, an thần, có thể dùng khi bị bệnh tiểu đường …\r\nNgoài ra, Dâu tây có các loại vitamin A, B1, B2 và đặc biệt là lượng vitamin C khá cao, hơn cả cam, dưa hấu. Đây là tính ưu việt của quả dâu tây giúp tăng sức đề kháng, chống nhiễm trùng, nhiễm độc, cảm cúm và chống stress, chống lão hóa (tác dụng thẩm mỹ rất tốt), giảm tác hại của thuốc lá, là thức uống giải khát rất được ưa chuộng…\r\nTheo đông y, Dâu tây vị ngọt, chua, tính mát, công hiệu bổ phổi, điều hòa chức năng tiêu hóa, bồi bổ cơ thể, mát máu, giải độc. Dùng chữa các chứng như ho do phổi nóng, cổ họng sưng đau, chán ăn, tiểu gắt, thiếu máu suy nhược, ung nhọt, say rượu...\r\n\r\n3. Lưu ý bảo quản và sử dụng\r\n*Cách bảo quản:\r\n- Dâu tây được thu hoạch khi chín trên cây, là loại trái cây rất nhạy cảm, nhất là về nhiệt độ.\r\n- Cách bảo quản Dâu tây tốt nhất: lấy một hộp kín, xếp dâu tây thành các tầng (ngăn cách nhau bởi lớp khăn giấy mỏng), xếp lần lượt các quả dâu vào các tầng với số lượng tăng dần từ dưới lên trên. Sau đó, đặt hộp vào tủ lạnh với nhiệt độ khoảng 0 - 4 độ C để giữ quả tươi ngon lâu hơn. Dâu tây có thể được lưu trữ trong tủ lạnh từ 3 - 5 ngày.\r\n- Không bao giờ để dâu tây ở nhiệt độ phòng hoặc trong ánh sáng mặt trời trực tiếp quá lâu vì điều này sẽ làm cho chúng nhanh hư hỏng.\r\n- Chỉ rửa Dâu tây trước khi ăn hoặc trước khi chế biến món ăn.\r\n*Cách sử dụng:\r\nDâu tây và cherry là những sản phẩm trái cây cao cấp. Dâu tây thường được dùng để ăn tươi và ăn ngon hơn khi dùng với kem, bánh kem. Ngoài ra, có thể dùng Dâu tây trong món salad, làm kem dâu tây, sinh tố...\r\n\r\nRất nhiều quý khách hàng thắc mắc về giá của Dâu tây cũng như chất lượng của chúng, rằng Dâu tây Hàn Quốc giá bao nhiêu? Dâu tây Hàn Quốc có an toàn thật hay không? hay nên mua Dâu tây Hàn Quốc ở đâu là uy tín Nhất. Hãy yên tâm, Klever Fruits luôn cam kết và bảo đảm chất lượng tuyệt đối những trái dâu tây tươi ngon đến tay quý khách hàng.', 'thumb_15197071207407_z886264976753_aa063f45c5d16d6fda3708b0fabd8074.jpg, thumb_15197070818939_z886266367256_8258c2c60d46593a921d9dab6d56683d.jpg, thumb_15197071186894_z886264951665_02d2b90b97d259e1057dabc96fbdf7f4.jpg', 'thumb_15197070818939_z886266367256_8258c2c60d46593a921d9dab6d56683d.jpg'),
(5, 'NFF080101', 'Bơ Sáp', 'HS29', 'TCT', 35, 90000, NULL, 1, 'BƠ SÁP ĐÀ LẠT\r\n\r\nMột mùa bơ nữa lại đến! Những người trồng và kinh doanh chúng tôi lại bắt đầu một mùa sôi động mới. Trái bơ ko còn xa lạ với tất cả chúng ta khi mà nhan nhản những biển hiệu \" BƠ SÁP ĐẮC LẮC\" đầy vỉa hè, hay ngay cả trong siêu thị, cửa hàng. Nhưng mấy ai mua được bơ sáp ngon, bơ sáp \"xịn\". có chăng là những trái bơ no tròn, căng mọng, xanh mướt, nhìn đẹp mắt là thế nhưng khi mua về thì ôi thôi... chỉ thấy bơ bị thối đầu, đen dần do hái non hoặc bổ ra ăn nhão nhoẹt do là bơ nước, ăn dở oạch. Bực mình cũng đành chịu, tiền mất đã đành chỉ uổng công bao ngày chờ đợi bơ chín, tới khi nhận chỉ là 1 đống thối rữa, ăn mất cảm tình. Thế nên bí kíp chọn bơ ngon và không hại não và thật đơn giản đó là chọn nơi bán uy tín. Vì chỉ có người bán nhiều kinh nghiệm mới chọn được những trái bơ sáp thực sự, ăn mới xứng đáng \" đồng tiền bát gạo\" và mới cảm nhận được đọ béo, dẻo của loại đặc sản Tây Nguyên này. Người thì nói bơ sáp Đắc Lắc ngon hơn bơ sáp Đà Lạt, người thì bảo bơ sáp Đà Lạt ngon hơn bơ sáp Đắc Lắc. Xin thưa, bơ Đắc Lắc hay bơ Đà Lạt đều có bơ ngon và bơ dở! Bơ ngon hay không tùy thuộc rất nhiều vào điều kiện thổ nhưỡng, khí hậu và cơ bản nhất là \"giống\" chuẩn sáp không. Chọn và trồng được giống bơ chuẩn đó là điều không phải đơn giản, do trước đây mối nhà đều \"trồng đại\" vài cây để ăn, ăn không hết thì bán được bao nhiêu thì được. Mà giống đời thật buồn cười, cứ thích mã to đẹp, nên bà con nông dân tự nhân giống bằng cách thấy trái to, đẹp mã là xin về làm giống, vì thế nên ta thấy ngoài chợ \"toàn bơ nước\".\r\nHôm nay Shop Đặc Sản Cao Nguyên mách bạn bí kíp chọn trái bơ ngon cũng như các loại bơ mà bạn không thể bỏ qua nhất là các bà bầu và trẻ em trong độ tuổi ăn ăn dặm nhé.\r\nThứ nhất: Hiện nay nước ta trồng bơ phù hợp nhất là ở Tây Nguyên, do cây bơ thích hợp với điều kiện đồi núi dốc để không bị úng nước và nơi có nhiều ánh nắng, cây bơ xòe tán rộng để đón ánh sáng quang hợp. Thế nên ta nói, Tây Nguyên là thủ phủ quả trái bơ!\r\nThứ hai: Có rất nhiều loại bơ nhưng được đánh giá là ngon, chất lượng, hạt nhỏ, béo dẻo không đối thủ, phù hợp tiêu thụ trong nước đó là bơ 034 trái dài (20-30cm), được trồng nhiều và duy nhất hiện nay là ở Lâm Đồng. Đây là giống bơ đầu dòng, được lai tạo từ cây mẹ hơn ba chục năm tuổi. Tuy nhiên nhược điểm của loại bơ này là do trái quá dài, nên dễ bị gãy đôi khi vận chuyển và cũng dễ bị thối đầu nếu hái non - bánh tẻ.', 'thumb_15197054022196_anh-2-8_232153911-2.jpg, thumb_15197046746242_1_121931.jpg, thumb_15197046746242_1_121931.jpg', 'thumb_15197054022196_anh-2-8_232153911-2.jpg'),
(6, 'NFF080103', 'Dâu Đà Lạt', 'TrieuLong', 'TCT', 60, 85000, NULL, 1, 'Dâu tây được trồng ở đâu Việt Nam?\r\n\r\n-Dâu tây (tên khoa học: Fragaria) là loài thực vật thuộc họ Hoa hồng (Rosaceae) cho quả được nhiều người ưa chuộng. Dâu tây có nguồn góc ở châu Mỹ và được các nhà làm vườn châu Âu cho lai tạo vào thế kỷ 18 để tạo nên giống dâu tây được trồng rộng rãi hiện nay.\r\n\r\n-Ở Việt Nam môi trường trồng được dâu tây chỉ có Sapa và Đà Lạt,trong đó sản phẩm dâu tây Đà Lạt nổi bật hơn hẳn,chiếm lĩnh thị trường từ Nam ra Bắc.\r\n\r\n-Dâu tây Đà Lạt được trồng theo công nghệ thủy canh:\r\n\r\n+Không thuốc diệt cỏ.\r\n\r\n+Không chất kích thích.\r\n\r\n+Không chất bảo quản\r\n\r\nĐặc điểm của dâu tây Đà Lạt\r\n\r\n-Dâu tây có hơn 20 loài,nhưng chủ yếu là dâu tây đỏ,khi chín có màu phớt hồng đẹp mắt,vỏ mỏng ( gần như không đáng kể ) cùi thịt dày,mọng nước,hạt nhỏ như hạt vừng có thể ăn được.Mùi hương thơm mát,dịu nhẹ nhưng cuốn hút.\r\n\r\n-Dâu tây Đà Lạt thích hợp với loại đất thịt nhẹ, hàm lượng chất hữu cơ cao, đất giữ ẩm nhưng thoát nước tốt độ pH từ 6-7.\r\n\r\n-Khí hậu ôn đới thích hợp cho cây dâu tây Đà Lạt sinh trưởng và phát triển với nhiệt độ từ 18 - 25°C và tốt nhất nên trồng ở nơi nào chỉ có nắng trực tiếp nửa ngày. Vì thế dâu tây rất được ưa chuộng trồng trong trậu treo để ban công.\r\n\r\nCông dụng của dâu tây\r\n\r\nDù sử dụng dưới bất kì hình thức nào thì dâu tây Đà Lạt vẫn mang lại những lợi ích không ngờ cho sức khỏe:\r\n\r\n-Dâu tây là nguồn cung cấp vitamin C cực kì dồi dào 3 quả dâu tay chứa 52mg Vitamin C đáp ứng 1/2 nhu cầu cơ thể trong ngày vừa chống oxi hóa tốt lại tăng cường hệ miễn dịch,ngăn ngừa bệnh đục thủy tinh thể,bảo vệ mắt ,ngăn ngừa nếp nhăn , làn da tươi trẻ\r\n\r\n-Trong dâu tây Đà Lạt còn chứa nhiều Axit ellagic - một chất hóa học thiên nhiên đã được chứng minh là có công dụng chống ung thư bằng cách chế ngự sự phát triển các tế bào ung thư.\r\n\r\n-Theo nghiên cứu Axit ellagic và các flavonoid có trong dâu tây làm giảm lượng cholesterol có hại,ngăn ngừa nguy cơ đột quỵ.Ngoài ra kali có trong dâu tây giúp điều hòa huyết áp,ổn định nhịp tim.\r\n\r\n-Lượng chất sơ có trong dâu tây Đà Lạt vừa hỗ trợ tiêu hóa lại có tác dụng giảm cân rõ rệt.3 quả dâu chỉ chứa 28kcal,không chất béo,lượng đường thấp,natri không đáng kể.', 'thumb_15197068013773_dau-tay-da1.jpg, thumb_15197067992658_5a18ead7d782c_1511582423.jpg, thumb_15197067477123_1vuon-dau-tay-da-lat-4.jpg', 'thumb_15197068013773_dau-tay-da1.jpg'),
(7, 'Q2TPV5CQ ', 'Thân Cua Hoàng Đế Alaska', 'unisea', 'HST', 25, 1690000, NULL, 1, 'Thân Cua King Crab ( Cua Hoàng Đế )\r\n\r\nCua KingCrab hay còn gọi là Cua Hoàng Đế Alaska được nhập khẩu từ Nauy & Canada.\r\n\r\n- Cua sống được làm sạch, tách bỏ mai lớn, chẻ làm đôi rồi đem đi xông nhiệt chín bằng nước biển - cấp đông nhanh.\r\n- Size từ 1,2kg - 2,5kg/ Bộ. Mỗi Bộ thân Cua gồm nửa thân, 3 chân, 1 càng. \r\n- Thịt Cua King crab chắc thịt, trắng, ngọt hấp dẫn, các món ăn ngon đơn giản như: Hấp bia, hấp nước dừa, hấp nước ngọt 7up, hoặc lấy chân cua cắt ra nướng với phô mai, sốt bơ tỏi,... ăn rất tuyệt vời! ', 'th_n_king_grande.jpg, alaska__11__grande.jpg, 5nen_grande.png, _hffff_grande.png', 'th_n_king_grande.jpg'),
(8, 'NFF050309', 'Tôm Thẻ Sinh Thái Nguyên Con VANNAMEI SHRIMP', 'CleverFood', 'HST', 32, 280000, NULL, 1, 'TÔM THẺ SINH THÁI ĐÔNG LẠNH\r\nCHẤT LƯỢNG TƯƠI SỐNG XUẤT KHẨU\r\n\r\nTôm thẻ sinh Thái được New Fresh Foods cấp đông từ hàng sống theo tiêu chuẩn xuất khẩu, đảm bảo giữ chất lượng của Tôm đạt mức cao nhất\r\n\r\nTôm thẻ sinh Thái New Fresh Foods không mạ băng, không tăng trọng, được đóng trong hộp 1 kg sạch sẽ và sang trọng.\r\n\r\nTôm thẻ sinh Thái\r\nSize: 35 con/ kg; 45 con/ kg\r\nNet: 100% - không mạ băng; không tăng trọng\r\nĐóng gói: 1 kg/ hộp', 'thumb_15621458865810_150.jpg', 'thumb_15621458865810_150.jpg'),
(9, 'P6M2EC42', 'Ngô bao tử (Nguyên vỏ)', 'HS29', 'RCS', 10, 35000, NULL, 1, 'Giới thiệu ngô bao tử\r\n\r\nNgô bao tử hay còn gọi là bắp bao tử. Cũng giống như bí ngô bao tử thì ngô bao tử cũng được thu hoạch từ khi còn non. Tức là bắp ngô khi lớn chỉ bằng ngón tay cái là đã thu hoạch được rồi. Người ta sẽ sử dụng nguyên bắp như một loại rau để chế biến và thường sử dụng rất nhiều trong ẩm thực Châu Á.\r\nNgô bao tử ăn rất giòn và ngọt, các món ăn với nó thì nhiều vô kể. Có thể xào, nấu, hầm, canh, nướng…đều được. Và nó cũng kết hợp rất hoàn hảo với hầu hết các loại thực phẩm khác. Các bà nội trợ rất ưa chuộng thực phẩm này, khi đi chợ hầu như cũng đều tìm mua ngô bao tử để bổ sung vào thực đơn cho gia đình. Vì vậy mà loại thực phẩm này ngày càng được tiêu thụ mạnh trên thị trường. Theo nghiên cứu thì giá trị dinh dưỡng của ngô cao hơn so rất nhiều so với các loại lương thực khác mà giá thì lại không quá cao.', 'ngô-bao-tử-H1.jpg, ngo-bao-tử.png', 'ngô-bao-tử-H1.jpg'),
(10, '9S3UUZ49', 'Cải bó xôi Đà Lạt – Rau Chân Vịt – Rau Cải Bina', 'HSX', 'RCS', 33, 80000, NULL, 1, 'Cải bó xôi – vị thuốc quen mà lạ\r\n\r\nCải bó xôi là loại rau không mấy xa lạ với người Việt ta. Bởi nó được dùng để chế biến thành các món ăn rất ngon và hợp khẩu vị. Nhưng nó ít được biết đến là vị thuốc chữa được rất nhiều loại bệnh. Ngoài cái tên cải bó xôi, nó còn có nhiều tên khác như: rau chân vịt, rau bắp xôi, rau nhà chùa, cải bina… Đây là loài cây thuộc họ nhà Dền và có xuất xứ từ miền Trung và Tây Nam Á.\r\nNguồn gốc cải bó xôi như thế nào?\r\n\r\nCải bó xôi cuống thường rất nhỏ, thân và lá có màu xanh đậm. Gốc thường có màu hồng và lá mọc thành chùm ở gốc. Loại cây này thường hay bị dập, nát vì thân và lá rất dòn cho nên cân phải chú ý trong vận chuyển hay sơ chế.\r\n\r\nỞ Việt Nam thường trồng cải bó xôi nhiều ở Đà Lạt. Rất ưa khí hậu lạnh, chịu được rét nhưng không chịu được nóng. Đây là loại thực phẩm sạch rất tốt cho sức khỏe được các nhà dinh dưỡng khuyên nên cho cải bó xôi vào bữa ăn gia đình.', 'cai-bo-xoi-1-1.jpg, cong-dunh-tuyet-voi-cua-cai-bo-xoi.jpg, mon-ngon-tu-cai-bo-xoi.jpg, ban-cai-bo-xoi-da-lat-loai-1-tai-ha-noi-e1551340710963.jpg', 'cai-bo-xoi-1-1.jpg'),
(11, 'S5FBKUNM', 'Diềm thăn bò', 'VinMart', 'TT', 15, 56980, NULL, 1, 'Sản phẩm Diềm thăn bò do VinMart cung cấp được sản xuất và sơ chế theo quy trình khép kín dưới sự giám sát và kiểm tra nghiêm ngặt, đảm bảo vệ sinh an toàn thực phẩm. Thăn bò rất giàu chất sắt có tác dụng bổ sung lượng máu cho cơ thể và phòng tránh cơ thể bị thiếu máu. Diềm thăn bò thích hợp nhất cho những người có thể chất yếu hoặc trí não đang bị suy giảm. Thành phần axit amin, protein trong diềm thăn bò là rất cần thiết cho cơ thể của con người. Do đó, nó có thể cải thiện sức đề kháng của cơ thể với bệnh tật.\r\nDiềm thăn bò là phần thịt mềm, có cả gân và mỡ nên thường được các bà nội trợ lựa chọn sử dụng. Thịt thường được kết hợp cùng các gia vị, thực phẩm khác chế biến thành các món ăn ngon thường ngày như bò nướng, bít tết, bò xào rau củ, sốt vang...\r\n\r\nGợi ý chế biến các món từ Diềm thăn bò\r\n\r\nThịt Diềm thăn là phần thịt được pha lọc từ phần thịt bụng của con vò, thịt diềm thăn có đặc trưng mềm, giòn và rất ngọt (giòn hơn phần thịt gầu), thịt diềm có đặc trưng xếp ngói chéo, các mô thịt nạc liên kết theo dạng bó, xếp chồng giữa các lớp mỡ bụng thơm ngậy béo.\r\nĐây có thể nói là phần thịt ngon nhất phần bụng hơn gầu, nạm - với người phương Tây, món Diềm thăn cuộn rau củ nướng, bỏ lò, steak áp chảo luôn là món ăn vô cùng hấp dẫn. Còn với người Châu Á, món diềm thăn thái lát nướng, lẩu là những món ăn được nhiều người thưởng thức. Diềm thăn là một sản phẩm thích hợp dùng để chế biến các món ăn như: bò xào cam, bò sốt me chua ngọt, bò trộn cà tím, bít tết... Tuy nhiên, sản phẩm được các nhà hàng, khách sạn và thực khách ưa chuộng hơn cả là món nướng.', '27009744863262.png, 27009744732190.png, 27009744601118.jpg', '27009744863262.png'),
(12, 'KE6PSUBH', 'Phi lê gà công nghiệp', 'VinMart', 'TT', 8, 32970, NULL, 1, 'Phi lê gà công nghiệp được chọn lọc từ phần thịt ngon và chắc nhất. Phần thịt này không có da nên cho hương vị rất thơm ngon. Ngoài những chất albumin, chất béo, thịt lườn gà còn có các vitamin A, B1, B2, C, E, axit, canxi, phốt pho, sắt. Đây là loại thực phẩm chất lượng cao, giúp cơ thể con người dễ hấp thu và tiêu hóa.\r\nSản phẩm Phi lê gà công nghiệp được cung cấp bởi hệ thống đại siêu thị VinMart, quy trình sơ chế và đóng gói sản phẩm được sự giám sát và kiểm tra nghiêm ngặt, đảm bảo vệ sinh an toàn thực phẩm nên người tiêu dùng có thể hoàn toàn yên tâm khi lựa chọn tiêu dùng. Sản phẩm đã được sơ chế sạch sẽ, hợp vệ sinh giúp các bà nội trợ tiết kiệm thời gian chế biến. Cùng với các thực phẩm khác, bạn có thể chế biến các món luộc, hấp, chiên, xào sả ớt... giúp phong phú thêm cho bữa ăn gia đình.', '9570291613726.jpeg, 9568762560542.jpeg, 9524728725534.jpeg', '9570291613726.jpeg');

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
(4, 'ThangLongExpress', 'Công ty cổ phần chuyển phát nhanh Thăng Long', '04.3911.3366 - 094.231.33.66', 'Công ty cổ phần chuyển phát nhanh Thăng Long là nơi luôn cung cấp dịch vụ chuyển phát nhanh và ship nội thành Hà Nội cho khách hàng. Công ty nhận ship hàng tất cả các ngày trong tuần cho khách hàng thân thiết. Bạn chắc hẳn sẽ phải hài lòng với dịch vụ của công ty Thăng Long bởi lẽ họ sở hữu một đội ngũ shipper trẻ, đầy nhiệt huyết, có tinh thần trách nhiệm cao. \r\n\r\n\r\nCông ty sẽ nhận vận chuyển quần áo, mũ nón, các mặt hàng thời trang, giầy dép, quà tặng, bưu phẩm, thư tín cùng một số sản phẩm như bánh kẹo, nước ngọt, trái cây, sách vở, tạp chí, đồ văn phòng phẩm, máy móc…'),
(5, 'ShipChungVN', 'Công ty cổ phần thương mại điện tử ShipChung Việt Nam', '84 1900 636 068', 'Shipchung là Cổng giao nhận vận chuyển giao hàng & thu tiền (CoD) đầu tiên tại Việt Nam, hỗ trợ người bán hàng TMĐT vận chuyển trong nước và quốc tế dễ dàng và thuận tiện cùng nhiều ưu đãi từ hơn 50 đối tác vận chuyển.\r\n\r\n\r\nCông ty cổ phần thương mại điện tử ShipChung Việt Nam là một trong mười công ty ship hàng hóa nhanh nhất, an toàn nhất tại Hà Nội. Công ty luôn cung cấp dịch vụ vận chuyển, giao hàng toàn quốc. Với kinh nghiệm hoạt động trong nghề suốt 15 năm qua cũng như là đội ngũ nhân viên trẻ đầy đam mê, sáng tạo, trách nhiệm, nhiệt huyết mà ShipChung đã là cái tên được mọi người nhắc đến rất nhiều. \r\n\r\n\r\nCông ty đã và đang không ngừng phấn đấu để trở thành một đơn vị thực sự lớn mạnh trong lĩnh vực thương mại điện tử, vận chuyển hàng hóa. ShipChung có những đối tác lớn như Kerry Express, Viettel Post, Haravan, Bizweb…');

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
(6, 'HSX', 'HẢI SẢN XANH', 'Số 49, Ngõ 50 Mễ Trì Thượng, Nam Từ Liêm, Hà Nội', '0916101013 - 0869650666', 'www.haisanxanh.com'),
(7, 'VinMart', 'Công ty Cổ phần Siêu thị VinMart - VinGroup', 'Tower 1, Times City, 458 Minh Khai, Phường Vĩnh Tuy, Quận Hai Bà Trưng, Thành phố Hà Nội', '02471066866', 'http://vinmart.com');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `shippers`
--
ALTER TABLE `shippers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
