-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 19, 2014 at 04:13 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `omniscient`
--
CREATE DATABASE IF NOT EXISTS `omniscient` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `omniscient`;

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
  `USN` varchar(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Email ID` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `Phone No` mediumint(15) NOT NULL,
  `Security_Question` varchar(50) NOT NULL,
  `Security_Answer` varchar(50) NOT NULL,
  UNIQUE KEY `USN` (`USN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE IF NOT EXISTS `student_login` (
  `USN` varchar(10) NOT NULL,
  `Password` varchar(25) NOT NULL,
  UNIQUE KEY `USN` (`USN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_subjects`
--

CREATE TABLE IF NOT EXISTS `student_subjects` (
  `USN` varchar(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Semester` int(1) NOT NULL,
  `Subjects` varchar(150) NOT NULL,
  `Marks Obtained` float NOT NULL,
  `Total Marks` int(3) NOT NULL,
  `Marks_Per` float NOT NULL,
  `Class_Attended` int(3) NOT NULL,
  `Total_Class_Cond` int(3) NOT NULL,
  `Attendence_Per` float NOT NULL,
  UNIQUE KEY `USN` (`USN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
