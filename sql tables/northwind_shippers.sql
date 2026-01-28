-- Step 1: Select the database
USE northwind;

-- Step 2: Drop the table if it exists for a clean setup
DROP TABLE IF EXISTS `shippers`;

-- Step 3: Create the Shippers Dimension Table
-- This table contains the shipping companies used for delivery
CREATE TABLE `shippers` (
  `ShipperID` int NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(40) NOT NULL,
  `Phone` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`ShipperID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Step 4: Insert Shipper data
INSERT INTO `shippers` (`ShipperID`, `CompanyName`, `Phone`) VALUES 
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');
