-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for belajarci4
CREATE DATABASE IF NOT EXISTS `belajarci4` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `belajarci4`;

-- Dumping structure for table belajarci4.tbl_jurusan
CREATE TABLE IF NOT EXISTS `tbl_jurusan` (
  `idjurusan` int(11) NOT NULL AUTO_INCREMENT,
  `kodejurusan` varchar(6) DEFAULT NULL,
  `namajurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idjurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table belajarci4.tbl_jurusan: ~4 rows (approximately)
REPLACE INTO `tbl_jurusan` (`idjurusan`, `kodejurusan`, `namajurusan`) VALUES
	(1, '1001', 'Teknik Sipil'),
	(2, '1002', 'Arsitektur'),
	(3, '1003', 'Teknik Sistem Komputer'),
	(4, '1004', 'Teknik Informatika');

-- Dumping structure for table belajarci4.tbl_mahasiswa
CREATE TABLE IF NOT EXISTS `tbl_mahasiswa` (
  `idmahasiswa` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(12) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `idjurusan` int(11) DEFAULT NULL,
  `angkatan` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`idmahasiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table belajarci4.tbl_mahasiswa: ~4 rows (approximately)
REPLACE INTO `tbl_mahasiswa` (`idmahasiswa`, `nim`, `nama`, `idjurusan`, `angkatan`) VALUES
	(1, '10012101', 'Mathew Ryan', 1, '2021'),
	(2, '10022102', 'Diego Alves', 2, '2021'),
	(3, '10032103', 'Danilo barbosa', 3, '2021'),
	(4, '10042104', 'Andre Gomes', 4, '2021');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
