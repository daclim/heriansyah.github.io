-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2019 at 09:53 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_confirm`
--

CREATE TABLE `t_confirm` (
  `id_confirm` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `username` varchar(50) NOT NULL,
  `confirm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_confirm`
--

INSERT INTO `t_confirm` (`id_confirm`, `tanggal`, `username`, `confirm`) VALUES
(1, '0000-00-00 00:00:00', 'climm', 'yEbJ1xLlcL'),
(2, '2018-11-24 05:35:11', 'climm', '7PVj6buzps'),
(3, '2018-11-24 05:36:25', 'climm', 'uxu9iWv5AO'),
(4, '2018-11-24 07:51:56', 'user', '6QParhDO7r'),
(5, '2018-11-24 07:56:54', 'sad', 'T8nazlwJlj');

-- --------------------------------------------------------

--
-- Table structure for table `t_order`
--

CREATE TABLE `t_order` (
  `id_order` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` datetime NOT NULL,
  `username` varchar(20) NOT NULL,
  `id_produk` varchar(50) NOT NULL,
  `testimony` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_order`
--

INSERT INTO `t_order` (`id_order`, `gambar`, `tanggal`, `username`, `id_produk`, `testimony`) VALUES
(28, 'koala.jpg', '2018-11-23 19:29:29', 'climm', '13', 'celana ini sangat bagus'),
(29, 'koala.jpg', '2018-11-24 06:55:51', 'climm', '11', 'mantap jiwa'),
(31, 'koala.jpg', '2018-11-24 07:52:37', 'user', '23', 'hdjfdf');

-- --------------------------------------------------------

--
-- Table structure for table `t_produk`
--

CREATE TABLE `t_produk` (
  `id_produk` int(11) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `stok` int(11) NOT NULL,
  `terjual` int(11) NOT NULL,
  `harga` int(20) NOT NULL,
  `confirm` varchar(10) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_produk`
--

INSERT INTO `t_produk` (`id_produk`, `gambar`, `nama_produk`, `stok`, `terjual`, `harga`, `confirm`, `lokasi`, `type`, `deskripsi`) VALUES
(7, 'download_(1).jpg', 'baju baru', 50, 0, 150000, '', 'Jakarta', 'Baju', 'abc'),
(8, 'download_(6).jpg', 'celana baru', 50, 0, 230000, '', 'Jogjakarta', 'Celana', 'celana new'),
(9, 'download_(2).jpg', 'baju 2', 30, 0, 120000, '', 'Bandung', 'Baju', '2'),
(10, 'download_(9).jpg', 'sepatu baru', 39, 1, 175000, '', 'Jakarta', 'Celana', 'ada ada aja'),
(11, 'download_(3).jpg', 'baju3', 25, 5, 130000, '', 'Bandung', 'Baju', 'You can also pass your own string in the first parameter:'),
(12, 'download_(7).jpg', 'celana 2', 53, 17, 90000, '', 'Jogjakarta', 'Celana', 'pusing'),
(13, 'download_(8).jpg', 'celana 3', 81, 19, 160000, '', 'Jakarta', 'Celana', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(14, 'download.jpg', 'gehu', 42, 7, 135000, '', 'Jakarta', 'Baju', 'jdtjhfh'),
(15, 'download_(11).jpg', 'sepatu 1', 42, 3, 200000, '', 'Jakarta', 'Sepatu', 'sepatu 1'),
(16, 'images_(3).jpg', 'sepatu 2', 65, 0, 155000, '', 'Bandung', 'Sepatu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(17, 'download_(12).jpg', 'sepatu 3', 15, 0, 95000, '', 'Jogjakarta', 'Sepatu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(18, 'images_(2).jpg', 'sepatu 4', 10, 0, 500000, '', 'Jakarta', 'Sepatu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(19, 'download_(20).jpg', 'baju 4', 50, 0, 50000, '', 'Bandung', 'Baju', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(20, 'download_(15).jpg', 'baju 5', 42, 1, 65000, '', 'Bandung', 'Baju', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(21, 'images_(7).jpg', 'celana 4', 72, 0, 250000, '', 'Bandung', 'Celana', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(22, 'images_(10).jpg', 'celana 5', 98, 2, 145000, '', 'Jakarta', 'Celana', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(23, 'download_(14).jpg', 'baju 6', 27, 8, 320000, '', 'Jogjakarta', 'Baju', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(24, 'images_(4).jpg', 'sepatu 5', 20, 3, 200000, '', 'Jakarta', 'Sepatu', 'fsidhfksjdhfjkdj');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id_user` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `gambar`, `username`, `password`, `role`) VALUES
(1, 'koala.jpg', 'admin', 'admin', 'admin'),
(2, 'koala.jpg', 'user', 'user', 'user'),
(3, 'koala.jpg', 'climm', 'daclim', 'user'),
(5, 'Penguins.jpg', 'akun baru', 'baru', 'user'),
(6, 'Hydrangeas.jpg', 'sad', 'sad', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_confirm`
--
ALTER TABLE `t_confirm`
  ADD PRIMARY KEY (`id_confirm`);

--
-- Indexes for table `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `t_produk`
--
ALTER TABLE `t_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_confirm`
--
ALTER TABLE `t_confirm`
  MODIFY `id_confirm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_order`
--
ALTER TABLE `t_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `t_produk`
--
ALTER TABLE `t_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
