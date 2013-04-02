-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2013 at 08:20 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `petowners`
--

-- --------------------------------------------------------

--
-- Table structure for table `breed_id`
--

CREATE TABLE IF NOT EXISTS `breed_id` (
  `breed_id` int(11) NOT NULL AUTO_INCREMENT,
  `breed` varchar(50) NOT NULL,
  PRIMARY KEY (`breed_id`),
  KEY `breed_id` (`breed_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE IF NOT EXISTS `color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(50) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE IF NOT EXISTS `credentials` (
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`username`,`password`),
  UNIQUE KEY `owner_id` (`owner_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `password` (`password`),
  UNIQUE KEY `owner_id_4` (`owner_id`),
  KEY `owner_id_2` (`owner_id`),
  KEY `owner_id_3` (`owner_id`),
  KEY `owner_id_5` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`username`, `password`, `owner_id`) VALUES
('bob', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 31),
('asmart', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 32),
('', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 34),
('bkrumpter', 'cb45c671cbc500627ea424eea5f91996221b5935', 38),
('pimp', 'dbdd6c92770607cec7c8737ee85c26e8214bd785', 40);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `owner_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` char(2) NOT NULL,
  PRIMARY KEY (`address`),
  UNIQUE KEY `owner_id_2` (`owner_id`),
  KEY `address` (`address`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`owner_id`, `address`, `zip`, `city`, `state`) VALUES
(34, '', '', '', ''),
(38, '2314 Duke ln.', '22983', 'Norfolk', 'VA'),
(40, '34 bone lane', '22407', 'norfolk', 'VA'),
(32, '34 road way', '34582', 'Lord', 'VA'),
(31, '56 trent dr.', '22407', 'Fredericksburg', 'VA');

-- --------------------------------------------------------

--
-- Table structure for table `med_conditions`
--

CREATE TABLE IF NOT EXISTS `med_conditions` (
  `med_id` int(11) NOT NULL AUTO_INCREMENT,
  `condition` varchar(100) NOT NULL,
  PRIMARY KEY (`med_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ownercontactinfo`
--

CREATE TABLE IF NOT EXISTS `ownercontactinfo` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `First` varchar(30) NOT NULL,
  `Last` varchar(30) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`owner_id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `ownercontactinfo`
--

INSERT INTO `ownercontactinfo` (`owner_id`, `First`, `Last`, `Phone`, `email`) VALUES
(29, 'bob', 'bob', '2349995847', 'bob@gmail.com'),
(30, 'Sally', 'Smith', '345-098-7589', 'ssmith1@gmail.com'),
(31, 'Bob', 'Smith', '2349995847', 'jcartel@yahoo.com'),
(32, 'Amy', 'Smart', '333-456-0987', 'asmart@gmail.com'),
(33, 'Amy', 'Smart', '333-456-0987', 'asmart@gmail.com'),
(34, '', '', '', ''),
(35, 'Bryan', 'Krumpter', '231-339-9399', 'bkrumpter@yahoo.com'),
(36, 'Bryan', 'Krumpter', '231-339-9399', 'bkrumpter@yahoo.com'),
(37, 'Bryan', 'Krumpter', '231-339-9399', 'bkrumpter@yahoo.com'),
(38, 'Bryan', 'Krumpter', '231-339-9399', 'bkrumpter@yahoo.com'),
(39, '', '', '', ''),
(40, 'Sally', 'Long', '2349995847', 'slong@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `owner_pet`
--

CREATE TABLE IF NOT EXISTS `owner_pet` (
  `owner_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  UNIQUE KEY `owner_id` (`owner_id`,`pet_id`),
  KEY `pet_id` (`pet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pet_color`
--

CREATE TABLE IF NOT EXISTS `pet_color` (
  `pet_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  UNIQUE KEY `pet_id_3` (`pet_id`),
  UNIQUE KEY `color_id_3` (`color_id`),
  KEY `pet_id` (`pet_id`),
  KEY `color_id` (`color_id`),
  KEY `pet_id_2` (`pet_id`),
  KEY `color_id_2` (`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pet_info`
--

CREATE TABLE IF NOT EXISTS `pet_info` (
  `pet_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` char(2) NOT NULL,
  `fixed` varchar(10) NOT NULL,
  `med_id` int(11) NOT NULL,
  `temp_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `breed_id` int(11) NOT NULL,
  PRIMARY KEY (`pet_id`),
  UNIQUE KEY `owner_id` (`owner_id`),
  UNIQUE KEY `temp_id_2` (`temp_id`),
  UNIQUE KEY `med_id_2` (`med_id`),
  UNIQUE KEY `breed_id_2` (`breed_id`),
  UNIQUE KEY `type_id_2` (`type_id`),
  KEY `pet_id` (`pet_id`),
  KEY `owner_id_2` (`owner_id`),
  KEY `med_id` (`med_id`),
  KEY `temp_id` (`temp_id`),
  KEY `type_id` (`type_id`),
  KEY `breed_id` (`breed_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Table structure for table `pet_vac`
--

CREATE TABLE IF NOT EXISTS `pet_vac` (
  `pet_id` int(11) NOT NULL,
  `vac_id` int(11) NOT NULL,
  UNIQUE KEY `pet_id_2` (`pet_id`),
  UNIQUE KEY `vac_id_2` (`vac_id`),
  KEY `pet_id` (`pet_id`),
  KEY `vac_id` (`vac_id`),
  KEY `pet_id_3` (`pet_id`),
  KEY `vac_id_3` (`vac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temperment`
--

CREATE TABLE IF NOT EXISTS `temperment` (
  `temp_id` int(11) NOT NULL AUTO_INCREMENT,
  `temperment` varchar(50) NOT NULL,
  PRIMARY KEY (`temp_id`),
  KEY `temperment` (`temperment`),
  KEY `temp_id` (`temp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `animal` varchar(30) NOT NULL,
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `type_id` (`type_id`),
  KEY `type_id_2` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Table structure for table `vaccines`
--

CREATE TABLE IF NOT EXISTS `vaccines` (
  `vac_id` int(11) NOT NULL,
  `vaccine` varchar(50) NOT NULL,
  PRIMARY KEY (`vac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `credentials`
--
ALTER TABLE `credentials`
  ADD CONSTRAINT `credentials_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `ownercontactinfo` (`owner_id`) ON UPDATE CASCADE;

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `ownercontactinfo` (`owner_id`) ON UPDATE CASCADE;

--
-- Constraints for table `pet_color`
--
ALTER TABLE `pet_color`
  ADD CONSTRAINT `pet_color_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_color_ibfk_3` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`) ON UPDATE CASCADE;

--
-- Constraints for table `pet_info`
--
ALTER TABLE `pet_info`
  ADD CONSTRAINT `pet_info_ibfk_4` FOREIGN KEY (`breed_id`) REFERENCES `breed_id` (`breed_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_info_ibfk_1` FOREIGN KEY (`med_id`) REFERENCES `med_conditions` (`med_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_info_ibfk_2` FOREIGN KEY (`temp_id`) REFERENCES `temperment` (`temp_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_info_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `pet_vac`
--
ALTER TABLE `pet_vac`
  ADD CONSTRAINT `pet_vac_ibfk_2` FOREIGN KEY (`vac_id`) REFERENCES `vaccines` (`vac_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_vac_ibfk_3` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
