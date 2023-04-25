-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 01:24 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecng`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `aname` varchar(40) NOT NULL,
  `apass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aname`, `apass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
`bid` int(11) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `umob` varchar(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `cng_kg` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pump`
--

CREATE TABLE IF NOT EXISTS `pump` (
`pid` int(40) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pmob` varchar(100) NOT NULL,
  `padd` varchar(100) NOT NULL,
  `pcity` varchar(100) NOT NULL,
  `ptal` varchar(100) NOT NULL,
  `pdist` varchar(100) NOT NULL,
  `ot` varchar(100) NOT NULL,
  `ct` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `cng_kg` int(100) NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pump`
--

INSERT INTO `pump` (`pid`, `pname`, `pmob`, `padd`, `pcity`, `ptal`, `pdist`, `ot`, `ct`, `pass`, `cng_kg`, `status`) VALUES
(1, 'asc', 'asc', 'asc', 'asc', 'asc', 'asc', 'asc', 'asc', 'asc', 100, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`uid` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `umob` varchar(100) NOT NULL,
  `ucity` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `upass` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `umob`, `ucity`, `uemail`, `upass`) VALUES
(1, 'Mangesh', '1234567890', 'shirpur', 'mangesh@gmail.com', 'mangesh123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
 ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `pump`
--
ALTER TABLE `pump`
 ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pump`
--
ALTER TABLE `pump`
MODIFY `pid` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
