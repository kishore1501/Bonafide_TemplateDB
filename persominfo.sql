-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 08:02 PM
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
-- Database: `bonafide`
--

-- --------------------------------------------------------

--
-- Table structure for table `persominfo`
--

CREATE TABLE `persominfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reg_no` varchar(50) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `request_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `persominfo`
--

INSERT INTO `persominfo` (`id`, `name`, `reg_no`, `degree`, `request_date`) VALUES
(1, 'Kishore Ramesh', 'RA2011026040040', 'B.Tech CSE-AIML (Specialization in AI & ML)', '2023-04-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persominfo`
--
ALTER TABLE `persominfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persominfo`
--
ALTER TABLE `persominfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
