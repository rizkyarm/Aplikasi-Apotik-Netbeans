-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2020 at 03:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbapotik`
--

-- --------------------------------------------------------

--
-- Table structure for table `loginadmin`
--

CREATE TABLE `loginadmin` (
  `USERNAME` varchar(35) NOT NULL,
  `PASSWORD` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginadmin`
--

INSERT INTO `loginadmin` (`USERNAME`, `PASSWORD`) VALUES
('admin', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dataobat`
--

CREATE TABLE `tb_dataobat` (
  `kode` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `harga` varchar(15) NOT NULL,
  `tgl` varchar(25) NOT NULL,
  `stok` varchar(4) NOT NULL,
  `jenis` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dataobat`
--

INSERT INTO `tb_dataobat` (`kode`, `nama`, `harga`, `tgl`, `stok`, `jenis`) VALUES
('K-0001', 'Bodrexin', '5000', '11-06-2021', '155', 'TABLET'),
('K-0002', 'Insto', '11000', '11-05-2021', '176', 'CAIR'),
('K-0003', 'Panado', '8000', '19-08-2021', '148', 'TABLET'),
('K-0004', 'Paramex', '7000', '13-06-2021', '153', 'TABLET'),
('K-0005', 'Polysilane', '12000', '28-09-2021', '138', 'CAIR'),
('K-0006', 'Promag', '10000', '14-06-2021', '130', 'TABLET'),
('K-0007', 'Betadin', '15000', '19-06-2021', '122', 'CAIR');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `id` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `nohp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_konsumen`
--

INSERT INTO `tb_konsumen` (`id`, `nama`, `jk`, `alamat`, `nohp`) VALUES
('K-0001', 'FERY', 'Laki-laki', 'DEPOK', '082299287700'),
('K-0002', 'RIAN R', 'Laki-laki', 'DEPOK', '089631943738'),
('K-0003', 'FAUZI', 'Laki-laki', 'JAKARTA', '081806760323'),
('K-0004', 'AMBANG', 'Laki-laki', 'BANTEN', '082134568896');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `kode` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(35) NOT NULL,
  `harga` varchar(12) NOT NULL,
  `stok` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`kode`, `nama`, `jenis`, `harga`, `stok`) VALUES
('0001', 'Paramex', 'TABLET', '5000', '120'),
('0002', 'Pracetamol', 'TABLET', '7000', '150');

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `notlp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_supplier`
--

INSERT INTO `tb_supplier` (`id`, `nama`, `alamat`, `notlp`) VALUES
('S-0001', 'PT. Perkasa Utama', 'Jakata', '0213456799'),
('S-0002', 'PT. Angkasa', 'Bekasi', '0210948755'),
('S-0003', 'PT. Bintang Perkasa', 'Depok', '0217894759');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dataobat`
--
ALTER TABLE `tb_dataobat`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
