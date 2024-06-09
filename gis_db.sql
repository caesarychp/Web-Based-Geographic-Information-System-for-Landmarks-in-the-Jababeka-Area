-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 11:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(8) NOT NULL,
  `nama_wisata` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga_tiket` varchar(255) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `alamat`, `deskripsi`, `harga_tiket`, `latitude`, `longitude`, `image`) VALUES
(1, 'President University', 'Jababeka Education Park, Jl. Ki Hajar Dewantara, RT.2/RW.4, Mekarmukti, Cikarang Utara, Bekasi Regency, West Java 17530', 'President University is a private university located in the Jababeka Industrial Estate in Cikarang. As a campus that located around an industrial area, President University surrounded by over 1,700 national and multinational companies like Unilever, Mattel, Samsung, ICI Paints, Mulia, and others.', '-', '-6.285053615449172', '107.17057848134942', '/GIS/Geographical-Information-System/admin/img/President_University_Convention_Center_1.jpg'),
(2, 'Jababeka Golf & Country Club', 'Jababeka golf & Country Club, Sertajaya, Kec. Cikarang Tim., Jababeka, Jawa Barat 17530', 'Golf club on 165.5 acres, designed by Nick Faldo, with a clubhouse, restaurant, pool & tennis.', '-', '-6.294815533583297', '107.17591977281863', ''),
(3, 'Meikarta - Central Park', 'M55F+376, Jayamukti, Central Cikarang, Bekasi Regency, West Java 17530', 'Waterfront boardwalk & family amusement park with play areas, a petting zoo & mini \"Hobbit\" houses.', '7000', '-6.340112549896567', '107.17347183869454', ''),
(4, 'Living Plaza Jababeka', 'Jl. Niaga Raya Jl. Jababeka Raya No.2, Mekarmukti, Kec. Cikarang Utara, Kabupaten Bekasi, Jawa Barat 17530', 'Shopping mall in Bekasi Regency, West Java', '-', '-6.299667308571394', '107.15020535389208', ''),
(5, 'Pollux Mall Cikarang', 'Jl. Raya Cikarang - Cibarusah, Pasirsari, Cikarang Sel., Kabupaten Bekasi, Jawa Barat 17530', 'Shopping mall in Bekasi Regency, West Java', '-', '-6.309880608982966', '107.14198843842686', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
