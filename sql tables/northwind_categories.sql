USE northwind;

-- Table structure for table `categories`
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(15) NOT NULL,
  `Description` longtext,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `categories`
INSERT INTO `categories` VALUES 
(1,'Beverages','Soft drinks, coffees, teas, beers, and ales'),
(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings'),
(3,'Confections','Desserts, candies, and sweet breads'),
(4,'Dairy Products','Cheeses'),
(5,'Grains/Cereals','Breads, crackers, pasta, and cereal'),
(6,'Meat/Poultry','Prepared meats'),
(7,'Produce','Dried fruit and bean curd'),
(8,'Seafood','Seaweed and fish');
