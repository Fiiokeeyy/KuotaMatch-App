-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2026 at 12:29 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spk_paket_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `paket_data`
--

DROP TABLE IF EXISTS `paket_data`;
CREATE TABLE `paket_data` (
  `id_paket` int NOT NULL,
  `id_provider` int NOT NULL,
  `nama_paket` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `harga` int NOT NULL,
  `kuota_gb` int NOT NULL,
  `masa_aktif_hari` int NOT NULL,
  `skor_sinyal` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket_data`
--

INSERT INTO `paket_data` (`id_paket`, `id_provider`, `nama_paket`, `harga`, `kuota_gb`, `masa_aktif_hari`, `skor_sinyal`) VALUES
(1, 1, 'Combo Sakti 50GB', 100000, 50, 14, 5),
(2, 2, 'Freedom Internet 30GB', 75000, 30, 30, 4),
(3, 3, 'Happy 12GB', 40000, 12, 30, 3),
(4, 4, 'Xtra Combo Flex 40GB', 85000, 40, 30, 4),
(5, 5, 'Yang Bikin Nyaman 10GB', 35000, 10, 14, 5),
(6, 1, 'Internet OMG! 15GB', 65000, 15, 30, 5),
(7, 2, 'Yellow 1GB', 5000, 1, 1, 4),
(10, 3, 'Happy Spesial', 99000, 60, 30, 3),
(11, 4, 'Xtra Combo Plus VIP', 100000, 26, 30, 3);

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider` (
  `id_provider` int NOT NULL,
  `nama_provider` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id_provider`, `nama_provider`) VALUES
(1, 'Telkomsel'),
(2, 'IM3'),
(3, 'Tri'),
(4, 'XL'),
(5, 'By.U');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paket_data`
--
ALTER TABLE `paket_data`
  ADD PRIMARY KEY (`id_paket`),
  ADD KEY `id_provider` (`id_provider`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id_provider`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `paket_data`
--
ALTER TABLE `paket_data`
  MODIFY `id_paket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id_provider` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paket_data`
--
ALTER TABLE `paket_data`
  ADD CONSTRAINT `paket_data_ibfk_1` FOREIGN KEY (`id_provider`) REFERENCES `provider` (`id_provider`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
