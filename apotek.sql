-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 02:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(64) NOT NULL,
  `pembuatan_obat` text NOT NULL,
  `stok_obat` varchar(64) NOT NULL,
  `tanggal_kadaluarsa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `pembuatan_obat`, `stok_obat`, `tanggal_kadaluarsa`) VALUES
(1, 'Obat Batuk', 'Dextromethorphan HBr. Dextromethorphan HBr merupakan kandungan obat batuk antitusif yang paling sering digunakan untuk mengatasi batuk kering. ...\r\nDiphenhydramine HCl dan Chlorpheniramine Maleate. ...\r\nPseudoephedrine HCl. ...\r\nBromhexine HCl dan Guaifanesin', '10', '2025-09-21'),
(2, 'Obat Flu', 'Analgesik/antipiretik + nasal dekongestan.\r\nAnalgesik/antipretik + nasal dekongestan + antihistamin.\r\nAnalgesik/antipiretik + nasal dekongestan + antihistamin + antitusif/ekspektoran', '9', '2026-11-03'),
(3, 'Obat Mag', 'Sidomuncul', '17', '2027-09-18'),
(4, 'Obat Demam', 'Panadol', '20', '2025-01-19'),
(5, 'Obat Flu/Batuk', 'Paracetamol', '17', '2026-03-12'),
(6, 'Obat Pusing', 'Botdrek', '17', '2025-02-19'),
(7, 'Jamu', 'Buyung Upi', '7', '2027-09-21'),
(8, 'Obat lambung', '', '25', '2028-10-29'),
(9, 'Obat Keras', '', '10', '2025-10-12'),
(10, 'Vitamin', 'Hallowel', '34', '2025-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(64) NOT NULL,
  `nomor_identitas` varchar(121) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `Alamat` text NOT NULL,
  `No_Telepon` int(20) NOT NULL,
  `nama_pasien` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nomor_identitas`, `jenis_kelamin`, `Alamat`, `No_Telepon`, `nama_pasien`) VALUES
(1, '1222313', 'Laki-laki', 'Jl kosambi Jakarta Pusat', 827237277, 'Firman'),
(2, '155242524256', 'Perempuan', 'Jl.Kelapa Gading II ', 856738299, 'Rikka'),
(3, '65766565766', 'Laki-laki', 'JL.Kelapa Gading III', 865747748, 'Junet'),
(4, '673267536745', 'Laki-laki', 'JL.Marun Utara', 812474847, 'Reza'),
(5, '38732827842', 'Perempuan', 'JL.Semarang IV Jakarta Utara', 826233663, 'Erika'),
(6, '22173882', 'Perempuan', 'Jl.Danau Toba No.34 Jakarta Utara', 897327287, 'Calista'),
(7, '22173882', 'Laki-laki', 'Jl.Pelangi No.35 Jakarta Utara', 878237273, 'Lukman'),
(8, '7238727', 'Perempuan', 'Jl.Saturnus No.2 Jakarta Pusat', 2147483647, 'Olivia'),
(9, '8834838', 'Laki-laki', 'Jl.	Kelapa Gading III No.32 Jakarta Utara', 812679809, 'Rio'),
(10, '3172041208060003', 'Laki-laki', 'Kp.Sukapura jaya Rt.006/010.Jakarta Utara', 2147483647, 'Rakha prtama');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_obat` int(11) NOT NULL,
  `id_pasien` int(11) DEFAULT NULL,
  `id_transaksi` int(11) NOT NULL,
  `harga_obat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_obat`, `id_pasien`, `id_transaksi`, `harga_obat`) VALUES
(1, 1, 1, 'Rp 20.000'),
(2, 2, 2, 'Rp 20.000'),
(3, 3, 3, 'Rp 19.000'),
(4, 4, 4, 'Rp 25.000'),
(5, 5, 5, 'Rp 20.000'),
(6, 6, 6, 'Rp 15.000'),
(7, 7, 7, 'Rp 35.000'),
(8, 8, 8, 'Rp 17.000'),
(9, 9, 9, 'Rp 23.000'),
(10, 10, 10, 'Rp 8.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
