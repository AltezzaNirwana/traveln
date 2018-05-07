-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 04:34 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelskuy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tcustomer`
--

CREATE TABLE `tcustomer` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `gender` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tre`
--

CREATE TABLE `tre` (
  `id` int(100) NOT NULL,
  `reservation_code` varchar(100) NOT NULL,
  `reservation_at` varchar(100) NOT NULL,
  `reservation_date` datetime(6) NOT NULL,
  `seat_code` varchar(100) NOT NULL,
  `depart_at` varchar(100) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trute`
--

CREATE TABLE `trute` (
  `id` int(100) NOT NULL,
  `depart_art` varchar(100) NOT NULL,
  `rute_form` varchar(100) NOT NULL,
  `rute_to` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ttransportation`
--

CREATE TABLE `ttransportation` (
  `id` int(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `seat_qty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ttransportation_type`
--

CREATE TABLE `ttransportation_type` (
  `id` int(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tuser`
--

CREATE TABLE `tuser` (
  `id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `level` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tcustomer`
--
ALTER TABLE `tcustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tre`
--
ALTER TABLE `tre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trute`
--
ALTER TABLE `trute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttransportation`
--
ALTER TABLE `ttransportation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttransportation_type`
--
ALTER TABLE `ttransportation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
