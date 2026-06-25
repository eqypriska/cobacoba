-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2026 at 06:00 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kursus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendaftaran_kursus`
--

CREATE TABLE `tb_pendaftaran_kursus` (
  `id_pendaftaran` int NOT NULL,
  `nama_peserta` varchar(100) DEFAULT NULL,
  `asal_sekolah` varchar(100) DEFAULT NULL,
  `nilai_tes` int DEFAULT NULL,
  `biaya_dasar` int DEFAULT NULL,
  `jenis_kelas` varchar(20) DEFAULT NULL,
  `pilihan_program` varchar(100) DEFAULT NULL,
  `jadwal_kelas` varchar(50) DEFAULT NULL,
  `sertifikat_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(50) DEFAULT NULL,
  `surat_rekomendasi` varchar(100) DEFAULT NULL,
  `instansi_pengirim` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_pendaftaran_kursus`
--

INSERT INTO `tb_pendaftaran_kursus` (`id_pendaftaran`, `nama_peserta`, `asal_sekolah`, `nilai_tes`, `biaya_dasar`, `jenis_kelas`, `pilihan_program`, `jadwal_kelas`, `sertifikat_prestasi`, `tingkat_prestasi`, `surat_rekomendasi`, `instansi_pengirim`) VALUES
(1, 'Andi', 'SMAN 1 Jakarta', 85, 500000, 'Reguler', 'Web Programming', 'Pagi', NULL, NULL, NULL, NULL),
(2, 'Budi', 'SMKN 2 Bandung', 80, 500000, 'Reguler', 'Data Science', 'Siang', NULL, NULL, NULL, NULL),
(3, 'Citra', 'SMAN 5 Surabaya', 88, 500000, 'Reguler', 'UI/UX Design', 'Malam', NULL, NULL, NULL, NULL),
(4, 'Dina', 'SMAN 1 Semarang', 95, 500000, 'Prestasi', NULL, NULL, 'Juara Coding', 'Nasional', NULL, NULL),
(5, 'Eko', 'SMAN 2 Yogyakarta', 92, 500000, 'Prestasi', NULL, NULL, 'Juara Olimpiade', 'Provinsi', NULL, NULL),
(6, 'Farah', 'SMKN 1 Solo', 90, 500000, 'Prestasi', NULL, NULL, 'Juara Robotik', 'Nasional', NULL, NULL),
(7, 'Galih', 'SMAN 4 Malang', 87, 500000, 'Beasiswa', NULL, NULL, NULL, NULL, 'Rekomendasi Sekolah', 'SMAN 4 Malang'),
(8, 'Hana', 'SMAN 1 Bogor', 89, 500000, 'Beasiswa', NULL, NULL, NULL, NULL, 'Rekomendasi Kepala Sekolah', 'SMAN 1 Bogor'),
(9, 'Ivan', 'SMKN 3 Bekasi', 91, 500000, 'Beasiswa', NULL, NULL, NULL, NULL, 'Rekomendasi Yayasan', 'Yayasan Pendidikan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pendaftaran_kursus`
--
ALTER TABLE `tb_pendaftaran_kursus`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pendaftaran_kursus`
--
ALTER TABLE `tb_pendaftaran_kursus`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
