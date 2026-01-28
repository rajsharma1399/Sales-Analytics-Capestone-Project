USE northwind;

-- Customers table structure
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `CustomerID` varchar(5) NOT NULL,
  `CompanyName` varchar(40) NOT NULL,
  `ContactName` varchar(30) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data Insert
INSERT INTO `customers` (`CustomerID`, `CompanyName`, `ContactName`, `City`, `Country`) VALUES 
('ALFKI','Alfreds Futterkiste','Maria Anders','Berlin','Germany'),
('ANATR','Ana Trujillo Emparedados y helados','Ana Trujillo','México D.F.','Mexico'),
('ANTON','Antonio Moreno Taquería','Antonio Moreno','México D.F.','Mexico'),
('AROUT','Around the Horn','Thomas Hardy','London','UK'),
('BERGS','Berglunds snabbköp','Christina Berglund','Luleå','Sweden');
