-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2021 at 08:49 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1294561_orchard`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_cancel`
--

CREATE TABLE `tb_cancel` (
  `id_cancel` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cancel`
--

INSERT INTO `tb_cancel` (`id_cancel`, `tgl`, `nama`, `telepon`, `ket`) VALUES
(12, '2020-12-16', 'Yumna dan suami ', '', 'Masih ada urusan '),
(13, '2020-12-16', 'Inda', '', 'Masih ada tamu '),
(14, '2020-12-16', 'Teman melisa ', '', '-'),
(15, '2020-12-17', 'Avisa', '', '-'),
(16, '2020-12-19', 'Eva', '', 'Tidak ada kabar'),
(17, '2020-12-19', 'Indri', '', 'Masih rapid test'),
(18, '2020-12-19', 'Dede', '', 'Telat 51 menit'),
(19, '2020-12-19', 'Ria', '', 'Gak ada kabar'),
(20, '2020-12-19', 'Annatasya', '', 'Gk ada kabar'),
(23, '2021-01-06', 'Kris anugerah vita', '081259999664', 'Salah input'),
(24, '2021-01-08', 'Fediya ', '081351358882', 'Salah input terapis'),
(25, '2021-01-09', 'Sela', '', 'Salah input terapis'),
(26, '2021-01-09', 'Sela', '', 'Salah input terapis'),
(27, '2021-01-09', 'Raisa', '', 'Ganti terapis'),
(28, '2021-01-09', 'Raisa', '', 'Ganti terapis'),
(29, '2021-01-09', 'Dewi oktavia', '', 'Ganti terapis'),
(30, '2021-01-09', 'Dewi oktavia', '', 'Ganti terapis'),
(31, '2021-01-09', 'Ressa', '', 'Ganti terapis'),
(32, '2021-01-09', 'Ressa', '', 'Ganti terapis'),
(33, '2021-01-09', 'Alifa', '', 'Ganti terapis'),
(34, '2021-01-31', 'Happy', '08113344027', 'Ga ada kabar'),
(35, '2021-02-03', 'Arum raras bre', '08115021217', '560000'),
(36, '2021-02-05', 'Yumna', '081251314109', 'Ganti therapist '),
(37, '2021-02-14', 'Riska', '081350822020', 'Sakit'),
(38, '2021-02-16', 'Rina novianty', '08115121678', 'Ganti treatment '),
(39, '2021-02-21', 'Mama watia', '', 'Salah treatment '),
(40, '2021-02-21', 'Nisa', '', 'Salah nama');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cancel`
--
ALTER TABLE `tb_cancel`
  ADD PRIMARY KEY (`id_cancel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cancel`
--
ALTER TABLE `tb_cancel`
  MODIFY `id_cancel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
