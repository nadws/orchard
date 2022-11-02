-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 01:10 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `or`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_opname`
--

CREATE TABLE `tb_opname` (
  `id_opname` int(11) NOT NULL,
  `kode_opname` varchar(20) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `stok_aktual` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `catatan` varchar(50) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_opname`
--

INSERT INTO `tb_opname` (`id_opname`, `kode_opname`, `id_produk`, `stok`, `stok_aktual`, `harga`, `catatan`, `status`, `tgl`) VALUES
(10, '210315RJK', 70, 10, 12, 235000, '', 'Selesai', '2021-03-15 16:01:00'),
(11, '210315RJK', 69, 10, 4, 235000, '', 'Selesai', '2021-03-15 16:01:00'),
(12, '210315RJK', 68, 9, 9, 235000, '', 'Selesai', '2021-03-15 16:01:00'),
(13, '210315RJK', 67, 10, 8, 205000, '', 'Selesai', '2021-03-15 16:01:00'),
(14, '210315MDE', 63, 10, 0, 128000, '', 'Selesai', '2021-03-15 16:01:40'),
(15, '210315MDE', 61, 10, 0, 128000, '', 'Selesai', '2021-03-15 16:01:40'),
(16, '210315MDE', 66, 10, 0, 128000, '', 'Selesai', '2021-03-15 16:01:40'),
(17, '210315MDE', 65, 10, 0, 128000, '', 'Selesai', '2021-03-15 16:01:40'),
(18, '210315MDE', 62, 10, 0, 128000, '', 'Selesai', '2021-03-15 16:01:40'),
(19, '210315MDE', 64, 10, 0, 128000, '', 'Selesai', '2021-03-15 16:01:40'),
(20, '210315JOG', 4, 8, 0, 240000, 'terbakar', 'Selesai', '2021-03-15 16:29:40'),
(21, '210315JOG', 14, 10, 0, 335000, '', 'Selesai', '2021-03-15 16:29:40'),
(22, '210315JOG', 16, 8, 0, 487500, 'hilang', 'Selesai', '2021-03-15 16:29:40'),
(23, '210315JOG', 13, 7, 0, 255000, 'hancur', 'Selesai', '2021-03-15 16:29:40'),
(24, '210315JOG', 8, 10, 0, 280000, 'mines', 'Selesai', '2021-03-15 16:29:40'),
(25, '210315JOG', 6, 10, 0, 229500, '', 'Selesai', '2021-03-15 16:29:40'),
(26, '210315JOG', 19, 9, 0, 335000, '', 'Selesai', '2021-03-15 16:29:40'),
(27, '210315JOG', 2, 10, 0, 143000, '', 'Selesai', '2021-03-15 16:29:40'),
(28, '210315JOG', 3, 10, 0, 143000, '', 'Selesai', '2021-03-15 16:29:40'),
(29, '210315JOG', 7, 10, 0, 245000, '', 'Selesai', '2021-03-15 16:29:40'),
(30, '210315JOG', 20, 10, 0, 247000, '', 'Selesai', '2021-03-15 16:29:40'),
(31, '210315JOG', 17, 10, 0, 300000, '', 'Selesai', '2021-03-15 16:29:40'),
(32, '210315JOG', 11, 10, 0, 247000, '', 'Selesai', '2021-03-15 16:29:40'),
(33, '210315JOG', 10, 10, 0, 245000, '', 'Selesai', '2021-03-15 16:29:40'),
(34, '210315JOG', 5, 10, 0, 335000, '', 'Selesai', '2021-03-15 16:29:40'),
(35, '210315JOG', 1, 10, 0, 487500, '', 'Selesai', '2021-03-15 16:29:40'),
(36, '210315JOG', 12, 10, 0, 487500, '', 'Selesai', '2021-03-15 16:29:40'),
(37, '210315JOG', 15, 10, 0, 335000, '', 'Selesai', '2021-03-15 16:29:40'),
(38, '210315JOG', 9, 10, 0, 487500, '', 'Selesai', '2021-03-15 16:29:40'),
(39, '210315JOG', 18, 10, 0, 335000, '', 'Selesai', '2021-03-15 16:29:40'),
(40, '210315GIM', 47, 10, 0, 90000, '', 'Draft', '2021-03-15 16:57:52'),
(41, '210315GIM', 51, 10, 0, 180000, '', 'Draft', '2021-03-15 16:57:52'),
(42, '210315GIM', 49, 10, 0, 280000, '', 'Draft', '2021-03-15 16:57:52'),
(43, '210315GIM', 50, 10, 0, 390000, '', 'Draft', '2021-03-15 16:57:52'),
(44, '210315GIM', 53, 10, 0, 280000, '', 'Draft', '2021-03-15 16:57:52'),
(45, '210315GIM', 48, 10, 0, 180000, '', 'Draft', '2021-03-15 16:57:52'),
(46, '210315GIM', 52, 10, 0, 210000, '', 'Draft', '2021-03-15 16:57:52'),
(47, '210315GIM', 4, 8, 0, 240000, '', 'Draft', '2021-03-16 07:58:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_opname`
--
ALTER TABLE `tb_opname`
  ADD PRIMARY KEY (`id_opname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_opname`
--
ALTER TABLE `tb_opname`
  MODIFY `id_opname` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
