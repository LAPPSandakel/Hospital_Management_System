-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 04:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doc_ID` int(10) NOT NULL,
  `Drname` varchar(100) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Dr_designation` varchar(100) DEFAULT NULL,
  `Dr_tp` int(12) DEFAULT NULL,
  `Unit_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `h_unit`
--

CREATE TABLE `h_unit` (
  `UnitID` int(10) NOT NULL,
  `U_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Pa_ID` int(10) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `TpNo` int(15) DEFAULT NULL,
  `B_group` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_admited`
--

CREATE TABLE `patient_admited` (
  `ID` int(10) NOT NULL,
  `Pa_ID` int(10) DEFAULT NULL,
  `Doc_ID` int(10) DEFAULT NULL,
  `Medicine` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_channeling`
--

CREATE TABLE `patient_channeling` (
  `ID` int(10) NOT NULL,
  `Pa_ID` int(10) DEFAULT NULL,
  `Doc_ID` int(10) DEFAULT NULL,
  `Medicine` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doc_ID`);

--
-- Indexes for table `h_unit`
--
ALTER TABLE `h_unit`
  ADD PRIMARY KEY (`UnitID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Pa_ID`);

--
-- Indexes for table `patient_admited`
--
ALTER TABLE `patient_admited`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patient_channeling`
--
ALTER TABLE `patient_channeling`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
