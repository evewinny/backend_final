-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 08:58 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `kuis`
--

CREATE TABLE `kuis` (
  `email` varchar(255) NOT NULL,
  `nilaikuis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kuis`
--
CREATE TABLE `member` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_depan` varchar(255) NOT NULL,
  `nama_belakang` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `kota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`email`, `password`, `nama_depan`, `nama_belakang`, `umur`, `kota`) VALUES
('albertwar@yahoo.com', '*C677EF9AE02F93D3E773BEB443145AE47AC21EB0', 'Albert', 'Warrick', 18, 'Jakarta'),
('anglieya@gmail.com', '*2B3DA37254828B1F7A9EA0BD0ECCB1754B6B1DC8', 'Anglie', 'Yanto', 17, 'Surabaya'),
('beatrixdust@gmail.com', '*5F9FA8E9591FB3A470533703FC6B28D5783B6D2C', 'Beatrix', 'Dustin', 18, 'Surabaya'),
('Felymulia20@gmail.com', '*8FC3836F010AF28B424E2415BE59A4AC6BB55551', 'Felicia', 'Mulia', 17, 'Cikarang'),
('firamulia_19@kharisma.ac.id', '*795E1600B340810193D774E4AFC7C0E2C76F1DF5', 'Fira', 'Mulia', 19, 'Makassar'),
('gaby_bustan@gmail.com', '*11432FF1F39CDFFC1827A81916997DB3DF317BCA', 'Gabriella', 'Bustan', 17, 'Makassar'),
('henrychristian@gmail.com', '*4F1E1BAE19D2C14AFF0E888E3A2A5A652A73E0E1', 'Henry', 'Chandra', 18, 'Makassar'),
('kirbypoyo@yahoo.com', '*3E9988DD51CB0736E70D8AC13DB5A53735950280', 'Judith', 'Sie', 19, 'Tanggerang'),
('meilianashianto@gmail.com', '*A11D3632E3D669CD1F87A8603190AA1652D188FA', 'Meiliana', 'Shianto', 19, 'Makassar'),
('ryan_thahir@gmail.com', '*430D3AFC863A68D8CF34CA105891556CB5BFEAEC', 'Ryan', 'Thahir', 18, 'Surabaya'),
('sitinurbaya@yahoo.com', '*DEFE191A82CBACF9C2AD1EC53091A3B396AE6F9F', 'Siti', 'Nurbaya', 18, 'Surabaya'),
('stevenlorens@gmail.com', '*7325F04F3AACF157A79C301D2CDC17C3091E1AF3', 'Steven', 'Lorens', 18, 'Bekasi'),
('yosepnovel_16@kharisma.ac.id', '*EF763EE8F0D917806A2C3A097671B04C031D9AE2', 'Yosep', 'Kaunang', 21, 'Makassar');

INSERT INTO `kuis` (`email`, `nilaikuis`) VALUES
('albertwar@yahoo.com', 80),
('anglieya@gmail.com', 100),
('beatrixdust@gmail.com', 70),
('Felymulia20@gmail.com', 60),
('firamulia_19@kharisma.ac.id', 80),
('gaby_bustan@gmail.com', 80),
('henrychristian@gmail.com', 100),
('kirbypoyo@yahoo.com', 80),
('meilianashianto@gmail.com', 90),
('ryan_thahir@gmail.com', 100),
('sitinurbaya@yahoo.com', 90),
('stevenlorens@gmail.com', 70),
('yosepnovel_16@kharisma.ac.id', 100);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--



--
-- Indexes for dumped tables
--

--
-- Indexes for table `kuis`
--
ALTER TABLE `kuis`
  ADD KEY `email` (`email`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kuis`
--
ALTER TABLE `kuis`
  ADD CONSTRAINT `kuis_ibfk_2` FOREIGN KEY (`email`) REFERENCES `member` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
