-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 01:18 AM
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
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `nm_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `terjual` int(11) NOT NULL,
  `foto` text NOT NULL,
  `diskon` int(11) NOT NULL,
  `stok_nyata` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `id_kategori`, `id_satuan`, `sku`, `nm_produk`, `harga`, `stok`, `terjual`, `foto`, `diskon`, `stok_nyata`) VALUES
(1, 1, 1, 'BRG1', 'Loreal Serie Expert Liss Unlimited Mask 500ml', 487500, 10, 0, 'Loreal_Serie_Expert_Liss_Unlimited_Mask_500ml1.png', 0, 0),
(2, 1, 1, 'BRG2', 'LOREAL PROFESSIONNEL OXYDANT CREME DEVELOPER - 1000ML 1', 143000, 10, 0, 'LOREAL_PROFESSIONNEL_OXYDANT_CREME_DEVELOPER_-_1000ML_1.png', 0, 0),
(3, 1, 1, 'BRG3', 'LOREAL PROFESSIONNEL OXYDANT CREME DEVELOPER - 1000ML 2', 143000, 10, 0, 'LOREAL_PROFESSIONNEL_OXYDANT_CREME_DEVELOPER_-_1000ML_2.png', 0, 0),
(4, 1, 4, 'BRG4', 'DANCOLY Argan Repail Oil 60ml', 240000, 8, 2, 'DANCOLY_Argan_Repail_Oil_60ml.png', 0, 10),
(5, 1, 1, 'BRG5', 'Loreal Serie Expert Liss Unlimited Mask', 335000, 10, 0, 'Loreal_Serie_Expert_Liss_Unlimited_Mask.png', 0, 10),
(6, 1, 1, 'BRG6', 'LOREAL Professionel Liss Unlimited Blow Dry Serum', 229500, 10, 0, 'LOREAL_Professionel_Liss_Unlimited_Blow_Dry_Serum1.png', 0, 0),
(7, 1, 1, 'BRG7', 'LOREAL Professionnel Serie Expert Absolut Repair Lipidium Serum 50ml', 245000, 10, 0, 'LOREAL_Professionnel_Serie_Expert_Absolut_Repair_Lipidium_Serum_50ml.png', 0, 0),
(8, 1, 1, 'BRG8', 'Loreal Mythic Oil', 280000, 10, 0, 'Loreal_Mythic_Oil.png', 0, 0),
(9, 1, 2, 'BRG9', 'Loreal Serie Expert Vitamino Color AOX Masque 500ml', 487500, 10, 0, 'Loreal_Serie_Expert_Vitamino_Color_AOX_Masque_500ml.png', 0, 0),
(10, 1, 1, 'BRG10', 'Loreal Serie Expert Absolut Repair Serum 50ml', 245000, 10, 0, 'Loreal_Serie_Expert_Absolut_Repair_Serum_50ml.png', 0, 0),
(11, 1, 4, 'BRG11', 'LOREAL Serie Expert Absolut Repair Lipidium Thermo Repair Blow Dry Cream 125ml', 247000, 10, 0, 'LOREAL_Serie_Expert_Absolut_Repair_Lipidium_Thermo_Repair_Blow_Dry_Cream_125ml.png', 0, 0),
(12, 1, 1, 'BRG12', 'Loreal Serie Expert Nutrifier Mask 500ml', 487500, 10, 0, 'Loreal_Serie_Expert_Nutrifier_Mask_500ml.png', 0, 0),
(13, 1, 1, 'BRG13', 'Loreal Liss Unlimited Primrose Oil Blow-Dry Serum', 255000, 7, 3, 'Loreal_Liss_Unlimited_Primrose_Oil_Blow-Dry_Serum.png', 0, 0),
(14, 1, 1, 'BRG14', 'Loreal Lipidium Absolut Repair Hair Mask', 335000, 10, 0, 'Loreal_Lipidium_Absolut_Repair_Hair_Mask.png', 0, 0),
(15, 1, 1, 'BRG15', 'Loreal Serie Expert Vitamino Color AOX Masque', 335000, 10, 0, 'Loreal_Serie_Expert_Vitamino_Color_AOX_Masque.png', 0, 0),
(16, 1, 1, 'BRG16', 'Loreal Lipidium Absolut Repair Hair Mask 500ml', 487500, 8, 2, 'Loreal_Lipidium_Absolut_Repair_Hair_Mask_500ml.png', 0, 0),
(17, 1, 1, 'BRG17', 'LOREAL Professionnel Serie Liss Unlimited Keratin Complex Mask 200 m', 300000, 10, 0, 'LOREAL_Professionnel_Serie_Liss_Unlimited_Keratin_Complex_Mask_200_ml.png', 0, 0),
(18, 1, 1, 'BRG18', 'LOREAL Vitamino Color AOX Mask 200 ML', 335000, 10, 0, 'LOREAL_Vitamino_Color_AOX_Mask_200_ML.png', 0, 0),
(19, 1, 1, 'BRG19', 'LOREAL Professionnel Expert Serie Expert Nutrifier Mask 250 Ml', 335000, 9, 1, 'LOREAL_Professionnel_Expert_Serie_Expert_Nutrifier_Mask_250_Ml.png', 0, 0),
(20, 1, 1, 'BRG20', 'LOREAL Professionnel Serie Expert Smoothing Cream Inforcer 150ml', 247000, 10, 0, 'LOREAL_Professionnel_Serie_Expert_Smoothing_Cream_Inforcer_150ml.png', 0, 0),
(21, 2, 1, 'BRG21', 'Loreal Professionnel Serie Expert Vitamino Color AOX Shampoo', 190000, 10, 0, '1__Loreal_Professionnel_Serie_Expert_Vitamino_Color_AOX_Shampoo.png', 0, 0),
(22, 2, 1, 'BRG22', 'Loreal Serie Expert Sensi Balance Sorbitol Shampoo', 190000, 10, 0, '2__Loreal_Serie_Expert_Sensi_Balance_Sorbitol_Shampoo.png', 0, 0),
(23, 2, 1, 'BRG23', 'Loreal Serie Expert Inforcer Shampoo', 190000, 10, 0, '3__Loreal_Serie_Expert_Inforcer_Shampoo.png', 0, 0),
(24, 2, 1, 'BRG24', 'Loreal Hair Spa DX detox Shampoo', 88000, 10, 0, '4__Loreal_Hair_Spa_DX_detox_Shampoo.png', 0, 0),
(25, 2, 1, 'BRG25', 'Loreal Serie Expert Professionnel Pro Longer Shampoo 300ml', 190000, 10, 0, '5__Loreal_Serie_Expert_Professionnel_Pro_Longer_Shampoo_300ml.png', 0, 0),
(26, 2, 1, 'BRG26', 'LOREAL Professionnel Serie Expert Sensi Balance Shampoo 250ml', 170000, 10, 0, '6__LOREAL_Professionnel_Serie_Expert_Sensi_Balance_Shampoo_250ml.png', 0, 0),
(27, 2, 1, 'BRG27', 'Loreal Serie Expert Density Advanced Shampoo 300 ml', 190000, 10, 0, '7__Loreal_Serie_Expert_Density_Advanced_Shampoo_300_ml.png', 0, 0),
(28, 2, 2, 'BRG28', 'Loreal Serie Expert Curl Countour Shampoo', 190000, 10, 0, '8__Loreal_Serie_Expert_Curl_Countour_Shampoo.png', 0, 0),
(29, 2, 1, 'BRG29', 'Loreal Serie Expert Magnesium Silver Shampoo', 190000, 10, 0, '9__Loreal_Serie_Expert_Magnesium_Silver_Shampoo.png', 0, 0),
(30, 2, 1, 'BRG30', 'LOREAL Absolut Repair Lipidium Shampoo 300 ml', 190000, 10, 0, '10__LOREAL_Absolut_Repair_Lipidium_Shampoo_300_ml.png', 0, 0),
(31, 2, 1, 'BRG31', 'LOREAL Instant Clear Shampoo 300 ml', 190000, 10, 0, '11__LOREAL_Instant_Clear_Shampoo_300_ml.png', 0, 0),
(32, 2, 1, 'BRG32', 'LOREAL Professionnel Serie Expert Instant Clear Shampoo 250 ml', 170000, 10, 0, '12__LOREAL_Professionnel_Serie_Expert_Instant_Clear_Shampoo_250_ml.png', 0, 0),
(33, 2, 1, 'BRG33', 'LOREAL Liss Unlimited Shampoo 300 ml', 190000, 10, 0, '13__LOREAL_Liss_Unlimited_Shampoo_300_ml.png', 0, 0),
(34, 2, 1, 'BRG34', 'LOREAL Professionnel Serie Expert Liss Unlimited Keratinoil Complex Shampoo 250 ml', 170000, 10, 0, '14__LOREAL_Professionnel_Serie_Expert_Liss_Unlimited_Keratinoil_Complex_Shampoo_250_ml.png', 0, 0),
(35, 2, 1, 'BRG35', 'LOREAL Nutrifier Shampoo 300 Ml', 190000, 10, 0, '15__LOREAL_Nutrifier_Shampoo_300_Ml.png', 0, 0),
(36, 2, 1, 'BRG36', 'Loreal Serie Expert Pure Resource Shampoo 300 ml', 190000, 10, 0, '16__Loreal_Serie_Expert_Pure_Resource_Shampoo_300_ml.png', 0, 0),
(37, 2, 1, 'BRG37', 'Loreal Hair Spa Deep Nourishing Shampoo', 88000, 10, 0, '17__Loreal_Hair_Spa_Deep_Nourishing_Shampoo.png', 0, 0),
(38, 3, 2, 'BRG38', 'Jepit Banana Swarovski', 405000, 10, 0, '1__Jepit_Banana_Swarovski.png', 0, 0),
(39, 3, 2, 'BRG39', 'Jacquelle Hair Towel Cap 1', 50000, 10, 0, '2__Jacquelle_Hair_Towel_Cap.png', 0, 0),
(40, 3, 2, 'BRG40', 'Jacquelle Hair Towel Cap 2', 50000, 10, 0, '2__Jacquelle_Hair_Towel_Cap_2.png', 0, 0),
(41, 3, 2, 'BRG41', 'Bando Swarovski', 385000, 10, 0, '3__Bando_Swarovski.png', 0, 0),
(42, 3, 2, 'BRG42', 'Jepit mini Swarovski', 130000, 10, 0, '4__Jepit_mini_Swarovski.png', 0, 0),
(43, 3, 2, 'BRG43', 'Jepit Rectangle Swarovski', 205000, 10, 0, '5__Jepit_Rectangle_Swarovski.png', 0, 0),
(44, 3, 2, 'BRG44', 'Jepit C Swarovski', 415000, 10, 0, '6__Jepit_C_Swarovski.png', 0, 0),
(45, 3, 2, 'BRG45', 'Mini Jedai Swarovski', 695000, 10, 0, '7__Mini_Jedai_Swarovski.png', 0, 0),
(46, 3, 2, 'BRG46', 'Jepit Besar Swarovski', 795000, 10, 0, '8__Jepit_Besar_Swarovski.png', 0, 0),
(47, 4, 4, 'BRG47', 'Dot to dot nail parlour w7 pink fuschia white set', 90000, 10, 0, '1__Dot_to_dot_nail_parlour_w7_pink_fuschia_white_set.png', 0, 0),
(48, 4, 1, 'BRG48', 'OPI Original Polish Remover', 180000, 10, 0, '2__OPI_Original_Polish_Remover.png', 0, 0),
(49, 4, 4, 'BRG49', 'OPI LACQUER NAIL POLISH COLOR', 280000, 10, 0, '3__OPI_LACQUER_NAIL_POLISH_COLOR.png', 0, 0),
(50, 4, 4, 'BRG50', 'OPI Nail & Cuticle Oil ORIGINAL', 390000, 10, 0, '4__OPI_Nail_Cuticle_Oil_ORIGINAL.png', 0, 0),
(51, 4, 1, 'BRG51', 'OPI Acetone Free Polish Remover', 180000, 10, 0, '5__OPI_Acetone_Free_Polish_Remover.png', 0, 0),
(52, 4, 4, 'BRG52', 'OPI Washington Collection DC Mini 4set', 210000, 10, 0, '6__OPI_Washington_Collection_DC_Mini_4set.png', 0, 0),
(53, 4, 1, 'BRG53', 'OPI Nail Lacquer Vernis A Ongles - Excuse Me , Big Sur', 280000, 10, 0, '7__OPI_Nail_Lacquer_Vernis_A_Ongles_-_Excuse_Me_,_Big_Sur.png', 0, 0),
(54, 5, 1, 'BRG54', 'LOREAL Professionel Serie Expert Vitamino Color Aox Infinite 10 in 1', 275000, 10, 0, '1__LOREAL_Professionel_Serie_Expert_Vitamino_Color_Aox_Infinite_10_in_1.png', 0, 0),
(55, 5, 1, 'BRG55', 'Loreal Hair Spa Deep Nourishing Creambath 1000ml', 249000, 10, 0, '2__Loreal_Hair_Spa_Deep_Nourishing_Creambath_1000ml.png', 0, 0),
(56, 5, 2, 'BRG56', 'Tangle Teezer Hello Kitty', 349000, 10, 0, '3__Tangle_Teezer_Hello_Kitty.png', 0, 0),
(57, 5, 1, 'BRG57', 'LOREAL Tecni Art Hollywod Siren Waves 150 ml', 235000, 10, 0, '4__LOREAL_Tecni_Art_Hollywod_Siren_Waves_150_ml.png', 0, 0),
(58, 5, 1, 'BRG58', 'Loreal Serie Expert Absolute Repair Lipidium Wheat Oil Serum', 245000, 10, 0, '5__Loreal_Serie_Expert_Absolute_Repair_Lipidium_Wheat_Oil_Serum.png', 0, 0),
(59, 5, 4, 'BRG59', 'Loreal Serie Expert Nutrifier Creme Brush Leave In', 247000, 10, 0, '6__Loreal_Serie_Expert_Nutrifier_Creme_Brush_Leave_In.png', 0, 0),
(60, 5, 1, 'BRG60', 'Loreal Serie Expert Inforcer Mask 500ml', 487500, 10, 0, '7__Loreal_Serie_Expert_Inforcer_Mask_500ml.png', 0, 0),
(61, 6, 4, 'BRG61', 'Loreal majibrown', 128000, 10, 0, '1__Loreal_majibrown.png', 0, 0),
(62, 6, 4, 'BRG62', 'Loreal majirel cool cover', 128000, 10, 0, '2__Loreal_majirel_cool_cover.png', 0, 0),
(63, 6, 4, 'BRG63', 'Loreal Maji Fashion', 128000, 10, 0, '3__Loreal_Maji_Fashion.png', 0, 0),
(64, 6, 4, 'BRG64', 'Majirouge Loreal', 128000, 10, 0, '4__Majirouge_Loreal.png', 0, 0),
(65, 6, 4, 'BRG65', 'Loreal majirel', 128000, 10, 0, '5__Loreal_majirel.png', 0, 0),
(66, 6, 4, 'BRG66', 'Loreal majilift', 128000, 10, 0, '6__Loreal_majilift.png', 0, 0),
(67, 16, 1, 'BRG67', 'LOREAL Serie Expert Vitamino Color AOX Conditioner 200 ML', 205000, 10, 0, '1__LOREAL_Serie_Expert_Vitamino_Color_AOX_Conditioner_200_ML.png', 0, 0),
(68, 16, 1, 'BRG68', 'LOreal Serie Expert Professionnel Pro Longer Conditioner 200ml', 235000, 9, 1, '2__L’Oréal_Serie_Expert_Professionnel_Pro_Longer_Conditioner_200ml.png', 0, 0),
(69, 16, 1, 'BRG69', 'Loreal Serie Expert Nutrifier Conditioner 200 ml', 235000, 10, 0, '3__Loreal_Serie_Expert_Nutrifier_Conditioner_200_ml.png', 0, 0),
(70, 16, 1, 'BRG70', 'Loreal Absolut Repair Conditioner', 235000, 10, 0, '4__Loreal_Absolut_Repair_Conditioner.png', 0, 0),
(71, 17, 2, 'BRG71', 'Hypee Pee Bag', 30000, 10, 0, '1__Hypee_Pee_Bag.png', 0, 0),
(72, 17, 2, 'BRG72', 'Hypee Toilet Seat Cover', 25000, 10, 0, '2__Hypee_Toilet_Seat_Cover.png', 0, 0),
(73, 17, 2, 'BRG73', 'Hypee Stand Up and Pee', 20000, 10, 0, '3__Hypee_Stand_Up_and_Pee.png', 0, 0),
(74, 18, 2, 'BRG74', 'Kimchi Pack', 35000, 10, 0, '1__Kimchi_Pack.png', 0, 0),
(75, 18, 2, 'BRG75', 'Rose Birdnest Sarang Burung Walet Peach Gum & Minuman 100% fresh and homemade using natural product', 135000, 10, 0, '2__Rose_Birdnest_Sarang_Burung_Walet_Peach_Gum_Minuman_100%_fresh_and_homemade_using_natural_product.png', 0, 0),
(76, 18, 1, 'BRG76', 'Pure Birdnest 250ml', 175000, 10, 0, '3__Pure_Birdnest_250ml.png', 0, 0),
(77, 19, 4, 'BRG77', 'Loreal Pro Longer Renewing Cream', 247000, 10, 0, '1__Loreal_Pro_Longer_Renewing_Cream.png', 0, 0),
(78, 19, 1, 'BRG78', 'Loreal Serie Expert Professionnel Pro Longer Masque Mask 250ml', 335000, 10, 0, '2__Loreal_Serie_Expert_Professionnel_Pro_Longer_Masque_Mask_250ml.png', 0, 0),
(79, 20, 4, 'BRG79', 'Bath and Body Works Hand Cream', 96000, 10, 0, '1__Bath_and_Body_Works_Hand_Cream.png', 0, 0),
(80, 21, 2, 'BRG80', 'Jacquelle Magic Remover', 50000, 10, 0, '1__Jacquelle_Magic_Remover.png', 0, 0),
(81, 22, 5, 'BRG81', 'Nail Art / Nail', 10000, 10, 0, 'orchard_logo.jpeg', 0, 0),
(82, 22, 5, 'BRG82', 'Nail Art Mix / Nail', 20000, 10, 0, 'orchard_logo1.jpeg', 0, 0),
(83, 22, 5, 'BRG83', 'Nail Art Add French', 20000, 10, 0, 'orchard_logo2.jpeg', 0, 0),
(84, 22, 5, 'BRG84', 'Nail Color', 80000, 10, 0, 'orchard_logo3.jpeg', 0, 0),
(85, 22, 5, 'BRG85', 'Nail Color / Nail', 30000, 10, 0, 'orchard_logo4.jpeg', 0, 0),
(86, 22, 5, 'BRG86', 'Nail Tip / Kuku Palsu', 145000, 10, 0, 'orchard_logo5.jpeg', 0, 0),
(87, 22, 5, 'BRG87', 'Nail Extension / Nail', 50000, 10, 0, 'orchard_logo6.jpeg', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
