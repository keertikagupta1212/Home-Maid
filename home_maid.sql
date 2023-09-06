-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2020 at 04:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home maid`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `phoneno.` int(11) NOT NULL,
  `message` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `s_no` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` int(20) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`s_no`, `name`, `email`, `phone_no`, `msg`, `date`) VALUES
(1, 'first contact', 'firstcontact@gmail.com', 6897979, 'first msg', '2020-10-25 16:40:36'),
(2, 'this_name', 'this@email.com', 65656565, 'hg', '2020-10-25 18:34:38'),
(3, 'this_name', 'uhdusi', 4783468, 'fyiweyw', '2020-10-30 01:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `login_maid`
--

CREATE TABLE `login_maid` (
  `s_no` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city_state` text NOT NULL,
  `phn_num` int(15) NOT NULL,
  `speciality` text NOT NULL,
  `service_ava` text NOT NULL,
  `charges` varchar(200) NOT NULL,
  `password` varchar(10) NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_maid`
--

INSERT INTO `login_maid` (`s_no`, `name`, `email`, `address`, `city_state`, `phn_num`, `speciality`, `service_ava`, `charges`, `password`, `date`) VALUES
(1, 'my name', 'firstcontact@gmail.com', '787', 'new', 12345, 'dusing', 'dusting', '4560', '3828', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `login_maid`
--
ALTER TABLE `login_maid`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_maid`
--
ALTER TABLE `login_maid`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
