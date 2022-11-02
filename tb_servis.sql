-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 01:19 AM
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
-- Table structure for table `tb_servis`
--

CREATE TABLE `tb_servis` (
  `id_servis` int(11) NOT NULL,
  `nm_servis` varchar(150) NOT NULL,
  `durasi` int(11) NOT NULL,
  `menit` int(11) NOT NULL,
  `biaya` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_servis`
--

INSERT INTO `tb_servis` (`id_servis`, `nm_servis`, `durasi`, `menit`, `biaya`) VALUES
(5, 'manicure nail art (basic)', 2, 15, 135000),
(6, 'pedicure nail art (basic)', 2, 15, 145000),
(7, 'manicure basic', 1, 15, 135000),
(8, 'pedicure basic', 1, 15, 145000),
(9, 'callusan', 0, 30, 165000),
(10, 'manicure gel / polish', 1, 30, 145000),
(11, 'pedicure gel / polish', 1, 30, 150000),
(12, 'nail extension ', 3, 15, 50000),
(13, 'Remove Gel Tangan/Kaki', 0, 30, 50000),
(14, 'manicure basic male', 1, 15, 150000),
(15, 'pedicure basic male', 1, 15, 180000),
(16, 'manicure kids', 1, 15, 65000),
(17, 'pedicure kids', 1, 15, 85000),
(18, 'creambath hair spa (Loreal)', 2, 15, 195000),
(19, 'wash and blow (Shiseido)', 1, 0, 90000),
(20, 'permanent blow (B)', 4, 15, 1280000),
(21, 'hair detox', 2, 15, 360000),
(22, 'perawatan rambut rontok', 1, 30, 160000),
(23, 'masker rambut', 1, 45, 195000),
(24, 'reflexy 30', 0, 45, 45000),
(25, 'reflexy 60', 1, 15, 80000),
(26, 'head and shoulders', 0, 30, 45000),
(27, 'Hair Smoothing (A)', 3, 0, 600000),
(28, 'KERATIN SMOOTHING', 2, 30, 130000),
(29, 'KERATIN GLASS', 2, 30, 150000),
(30, 'manicure nail art (gale/polish)', 2, 15, 145000),
(31, 'pedicure nail art (gel/polish)', 2, 15, 150000),
(32, 'wash and blow (Loreal)', 1, 0, 70000),
(33, 'creambath hair spa (Shideidow)', 2, 15, 250000),
(34, 'creambath hair spa Lux (Loreal)', 2, 15, 320000),
(35, 'creambath hair spa Lux (Shiseido)', 2, 15, 350000),
(36, 'creambath hair spa dandruff / sensitif', 2, 15, 250000),
(37, 'Remove Gel / Nail', 0, 30, 10000),
(38, 'Remove Nail Extension', 0, 30, 100000),
(39, 'Remove Nail Extension / Nail', 0, 30, 20000),
(40, 'Perbaikan', 1, 0, 0),
(41, 'Hair Smoothing (B)', 3, 0, 800000),
(42, 'Hair Smoothing (C)', 3, 0, 1000000),
(43, 'Hair Smoothing (D)', 3, 0, 1200000),
(44, 'Keratin Smoothing (A)', 3, 0, 850000),
(45, 'Keratin Smoothing (B)', 3, 0, 1000000),
(46, 'Keratin Smoothing (C)', 3, 0, 1150000),
(47, 'Keratin Smoothing (D)', 3, 0, 1350000),
(48, 'permanent blow (C)', 4, 15, 1440000),
(49, 'permanent blow (D)', 4, 25, 1600000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_servis`
--
ALTER TABLE `tb_servis`
  ADD PRIMARY KEY (`id_servis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_servis`
--
ALTER TABLE `tb_servis`
  MODIFY `id_servis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
