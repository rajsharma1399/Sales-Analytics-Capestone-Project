-- Step 1: Select the database
USE northwind;

-- Step 2: Drop the table if it exists for a clean setup
DROP TABLE IF EXISTS `orders`;

-- Step 3: Create the Orders Table
-- This table records high-level order metadata and shipping details
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` varchar(5) DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `RequiredDate` datetime DEFAULT NULL,
  `ShippedDate` datetime DEFAULT NULL,
  `ShipVia` int DEFAULT NULL,
  `Freight` decimal(10,4) DEFAULT '0.0000',
  `ShipName` varchar(40) DEFAULT NULL,
  `ShipAddress` varchar(60) DEFAULT NULL,
  `ShipCity` varchar(15) DEFAULT NULL,
  `ShipRegion` varchar(15) DEFAULT NULL,
  `ShipPostalCode` varchar(10) DEFAULT NULL,
  `ShipCountry` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `EmployeeID` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Step 4: Insert Order Metadata
INSERT INTO `orders` VALUES 
(10248,'VINET',5,'1994-08-04','1994-09-01','1994-08-16',3,32.3800,'Vins et alcools Chevalier','59 rue de l\'Abbaye','Reims',NULL,'51100','France'),
(10249,'TOMSP',6,'1994-08-05','1994-09-16','1994-08-10',1,11.6100,'Toms Spezialitäten','Luisenstr. 48','Münster',NULL,'44087','Germany'),
(10250,'HANAR',4,'1994-08-08','1994-09-05','1994-08-12',2,65.8300,'Hanari Carnes','Rua do Paço, 67','Rio de Janeiro','RJ','05454-876','Brazil'),
(10251,'VICTE',3,'1994-08-08','1994-09-05','1994-08-15',1,41.3400,'Victuailles en stock','2, rue du Commerce','Lyon',NULL,'69004','France'),
(10252,'SUPRD',4,'1994-08-09','1994-09-06','1994-08-11',2,51.3000,'Suprêmes délices','Boulevard Tirou, 255','Charleroi',NULL,'B-6000','Belgium');
