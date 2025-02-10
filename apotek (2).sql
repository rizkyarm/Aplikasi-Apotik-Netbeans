-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 06:29 AM
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
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_admin`
--

INSERT INTO `tabel_admin` (`user`, `password`) VALUES
('adit', 'adit');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_obat`
--

CREATE TABLE `tabel_obat` (
  `kd_obat` int(20) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `jns_obat` varchar(30) NOT NULL,
  `stock_barang` int(30) NOT NULL,
  `harga` int(10) NOT NULL,
  `exp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_obat`
--

INSERT INTO `tabel_obat` (`kd_obat`, `nama_obat`, `jns_obat`, `stock_barang`, `harga`, `exp`) VALUES
(1, 'asd', 'TABLET', 4, 1, '2023-01-14'),
(2, 'ad', 'TABLET', 1, 2, '2023-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_supplier`
--

CREATE TABLE `tabel_supplier` (
  `kd_supplier` varchar(10) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `kd_obat` int(20) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `harga` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `kd_transaksi` varchar(20) NOT NULL,
  `kd_pembeli` varchar(10) NOT NULL,
  `kd_obat` varchar(20) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`kd_transaksi`, `kd_pembeli`, `kd_obat`, `nama_obat`, `jumlah`, `waktu`, `harga`) VALUES
('TR003', 'PB009', 'OB2', 'Paracetamol', 2, '2022-11-11', 2500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_obat`
--
ALTER TABLE `tabel_obat`
  ADD PRIMARY KEY (`kd_obat`),
  ADD KEY `kd_obat` (`kd_obat`,`nama_obat`,`stock_barang`),
  ADD KEY `harga` (`harga`),
  ADD KEY `nama_obat` (`nama_obat`);

--
-- Indexes for table `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  ADD PRIMARY KEY (`kd_supplier`),
  ADD KEY `kd_barang` (`kd_obat`,`nama_obat`);

--
-- Indexes for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD KEY `kd_transaksi` (`kd_transaksi`,`kd_pembeli`,`kd_obat`,`harga`),
  ADD KEY `kd_obat` (`kd_obat`),
  ADD KEY `nama_obat` (`nama_obat`),
  ADD KEY `nama_obat_2` (`nama_obat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_obat`
--
ALTER TABLE `tabel_obat`
  MODIFY `kd_obat` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
