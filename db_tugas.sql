-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jul 2024 pada 07.09
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
-- Database: `db_tugas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`id`, `nama`, `nim`, `jurusan`, `alamat`, `foto`) VALUES
(7, 'WINDA FATIKHATUL MUNAWAROH', '221250000439', 'SISTEM INFORMASI', 'JEPARA', 'WhatsApp Image 2024-07-10 at 10.03.05.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `kode_dosen` varchar(8) NOT NULL,
  `nama_dosen` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`kode_dosen`, `nama_dosen`) VALUES
('FST02001', 'Heru Saputro, M.Kom'),
('FST02002', 'Noor Azizah, M.Kom'),
('FST02003', 'Danang Mahendra, M.Kom');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `kode_kelas` varchar(8) NOT NULL,
  `nama_kelas` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`kode_kelas`, `nama_kelas`) VALUES
('FST101', 'lab komputer'),
('FST201', 'ruang elektro'),
('FST303', 'kelas kecil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` char(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `jurusan`) VALUES
(2, '171250000200', 'GALIH WICAKSONO', 'LAKI-LAKI', 'SISTEM INFORMASI'),
(3, '171250000201', 'ADETYA RATNA DEVI', 'LAKI-LAKI', 'SISTEM INFORMASI'),
(4, '171250000202', 'SAFITRI DAMAYANTI', 'PEREMPUAN', 'SISTEM INFORMASI'),
(9, '221250000439', 'WINDA FATIKHATUL MUNAWAROH', 'PEREMPUAN', 'SISTEM INFORMASI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makul`
--

CREATE TABLE `makul` (
  `kode_mk` varchar(6) NOT NULL,
  `nama_mk` varchar(25) NOT NULL,
  `sks` int(1) NOT NULL,
  `kode_dosen` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `makul`
--

INSERT INTO `makul` (`kode_mk`, `nama_mk`, `sks`, `kode_dosen`) VALUES
('MKW001', 'PEMROGRAMAN WEB', 2, 'FST02002'),
('MKG002', 'GIS', 3, 'FST02001');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `makul`
--
ALTER TABLE `makul`
  ADD PRIMARY KEY (`kode_mk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
