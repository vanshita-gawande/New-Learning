-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 07:53 AM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delux`
--

CREATE TABLE `delux` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `delux`
--

INSERT INTO `delux` (`id`, `name`, `date`, `time`) VALUES
(9, 'ABC', '2023-10-25', '12:00:00'),
(10, 'ABC', '2023-10-25', '12:00:00'),
(11, 'ABC', '2023-10-25', '12:00:00'),
(12, 'Isha', '2023-05-16', '10:00:00'),
(13, 'Isha', '2023-05-16', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `premier`
--

CREATE TABLE `premier` (
  `id` int(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `premier`
--

INSERT INTO `premier` (`id`, `name`, `date`, `time`) VALUES
(2, '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `checkindate` date NOT NULL,
  `checkoutdate` date NOT NULL,
  `adults` int(100) NOT NULL,
  `children` int(100) NOT NULL,
  `rooms` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`checkindate`, `checkoutdate`, `adults`, `children`, `rooms`) VALUES
('2023-10-19', '2023-10-20', 0, 1, 1),
('2023-10-24', '2023-10-27', 0, 3, 3),
('2023-10-19', '2023-10-20', 0, 3, 3),
('2023-10-12', '2023-10-13', 0, 1, 1),
('2023-10-19', '2023-10-13', 0, 1, 1),
('2023-10-19', '2023-10-13', 0, 1, 1),
('2023-10-19', '2023-10-13', 0, 1, 1),
('2023-10-19', '2023-10-21', 0, 1, 1),
('2023-10-23', '2023-10-27', 0, 1, 1),
('2023-10-12', '2023-10-19', 0, 3, 3),
('2023-10-18', '2023-10-27', 0, 4, 6),
('2023-10-20', '2023-10-31', 0, 4, 3),
('2023-10-26', '2023-10-24', 0, 4, 4),
('2023-10-27', '2023-11-01', 0, 4, 4),
('2023-10-27', '2023-11-01', 0, 4, 4),
('2023-10-25', '2023-10-26', 0, 1, 4),
('2023-10-25', '2023-10-26', 0, 1, 4),
('2023-10-25', '2023-10-26', 0, 1, 4),
('2023-10-25', '2023-10-26', 0, 1, 1),
('2023-08-25', '2023-08-31', 0, 1, 1),
('2023-10-26', '2023-10-27', 0, 1, 3),
('2023-10-27', '2023-10-29', 1, 1, 1),
('2023-10-27', '2023-10-29', 1, 0, 1),
('0000-00-00', '0000-00-00', 1, 1, 1),
('0000-00-00', '0000-00-00', 1, 1, 1),
('2023-11-16', '2023-11-17', 3, 0, 1),
('2023-11-15', '2023-11-24', 4, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `id` int(11) NOT NULL,
  `username` char(25) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`id`, `username`, `password`) VALUES
(6, 'first', 'first1'),
(9, 'XYZ', 'XYZ20'),
(10, 'ABC', 'abc3'),
(11, 'xyy', 'x3'),
(12, 'isha', 'isha30'),
(13, 'isha', 'isha30');

-- --------------------------------------------------------

--
-- Table structure for table `single`
--

CREATE TABLE `single` (
  `id` int(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `single`
--

INSERT INTO `single` (`id`, `name`, `date`, `time`) VALUES
(1, 'isha', '2003-05-03', '22:22:00'),
(2, '', '0000-00-00', '00:00:00'),
(3, '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `suite`
--

CREATE TABLE `suite` (
  `id` int(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `suite`
--

INSERT INTO `suite` (`id`, `name`, `date`, `time`) VALUES
(2, 'STIV', '2023-10-25', '10:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delux`
--
ALTER TABLE `delux`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `premier`
--
ALTER TABLE `premier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `single`
--
ALTER TABLE `single`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suite`
--
ALTER TABLE `suite`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `delux`
--
ALTER TABLE `delux`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `premier`
--
ALTER TABLE `premier`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `single`
--
ALTER TABLE `single`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suite`
--
ALTER TABLE `suite`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
