-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 07:42 AM
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
-- Database: `lets_play`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `customerNAME` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `customerNAME`, `email`, `address`) VALUES
(111, '\"mona\"', '\"mona@gmail.com\"', '\"mecca\"'),
(222, '\"sara\"', '\"sara@gmail.com\"', '\"riyadh\"');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gameID` int(11) NOT NULL,
  `title` text NOT NULL,
  `genre` text NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameID`, `title`, `genre`, `price`) VALUES
(1122, '\"gameboy,blue\"', '\"gameboy\"', 30.00),
(3344, '\"playstation 2\"', '\"playstatin\"', 400.00);

-- --------------------------------------------------------

--
-- Table structure for table `reviwe`
--

CREATE TABLE `reviwe` (
  `gameID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `commen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviwe`
--

INSERT INTO `reviwe` (`gameID`, `customerID`, `rating`, `commen`) VALUES
(1122, 111, 5, '\"wonderful game\"'),
(3344, 222, 4, '\"its good\"');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`Name`) VALUES
('\"cancel an order\"'),
('\"ask about order\"'),
('\"return product\"');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameID`);

--
-- Indexes for table `reviwe`
--
ALTER TABLE `reviwe`
  ADD KEY `gameID_fk` (`gameID`),
  ADD KEY `customerID_fk` (`customerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviwe`
--
ALTER TABLE `reviwe`
  ADD CONSTRAINT `reviwe_ibfk_1` FOREIGN KEY (`gameID`) REFERENCES `game` (`gameID`),
  ADD CONSTRAINT `reviwe_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`);
COMMIT;


-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(20) NOT NULL,
  `password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
