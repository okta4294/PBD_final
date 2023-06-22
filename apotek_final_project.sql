-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 04:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek_final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `apoteker`
--

CREATE TABLE `apoteker` (
  `Id_Apoteker` int(11) NOT NULL,
  `Nama_Apoteker` varchar(50) NOT NULL,
  `Nohp` varchar(15) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apoteker`
--

INSERT INTO `apoteker` (`Id_Apoteker`, `Nama_Apoteker`, `Nohp`, `Alamat`, `Email`) VALUES
(1, 'Kibutsuji Muzan', '081233344', 'Gunungkidul', 'muzan@gmail.com'),
(2, 'Tamayo', '08223311', 'Condongcatur', 'tamayo@yahoo.com'),
(3, 'Shoko Ieiri', '08955447', 'Gunungkidul', 'shoko@gmail.com'),
(4, 'Tony Chopper', '0854678', 'Seturan', 'tonytony@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Kode_Customer` int(11) NOT NULL,
  `Nama_Customer` varchar(50) NOT NULL,
  `JenisKelamin_Customer` enum('Perempuan','Laki-Laki') NOT NULL,
  `Nohp_Customer` varchar(15) NOT NULL,
  `Alamat_Customer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Kode_Customer`, `Nama_Customer`, `JenisKelamin_Customer`, `Nohp_Customer`, `Alamat_Customer`) VALUES
(1, 'Jotaro Kujo', 'Laki-Laki', '087764512', 'Homeless'),
(2, 'Umaru', 'Perempuan', '08945523', 'Pondok indah'),
(3, 'Monkey D Luffy', 'Laki-Laki', '08653378', 'Condongcatur'),
(4, 'Asep', 'Laki-Laki', '087754663', 'Kulonprogo'),
(5, 'Suminah', 'Perempuan', '0855441122', 'Semarang');

-- --------------------------------------------------------

--
-- Table structure for table `item_nota`
--

CREATE TABLE `item_nota` (
  `Nonota` varchar(10) NOT NULL,
  `Kode_Obat` varchar(10) NOT NULL,
  `Total_Harga` int(11) NOT NULL,
  `Banyak_Obat` int(11) NOT NULL,
  `Harga_Satuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `Kode_Kasir` int(11) NOT NULL,
  `Nama_Kasir` varchar(50) NOT NULL,
  `Pass` varchar(15) NOT NULL,
  `Nohp` int(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`Kode_Kasir`, `Nama_Kasir`, `Pass`, `Nohp`, `Alamat`) VALUES
(1, 'Isma', '123', 87753421, 'Candigebang'),
(2, 'Rojali', '2233', 875332, 'Condongcatur');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `Nonota` varchar(10) NOT NULL,
  `TglTransaksi` date NOT NULL,
  `Kode_Kasir` int(11) NOT NULL,
  `Kode_Customer` int(11) NOT NULL,
  `Total_Pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`Nonota`, `TglTransaksi`, `Kode_Kasir`, `Kode_Customer`, `Total_Pembayaran`) VALUES
('ert', '2023-06-13', 2, 2, 60000),
('we4', '2023-06-24', 1, 3, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `Kode_Obat` varchar(10) NOT NULL,
  `Nama_Obat` varchar(50) NOT NULL,
  `Harga_Obat` int(11) NOT NULL,
  `Stok_Obat` varchar(50) NOT NULL,
  `Expaired_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`Kode_Obat`, `Nama_Obat`, `Harga_Obat`, `Stok_Obat`, `Expaired_date`) VALUES
('aa', 'Insto', 15000, '40', '2026-10-01'),
('bb', 'Antimo', 20000, '50', '2026-08-21'),
('ee', 'Neo Rheumacyl', 20000, '20', '2027-04-23'),
('hh', 'Dulcolax', 30000, '30', '2027-07-01'),
('rr', 'Panadol', 40000, '50', '2026-11-05'),
('ss', 'Sanmol', 30000, '60', '2028-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--

CREATE TABLE `pemilik` (
  `Id_Pemilik` int(11) NOT NULL,
  `Nama_Pemilik` varchar(50) NOT NULL,
  `Nohp` varchar(15) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apoteker`
--
ALTER TABLE `apoteker`
  ADD PRIMARY KEY (`Id_Apoteker`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Kode_Customer`);

--
-- Indexes for table `item_nota`
--
ALTER TABLE `item_nota`
  ADD UNIQUE KEY `Nonota` (`Nonota`),
  ADD UNIQUE KEY `Kode_Obat` (`Kode_Obat`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`Kode_Kasir`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`Nonota`),
  ADD UNIQUE KEY `Kode_Kasir` (`Kode_Kasir`),
  ADD UNIQUE KEY `Kode_Customer` (`Kode_Customer`),
  ADD UNIQUE KEY `Kode_Kasir_2` (`Kode_Kasir`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`Kode_Obat`);

--
-- Indexes for table `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`Id_Pemilik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apoteker`
--
ALTER TABLE `apoteker`
  MODIFY `Id_Apoteker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Kode_Customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kasir`
--
ALTER TABLE `kasir`
  MODIFY `Kode_Kasir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pemilik`
--
ALTER TABLE `pemilik`
  MODIFY `Id_Pemilik` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item_nota`
--
ALTER TABLE `item_nota`
  ADD CONSTRAINT `item_nota_ibfk_1` FOREIGN KEY (`Kode_Obat`) REFERENCES `obat` (`Kode_Obat`),
  ADD CONSTRAINT `item_nota_ibfk_2` FOREIGN KEY (`Nonota`) REFERENCES `nota` (`Nonota`);

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`Kode_Kasir`) REFERENCES `kasir` (`Kode_Kasir`),
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`Kode_Customer`) REFERENCES `customer` (`Kode_Customer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
