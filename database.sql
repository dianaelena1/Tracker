-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 04 Iun 2018 la 23:14
-- Versiune server: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msoa`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `adresses`
--

DROP TABLE IF EXISTS `adresses`;
CREATE TABLE IF NOT EXISTS `adresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `number` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `adresses`
--

INSERT INTO `adresses` (`id`, `city`, `street`, `number`) VALUES
(1, 'Cluj-Napoca', 'parang', '39'),
(2, 'Baia-Mare', 'campului', '1');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `hobby`
--

DROP TABLE IF EXISTS `hobby`;
CREATE TABLE IF NOT EXISTS `hobby` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `glyph` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `hobby`
--

INSERT INTO `hobby` (`id`, `name`, `glyph`) VALUES
(1, 'Climbing', 'glyphicon glyphicon-asterisk'),
(2, 'Music', 'glyphicon glyphicon-music'),
(3, 'Ballet', 'glyphicon glyphicon-cloud'),
(4, 'Skying', '\r\nglyphicon glyphicon-heart');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `persons`
--

DROP TABLE IF EXISTS `persons`;
CREATE TABLE IF NOT EXISTS `persons` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `addressId` int(11) NOT NULL,
  `hobbyId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `persons`
--

INSERT INTO `persons` (`Id`, `FirstName`, `LastName`, `addressId`, `hobbyId`) VALUES
(1, 'a', 'b', 1, 2),
(2, 'c', 'd', 2, 3),
(3, 'Elena', 'Diana', 1, 4),
(4, 'ion', 'Doe', 2, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
