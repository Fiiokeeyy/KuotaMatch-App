-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jun 2026 pada 06.48
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
-- Database: `db_spk_paket_data`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_data`
--

CREATE TABLE `paket_data` (
  `id_paket` int(11) NOT NULL,
  `id_provider` int(11) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `kuota_gb` int(11) NOT NULL,
  `masa_aktif_hari` int(11) NOT NULL,
  `skor_sinyal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `paket_data`
--

INSERT INTO `paket_data` (`id_paket`, `id_provider`, `nama_paket`, `harga`, `kuota_gb`, `masa_aktif_hari`, `skor_sinyal`) VALUES
(1, 1, 'Combo Sakti 50GB', 100000, 50, 14, 5),
(2, 2, 'Freedom Internet 30GB', 75000, 30, 30, 4),
(3, 3, 'Happy 12GB', 40000, 12, 30, 3),
(4, 4, 'Xtra Combo Flex 40GB', 85000, 40, 30, 4),
(5, 5, 'Yang Bikin Nyaman 10GB', 35000, 10, 14, 5),
(6, 1, 'Internet OMG! 15GB', 65000, 15, 30, 5),
(7, 2, 'Yellow 1GB', 5000, 1, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provider`
--

CREATE TABLE `provider` (
  `id_provider` int(11) NOT NULL,
  `nama_provider` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `provider`
--

INSERT INTO `provider` (`id_provider`, `nama_provider`) VALUES
(1, 'Telkomsel'),
(2, 'Indosat'),
(3, 'Im3'),
(4, 'XL'),
(5, 'By.U');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `paket_data`
--
ALTER TABLE `paket_data`
  ADD PRIMARY KEY (`id_paket`),
  ADD KEY `id_provider` (`id_provider`);

--
-- Indeks untuk tabel `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id_provider`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `paket_data`
--
ALTER TABLE `paket_data`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `provider`
--
ALTER TABLE `provider`
  MODIFY `id_provider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `paket_data`
--
ALTER TABLE `paket_data`
  ADD CONSTRAINT `paket_data_ibfk_1` FOREIGN KEY (`id_provider`) REFERENCES `provider` (`id_provider`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
