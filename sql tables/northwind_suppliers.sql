-- Step 1: Select the database
USE northwind;

-- Step 2: Drop the table if it exists for a clean setup
DROP TABLE IF EXISTS `suppliers`;

-- Step 3: Create the Suppliers Dimension Table
-- This table stores details about the vendors providing products
CREATE TABLE `suppliers` (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(40) NOT NULL,
  `ContactName` varchar(30) DEFAULT NULL,
  `ContactTitle` varchar(30) DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Region` varchar(15) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `Phone` varchar(24) DEFAULT NULL,
  `Fax` varchar(24) DEFAULT NULL,
  `HomePage` longtext,
  PRIMARY KEY (`SupplierID`),
  KEY `CompanyName` (`CompanyName`),
  KEY `PostalCode` (`PostalCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Step 4: Insert Supplier data
INSERT INTO `suppliers` VALUES 
(1,'Exotic Liquids','Charlotte Cooper','Purchasing Manager','49 Gilbert St.','London',NULL,'EC1 4SD','UK','(171) 555-2222',NULL,NULL),
(2,'New Orleans Cajun Delights','Shelley Burke','Order Administrator','P.O. Box 78934','New Orleans','LA','70117','USA','(100) 555-4822',NULL,'#CAJUN.HTM#'),
(3,'Grandma Kelly\'s Homestead','Regina Murphy','Sales Representative','707 Oxford Rd.','Ann Arbor','MI','48104','USA','(313) 555-5735','(313) 555-3349',NULL),
(4,'Tokyo Traders','Yoshi Nagase','Marketing Manager','9-8 Sekimai Musashino-shi','Tokyo',NULL,'100','Japan','(03) 3555-5011',NULL,NULL),
(5,'Cooperativa de Quesos \'Las Cabras\'','Antonio del Valle Saavedra ','Export Administrator','Calle del Rosal 4','Oviedo','Asturias','33007','Spain','(98) 598 76 54',NULL,NULL);
