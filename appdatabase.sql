-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 07:06 PM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `accident`
--

DROP TABLE IF EXISTS `accident`;
CREATE TABLE `accident` (
  `accident_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `resident_id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accident`
--

INSERT INTO `accident` (`accident_id`, `date`, `resident_id`, `note`) VALUES
(1, '2022-04-12', 20, 'No Accidents recorded');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user_name`, `password`) VALUES
(1, 'ram', 'password'),
(2, 'Saurabh', 'Pal');

-- --------------------------------------------------------

--
-- Table structure for table `care`
--

DROP TABLE IF EXISTS `care`;
CREATE TABLE `care` (
  `care_id` int(11) NOT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `care`
--

INSERT INTO `care` (`care_id`, `user_name`, `password`) VALUES
(1, 'saurabh', 'password'),
(2, 'user_name', 'password'),
(3, 'ram', 'password'),
(7, 'lol', 'lol'),
(5, 'pal', 'pal');

-- --------------------------------------------------------

--
-- Table structure for table `catalogue`
--

DROP TABLE IF EXISTS `catalogue`;
CREATE TABLE `catalogue` (
  `catalogue_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `resident_id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalogue`
--

INSERT INTO `catalogue` (`catalogue_id`, `date`, `resident_id`, `note`) VALUES
(7, '2022-04-12', 20, 'Catalogue activity,');

-- --------------------------------------------------------

--
-- Table structure for table `dailyactivity`
--

DROP TABLE IF EXISTS `dailyactivity`;
CREATE TABLE `dailyactivity` (
  `dailyactivity_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `resident_id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dailyactivity`
--

INSERT INTO `dailyactivity` (`dailyactivity_id`, `date`, `resident_id`, `note`) VALUES
(1, '2022-04-12', 20, 'Worked on notes');

-- --------------------------------------------------------

--
-- Table structure for table `fluid`
--

DROP TABLE IF EXISTS `fluid`;
CREATE TABLE `fluid` (
  `fluid_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `resident_id` int(11) NOT NULL,
  `150ml` tinyint(1) NOT NULL,
  `250ml` tinyint(1) NOT NULL,
  `350ml` tinyint(1) NOT NULL,
  `more` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fluid`
--

INSERT INTO `fluid` (`fluid_id`, `date`, `resident_id`, `150ml`, `250ml`, `350ml`, `more`) VALUES
(9, '2022-04-12', 20, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

DROP TABLE IF EXISTS `meal`;
CREATE TABLE `meal` (
  `meal_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `resident_id` int(11) NOT NULL,
  `breakfast` tinyint(1) NOT NULL,
  `snack` tinyint(1) NOT NULL,
  `lunch` tinyint(1) NOT NULL,
  `dinner` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`meal_id`, `date`, `resident_id`, `breakfast`, `snack`, `lunch`, `dinner`) VALUES
(1, '2022-04-12', 20, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mood`
--

DROP TABLE IF EXISTS `mood`;
CREATE TABLE `mood` (
  `mood_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `resident_id` int(11) NOT NULL,
  `mood_type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mood`
--

INSERT INTO `mood` (`mood_id`, `date`, `resident_id`, `mood_type`) VALUES
(1, '2022-04-12', 20, 'Confused');

-- --------------------------------------------------------

--
-- Table structure for table `othercomment`
--

DROP TABLE IF EXISTS `othercomment`;
CREATE TABLE `othercomment` (
  `othercomment_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `resident_id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `othercomment`
--

INSERT INTO `othercomment` (`othercomment_id`, `date`, `resident_id`, `note`) VALUES
(1, '2022-04-12', 20, 'Other comments'),
(2, '2022-04-12', 21, 'Other commentssss');

-- --------------------------------------------------------

--
-- Table structure for table `personalcare`
--

DROP TABLE IF EXISTS `personalcare`;
CREATE TABLE `personalcare` (
  `personal_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `resident_id` int(11) NOT NULL,
  `bathing` tinyint(1) NOT NULL,
  `skin_care` tinyint(1) NOT NULL,
  `oral_care` tinyint(1) NOT NULL,
  `dressing` tinyint(1) NOT NULL,
  `pad_change` tinyint(1) NOT NULL,
  `hair_care` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personalcare`
--

INSERT INTO `personalcare` (`personal_id`, `date`, `resident_id`, `bathing`, `skin_care`, `oral_care`, `dressing`, `pad_change`, `hair_care`) VALUES
(22, '2022-04-12', 20, 1, 0, 1, 0, 1, 0),
(23, '2022-04-12', 23, 1, 0, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `resident`
--

DROP TABLE IF EXISTS `resident`;
CREATE TABLE `resident` (
  `resident_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `dob` date NOT NULL,
  `care_type` varchar(32) NOT NULL,
  `sex` varchar(32) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resident`
--

INSERT INTO `resident` (`resident_id`, `name`, `dob`, `care_type`, `sex`, `room_no`) VALUES
(26, 'Saurabh', '1998-04-13', 'Single', 'Male', 1008);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit` (
  `visit_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `resident_id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`visit_id`, `date`, `resident_id`, `note`) VALUES
(1, '2022-04-12', 20, 'No Visit Recorded');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident`
--
ALTER TABLE `accident`
  ADD PRIMARY KEY (`accident_id`),
  ADD UNIQUE KEY `idx_table_worker_date` (`resident_id`,`date`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `care`
--
ALTER TABLE `care`
  ADD PRIMARY KEY (`care_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `catalogue`
--
ALTER TABLE `catalogue`
  ADD PRIMARY KEY (`catalogue_id`),
  ADD UNIQUE KEY `idx_table_worker_date` (`resident_id`,`date`);

--
-- Indexes for table `dailyactivity`
--
ALTER TABLE `dailyactivity`
  ADD PRIMARY KEY (`dailyactivity_id`),
  ADD UNIQUE KEY `idx_table_worker_date` (`resident_id`,`date`);

--
-- Indexes for table `fluid`
--
ALTER TABLE `fluid`
  ADD PRIMARY KEY (`fluid_id`),
  ADD UNIQUE KEY `idx_table_worker_date` (`resident_id`,`date`);

--
-- Indexes for table `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`meal_id`),
  ADD UNIQUE KEY `idx_table_worker_date` (`resident_id`,`date`);

--
-- Indexes for table `mood`
--
ALTER TABLE `mood`
  ADD PRIMARY KEY (`mood_id`),
  ADD UNIQUE KEY `idx_table_worker_date` (`resident_id`,`date`);

--
-- Indexes for table `othercomment`
--
ALTER TABLE `othercomment`
  ADD PRIMARY KEY (`othercomment_id`),
  ADD UNIQUE KEY `idx_table_worker_date` (`resident_id`,`date`);

--
-- Indexes for table `personalcare`
--
ALTER TABLE `personalcare`
  ADD PRIMARY KEY (`personal_id`),
  ADD UNIQUE KEY `idx_table_worker_date` (`resident_id`,`date`);

--
-- Indexes for table `resident`
--
ALTER TABLE `resident`
  ADD PRIMARY KEY (`resident_id`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`visit_id`),
  ADD UNIQUE KEY `idx_table_worker_date` (`resident_id`,`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accident`
--
ALTER TABLE `accident`
  MODIFY `accident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `care`
--
ALTER TABLE `care`
  MODIFY `care_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `catalogue`
--
ALTER TABLE `catalogue`
  MODIFY `catalogue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `dailyactivity`
--
ALTER TABLE `dailyactivity`
  MODIFY `dailyactivity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fluid`
--
ALTER TABLE `fluid`
  MODIFY `fluid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `meal`
--
ALTER TABLE `meal`
  MODIFY `meal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mood`
--
ALTER TABLE `mood`
  MODIFY `mood_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `othercomment`
--
ALTER TABLE `othercomment`
  MODIFY `othercomment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `personalcare`
--
ALTER TABLE `personalcare`
  MODIFY `personal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `resident`
--
ALTER TABLE `resident`
  MODIFY `resident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
