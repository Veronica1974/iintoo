-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 12:20 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iintoo`
--
CREATE DATABASE IF NOT EXISTS `iintoo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `iintoo`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `idproduct` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `description` longtext,
  `customerid` int(11) DEFAULT NULL,
  `insale` tinyint(4) DEFAULT '0',
  `color` varchar(255) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `product`
--

TRUNCATE TABLE `product`;
--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idproduct`, `title`, `imgurl`, `description`, `customerid`, `insale`, `color`, `brand`, `price`) VALUES
(1, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'red', NULL, 99.9),
(2, 'HEADPHONES', 'images/black.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 2, 'black', NULL, 90.75),
(3, 'HEADPHONES', 'images/blue.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'blue', NULL, 87),
(4, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'red', NULL, 67),
(5, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'red', NULL, 56.79),
(6, 'HEADPHONES', 'images/blue.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 2, 'blue', NULL, 54.78),
(7, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'red', NULL, 99.99),
(8, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'red', NULL, 99),
(9, 'HEADPHONES', 'images/blue.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 0, 'red', NULL, 78.99),
(10, 'HEADPHONES', 'images/black.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'black', NULL, 90.9),
(11, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 0, 'red', NULL, 90.9),
(12, 'HEADPHONES', 'images/blue.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'blue', NULL, 90.9),
(13, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 2, 'red', NULL, 90.9),
(14, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'red', 'Beats EP', 90.9),
(15, 'HEADPHONES', 'images/black.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 0, 'black', NULL, 90.9),
(16, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'red', NULL, 90.9),
(17, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 0, 'red', 'Beats EP', 90.9),
(18, 'HEADPHONES', 'images/blue.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'blue', NULL, 56.89),
(19, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 0, 'red', NULL, 67.89),
(20, 'HEADPHONES', 'images/blue.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'blue', 'Beats EP', 78.7),
(21, 'HEADPHONES', 'images/black.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'black', NULL, 65.9),
(22, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'red', 'Beats EP', 99.99),
(23, 'HEADPHONES', 'images/blue.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 0, 'blue', NULL, 45.65),
(24, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 2, 'red', NULL, 55.55),
(25, 'HEADPHONES', 'images/black.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 0, 'black', NULL, 78.55),
(26, 'HEADPHONES', 'images/red.png', 'Beats EP The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance', 4, 1, 'red', 'Beats EP', 78.89);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
