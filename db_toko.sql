-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Apr 2024 pada 11.41
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'BR001', 1, 'Pensil', 'Fabel Castel', '1500', '3000', 'PCS', '101', '6 October 2020, 0:41', NULL),
(2, 'BR002', 5, 'Sabun', 'Lifeboy', '1800', '3000', 'PCS', '38', '6 October 2020, 0:41', '6 October 2020, 0:54'),
(3, 'BR003', 1, 'Pulpen', 'Standard', '1500', '2000', 'PCS', '68', '6 October 2020, 1:34', NULL),
(4, 'BR004', 7, 'Sprite', 'Sana', '10000', '12000', 'PCS', '9', '15 July 2021, 22:05', '15 July 2021, 22:06'),
(5, 'BR005', 8, 'PRINTER ', 'CANON', '1200000', '1500000', 'PCS', '6', '16 July 2021, 17:43', '22 April 2024, 20:39'),
(6, 'BR006', 9, 'Mouse', 'Logitech', '50000', '100000', 'PCS', '100', '16 July 2021, 17:45', NULL),
(8, 'BR008', 10, 'HDD Acer 1000GB', 'ACER', '300000', '350000', 'PCS', '12', '16 July 2021, 17:48', NULL),
(9, 'BR009', 10, 'SSD VGEN 512GB', 'VGEN', '500000', '650000', 'PCS', '10', '16 July 2021, 17:49', NULL),
(10, 'BR010', 8, 'Acer Aspire 3 A314-32', 'ACER', '4600000', '5000000', 'PCS', '5', '16 July 2021, 17:50', NULL),
(11, 'BR011', 11, 'SSD VGEN 512GB', 'VGEN', '600000', '650001', 'PCS', '15', '16 July 2021, 17:52', NULL),
(12, 'BR012', 11, 'MOUSE WIRELESS', 'RAZER', '450000', '550000', 'PCS', '-3', '16 July 2021, 17:53', '22 April 2024, 20:39'),
(15, 'BR013', 12, 'FD', 'VGEN', '20000', '25000', 'PCS', '7', '17 July 2011, 6:44', NULL),
(16, 'BR014', 0, 'WEBCAM', 'Logitech B525', '1500000', '2000000', '#', '11', '22 April 2024, 20:40', NULL),
(17, 'BR015', 0, 'WEBCAM', 'Logitech B525', '1500000', '2000000', 'PCS', '1', '22 April 2024, 20:41', NULL),
(18, 'BR016', 8, 'WEBCAM', 'Logitech B525', '1500000', '2000000', 'PCS', '-11', '22 April 2024, 20:47', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(8, 'Laptop', '16 July 2021, 17:40'),
(11, 'Memori', '16 July 2021, 17:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '0929e15e01fd56676fb323c7b65e13b8', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Kelompok 2', 'Rawamangun,Jakarta Timur', '081291359968', 'noeljoshuatalahatu@gmail.com', '3172040711071007 ikh.jpg', '3172040711071007');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(2, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(3, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(4, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(5, 'BR001', 1, '2', '6000', '6 October 2020, 0:49', '10-2020'),
(6, 'BR001', 1, '2', '6000', '6 October 2020, 0:49', '10-2020'),
(7, 'BR001', 1, '2', '6000', '6 October 2020, 1:15', '10-2020'),
(8, 'BR002', 1, '2', '6000', '6 October 2020, 1:17', '10-2020'),
(9, 'BR001', 1, '2', '6000', '6 October 2020, 1:20', '10-2020'),
(10, 'BR001', 1, '2', '6000', '6 October 2020, 1:51', '07-2021'),
(11, 'BR003', 1, '1', '2000', '14 July 2021, 18:13', '07-2021'),
(12, 'BR003', 1, '1', '2000', '14 July 2021, 23:42', '07-2021'),
(13, 'BR004', 1, '1', '12000', '15 July 2021, 22:07', '07-2021'),
(14, 'BR004', 1, '2', '24000', '15 July 2021, 22:07', '07-2021'),
(15, 'BR012', 1, '1', '400000', '16 July 2021, 17:54', '07-2021'),
(16, 'BR011', 1, '1', '650001', '16 July 2021, 17:54', '07-2021'),
(17, 'BR011', 1, '1', '650001', '16 July 2021, 18:17', '07-2021'),
(18, 'BR010', 1, '1', '5000000', '16 July 2021, 18:17', '07-2021'),
(19, 'BR012', 1, '2', '800000', '17 July 2011, 6:46', '07-2011'),
(20, 'BR010', 1, '1', '5000000', '17 July 2011, 6:46', '07-2011'),
(21, 'BR012', 1, '1', '400000', '20 November 2021, 21:29', '11-2021'),
(22, 'BR012', 1, '1', '400000', '20 November 2021, 21:50', '11-2021'),
(23, 'BR012', 1, '2', '1100000', '20 November 2021, 21:50', '04-2024'),
(24, 'BR016', 1, '4', '8000000', '22 April 2024, 20:50', '04-2024'),
(25, 'BR012', 1, '2', '1100000', '20 November 2021, 21:50', '04-2024'),
(26, 'BR016', 1, '4', '8000000', '22 April 2024, 20:50', '04-2024'),
(27, 'BR012', 1, '2', '1100000', '20 November 2021, 21:50', '04-2024'),
(28, 'BR016', 1, '4', '8000000', '22 April 2024, 20:50', '04-2024'),
(29, 'BR012', 1, '2', '1100000', '20 November 2021, 21:50', '04-2024'),
(30, 'BR016', 1, '4', '8000000', '22 April 2024, 20:50', '04-2024'),
(31, 'BR011', 1, '3', '1950003', '22 April 2024, 21:08', '04-2024'),
(32, 'BR010', 1, '5', '25000000', '22 April 2024, 21:08', '04-2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(38, 'BR012', 1, '2', '1100000', '20 November 2021, 21:50'),
(40, 'BR016', 1, '4', '8000000', '22 April 2024, 20:50'),
(41, 'BR011', 1, '3', '1950003', '22 April 2024, 21:08'),
(42, 'BR010', 1, '5', '25000000', '22 April 2024, 21:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Noel &amp; Cahaya Store', 'Kelapa Gading,Jakarta Utara', '081291359968', 'Noel &amp; Cahaya');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
