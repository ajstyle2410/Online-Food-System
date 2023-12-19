-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.43-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for onlinefood
CREATE DATABASE IF NOT EXISTS `onlinefood` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `onlinefood`;

-- Dumping structure for table onlinefood.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table onlinefood.category
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table onlinefood.food
CREATE TABLE IF NOT EXISTS `food` (
  `food_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `img_name` varchar(100) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `features` varchar(100) DEFAULT NULL,
  `achive` varchar(100) DEFAULT NULL,
  `food_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`food_id`),
  KEY `cat_id` (`cat_id`),
  CONSTRAINT `food_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table onlinefood.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_title` varchar(50) DEFAULT NULL,
  `food_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `cust_name` varchar(100) DEFAULT NULL,
  `cust_contact` varchar(100) DEFAULT NULL,
  `cust_address` varchar(100) DEFAULT NULL,
  `cust_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `food_id` (`food_id`),
  KEY `cat_id` (`cat_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table onlinefood.registration
CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `rpassword` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table onlinefood.tbl_admin
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(10) unsigned NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
