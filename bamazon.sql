DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE `products` (
  `itemID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) NOT NULL,
  `DepartmentName` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `StockQuantity` int(100) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO `products` (`itemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES
	(1, 'Xbox', 'Electronics', 499.99, 10),
	(2, 'Elite Controller', 'Electronics', 120, 111),
	(3, 'Backpack', 'School Supplies', 19.99, 23),
	(4, 'Football Jersey', 'Attire', 39.99, 15),
	(5, 'Supreme Jacket', 'Attire', 279.99, 4),
	(6, 'Calculator', 'School Supplies', 99, 141),
	(7, 'Levis', 'Attire', 59.99, 3),
	(8, 'GTA 5', 'Electronics', 59.99, 21),
	(9, 'Jordans', 'Attire', 199.99, 353),
	(10, 'Basketball Jersey', 'Attire', 19.99, 75),
	(11, 'Drumset', 'Instruments', 500.00, 3),
	(12, 'IPhone X', 'Electronics', 1000, 19),
	(13, 'Pencils', 'School Supplies', 0.10, 874),
	(14, 'Headphones', 'Electronics', 48.50, 167);
    
    CREATE TABLE IF NOT EXISTS `departments` (
  `DepartmentID` int(11) NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(100) NOT NULL,
  `OverHeadCosts` int(11) DEFAULT NULL,
  `TotalSales` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `OverHeadCosts`, `TotalSales`) VALUES
	(1, 'Instruments', 1500, 15125.50),
	(2, 'School Supplies', 1000, 1330.03),
	(3, 'Attire', 2300, 1854.87),
	(4, 'Household', 4000, 234.76),
	(5, 'Electronics', 1700, 74500.50);