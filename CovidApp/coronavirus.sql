-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 12, 2020 at 10:13 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coronavirus`
--

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

DROP TABLE IF EXISTS `ideas`;
CREATE TABLE IF NOT EXISTS `ideas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_bin NOT NULL,
  `TYPE` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC` text COLLATE utf8_bin NOT NULL,
  `LINK` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`ID`, `NAME`, `TYPE`, `DESC`, `LINK`) VALUES
(1, 'Cisco Networking Academy', 'Online FREE courses', '', 'https://www.cisco.com/c/m/en_sg/partners/cisco-networking-academy/index.html'),
(2, 'coursera', 'Online FREE courses', '', 'https://www.coursera.org/coronavirus'),
(3, '9RAFDAR ', 'Helpful INSTAGRAME Profil', '', 'https://www.instagram.com/9rafdar/'),
(4, 'net3awnu', 'Helpful INSTAGRAME Profil', '', 'https://www.instagram.com/net3awnu/'),
(5, 'tahaqaq.ma', 'Helpful INSTAGRAME Profil', '', 'https://www.instagram.com/tahaqaq.ma/'),
(6, 'SHIFAMEDIA', 'Helpful INSTAGRAME Profil', '', 'https://www.instagram.com/shifaamedia/');

-- --------------------------------------------------------

--
-- Table structure for table `maroc`
--

DROP TABLE IF EXISTS `maroc`;
CREATE TABLE IF NOT EXISTS `maroc` (
  `ID` bigint(20) DEFAULT NULL,
  `TOTAL_CASES` double DEFAULT NULL,
  `NEW_CASES` double DEFAULT NULL,
  `TOTAL_DEATHS` double DEFAULT NULL,
  `NEW_DEATHS` double DEFAULT NULL,
  `TOTAL_RECOVERED` double DEFAULT NULL,
  `ACTIVE_CASES` double DEFAULT NULL,
  KEY `ix_maroc_ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `maroc`
--

INSERT INTO `maroc` (`ID`, `TOTAL_CASES`, `NEW_CASES`, `TOTAL_DEATHS`, `NEW_DEATHS`, `TOTAL_RECOVERED`, `ACTIVE_CASES`) VALUES
(0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `serv`
--

DROP TABLE IF EXISTS `serv`;
CREATE TABLE IF NOT EXISTS `serv` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `SERVICE` varchar(256) COLLATE utf8_bin NOT NULL,
  `NUM_SERVICE` varchar(50) COLLATE utf8_bin NOT NULL,
  `commentaire` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `serv`
--

INSERT INTO `serv` (`ID`, `SERVICE`, `NUM_SERVICE`, `commentaire`) VALUES
(1, 'Allo SAMU', '141', 'for urgent medical assistance'),
(2, 'Allo veille épidémiologique', '080 100 47 47', 'It is intended to provide the necessary information on the coronavirus and to inform citizens about the disease.'),
(3, 'DON de 10dhs par SMS', '1919 ', 'contribute to the Special Fund for the Management of the Coronavirus Pandemic.'),
(4, 'DON par compte bancaire ', 'RIB: 001 810 00 780 002 011 062 02 21', 'Those interested are invited to pay their donations to the aforementioned trust account by bank transfer to the account');

-- --------------------------------------------------------

--
-- Table structure for table `world`
--

DROP TABLE IF EXISTS `world`;
CREATE TABLE IF NOT EXISTS `world` (
  `ID` bigint(20) NOT NULL,
  `TOTAL_CASES` text COLLATE utf8_bin,
  `NEW_CASES` double DEFAULT NULL,
  `TOTAL_DEATHS` text COLLATE utf8_bin,
  `NEW_DEATHS` double DEFAULT NULL,
  `TOTAL_RECOVERED` text COLLATE utf8_bin,
  `ACTIVE_CASES` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_world_ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `world`
--

INSERT INTO `world` (`ID`, `TOTAL_CASES`, `NEW_CASES`, `TOTAL_DEATHS`, `NEW_DEATHS`, `TOTAL_RECOVERED`, `ACTIVE_CASES`) VALUES
(0, '4 168 427', 0, '285 445', 0, '1 452 626', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
