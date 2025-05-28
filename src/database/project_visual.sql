-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2025 at 09:11 AM
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
-- Database: `project_visual`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kd_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(15) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `harga_jual` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`kd_barang`, `nama_barang`, `jenis_barang`, `harga_beli`, `harga_jual`) VALUES
('B01', 'Jose Cuervo', 'Minuman', 500000, 1000000),
('B02', 'LA ICE PURPLE BOOST', 'Makanan', 30000, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_isi`
--

CREATE TABLE `tb_isi` (
  `id_nota` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `h_beli` int(20) NOT NULL,
  `h_jual` int(20) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_isi`
--

INSERT INTO `tb_isi` (`id_nota`, `kd_barang`, `h_beli`, `h_jual`, `qty`) VALUES
('IN0001', 'B02', 30000, 35000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kasir`
--

CREATE TABLE `tb_kasir` (
  `id_kasir` char(10) NOT NULL,
  `nama_kasir` char(30) NOT NULL,
  `jk_kasir` char(15) NOT NULL,
  `telp_kasir` char(15) NOT NULL,
  `agama_kasir` char(15) NOT NULL,
  `alamat_kasir` text NOT NULL,
  `password_kasir` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kasir`
--

INSERT INTO `tb_kasir` (`id_kasir`, `nama_kasir`, `jk_kasir`, `telp_kasir`, `agama_kasir`, `alamat_kasir`, `password_kasir`) VALUES
('K001', 'Mohamad Iqbal AlFaris', 'Laki-Laki', '089661867138', 'Islam', 'Mekarsari Cimanggis Depok', '1234'),
('K002', 'Hilwa Nazrya', 'Perempuan', '081234567890', 'Islam', 'Mekarsari', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nota`
--

CREATE TABLE `tb_nota` (
  `id_nota` varchar(10) NOT NULL,
  `tgl_nota` date NOT NULL,
  `id_pel` varchar(10) NOT NULL,
  `id_kasir` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_nota`
--

INSERT INTO `tb_nota` (`id_nota`, `tgl_nota`, `id_pel`, `id_kasir`) VALUES
('IN0001', '2025-05-28', 'P02', 'K001');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pel` char(10) NOT NULL,
  `nama_pel` char(25) NOT NULL,
  `jk_pel` char(15) NOT NULL,
  `telp_pel` char(15) NOT NULL,
  `alamat_pel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pel`, `nama_pel`, `jk_pel`, `telp_pel`, `alamat_pel`) VALUES
('P01', 'Iqbal', 'Laki-Laki', '089661867138', 'Mekarsari Cimanggis Depok'),
('P02', 'Hilwa Nazrya', 'Perempuan', '081234567890', 'Mekarsari');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `tb_kasir`
--
ALTER TABLE `tb_kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `tb_nota`
--
ALTER TABLE `tb_nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
