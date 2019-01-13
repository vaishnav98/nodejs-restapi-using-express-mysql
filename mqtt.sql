-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2017 at 03:16 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+05:30";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `MQTTDataExpanded` (
  `TimeStamp`  TIMESTAMP NOT NULL ,
  `ClientID` varchar(255) NOT NULL,
  `ACActivePower` DECIMAL(6,2),
  `ACReactivePower` DECIMAL(6,2),
  `DCPower` DECIMAL(6,2),
  `ACVR` DECIMAL(5,2),
  `ACVY` DECIMAL(5,2),
  `ACVB` DECIMAL(5,2),
  `ACIR` DECIMAL(5,2),
  `ACIY` DECIMAL(5,2),
  `ACIB` DECIMAL(5,2),
  `DCV` DECIMAL(5,2),
  `DCI` DECIMAL(5,2),
  `LoadStatus` BIT(20),
  `Load1P` DECIMAL(5,2),
  `Load2P` DECIMAL(5,2),
  `Load3P` DECIMAL(5,2),
  `Load4P` DECIMAL(5,2),
  `Load5P` DECIMAL(5,2),
  `Load6P` DECIMAL(5,2),
  `Load7P` DECIMAL(5,2),
  `Load8P` DECIMAL(5,2),
  `Load9P` DECIMAL(5,2),
  `Load10P` DECIMAL(5,2),
  `Load11P` DECIMAL(5,2),
  `Load12P` DECIMAL(5,2),
  `Load13P` DECIMAL(5,2),
  `Load14P` DECIMAL(5,2),
  `Load15P` DECIMAL(5,2),
  `Load16P` DECIMAL(5,2),
  `Load17P` DECIMAL(5,2),
  `Load18P` DECIMAL(5,2),
  `Load19P` DECIMAL(5,2),
  `Load20P` DECIMAL(5,2),
  PRIMARY KEY (`TimeStamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `MQTTData` (
  `TimeStamp`  TIMESTAMP NOT NULL ,
  `ClientID` varchar(255) NOT NULL,
  `Data` TEXT NOT NULL,
  PRIMARY KEY (`TimeStamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `MQTTClientData` (
  `ClientID` varchar(255) NOT NULL,
  `ClientName` varchar(255) NOT NULL,
  `ClientPassword` varchar(255) NOT NULL,
  `ClientMobile` varchar(20) NOT NULL,
  `Load1Name` varchar(255) NOT NULL,
  `Load2Name` varchar(255) NOT NULL,
  `Load3Name` varchar(255) NOT NULL,
  `Load4Name` varchar(255) NOT NULL,
  `Load5Name` varchar(255) NOT NULL,
  `Load6Name` varchar(255) NOT NULL,
  `Load7Name` varchar(255) NOT NULL,
  `Load8Name` varchar(255) NOT NULL,
  `Load9Name` varchar(255) NOT NULL,
  `Load10Name` varchar(255) NOT NULL,
  `Load11Name` varchar(255) NOT NULL,
  `Load12Name` varchar(255) NOT NULL,
  `Load13Name` varchar(255) NOT NULL,
  `Load14Name` varchar(255) NOT NULL,
  `Load15Name` varchar(255) NOT NULL,
  `Load16Name` varchar(255) NOT NULL,
  `Load17Name` varchar(255) NOT NULL,
  `Load18Name` varchar(255) NOT NULL,
  `Load19Name` varchar(255) NOT NULL,
  `Load20Name` varchar(255) NOT NULL,
  `Load1Priority` TINYINT,
  `Load2Priority` TINYINT,
  `Load3Priority` TINYINT,
  `Load4Priority` TINYINT,
  `Load5Priority` TINYINT,
  `Load6Priority` TINYINT,
  `Load7Priority` TINYINT,
  `Load8Priority` TINYINT,
  `Load9Priority` TINYINT,
  `Load10Priority` TINYINT,
  `Load11Priority` TINYINT,
  `Load12Priority` TINYINT,
  `Load13Priority` TINYINT,
  `Load14Priority` TINYINT,
  `Load15Priority` TINYINT,
  `Load16Priority` TINYINT,
  `Load17Priority` TINYINT,
  `Load18Priority` TINYINT,
  `Load19Priority` TINYINT,
  `Load20Priority` TINYINT,
  PRIMARY KEY (`ClientID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
