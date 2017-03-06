-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: sql6.freesqldatabase.com
-- Generation Time: Mar 06, 2017 at 10:59 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.3.28

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sql6162441`
--

-- --------------------------------------------------------

--
-- Table structure for table `UserSearchForItems`
--

CREATE TABLE IF NOT EXISTS `UserSearchForItems` (
  `userID` int(11) NOT NULL,
  `items_id` int(11) NOT NULL,
  `how_many_times` int(11) NOT NULL,
  KEY `userID` (`userID`),
  KEY `items_id` (`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `UserSearchForItems`
--
ALTER TABLE `UserSearchForItems`
  ADD CONSTRAINT `UserSearchForItems_ibfk_2` FOREIGN KEY (`items_id`) REFERENCES `Items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UserSearchForItems_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `User` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
