-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2021 at 08:51 PM
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
-- Table structure for table `tb_servis`
--

CREATE TABLE `tb_servis` (
  `id_servis` int(11) NOT NULL,
  `nm_servis` varchar(150) NOT NULL,
  `durasi` int(11) NOT NULL,
  `menit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_servis`
--

INSERT INTO `tb_servis` (`id_servis`, `nm_servis`, `durasi`, `menit`) VALUES
(5, 'manicure nail art', 2, 15),
(6, 'pedicure nail art', 2, 15),
(7, 'manicure basic', 1, 15),
(8, 'pedicure basic', 1, 15),
(9, 'callusan', 0, 30),
(10, 'manicure gel / polish', 1, 30),
(11, 'pedicure gel / polish', 1, 30),
(12, 'nail extension ', 3, 15),
(13, 'remove', 0, 30),
(14, 'manicure basic male', 1, 15),
(15, 'pedicure basic male', 1, 15),
(16, 'manicure kids', 1, 15),
(17, 'pedicure kids', 1, 15),
(18, 'creambath hair spa', 2, 15),
(19, 'wash and blow', 1, 0),
(20, 'permanent blow', 4, 15),
(21, 'hair detox', 2, 15),
(22, 'perawatan rambut rontok', 1, 30),
(23, 'masker rambut', 1, 45),
(24, 'reflexy 30', 0, 45),
(25, 'reflexy 60', 1, 15),
(26, 'head and shoulders', 0, 30),
(27, 'Smoothing ', 3, 0),
(28, 'KERATIN SMOOTHING', 2, 30),
(29, 'KERATIN GLASS', 2, 30);

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
  MODIFY `id_servis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
