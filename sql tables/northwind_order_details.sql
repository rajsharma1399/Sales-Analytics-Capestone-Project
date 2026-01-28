-- Step 1: Select the database
USE northwind;

-- Step 2: Drop and recreate the table structure
DROP TABLE IF EXISTS `order details`;

CREATE TABLE `order details` (
  `OrderID` int NOT NULL,
  `ProductID` int NOT NULL,
  `UnitPrice` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `Quantity` int NOT NULL DEFAULT '1',
  `Discount` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`OrderID`,`ProductID`),
  KEY `OrderID` (`OrderID`),
  KEY `ProductID` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Step 3: InsertTransactional Data
INSERT INTO `order details` VALUES 
(10248,11,14.0000,12,0),
(10248,42,9.8000,10,0),
(10248,72,34.8000,5,0),
(10249,14,18.6000,9,0),
(10249,51,42.4000,40,0),
(10250,41,7.7000,10,0),
(10250,51,42.4000,35,0.15),
(10250,65,16.8000,15,0.15),
(10251,22,16.8000,6,0.05),
(10251,57,15.6000,15,0.05),
(10251,65,16.8000,20,0),
(10252,20,64.8000,40,0.05),
(10252,33,2.0000,25,0.05),
(10252,60,27.2000,40,0);
-- (Add remaining data here)
