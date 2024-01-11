CREATE DATABASE IF NOT EXISTS `pharmacity` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `pharmacity`;


CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `phoneNumbers` varchar(20) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  `access` varchar(20) NOT NULL,

  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `users` (`userID`, `email`, `phoneNumbers`, `fullName`, `password`, `dateOfBirth`, `gender`, `role`, `access`) VALUES
	(1, 'phuoc@gmail.com', '0986216717', 'Nguyễn Hữu Phước', '123', '2003-02-17', 'nam', 'admin', 'hoạt động'),
	(2, 'admin@gmail.com', '0986216717', 'admin', 'admin', '2003-02-17', 'nam', 'admin', 'hoạt động');	
	


CREATE TABLE IF NOT EXISTS `products` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `trademark` varchar(50) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `orderedNumbers` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dateAdded` date NOT NULL,
  `content` varchar(100) NOT NULL,

  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`productID`, `name`, `category`, `trademark`, `origin`, `price`, `sale`, `orderedNumbers`, `quantity`, `dateAdded`, `content`) VALUES
	(1, 'Máy đo huyết áp tự động Microlife B3 Basic hỗ trợ đo huyết áp', 'Máy đo huyết áp', 'MICROLIFE AG', 'Thụy Sĩ', 20000, 10000, 10, 1000, '2023-02-17', 'Máy đo huyết áp bắp tay tự động Microlife B3 Basic là sản phẩm thế hệ mới của thương hiệu Microlife đến từ Thụy Sĩ, dùng để đo huyết áp và nhịp tim. Sản phẩm ứng dụng công nghệ MAM hiện đại, thông minh mang lại cho người dùng trải nghiệm an toàn, nhanh chóng và chính xác.'),
	(2, 'Khẩu trang 3D trẻ em quai vải Swan Mask ngăn giọt bắn, vi khuẩn, khói bụi (10 cái)', 'Khẩu trang y tế', 'CÔNG TY TNHH VẬT TƯ Y TẾ GIA BẢO', 'Việt Nam', 24000, 500, 20, 1000, '2023-02-17', 'Khẩu trang 3D trẻ em quai vải Swan Mask với công nghệ lọc 4.0 mang lại hiệu quả trên 95%, giúp ngăn giọt bắn, vi khuẩn, khói bụi, bảo vệ đường hô hấp của bé tối ưu.'),
	(3, 'Khẩu trang Niva N95 hỗ trợ ngăn bụi và vi khuẩn (10 cái)', 'Khẩu trang y tế', 'DILIGO HOLDINGS', 'Việt Nam', 49000, 10000, 10, 1000, '2023-02-17', 'Khẩu trang NIVA N95 được tạo bởi 2 lớp vải không dệt cao cấp không thấm nước, bụi, dầu, giọt bắn, một lớp vải bông không dệt và 1 lớp màng lọc có tác dụng ngăn vi khuẩn, khói, bụi, dầu, giọt bắn xâm nhập, phòng chống các dịch bệnh nguy hiểm lây qua đường hô hấp. Sản phẩm khẩu trang N95 sử dụng hiệu quả cho các y bác sĩ, trong môi trường tiếp xúc với các bệnh nhân và phòng mổ, môi trường công nghiệp độc hại, nơi công cộng để ngăn ngừa dịch bệnh và giọt bắn có nguy cơ lây nhiễm mầm bệnh.'),
	(5, 'Khẩu trang y tế cao cấp 3Hmask 4D Vĩnh Tiến màu trắng hỗ trợ ngăn khói, bụi, kháng khuẩn (20 cái)', 'Khẩu trang y tế', 'Vĩnh Tiến', 'Việt Nam', 69000, 100, 20, 1000, '2023-02-17', 'Khẩu trang 4D 3Hmask Vĩnh Tiến với thiết kế form 4D ôm sát khuôn mặt, đảm bảo ngăn cản được các giọt bắn và siêu bụi mịn, ngăn vi khuẩn, phòng chống các dịch bệnh nguy hiểm lây qua đường hô hấp.'),
	(6, 'Khẩu trang y tế Hamita N95 ngăn bụi, kháng khuẩn (10 cái)', 'Khẩu trang y tế', 'HẠNH MINH', 'Việt Nam', 65000, 100, 20, 1000, '2023-02-17', 'Khẩu trang Hamita N95 Hộp 10 Cái với lớp lọc khuẩn công nghệ tĩnh điện để giữ lại các hạt mịn ô nhiễm không khí hiệu quả: Trên 95% bụi mịn 0.3 micron và trên 98% bụi mịn < 2.5 micron. Đây là khẩu trang N95 được khuyến nghị sử dụng khi chỉ số chất lượng không khí trên 100 (AQI).'),
	(7, 'Máy massage Pangao PG-2601B51 xoa dịu đốt sống cổ, giúp thư giãn giảm căng thẳng', 'Máy massage', 'Pangao', 'Trung Quốc', 1950000, 100, 20, 1000, '2023-02-17', 'Máy massage cổ Pangao sử dụng công nghệ xoa bóp mô phỏng Shiatsu ba chiều 3D và mô phỏng thao tác xoa bóp tại Spa. Đầu massage 3D áp dụng công nghệ ánh sáng hồng ngoại, có thể xoa dịu đốt sống cổ, giúp bạn thư giãn giảm căng thẳng ngay tại nhà.'),
	(8, 'Dụng cụ massage ngón tay Duy Thành giảm thiểu lo lắng, căng thẳng trong cuộc sống (1 cái x 120gr)', 'Máy massage', 'DUY THÀNH', 'Việt Nam', 70000, 100, 20, 1000, '2023-02-17', 'Dụng cụ massage ngón tay Duy Thành với thiết kế đặc biệt giúp việc massage các ngón tay hiệu quả, tăng cường sự kết nối xúc cảm và tiếp xúc với các cơ quan trong cơ thể. Mỗi lần bạn chỉ cần xoa nắn các ngón tay 3-5 phút, ngày làm 3-5 lần cũng giúp cải thiện sức khỏe rõ rệt.'),
	(9, 'Băng keo cá nhân in hình Pororo Kids Band Young Chemical Vina (72mm x 18mm - 20 miếng)', 'Băng y tế', 'CÔNG TY TNHH YOUNG CHEMICAL VINA', 'Việt Nam', 27000, 100, 20, 1000, '2023-02-17', 'Băng Keo Cá Nhân Kids Band (Pororo) là dòng sản phẩm dành cho trẻ nhỏ và đối tượng người dùng có da nhạy cảm phân phối dành cho thị trường Việt Nam. Bề mặt sản phẩm được in hình nhận vật hoạt hình Pororo dễ thương, đi kèm với vải băng gạc có chứa Benzalkonium giúp mau làm lành vết thương. Đây là sản phẩm mà các bậc phụ huynh nên cân nhắc bổ sung cho tủ thuốc – dụng cụ y tế gia đình mình.'),
	(10, 'Bông viên Niva YB2 dùng trong phòng khám, vệ sinh cá nhân, vệ sinh vết thương, tẩy trang (100 viên)', 'Bông y tế', 'DILIGO HOLDINGS', 'Việt Nam', 32000, 100, 20, 1000, '2023-02-17', 'Bông viên Niva được làm từ 100% bông thiên nhiên​, có sợi sơ dài và chắc chắn nên khi sử dụng sẽ không bị đổ bụi. Sản phẩm được dùng để làm sạch vết thương, thấm máu và dịch tiết hoặc để thấm thuốc bôi lên vết thương.');




--	(5, 'Khẩu trang, bụi', 'Khẩu trang y tế', 'trademark', 'Việt Nam', 39000, 100, 20, 1000, '2023-02-17', 'content');




CREATE TABLE IF NOT EXISTS `voucher` (
  `voucherID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sale` int(11) NOT NULL,
  `expiredDat` date NOT NULL,
  `condition` int(11) NOT NULL,

  PRIMARY KEY (`voucherID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE IF NOT EXISTS `wishes` (
  `userID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  PRIMARY KEY (`userID`,`productID`),
  KEY `userID` (`userID`),
  KEY `productID` (`productID`),
  CONSTRAINT `wishes_fk_userID` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`),
  CONSTRAINT `wishes_fk_productID` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=UTF8MB4_UNICODE_CI;






CREATE TABLE IF NOT EXISTS `purchases` (
  `userID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `receivedDate` date NOT NULL,
  `starNumber` int(11) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `dateRated` date NOT NULL,
  PRIMARY KEY (`userID`,`productID`),
  KEY `userID` (`userID`),
  KEY `productID` (`productID`),  
  CONSTRAINT `purchases_fk_userID` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`),
  CONSTRAINT `purchases_fk_productID` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE IF NOT EXISTS `address` (
  `userID` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `ward` varchar(50) NOT NULL,
  `detail` varchar(100) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `userID` (`userID`),
  CONSTRAINT `address_fk_userID` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;







CREATE TABLE IF NOT EXISTS `vouchers` (
  `userID` int(11) NOT NULL,
  `voucherID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`userID`,`voucherID`),
  KEY `userID` (`userID`),
  KEY `voucherID` (`voucherID`), 
  CONSTRAINT `vouchers_fk_userID` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`),
  CONSTRAINT `vouchers_fk_voucherID` FOREIGN KEY (`voucherID`) REFERENCES `voucher` (`voucherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE IF NOT EXISTS `verify` (
  `userID` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `exipiredTime` time NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `userID` (`userID`), 
  CONSTRAINT `verify_fk_userID` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




