-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 11:31 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_pencucian`
--

-- --------------------------------------------------------

--
-- Table structure for table `transports`
--

CREATE TABLE `transports` (
  `id` int(11) NOT NULL,
  `user_nib` int(11) DEFAULT NULL,
  `nama_pemilik` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `antrian` int(11) DEFAULT NULL,
  `status` enum('Belum Selesai','Selesai') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transports`
--

INSERT INTO `transports` (`id`, `user_nib`, `nama_pemilik`, `jenis`, `tanggal`, `waktu`, `antrian`, `status`, `createdAt`, `updatedAt`) VALUES
(3, 105, 'Jihan', 'Mobil', '2023-05-13', '20:54:00', 1, 'Selesai', '2023-05-13 13:55:48', '2023-05-13 14:38:02'),
(4, 105, 'Dewi', 'Motor', '2023-05-13', '17:01:00', 2, 'Belum Selesai', '2023-05-13 13:56:18', '2023-05-13 19:01:59'),
(13, 105, 'Izah', 'Motor', '2023-05-14', '00:02:00', 1, 'Selesai', '2023-05-13 17:03:15', '2023-05-13 18:01:02'),
(14, 105, 'Dinda', 'Mobil', '2023-05-14', '06:45:00', 2, 'Belum Selesai', '2023-05-13 17:03:56', '2023-05-13 19:11:31'),
(17, 105, 'Ozil', 'Mobil', '2023-05-14', '11:59:00', 4, 'Selesai', '2023-05-13 17:59:29', '2023-05-13 19:11:22'),
(18, 105, 'Zizah', 'Motor', '2023-05-14', '13:00:00', 5, 'Belum Selesai', '2023-05-13 18:00:58', '2023-05-13 18:00:58'),
(20, 105, 'Amel', 'Motor', '2023-05-14', '13:11:00', 6, 'Belum Selesai', '2023-05-13 19:10:58', '2023-05-13 19:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nib` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nama_usaha` varchar(255) DEFAULT NULL,
  `harga_mobil` int(11) DEFAULT NULL,
  `harga_motor` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nib`, `nama`, `nama_usaha`, `harga_mobil`, `harga_motor`, `password`, `createdAt`, `updatedAt`) VALUES
(2, 102, 'Fajar', 'Suka Jaya', 20000, 10000, '$2b$10$Pjmi7/1VDtA4BcMdOobxy.bLka2.b3kx2X5dJC0KNm0UG3A1HWXQO', '2023-04-26 06:18:36', '2023-04-26 06:18:36'),
(3, 101, 'Tsalitsa', 'Scuto', 30000, 15000, '$2b$10$oIxJEPNV01Z6pTlgh/Hhru6bIiyQPDpeTeGmQVvvecOy./kmbWVMq', '2023-04-26 06:45:10', '2023-04-27 06:44:42'),
(4, 103, 'Riski', 'Ceria', 20000, 15000, '$2b$10$2jbdCVBLDpk17VdPy0xPSuZ5rzuRjojiQCtkTFFfomFUUnFsJeApK', '2023-04-26 11:50:11', '2023-04-26 11:50:11'),
(9, 105, 'Fajar Riski', 'Cuci kendaraan', 25000, 15000, '$2b$10$Eu9dN8auU.Ot9SVAgCDCtOyI2ga9OI4g1bXSkc6XlET3YJpj3vfry', '2023-05-09 18:13:41', '2023-05-13 19:12:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transports`
--
ALTER TABLE `transports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_nib` (`user_nib`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nib` (`nib`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transports`
--
ALTER TABLE `transports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transports`
--
ALTER TABLE `transports`
  ADD CONSTRAINT `transports_ibfk_1` FOREIGN KEY (`user_nib`) REFERENCES `users` (`nib`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
