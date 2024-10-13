-- phpMyAdmi SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2024 at 09:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigmaspc`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `category`) VALUES
(5, 'test12', 10000.00, 'Market.png', ''),
(8, 'Sigmas', 1000.00, 'Sigmas.png', NULL),
(10, 'intel 15 pro pergerakan', 200.00, 'Intel.png', 'CPU'),
(11, 'Intel CoreTM i9-14900K New Gaming Desktop Processor 24 (8 P-cores + 16 E-cores) with Integrated Graphics - Unlocked', 547.97, 'Intel i9.jpg', 'CPU'),
(12, 'MSI Gaming GeForce RTX 3060 12GB 15 Gbps GDRR6 192-Bit HDMI/DP PCIe 4 Torx Twin Fan Ampere OC Graphics Card', 284.99, 'Geforce rtx.jpg', 'Video Card'),
(13, 'AMD Ryzen 9 5900X 12-core, 24-Thread Unlocked Desktop Processor', 569.99, 'Ryzen.jpg', 'CPU'),
(14, 'Api gratis', 20000.00, 'makanmalam.png', NULL),
(15, 'justin biber', 1000.00, 'geko.png', NULL),
(16, 'Bhaddie', 666.00, 'Bhaddie.png', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
