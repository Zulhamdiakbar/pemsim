-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for regresi_linear
CREATE DATABASE IF NOT EXISTS `regresi_linear` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `regresi_linear`;

-- Dumping structure for table regresi_linear.hasil
CREATE TABLE IF NOT EXISTS `hasil` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `a` float NOT NULL,
  `b` float NOT NULL,
  `result` varchar(300) NOT NULL DEFAULT '',
  `pearson` float NOT NULL DEFAULT 0,
  `koefisien_determinasi` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table regresi_linear.hasil: ~1 rows (approximately)
/*!40000 ALTER TABLE `hasil` DISABLE KEYS */;
INSERT INTO `hasil` (`id`, `a`, `b`, `result`, `pearson`, `koefisien_determinasi`) VALUES
	(5, 2338.6, -365.2, 'Y = 2338.60 + (-365.20X)', -0.800578, 0.640926);
/*!40000 ALTER TABLE `hasil` ENABLE KEYS */;

-- Dumping structure for table regresi_linear.input_data
CREATE TABLE IF NOT EXISTS `input_data` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table regresi_linear.input_data: ~4 rows (approximately)
/*!40000 ALTER TABLE `input_data` DISABLE KEYS */;
INSERT INTO `input_data` (`id`, `x`, `y`) VALUES
	(9, 1, 2514),
	(10, 2, 1138),
	(11, 3, 882),
	(12, 4, 848),
	(13, 5, 833);
/*!40000 ALTER TABLE `input_data` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
