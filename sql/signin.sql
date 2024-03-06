-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 04:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signin`
--

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `Sr.no` int(3) NOT NULL,
  `Name` text NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Password` varchar(18) NOT NULL,
  `Time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`Sr.no`, `Name`, `E-mail`, `Password`, `Time`) VALUES
(1, 'Chaitanya Rawat', 'co.2021.carawat@bitwardha.ac.in', '1234567890', '2023-06-15 03:15:22'),
(2, 'Chaitanya Ashish Rawat', 'cheturawat@gmail.com', '1234567890', '2023-06-15 03:26:33'),
(3, 'Amit jain', 'abc@gmail.com', '1234567890', '2023-06-15 03:27:59'),
(4, 'Amit jain', 'abc@gmail.com', '1234567890', '2023-06-15 03:32:12'),
(5, 'Amit jain', 'abc@gmail.com', '1234567890', '2023-06-15 03:38:16'),
(6, 'Amit jain', 'abc@gmail.com', '1234567890', '2023-06-15 03:40:09'),
(7, 'Chaitanya Ashish Rawat', 'cheturawat@gmail.com', 'sdf', '2023-06-15 03:40:22'),
(8, 'Chaitanya Ashish Rawat', 'cheturawat@gmail.com', 'sdf', '2023-06-15 03:40:57'),
(9, 'Chaitanya Ashish Rawat', 'cheturawat@gmail.com', 'sdf', '2023-06-15 03:41:39'),
(10, 'Chaitanya Ashish Rawat', 'cheturawat@gmail.com', 'sdf', '2023-06-15 03:41:58'),
(11, 'Chaitanya Ashish Rawat', 'cheturawat@gmail.com', 'sdf', '2023-06-15 03:43:25'),
(12, 'chai', 'gfdjyct@gmail.com', '542', '2023-06-15 13:37:12'),
(13, 'Chaitanya Ashish Rawat', 'cheturawat@gmail.com', 'asdfdsf', '2023-06-24 00:00:54'),
(14, 'Chaitanya Ashish Rawat', 'cheturawat@gmail.com', 'asdfdsf', '2023-06-24 00:01:06'),
(15, 'jagageshwari', 'admin@admin.com', 'fsda', '2024-01-07 11:06:39'),
(16, 'jagageshwari', 'cheturawat@gmail.com', '2146491245083', '2024-01-07 11:09:45'),
(17, 'hhvm', 'raagii@gmail.com', '4420014420017', '2024-01-20 22:05:35'),
(18, 'Pankaj Samudree', 'hjgjah@ghfa.com', '#Bajrangi23', '2024-03-05 08:59:51'),
(19, 'Mahendra Bahubali', 'mbahubali@gmail.com', 'katappa', '2024-03-06 09:04:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`Sr.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `Sr.no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
