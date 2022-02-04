-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 07:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dentalclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminreg`
--

CREATE TABLE `adminreg` (
  `ser` int(3) NOT NULL,
  `regdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminreg`
--

INSERT INTO `adminreg` (`ser`, `regdate`) VALUES
(2, '1 December,2020'),
(67, '2 December,2020'),
(69, '3 December,2020'),
(70, '4 December,2020'),
(71, '5 December,2020'),
(72, '8 December,2020'),
(73, '9 December,2020');

-- --------------------------------------------------------

--
-- Table structure for table `appointement`
--

CREATE TABLE `appointement` (
  `ser` tinyint(4) NOT NULL,
  `userid` tinyint(3) NOT NULL,
  `code` varchar(25) NOT NULL,
  `dentist` varchar(25) NOT NULL,
  `regdate` varchar(20) NOT NULL,
  `regtime` varchar(5) NOT NULL,
  `status` varchar(15) NOT NULL,
  `d` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointement`
--

INSERT INTO `appointement` (`ser`, `userid`, `code`, `dentist`, `regdate`, `regtime`, `status`, `d`) VALUES
(25, 32, '100-Root Canal', '2-Dileep', '1 December,2020', '9 AM', 'Confirmed', 0),
(26, 32, '106-gum clean', '1-shashank', '9 December,2020', '1 PM', 'Cancelled', 0),
(28, 10, '103-braces', '1-shashank', '4 December,2020', '2 PM', 'Confirmed', 0),
(29, 11, '100-Root Canal', '5-sakshi', '1 December,2020', '12 PM', 'Not Confirmed', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `cid` tinyint(1) NOT NULL,
  `cname` varchar(25) NOT NULL,
  `location` varchar(60) NOT NULL,
  `openhr` varchar(6) NOT NULL,
  `closehr` varchar(6) NOT NULL,
  `rooms` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`cid`, `cname`, `location`, `openhr`, `closehr`, `rooms`) VALUES
(1, 'Dental Clinic', 'diamond point,hyderabad', '9 AM', '7 PM', 30);

-- --------------------------------------------------------

--
-- Table structure for table `dentalcode`
--

CREATE TABLE `dentalcode` (
  `id` int(3) NOT NULL,
  `code` smallint(4) NOT NULL,
  `unitcost` varchar(7) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dentalcode`
--

INSERT INTO `dentalcode` (`id`, `code`, `unitcost`, `description`) VALUES
(1, 100, 'Rs 100', 'Root Canal'),
(2, 102, 'Rs 112', 'teeth clean'),
(3, 103, 'Rs 250', 'braces'),
(6, 106, 'Rs 222', 'gum clean'),
(7, 107, 'Rs 420', 'Partial Denture'),
(8, 108, 'Rs 500', 'Tooth Replacement'),
(9, 109, 'Rs 150', 'Laser Treatment');

-- --------------------------------------------------------

--
-- Table structure for table `dentist`
--

CREATE TABLE `dentist` (
  `did` smallint(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` tinyint(3) NOT NULL,
  `sex` char(1) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `dtype` varchar(20) NOT NULL,
  `registration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dentist`
--

INSERT INTO `dentist` (`did`, `name`, `age`, `sex`, `phone`, `email`, `address`, `dtype`, `registration_date`) VALUES
(1, 'shashank', 43, 'm', 9035396702, 'shashankrao1905@gmail.com', 'secunderabad', 'Permanent', '2020-11-18 13:56:20'),
(2, 'Dileep', 33, 'f', 8971215561, 'dileep@gmail.com', 'Kanpur', 'Permanent', '2020-11-18 13:58:35'),
(3, 'suyash', 35, 'm', 9035396702, 'suyash', 'nehru place,delhi', 'Permanent', '2020-11-19 10:16:05'),
(4, 'shweta ', 37, 'f', 8971215561, 'shweta@gmail.com', 'patna', 'Permanent', '2020-11-19 10:16:45'),
(5, 'sakshi', 36, 'f', 8102391238, 'sakshi@gmail.com', 'yelhanka,bangalore', 'Permanent', '2021-01-26 22:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `userid` smallint(5) NOT NULL,
  `user_level` tinyint(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` bigint(10) UNSIGNED NOT NULL,
  `age` tinyint(3) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `registration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`userid`, `user_level`, `name`, `phone`, `age`, `address`, `email`, `password`, `registration_date`) VALUES
(8, 0, 'saurav', 8875431907, 27, 'New delhi', 'saurav@gmail.com', 'saurav', '2015-11-14 11:58:33'),
(9, 0, 'ganesh', 7689543210, 52, 'nehru place,kota', 'ganesh@gmail.com', 'ganesh', '2015-11-14 11:59:57'),
(10, 0, 'manju', 8675431907, 44, 'patna', 'manju@gmail.com', 'manju', '2015-11-14 12:00:53'),
(11, 0, 'supreeth', 8965320054, 34, 'rr nagar,bangalore', 'supreet@gmail.com', 'supreeth', '2015-11-14 12:02:03'),
(12, 0, 'amith', 7654565890, 44, 'magestic,bangalore', 'amith@gmail.com', 'amith', '2015-11-14 12:03:24'),
(13, 0, 'suraj', 9812311212, 20, 'hebbal,bangalore', 'suraj@gmail.com', 'suraj', '2015-11-14 12:04:28'),
(31, 1, 'shashank rao', 9901925840, 23, '10D, Race Course Road, Gunrock Enclave', 'Shashank@gmail.com', 'hello', '2021-01-23 22:53:57'),
(32, 0, 'srinivas', 9201393421, 51, 'secunderabad', 'savinirs@gmail.com', 'srinu', '2021-01-25 01:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` smallint(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` tinyint(3) NOT NULL,
  `sex` char(1) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `registration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `name`, `age`, `sex`, `phone`, `email`, `address`, `registration_date`) VALUES
(1, 'suresh', 35, 'm', 8971215561, 'suresh@gmail.com', 'manipal', '2015-11-14 00:22:16'),
(2, 'dhruv', 41, 'm', 9833104654, 'druv@gmail.com', 'bandra road,mumbai', '2021-01-26 22:00:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminreg`
--
ALTER TABLE `adminreg`
  ADD PRIMARY KEY (`ser`);

--
-- Indexes for table `appointement`
--
ALTER TABLE `appointement`
  ADD PRIMARY KEY (`ser`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `dentalcode`
--
ALTER TABLE `dentalcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dentist`
--
ALTER TABLE `dentist`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminreg`
--
ALTER TABLE `adminreg`
  MODIFY `ser` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `appointement`
--
ALTER TABLE `appointement`
  MODIFY `ser` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `clinic`
--
ALTER TABLE `clinic`
  MODIFY `cid` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dentalcode`
--
ALTER TABLE `dentalcode`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dentist`
--
ALTER TABLE `dentist`
  MODIFY `did` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `userid` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sid` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
