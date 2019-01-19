-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2018 at 08:16 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `it`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
`trainee_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`trainee_id`, `name`, `email`, `age`, `address`, `phone_no`, `password`) VALUES
(1, 'anu', 'anushreepshettigar98@gmail.com', 20, 'karkala', 9900710058, '123123'),
(2, 'kavya', 'kavyamoolya97@gmail.com', 21, 'karkala', 9845251656, '456456'),
(3, 'sangeetha', 'sangeethas8736@gmail.com', 21, 'karkala', 8105418736, '123456'),
(4, 'swathi', 'swathi8104@gmail.com', 21, 'udupi', 13579, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
`traineer_id` int(11) NOT NULL,
  `class` varchar(30) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `subject_code` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `floor_no` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`traineer_id`, `class`, `sem`, `subject_name`, `subject_code`, `hours`, `room_no`, `floor_no`) VALUES
(2, 'bca', 'I', 'sdc', 12, 2, 18, 1),
(5, 'bca', 'VI', 'eng', 11, 3, 6, 2),
(6, 'bsc', 'V', 'eng', 5677, 3, 6, 1),
(7, 'bca', 'I', 'java', 123, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `traineer`
--

CREATE TABLE IF NOT EXISTS `traineer` (
`traineer_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone_no` bigint(20) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traineer`
--

INSERT INTO `traineer` (`traineer_id`, `name`, `email`, `password`, `phone_no`, `address`) VALUES
(1, 'Mahesh', 'mahesh1989@gmail.com', 'mahesh123', 9845127564, 'Karkala'),
(2, 'Gopi', 'gopi1988@mail.com', 'gopi123', 9854621546, 'Manglore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
 ADD PRIMARY KEY (`trainee_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
 ADD PRIMARY KEY (`traineer_id`);

--
-- Indexes for table `traineer`
--
ALTER TABLE `traineer`
 ADD PRIMARY KEY (`traineer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
MODIFY `trainee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
MODIFY `traineer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `traineer`
--
ALTER TABLE `traineer`
MODIFY `traineer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
