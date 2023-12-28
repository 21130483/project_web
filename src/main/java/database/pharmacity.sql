CREATE DATABASE IF NOT EXISTS `pharmatity` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `pharmatity`;


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
	(1, '21130483@st.hcmuaf.edu.vn', '0986216717', 'Nguyễn Hữu Phước', '123', '2003-02-17', 'nam', 'admin', 'hoạt động');
	


CREATE TABLE IF NOT EXISTS `products` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `trademark` varchar(50) NOT NULL,
  `origin` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `orderedNumbers` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dateAdded` date NOT NULL,

  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`productID`, `name`, `category`, `trademark`, `origin`, `content`, `price`, `sale`, `orderedNumbers`, `quantity`, `dateAdded`) VALUES
	(1, 'khẩu trang', 'khẩu trang', 'Vingroup', 'Việt Nam', 'rất tốt, chất lượng số một', 20000, 10000, 10, 1000, '2023-02-17');




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




