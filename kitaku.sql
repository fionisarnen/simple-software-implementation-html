-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2019 at 02:55 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitaku`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `harga` int(9) NOT NULL,
  `stock` int(3) NOT NULL,
  `tgl_terbit` date NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `kategori`, `harga`, `stock`, `tgl_terbit`, `penerbit`, `image`) VALUES
(13, 'The Best Muslimah', 'Agama', 24000, 12, '2016-04-04', 'Tinta Medina', 'book5.jpg'),
(14, 'Aruna dan Lidahnya', 'Romance', 28000, 16, '2019-01-16', 'Gramedia Pustaka Utama', 'book6.jpg'),
(15, 'Critical Eleven', 'Romance', 29000, 5, '2016-08-03', 'Media Pustaka Utama', 'book7.jpg'),
(18, 'Habis Hijrah Terbitlah Berkah', 'Agama', 24000, 14, '2019-09-12', 'Gramedia Pustaka Utama', '9786020516950_Cover_Habis_H__w200_hauto1.jpg'),
(19, 'Detektif Conan 95', 'Manga', 13500, 34, '2016-06-12', 'Gramedia Pustaka Utama', '9786020497822_Cov_Conan_95__w200_hauto1.jpg'),
(20, 'Orang-orang Biasa', 'Motivasi', 17500, 7, '2019-12-09', ' Elex Media Komputindo', '9786022915249_orang-orang-b__w200_hauto1.jpg'),
(21, 'First &amp; Then', 'Remaja', 29000, 14, '2017-01-24', ' Sinar Star Book', '9781250090683_First--Then__w200_hauto.jpg'),
(22, 'Nicola Yoon: Sun Is Also A Star', 'Romance', 23000, 16, '2019-11-04', ' Sinar Star Book', '9781524716301__w200_hauto.jpg'),
(23, 'Najwa Zebian: Nectar Of Pain', 'Puisi', 18500, 19, '2019-04-13', 'Sinar Star Book', '9781449492892_Najwa-Zebian-Nectar-Of-Pain__w200_hauto.jpg'),
(24, 'A Poem with Your Name', 'Puisi', 16000, 26, '2018-07-16', 'Elex Media Komputindo', 'AA.jpg'),
(25, 'Go Kitchen 2', 'Resep', 11000, 44, '2019-04-24', 'Kawan Pustaka', 'SS.jpg'),
(26, 'Code Not Over', 'Teknik', 24000, 33, '2018-10-31', ' Kesaint Blanc', 'cc.jpg'),
(27, 'Theory Of Structures (English Version}', 'Teknik', 22000, 36, '2019-02-15', ' Andi Publisher', 'dd.jpg'),
(28, 'Citylite: Over The Moon', 'Romance', 18000, 26, '2019-04-22', 'Elex Media Komputindo', '9786020497525_Citylite_Over-The-Moon__w200_hauto.jpg'),
(29, 'Building Contruction, Eleventh Edition', 'Teknik', 17000, 43, '2018-12-03', 'Andi Publisher', '9789792970609_Building-Contruction-Eleventh-Edition__w200_hauto.jpg'),
(30, 'Hello Memory', 'Novel', 22000, 19, '2018-11-09', 'Sinar Star Book', '9786025508813_Hello-Memory__w200_hauto1.jpg'),
(31, 'Words of Love From An 8 Year Old Boy', 'Pengembangan Diri', 22000, 34, '2019-03-22', 'Elex Media Komputindo', '9786020496375_Words-of-Love-From-An-8-Year-Old-Boy__w200_hauto.jpg'),
(32, 'Pemetik Bintang - Edisi Bertanda Tangan', 'Novel ', 21000, 14, '2015-09-22', 'Gramedia Pustaka Utama', '9786020628509_PEMETIK_BINTA_VvBrvij__w200_hauto.jpg'),
(33, 'Historical Romance: The Danger of Desire (Bahaya M', 'Romansa', 17000, 32, '2018-02-22', 'Gramedia Pustaka Utama', '9786020379838_Historical-Romance_The-Danger-of-Desire-Bahaya-Mencintai__w200_hauto.jpg'),
(34, 'Abacata Aku Bisa Baca Kata Usia 4-6 Tahun', 'Anak-anak', 18000, 27, '2019-04-11', 'Laksana', '9786024075378_Abacata-Aku-Bisa-Baca-Kata-Usia-4-6-Tahun__w200_hauto.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` tinyint(1) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `status` enum('paid','unpaid','canceled','expired') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `date`, `due_date`, `status`) VALUES
(7, '2016-10-07 17:04:06', '2016-10-08 17:04:06', 'unpaid'),
(8, '2016-10-08 05:29:43', '2016-10-09 05:29:43', 'unpaid'),
(9, '2016-10-08 17:54:58', '2016-10-09 17:54:58', 'unpaid'),
(10, '2016-10-08 18:18:11', '2016-10-09 18:18:11', 'unpaid'),
(11, '2016-10-14 04:45:07', '2016-10-15 04:45:07', 'unpaid'),
(12, '2016-10-14 12:10:13', '2016-10-15 12:10:13', 'unpaid'),
(13, '2019-04-27 11:35:20', '2019-04-28 11:35:20', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id` varchar(6) DEFAULT NULL,
  `id_pinjam` varchar(10) DEFAULT NULL,
  `id_bukus` varchar(6) DEFAULT NULL,
  `judul_buku` varchar(50) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `toko_sessions`
--

CREATE TABLE `toko_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko_sessions`
--

INSERT INTO `toko_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('55e1d31e202e34fa7ef9c05d2aa24909', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 1557579116, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `no_telp` int(14) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `group`, `no_telp`, `alamat`) VALUES
(1, 'admin', 'kitaku@gmail.com', 'admin', 1, 876567822, 'jalan mangga dua'),
(13, 'fionisarnen', 'fionisarnen@gmail.com', '1301164681', 2, 82199938, 'jalan sukabirus'),
(15, 'tuti_astuti', 'selena_gomez@gmail.com', '123456', 2, NULL, NULL),
(17, 'astridvelia', 'trainticakep@gmail.com', '1301164681', 2, 898765242, 'jalan paguyuban'),
(19, 'selenagemes', 'selena_gomez@gmail.com', '123456', 2, 987654321, 'jalan mengger'),
(20, '', '', '', 0, 0, ''),
(21, '', '', '', 0, 0, ''),
(22, '', '', '', 0, 0, ''),
(23, '0', '0', '0', 0, 0, '0'),
(24, 'cobadulu', 'trainticakep@gmail.com', '1234', 2, 813247888, 'jalan ciganitri'),
(25, '0', '0', '0', 0, 0, '0'),
(26, '0', '0', '0', 0, 0, '0'),
(27, '0', '0', '0', 0, 0, '0'),
(28, '0', '0', '0', 0, 0, '0'),
(29, '0', '0', '0', 0, 0, '0'),
(30, '0', '0', '0', 0, 0, '0'),
(31, '0', '0', '0', 0, 0, '0'),
(32, '0', '0', '0', 0, 0, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `toko_sessions`
--
ALTER TABLE `toko_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
