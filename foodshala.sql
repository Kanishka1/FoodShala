-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 04, 2020 at 07:05 PM
-- Server version: 5.7.21-log
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login1`
--
CREATE DATABASE IF NOT EXISTS `login1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login1`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `cpass` varchar(100) DEFAULT NULL,
  `pref` varchar(10) DEFAULT NULL,
  `mob` char(10) DEFAULT NULL,
  `cust_id` int(1) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `address`, `email`, `pass`, `cpass`, `pref`, `mob`, `cust_id`) VALUES
('Customer', 'Dummy Address', 'customer@gmail.com', '*71863C254516DFEB4FF64B27BA21FF236947E535', '*71863C254516DFEB4FF64B27BA21FF236947E535', 'VEG', '2222222222', 20);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `item` varchar(100) DEFAULT NULL,
  `price` char(5) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `r_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`item`, `r_name`, `price`,`type`) VALUES
('Veg Thaali', 'Badkul', '300','VEG');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `item` varchar(100) DEFAULT NULL,
  `quantity` char(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`item`, `quantity`, `name`, `address`, `contact`) VALUES
('Veg Thaali', '1', 'Customer', 'South Civil Lines', '9875437261');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `rest_id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mob` char(10) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `cpass` varchar(100) DEFAULT NULL,
  `spec` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rest_id`, `name`, `address`, `email`, `mob`, `pass`, `cpass`, `spec`) VALUES
(2, 'Navnita', 'Russel Chowk', 'navnita@gmail.com', '9425683125', '*47E7DAFB411F66CEDF75C81FF43F846896B27F43', '*47E7DAFB411F66CEDF75C81FF43F846896B27F43', 'NavaRatan Korama');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
