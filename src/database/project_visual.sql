-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Bulan Mei 2025 pada 18.36
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

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
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kd_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(15) NOT NULL,
  `harga_beli` int(20) NOT NULL,
  `harga_jual` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`kd_barang`, `nama_barang`, `jenis_barang`, `harga_beli`, `harga_jual`) VALUES
('B01', 'Chitato', 'Makanan', 10000, 15000),
('B02', 'Mogu-Mogu', 'Minuman', 10000, 13000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_isi`
--

CREATE TABLE `tb_isi` (
  `id_nota` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `h_beli` int(20) NOT NULL,
  `h_jual` int(20) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_isi`
--

INSERT INTO `tb_isi` (`id_nota`, `kd_barang`, `h_beli`, `h_jual`, `qty`) VALUES
('IN0001', 'B01', 10000, 15000, 5),
('IN0002', 'B01', 10000, 15000, 10),
('IN0003', 'B02', 10000, 13000, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kasir`
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
-- Dumping data untuk tabel `tb_kasir`
--

INSERT INTO `tb_kasir` (`id_kasir`, `nama_kasir`, `jk_kasir`, `telp_kasir`, `agama_kasir`, `alamat_kasir`, `password_kasir`) VALUES
('K01', 'Marsel Ruliana Hermawan', 'Laki-Laki', '081310134013', 'Islam', 'Depok', '123'),
('K02', 'Raisa Aliyya', 'Perempuan', '085175209039', 'Islam', 'Antapani Wetan', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nota`
--

CREATE TABLE `tb_nota` (
  `id_nota` varchar(10) NOT NULL,
  `tgl_nota` date NOT NULL,
  `id_pel` varchar(10) NOT NULL,
  `id_kasir` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_nota`
--

INSERT INTO `tb_nota` (`id_nota`, `tgl_nota`, `id_pel`, `id_kasir`) VALUES
('IN0001', '2025-05-27', 'P01', 'K01'),
('IN0002', '2025-05-27', 'P01', 'K01'),
('IN0003', '2025-05-27', 'P02', 'K01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pel` char(10) NOT NULL,
  `nama_pel` char(25) NOT NULL,
  `jk_pel` char(15) NOT NULL,
  `telp_pel` char(15) NOT NULL,
  `alamat_pel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pel`, `nama_pel`, `jk_pel`, `telp_pel`, `alamat_pel`) VALUES
('P01', 'Marsel Ruliana Hermawan', 'Laki-Laki', '081310134013', 'Depok'),
('P02', 'Raisa Aliyya Roseli', 'Perempuan', '085175209039', 'Bandung');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `tb_kasir`
--
ALTER TABLE `tb_kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `tb_nota`
--
ALTER TABLE `tb_nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
