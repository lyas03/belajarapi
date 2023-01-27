-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jan 2023 pada 08.32
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pt_xyz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `id_emplo` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `place_birth` varchar(50) DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `id_job` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id_emplo`, `full_name`, `gender`, `place_birth`, `date_birth`, `id_job`) VALUES
(1, 'Krisna Kusuma', 'M', 'Bandung', '1992-02-27', 'CEO'),
(2, 'Dewi Vina', 'F', 'Bandung', '1995-04-20', 'CTO'),
(3, 'Abdul Harun', 'M', 'Jakarta', '1994-08-10', 'HRR'),
(4, 'Yuda Agung', 'M', 'Bandung', '1999-08-01', 'MAR'),
(5, 'Agus Eka', 'M', 'Solo', '1994-12-12', 'ACC'),
(6, 'Hasan Rahman', 'M', 'Cimahi', '2000-11-01', 'DEV'),
(7, 'Yuda Yuliana', 'M', 'Bandung', '2001-04-21', 'BAC'),
(8, 'Dwi Rahman', 'F', 'Bandung', '2000-05-12', 'LEA'),
(9, 'Wati Siti', 'F', 'Jakarta', '2002-01-30', 'FRO'),
(10, 'Ridwan Akbar', 'M', 'Jakarta', '2001-05-05', NULL),
(11, 'Anisa Ruslan', 'F', 'Subang', '2000-04-03', 'UIX'),
(12, 'Arif Putra', 'M', 'Subang', '2002-07-10', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id_job` char(3) NOT NULL,
  `name_job` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jobs`
--

INSERT INTO `jobs` (`id_job`, `name_job`) VALUES
('ACC', 'Accounting'),
('BAC', 'BackEnd Developer'),
('CEO', 'CEO'),
('CTO', 'CTO'),
('DEV', 'DevOps'),
('FRO', 'FrontEnd Developer'),
('HRR', 'Human Resouce'),
('ITS', 'IT Support'),
('LEA', 'Leader'),
('MAR', 'Marketing'),
('MOB', 'Mobile Developer'),
('UIX', 'UI/UX Developer');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_emplo`),
  ADD KEY `id_job` (`id_job`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id_job`),
  ADD KEY `id_job` (`id_job`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_job`) REFERENCES `jobs` (`id_job`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
